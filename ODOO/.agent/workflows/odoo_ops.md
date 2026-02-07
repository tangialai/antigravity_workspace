# Odoo Smart Workflows

Workflow này giúp tự động hóa các thao tác lặp đi lặp lại khi phát triển Odoo.

## 1. Tạo Module Mới (`/scaffold`)
Tạo nhanh cấu trúc module chuẩn Odoo.

**Các bước:**
1. Ryan cung cấp tên module và version Odoo.
2. AI tự động tạo folder trong `NOVOBI/` hoặc `RYANTAN/`.
3. AI sinh các file: `__init__.py`, `__manifest__.py`, `models/`, `views/`, `security/ir.model.access.csv`.

## 2. Cập nhật Môi trường (`/init-venv`)
Tái tạo venv từ requirements.

**Các bước:**
1. Đọc file `ENV_CONFIG/odoo{version}_req.txt`.
2. Chạy `python -m venv` vào thư mục `ENV_CONFIG/python_{version}_venv`.
3. Cài đặt các thư viện cần thiết.

## 3. Quét Lỗi (`/check-code`)
Kiểm tra code Odoo theo tiêu chuẩn.

**Các bước:**
1. Chạy linter (nếu có) hoặc AI tự quét các lỗi phổ biến (Thiếu security, sai XML ID, dùng SQL query...).
