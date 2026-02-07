#!/bin/bash

# migrate_backup.sh
# ----------------------------------------------------------------
# Backup WORKSPACE (with venv) and Antigravity IDE state for RyanTan
# ----------------------------------------------------------------

# --- CONFIGURATION: Add your workspace folders here ---
# These folders should be relative to your HOME directory (e.g., "WORKSPACE", "Projects")
WORKSPACES=(
    "WORKSPACE"
)

# --- EXCLUSION: Add folder patterns to ignore ---
EXCLUDES=(
    "__pycache__"
    ".DS_Store"
    "*.pyc"
    "DATA_DIR"
    "REFERENCES"
    "LOGS"
)
# -----------------------------------------------------

set -e

# --- DESTINATION CONFIGURATION ---
# Backup will be saved to your Home directory for manual migration
BACKUP_PATH="$HOME/RyanTan_Migration_$(date +%Y%m%d)"

mkdir -p "$BACKUP_PATH"

echo "================================================================"
echo "📦 STARTING COMPREHENSIVE BACKUP..."
echo "================================================================"

# 1. Backup Each Workspace
echo "📂 Step 1/2: Archiving Workspaces (including venv)..."
for ws in "${WORKSPACES[@]}"; do
    if [ -d "$HOME/$ws" ]; then
        # Create a temporary exclude file - MOST RELIABLE method for BSD tar on macOS
        EXCLUDE_FILE=$(mktemp)
        for pattern in "${EXCLUDES[@]}"; do
            # Use wildcards to match the pattern anywhere in the path
            # This ensures it skips contents even if nested (e.g., ODOO/DATA_DIR/...)
            echo "*/$pattern/*" >> "$EXCLUDE_FILE"
            # Also exclude the folder entry itself if it's a hidden/cache folder
            if [[ "$pattern" == "__pycache__" || "$pattern" == ".DS_Store" ]]; then
                echo "*/$pattern" >> "$EXCLUDE_FILE"
            fi
        done

        echo "   📦 Compressing ~/$ws (skipping heavy contents: ${EXCLUDES[*]})..."
        # -X (exclude-from) with wildcard patterns is the fail-safe way on Mac
        tar -czvf "$BACKUP_PATH/WS_${ws}.tar.gz" -X "$EXCLUDE_FILE" -C "$HOME" "$ws"
        
        rm "$EXCLUDE_FILE"
        echo "   ✅ ~/$ws archived."
    else
        echo "   ⚠️ Warning: ~/$ws folder not found, skipping."
    fi
done

# 2. Backup Git Configurations & SSH Keys (New Standard)
echo "⚙️  Step 2/3: Backing up Git Identities & Keys..."
mkdir -p "$BACKUP_PATH/Configs"

# Copy Global Git Config
cp "$HOME/.gitconfig" "$BACKUP_PATH/Configs/" 2>/dev/null || true
echo "   ✅ .gitconfig copied."

# Copy All Custom Git Profiles (.gitconfig-dbvi, etc.)
cp "$HOME"/.gitconfig-* "$BACKUP_PATH/Configs/" 2>/dev/null || true
echo "   ✅ Custom git profiles (.gitconfig-*) copied."

# Copy SSH Keys (BUT EXCLUDE legacy config)
mkdir -p "$BACKUP_PATH/Configs/ssh_keys"
cp "$HOME/.ssh"/id_* "$BACKUP_PATH/Configs/ssh_keys/" 2>/dev/null || true
chmod 600 "$BACKUP_PATH/Configs/ssh_keys"/*
echo "   ✅ SSH Keys backed up (legacy .ssh/config excluded)."

# 3. Cleanup (Optional)
echo "✅ Backup archived successfully."

echo "================================================================"
echo "🎉 BACKUP COMPLETE!"
echo "📍 Files are located at: $BACKUP_PATH"
echo "👉 Instructions:"
echo "1. Copy the entire '$BACKUP_PATH' folder to your new Mac."
echo "2. Run 'migrate_restore.sh' on the new Mac."
echo "================================================================"
