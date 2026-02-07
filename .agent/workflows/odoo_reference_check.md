---
description: Kiểm tra mã nguồn gốc Odoo (REFERENCE) trước khi Inherit/Override để đảm bảo tính đúng đắn.
---

Quy trình này áp dụng mỗi khi cần chỉnh sửa View hoặc Hàm gốc của Odoo.

1. **Xác định phiên bản dự án**:
    - Kiểm tra `__manifest__.py` hoặc context để biết project đang chạy Odoo phiên bản nào (ví dụ: v17, v18, v19).

2. **Xác định file gốc và module gốc**:
    - Nếu chỉnh sửa View của `uom.uom`, module gốc thường là `uom` hoặc `product`.
    - Tìm đường dẫn REFERENCE tương ứng: `/Users/ryantanmai/WORKSPACE/ODOO/REFERENCES/odoo[version]/addons/[module]`.

3. **Tra cứu mã nguồn gốc**:
    - Sử dụng `grep` hoặc `find_by_name` để tìm file chứa View ID hoặc Hàm cần override.
    - Ví dụ: `grep -r "product_uom_form_view" /Users/ryantanmai/WORKSPACE/ODOO/REFERENCES/odoo19/addons/uom/views/`

4. **Kiểm tra tính đúng đắn**:
    - **Với View**: Kiểm tra `xpath` có trỏ đúng vào field đang tồn tại không. (Lưu ý Odoo 19 đã refactor nhiều module core).
    - **Với Hàm**: Kiểm tra `signature` (tham số truyền vào) và logic xử lý để đảm bảo gọi `super()` đúng cách.

5. **Thực thi**:
    - Chỉ bắt đầu viết code kế thừa sau khi đã xác nhận thông tin ở bước 4.
    - **Quan trọng**:
        - Khi khai báo `<record>`, hãy sử dụng `id` trùng khớp với tên ID gốc của Odoo (phần sau dấu chấm). Ví dụ: `sale.view_order_form` -> `id="view_order_form"`.
        - Khi thêm element mới (`group`, `page`, ...), **PHẢI** đặt thuộc tính `name` để đảm bảo khả năng mở rộng (extendability).
        - **BẮT BUỘC**: Tăng số phiên bản trong `__manifest__.py` (ví dụ: `1.0.0` -> `1.0.1`) sau khi hoàn tất chỉnh sửa để hỗ trợ auto-upgrade.
        - **System Parameters**: Nếu sử dụng `ir.config_parameter`, hãy khai báo giá trị mặc định trong XML với `noupdate="1"`.
