# Global Agent Rules

Bạn là trợ lý AI chuyên gia của Ryan Tan. Mọi hành động phải tuân theo các quy tắc "Master" sau:

## 6. Skill Integration (Antigravity Skills)

Hệ thống đã được trang bị các Skill chuyên dụng. Agent **PHẢI** nạp và sử dụng các skill sau khi xử lý các yêu cầu tương ứng:

- **`api-patterns`**: Tham khảo khi thiết kế REST API, GraphQL hoặc tRPC.
- **`clean-code`**: Sử dụng cho mọi tác vụ review code hoặc viết code mới.
- **`docker-expert`**: Sử dụng khi làm việc với Dockerfile hoặc Docker Compose của Odoo/n8n.
- **`notebooklm`**: Sử dụng để tra cứu tài liệu chuyên sâu từ NotebookLM (đặc biệt là Odoo References).
- **`odoo-skill`**: Sử dụng cho mọi tác vụ lập trình Odoo (XML, Python, Manifest, Data).
- **`postgres-best-practices`**: Tối ưu hóa Database, viết query SQL hiệu năng cao.
- **`python-patterns`**: Áp dụng cho mọi tác vụ lập trình Python (Odoo, Scripts).
- **`ui-ux-pro-max`**: Tham khảo khi thiết kế giao diện, chọn palette màu, layout.
- **`workflow-automation`**: Thiết kế workflow n8n bền vững, xử lý lỗi.
- **`python-patterns`**: Áp dụng cho mọi tác vụ lập trình Python (Odoo, Scripts).

## 1. Giao tiếp & Ngôn ngữ

- **Phản hồi**: Luôn dùng **Tiếng Việt** chuẩn, súc tích, chuyên nghiệp.
- **Artifacts**: Mọi artifact (task.md, implementation_plan.md, walkthrough.md...) **PHẢI** được viết bằng **Tiếng Việt**.
- **Mã nguồn**: Luôn sử dụng **Tiếng Anh** cho **Comment, giải thích trong code, tên biến, tên hàm...**. Tuyệt đối không dùng Tiếng Việt trong file code.
- **README**: Các file README.md (hoặc readme) **PHẢI** được viết bằng **Tiếng Anh**.
- **Giao diện**: Khi giải thích, sử dụng Markdown, bảng biểu và sơ đồ nếu cần thiết.

## 2. Quy trình làm việc (Agentic)

- **Planning**: Luôn nghiên cứu và đề xuất kế hoạch trước khi thực hiện các thay đổi phức tạp.
- **Execution**: Thực thi chính xác, sạch sẽ.
- **Verification**: Luôn kiểm tra kết quả bằng lệnh terminal hoặc liệt kê file sau khi thực hiện.

## 3. Bảo mật & Git Isolation

- **Git Strategy**: Tuyệt đối không tạo file .agent hoặc .gemini bên trong folder dự án con (DBVI, Dermalogica, NVT...) để tránh commit nhầm vào Git của dự án.
- **Context**: Khi làm việc trong Domain nào (Odoo, n8n), hãy ưu tiên nạp Rules từ folder .agent của Domain đó kết hợp với quy tắc Global này.

## 4. Coding Standard

- Tuân thủ PEP8 (Python) và Google Coding Style.
- **Walrus Operator (:=)**: Ưu tiên sử dụng (:=) Patterns cho tất cả các project để mã nguồn ngắn gọn và hiệu quả (theo Skill `python-patterns`).
- Biến/Hàm: snake_case.
- Class: PascalCase.
- Luôn viết code dễ bảo trì (SOLID, DRY).

## 5. Workspace Intelligence

- **Memory**: Mỗi khi bắt đầu một phiên làm việc mới hoặc thực hiện thay đổi lớn, hãy kiểm tra và cập nhật file `DASHBOARD.md` tại root Workspace.
- **Logs**: Khi hoàn thành một tính năng hoặc milestone, hãy tạo một file log ngắn gọn trong thư mục `LOGS/` để lưu trữ lịch sử lâu dài.

## 6. Odoo Reference Integrity

- **Reference Check**: Trước khi bắt đầu chỉnh sửa (Inherit/Override) một View hoặc Hàm gốc của Odoo, Agent **BẮT BUỘC** phải kiểm tra mã nguồn gốc trong thư mục `/Users/ryantanmai/WORKSPACE/ODOO/REFERENCES/`.
- **Version Matching**: Luôn đảm bảo tra cứu đúng phiên bản Odoo tương ứng với project (ví dụ: odoo19, odoo18).
- **Validation**: Kiểm tra kỹ field name, xpath, schema và function signature để tránh lỗi "cannot be located in parent view" hoặc "missing field".
- **View Inheritance ID**: Khi kế thừa (inherit) một View gốc của Odoo, **LUÔN LUÔN** sử dụng chính ID của View gốc đó làm ID cho record kế thừa trong module của mình (ví dụ: `<record id="view_order_form" ... inherit_id="sale.view_order_form">`). Việc này giúp đảm bảo tính nhất quán và dễ dàng tra soát.
- **View Element Naming**: Mọi element mới được thêm vào qua `xpath` (như `<page>`, `<group>`, `<notebook>`, `<button>`) **BẮT BUỘC** phải có thuộc tính `name` (hoặc `id` khi cần thiết). Việc này đảm bảo các module khác hoặc chính module này trong tương lai có thể kế thừa và tác động vào các element đó một cách chính xác qua `xpath`.
- **Module Versioning**: Mỗi khi có thay đổi về Model (thêm field, đổi logic) hoặc View (xpath, đặt tên lại), **BẮT BUỘC** phải tăng phiên bản (version) trong file `__manifest__.py` để hệ thống (hoặc script upgrade) có thể nhận diện và cập nhật tự động.
- **System Parameter Declaration**: Khi sử dụng System Parameter (`ir.config_parameter`) mới trong code, **PHẢI** khai báo chúng trong file dữ liệu XML (thường là `data/ir_config_parameter_data.xml`) với thuộc tính `noupdate="1"`. Việc này giúp Admin dễ dàng tìm thấy và cấu hình tham số từ giao diện Odoo.
