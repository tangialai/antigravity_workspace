# MacOS Pro Setup Guide (Odoo Edition)

This document is the unified guide for setting up a fresh MacBook for professional Odoo Development. The entire process has been automated via the included scripts.

---

## 🏗️ System Overview

The setup toolkit consists of the following components:

1.  **`0_master_setup.sh`**: The orchestrator script - Run this ONCE to install everything.
2.  **`1_setup_tools.sh`**: Essential tools (Brew, Chrome, Drive, OpenKey) and Professional Terminal setup.
3.  **`2_setup_antigravity_odoo.sh`**: The core for Odoo (Odoo libs, Postgres, Docker, IDE).
4.  **`3_setup_ai.sh`**: AI Toolkit (ChatGPT, Perplexity, Gemini, Notion).
5.  **`4_setup_social.sh`**: Communication apps (Zalo, Telegram, Viber...).
6.  **`5_setup_vpn.sh`**: Network tools (Pritunl).
7.  **`6_setup_git_multiaccount.sh`**: Multi-GitHub account manager.
8.  **`7_migrate_backup.sh`** & **`8_migrate_restore.sh`**: Workspace Migration tools.
9.  **`9_setup_anti_gravity_mcp.sh`**: Antigravity MCP (NotebookLM + Gemini).
10. **`0_backup_old_macos.sh`**: **[OLD MAC]** Backup Keys, Configs, Apps.
11. **`0_restore_backup_on_new_mac.sh`**: **[NEW MAC]** Restore everything from script #10.
12. **`10_setup_pycharm.sh`**: Installs PyCharm and Odoo plugins.

---

## 🚀 INSTALLATION PROCESS (Fresh Machine)

### Step 0: Preparation

After activating the new Mac and logging into iCloud, download this script folder (or clone the repository).

### Step 1: Run Master Setup (The Big Red Button)

This is the only step you need to perform. It automates **Homebrew, Chrome, Drive, OpenKey**, Terminal, and Odoo setup.

```bash
# 1. Open Terminal and navigate to the script folder
cd [path-to-script-folder]

# 2. Run the master script
bash 0_master_setup.sh
```

---

## 📂 Component Details

### 1. Essential Tools & Terminal (`1_setup_tools.sh`)

- **Function**:
  - Installs **Homebrew**, **Google Chrome**, **Google Drive**, **OpenKey**.
  - Configures **iTerm2**, MesloLGS NF Font, Powerlevel10k theme.
- **Result**: Basic work apps and a pro Terminal with path underlining disabled.

### 2. Odoo Development Kit (`2_setup_antigravity_odoo.sh`)

- **Function**:
  - Installs **Postgres 14**, creates `postgres` user/service.
  - Installs **Docker Desktop**.
  - Installs **Antigravity IDE** (VS Code configured).
  - Installs **15+ Odoo Extensions** (Snippets, etc.).
  - Merges **Settings** (Format on Save, 120 chars, etc.).

### 3. AI Arsenal (`3_setup_ai.sh`)

- **Function**: Installs ChatGPT, Perplexity, Notion.
- **Note**: Creates shortcuts for Google Gemini and NotebookLM (Web versions).

### 4. Communication (`4_setup_social.sh`)

- **Function**: Installs Zalo, Telegram, WhatsApp, Messenger, Viber.

### 5. Multi-GitHub Accounts (`6_setup_git_multiaccount.sh`)

- **Situation**: You have Personal, Company, and Client GitHub accounts.
- **Solution**: Defines specific folders (e.g. `~/WORKSPACE/ClientA`) that automatically use a specific SSH Key and Email.
- **Usage**: Run the script. Choose Option 1 to setup, Option 2 to **Audit & Fix** existing repos (removes local config conflicts).
- **Detail**: Read `Git_Multi_Account_Guide.md` for the full strategy.

### 6. Antigravity MCP (`9_setup_anti_gravity_mcp.sh`)

- **Function**:
  - Installs **uv** and **notebooklm-mcp-cli**.
  - Installs **Node.js** and **Gemini CLI**.
  - Connects Gemini to your NotebookLM knowledge base.

### 7. PyCharm Odoo Suite (`10_setup_pycharm.sh`)

- **Function**:
  - Installs **PyCharm** (Community or Professional).
  - Installs **Odoo Plugin** (`dev.ngocta.pycharm-odoo`), **CSV Editor**, and **.ignore** support.

### 8. Clean Workflow Tools (`11_setup_clean_login.sh` & `12_setup_clean_logout.sh`)

- **Clean Login (`11_setup_clean_login.sh`)**:
  - Creates `CleanDesktop.app`. Runs at login. Hides app windows after 20s.
  - _Use this if you shut down via Apple Menu._

- **Clean Logout (`12_setup_clean_logout.sh`)** (Recommended):
  - Creates `Clean Logout.app` in `~/Applications`.
  - **Usage**: Click this App to stop working. It hides all apps THEN logs you out.
  - **Result**: When you return, apps open in the background (hidden), keeping your desktop simple.

---

## 🔄 DATA SYNCHRONIZATION

1.  **Code (WORKSPACE)**: Always use **Git**.
2.  **AI & Settings**: Use `migrate_backup.sh` and `migrate_restore.sh` to sync specific configurations if needed beyond Git.

---

## 🐍 Python Configuration (Manual Step)

Due to `pyenv` specifics:

```bash
# Install Python 3.12 (Best for Odoo)
pyenv install 3.12.3
pyenv global 3.12.3

# Install global tools
pip install --upgrade pip setuptools wheel
```

---

## 🏆 Final Note

This setup is designed to save you from spending a whole day configuring your machine. Everything is packaged and tested.
**This folder is the Source of Truth for macOS configuration.** Update this guide if you add new configurations.
