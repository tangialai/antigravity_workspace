# Novobi & DBVI Audit Checklist (2026)

Tài liệu này tổng hợp các thiếu sót thường gặp và quy chuẩn bắt buộc để vượt qua bước Audit trong workflow `/odoo_test`.

## I. Quy chuẩn Header (Toàn bộ dự án Novobi)

Mỗi file mã nguồn **PYTHON** (.py) BẮT BUỘC phải có header sau (Các file XML KHÔNG yêu cầu):

```python
# Copyright © 2026 Novobi, Inc
# See LICENSE file for full copyright and licensing details.
```

### Các lỗi cần tránh:

- [ ] Sai năm (phải là `2026`).
- [ ] Có dấu chấm sau `Inc.` (Chuẩn là `Inc`).
- [ ] Còn prefix Odoo (`Part of Odoo...`).
- [ ] Thiếu dấu bản quyền `©`.

## II. Quy chuẩn Khoảng trắng

- **Tất cả file Python**: Phải có chính xác **1 dòng trống** ngay sau Header.

## III. Quy chuẩn Manifest (Dự án DBVI)

Module nằm trong `project-addons` phải tuân thủ:

- **Dependency**: BẮT BUỘC có `'vib_base'` trong danh sách `depends`.
- **License**: Luôn là `OPL-1`.
- **Author**: `Novobi, Inc`.
- **Format**: Sử dụng các comment separator (`# === SECURITY ===`) để phân nhóm rõ ràng.
- **Version**: Bắt đầu bằng `19.0.x.y.z`.

## IV. Python Coding Patterns

- [ ] Ưu tiên sử dụng Walrus operator (`:=`) cho logic kiểm tra trùng lặp hoặc kết quả tìm kiếm.
- [ ] Đảm bảo pass `py_compile` và không có lỗi import cơ bản.

## V. Unit Test & Initialization (CRITICAL ALERT)

- [ ] **Lỗi Crash Runtime**: KIỂM TRA file `__init__.py` gốc của module. **TUYỆT ĐỐI KHÔNG** được có dòng `from . import tests`. Việc import package tests ra ngoài cùng sẽ khiến Odoo vô tình nạp thư viện `odoo.tests` trong lúc khởi động/cài đặt thông thường, dẫn đến lỗi vỡ môi trường (crash `importlib._bootstrap`)! Thư mục `tests/` chỉ được chạy riêng bằng Test Runner.
