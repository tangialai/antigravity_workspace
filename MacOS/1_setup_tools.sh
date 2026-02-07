#!/bin/bash

# Automated setup for Essential Tools, iTerm2, Oh My Zsh, and Powerlevel10k
# Designed for professional Odoo developers
# REQURIES: .p10k.zsh file in the same directory as this script.

set -e

# Get the directory where the script is located
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
P10K_SOURCE="$SCRIPT_DIR/.p10k.zsh"
ITERM_PREFS="$SCRIPT_DIR/iterm2_full_prefs.plist"

echo "🚀 Starting Terminal Setup..."
echo "📂 Script running from: $SCRIPT_DIR"

if [ ! -f "$P10K_SOURCE" ]; then
    echo "❌ Error: .p10k.zsh not found in the same directory!"
    echo "   Please make sure '.p10k.zsh' is in '$SCRIPT_DIR'"
    exit 1
fi

# --- 0. Backup existing configuration ---
echo "💾 Backing up current configuration..."
[ -f ~/.zshrc ] && cp ~/.zshrc ~/.zshrc.bak.$(date +%Y%m%d_%H%M%S)
[ -f ~/.p10k.zsh ] && cp ~/.p10k.zsh ~/.p10k.zsh.bak.$(date +%Y%m%d_%H%M%S)

# 0.5 Foundation - Homebrew (Force Check)
if ! command -v brew >/dev/null; then
    if [ -x "/opt/homebrew/bin/brew" ]; then
        eval "$(/opt/homebrew/bin/brew shellenv)"
    else
        echo "🍺 Installing Homebrew..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
        eval "$(/opt/homebrew/bin/brew shellenv)"
    fi
fi

# 1. Basic Tools Installation
echo "📦 Installing Basic Tools..."
brew install --cask iterm2 google-chrome google-drive openkey || true
brew install fzf zoxide bat eza lazygit fd ripgrep tldr || true

# 2. Install Oh My Zsh (if missing)
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "🐚 Installing Oh My Zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

# 3. Download & Install Fonts
echo "🔡 Installing MesloLGS NF Fonts..."
mkdir -p ~/Library/Fonts
fonts=(
    "https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf"
    "https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf"
    "https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf"
    "https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf"
)
for url in "${fonts[@]}"; do
    font_name=$(basename "$url" | sed 's/%20/ /g')
    [ ! -f "$HOME/Library/Fonts/$font_name" ] && curl -L "$url" -o "$HOME/Library/Fonts/$font_name"
done

# Set iTerm2 font preference (Using PlistBuddy for precision)
echo "✍️ Setting iTerm2 default font to MesloLGS NF (size 13)..."
ITERM_PLIST="$HOME/Library/Preferences/com.googlecode.iterm2.plist"

if [ -f "$ITERM_PLIST" ]; then
    # Set Normal Font
    /usr/libexec/PlistBuddy -c "Set :New\ Bookmarks:0:Normal\ Font MesloLGS-NF-Regular 13" "$ITERM_PLIST" 2>/dev/null || \
    /usr/libexec/PlistBuddy -c "Add :New\ Bookmarks:0:Normal\ Font string MesloLGS-NF-Regular 13" "$ITERM_PLIST" 2>/dev/null || true
    
    # Set Non-Ascii Font
    /usr/libexec/PlistBuddy -c "Set :New\ Bookmarks:0:Non\ Ascii\ Font MesloLGS-NF-Regular 13" "$ITERM_PLIST" 2>/dev/null || \
    /usr/libexec/PlistBuddy -c "Add :New\ Bookmarks:0:Non\ Ascii\ Font string MesloLGS-NF-Regular 13" "$ITERM_PLIST" 2>/dev/null || true
    
    # Refresh cache
    defaults read com.googlecode.iterm2 >/dev/null
    echo "   ✅ Font updated in plist."
else
    echo "   ⚠️ iTerm2 plist not found. Please open iTerm2 at least once."
fi


# 4. Install Powerlevel10k Theme
echo "🎨 Installing Powerlevel10k Theme..."
P10K_DIR="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
[ ! -d "$P10K_DIR" ] && git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$P10K_DIR"

# 5. Install Zsh Plugins
echo "🔌 Installing Plugins..."
ZSH_CUSTOM_DIR="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins"
[ ! -d "$ZSH_CUSTOM_DIR/zsh-syntax-highlighting" ] && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$ZSH_CUSTOM_DIR/zsh-syntax-highlighting"
[ ! -d "$ZSH_CUSTOM_DIR/zsh-autosuggestions" ] && git clone https://github.com/zsh-users/zsh-autosuggestions "$ZSH_CUSTOM_DIR/zsh-autosuggestions"
$(brew --prefix)/opt/fzf/install --all --no-bash --no-fish || true

# 6. Copy P10k Configuration
echo "✨ Copying .p10k.zsh to home directory..."
cp "$P10K_SOURCE" ~/.p10k.zsh

# 7. Configure .zshrc
echo "📝 Updating .zshrc..."
# Activate P10k theme
sed -i '' 's/ZSH_THEME="robbyrussell"/ZSH_THEME="powerlevel10k\/powerlevel10k"/' ~/.zshrc
# Activate plugins
if grep -q "plugins=(git)" ~/.zshrc; then
    sed -i '' 's/plugins=(git)/plugins=(git zsh-syntax-highlighting zsh-autosuggestions)/' ~/.zshrc
fi

# Inject custom config block
TEMP_ZSHRC=$(mktemp)
# Remove old block if exists
sed '/# BEGIN_ANTIGRAVITY_CONFIG/,/# END_ANTIGRAVITY_CONFIG/d' ~/.zshrc > "$TEMP_ZSHRC"

cat << 'EOF_CONFIG' >> "$TEMP_ZSHRC"
# BEGIN_ANTIGRAVITY_CONFIG
# --- ODOO DEV ENVIRONMENT ---
alias ll='ls -l'
alias ls='eza --icons --git'
alias cat='bat'

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv >/dev/null; then
  eval "$(pyenv init --path)"
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

# OpenLDAP & Build Flags (CRITICAL for python-ldap/psycopg2 on Apple Silicon)
export PATH="/opt/homebrew/opt/openldap/bin:/opt/homebrew/opt/openldap/sbin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/openldap/lib -L/opt/homebrew/opt/libpq/lib"
export CPPFLAGS="-I/opt/homebrew/opt/openldap/include -I/opt/homebrew/opt/libpq/include"

# Local bin
export PATH="$PATH:$HOME/.local/bin"

# Zoxide
if command -v zoxide >/dev/null; then eval "$(zoxide init zsh)"; fi

# Disable underlining in syntax highlighting
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]='none'
ZSH_HIGHLIGHT_STYLES[path_prefix]='none'
ZSH_HIGHLIGHT_STYLES[path_separator]='none'

# Load Powerlevel10k config
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# END_ANTIGRAVITY_CONFIG
EOF_CONFIG

mv "$TEMP_ZSHRC" ~/.zshrc

echo "----------------------------------------------------------------"
echo "✅ SETUP COMPLETE!"
echo "----------------------------------------------------------------"
echo "1. .p10k.zsh has been restored from source."
echo "2. P10k theme and plugins installed."
echo ""
echo "💡 TO RESTORE ITERM2 COLORS/PRESETS:"
echo "   In iTerm2: Settings > Profiles > Import..."
echo "   Select '$ITERM_PREFS' (if available in the same folder)"
echo "----------------------------------------------------------------"
echo "♻️  Please restart iTerm2 now."
echo "----------------------------------------------------------------"
