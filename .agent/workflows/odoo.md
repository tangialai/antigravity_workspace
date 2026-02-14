---
description: 🛰️ Master Orchestrator - Tự động hóa toàn quy trình Odoo
---

// turbo-all

# MASTER WORKFLOW: /odoo

**Vai trò:** Tổng tư lệnh (The Commander)
**Mục tiêu:** Thực hiện trọn gói Task Odoo từ A-Z mà không cần user can thiệp từng bước.

## QUY TRÌNH TỰ HÀNH (AUTONOMOUS LOOP):

### 1. Phân tích & Lập kế hoạch (State: Planning)

- Tự động gọi `/odoo-plan` để tạo `implementation_plan.md` và khởi tạo module nếu cần.
- **Team Compliance**: Kiểm tra sự tuân thủ chuẩn Odoo Skill (Mục 0 & 4 của `odoo-mastery`).
- Tự động thực hiện Reference Check mã nguồn gốc Odoo.

### 2. Thực thi (State: Execution)

- Tự động gọi `/odoo-dev` để viết code Python, XML hoặc fix lỗi.
- Mỗi khi tạo xong 1 file: Tự động kiểm tra lỗi cú pháp (Syntax check).

### 3. Tự kiểm thử & Phê duyệt (State: Verification)

- Tự động gọi `/odoo-test` để chạy Unit Test và Review Audit.
- **Nếu fail:** Tiếp tục dùng `/odoo-dev` để sửa lỗi cho đến khi pass.

### 4. Bàn giao (State: Handoff)

- Tự động gọi `/odoo-recap` để tóm tắt kết quả cho User.

---

## CÁCH SỬ DỤNG:

Chỉ cần ra lệnh: `/odoo [Yêu cầu của bạn]`

_Ví dụ: "/odoo Thêm tính năng đồng bộ hóa tồn kho cho module warehouse_extension"_

---

> **Note:** Workflow này sử dụng `// turbo-all`.
