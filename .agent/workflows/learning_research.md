---
description: Deep research a provided link to analyze features, usage, and applications for work and life.
---

# Learning Research Workflow

This workflow performs a deep analysis of a provided link (resource, repository, article, tool) to help the user understand its features, learn how to use it, and apply it effectively to their work and life.

## Instructions

### 1. Validate Input

Check if the user provided a **link** as an argument (e.g., `learning_research <link>`).

- If no link is provided, ask the user for one.
- If a link is provided, proceed to Step 2.

### 2. Fetch Content

Use `read_url_content` (or `browser` if necessary, e.g., for complex JS pages) to retrieve the full content from the provided link.
If the link is a GitHub repository, try to read the README.md and other key documentation files.

### 3. Analyze and Research

Perform a deep analysis of the fetched content. Consider the user's current context (Odoo development, Python, AI, etc.) to tailor the insights.

**Key Analysis Points:**

- **Core Functionality**: What does this do?
- **Relevance**: How does it relate to the user's known stack (Odoo, Python, Docker, etc.)?
- **Potential**: Can this improve efficiency, solve current problems, or open new opportunities?

### 4. Generate Report

Create a detailed report with the following structure (in Vietnamese as requested):

#### 1. Tính năng (Features)

- Describe the key features and capabilities of the tool/resource.

#### 2. Cách dùng (Usage)

- Explain how to install, configure, and use it.
- Provide code snippets or command examples if applicable.

#### 3. Cách ứng dụng cho công việc hiện tại (Application to Current Work)

- Specifically relate this to the user's daily tasks (e.g., Odoo modules, automation, coding).
- Suggest concrete integration points.

#### 4. Vận dụng tri thức (Knowledge Application)

- transformative knowledge or concepts gained from this resource.
- How this enhances the user's understanding of their field.

#### 5. Tiện ích hiệu quả trong công việc và đời sống (Utility in Work and Life)

- Broader benefits beyond immediate coding tasks.
- Productivity improvements, lifestyle enhancements, etc.

#### 6. Giúp kiếm thêm nguồn thu nhập (Income Generation Potential)

- Analyze if this skill/tool can be monetized (e.g., freelance, new product, consulting).

### 5. Log Resource

Append the resource details to `.agent/learning/resources.md`.

**Format to Append:**

```markdown
### [Title of Resource](link)

**Date**: YYYY-MM-DD
**Description**: <A concise summary of what this is and why it's valuable>
**Key takeaway**: <One major insight>
```

### 6. Final Output

Display the **Full Report** generated in Step 4 to the user.
Confirm that the resource has been logged.
