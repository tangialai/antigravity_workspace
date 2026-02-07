#!/bin/bash

# RyanTan_Master_Setup.sh
# ----------------------------------------------------------------
# The ultimate master script to setup RyanTan's macOS Environment
# This script orchestrates all sub-scripts in the correct order.
# ----------------------------------------------------------------

set -e

# Configuration
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

echo "================================================================"
echo "🌟 WELCOME TO RYANTAN'S MAC MASTER SETUP 🌟"
echo "================================================================"
echo "This script will transform your fresh Mac into a Pro Odoo Station."
echo "Location: $SCRIPT_DIR"
echo "================================================================"

# Function to run a script and check for existence
run_script() {
    local script_name="$1"
    local description="$2"
    local script_path="$SCRIPT_DIR/$script_name"

    echo ""
    echo "▶️  STEP: $description ($script_name)"
    echo "----------------------------------------------------------------"
    
    if [ -f "$script_path" ]; then
        bash "$script_path"
    else
        echo "❌ Error: $script_path not found!"
        exit 1
    fi
}

# --- START EXECUTION ---

# Step 1: Tools & Terminal Excellence
run_script "1_setup_tools.sh" "Foundation & UI (Brew, Chrome, iTerm2, P10k)"

# Step 2: Odoo Core & IDE
run_script "2_setup_antigravity_odoo.sh" "Odoo Dev Kit (Postgres, Docker, IDE, Extensions)"

# Step 3: AI Arsenal
run_script "3_setup_ai.sh" "AI Tools (ChatGPT, Perplexity, Notion, Gemini)"

# Step 4: Communication
run_script "4_setup_social.sh" "Social Apps (Zalo, Tele, Mess, Viber)"

# Step 5: Network
run_script "5_setup_vpn.sh" "VPN Access (Pritunl)"

# Step 6: Git Multi-Account
run_script "6_setup_git_multiaccount.sh" "Git Multi-Account Manager"

# Step 7 & 8: Migration Helpers (Optional - User can run manually)
# echo "Note: steps 7 & 8 are for migration and should be run manually if needed."

# Step 9: Antigravity MCP
run_script "9_setup_anti_gravity_mcp.sh" "Antigravity MCP (NotebookLM + Gemini)"

echo ""
echo "================================================================"
echo "🎊 ALL DONE! YOUR MAC IS NOW FULLY ARMED."
echo "================================================================"
echo "👉 Next Steps:"
echo "1. Restart iTerm2 to see the beautiful UI."
echo "2. Open Docker and let it initialize."
echo "3. Open Antigravity/VS Code and login to your accounts."
echo "4. Profit! 🚀"
echo "================================================================"
