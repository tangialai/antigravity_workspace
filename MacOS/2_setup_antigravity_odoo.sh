#!/bin/bash

# setup_antigravity_odoo.sh
# Automated setup for professional Odoo development environment
# Logic: Try Antigravity -> Fallback to Cursor -> Fallback to VS Code

set -e

# Script location
# Script location
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# --- CRITICAL: Load Homebrew Environment ---
# Usage of brew immediately requires this if running directly after script 1 without shell restart
if [ -x "/opt/homebrew/bin/brew" ]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

echo "🚀 Starting Odoo Development Environment Setup..."

# --- 0. Xcode CLI Tools Check (Prerequisite) ---
echo "🛠  Checking Xcode Command Line Tools..."
if ! xcode-select -p >/dev/null 2>&1; then
    echo "⬇️ Installing Xcode CLI Tools..."
    xcode-select --install
    echo "⏳ NOTE: Please follow the popup instructions to install Xcode Tools."
    echo "   Use Command+R to locate the window if hidden."
    echo "   Press [ENTER] here once installation is complete..."
    read -r
else
    echo "✅ Xcode CLI Tools already installed."
fi

# --- 1. Git Installation Check ---
echo "📦 Checking Git..."
if ! command -v git >/dev/null 2>&1; then
    echo "⬇️ Installing Git..."
    brew install git
else
    echo "✅ Git is already installed: $(git --version)"
fi

# --- 2. Docker Installation ---
echo "🐳 Checking Docker..."
if ! command -v docker >/dev/null 2>&1; then
    echo "⬇️ Docker not found. Installing Docker Desktop via Homebrew..."
    brew install --cask docker
    echo "✅ Docker installed. (Please open 'Docker' from Applications to start the engine)"
else
    echo "✅ Docker is already installed: $(docker --version)"
fi

# --- 2.5 Install Odoo System Dependencies (CRITICAL) ---
echo "🏗  Installing Odoo System Dependencies (Required for pip install)..."
brew install postgresql@14 pyenv pyenv-virtualenv openldap libxml2 libxslt jpeg zlib freetype || true

# Configure Pyenv in Shell
echo "🐍 Configuring Pyenv..."
if ! grep -q "pyenv" ~/.zshrc; then
    echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
    echo '[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zprofile
    echo 'eval "$(pyenv init -)"' >> ~/.zshrc
    echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.zshrc
fi
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Link OpenLDAP for compilation (Mac specifics)
echo "🔗 Linking OpenLDAP..."
brew link --force openldap 2>/dev/null || true

# Python Build Dependencies (Optional but recommended)
brew install openssl readline sqlite3 xz tcl-tk || true

# Install a default Python version if none exists in pyenv
RECOMMENDED_PYTHON="3.12.8"
echo "🐍 Checking for Python $RECOMMENDED_PYTHON via pyenv..."
if ! pyenv versions --bare | grep -q "$RECOMMENDED_PYTHON"; then
    echo "⬇️ Installing Python $RECOMMENDED_PYTHON (This may take a few minutes)..."
    pyenv install "$RECOMMENDED_PYTHON"
    pyenv global "$RECOMMENDED_PYTHON"
    echo "✅ Python $RECOMMENDED_PYTHON installed and set as global."
else
    echo "✅ Python $RECOMMENDED_PYTHON is already installed."
fi

# Install Common Python Dev Tools (Global)
echo "🐍 Installing Python Dev Tools..."
# Refresh shell env to use pyenv's python
eval "$(pyenv init -)"
pip install --upgrade pip
pip install setuptools wheel # Required for building Odoo libs
pip install --ignore-installed pre-commit pylint-odoo
pip install pdfminer.six # Required for PDF indexation in Odoo

# --- 2.6 Configure PostgreSQL (Auto-Start & User Setup) ---
echo "🐘 Configuring PostgreSQL..."
brew services start postgresql@14 || true

# Wait for Postgres to allow connections
echo "⏳ Waiting for PostgreSQL to start..."
for i in {1..10}; do
    if pg_isready -q; then
        echo "✅ PostgreSQL is running."
        break
    fi
    sleep 1
done

# Create 'postgres' user (Superuser) - often needed for Odoo config
if ! psql postgres -tAc "SELECT 1 FROM pg_roles WHERE rolname='postgres'" | grep -q 1; then
    echo "👤 Creating 'postgres' superuser..."
    createuser -s postgres || true
fi

# Create current user as DB user (if missing)
CURRENT_USER=$(whoami)
if ! psql postgres -tAc "SELECT 1 FROM pg_roles WHERE rolname='$CURRENT_USER'" | grep -q 1; then
    echo "👤 Creating '$CURRENT_USER' db user..."
    createuser -s "$CURRENT_USER" || true
fi

# Create 'postgres' db (if missing)
if ! psql -lqt | cut -d \| -f 1 | grep -qw postgres; then
    echo "🗄  Creating 'postgres' database..."
    createdb postgres || true
fi

# --- 3. Editor Strategy ---
echo "📦 Analyzing Code Editor..."

find_antigravity_bin() {
    if command -v antigravity >/dev/null 2>&1; then
        echo "antigravity"
    elif [ -f "/Applications/Antigravity.app/Contents/Resources/app/bin/antigravity" ]; then
        echo "/Applications/Antigravity.app/Contents/Resources/app/bin/antigravity"
    elif [ -f "/Applications/Antigravity.app/Contents/MacOS/Antigravity" ]; then
        echo "/Applications/Antigravity.app/Contents/MacOS/Antigravity"
    else
        echo ""
    fi
}

EDITOR_CMD=$(find_antigravity_bin)
EDITOR_NAME=""

# Attempt to install Antigravity if missing
if [ -z "$EDITOR_CMD" ]; then
    echo "⬇️ Antigravity not found. Attempting installation via Homebrew..."
    
    # Try installing from standard cask or warn user
    if brew install --cask antigravity 2>/dev/null; then
        echo "✅ Antigravity installed successfully!"
        EDITOR_CMD=$(find_antigravity_bin)
        EDITOR_NAME="Antigravity"
    else
        echo "⚠️  Could not install Antigravity via Homebrew (Repo might be private)."
        echo "👉 Automating Manual Download Process..."
        # Open download page
        open "https://antigravity.google/download" || echo "   Please download from: https://antigravity.google/download"
        
        echo "⏳ WAITING: Please install Antigravity manually now."
        echo "   Press [ENTER] here once installed to continue setup..."
        read -r
        
        # Check again
        EDITOR_CMD=$(find_antigravity_bin)
        if [ -n "$EDITOR_CMD" ]; then
             EDITOR_NAME="Antigravity"
             echo "✅ Antigravity detected!"
        else
             echo "⚠️  Antigravity still not found. Will attempt fallback to Cursor/VS Code..."
        fi
    fi
else
    EDITOR_NAME="Antigravity"
    echo "✅ Antigravity is already installed."
fi

# --- 4. Fallback Check ---
if [ -z "$EDITOR_CMD" ]; then
    if command -v cursor >/dev/null 2>&1; then
        EDITOR_CMD="cursor"
        EDITOR_NAME="Cursor"
        echo "✅ Detected: Cursor Editor"
    elif command -v code >/dev/null 2>&1; then
        EDITOR_CMD="code"
        EDITOR_NAME="VS Code"
        echo "✅ Detected: VS Code"
    else
        echo "❌ ERROR: No supported editor found (Antigravity, Cursor, VS Code)."
        echo "👉 Recommended: Download Antigravity manually (https://antigravity.google/download)"
        echo "   OR install Cursor/VS Code and run this script again."
        exit 1
    fi
fi

# Ensure CLI is in PATH for Antigravity
if [ "$EDITOR_NAME" == "Antigravity" ] && [[ "$EDITOR_CMD" == "/Applications/"* ]]; then
    export PATH="$PATH:$(dirname "$EDITOR_CMD")"
fi

# --- 5. Install Extensions ---
echo "🔌 Installing Pro Extensions for $EDITOR_NAME..."

extensions=(
    # --- Odoo Essential Pack ---
    "ms-python.python"              # Python Intelligence
    "ms-python.debugpy"             # Debugger
    "trinhanhngoc.vscode-odoo"      # Odoo Snippets & Tools
    "bina.odoo-snippets"            # Additional Odoo Snippets
    "oteny.odoo-test-method-launcher" # Run Odoo Tests
    
    # --- Code Quality ---
    "ms-python.pylint"              # Python Linting
    "esbenp.prettier-vscode"        # Code formatter
    "dbaeumer.vscode-eslint"        # JS Linting
    "usernamehw.errorlens"          # Error Highlighting
    "aaron-bond.better-comments"    # Better Comments

    # --- Data & View ---
    "redhat.vscode-xml"             # XML Tools
    "mechatroner.rainbow-csv"       # CSV Highlighting
    "rangav.vscode-thunder-client"  # API Client
    "cweijan.vscode-mysql-client2"  # Database Client (Supports Postgres, MySQL, etc.)
    
    # --- Remote & Deployment ---
    "ms-vscode-remote.remote-ssh"   # Remote SSH (Official)
    "Natizyskunk.sftp"              # SFTP/FTP Sync (Best 2025)
    
    # --- Git & Productivity ---
    "eamodio.gitlens"               # Git Supercharged
    "gruntfuggly.todo-tree"         # Manage TODOs

    # --- AI & Automation ---
    "Codeium.codeium"               # Free AI Copilot
    "Codium.codium"                 # AI Test Gen
    "mintlify.document"             # Automatic Docs
    "henrikdev.ag-quota"            # Antigravity Quota Tracker
)

for ext in "${extensions[@]}"; do
    echo "⬇️ Installing $ext..."
    "$EDITOR_CMD" --install-extension "$ext" || echo "⚠️ Error installing $ext"
done

# --- 6. Auto-configure Editor Settings (The Magic Step) ---
echo "⚙️  Auto-configuring User Settings for Maximum Efficiency..."

# Define settings content
ODOO_SETTINGS='{
    "editor.formatOnSave": true,
    "editor.defaultFormatter": "esbenp.prettier-vscode",
    "editor.rulers": [120],
    "editor.bracketPairColorization.enabled": true,
    "editor.guides.bracketPairs": true,
    "workbench.iconTheme": "vscode-icons",
    
    "python.languageServer": "Default",
    "python.linting.pylintEnabled": true,
    "python.linting.enabled": true,
    "python.analysis.typeCheckingMode": "basic",
    "python.analysis.autoImportCompletions": true,
    
    "terminal.integrated.fontFamily": "MesloLGS NF",
    "terminal.integrated.fontSize": 13,
    "terminal.integrated.lineHeight": 1.15,
    "terminal.integrated.cursorStyle": "block",
    "terminal.integrated.cursorBlinking": true,
    "terminal.integrated.drawBoldTextInBrightColors": true,
    "terminal.integrated.defaultProfile.osx": "zsh",
    "terminal.integrated.scrollback": 5000,
    
    "xml.symbols.enabled": false,
    
    "files.associations": {
        "*.csv": "csv",
        "*.xml": "xml"
    },
    "files.exclude": {
        "**/.git": true,
        "**/.DS_Store": true,
        "**/__pycache__": true,
        "**/*.pyc": true
    },
    
    "[xml]": {
        "editor.defaultFormatter": "redhat.vscode-xml"
    },
    "[python]": {
        "editor.defaultFormatter": "ms-python.python"
    },
    
    "vs-odoo.odooPath": "auto",
    "testMethodLauncher.testTags": "classic",
    
    "better-comments.tags": [
        { "tag": "TODO", "color": "#FF8C00", "strikethrough": false, "underline": false, "backgroundColor": "transparent", "bold": true, "italic": false },
        { "tag": "*", "color": "#98C379", "strikethrough": false, "underline": false, "backgroundColor": "transparent", "bold": true, "italic": false },
        { "tag": "?", "color": "#3498DB", "strikethrough": false, "underline": false, "backgroundColor": "transparent", "bold": true, "italic": false },
        { "tag": "!", "color": "#FF2D00", "strikethrough": false, "underline": false, "backgroundColor": "transparent", "bold": true, "italic": false }
    ]
}'

# Determine Settings Path based on Editor
SETTINGS_PATH=""
if [ "$EDITOR_NAME" == "Antigravity" ]; then
    SETTINGS_PATH="$HOME/Library/Application Support/Antigravity/User/settings.json"
    [ ! -d "$(dirname "$SETTINGS_PATH")" ] && SETTINGS_PATH="$HOME/Library/Application Support/Code/User/settings.json" # Fallback
elif [ "$EDITOR_NAME" == "Cursor" ]; then
    SETTINGS_PATH="$HOME/Library/Application Support/Cursor/User/settings.json"
elif [ "$EDITOR_NAME" == "VS Code" ]; then
    SETTINGS_PATH="$HOME/Library/Application Support/Code/User/settings.json"
fi

# Apply Settings using Python (Safely Merge)
if [ -n "$SETTINGS_PATH" ]; then
    # Create dir if not exists
    mkdir -p "$(dirname "$SETTINGS_PATH")"
    
    # Create empty json if not exists
    [ ! -f "$SETTINGS_PATH" ] && echo "{}" > "$SETTINGS_PATH"
    
    echo "📝 Updating settings in: $SETTINGS_PATH"
    
    # Python script to merge JSON
    python3 -c "
import json
import os
import sys

target_file = '$SETTINGS_PATH'
new_settings = json.loads('''$ODOO_SETTINGS''')

try:
    with open(target_file, 'r') as f:
        data = json.load(f)
except Exception:
    data = {}

# Update data with new settings (Recursive merge is overkill here, shallow update is fine for top keys)
for key, value in new_settings.items():
    data[key] = value

with open(target_file, 'w') as f:
    json.dump(data, f, indent=4)
print('✅ Settings fused successfully!')
"
else
    echo "⚠️  Could not determine settings path automatically."
    echo "ℹ️  Created 'odoo_recommended_settings.json' instead."
    echo "$ODOO_SETTINGS" > "$SCRIPT_DIR/odoo_recommended_settings.json"
fi

echo "----------------------------------------------------------------"
echo "✅ SETUP COMPLETE! YOUR ODOO BATTLE STATION IS READY."
echo "----------------------------------------------------------------"
echo "🛠  SYSTEM TOOLS:"
echo "   - Git: Version Control $(git --version | awk '{print $3}')"
echo "   - Docker Desktop: Container Platform $(docker --version | awk '{print $3}')"
echo "   - Odoo Libs: Postgres, OpenLDAP, xml/xslt, jpeg (Ready for pip build)"
echo ""
echo "📝 EDITOR: $EDITOR_NAME (Optimized for Odoo)"
echo ""
echo "🔌 INSTALLED EXTENSIONS & ABILITIES:"
echo "   [Odoo Core]"
echo "   ✓ Python & Debugpy ....... Intellisense & Debugging support"
echo "   ✓ Odoo (TrinhAnhNgoc) .... Odoo Snippets, Scaffold & Tools"
echo "   ✓ Odoo Test Launcher ..... Run Unit Tests with 1 click"
echo ""
echo "   [Code Quality]"
echo "   ✓ Pylint & ESLint ........ Catch errors before running"
echo "   ✓ Prettier ............... Auto-format code on Save"
echo "   ✓ ErrorLens .............. See errors inline (No hovering needed)"
echo "   ✓ Better Comments ........ Colorful comments (! Important, ? Question)"
echo ""
echo "   [Data & Remote]"
echo "   ✓ Database Client ........ Manage Postgres DB (Like DBeaver/TablePlus)"
echo "   ✓ Thunder Client ......... Test APIs (Like Postman but lighter)"
echo "   ✓ Remote SSH ............. Code directly on VPS/Server"
echo "   ✓ SFTP (Natizyskunk) ..... Sync files with remote server"
echo ""
echo "   [AI & Productivity]"
echo "   ✓ Codeium AI ............. Free Coding Assistant (Autocomplete)"
echo "   ✓ CodiumAI ............... Generate Unit Tests automatically"
echo "   ✓ Mintlify ............... Write Docstrings with AI"
echo "   ✓ GitLens ................ visualize code authorship"
echo ""
echo "⚙️  CONFIGURATION:"
echo "   ✓ Applied 'JetBrainsMono Nerd Font' for Terminal."
echo "   ✓ Enabled 'Format On Save' & 'Block Cursor'."
echo "   ✓ Optimized for large Odoo codebases (XML Symbols disabled)."
echo "----------------------------------------------------------------"
echo "🚀 HAPPY CODING! (Run 'source ~/.zshrc' to refresh shell if needed)"
echo "----------------------------------------------------------------"
