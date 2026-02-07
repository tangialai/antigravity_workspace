#!/bin/bash

# setup_vpn.sh
# Automated setup for VPN Client (Pritunl) on macOS

set -e

echo "🚀 Starting VPN Setup..."

# Check if Homebrew is installed
if ! command -v brew >/dev/null 2>&1; then
    echo "❌ Homebrew not found. Please run setup_antigravity.sh or setup_iterm2.sh first."
    exit 1
fi

echo "🌐 Installing Pritunl (VPN Client)..."

if brew list --cask pritunl >/dev/null 2>&1; then
    echo "✅ Pritunl is already installed."
else
    echo "⬇️  Installing Pritunl..."
    brew install --cask pritunl || echo "⚠️  Failed to install Pritunl"
fi

echo "----------------------------------------------------------------"
echo "✅ VPN SETUP COMPLETE!"
echo "----------------------------------------------------------------"
echo "🎉 Installed: Pritunl (OpenVPN Compatible)"
echo "----------------------------------------------------------------"
