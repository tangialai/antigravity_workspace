# 📚 Git Templates - Documentation Index

Welcome to the complete documentation for git templates and code quality automation!

---

## 🚀 Quick Links

| Document                              | Purpose                   | Audience   |
| ------------------------------------- | ------------------------- | ---------- |
| [Setup Guide](setup-guide.md)         | Step-by-step installation | New users  |
| [How It Works](how-it-works.md)       | Technical architecture    | Developers |
| [Troubleshooting](troubleshooting.md) | Common issues & fixes     | Everyone   |

---

## 📖 Getting Started

### First Time Here?

1. **Read**: [Setup Guide](setup-guide.md)
2. **Run**: `../scripts/verify-setup.sh`
3. **Test**: Create a new repo and commit

### Already Setup?

- **Having issues?** → [Troubleshooting](troubleshooting.md)
- **Want to understand?** → [How It Works](how-it-works.md)
- **Modifying hooks?** → See "Customization" in [Setup Guide](setup-guide.md)

---

## 📂 Directory Structure

```
~/WORKSPACE/.git-templates/
│
├── README.md                    ← Quick start guide (root)
│
├── hooks/                       ← Git hooks (copied to repos)
│   └── pre-commit              ← Main pre-commit hook
│
├── scripts/                     ← Utility scripts
│   ├── apply-to-all-repos.sh   ← Apply hooks to existing repos
│   └── verify-setup.sh         ← Verify installation
│
└── docs/                        ← Documentation (this folder)
    ├── INDEX.md                ← This file
    ├── setup-guide.md          ← Installation instructions
    ├── how-it-works.md         ← Technical details
    └── troubleshooting.md      ← Problem solving
```

---

## 💡 What Each Document Covers

### Setup Guide

**Topics:**

- Prerequisites & dependencies
- Step-by-step installation
- VS Code integration
- EditorConfig setup
- Team deployment
- Testing procedures
- Customization options

**Best for:**

- First-time setup
- Team onboarding
- Configuration reference

### How It Works

**Topics:**

- Architecture overview
- Git init/clone workflow
- Pre-commit hook mechanics
- autopep8 vs pycodestyle
- File structure explained
- Update workflow
- Performance considerations

**Best for:**

- Understanding the system
- Debugging complex issues
- Extending functionality
- Technical interviews

### Troubleshooting

**Topics:**

- Hook not running
- Command not found errors
- Permission issues
- Performance problems
- VS Code integration issues
- Template update issues
- Complete reset procedure

**Best for:**

- Fixing problems
- Error messages
- Unexpected behavior
- Quick solutions

---

## 🎯 Common Tasks

### Install from Scratch

See: [Setup Guide → Installation](setup-guide.md#installation)

### Verify Everything Works

```bash
cd ~/WORKSPACE/.git-templates/scripts
./verify-setup.sh
```

### Update Hook in All Repos

1. Edit `../hooks/pre-commit`
2. Run `scripts/apply-to-all-repos.sh`

### Add New Hook

1. Create `hooks/new-hook-name`
2. Make executable: `chmod +x hooks/new-hook-name`
3. Apply: `scripts/apply-to-all-repos.sh`

### Disable Temporarily

```bash
git commit --no-verify -m "skip checks"
```

### Debug Hook

```bash
bash -x .git/hooks/pre-commit
```

---

## 🔗 External Resources

### Git Hooks

- [Official Git Hooks Documentation](https://git-scm.com/docs/githooks)
- [Git Templates](https://git-scm.com/docs/git-init#_template_directory)

### Python Tools

- [autopep8](https://github.com/hhatto/autopep8)
- [pycodestyle](https://pycodestyle.pycqa.org/)
- [PEP 8 Style Guide](https://peps.python.org/pep-0008/)

### Code Quality

- [EditorConfig](https://editorconfig.org/)
- [VS Code Python](https://code.visualstudio.com/docs/python/python-tutorial)

---

## 📞 Getting Help

### Self-Service

1. Check [Troubleshooting](troubleshooting.md)
2. Run `verify-setup.sh`
3. Read error messages carefully
4. Check [How It Works](how-it-works.md) for context

### Still Stuck?

Include in your question:

- Output of `verify-setup.sh`
- Error messages (full text)
- Steps to reproduce
- Git version: `git --version`
- Python version: `python --version`

---

## 🎓 Learning Path

### Beginner

1. ✅ Run [Setup Guide](setup-guide.md)
2. ✅ Verify with `verify-setup.sh`
3. ✅ Test with new repo
4. ✅ Read [Troubleshooting](troubleshooting.md) overview

### Intermediate

1. ✅ Understand [How It Works](how-it-works.md)
2. ✅ Customize hook for your needs
3. ✅ Set up team deployment
4. ✅ Add more hooks (commit-msg, pre-push)

### Advanced

1. ✅ Integrate with CI/CD
2. ✅ Create custom formatters
3. ✅ Version control templates
4. ✅ Build team-specific extensions

---

## 📝 Document Conventions

### Symbols

- ✅ Success / Correct way
- ❌ Error / Incorrect way
- ⚠️ Warning / Caution
- 💡 Tip / Pro tip
- 🔍 Detail / Technical note

### Code Blocks

**Shell commands:**

```bash
$ command --args
```

**Config files:**

```json
{
  "setting": "value"
}
```

**File paths:**

```
~/WORKSPACE/.git-templates/hooks/pre-commit
```

---

## 🔄 Keeping Up to Date

### Check for Updates

If templates are version controlled:

```bash
cd ~/WORKSPACE/.git-templates
git pull
cd scripts
./apply-to-all-repos.sh
```

### Python Tools

```bash
pip install --upgrade autopep8 pycodestyle
```

---

## 🤝 Contributing

Found an issue? Have an improvement?

1. Test your changes
2. Document in appropriate file
3. Update this INDEX if adding new docs
4. Consider backward compatibility

---

**Happy coding with automated quality!** 🚀
