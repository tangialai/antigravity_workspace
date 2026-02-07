---
description: Strategy for prioritizing information sources (Local -> NotebookLM -> Web)
---

# Research & Support Strategy

Follow this workflow when you need to find information, reference libraries, or get context for a task.

## 1. Local Workspace Analysis

First, always check the current workspace for existing patterns, libraries, or references.

- Use `ls` or `find_by_name` to explore the file structure.
- Use `grep_search` to find usage examples or definitions within the codebase.

## 2. NotebookLM Knowledge Base

If the information is not found locally (or you need broader context/docs not present in the code):

1. **List Notebooks**: Run `nlm list notebooks` to view available knowledge sources.
   - _Tip_: Look for notebooks with titles related to the current technology (e.g., "Odoo 19 Docs", "Python Patterns").
2. **Query Notebook**: Run `nlm query notebook <NOTEBOOK_ID> "<Specific Question>"`
   - _Example_: `nlm query notebook 06318856-81bc-4d49-97e9-6a53b0e5e5e5 "How to define a smart button in Odoo 19?"`
3. **Analyze Output**: Use the grounded response from NotebookLM to guide your implementation.

## 3. External Search (Last Resort)

Only if the above steps yield no results or insufficient detail:

- Use `search_web` to find external documentation or solutions.

---

**Note**: Always cite the source of your information (e.g., "According to your 'Odoo 19 Docs' notebook...") to keep the user informed.
