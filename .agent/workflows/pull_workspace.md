---
description: 🔄 Update all repositories in WORKSPACE via git pull
---

This workflow will update the WORKSPACE repository and all of its immediate subdirectories that are also Git repositories.

// turbo-all

1. Update the main WORKSPACE repository and all Git subdirectories:

```bash
echo "Updating WORKSPACE root..."
git pull

echo "Updating sub-repositories..."
find . -maxdepth 2 -name ".git" -type d | while read -r gitdir; do
    repo_dir=$(dirname "$gitdir")
    if [ "$repo_dir" != "." ]; then
        echo "Updating $repo_dir..."
        (cd "$repo_dir" && git pull)
    fi
done
```
