#!/bin/bash

# Configuration and Backup Script for Antigravity & Editor Environment
# Usage: ./backup_awf_setup.sh

# 1. Define Backup Directory with Timestamp
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_ROOT="$HOME/antigravity_backups/backup_$TIMESTAMP"
mkdir -p "$BACKUP_ROOT"

echo "🚀 Starting Backup Process..."
echo "📂 Backup Location: $BACKUP_ROOT"

# 2. Backup Antigravity Global Configuration (~/.gemini)
if [ -d "$HOME/.gemini" ]; then
    echo "✅ Backing up ~/.gemini..."
    cp -r "$HOME/.gemini" "$BACKUP_ROOT/gemini_config"
else
    echo "⚠️ ~/.gemini not found. Skipping."
fi

# 3. Backup Agent Workflows & Skills (~/.agent)
if [ -d "$HOME/.agent" ]; then
    echo "✅ Backing up ~/.agent..."
    cp -r "$HOME/.agent" "$BACKUP_ROOT/agent_global"
else
    echo "⚠️ ~/.agent not found. Skipping."
fi

# 4. Backup Workspace Local Agent Configuration (.agent)
WORKSPACE_AGENT_DIR="$(pwd)/.agent"
if [ -d "$WORKSPACE_AGENT_DIR" ]; then
    echo "✅ Backing up local workspace .agent ($WORKSPACE_AGENT_DIR)..."
    cp -r "$WORKSPACE_AGENT_DIR" "$BACKUP_ROOT/agent_local"
else
    # Try finding it in parent directories if not in current
    if [ -d "$HOME/WORKSPACE/.agent" ]; then
         echo "✅ Backing up workspace .agent from $HOME/WORKSPACE/..."
         cp -r "$HOME/WORKSPACE/.agent" "$BACKUP_ROOT/agent_local"
    else
         echo "⚠️ Local .agent directory not found in current path. Skipping."
    fi
fi

# 5. Backup VS Code / Cursor Settings (macOS specific)
VSCODE_USER_DIR="$HOME/Library/Application Support/Code/User"
CURSOR_USER_DIR="$HOME/Library/Application Support/Cursor/User"

if [ -d "$VSCODE_USER_DIR" ]; then
    echo "✅ Backing up VS Code User Settings..."
    mkdir -p "$BACKUP_ROOT/vscode_user"
    cp "$VSCODE_USER_DIR/settings.json" "$BACKUP_ROOT/vscode_user/" 2>/dev/null
    cp "$VSCODE_USER_DIR/keybindings.json" "$BACKUP_ROOT/vscode_user/" 2>/dev/null
    cp -r "$VSCODE_USER_DIR/snippets" "$BACKUP_ROOT/vscode_user/" 2>/dev/null
    
    # Export extensions list
    if command -v code &> /dev/null; then
        echo "📝 Exporting VS Code extensions list..."
        code --list-extensions > "$BACKUP_ROOT/vscode_extensions.txt"
    fi
fi

if [ -d "$CURSOR_USER_DIR" ]; then
    echo "✅ Backing up Cursor User Settings..."
    mkdir -p "$BACKUP_ROOT/cursor_user"
    cp "$CURSOR_USER_DIR/settings.json" "$BACKUP_ROOT/cursor_user/" 2>/dev/null
    cp "$CURSOR_USER_DIR/keybindings.json" "$BACKUP_ROOT/cursor_user/" 2>/dev/null
    cp -r "$CURSOR_USER_DIR/snippets" "$BACKUP_ROOT/cursor_user/" 2>/dev/null
fi

# 6. Create Archive
echo "📦 Compressing backup..."
tar -czf "$HOME/antigravity_backup_$TIMESTAMP.tar.gz" -C "$HOME/antigravity_backups" "backup_$TIMESTAMP"

echo "🎉 Backup Complete!"
echo "💾 Archive saved to: $HOME/antigravity_backup_$TIMESTAMP.tar.gz"
echo "📂 Uncompressed files at: $BACKUP_ROOT"
