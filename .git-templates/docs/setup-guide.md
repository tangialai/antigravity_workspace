# 🚀 Setup Guide - Git Templates & Code Quality Automation

Complete step-by-step guide to setup global git hooks and auto code quality checks.

---

## 📋 Prerequisites

- Git installed
- Python 3.6+
- pip (Python package manager)
- VS Code (optional, for editor integration)

---

## 🔧 Installation

### Step 1: Install Python Tools

```bash
pip install autopep8 pycodestyle
```

Verify installation:

```bash
autopep8 --version
pycodestyle --version
```

### Step 2: Configure Git

```bash
git config --global init.templateDir ~/WORKSPACE/.git-templates
```

Verify:

```bash
git config --global init.templateDir
# Should output: /Users/yourusername/WORKSPACE/.git-templates
```

### Step 3: Apply to Existing Repos

```bash
cd ~/WORKSPACE/.git-templates/scripts
./apply-to-all-repos.sh
```

Output should show:

```
✅ Hooks applied to: repo1
✅ Hooks applied to: repo2
...
```

### Step 4: Verify Setup

```bash
./verify-setup.sh
```

---

## 🎨 VS Code Integration (Optional)

### Add to Global Settings

File: `~/Library/Application Support/Antigravity/User/settings.json`

```json
{
  "editor.formatOnSave": true,
  "files.insertFinalNewline": true,
  "files.trimFinalNewlines": true,

  "[python]": {
    "editor.defaultFormatter": "ms-python.python",
    "editor.formatOnSave": true,
    "editor.codeActionsOnSave": {
      "source.organizeImports": "explicit"
    }
  },

  "python.formatting.provider": "autopep8",
  "python.formatting.autopep8Args": [
    "--max-line-length=120",
    "--aggressive",
    "--aggressive"
  ],

  "python.linting.pylintEnabled": true,
  "python.linting.pylintArgs": [
    "--max-line-length=120",
    "--disable=C0111,C0103,R0903"
  ]
}
```

---

## 📁 EditorConfig (Per-project)

Create `.editorconfig` in project root:

```ini
# EditorConfig is awesome: https://EditorConfig.org

root = true

[*]
charset = utf-8
end_of_line = lf
insert_final_newline = true
trim_trailing_whitespace = true

[*.py]
indent_style = space
indent_size = 4
max_line_length = 120

[*.{xml,html}]
indent_style = space
indent_size = 4

[*.{js,json}]
indent_style = space
indent_size = 2
```

---

## ✅ Testing

### Test 1: Create New Repo

```bash
cd ~/WORKSPACE
mkdir test-repo
cd test-repo
git init

# Check hook exists
ls -la .git/hooks/pre-commit
# Should show: -rwxr-xr-x ... pre-commit
```

### Test 2: Test Pre-commit Hook

Create a Python file with PEP 8 violations:

```bash
cat > test.py << 'EOF'
from odoo import models,fields

class Test(models.Model):
    _name='test'
EOF
```

Commit it:

```bash
git add .
git commit -m "test"
```

Should see:

```
🔍 Running pre-commit checks...
📝 Checking POSIX compliance (final newline)...
🐍 Running autopep8 on Python files...
✅ Checking PEP 8 compliance...
✅ All checks passed!
```

Check file was fixed:

```bash
cat test.py
# Should have proper spacing and formatting
```

Clean up:

```bash
cd ~/WORKSPACE
rm -rf test-repo
```

### Test 3: VS Code Format on Save

1. Open any Python file in VS Code
2. Make PEP 8 violations (remove spaces, etc.)
3. Save file (Cmd/Ctrl + S)
4. File should auto-format

---

## 🔄 Updating Hooks

### Modify Pre-commit Hook

```bash
cd ~/WORKSPACE/.git-templates
vim hooks/pre-commit
```

### Re-apply to All Repos

```bash
cd scripts
./apply-to-all-repos.sh
```

---

## 🌍 Team Setup

### Option 1: Git Repository (Recommended)

**Setup once:**

```bash
cd ~/WORKSPACE/.git-templates
git init
git add .
git commit -m "Initial git templates"
git remote add origin https://github.com/yourteam/git-templates.git
git push -u origin main
```

**Team members:**

```bash
cd ~/WORKSPACE
git clone https://github.com/yourteam/git-templates.git .git-templates
cd .git-templates/scripts
./apply-to-all-repos.sh
```

### Option 2: Manual Share

Share via cloud storage (Dropbox, Google Drive, etc.):

1. Zip the `.git-templates/` folder
2. Share with team
3. Team extracts to `~/WORKSPACE/.git-templates`
4. Team runs setup scripts

---

## 🎯 Customization

### Line Length

Edit multiple files:

**1. VS Code settings.json:**

```json
"python.formatting.autopep8Args": [
  "--max-line-length=88"  // Black standard
]
```

**2. Pre-commit hook:**

```bash
autopep8 --max-line-length=88 ...
pycodestyle --max-line-length=88 ...
```

**3. EditorConfig:**

```ini
[*.py]
max_line_length = 88
```

### Ignore Specific Rules

**In pre-commit hook:**

```bash
pycodestyle --ignore=E501,W503 ...
```

**In Pylint:**

```json
"python.linting.pylintArgs": [
  "--disable=C0111,C0103,R0903,E501"
]
```

### Add More File Types

**In pre-commit hook:**

```bash
# Add JavaScript check
JS_FILES=$(git diff --cached --name-only --diff-filter=ACM | grep '\.js$')
if [ -n "$JS_FILES" ]; then
    eslint $JS_FILES
fi
```

---

## 📊 What Gets Checked

### Python Files (.py)

- ✅ Indentation (4 spaces)
- ✅ Blank lines (2 before class/function)
- ✅ Whitespace (around operators)
- ✅ Import ordering (alphabetical)
- ✅ Line length (120 chars default)
- ✅ Final newline (POSIX)

### All Files

- ✅ Final newline exists
- ✅ No trailing whitespace (via EditorConfig)
- ✅ UTF-8 encoding (via EditorConfig)

---

## 🚨 Troubleshooting

See [troubleshooting.md](troubleshooting.md) for common issues.

Quick fixes:

### Hook not running?

```bash
git config --global init.templateDir
# Should output: ~/WORKSPACE/.git-templates

cd /path/to/repo
git init  # Re-init to copy hooks
```

### autopep8 not found?

```bash
which autopep8
# If empty:
pip install autopep8
```

### Permission denied?

```bash
chmod +x ~/.git-templates/hooks/pre-commit
cd ~/WORKSPACE/.git-templates/scripts
./apply-to-all-repos.sh
```

---

## ✅ Verification Checklist

- [ ] Python tools installed (`autopep8`, `pycodestyle`)
- [ ] Git global config set
- [ ] Existing repos updated
- [ ] Test repo created and hook ran
- [ ] VS Code format on save works
- [ ] EditorConfig created in projects

Run verification script:

```bash
cd ~/WORKSPACE/.git-templates/scripts
./verify-setup.sh
```

---

## 🎉 Done!

You now have:

- ✅ Auto PEP 8 formatting
- ✅ Auto POSIX compliance
- ✅ Pre-commit hooks for all repos
- ✅ VS Code integration
- ✅ Team-ready setup

**Code quality on autopilot!** 🚀
