#!/bin/bash

# migrate_restore.sh
# ----------------------------------------------------------------
# Restore WORKSPACE and Antigravity IDE state for RyanTan
# ----------------------------------------------------------------

set -e

# Source Folder (Local directory of the script)
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

echo "================================================================"
echo "🔄 STARTING WORKSPACE & IDE RESTORATION..."
echo "================================================================"

# 1. Extract Workspaces
echo "📂 Step 1/2: Restoring Workspace Folders..."
found_ws=0
for ws_tar in "$SCRIPT_DIR"/WS_*.tar.gz; do
    if [ -f "$ws_tar" ]; then
        echo "   ▶️ Restoring $(basename "$ws_tar")..."
        tar -xzvf "$ws_tar" -C "$HOME"
        echo "   ✅ Restored."
        found_ws=1
    fi
done

if [ $found_ws -eq 0 ]; then
    echo "⚠️  No WS_*.tar.gz files found to restore."
else
    # Recreate empty structures for excluded folders (matching actual Odoo path)
    echo "🏗️  Recreating empty directory structures (DATA_DIR, REFERENCES, LOGS)..."
    mkdir -p "$HOME/WORKSPACE/LOGS"
    mkdir -p "$HOME/WORKSPACE/ODOO/DATA_DIR"
    mkdir -p "$HOME/WORKSPACE/ODOO/REFERENCES"
fi

# 2. Restore Git Configurations & Keys
echo "⚙️  Step 2/2: Restoring Git Identities..."

if [ -d "$BACKUP_SRC/Configs" ]; then
    # Restore .gitconfig and profiles
    cp "$BACKUP_SRC/Configs"/.gitconfig* "$HOME/"
    echo "   ✅ Git configurations restored to ~/"
    
    # Restore SSH Keys
    if [ -d "$BACKUP_SRC/Configs/ssh_keys" ]; then
        mkdir -p "$HOME/.ssh"
        chmod 700 "$HOME/.ssh"
        cp "$BACKUP_SRC/Configs/ssh_keys"/* "$HOME/.ssh/"
        chmod 600 "$HOME/.ssh"/id_*
        echo "   ✅ SSH Keys restored and permissions fixed (600)."
    fi
else
    echo "   ℹ️  No Configs folder found in backup."
fi

echo "================================================================"
echo "🎉 RESTORE COMPLETE!"
echo "🚀 You can now continue your work."
echo "================================================================"
