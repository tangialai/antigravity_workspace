import argparse
import os
import subprocess
import shutil
from pathlib import Path


def convert_rst_to_md(source_dir, output_dir):
    """
    Scans the source_dir for .rst files and converts them to .md using pandoc.
    """
    source_path = Path(source_dir)
    output_path = Path(output_dir)
    output_path.mkdir(parents=True, exist_ok=True)

    print(f"🚀 Starting documentation conversion from: {source_dir}")

    for rst_file in source_path.rglob("*.rst"):
        # Create corresponding output path
        relative_path = rst_file.relative_to(source_path)
        md_file = output_path / relative_path.with_suffix(".md")
        md_file.parent.mkdir(parents=True, exist_ok=True)

        try:
            # Use pandoc to convert rst to markdown
            subprocess.run([
                "pandoc",
                str(rst_file),
                "-f", "rst",
                "-t", "markdown",
                "-o", str(md_file)
            ], check=True)
            print(f"✅ Converted: {relative_path}")
        except Exception as e:
            print(f"❌ Error converting {rst_file}: {e}")


def merge_md_files(source_dirs, output_prefix, category_name, max_size_mb=5):
    """
    Merges all .md files from one or more directories into one or more files based on max_size_mb.
    """
    print(f"📦 Merging documents for category: {category_name}")

    if isinstance(source_dirs, (str, Path)):
        source_dirs = [source_dirs]

    md_files = []
    for s_dir in source_dirs:
        s_path = Path(s_dir)
        if s_path.exists():
            # Get all .md files and store them with their relative path to the category root
            # For groups, we want to know which sub-folder they came from
            for f in s_path.rglob("*.md"):
                # We store a tuple: (absolute_path, relative_to_parent_of_s_path)
                # This way, if we merge 'applications/essentials', the rel path will be 'essentials/...'
                md_files.append((f, f.relative_to(s_path.parent)))

    md_files.sort(key=lambda x: x[1])  # Sort by relative path for consistency

    if not md_files:
        print(f"⚠️ No markdown files found for {category_name}")
        return []

    max_bytes = max_size_mb * 1024 * 1024
    current_part = 1
    generated_files = []

    def get_output_path(part):
        if part == 1:
            return Path(f"{output_prefix}.md")
        return Path(f"{output_prefix}_part{part}.md")

    current_output_path = get_output_path(current_part)
    current_file_handle = open(current_output_path, 'w', encoding='utf-8')
    current_file_handle.write(f"# ODOO DOCUMENTATION SUMMARY - CATEGORY: {category_name.upper()}\n\n")
    current_bytes = len(f"# ODOO DOCUMENTATION SUMMARY - CATEGORY: {category_name.upper()}\n\n".encode('utf-8'))

    generated_files.append(current_output_path)

    for abs_path, rel_path in md_files:
        try:
            # Read file content with error replacement for robustness
            with open(abs_path, 'r', encoding='utf-8', errors='replace') as infile:
                content = infile.read()

            # Prepare the block to be added
            separator = f"\n\n--- SOURCE: {rel_path} ---\n\n"
            block = separator + content + "\n\n"
            block_bytes = len(block.encode('utf-8'))

            # Check if adding this block exceeds max size
            if current_bytes + block_bytes > max_bytes and current_bytes > 1000:
                current_file_handle.close()
                current_part += 1
                current_output_path = Path(f"{output_prefix}_part{current_part}.md")
                print(f"   -> Part {current_part - 1} full. Starting {current_output_path.name}")

                current_file_handle = open(current_output_path, 'w', encoding='utf-8')
                current_file_handle.write(
                    f"# ODOO DOCUMENTATION SUMMARY - CATEGORY: {category_name.upper()} (PART {current_part})\n\n")
                current_bytes = len(
                    f"# ODOO DOCUMENTATION SUMMARY - CATEGORY: {category_name.upper()} (PART {current_part})\n\n".encode('utf-8'))
                generated_files.append(current_output_path)

            current_file_handle.write(block)
            current_bytes += block_bytes

        except Exception as e:
            print(f"❌ Error merging {abs_path}: {e}")

    current_file_handle.close()
    print(f"🌟 Success! {len(generated_files)} file(s) created for {category_name}")
    return generated_files


if __name__ == "__main__":
    # Setup argument parser for flexibility
    parser = argparse.ArgumentParser(description="Convert Odoo RST docs to Markdown for NotebookLM")
    parser.add_argument("--source", help="Source folder name in Downloads (e.g., odoo19docs)")
    parser.add_argument("--max-size", type=int, default=5, help="Max file size in MB before splitting (default: 5)")
    args = parser.parse_args()

    HOME = os.path.expanduser("~")

    # Determine source folder: from args or prompt user
    source_folder = args.source
    if not source_folder:
        print("💡 Hint: You can use --source, e.g.: python3 convert_odoo_docs.py --source odoo18docs")
        source_folder = input("📂 Enter the source folder name in Downloads (e.g., odoo19docs): ").strip()

    # Paths setup
    SOURCE_ROOT = os.path.join(HOME, f"Downloads/{source_folder}/content")
    if not os.path.exists(SOURCE_ROOT):
        # Retry without content subdir
        SOURCE_ROOT = os.path.join(HOME, f"Downloads/{source_folder}")

    # Detect version from folder name
    version_label = "".join(filter(str.isalnum, source_folder)).capitalize()
    if not version_label:
        version_label = "GenericOdoo"

    # --- NEW PATH STRUCTURE ---
    DOWNLOADS_MD_ROOT = os.path.join(HOME, f"Downloads/{source_folder}_md")
    TEMP_MD_DIR = os.path.join(DOWNLOADS_MD_ROOT, "temp_md")
    READY_FOR_NB_DIR = os.path.join(DOWNLOADS_MD_ROOT, "Ready_for_NotebookLM")

    # Final Destination in Workspace
    SCRIPTS_DIR = Path(__file__).resolve().parent
    WORKSPACE_LIBRARY = SCRIPTS_DIR.parent / "LIBRARY" / version_label
    WORKSPACE_LIBRARY = str(WORKSPACE_LIBRARY)

    # Define Base Categories (excluding applications)
    BASE_CATEGORIES = ["administration", "contributing", "developer"]

    # Define Application Groups
    APP_GROUPS = {
        "app_general_studio": ["essentials", "general", "studio"],
        "app_sale_purchase_inv_mrp_services": ["sales", "inventory_and_mrp", "services"],
        "app_hr_finance": ["finance", "hr"],
        "app_website_marketing": ["website", "marketing"],
        "app_productivity": ["productivity"]
    }

    if not shutil.which("pandoc"):
        print("🚨 ERROR: Please install pandoc via 'brew install pandoc' before running this script.")
    else:
        if not os.path.exists(SOURCE_ROOT):
            print(f"🚨 Source directory {SOURCE_ROOT} not found.")
        else:
            print(f"📦 Processing: {version_label}")
            print(f"📂 Temp Output: {DOWNLOADS_MD_ROOT}")

            # Step 1: Convert RST -> MD (Temp in Downloads)
            convert_rst_to_md(SOURCE_ROOT, TEMP_MD_DIR)

            # Clear READY_FOR_NB_DIR to avoid stale files
            if os.path.exists(READY_FOR_NB_DIR):
                for f in Path(READY_FOR_NB_DIR).glob("*.md"):
                    os.remove(f)

            os.makedirs(READY_FOR_NB_DIR, exist_ok=True)

            # Step 2: Merge Base Categories
            for cat in BASE_CATEGORIES:
                cat_temp_path = os.path.join(TEMP_MD_DIR, cat)
                output_prefix = os.path.join(READY_FOR_NB_DIR, f"{version_label.lower()}_{cat}")

                if os.path.exists(cat_temp_path):
                    merge_md_files(cat_temp_path, output_prefix, f"{version_label}_{cat}", max_size_mb=args.max_size)
                elif os.path.exists(f"{cat_temp_path}.md"):
                    shutil.copy(f"{cat_temp_path}.md", output_prefix + ".md")
                    print(f"✅ Copied single file category: {cat}")
                else:
                    print(f"⚠️ Warning: Category '{cat}' not found.")

            # Step 2.1: Merge Application Groups
            APPS_TEMP_DIR = os.path.join(TEMP_MD_DIR, "applications")
            if os.path.exists(APPS_TEMP_DIR):
                for group_name, subfolders in APP_GROUPS.items():
                    group_source_dirs = [os.path.join(APPS_TEMP_DIR, sub) for sub in subfolders]
                    output_prefix = os.path.join(READY_FOR_NB_DIR, f"{version_label.lower()}_{group_name}")
                    merge_md_files(
                        group_source_dirs,
                        output_prefix,
                        f"{version_label}_{group_name}",
                        max_size_mb=args.max_size)
            else:
                print("⚠️ Warning: 'applications' directoy not found in temp MD root.")

            # Step 3: Copy to Workspace LIBRARY
            print(f"\n🚚 Copying final files to LIBRARY: {WORKSPACE_LIBRARY}")
            os.makedirs(WORKSPACE_LIBRARY, exist_ok=True)

            # Clear existing files in destination to avoid clutter from old splits
            for old_file in Path(WORKSPACE_LIBRARY).glob("*.md"):
                os.remove(old_file)

            for md_file in Path(READY_FOR_NB_DIR).glob("*.md"):
                shutil.copy(md_file, WORKSPACE_LIBRARY)
                print(f"   -> Imported: {md_file.name}")

            print(
                f"\n✨ Done! You can verify:\n1. Intermediate files: {DOWNLOADS_MD_ROOT}\n2. Final Library: {WORKSPACE_LIBRARY}")
