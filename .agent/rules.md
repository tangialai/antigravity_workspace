# Global Agent Rules

Bạn là trợ lý AI chuyên gia của Ryan Tan. Mọi hành động phải tuân theo các quy tắc "Master" sau:

## 6. Skill Integration (Antigravity Skills)

Hệ thống đã được trang bị các Skill chuyên dụng. Agent **PHẢI** nạp và sử dụng các skill sau khi xử lý các yêu cầu tương ứng:

- **`agent-core`**: Master engine for Antigravity behavior, session management, and adaptive communication.
- **`clean-coding`**: Master standards for clean, maintainable, and efficient code. Replaces legacy `clean-code`, `python-patterns`, and `api-patterns`.
- **`docker-expert`**: Sử dụng khi làm việc với Dockerfile hoặc Docker Compose của Odoo/n8n.
- **`mermaid-expert`**: Chuyên gia vẽ sơ đồ Mermaid và kiến trúc C4.
- **`odoo-mastery`**: Chuyên gia Odoo 19+, EDI integration và testing. Replaces `odoo-skill` and testing skills.
- **`postgres-best-practices`**: Tối ưu hóa Database, viết query SQL hiệu năng cao.
- **`ui-ux-pro-max`**: Tham khảo khi thiết kế giao diện, chọn palette màu, layout.
- **`workflow-automation`**: Thiết kế workflow n8n bền vững, xử lý lỗi.

- **ODOO Path**: Mọi file nằm trong thư mục `/Users/ryantanmai/WORKSPACE/ODOO` đều được mặc định là liên quan đến Odoo. Khi làm việc tại đây, Agent **PHẢI** luôn nạp skill `odoo-mastery` và tuân thủ các quy tắc tại Mục 6.
- **DOCKER Path**: Thư mục `/Users/ryantanmai/WORKSPACE/DOCKER` chứa các dự án nội bộ, công cụ chuyên dụng (như Graphiti) và cấu hình Docker tập trung. Agent **PHẢI** giữ cấu trúc ngăn nắp theo từng thư mục dự án riêng biệt bên trong.

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
- **Temporary Files (Scratchpad)**: Mọi file tạm, file nháp, hoặc file phục vụ phân tích/thử nghiệm (không chính thức) **BẮT BUỘC** phải được lưu vào thư mục `/Users/ryantanmai/WORKSPACE/tmp`. Không tạo file rác trong source code chính.

## 7. Odoo Team Working Standards (MANDATORY)

Tất cả các Agent và thành viên team **PHẢI TUÂN THỦ TUYỆT ĐỐI** bộ quy tắc chuyên môn (Protocol) sau:

1.  **Skill & Library First**: Mỗi khi bắt đầu task Odoo, Agent **PHẢI** nạp skill `odoo-mastery` và ưu tiên tra cứu tài liệu tóm tắt nhanh tại `/Users/ryantanmai/WORKSPACE/ODOO/LIBRARY/Odoo19docs/`.
2.  **Strict Reference**: Tuyệt đối không viết logic "mò". Phải đối chiếu chính xác hàm/view gốc tại `/Users/ryantanmai/WORKSPACE/ODOO/REFERENCES/`.
3.  **Cross-Review Checklist**: Trước khi hoàn thành, hãy tự kiểm tra mã nguồn dựa trên bảng "Weighted Audit Scoring" (Mục 13) của skill `odoo-mastery`.
4.  **No Exceptions in Linting**: Mọi đoạn code Python/JS mới phải tuân thủ chuẩn clean-coding.
5.  **Single Source of Truth**: `odoo-mastery` SKILL.md là chuẩn mực cao nhất. Nếu có mâu thuẫn giữa các file quy tắc, hãy ưu tiên tuân theo hướng dẫn trong SKILL.md.
