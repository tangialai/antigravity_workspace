---
description: ✅ Kiểm soát chất lượng & Bảo mật Odoo (Review/Test/Security)
---

// turbo-all

# WORKFLOW: /odoo-test

**Mục tiêu:** Đảm bảo code đạt chuẩn Audit, an toàn và pass mọi Unit Test.

## CÁC BƯỚC THỰC HIỆN:

1. **Requirements Alignment (Jira / PRD Cross-Check):**
    - Đọc kỹ mô tả ticket (đặc biệt các mục _Customization_ và _DEFAULT DATA_).
    - Đảm bảo KHÔNG BỎ SÓT bất kỳ file data import, migration script hay logic nhỏ nào được nhắc đến trong yêu cầu.
2. **Naming & Standards Compliance Check (CRITICAL):**
    - Review toàn bộ code Python & XML dựa trên **Mục 19: Odoo 19 Naming & Programming Patterns** trong Skill `odoo-mastery`.
    - **Header Audit (Chỉ dành cho Python - Novobi Standard 2026):**
        - Tham chiếu: `/Users/ryantanmai/WORKSPACE/ODOO/LIBRARY/novobi_standards/novobi_header_standards.md`
        - Phải có Copyright 2026, đúng định dạng `Novobi, Inc` (không dấu chấm cuối).
        - Đảm bảo khoảng trắng: **2 dòng trống** cho file logic, **1 dòng trống** cho manifest/init.
    - **Manifest Audit (DBVI Standard):**
        - Module trong `project-addons` BẮT BUỘC phải depends `vib_base`.
        - Version format: `19.0.x.y.z`. License: `OPL-1`.
    - Review Python Best Practices: Khuyến khích sử dụng Walrus operator (`:=`) cho các biểu thức gán (duplicate checks, search results).
3. **Report (Audit Result):** Tạo bản báo cáo tóm tắt các vi phạm. BẮT BUỘC fix hết các lỗi Header và Dependency trước khi chạy test.
4. **Security & Company**: Kiểm tra file access rights (CSV), các nguy cơ SQL Injection và tính nhất quán multi-company (`check_company`).
5. **Testing:** Chỉ chạy Unit Test (Python/JS) sau khi đã pass bước Compliance Check hoặc đã có report rõ ràng.
    - \*\*[CRITICAL RULE]\*\* TUYỆT ĐỐI KHÔNG `from . import tests` trong file `__init__.py` gốc của module. Lỗi này sẽ gọi `odoo.tests` ở chế độ runtime thường và làm sập (crash) toàn bộ quá trình install/upgrade module.
6. **Approval:** Tăng version module trong manifest nếu đạt chuẩn cực phẩm.

---

> **Skill sử dụng:** `odoo-mastery`, `clean-coding`.
