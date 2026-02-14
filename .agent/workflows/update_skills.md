---
description: Update Antigravity skills from community sources
---

# Update Skills Workflow

This workflow manages the acquisition and updating of Antigravity skills from external sources (GitHub repositories, websites, etc.).

## Instructions

### 1. Identify User Intent

Check the user's input to determine if they want to **ADD a specific source** or **UPDATE existing skills**.

- **Scenario A: User provided a link (e.g., `update_skills <link>`)**
    1.  Check if the input argument looks like a URL (starts with http/https).
    2.  If it is a URL:
        - Read the file `.agent/skills/sources.md`.
        - Check if the URL already exists in the file.
        - If not, append the URL to the "Sources" section of `.agent/skills/sources.md`.
        - Inform the user that the source has been added.
        - **STOP here.**

- **Scenario B: User requested an update (e.g., `update_skills` without arguments)**
    1.  If no arguments are provided, OR the argument is NOT a URL:
    2.  Proceed to step 2.

### 2. Read Sources

Read the file `.agent/skills/sources.md` to get the list of configured skill sources.

```bash
cat .agent/skills/sources.md
```

### 3. Fetch and Analyze Sources

For **EACH** source URL found in the list:

1.  **Fetch Content**: Use `read_url_content` (or `browser` if necessary) to retrieve the content of the page/repo.
2.  **Identify Skills**: Look for directories or files that represent skills (typically containing a `SKILL.md` file or obeying a specific structure).
    - If it's a GitHub repo, look for a root `skills/` directory or similar.
3.  **Filter by Relevance**:
    - Analyze the description/content of the found skills.
    - Compare them with the user's current context, daily work patterns (based on recent conversation history and file types), and existing skills.
    - Select skills that are:
        - **Updates**: Newer versions of skills already installed in `.agent/skills`.
        - **New & Relevant**: Skills that would benefit the user's current workflow (e.g., Odoo, Python, Web Dev) but are not yet installed.

### 4. Update/Install Skills

For the selected skills:

1.  **Check Existence**: Check if the skill already exists in `.agent/skills/<skill_name>`.
2.  **Safety Rule**: **NEVER DELETE** or **REMOVE** existing files or content. Only **ADD** new files or **UPDATE** existing ones if the source is newer/better.
3.  **Installation**:
    - If the skill is new, create the directory `.agent/skills/<skill_name>` and write the skill files (especially `SKILL.md`).
    - If the skill exists, update the content of `SKILL.md` and other associated files, ensuring no local customizations are destructively overwritten without care (though usually, we prefer the source of truth).
4.  **Reporting**: Keep a log of what was installed or updated.

### 5. Final Report

Summarize the actions taken:

- Which sources were checked.
- Which skills were updated.
- Which new skills were installed.
- Any errors encountered.

---

**Note**: When parsing GitHub repositories, looking for a `skills` folder or files named `SKILL.md` is the standard convention.
