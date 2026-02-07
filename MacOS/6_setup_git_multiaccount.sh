#!/bin/bash

# 9_setup_git_multiaccount.sh
# Automates the setup of multiple Git accounts and cleans up existing repos.

set -e

# Colors
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${BLUE}================================================================${NC}"
echo -e "${BLUE}       GIT MULTI-ACCOUNT SETUP & AUDIT                          ${NC}"
echo -e "${BLUE}================================================================${NC}"

SSH_DIR="$HOME/.ssh"
mkdir -p "$SSH_DIR"
chmod 700 "$SSH_DIR"

setup_account() {
    local alias=$1
    echo -e "${YELLOW}--- Configuring Account: $alias ---${NC}"
    
    read -p "Enter Email for $alias: " email
    read -p "Enter User Name for $alias: " name
    read -p "Enter Directory Path (e.g. ~/WORKSPACE/$alias): " dir_path
    
    # Expand tilde
    dir_path="${dir_path/#\~/$HOME}"
    echo "Directory: $dir_path"
    mkdir -p "$dir_path"
    
    # Destination Key File
    key_file="$SSH_DIR/id_ed25519_github_$alias"
    
    if [ -f "$key_file" ]; then
         echo -e "${GREEN}   ✅ Found existing key at $key_file. Using it.${NC}"
    else
        echo "How do you want to provide the SSH Key?"
        echo "1. GENERATE a new key (Recommended for fresh start)"
        echo "2. IMPORT an existing key file (from old Mac/Backup)"
        read -p "Choose (1/2): " key_choice
        
        if [[ "$key_choice" == "2" ]]; then
            read -p "Enter full path to existing private key file: " import_path
            import_path="${import_path/#\~/$HOME}"
            
            if [ -f "$import_path" ]; then
                cp "$import_path" "$key_file"
                chmod 600 "$key_file"
                echo -e "${GREEN}   ✅ Key imported successfully!${NC}"
            else
                echo -e "${RED}   ❌ File not found. Falls back to generation.${NC}"
                ssh-keygen -t ed25519 -C "$email" -f "$key_file" -N ""
            fi
        else
            echo "Generating New SSH Key..."
            ssh-keygen -t ed25519 -C "$email" -f "$key_file" -N ""
        fi
    fi
    
    # 2. Create local gitconfig
    gitconfig_file="$HOME/.gitconfig-$alias"
    echo "Creating git config: $gitconfig_file"
    
    cat > "$gitconfig_file" <<EOF
[user]
    name = $name
    email = $email
[core]
    sshCommand = ssh -i $key_file -F /dev/null
EOF

    # 3. Add includeIf to global .gitconfig
    echo "Updating global .gitconfig..."
    # Warning: simpler append logic. For robust idempotency we'd need more complex parsing, 
    # but this suffices for a setup script.
    git config --global includeIf."gitdir:$dir_path/".path "$gitconfig_file"
    
    echo -e "${GREEN}✅ Configured $alias!${NC}"
    echo "👉 PUBLIC KEY (Verification):"
    if [ -f "$key_file.pub" ]; then
        cat "$key_file.pub"
    else
        echo "   (Public key not found. If you imported a private key, allow ssh-keygen -y to derive it)"
        ssh-keygen -y -f "$key_file" > "$key_file.pub"
        cat "$key_file.pub"
    fi
    echo ""
}

audit_directory() {
    read -p "Enter directory to scan for Git repos (e.g. ~/WORKSPACE/ODOO/NOVOBI): " scan_dir
    scan_dir="${scan_dir/#\~/$HOME}"
    
    echo "Scanning $scan_dir for repositories..."
    find "$scan_dir" -name ".git" -type d | sort | while read gitdir; do
        repo_dir=$(dirname "$gitdir")
        echo -e "\nChecking: $repo_dir"
        
        local_email=$(git -C "$repo_dir" config --local user.email || true)
        local_name=$(git -C "$repo_dir" config --local user.name || true)
        remote_url=$(git -C "$repo_dir" remote get-url origin || true)
        
        # 1. Local Config Check
        if [[ -n "$local_email" ]]; then
            echo -e "${RED}⚠️  Found local config override:${NC}"
            echo "   User: $local_name <$local_email>"
            echo "   This PREVENTS the global multi-account setup from working."
            read -p "   Do you want to DELETE this local config so it inherits Global Identity? (y/n): " confirm
            if [[ "$confirm" == "y" ]]; then
                git -C "$repo_dir" config --local --unset user.email
                git -C "$repo_dir" config --local --unset user.name
                echo -e "${GREEN}   ✅ Fixed. Now inherits from folder path.${NC}"
            fi
        else
            echo -e "${GREEN}✅ Clean (Inherits global config).${NC}"
        fi

        # 2. Remote URL Check
        if [[ "$remote_url" == https* ]]; then
             echo -e "${YELLOW}⚠️  Remote is HTTPS: $remote_url${NC}"
             echo "   For best results with Multiple Accounts, use SSH."
             read -p "   Do you want to switch to SSH? (git@github.com:User/Repo.git)? (y/n): " switch_ssh
             if [[ "$switch_ssh" == "y" ]]; then
                 new_url=$(echo "$remote_url" | sed -E 's|https://[^@]*@?github.com/|git@github.com:|')
                 git -C "$repo_dir" remote set-url origin "$new_url"
                 echo -e "${GREEN}   ✅ Switched to: $new_url${NC}"
             fi
        elif [[ "$remote_url" != *"git@github.com"* && "$remote_url" == *"git@"* ]]; then
             # Detect Custom Host Aliases (e.g., git@github.com-dbvi:...)
             echo -e "${YELLOW}⚠️  Found Custom Host Alias: $remote_url${NC}"
             echo "   With the new folder-based setup, you DON'T need aliases (github.com-dbvi)."
             echo "   You can switch back to standard 'github.com' and let the folder handle the keys."
             read -p "   Standardize URL to 'git@github.com' (Recommended)? (y/n): " fix_alias
             if [[ "$fix_alias" == "y" ]]; then
                 # Restore standard github.com
                 # Regex: replace the host part between @ and : with github.com
                 new_url=$(echo "$remote_url" | sed -E 's|@[^:]+:|@github.com:|')
                 git -C "$repo_dir" remote set-url origin "$new_url"
                 echo -e "${GREEN}   ✅ Fixed: $new_url${NC}"
             fi
        fi
    done
}

# Menu
echo "1. Setup New Account Identity (Generate OR Import Key)"
echo "2. Audit & Fix Existing Repos (Remove local overrides)"
read -p "Choose an option (1/2): " choice

case $choice in
    1) 
        read -p "Enter alias (e.g. work): " alias
        setup_account "$alias" 
        ;;
    2) audit_directory ;;
    *) echo "Invalid option." ;;
esac
