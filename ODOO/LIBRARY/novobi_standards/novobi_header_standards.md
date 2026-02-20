# Novobi Project Standards: Header Copyright & License (2026)

Đây là quy chuẩn Header áp dụng **CHỈ DÀNH RIÊNG CHO CÁC FILE MÃ NGUỒN PYTHON** trong các dự án của Novobi cho năm 2026. _Ghi chú: KHÔNG YÊU CẦU Header Copyright đối với các file XML._

## 1. Định dạng chuẩn (Python)

Cấu trúc Header bao gồm 2 dòng. Ngay sau Header là **1 dòng trống** (single blank line) đối với mọi loại file mã nguồn.

```python
# Copyright © 2026 Novobi, Inc
# See LICENSE file for full copyright and licensing details.

from odoo import models...
```

```python
# Copyright © 2026 Novobi, Inc
# See LICENSE file for full copyright and licensing details.

from . import models
```

## 2. Các điểm cần lưu ý (Compliance Checklist)

- **Năm**: Phải là năm hiện tại hoặc năm phát triển (ví dụ: `2026`).
- **Tên công ty**: `Novobi, Inc` (Không có dấu chấm sau chữ `Inc`).
- **License**: Sử dụng dòng `See LICENSE file for full copyright and licensing details.` (Bỏ tiền tố `Part of Odoo`).
- **Khoảng cách**: Luôn tuân thủ số dòng trống như quy định ở trên.

## 3. Version Format (DBVI Project Standard)

> ⚠️ **DBVI dùng 4 digit, KHÔNG phải 5 digit như OCA.**

| Project                   | Format                           | Ví dụ        |
| ------------------------- | -------------------------------- | ------------ |
| **DBVI** (project-addons) | `{odoo}.{major}.{minor}`         | `19.0.1.1`   |
| OCA standard              | `{odoo}.{major}.{minor}.{patch}` | `19.0.1.1.0` |

- `19` — Odoo major version
- `0` — Odoo minor version (luôn là `0`)
- `{major}` — Feature version (tăng khi thêm tính năng lớn)
- `{minor}` — Patch version (tăng khi fix bug hoặc thay đổi nhỏ)
