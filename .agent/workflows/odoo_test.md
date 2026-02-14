---
description: ✅ Kiểm soát chất lượng & Bảo mật Odoo (Review/Test/Security)
---

// turbo-all

# WORKFLOW: /odoo-test

**Mục tiêu:** Đảm bảo code đạt chuẩn Audit, an toàn và pass mọi Unit Test.

## CÁC BƯỚC THỰC HIỆN:

1. **Audit:** Review Naming, ORM Performance và tính ổn định của Xpath dựa trên **Weighted Audit Scoring** (Mục 13 của Skill).
2. **Security & Company**: Kiểm tra file access rights (CSV), các nguy cơ SQL Injection và tính nhất quán multi-company (`check_company`).
3. **Testing:** Tự động tạo và thực thi Unit Test (Python/JS).
4. **Approval:** Tăng version module trong manifest nếu đạt chuẩn cực phẩm.

---

> **Skill sử dụng:** `odoo-mastery`, `clean-coding`.
