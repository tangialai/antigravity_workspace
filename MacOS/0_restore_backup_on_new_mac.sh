#!/bin/bash

# 0_restore_backup_on_new_mac.sh
# ----------------------------------------------------------------
# COMPANION TO 0_backup_old_macos.sh
# ----------------------------------------------------------------
# Purpose: Restoration tool to run on the NEW Mac.
# What it does: Unpacks the 'Old_Mac_Config_Backup_YYYYMMDD.tar.gz' file
#               and restores Keys, Git Configs, Shell, and VPNs to correct places.
# ----------------------------------------------------------------

set -e

# Colors
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

echo -e "${BLUE}================================================================${NC}"
echo -e "${BLUE}         MAC CONFIGURATION RESTORE TOOL (NEW MAC)               ${NC}"
echo -e "${BLUE}================================================================${NC}"

read -p "Enter path to the backup file (Old_Mac_Config_Backup_Example.tar.gz): " BACKUP_FILE
BACKUP_FILE="${BACKUP_FILE/#\~/$HOME}"

if [ ! -f "$BACKUP_FILE" ]; then
    echo -e "${RED}❌ Error: File not found: $BACKUP_FILE${NC}"
    exit 1
fi

echo ""
echo "📦 Extracting backup..."

# Extract to a temp folder first to inspect/safety
TEMP_DIR="$HOME/Restoration_Temp_$(date +%s)"
mkdir -p "$TEMP_DIR"
tar -xzf "$BACKUP_FILE" -C "$TEMP_DIR"

# Find the inner folder (the tar usually contains the directory structure)
EXTRACTED_ROOT=$(find "$TEMP_DIR" -maxdepth 2 -type d -name "Old_Mac_Config_Backup_*" | head -n 1)

if [ -z "$EXTRACTED_ROOT" ]; then
    echo "⚠️  Structure weirdness. Listing temp dir:"
    find "$TEMP_DIR" -maxdepth 2
    echo "Trying direct restore from root of temp..."
    EXTRACTED_ROOT="$TEMP_DIR"
fi

echo "✅ Extracted to: $EXTRACTED_ROOT"
echo "----------------------------------------------------------------"

# 1. Restore SSH
# ----------------------------------------------------------------
echo "🔑 Restoring SSH Keys..."
mkdir -p "$HOME/.ssh"
chmod 700 "$HOME/.ssh"

if [ -d "$EXTRACTED_ROOT/ssh" ]; then
    cp "$EXTRACTED_ROOT/ssh"/id_* "$HOME/.ssh/" 2>/dev/null || true
    cp "$EXTRACTED_ROOT/ssh"/known_hosts "$HOME/.ssh/" 2>/dev/null || true
    
    # Fix Permissions (Crucial)
    chmod 600 "$HOME/.ssh"/id_* || true
    chmod 644 "$HOME/.ssh"/known_hosts 2>/dev/null || true
    chmod 644 "$HOME/.ssh"/*.pub 2>/dev/null || true
    
    echo -e "${GREEN}   ✅ SSH Keys restored & permissions fixed.${NC}"
else
    echo "   ℹ️  No SSH backup found."
fi

# 2. Restore Git
# ----------------------------------------------------------------
echo "⚙️  Restoring Git Configurations..."
cp "$EXTRACTED_ROOT"/.gitconfig* "$HOME/" 2>/dev/null || true
echo -e "${GREEN}   ✅ Git configs restored.${NC}"

# 3. Restore Shell
# ----------------------------------------------------------------
echo "🐚 Restoring Shell Configs..."
cp "$EXTRACTED_ROOT"/.zshrc "$HOME/" 2>/dev/null || true
cp "$EXTRACTED_ROOT"/.p10k.zsh "$HOME/" 2>/dev/null || true
echo -e "${GREEN}   ✅ Zsh configs restored.${NC}"

# 4. Restore iTerm2
# ----------------------------------------------------------------
echo "🖥️  Restoring iTerm2 Configs..."
if [ -f "$EXTRACTED_ROOT/com.googlecode.iterm2.plist" ]; then
    cp "$EXTRACTED_ROOT/com.googlecode.iterm2.plist" "$HOME/Library/Preferences/"
    # Force reload preferences cache
    defaults read com.googlecode.iterm2 > /dev/null || true
    echo -e "${GREEN}   ✅ iTerm2 preferences restored.${NC}"
fi

# 5. Restore Fonts
# ----------------------------------------------------------------
echo "🔤 Restoring Fonts..."
if [ -d "$EXTRACTED_ROOT/fonts" ]; then
    mkdir -p "$HOME/Library/Fonts"
    cp "$EXTRACTED_ROOT/fonts"/* "$HOME/Library/Fonts/" 2>/dev/null || true
    echo -e "${GREEN}   ✅ Custom fonts installed.${NC}"
fi

# 6. Restore VS Code
# ----------------------------------------------------------------
echo "🆚 Restoring VS Code Settings..."
VSCODE_USER="$HOME/Library/Application Support/Code/User"
mkdir -p "$VSCODE_USER"
if [ -d "$EXTRACTED_ROOT/vscode" ]; then
    cp "$EXTRACTED_ROOT/vscode/settings.json" "$VSCODE_USER/" 2>/dev/null || true
    cp "$EXTRACTED_ROOT/vscode/keybindings.json" "$VSCODE_USER/" 2>/dev/null || true
    if [ -d "$EXTRACTED_ROOT/vscode/snippets" ]; then
        cp -r "$EXTRACTED_ROOT/vscode/snippets" "$VSCODE_USER/" 2>/dev/null || true
    fi
    echo -e "${GREEN}   ✅ VS Code settings restored.${NC}"
    echo "   ℹ️  To install extensions, run: cat $EXTRACTED_ROOT/vscode/extensions_list.txt | xargs -L 1 code --install-extension"
fi

# 7. VPN (Info)
# ----------------------------------------------------------------
echo "🛡️  VPN Restoration Info:"
echo "   - Pritunl Files are at: $EXTRACTED_ROOT/vpn/pritunl"
echo "   - OpenVPN Files are at: $EXTRACTED_ROOT/vpn/openvpn"
echo "   👉 Please Import these manually via the respective App UI."

# Cleanup
rm -rf "$TEMP_DIR"

echo "----------------------------------------------------------------"
echo -e "${GREEN}🎉 RESTORE COMPLETE!${NC}"
echo "Restart your terminal (or run 'source ~/.zshrc') to see changes."
echo "================================================================"
