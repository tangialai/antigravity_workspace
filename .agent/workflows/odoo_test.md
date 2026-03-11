---
description: ✅ Kiểm soát chất lượng & Bảo mật Odoo (Review/Test/Security)
---

// turbo-all

# WORKFLOW: /odoo-test

**Mục tiêu:** Đảm bảo code đạt chuẩn Audit, an toàn và pass mọi Unit Test.

## CÁC BƯỚC THỰC HIỆN:

1.  **Requirements Alignment (Jira / PRD Cross-Check):**
    - Đọc kỹ mô tả ticket (đặc biệt các mục _Customization_ và _DEFAULT DATA_).
    - Đảm bảo KHÔNG BỎ SÓT bất kỳ file data import, migration script hay logic nhỏ nào được nhắc đến trong yêu cầu.
2.  **Naming & Standards Compliance Check (CRITICAL):**
    - Review toàn bộ code Python & XML dựa trên **Mục 19: Odoo 19 Naming & Programming Patterns** trong Skill `odoo-mastery`.
    - **Header Audit (Chỉ dành cho Python - Novobi Standard 2026):**
        - Tham chiếu: `/Users/ryantanmai/WORKSPACE/ODOO/LIBRARY/novobi_standards/novobi_header_standards.md`
        - Phải có Copyright 2026, đúng định dạng `Novobi, Inc` (không dấu chấm cuối).
        - Đảm bảo khoảng trắng: **1 dòng trống** cho mọi loại file.
    - **Manifest Audit (DBVI Standard):**
        - Module trong `project-addons` BẮT BUỘC phải depends `vib_base`.
        - Version format: `19.0.x.y.z`. License: `OPL-1`.
    - Review Python Best Practices: Khuyến khích sử dụng Walrus operator (`:=`) cho các biểu thức gán (duplicate checks, search results).
3.  **Report (Audit Result):** Tạo bản báo cáo tóm tắt các vi phạm. BẮT BUỘC fix hết các lỗi Header và Dependency trước khi chạy test.
4.  **Refactor, Optimize & Performance Report:**
    Sau khi pass Compliance Check, bắt buộc đánh giá và tối ưu hóa code trước khi chạy test.

    ### 4a – Code Refactor & Simplification
    - Loại bỏ code dư thừa, duplicate logic, comment sai.
    - Đơn giản hóa các hàm dài, tách helper method nếu cần.
    - Ưu tiên dùng idiom Odoo 19: `Domain` object, Walrus operator `:=`, `sudo()` đúng chỗ.
    - **Nguyên tắc:** Code phải đơn giản, dễ đọc và đúng chuẩn Odoo 19 trước tiên.

    ### 4b – Performance Analysis (DB Query Count)

    Đếm số DB query cho mỗi route/method theo pattern:

    ```
    GET  /route              → X queries
    POST /route/submit       → Y queries
    ```

    **Checklist bắt buộc kiểm tra:**
    - [ ] Có N+1 query không? (vòng lặp gọi ORM)
    - [ ] Có search() bị gọi nhiều lần với cùng domain không? → Reuse recordset
    - [ ] `has_group()` / `get_selection()` có được cache không?
    - [ ] `sudo()` được dùng đúng chỗ (public route) không?
    - [ ] Có thể dùng `search_count()` thay `search()` khi chỉ cần đếm không?
    - [ ] `limit=1` có được thêm vào các search chỉ cần 1 record không?

    ### 4c – Odoo 19 Pattern Compliance
    - `Domain` object thay vì list append.
    - `model_create_multi` cho create batch.
    - `with_context()` đúng scope, không leak context.
    - `_fields['field_name'].get_selection(env)` thay vì hardcode selection.
    - `team._determine_stage()` thay vì tự tìm stage thủ công.
    - `generate_access_token()` cho attachment public.
    - `message.is_internal = False` cho chatter public.

    ### 4d – Report Template

    Báo cáo ngắn gọn theo format:

    ```
    ## Performance Report
    | Route | DB Queries | Note |
    |-------|-----------|------|
    | GET /route        | N | ... |
    | POST /route/submit| N | ... |

    ## Fixes Applied
    - [fix 1]
    - [fix 2]
    ```

5.  **Security & Company**: Kiểm tra file access rights (CSV), các nguy cơ SQL Injection và tính nhất quán multi-company (`check_company`).
6.  **Testing – 2 Lớp Bắt Buộc:** Chỉ chạy sau khi pass Compliance Check. Áp dụng đúng lớp test theo tính năng.

    > **[CRITICAL RULE]** TUYỆT ĐỐI KHÔNG `from . import tests` trong file `__init__.py` gốc của module. Lỗi này sẽ crash toàn bộ quá trình install/upgrade module.

    ### Lớp 1 – `TransactionCase` (ORM / Business Logic)

    Dùng khi: model fields, compute, constrains, create/write overrides, onchange, helper methods.

    ```python
    from odoo.tests import tagged, TransactionCase

    @tagged('post_install', '-at_install', 'module_tag')
    class TestMyModel(TransactionCase):
        def test_field_value(self): ...
        def test_compute(self): ...
        def test_create_override(self): ...
    ```

    **Bắt được:** logic Python sai, field không đúng giá trị, constraint thiếu.
    **KHÔNG bắt được:** template render lỗi, route 404, controller crash.

    ### Lớp 2 – `HttpCase` (Controller / Portal / Template)

    Dùng khi: module có `controllers/`, public routes (`auth='public'`), portal forms, QWeb templates, website pages.

    ```python
    from odoo.tests import tagged, HttpCase

    @tagged('post_install', '-at_install', 'module_tag')
    class TestMyPortal(HttpCase):
        def test_route_renders(self):
            res = self.url_open('/my-route')
            self.assertEqual(res.status_code, 200)
            self.assertIn(b'Expected Content', res.content)

        def test_form_submit(self):
            res = self.url_open('/my-route/submit', data={...})
            self.assertEqual(res.status_code, 200)
    ```

    **Bắt được:** template render lỗi/rỗng, route 404/500, form submit crash, CSRF issues.
    **Lưu ý:** `HttpCase` chậm hơn ~3-5x so với `TransactionCase`. Nên ưu tiên test các path quan trọng nhất.

    ### Bảng Quyết Định

    | Tính năng                           | Lớp test cần có      |
    | ----------------------------------- | -------------------- |
    | Model fields / compute / constrains | ✅ Layer 1           |
    | create/write override               | ✅ Layer 1           |
    | Public portal form (GET)            | ✅ Layer 2           |
    | Form submission (POST)              | ✅ Layer 2           |
    | Controller có `auth='public'`       | ✅ Layer 2           |
    | QWeb template render                | ✅ Layer 2           |
    | Cả model lẫn portal                 | ✅ Layer 1 + Layer 2 |

    ### Lệnh chạy test

    ```bash
    # Cả 2 lớp (tag module)
    python odoo-bin -d DBVI --http-port 8899 --test-enable --test-tags <module_tag> -u <module> --stop-after-init

    # Chỉ Layer 1 (nhanh, không cần HTTP)
    python odoo-bin -d DBVI --http-port 8899 --test-enable --test-tags <module_tag>,-at_install -u <module> --stop-after-init
    ```

7.  **Approval & Version Bump (Có điều kiện):**
    Tăng version module trong manifest **CHỈ KHI** thay đổi có thêm/sửa field trên các **master data model** — tức là model yêu cầu migration khi upgrade:
    - `res.partner`, `res.company`, `res.users`
    - `account.move`, `account.move.line`
    - `product.template`, `product.product`
    - Hoặc bất kỳ model core nào ảnh hưởng đến schema DB hiện có.

    **KHÔNG tăng version** khi chỉ:
    - Refactor controller, sửa logic Python, optimize query
    - Thêm/sửa view XML, QWeb template, website menu
    - Fix bug không ảnh hưởng đến cấu trúc DB

---

> **Skill sử dụng:** `odoo-mastery`, `clean-coding`.
