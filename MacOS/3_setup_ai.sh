#!/bin/bash

# setup_ai.sh
# Automated setup for AI & Productivity Tools on macOS
# Apps: ChatGPT, Perplexity, Notion, Gemini, NotebookLM, Goodnotes

set -e

echo "🚀 Starting AI Tools Setup..."

# Check if Homebrew is installed
if ! command -v brew >/dev/null 2>&1; then
    echo "❌ Homebrew not found. Please run setup_antigravity.sh or setup_iterm2.sh first."
    exit 1
fi

echo "🧠 Installing AI & Productivity Apps..."

# 1. Install Native Apps
apps=(
    "chatgpt"
    "perplexity"
    "notion"
)

for app in "${apps[@]}"; do
    if brew list --cask "$app" >/dev/null 2>&1; then
        echo "✅ $app is already installed."
    else
        echo "⬇️  Installing $app..."
        brew install --cask "$app" || echo "⚠️  Failed to install $app"
    fi
done

# 2. Create Shortcuts for Web Apps (Gemini, NotebookLM, Goodnotes)
echo "🌐 Creating Web Shortcuts on Desktop..."

create_webloc() {
    local name="$1"
    local url="$2"
    local path="$HOME/Desktop/$name.webloc"
    
    echo "<?xml version=\"1.0\" encoding=\"UTF-8\"?>
<!DOCTYPE plist PUBLIC \"-//Apple//DTD PLIST 1.0//EN\" \"http://www.apple.com/DTDs/PropertyList-1.0.dtd\">
<plist version=\"1.0\">
<dict>
    <key>URL</key>
    <string>$url</string>
</dict>
</plist>" > "$path"
    echo "✅ Created shortcut: $name"
}

create_webloc "Gemini AI" "https://gemini.google.com"
create_webloc "NotebookLM" "https://notebooklm.google.com"

# Goodnotes (App Store Only)
echo "📝 Goodnotes is not available via Homebrew (App Store only)."
echo "   Creating a shortcut to the App Store page..."
create_webloc "Get Goodnotes" "https://apps.apple.com/us/app/goodnotes-6/id1444383602"

echo "----------------------------------------------------------------"
echo "✅ AI SET UP COMPLETE!"
echo "----------------------------------------------------------------"
echo "🎉 Installed Apps: ChatGPT, Perplexity, Notion"
echo "🔗 Created Shortcuts (on Desktop): Gemini AI, NotebookLM, Goodnotes"
echo "----------------------------------------------------------------"
