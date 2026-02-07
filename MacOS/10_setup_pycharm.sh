#!/bin/bash

# Script to install PyCharm and Odoo development plugins on macOS
# Usage: ./install_odoo_pycharm.sh

set -e

echo "Starting PyCharm & Odoo Development Environment Setup..."

# Function to check if a command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# 1. Check for Homebrew
if ! command_exists brew; then
    echo "Error: Homebrew is not installed. Please install Homebrew first:"
    echo "/bin/bash -c \"\$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)\""
    exit 1
fi

# 2. Install PyCharm
echo "Checking for PyCharm installation..."

PYCHARM_BIN=""
APP_NAME=""

if [ -d "/Applications/PyCharm.app" ]; then
    echo "PyCharm Professional found."
    APP_NAME="PyCharm"
elif [ -d "/Applications/PyCharm CE.app" ]; then
    echo "PyCharm Community Edition found."
    APP_NAME="PyCharm CE"
else
    echo "PyCharm not found."
    echo "Which version would you like to install?"
    echo "1) PyCharm Community Edition (Free)"
    echo "2) PyCharm Professional (Paid License Required)"
    read -p "Enter choice [1]: " choice
    choice=${choice:-1}

    if [ "$choice" == "2" ]; then
        echo "Installing PyCharm Professional..."
        brew install --cask pycharm
        APP_NAME="PyCharm"
    else
        echo "Installing PyCharm Community Edition..."
        brew install --cask pycharm-ce
        APP_NAME="PyCharm CE"
    fi
fi

# 3. Locate the 'command-line tool' (install-plugins helper)
# Usually 'charm' binary is handy, but for plugins we often need the direct binary inside the app if 'charm' isn't in PATH.
# Or we can use the 'f' flag with the actual binary.

# Trying to find the binary path
if [ "$APP_NAME" == "PyCharm" ]; then
    BINARY_PATH="/Applications/PyCharm.app/Contents/MacOS/pycharm"
elif [ "$APP_NAME" == "PyCharm CE" ]; then
    BINARY_PATH="/Applications/PyCharm CE.app/Contents/MacOS/pycharm"
fi

if [ ! -f "$BINARY_PATH" ]; then
    echo "Error: Could not locate PyCharm binary at $BINARY_PATH"
    exit 1
fi

echo "PyCharm binary located at: $BINARY_PATH"

# 4. Install Plugins
# Plugin IDs:
# - Odoo (dev.ngocta.pycharm-odoo)
# - CSV (net.seesharpsoft.intellij.plugins.csv)
# - .ignore (mobi.hsz.idea.gitignore)
# - Key Promoter X (KeyPromoterX) - Optional but good

PLUGINS=(
    "dev.ngocta.pycharm-odoo"
    "net.seesharpsoft.intellij.plugins.csv"
    "mobi.hsz.idea.gitignore"
)

echo "Installing plugins..."

for plugin in "${PLUGINS[@]}"; do
    echo "Installing $plugin..."
    "$BINARY_PATH" installPlugins "$plugin" || echo "Failed to install $plugin (or already installed)"
done

echo "--------------------------------------------------------"
echo "Setup Complete!"
echo "Please restart PyCharm to ensure all plugins are active."
echo "--------------------------------------------------------"
