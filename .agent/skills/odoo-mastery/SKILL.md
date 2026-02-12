---
name: odoo-mastery
description: "Professional Odoo 19+ development, EDI integration, and comprehensive testing architecture. This is the SINGLE SOURCE OF TRUTH for all Odoo workflows."
---

# Odoo Mastery Skill (Senior Developer - Odoo 19+)

## 1. Role & Modern Standards (Odoo 19)

- **Mindset**: Think in Modules. Inheritance First. ORM Over SQL.
- **Modern Patterns**: Use `display_name` (compute), `models.Constraint`, `_read_group()`, and `t-out`.
- **Private Attributes**: Prohibited access to `_cr`, `_uid`, `_context`. Use `self.env` and public methods.
- **Naming Rules**:
    - Models: `snake.case` (dot notation).
    - Fields: `many2one_id`, `one2many_ids`.
    - Views: `{model_name}_view_{type}`. Use `name` attribute on all elements (group, page).
- **Copyright**: Every Python file MUST start with `# Copyright © 2026 Novobi, Inc`.

## 2. EDI & Integration (Specialized)

- **Processor Architecture**: Use `get_record_type_XXX_layout()` and `transform_data_by_line...` patterns.
- **Data Conversion Patterns**:
    - `character`: Strip whitespace on import, pad on export.
    - `number`: Integer conversion on import, zero-padded on export.
    - `signed_number`: Handle trailing sign (e.g., `000123-` -> `-123`).
    - `date`: Explicit format parsing (`%Y-%m-%d`).
- **Fail-safe**: Implement duplicate prevention via external IDs. Use context managers for SFTP/API.

## 3. Comprehensive Testing Mastery

### Pattern: Setup -> Execute -> Verify

- **Base**: Inherit `TransactionCase`, use `@tagged('post_install', '-at_install')`.
- **Standard Setup**:
    ```python
    @classmethod
    def setUpClass(cls):
        super().setUpClass()
        cls.partner = cls.env['res.partner'].create({'name': 'Test'})
    ```
- **EDI Setup (Mock Data)**: Always mock `sftp.server`, `sftp.folder`, and `sftp.file` for export tests.
- **Simulation**: Use `odoo.tests.Form` for wizards and complex form interaction.

## 4. Mandatory Analysis & Reference Check (MANDATORY)

**Bất kỳ khi nào chỉnh sửa (Inherit/Override) Odoo, tôi PHẢI:**

1. **Xác định Version**: Kiểm tra `__manifest__.py` (v17, v18, v19).
2. **Reference Check**:
    - Tìm module gốc trong `/Users/ryantanmai/WORKSPACE/ODOO/REFERENCES/odoo[version]/addons/`.
    - Sử dụng `grep` tìm chính xác ID View hoặc Signature của Hàm cần sửa.
    - Kiểm tra tài liệu hướng dẫn tương ứng tại `/Users/ryantanmai/WORKSPACE/ODOO/LIBRARY/Odoo19docs/`.
3. **Validate**:
    - Kiểm tra `xpath` có trỏ đúng vào field đang tồn tại không (Odoo 19 refactor rất nhiều).
    - Kiểm tra tham số truyền vào hàm để gọi `super()` chính xác.
4. **Mock Data Setup**: Nếu viết test, thực hiện phân tích 5 bước để mock dữ liệu thực tế.

## 5. View Inheritance & XML Rules

- **View ID**: LUÔN sử dụng chính ID của View gốc làm ID cho record kế thừa (VD: `id="view_order_form"` kế thừa từ `sale.view_order_form`).
- **Element Naming**: Mọi element mới (`page`, `group`, `button`) PHẢI có thuộc tính `name`.
- **Versioning**: LUÔN tăng số phiên bản trong `__manifest__.py` sau khi hoàn tất chỉnh sửa.
- **Config**: Khai báo `ir.config_parameter` trong XML với `noupdate="1"`.

## 6. Frontend (Owl Framework)

- **Standards**: Use `setup()` hooks (`useState`, `onWillStart`).
- **UI Code**: Use Guard Clauses (Flat Logic). Check visibility using Odoo Core style:
  `el.offsetWidth || el.offsetHeight || el.getClientRects().length`

## 7. Security & Performance

- **Security**: All new models MUST have `ir.model.access.csv`.
- **SQL**: Prohibited f-strings. Use `odoo.tools.SQL` or parameterized queries.
- **Batching**: Move `create()`/`write()` outside loops. Accumulate in recordsets.

> **Reference Check**: Always verify against `/Users/ryantanmai/WORKSPACE/ODOO/REFERENCES/odoo19/`.
