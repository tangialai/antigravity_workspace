#!/bin/bash

# setup_social.sh
# Automated setup for Social & Communication Apps on macOS
# Apps: Zalo, Telegram, WhatsApp, Messenger

set -e

echo "🚀 Starting Social Apps Setup..."

# Check if Homebrew is installed
if ! command -v brew >/dev/null 2>&1; then
    echo "❌ Homebrew not found. Please run setup_antigravity.sh or setup_iterm2.sh first."
    exit 1
fi

echo "💬 Installing Communication Apps..."

# List of apps to install
apps=(
    "zalo"
    "telegram"
    "whatsapp"
    "messenger"
    "viber"
)

for app in "${apps[@]}"; do
    if brew list --cask "$app" >/dev/null 2>&1; then
        echo "✅ $app is already installed."
    else
        echo "⬇️  Installing $app..."
        brew install --cask "$app" || echo "⚠️  Failed to install $app"
    fi
done

echo "----------------------------------------------------------------"
echo "✅ SOCIAL APPS SETUP COMPLETE!"
echo "----------------------------------------------------------------"
echo "🎉 Installed: ${apps[*]}"
echo "----------------------------------------------------------------"
