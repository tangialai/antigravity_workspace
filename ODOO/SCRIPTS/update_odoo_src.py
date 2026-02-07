#!/usr/bin/env python3
import os
import subprocess
from pathlib import Path
import datetime


def update_git_repos():
    """
    Scans WORKSPACE/ODOO/REFERENCES for git repositories and runs 'git pull'.
    Logs the result to WORKSPACE/LOGS.
    """
    home = os.path.expanduser("~")
    base_path = Path(home) / "WORKSPACE/ODOO/REFERENCES"
    log_dir = Path(home) / "WORKSPACE/LOGS"

    # Ensure log directory exists
    log_dir.mkdir(parents=True, exist_ok=True)

    timestamp = datetime.datetime.now().strftime("%Y-%m-%d_%H-%M-%S")
    log_file = log_dir / f"{timestamp}_update_odoo_src.log"

    if not base_path.exists():
        print(f"❌ Error: Directory {base_path} does not exist.")
        return

    print(f"🚀 Starting Auto-Update for Odoo Sources at {base_path}...")

    results = []

    # Iterate through all subdirectories in REFERENCES
    for folder in base_path.iterdir():
        if folder.is_dir() and (folder / ".git").exists():
            print(f"🔄 Updating {folder.name}...")
            try:
                # Run git pull without timeout
                process = subprocess.run(
                    ["git", "pull"],
                    cwd=folder,
                    capture_output=True,
                    text=True
                )

                if process.returncode == 0:
                    status = "✅ SUCCESS"
                    details = process.stdout.strip()
                else:
                    status = "❌ FAILED"
                    details = process.stderr.strip()

            except Exception as e:
                status = "❌ ERROR"
                details = str(e)

            # Log result
            log_entry = f"[{folder.name}] {status}\n{details}\n{'-' * 40}"
            results.append(log_entry)
            print(f"   -> {status}")

    # Write full log to file
    if results:
        with open(log_file, "w", encoding="utf-8") as f:
            f.write(f"Update Log: {timestamp}\n{'=' * 40}\n\n")
            f.write("\n".join(results))
        print(f"\n📄 Log saved to: {log_file}")
    else:
        print("❓ No git repositories found to update.")


if __name__ == "__main__":
    update_git_repos()
