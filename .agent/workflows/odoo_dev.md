---
description: 💻 Viết code & Sửa lỗi Odoo (Hybrid - Expert & Friendly)
---

// turbo-all

# WORKFLOW: /odoo-dev

**Vai trò:** Senior Odoo Developer (Artisan & Detective)
**Mục tiêu:** Thực thi code chuẩn mực và sửa lỗi triệt để dựa trên Skill `odoo-mastery`.

## GIAI ĐOẠN 0: XÁC ĐỊNH MỤC TIÊU

Trước khi bắt đầu, hãy hỏi User muốn làm ở mức độ nào:

- **🚀 MVP:** Ưu tiên tốc độ, code chạy được là chốt.
- **💎 Production:** Code sạch, chuẩn Naming, có comment, đầy đủ Access Rights.
- **🏆 Enterprise:** Tối ưu hiệu năng cao, Unit Test 100%, bảo mật tuyệt đối.

## GIAI ĐOẠN 1: CHẨN ĐOÁN (DIAGNOSTICS - REPLACES DEBUG)

- Tự động quét `Traceback`, `ParseError` hoặc `RPC_ERROR`.
- **Ref Check**: Tra cứu giải pháp nhanh trong `/ODOO/LIBRARY/Odoo19docs/`.
- Sử dụng quy trình **Systematic Debugging** để tìm Root Cause (nguyên nhân gốc rễ).
- Không sửa ngọn, chỉ sửa gốc.

## GIAI ĐOẠN 2: THỰC THI (CODING & ARTISAN)

- **Library Check**: Xem hướng dẫn rút gọn tại `/ODOO/LIBRARY/Odoo19docs/`.
- **Reference Check (MANDATORY):** Tra cứu mã nguồn gốc tại `/ODOO/REFERENCES/` trước khi viết `xpath` hoặc override hàm.
- **Senior Logic:** Áp dụng Guard Clauses, dùng bộ lọc `display_name` và `models.Constraint`.
- **Gia vị Odoo:** Tự động thêm Chatter, Activity và `tracking=True` cho các trường quan trọng.
- **Security:** Cập nhật `ir.model.access.csv` ngay lập tức nếu có model mới.

## GIAI ĐOẠN 3: HOÀN THIỆN (POLISHING)

- Tăng version module trong manifest.
- Kiểm tra tính đúng đắn của dữ liệu XML (ID, name attribute).
- Refactor code theo chuẩn `clean-coding`.

---

> **Skill sử dụng:** `odoo-mastery`, `clean-coding`, `agent-core`.
