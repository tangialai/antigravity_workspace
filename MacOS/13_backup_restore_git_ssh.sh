#!/bin/bash

# Color codes
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

BACKUP_DIR="/Users/ryantanmai/WORKSPACE/MacOS/git_ssh_backup"
DATE=$(date +"%Y%m%d_%H%M%S")

# Function: Backup
do_backup() {
    echo -e "${BLUE}==> Starting Backup...${NC}"
    mkdir -p "$BACKUP_DIR"

    # Backup .gitconfig
    if [ -f "$HOME/.gitconfig" ]; then
        cp "$HOME/.gitconfig" "$BACKUP_DIR/gitconfig_backup"
        echo -e "${GREEN}[OK] Backed up .gitconfig${NC}"
    else
        echo -e "${YELLOW}[SKIP] .gitconfig not found${NC}"
    fi

    # Backup .ssh folder
    if [ -d "$HOME/.ssh" ]; then
        tar -czf "$BACKUP_DIR/ssh_backup.tar.gz" -C "$HOME" .ssh
        echo -e "${GREEN}[OK] Backed up .ssh folder (compressed)${NC}"
    else
        echo -e "${YELLOW}[SKIP] .ssh folder not found${NC}"
    fi

    echo -e "${GREEN}Everything is backed up to: $BACKUP_DIR${NC}"
}

# Function: Restore
do_restore() {
    echo -e "${YELLOW}==> Starting Restore...${NC}"

    # Restore .gitconfig
    if [ -f "$BACKUP_DIR/gitconfig_backup" ]; then
        cp "$BACKUP_DIR/gitconfig_backup" "$HOME/.gitconfig"
        echo -e "${GREEN}[OK] Restored .gitconfig${NC}"
    else
        echo -e "${RED}[ERROR] No gitconfig backup found!${NC}"
    fi

    # Restore .ssh
    if [ -f "$BACKUP_DIR/ssh_backup.tar.gz" ]; then
        mkdir -p "$HOME/.ssh"
        tar -xzf "$BACKUP_DIR/ssh_backup.tar.gz" -C "$HOME"
        
        # Set correct permissions (Crucial for SSH)
        chmod 700 "$HOME/.ssh"
        find "$HOME/.ssh" -type f -exec chmod 600 {} +
        find "$HOME/.ssh" -type f -name "*.pub" -exec chmod 644 {} +
        
        echo -e "${GREEN}[OK] Restored .ssh folder and fixed permissions${NC}"
    else
        echo -e "${RED}[ERROR] No ssh backup found!${NC}"
    fi
}

# Simple Menu
clear
echo -e "${BLUE}Git & SSH Backup/Restore Tool${NC}"
echo "1. Backup (Current Git config & SSH keys)"
echo "2. Restore (From last backup)"
echo "3. Exit"
read -p "Select option [1-3]: " choice

case $choice in
    1) do_backup ;;
    2) do_restore ;;
    3) exit 0 ;;
    *) echo -e "${RED}Invalid option${NC}" ;;
esac
