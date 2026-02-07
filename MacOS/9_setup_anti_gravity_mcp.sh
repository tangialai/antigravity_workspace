#!/bin/bash

# 9_setup_anti_gravity_mcp.sh
# ----------------------------------------------------------------
# Setup Antigravity with NotebookLM (MCP + Gemini CLI)
# ----------------------------------------------------------------

set -e

echo "================================================================"
echo "🚀 SETUP ANTIGRAVITY MCP (NotebookLM + Gemini)"
echo "================================================================"

# 1. Install uv (if not installed)
if ! command -v uv &> /dev/null; then
    echo "Installing uv..."
    pip install uv
    # Ensure uv is in path if installed via pip
    export PATH="$PATH:$(python3 -m site --user-base)/bin"
else
    echo "✅ uv is already installed."
fi

# 2. Install notebooklm-mcp-cli via uv
echo "Installing notebooklm-mcp-cli..."
# Check if already installed to avoid reinstalling unnecessarily, or force update
if uv tool list | grep -q "notebooklm-mcp-cli"; then
    echo "Updating notebooklm-mcp-cli..."
    uv tool upgrade notebooklm-mcp-cli
else
    uv tool install notebooklm-mcp-cli
fi

# 3. Install Node.js (via Homebrew)
if ! command -v node &> /dev/null; then
    echo "Installing Node.js..."
    brew install node
else
    echo "✅ Node.js is already installed."
fi

# 4. Install Google Gemini CLI via npm
echo "Installing @google/gemini-cli..."
npm install -g @google/gemini-cli

# 5. Configure Gemini MCP
echo "Configuring Gemini MCP..."
if command -v gemini &> /dev/null; then
    gemini mcp add notebooklm notebooklm-mcp
else
    echo "⚠️  Warning: Gemini CLI command found but arguably not in PATH correctly or installation failed."
fi

echo "================================================================"
echo "✅ ANTIGRAVITY MCP SETUP COMPLETE"
echo "👉 Run 'notebooklm-mcp-auth' to login if you haven't already."
echo "================================================================"
