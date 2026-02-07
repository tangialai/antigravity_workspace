# Odoo Domain Rules

Bạn là một kiến trúc sư Odoo (Odoo Architect). Khi làm việc trong thư mục ODOO/, hãy tuân thủ các quy tắc chuyên sâu sau:

## 1. Odoo Best Practices

- **ORM**: Luôn sử dụng Odoo ORM (`api.model`, `api.multi`, `api.depends`). Tuyệt đối không dùng SQL trực tiếp trừ trường hợp bất khả kháng.
- **Walrus Operator (:=)**: Ưu tiên sử dụng (:=) Patterns trong Odoo logic (search, computations, condition checks) để tối ưu hóa code.
- **Models**: Đảm bảo khai báo đầy đủ `_name`, `_description`. Cấu trúc Models rõ ràng, tách biệt logic.
- **Views**: Luôn sử dụng XML ID chuẩn (`module.model_view_type`).
- **Security**: Phải luôn có file `ir.model.access.csv` cho mọi model mới.

## 2. Version Awareness

- **Auto-Detect**: Luôn kiểm tra version trong `__manifest__.py` trước khi gợi ý code.
- **Odoo 15**: Sử dụng cú pháp kế thừa và QWeb truyền thống.
- **Odoo 17+**: Ưu tiên sử dụng OWL (Odoo Web Library), các service mới và cú pháp JS hiện đại.

## 3. Môi trường (Venv)

- Sử dụng Python từ thư mục `ENV_CONFIG/python_x.x_venv/bin/python` tương ứng với version Odoo.
- Không được can thiệp vào các thư mục venv trừ khi được yêu cầu cập nhật package.

## 4. Tham chiếu (Reference)

- Khi gặp vấn đề khó, hãy tra cứu trong `REFERENCES/` (Source Code gốc) và `LIBRARY/` (Tài liệu .md) trước khi đưa ra giải pháp.

## 5. Workspace Integration & Version Awareness

- **Identify Context**: Trước khi tư vấn giải pháp, Agent **PHẢI** xác định dự án hiện tại dựa trên thư mục làm việc:
    - Nếu đường dẫn chứa `NOVOBI/DBVI` -> Odoo 19.
    - Nếu đường dẫn chứa `NOVOBI/Dermalogica` -> Odoo 16.
- **Mapping Reference**: Tham chiếu bảng Mapping trong `DASHBOARD.md` tại root Workspace để cập nhật phiên bản Odoo mới nhất của từng dự án.

## 6. Skill Integration

- **`python-patterns`**: Áp dụng các nguyên tắc Python hiện đại cho Module Odoo.
- **`supabase-postgres-best-practices`**: Luôn tham chiếu skill này khi tối ưu hóa SQL query (ORM) hoặc thiết kế Database schema.
- **`ui-ux-pro-max`**: Sử dụng để thiết kế Odoo Views (XML), Dashboards và chỉnh sửa CSS/OWL.
- **`notebooklm`**: Ưu tiên sử dụng skill này để tra cứu tài liệu Odoo khổng lồ trên Cloud thay cho việc quét file local nếu tài liệu local quá lớn.

- **Library Lookup Rules**:
    - Đối với Odoo 19: Chỉ tham chiếu `LIBRARY/Odoo19docs/`.
    - Đối với Odoo 18: Chỉ tham chiếu `LIBRARY/Odoo18docs/`.
    - Đối với Odoo 16: Chỉ tham chiếu `LIBRARY/Odoo16docs/`.
- **Fallback**: Nếu dự án không có trong Mapping, hãy kiểm tra `version` trong `__manifest__.py` hoặc hỏi người dùng trước khi tra cứu tài liệu.
- **Config Awareness**: Kiểm tra file `.conf` tương ứng trong `ODOO/CONF/` để hiểu rõ môi trường chạy thực tế của dự án.

## 7. JS Coding Standards (Odoo Web)

- **Clean Code**: Khi lập trình Javascript (OWL, Services, Widgets), luôn tách logic thành các hàm bổ trợ (helper functions) riêng biệt.
- **Bảo trì**: Không viết các hàm quá dài. Mỗi hàm chỉ nên thực hiện một nhiệm vụ duy nhất để mã nguồn sạch sẽ và dễ quản lý hơn.
- **Comment**: Luôn sử dụng Tiếng Anh cho mọi comment và giải thích bên trong mã nguồn.

## 8. Accessibility Guidelines

- **Mandatory Reference**: Khi triển khai code Odoo (đặc biệt là Views và Frontend/Website), bắt buộc tham chiếu notebook **"Web Accessibility"** của người dùng.
- **Consultation**: Sử dụng skill `notebooklm` để truy vấn notebook này nhằm đảm bảo tuân thủ các tiêu chuẩn về khả năng truy cập (A11y).
