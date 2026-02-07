# 🚨 Troubleshooting Guide

Common issues and solutions for git templates and code quality automation.

---

## 🔍 Quick Diagnostics

Run the verification script first:

```bash
cd ~/WORKSPACE/.git-templates/scripts
./verify-setup.sh
```

This will identify most issues automatically.

---

## ❌ Hook Not Running

### Symptom

Commit succeeds without seeing hook output (emoji, checks)

### Diagnosis

```bash
# Check if hook exists
ls -la /path/to/repo/.git/hooks/pre-commit

# Check if executable
file .git/hooks/pre-commit
```

### Solutions

**1. Hook doesn't exist:**

```bash
cd /path/to/repo
git init  # Re-init to copy from template
```

**2. Not executable:**

```bash
chmod +x .git/hooks/pre-commit
```

**3. Template not configured:**

```bash
git config --global init.templateDir ~/WORKSPACE/.git-templates
```

**4. Wrong template path:**

```bash
# Check current setting
git config --global init.templateDir

# Fix if wrong
git config --global init.templateDir ~/WORKSPACE/.git-templates
```

---

## ❌ autopep8 Command Not Found

### Symptom

```
🐍 Running autopep8 on Python files...
bash: autopep8: command not found
```

### Diagnosis

```bash
which autopep8
# If empty, not installed
```

### Solutions

**Install globally:**

```bash
pip install autopep8
```

**Or install in venv:**

```bash
# Activate your venv first
source venv/bin/activate
pip install autopep8
```

**Verify:**

```bash
autopep8 --version
```

---

## ❌ pycodestyle Command Not Found

### Symptom

```
✅ Checking PEP 8 compliance...
bash: pycodestyle: command not found
```

### Solution

```bash
pip install pycodestyle
```

Note: Usually installed automatically with autopep8

---

## ❌ Hook Runs But Doesn't Fix Code

### Symptom

Commit succeeds with violations message but files not fixed

### Causes

**1. Files not staged:**

```bash
# Wrong
git commit -m "message"

# Correct
git add .
git commit -m "message"
```

**2. autopep8 fails silently:**

```bash
# Test manually
autopep8 --in-place --aggressive file.py
echo $?  # Should be 0
```

**3. Syntax errors in Python file:**

```bash
# autopep8 skips files with syntax errors
python file.py  # Check for syntax errors
```

---

## ❌ "Permission Denied" Error

### Symptom

```
bash: .git/hooks/pre-commit: Permission denied
```

### Solution

```bash
chmod +x .git/hooks/pre-commit

# Or fix all hooks
chmod +x .git/hooks/*
```

---

## ❌ Changes Not Committed

### Symptom

Hook fixes files but changes not in commit

### Cause

Hook fixes files but doesn't re-stage them

### Check Hook Script

Should have:

```bash
autopep8 --in-place ...
git add $PY_FILES  # ← Must re-stage!
```

---

## ❌ Template Directory Not Found

### Symptom

```
fatal: unable to access '~/WORKSPACE/.git-templates': No such file or directory
```

### Diagnosis

```bash
ls -la ~/WORKSPACE/.git-templates
```

### Solutions

**1. Directory missing:**

```bash
# Re-create structure
mkdir -p ~/WORKSPACE/.git-templates/hooks
```

**2. Wrong path in config:**

```bash
# Check
git config --global init.templateDir

# Fix - use full path, not ~
git config --global init.templateDir /Users/$(whoami)/WORKSPACE/.git-templates
```

---

## ❌ Hook Runs on Non-Python Files

### Symptom

Hook errors on XML, JS files

### Check Hook Logic

Should filter by extension:

```bash
PY_FILES=$(git diff --cached --name-only | grep '\.py$')
if [ -n "$PY_FILES" ]; then
    # Only runs if Python files exist
    autopep8 ...
fi
```

---

## ❌ Line Length Violations

### Symptom

```
E501 line too long (125 > 120 characters)
```

### Solutions

**1. Ignore in hook:**

```bash
pycodestyle --ignore=E501 ...
```

**2. Increase limit:**

```bash
autopep8 --max-line-length=150 ...
pycodestyle --max-line-length=150 ...
```

**3. Fix manually:**

```python
# Break long lines
result = some_function(
    arg1,
    arg2,
    very_long_argument_name
)
```

---

## ❌ Import Order Issues

### Symptom

Imports keep getting re-arranged

### Cause

VS Code "Organize Imports" + autopep8 conflict

### Solution

Choose one approach:

**Option 1: Use isort (recommended):**

```bash
pip install isort
```

Add to hook:

```bash
isort --profile=black $PY_FILES
```

**Option 2: Disable VS Code organize imports:**

```json
{
  "editor.codeActionsOnSave": {
    "source.organizeImports": "never"
  }
}
```

---

## ❌ Hook Blocks Valid Commits

### Symptom

Hook rejects commits that should be allowed

### Temporary Bypass

```bash
git commit --no-verify -m "message"
```

### Permanent Fix

**Option 1: Adjust pycodestyle rules:**

```bash
pycodestyle --ignore=E501,W503,E402 ...
```

**Option 2: Add .pycodestyle config:**

Create `~/.config/pycodestyle` or `setup.cfg`:

```ini
[pycodestyle]
max-line-length = 120
ignore = E501,W503
```

---

## ❌ Slow Hook Performance

### Symptom

Hook takes 10+ seconds to run

### Diagnosis

```bash
time .git/hooks/pre-commit
```

### Solutions

**1. Limit files checked:**

```bash
# Only check staged files, not all files
git diff --cached --name-only | grep '\.py$'
```

**2. Skip aggressive:**

```bash
# Remove --aggressive --aggressive
autopep8 --in-place --max-line-length=120 ...
```

**3. Parallel processing:**

```bash
autopep8 --jobs=4 ...
```

---

## ❌ VS Code Format on Save Not Working

### Diagnosis

Check settings:

```bash
code ~/Library/Application\ Support/Antigravity/User/settings.json
```

### Verify

1. **Format on save enabled:**

   ```json
   "editor.formatOnSave": true
   ```

2. **Python formatter selected:**

   ```json
   "[python]": {
     "editor.defaultFormatter": "ms-python.python"
   }
   ```

3. **autopep8 is provider:**
   ```json
   "python.formatting.provider": "autopep8"
   ```

### Test

1. Open Python file
2. Add spacing violations
3. Save (Cmd/Ctrl + S)
4. Should auto-fix

---

## ❌ Template Changes Not Applied

### Symptom

Modified hooks in template but repos don't have changes

### Cause

Repos have **copies**, not symlinks

### Solution

```bash
cd ~/WORKSPACE/.git-templates/scripts
./apply-to-all-repos.sh
```

This re-copies hooks to all repos.

---

## ❌ New Repos Don't Get Hooks

### Diagnosis

```bash
git config --global init.templateDir
# Should output path to template
```

### Solutions

**1. Config not set:**

```bash
git config --global init.templateDir ~/WORKSPACE/.git-templates
```

**2. Wrong path:**

```bash
# Use absolute path
git config --global init.templateDir /Users/$(whoami)/WORKSPACE/.git-templates
```

**3. Verify with new repo:**

```bash
mkdir /tmp/test
cd /tmp/test
git init
ls -la .git/hooks/pre-commit  # Should exist
```

---

## 🔧 Reset Everything

If all else fails, start fresh:

```bash
# 1. Remove old config
git config --global --unset init.templateDir

# 2. Reinstall Python tools
pip uninstall autopep8 pycodestyle
pip install autopep8 pycodestyle

# 3. Reconfigure
git config --global init.templateDir ~/WORKSPACE/.git-templates

# 4. Re-apply to all repos
cd ~/WORKSPACE/.git-templates/scripts
./apply-to-all-repos.sh

# 5. Verify
./verify-setup.sh
```

---

## 📞 Still Having Issues?

### Check Logs

**Git hook errors:**

```bash
# Hooks write to stderr
git commit 2>&1 | tee commit.log
```

**autopep8 errors:**

```bash
autopep8 --verbose --in-place file.py
```

**pycodestyle details:**

```bash
pycodestyle --show-source --show-pep8 file.py
```

### Manual Testing

Test hook manually:

```bash
cd /path/to/repo

# Manually run hook
bash -x .git/hooks/pre-commit
# -x shows each command executed
```

### Last Resort

Disable hooks temporarily:

```bash
# Move hook out of the way
mv .git/hooks/pre-commit .git/hooks/pre-commit.disabled

# Commit normally
git commit -m "message"

# Re-enable
mv .git/hooks/pre-commit.disabled .git/hooks/pre-commit
```

---

## ✅ Prevention

Avoid issues by:

1. **Run verify script after setup**
2. **Test with new repo before deploying to team**
3. **Keep Python tools updated**: `pip install --upgrade autopep8 pycodestyle`
4. **Document team-specific customizations**
5. **Version control your templates**

---

**Most issues have simple fixes!** 🛠️
