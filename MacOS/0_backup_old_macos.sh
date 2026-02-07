#!/bin/bash

# 0_backup_old_macos.sh
# ----------------------------------------------------------------
# LIGHTWEIGHT BACKUP TOOL FOR OLD MAC MIGRATION
# ----------------------------------------------------------------
# Purpose: Backs up ONLY configuration files (Keys, Git, VPN, Shell).
# Excludes: The heavy 'WORKSPACE' directory (Antigravity code).
# Use this on your OLD Mac to quickly grab your identity and settings.
# ----------------------------------------------------------------

set -e

# Setup Backup Directory
BACKUP_ROOT="$HOME/Old_Mac_Config_Backup_$(date +%Y%m%d)"
mkdir -p "$BACKUP_ROOT"

echo "================================================================"
echo "🚀 STARTING CONFIGURATION BACKUP (No Workspace)"
echo "   Target: $BACKUP_ROOT"
echo "================================================================"

# 1. SSH Keys (Identity)
# ----------------------------------------------------------------
echo "🔑 Step 1: Backing up SSH Keys..."
mkdir -p "$BACKUP_ROOT/ssh"
# Copy all private/public keys and known_hosts
# Excluding 'config' if you want to enforce the new system, but backing it up as 'config.old' just in case is safer.
cp "$HOME/.ssh"/id_* "$BACKUP_ROOT/ssh/" 2>/dev/null || true
cp "$HOME/.ssh"/known_hosts "$BACKUP_ROOT/ssh/" 2>/dev/null || true
if [ -f "$HOME/.ssh/config" ]; then
    cp "$HOME/.ssh/config" "$BACKUP_ROOT/ssh/config.old"
fi
echo "   ✅ SSH Keys copied."

# 2. Git Configurations
# ----------------------------------------------------------------
echo "⚙️  Step 2: Backing up Git Configs..."
cp "$HOME"/.gitconfig* "$BACKUP_ROOT/" 2>/dev/null || true
echo "   ✅ .gitconfig and custom profiles copied."

# 3. Shell & Terminal Settings (Zsh, P10k)
# ----------------------------------------------------------------
echo "🐚 Step 3: Backing up Shell Configs..."
cp "$HOME/.zshrc" "$BACKUP_ROOT/" 2>/dev/null || true
cp "$HOME/.p10k.zsh" "$BACKUP_ROOT/" 2>/dev/null || true
echo "   ✅ .zshrc and .p10k.zsh copied."

# 4. VPN Profiles (Pritunl & OpenVPN)
# ----------------------------------------------------------------
echo "🛡️  Step 4: Backing up VPN Profiles..."
mkdir -p "$BACKUP_ROOT/vpn/pritunl"
mkdir -p "$BACKUP_ROOT/vpn/openvpn"

# Pritunl
PRITUNL_PATH="$HOME/Library/Application Support/pritunl/profiles"
if [ -d "$PRITUNL_PATH" ]; then
    cp "$PRITUNL_PATH"/*.ovpn "$BACKUP_ROOT/vpn/pritunl/" 2>/dev/null || true
    echo "   ✅ Pritunl profiles found and copied."
else
    echo "   ℹ️  No Pritunl profiles found."
fi

# OpenVPN
OPENVPN_PATH="$HOME/Library/Application Support/OpenVPN Connect/profiles"
if [ -d "$OPENVPN_PATH" ]; then
    cp -R "$OPENVPN_PATH"/* "$BACKUP_ROOT/vpn/openvpn/" 2>/dev/null || true
    echo "   ✅ OpenVPN profiles found and copied."
else
    echo "   ℹ️  No OpenVPN Connect profiles found."
fi

# 5. VS Code Configuration (Settings & Keybindings)
# ----------------------------------------------------------------
echo "🆚 Step 5: Backing up VS Code Settings..."
mkdir -p "$BACKUP_ROOT/vscode"
VSCODE_USER="$HOME/Library/Application Support/Code/User"
if [ -d "$VSCODE_USER" ]; then
    cp "$VSCODE_USER/settings.json" "$BACKUP_ROOT/vscode/" 2>/dev/null || true
    cp "$VSCODE_USER/keybindings.json" "$BACKUP_ROOT/vscode/" 2>/dev/null || true
    cp "$VSCODE_USER/snippets" "$BACKUP_ROOT/vscode/" -r 2>/dev/null || true
    # Dump extensions list
    code --list-extensions > "$BACKUP_ROOT/vscode/extensions_list.txt" 2>/dev/null || true
    echo "   ✅ Settings, Keybindings, Snippets, and Extensions list backed up."
else
    echo "   ℹ️  VS Code User folder not found."
fi

# 6. Homebrew Bundle (List of all Apps & Tools)
# ----------------------------------------------------------------
echo "🍺 Step 6: Generating Homebrew Bundle (App List)..."
if command -v brew &> /dev/null; then
    brew bundle dump --file="$BACKUP_ROOT/Brewfile" 2>/dev/null || true
    echo "   ✅ Brewfile generated (Use 'brew bundle install' on new Mac)."
else
    echo "   ℹ️  Homebrew not installed."
fi

# 7. iTerm2 Dynamic Profiles
# ----------------------------------------------------------------
echo "🖥️  Step 7: Backing up iTerm2 Preferences..."
ITERM_PREF="$HOME/Library/Preferences/com.googlecode.iterm2.plist"
if [ -f "$ITERM_PREF" ]; then
    cp "$ITERM_PREF" "$BACKUP_ROOT/"
    echo "   ✅ iTerm2 plist copied."
fi

# 8. Custom Fonts (User Installed)
# ----------------------------------------------------------------
echo "🔤 Step 8: Backing up User Fonts..."
mkdir -p "$BACKUP_ROOT/fonts"
# Only backup non-system fonts if they exist
if [ -d "$HOME/Library/Fonts" ]; then
    cp "$HOME/Library/Fonts"/* "$BACKUP_ROOT/fonts/" 2>/dev/null || true
    echo "   ✅ Custom fonts copied."
fi

# 9. Email Notes (Text Only)
# ----------------------------------------------------------------
echo "📧 Email Backup (Manual Action Required):"
echo "   - Modern Emails (Outlook/Gmail/Exchange): Just login on the new machine."
echo "   - Local Archives (Outlook): Located at ~/Library/Group Containers/UBF8T346G9.Office/Outlook/Outlook 15 Profiles"
echo "     (These are often >10GB, please copy via External Drive instead of iCloud)."

# 5. Compress
# ----------------------------------------------------------------
echo "📦 Step 5: Compressing Backup..."
START_DIR=$(pwd)
cd "$HOME"
# Create tarball of the folder we just made
tar -czf "Old_Mac_Config_Backup_$(date +%Y%m%d).tar.gz" -C "$HOME" "Old_Mac_Config_Backup_$(date +%Y%m%d)"
cd "$START_DIR"

echo ""
echo "================================================================"
echo "🎉 BACKUP COMPLETE!"
echo "----------------------------------------------------------------"
echo "📂 Output File: $HOME/Old_Mac_Config_Backup_$(date +%Y%m%d).tar.gz"
echo "----------------------------------------------------------------"
echo "👉 INSTRUCTIONS FOR NEW MAC:"
echo "1. Copy this .tar.gz file to your new Mac."
echo "2. Extract it."
echo "3. Copy contents to their respective locations (~/.ssh, ~/.gitconfig, etc.)"
echo "   (Or use the migrate_restore.sh script if adapted)."
echo "================================================================"
