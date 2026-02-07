#!/usr/bin/env bash
# Verify git templates setup

echo "🔍 Verifying Git Templates Setup..."
echo ""

ERRORS=0
WARNINGS=0

# Check git config
echo "📋 Checking Git Configuration..."
TEMPLATE_DIR=$(git config --global init.templateDir)
if [ -z "$TEMPLATE_DIR" ]; then
    echo "   ❌ init.templateDir not set"
    echo "      Fix: git config --global init.templateDir ~/WORKSPACE/.git-templates"
    ((ERRORS++))
else
    echo "   ✅ init.templateDir = $TEMPLATE_DIR"

    # Check if path exists
    if [ ! -d "$TEMPLATE_DIR" ]; then
        echo "   ❌ Template directory does not exist: $TEMPLATE_DIR"
        ((ERRORS++))
    fi
fi
echo ""

# Check template directory structure
echo "📂 Checking Template Directory..."
EXPECTED_DIR="$HOME/WORKSPACE/.git-templates"

if [ ! -d "$EXPECTED_DIR" ]; then
    echo "   ❌ Directory not found: $EXPECTED_DIR"
    ((ERRORS++))
else
    echo "   ✅ Directory exists: $EXPECTED_DIR"

    # Check hooks directory
    if [ ! -d "$EXPECTED_DIR/hooks" ]; then
        echo "   ❌ hooks/ directory missing"
        ((ERRORS++))
    else
        echo "   ✅ hooks/ directory exists"
    fi

    # Check pre-commit hook
    if [ ! -f "$EXPECTED_DIR/hooks/pre-commit" ]; then
        echo "   ❌ pre-commit hook missing"
        ((ERRORS++))
    else
        echo "   ✅ pre-commit hook exists"

        # Check if executable
        if [ ! -x "$EXPECTED_DIR/hooks/pre-commit" ]; then
            echo "   ⚠️  pre-commit hook not executable"
            echo "      Fix: chmod +x $EXPECTED_DIR/hooks/pre-commit"
            ((WARNINGS++))
        else
            echo "   ✅ pre-commit hook is executable"
        fi
    fi

    # Check scripts directory
    if [ ! -d "$EXPECTED_DIR/scripts" ]; then
        echo "   ⚠️  scripts/ directory missing"
        ((WARNINGS++))
    else
        echo "   ✅ scripts/ directory exists"
    fi

    # Check docs directory
    if [ ! -d "$EXPECTED_DIR/docs" ]; then
        echo "   ⚠️  docs/ directory missing"
        ((WARNINGS++))
    else
        echo "   ✅ docs/ directory exists"
    fi
fi
echo ""

# Check Python tools
echo "🐍 Checking Python Tools..."

if command -v autopep8 &> /dev/null; then
    VERSION=$(autopep8 --version)
    echo "   ✅ autopep8 installed: $VERSION"
else
    echo "   ❌ autopep8 not found"
    echo "      Fix: pip install autopep8"
    ((ERRORS++))
fi

if command -v pycodestyle &> /dev/null; then
    VERSION=$(pycodestyle --version)
    echo "   ✅ pycodestyle installed: $VERSION"
else
    echo "   ❌ pycodestyle not found"
    echo "      Fix: pip install pycodestyle"
    ((ERRORS++))
fi
echo ""

# Test with sample repo
echo "🧪 Testing with Sample Repository..."
TEST_DIR="/tmp/git-template-test-$$"
mkdir -p "$TEST_DIR"
cd "$TEST_DIR"

git init > /dev/null 2>&1

if [ -f ".git/hooks/pre-commit" ]; then
    echo "   ✅ Hooks copied to new repo"

    if [ -x ".git/hooks/pre-commit" ]; then
        echo "   ✅ Hook is executable in new repo"
    else
        echo "   ⚠️  Hook not executable in new repo"
        ((WARNINGS++))
    fi
else
    echo "   ❌ Hooks NOT copied to new repo"
    echo "      This means template is not applying correctly"
    ((ERRORS++))
fi

# Clean up test repo
cd /
rm -rf "$TEST_DIR"
echo ""

# Summary
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📊 Verification Summary"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

if [ $ERRORS -eq 0 ] && [ $WARNINGS -eq 0 ]; then
    echo "✅ All checks passed!"
    echo ""
    echo "Your git templates setup is perfect! 🎉"
    echo ""
    echo "Next steps:"
    echo "  1. Create a new repo: git init my-project"
    echo "  2. Hooks will be automatically applied"
    echo "  3. Commits will auto-check code quality"
    exit 0
elif [ $ERRORS -eq 0 ]; then
    echo "⚠️  Setup complete with $WARNINGS warning(s)"
    echo ""
    echo "Everything works, but some optional features missing."
    echo "Check warnings above for details."
    exit 0
else
    echo "❌ Found $ERRORS error(s) and $WARNINGS warning(s)"
    echo ""
    echo "Please fix the errors above before proceeding."
    echo ""
    echo "Need help? See:"
    echo "  - Setup Guide: docs/setup-guide.md"
    echo "  - Troubleshooting: docs/troubleshooting.md"
    exit 1
fi
