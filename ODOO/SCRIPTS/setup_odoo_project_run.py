#!/usr/bin/env python3
import argparse
import os
import json
import sys
from pathlib import Path

# Mapping Odoo Version -> Python Version (based on ENV_CONFIG)
PYTHON_VERSIONS = {
    "19": "3.13",
    "18": "3.12",
    "17": "3.11",
    "16": "3.10",
    "15": "3.9",
}


def get_workspace_root():
    # Assuming script is in ODOO/SCRIPTS/, get parent of parent of parent
    return Path(__file__).resolve().parent.parent.parent


WORKSPACE_ROOT = get_workspace_root()


def get_venv_python(ver):
    py_ver = PYTHON_VERSIONS.get(ver, "3.12")
    venv_name = f"python_venv_{py_ver.replace('.', '_')}"
    # Use absolute path to ensure VSC finds the python executable
    return WORKSPACE_ROOT / "ODOO/ENV_CONFIG" / venv_name / "bin/python"


def generate_conf(project_path, odoo_ver, enterprise, port, db_filter):
    # Ensure ODOO/CONF directory exists
    conf_dir = WORKSPACE_ROOT / "ODOO/CONF"
    conf_dir.mkdir(parents=True, exist_ok=True)

    # Ensure ODOO/DATA_DIR exists
    data_dir = WORKSPACE_ROOT / "ODOO/DATA_DIR"
    data_dir.mkdir(parents=True, exist_ok=True)

    # Normalize project name for filename (e.g. DBVI -> dbvi)
    project_slug = project_path.name.lower()
    conf_filename = f"odoo{odoo_ver}_{project_slug}.conf"

    # Save config to ODOO/CONF folder
    conf_path = conf_dir / conf_filename

    addons_paths = []

    # --- 1. Community Addons (Base - First) ---
    odoo_src = WORKSPACE_ROOT / "ODOO/REFERENCES" / f"odoo{odoo_ver}"
    if not odoo_src.exists():
        print(f"❌ Error: Odoo source {odoo_src} not found. Please run update_odoo_src.py first.")
    addons_paths.append(str(odoo_src / "addons"))

    # --- 2. Enterprise Addons (Second) ---
    # ONLY include if enterprise flag is True AND path exists
    if enterprise:
        ent_path = WORKSPACE_ROOT / "ODOO/REFERENCES" / f"odoo{odoo_ver}en"
        # Check Enterprise structure
        if ent_path.exists():
            # Check if 'odoo/addons' exists inside enterprise repo
            ent_addons = ent_path / "odoo" / "addons"
            if ent_addons.exists():
                addons_paths.append(str(ent_addons))
            else:
                addons_paths.append(str(ent_path))
        else:
            print(f"⚠️  Warning: Enterprise path {ent_path} not found (requested via --enterprise).")

    # --- 3. Project Level Addons (Last) ---
    addons_paths.append(str(project_path))

    # Auto-detect sub-directories ending with 'addons' in the project folder
    if project_path.exists():
        for item in project_path.iterdir():
            if item.is_dir() and "addons" in item.name:
                addons_paths.append(str(item))

    # User provided template (Fixed Defaults as requested)
    conf_content = f"""[options]
addons_path = {','.join(addons_paths)}
admin_passwd = $pbkdf2-sha512$25000$X4uR0rq3lrK2tpaytjZG6A$dt04LzXyJf1WzZwqdd5Ce9qH/BRAvCOTFQiTB1ySPfOu0oQI6ypxjOP1F372nFZ1py2fAPxPabOBk.XnZSINrw
csv_internal_sep = ,
data_dir = {str(data_dir)}
db_host = False
db_maxconn = 64
db_name =
db_password = False
db_port = False
db_sslmode = prefer
db_template = template0
db_user = {os.environ.get('USER', 'odoo')}
dbfilter =
demo = {{}}
email_from = False
geoip_database = /usr/share/GeoIP/GeoLite2-City.mmdb
http_enable = True
http_interface =
http_port = 8069
import_partial =
limit_memory_hard = 0
limit_memory_soft = 2147483648
limit_request = 8192
limit_time_cpu = 600
limit_time_real = 12000
limit_time_real_cron = -1
list_db = True
log_db = False
log_db_level = warning
log_handler = :INFO
log_level = info
logfile =
longpolling_port = 8072
max_cron_threads = 2
osv_memory_age_limit = False
osv_memory_count_limit = False
pg_path =
pidfile =
proxy_mode = False
reportgz = False
screencasts =
screenshots = /tmp/odoo_tests
server_wide_modules = base,web
smtp_password = False
smtp_port = 25
smtp_server = localhost
smtp_ssl = False
smtp_user = False
syslog = False
test_enable = False
test_file =
test_tags = None
transient_age_limit = 1.0
translate_modules = ['all']
unaccent = False
upgrade_path =
without_demo = False
workers = 0
"""
    with open(conf_path, "w") as f:
        f.write(conf_content)

    print(f"✅ Generated odoo.conf at {conf_path}")
    return conf_path


def update_vscode_launch(project_path, odoo_ver, conf_path, venv_python):
    vscode_dir = WORKSPACE_ROOT / ".vscode"
    vscode_dir.mkdir(exist_ok=True)
    launch_json_path = vscode_dir / "launch.json"

    launch_data = {
        "version": "0.2.0",
        "configurations": []
    }

    if launch_json_path.exists():
        try:
            with open(launch_json_path, "r") as f:
                content = f.read()
                if content.strip():
                    launch_data = json.loads(content)
        except json.JSONDecodeError:
            print("⚠️  Existing launch.json invalid. Creating new.")

    # Path to odoo-bin
    odoo_bin = WORKSPACE_ROOT / "ODOO/REFERENCES" / f"odoo{odoo_ver}" / "odoo-bin"

    # 1. Debug Configuration
    debug_name = f"Debug {project_path.name} (Odoo {odoo_ver})"
    debug_config = {
        "name": debug_name,
        "type": "debugpy",
        "request": "launch",
        "program": str(odoo_bin),
        "args": ["-c", str(conf_path)],
        "python": str(venv_python),
        "cwd": str(project_path),
        "console": "integratedTerminal",
        "justMyCode": False
    }

    # 2. Run Configuration (No Debug)
    run_name = f"Start {project_path.name} (Odoo {odoo_ver})"
    run_config = {
        "name": run_name,
        "type": "debugpy",
        "request": "launch",
        "program": str(odoo_bin),
        "args": ["-c", str(conf_path)],
        "python": str(venv_python),
        "cwd": str(project_path),
        "console": "integratedTerminal",
        "noDebug": True  # This forces run without debugging
    }

    # Remove old configs if they exist to avoid duplication
    launch_data["configurations"] = [
        c for c in launch_data["configurations"]
        if c.get("name") not in [debug_name, run_name, f"Run {project_path.name} (Odoo {odoo_ver})"]
    ]

    # Add new configs
    launch_data["configurations"].append(debug_config)
    launch_data["configurations"].append(run_config)

    with open(launch_json_path, "w") as f:
        json.dump(launch_data, f, indent=4)

    print(f"✅ Updated .vscode/launch.json with: '{debug_name}' and '{run_name}'")


def main():
    parser = argparse.ArgumentParser(description="Setup Odoo Project Run Config")
    parser.add_argument("--project", required=True, help="Project Path relative to WORKSPACE (e.g. NOVOBI/DBVI)")
    parser.add_argument("--ver", required=True, help="Odoo Version (19, 18...)")
    parser.add_argument("--enterprise", action="store_true", help="Include Enterprise repo")
    parser.add_argument("--port", default="8069", help="Http Port")
    parser.add_argument("--db_filter", help="Database Filter")

    args = parser.parse_args()

    # If the project doesn't start with ODOO/ and is not absolute, assume it is an Odoo project
    if not args.project.startswith("ODOO/") and not args.project.startswith("/"):
        project_path = WORKSPACE_ROOT / "ODOO" / args.project
    else:
        project_path = WORKSPACE_ROOT / args.project

    # Create project directory if not exists (for tests/demos)
    if not project_path.exists():
        print(f"❓ Project path {project_path} does not exist. Creating it.")
        project_path.mkdir(parents=True, exist_ok=True)

    venv_python = get_venv_python(args.ver)

    print(f"🚀 Setting up run config for {args.project}...")
    conf_path = generate_conf(project_path, args.ver, args.enterprise, args.port, args.db_filter)
    update_vscode_launch(project_path, args.ver, conf_path, venv_python)
    print("\n✨ Done! Open 'Run and Debug' in VSCode to start.")


if __name__ == "__main__":
    main()
