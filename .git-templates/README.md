# 📚 Git Templates Documentation

Complete guide for global git hooks and code quality automation.

---

## 📂 Structure

```
.git-templates/
├── README.md                    ← This file
├── docs/
│   ├── setup-guide.md          ← Setup instructions
│   ├── how-it-works.md         ← Architecture explanation
│   └── troubleshooting.md      ← Common issues
├── scripts/
│   ├── apply-to-all-repos.sh   ← Apply hooks to existing repos
│   └── verify-setup.sh         ← Verify everything works
└── hooks/
    └── pre-commit              ← Master pre-commit hook
```

---

## 🚀 Quick Start

### First Time Setup

```bash
# 1. Configure git to use this template
git config --global init.templateDir ~/WORKSPACE/.git-templates

# 2. Apply to all existing repos
cd ~/WORKSPACE/.git-templates/scripts
./apply-to-all-repos.sh

# 3. Verify setup
./verify-setup.sh
```

### Using with New Repos

```bash
# Create new repo
git init my-project
# → Hooks automatically copied! ✅

# Clone existing repo
git clone https://github.com/example/repo.git
# → Hooks automatically copied! ✅
```

---

## 📋 What's Included

### Hooks

- **pre-commit**: Auto-check and fix code before commit
  - ✅ POSIX compliance (final newline)
  - ✅ PEP 8 auto-fix with autopep8
  - ✅ PEP 8 validation with pycodestyle
  - ✅ Supports Python, XML, JS, etc.

### Scripts

- **apply-to-all-repos.sh**: Apply hooks to all existing repos in WORKSPACE
- **verify-setup.sh**: Check if everything is configured correctly

### Documentation

- **setup-guide.md**: Step-by-step setup instructions
- **how-it-works.md**: Technical architecture explanation
- **troubleshooting.md**: Solutions to common problems

---

## 🎯 Requirements

### Python Tools (Required)

```bash
pip install autopep8 pycodestyle
```

### VS Code Settings (Optional but Recommended)

See `docs/setup-guide.md` for VS Code integration.

---

## 🔧 Customization

### Modify Pre-commit Hook

1. Edit `hooks/pre-commit`
2. Run `scripts/apply-to-all-repos.sh` to update all repos

### Add More Hooks

- `pre-push`: Run before push
- `commit-msg`: Validate commit messages
- `post-commit`: Run after commit

Place in `hooks/` folder and they'll auto-apply to new repos.

---

## 🌍 Version Control

This folder can be version controlled:

```bash
cd ~/WORKSPACE
git init .git-templates
cd .git-templates
git add .
git commit -m "Initial git templates setup"

# Optional: Push to remote for team sharing
git remote add origin https://github.com/yourteam/git-templates.git
git push -u origin main
```

---

## 📖 Documentation

- [Setup Guide](docs/setup-guide.md) - Complete setup instructions
- [How It Works](docs/how-it-works.md) - Architecture & workflow
- [Troubleshooting](docs/troubleshooting.md) - Common issues & solutions

---

## ✅ Verification

Run the verification script:

```bash
cd ~/WORKSPACE/.git-templates/scripts
./verify-setup.sh
```

Expected output:

```
✅ Git config correct
✅ Template directory exists
✅ Pre-commit hook exists
✅ autopep8 installed
✅ pycodestyle installed
✅ All checks passed!
```

---

## 🤝 Team Sharing

Share with your team:

1. **Via Git** (Recommended):

   ```bash
   git clone https://github.com/yourteam/git-templates.git ~/.git-templates
   git config --global init.templateDir ~/WORKSPACE/.git-templates
   ```

2. **Via Copy**:
   ```bash
   cp -r /path/to/.git-templates ~/WORKSPACE/
   git config --global init.templateDir ~/WORKSPACE/.git-templates
   ```

---

## 📞 Support

- Issues? See [troubleshooting.md](docs/troubleshooting.md)
- Questions? Check [how-it-works.md](docs/how-it-works.md)
- Enhancements? Edit hooks and scripts as needed

---

**Last Updated**: February 3, 2026
