#!/usr/bin/env bash
# Apply global git hooks to all existing repositories

WORKSPACE_DIR="$HOME/WORKSPACE"
TEMPLATE_DIR="$WORKSPACE_DIR/.git-templates"

echo "🔧 Applying global git hooks to all repos in $WORKSPACE_DIR..."
echo "📂 Using template: $TEMPLATE_DIR"
echo ""

# Verify template exists
if [ ! -d "$TEMPLATE_DIR/hooks" ]; then
    echo "❌ Error: Template directory not found at $TEMPLATE_DIR"
    echo "   Please ensure .git-templates/hooks exists in WORKSPACE"
    exit 1
fi

# Find all git repositories
find "$WORKSPACE_DIR" -name ".git" -type d -prune 2>/dev/null | while read gitdir; do
    repo_dir=$(dirname "$gitdir")
    repo_name=$(basename "$repo_dir")

    # Skip the .git-templates directory itself
    if [[ "$repo_dir" == *".git-templates"* ]]; then
        continue
    fi

    echo "📁 Processing: $repo_name"
    cd "$repo_dir"

    # Re-init to copy hooks from template
    git init > /dev/null 2>&1

    echo "   ✅ Hooks applied"
done

echo ""
echo "✅ Done! All repositories now have the global pre-commit hook."
echo ""
echo "Git global config:"
git config --global init.templateDir
echo ""
echo "To verify in any repo:"
echo "  ls -la .git/hooks/pre-commit"
