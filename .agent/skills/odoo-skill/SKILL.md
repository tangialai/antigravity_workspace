---
name: odoo-skill
description: Comprehensive Odoo development principles and patterns for Odoo 19+. Focuses on clean XML inheritance, ORM best practices, and module maintainability.
allowed-tools: Read, Write, Edit, Glob, Grep
---

# Odoo Expert Skill (Senior Developer - Odoo 19+)

> "Think in Odoo Modules, not just Python code. Clean, Performant, Secure, and Maintainable."

This skill centralizes Odoo-specific standards to ensure consistency, extensibility, and automated upgradeability across all projects.

### 🛡️ DBVI Project Standards (Mandatory)

1. **Copyright Header**: Every Python file **MUST** start with:
    ```python
    # Copyright © 2026 Novobi, Inc
    # See LICENSE file for full copyright and licensing details.
    ```
2. **Top-level Spacing**: Maintain **2 blank lines** between imports/global variables and class/function definitions (PEP 8 standard).
3. **Manifest Organization**: Group `data` files by type (Security, Data, Views, Report, Wizards) and use `OPL-1` license for project modules.

---

## 1. Role & Mindset

- **Role**: Senior Odoo Developer & Technical Architect specializing in Odoo 18/19.
- **Objective**: Deliver high-quality code that is clean, performant, secure, and easy to maintain.
- **Golden Rules**:
    1. **Inheritance First**: Never modify Odoo standard source code directly. Always create a separate module and inherit.
    2. **ORM Over SQL**: Prioritize ORM methods. Use Raw SQL only for extreme performance optimization and strictly with the `odoo.tools.SQL` secure wrapper.
    3. **Modern Framework**: Use the latest Odoo 19 standards (Owl Framework, JSON-2 API, HOOT Testing). Avoid deprecated APIs (e.g., `attrs`, old QWeb, `read_group`, `_sql_constraints`, `name_get`).

---

## 2. Module Structure & Naming Conventions

### Standard Module Structure

```text
my_module/
├── __init__.py
├── __manifest__.py          # Declaration of dependencies, data, assets
├── models/                  # Python Models
│   ├── __init__.py
│   └── my_model.py
├── views/                   # Backend Views (XML)
│   └── my_model_views.xml
├── security/                # Access Rights
│   ├── ir.model.access.csv
│   └── security.xml
├── data/                    # Master/Demo Data
├── controllers/             # HTTP/Website Controllers
├── static/
│   ├── src/                 # JS, XML (Owl), SCSS
│   └── img/                 # Images
└── tests/                   # Python & HOOT Tests
```

### Naming Conventions

- **Model Class**: PascalCase (e.g., `SaleOrder`, `PropertyListing`).
- **Model Name (\_name)**: snake_case using dots, singular (e.g., `sale.order`, `estate.property`).
- **Python Variables/Methods**: snake_case (e.g., `total_amount`, `action_confirm`).
- **Private Methods**: Start with an underscore (e.g., `_compute_total`).
- **XML ID**: `{model_name}_view_{type}` (e.g., `sale_order_view_form`).
- **Inherited View ID**: **MUST** use the original Odoo ID (e.g., `id="view_order_form"`).
- **Relational Fields**:
    - **Many2one**: Ends in `_id` (e.g., `partner_id`).
    - **X2many**: Ends in `_ids` (e.g., `line_ids`).
- **View Elements**: New elements (`page`, `group`, `button`) **MUST** have a `name` attribute for extensibility.
- **Encoding Header**: Prefer omitting the old `# -*- coding: utf-8 -*-` in favor of the Copyright header for Python 3 projects.

---

## 3. Backend Development (Python & ORM)

### Model Definition

- Always declare `_name` and `_description`.
- **Class Member Order**:
    1. Attributes (`_name`, `_inherit`, `_description`, `_order`).
    2. Fields (Simple -> Relational -> Computed).
    3. Methods (`@api.depends` -> `@api.onchange` -> `action_` -> CRUD overrides).

### Inheritance & Mixins

- **Chatter & Activities**: To enable messaging and activity scheduling, inherit from `mail.thread` and `mail.activity.mixin`. Ensure `<div class="oe_chatter">` is at the end of the Form View.
- **Website Visibility**: Inherit `website.published.mixin` for models requiring published/unpublished status.

### ORM & Fields

- **Computed Fields**: Use `@api.depends()`. Ensure values are assigned in all logic branches.
- **Onchange**: Use `@api.onchange` for UI only. No critical business logic (doesn't run via API/Import).
- **Self**: `self` is a recordset. Always loop (`for record in self:`) unless using `@api.model`.
- **Environment**: Access via `self.env` (user, cursor, context). **PROHIBITED**: `record._cr`, `record._uid`, `record._context` (deprecated).
- **X2Many Commands**: Always use `odoo.fields.Command` (e.g., `Command.create({...})`).
- **Date/Datetime**: Use `fields.Date.today()` or `fields.Datetime.now()`.
- **XML Domain**: Support dynamic dates like `[('date', '=', 'today')]`.
- **Translations (Mandatory)**:
    - **Always** wrap user-facing strings, `UserError`, `ValidationError` messages, and `models.Constraint` error messages in the translation function `_()` (e.g., `_("Error Message")`).
    - Ensure `_` is imported: `from odoo import _`.
    - Use `%` for dynamic strings: `_("Successfully created %s") % record.name`. Avoid f-strings inside `_()`.
    - Use `_lt` only for global variables or strings defined at module load time.
- **Deprecations**:
    - Use `_read_group` instead of `read_group`.
    - **`name_get()` is REMOVED**: Override the compute method of `display_name` instead.
    - **`name_search()` -> `_search_display_name()`**: Logic for searching records by name.
    - **`@api.private`**: Use for internal methods to prevent RPC exposure.
    - **`odoo.osv`**: Completely removed. No more `osv.osv` inheritance.

### Performance & Security

- **Secure SQL**: Strictly Prohibited: F-strings or string concatenation. Required: Use `odoo.tools.SQL` or parameterized queries.
- **Batch Operations**: Accumulate data and perform `create()`/`write()` once on the recordset. Avoid these inside loops.
- **Profiling**: Use `odoo.tools.profiler` or `@profile` to identify bottlenecks.
- **Transactions**: Never call `cr.commit()` manually in business logic.

### Formatting & Numeric Comparisons

- **Floating Point Comparison**: Never use `==` for floats. Always use `odoo.tools.float_compare(val1, val2, precision_digits=n)`.
- **String Representation**: Use `odoo.tools.float_repr(value, precision)` for logs and user messages to ensure consistent decimal places and avoid floating-point artifacts.
- **Rounding**: Use `odoo.tools.float_round(value, precision_digits=n)` for mathematical calculations.

### SQL Constraints & Indexes (Odoo 19+)

- **`_sql_constraints` is DEPRECATED**: Legacy list of tuples is no longer supported.
- **`models.Constraint`**: Use the new TableObject pattern for all SQL constraints.
- **Naming**: The attribute name **MUST** start with an underscore and be unique within the model (e.g., `_check_price`).
- **Pattern**:
    ```python
    _check_positive_amount = models.Constraint(
        "CHECK(amount > 0)",
        _("The amount must be strictly positive!")
    )
    ```
- **Indexes**: Prefer `models.Index` or `models.UniqueIndex` for complex or explicit indexing.

    ```python
    _unique_name = models.UniqueIndex(
        "UNIQUE(name)",
        _("The name must be unique!")
    )
    ```

    ```

    ```

### QWeb & Templates (Odoo 19)

- **`t-raw` is REMOVED**: Use **`t-out`** for dynamic content.
- **HTML Safety**: If you must render HTML, use `markupsafe.Markup` in Python: `return Markup("<b>text</b>")`.

---

## 4. Frontend Development (Owl Framework)

- **Owl Components (Odoo 19 Standard)**:
    - Import from `@odoo/owl`: `Component, useState, onWillStart`.
    - Lifecycle: Use `setup()` instead of `constructor()`. Initialize hooks and state inside `setup()`.
    - Services: Use `useService("orm")`, `useService("rpc")`, `useService("notification")`.
- **Assets Bundle**: Declare in `__manifest__.py` under the `'assets'` key.
    - `web.assets_backend`: For internal UI.
    - `web.assets_frontend`: For Website/Portal UI.
- **Professional Concise Code (Senior Standard)**:
    - **Guard Clauses**: Luôn dùng `Early Return` để loại bỏ các khối `if-else` lồng nhau. Code phải phẳng (flat).
    - **Destructuring**: Ưu tiên Destructuring khi truy xuất nhiều thuộc tính từ object (VD: `const { x, y } = obj;`).
    - **Logical OR & Combined Checks**: Gom các điều kiện cùng một mục đích xử lý vào một block duy nhất để giảm "nhiễu" code.
    - **Ví dụ chuẩn**:

        ```javascript
        // BAD: Tường minh quá mức, lồng nhau
        if (isInput) {
            if (isPrev && activeElem.selectionStart !== 0) return;
            if (isNext && activeElem.selectionStart !== activeElem.value.length) return;
        }

        // GOOD (Senior): Gọn, dùng destructuring và gộp logic
        if (isInput) {
            const { selectionStart, value } = activeElem;
            if ((isPrev && selectionStart !== 0) || (isNext && selectionStart !== value.length)) return;
        }
        ```

    - **Odoo Visibility Check**: Luôn kiểm tra phần tử hiển thị bằng bộ 3 thuộc tính của Odoo Core (`isVisible`):
      `el.offsetWidth || el.offsetHeight || el.getClientRects().length`
      Điều này đảm bảo phần tử thực sự chiếm diện tích trên màn hình (tránh lỗi chỉ check width > 0).

---

## 5. Views & XML Architecture

### Inheritance

- Always use `xpath` and prefer `name` or `id` selectors for stability.
- **Inherited View ID (Crucial)**:
    - When inheriting a view to **modify/extend** it (e.g., adding fields), the `id` of the new record **MUST** be unique (e.g., `view_partner_form_inherit_website`).
    - **NEVER** use the same `id` as the parent view (e.g., `id="base.view_partner_form"`). This triggers a complete **Override/Replacement**, wiping out the original view and breaking other modules.
    - **Ref**: See `odoo19docs_developer.md` > Views > Inheritance.

### Modern Attributes (Odoo 17+)

- Use `invisible="expression"`, `readonly="expression"`, `required="expression"` (Direct Python expressions) instead of legacy `attrs`.
- Use `column_invisible="True"` for List View columns.

### View Elements

- **Smart Buttons**: Place in `div` class `oe_button_box` with standard Odoo icons.
- **List View**: Prefer the `<list>` tag over the legacy `<tree>`.
- **Search View**: Use `search_default_filter_name` in Action context for default filters.

---

## 6. Testing & Simulation

- **Python Tests**: Inherit `TransactionCase`. Files must start with `test_`. Never call `commit()`.
- **Form Simulation**: Use `odoo.tests.Form` to simulate user interactions on backend forms.
- **Population**: Use `odoo-bin populate` with `_populate_factories` for stress testing.
- **JS Tests (HOOT)**: Use the `@odoo/hoot` framework. Use `mockService` and `onRpc` for simulation.

---

## 7. Versioning & Migration

- **Versioning**: Use `Major.Minor.Patch` or `OdooVer.Major.Minor.Patch`. Increment version in `__manifest__.py` for auto-upgrades upon structural changes.
- **Security**: All new models **MUST** have `ir.model.access.csv` entries.
- **Migration Scripts**: Place in `migrations/{version}/`. Use `odoo.upgrade.util` for safe renaming.
- **System Parameters**: Declare in XML under `<data noupdate="1">`.

---

## 8. AI Output Guidelines

1. **Analyze**: Identify required Model, View, and Logic.
2. **Manifest**: Check `depends` and declare `data`, `views`, and `security`.
3. **Code**: Follow all rules (Naming, Security, ORM patterns).
4. **Explain**: Briefly explain technical choices (e.g., "Using display_name as name_get is deprecated").

---

### 🔍 Reference Check Workflow (Mandatory)

1. **Identify Target Version**: Check the module version in `__manifest__.py` or the project context (e.g., Odoo 19).
2. **Locate Source**:
    - **Odoo Core**: Reference the exact version in `/Users/ryantanmai/WORKSPACE/ODOO/REFERENCES/odoo19/`.
    - **Project Library**: Refer to the expert documentation in `/Users/ryantanmai/WORKSPACE/ODOO/LIBRARY/Odoo19docs/`.
3. **Analyze**: Verify `xpath`, method signatures, and default behaviors for that specific version.
4. **Extend**: Implement inheritance or customization following only the patterns valid for that version.

---

> **Note**: This is a living document. Update it as Odoo standards evolve.
