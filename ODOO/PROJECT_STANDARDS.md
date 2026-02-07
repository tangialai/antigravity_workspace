# Odoo Project Standards & Templates

Tài liệu này quy chuẩn các thông tin Manifest và cấu trúc cho từng nhóm dự án để đảm bảo tính nhất quán.

## 📝 Quy chuẩn Chung cho File Python (NOVOBI)

Mọi file `.py` thuộc dự án NOVOBI **PHẢI** bắt đầu bằng header sau (Năm thay đổi theo thực tế):

```python
# Copyright © 2026 Novobi, Inc
# See LICENSE file for full copyright and licensing details.
```

## 🏢 Dự án DBVI (VIB)

Cấu trúc chuẩn dành riêng cho các dự án thuộc hệ sinh thái DBVI/VIB.

**Template Manifest (`__manifest__.py`):**

```python
# Copyright © 2025 Novobi, Inc
# See LICENSE file for full copyright and licensing details.

{
    'name': 'VIB: ${MODULE_NAME_CAPITALIZED}',
    'summary': 'VIB: ${MODULE_NAME_CAPITALIZED}',
    'version': '19.0.1.0',
    'category': 'Uncategorized',
    'website': 'https://novobi.com',
    'author': 'Novobi, Inc',
    'license': 'OPL-1',
    'depends': [
        # Odoo addons
        'base',

        # Novobi addons

        # 3rd-party addons

        # Project addons
    ],
    'excludes': [],
    'data': [
        # ============================== SECURITY =============================

        # ============================== DATA =================================

        # ============================== VIEWS ================================


        # ============================== REPORT ===============================

        # ============================== WIZARDS ==============================

    ],
    'assets': {},
    'demo': [],
    'installable': True,
    'application': False,
}
```

---

## 🏢 Nhóm NOVOBI (General)

Dùng cho các dự án khách hàng khác của công ty.

---

## 👤 Nhóm RYANTAN

Dùng cho các dự án cá nhân hoặc nghiên cứu.

**Template Manifest (`__manifest__.py`):**

```python
# -*- coding: utf-8 -*-
{
    'name': "${MODULE_NAME}",
    'summary': "Custom development by Ryan Tan",
    'author': "Ryan Tan",
    'website': "https://github.com/ryantanmai",
    'category': 'Custom',
    'version': '1.0',
    'depends': ['base'],
    'data': [
        'security/ir.model.access.csv',
        'views/views.xml',
    ],
    'installable': True,
    'application': False,
    'license': 'LGPL-3',
}
```

## 🛠️ Quy trình Tạo Module (Scaffold)

1. Chạy lệnh scaffold chuẩn của Odoo.
2. Sao chép nội dung template tương ứng ở trên vào file `__manifest__.py` của module mới tạo.
3. Thay thế `${MODULE_NAME}` bằng tên module thực tế.
