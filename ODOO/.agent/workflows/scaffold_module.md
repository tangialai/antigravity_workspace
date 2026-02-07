---
description: Create a new Odoo module using the scaffold command
---

# Scaffold Module Workflow

Workflow này giúp bạn tạo nhanh cấu trúc một module Odoo mới theo tiêu chuẩn.

## Cách sử dụng

Khi bạn muốn tạo module mới (ví dụ: `my_module` trong `RYANTAN`), hãy yêu cầu Agent thực hiện các bước sau:

1. **Xác định thông số**:
   - Tên module: `rbt_test`
   - Folder đích: `RYANTAN` hoặc `NOVOBI`
   - Version Odoo: (ví dụ 19)

2. **Thực thi lệnh Scaffold**:
// turbo
```bash
# Template lệnh (Agent sẽ tự điền path và venv cụ thể)
/Users/ryantanmai/WORKSPACE/ODOO/ENV_CONFIG/python_venv_3_13/bin/python3 /Users/ryantanmai/WORKSPACE/ODOO/REFERENCES/odoo19/odoo-bin scaffold <module_name> /Users/ryantanmai/WORKSPACE/ODOO/<target_folder>/
```

3. **Áp dụng Template**:
   - Agent sẽ đọc file `WORKSPACE/ODOO/PROJECT_STANDARDS.md` để lấy mẫu manifest tương ứng với folder đích.
   - Cập nhật file `__manifest__.py` ngay sau khi scaffold.
