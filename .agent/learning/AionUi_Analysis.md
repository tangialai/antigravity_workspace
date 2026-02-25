# 🚀 Báo Cáo Nghiên Cứu AionUi

**Tài nguyên**: [iOfficeAI/AionUi](https://github.com/iOfficeAI/AionUi)

## 1. Tính năng (Features)

- **Built-in Agent Engine**: Có sẵn công cụ AI, không cần cài đặt CLI Agent rời rạc. Cài là chạy ngay (Zero Configuration).
- **Multi-Agent Mode**: Hỗ trợ chạy các CLI Agent ngoài song song (Claude Code, Codex, Qwen Code, Goose AI, v.v.) ngay trên cùng một giao diện hiển thị. Có thể tạo nhiều tab trò chuyện độc lập.
- **MCP Unified Management**: Hỗ trợ chuẩn kết nối Model Context Protocol, cấu hình công cụ một lần và các agent sẽ tự động chia sẻ kết nối đó (Sync).
- **Scheduled Tasks**: Có thể thiết lập AI chạy các tác vụ theo giờ tự động 24/7 (VD: mỗi tuần tải báo cáo doanh số về và tổng hợp) giúp "Cowork trên autopilot".
- **Preview Panel hiện đại**: Xem song song kết quả ngay trong App mà không cần chuyển qua lại. Hỗ trợ hơn 10 định dạng (UI Code, Markdown, Office, Diff, HTML). Có cả lưu lịch sử phiên bản kiểu Git.
- **Smart File & Data Management**: Đọc/ghi file, xử lý tự động phân loại theo folder, gộp file, sửa tên hàng loạt, xử lý dữ liệu phức tạp từ Excel và PDF bằng natural language.
- **Hỗ trợ model toàn diện**: Mọi API key miễn là tương thích OpenAI, Anthropic, Gemini, Ollama, DeepSeek hay NewAPI đều dùng được.
- **Custom Skills/Assistants**: Cung cấp sẵn các chuyên gia "Assistant" như UI/UX Pro Max, 3D Game, PPT Generator... và cho phép tạo thêm cấu hình theo mong muốn.

## 2. Cách dùng (Usage)

1. **Cài đặt**: Dành cho macOS, chỉ việc chạy lệnh `brew install aionui` (Hoặc tải cho Windows / Linux qua repos).
2. **Cấu hình**: Mở app `AionUi`, đăng nhập bằng tài khoản Google hoặc nhập API Key tự do (không yêu cầu cài đặt rườm rà).
3. **Thao tác**: Nhắn tin với AI trong giao diện để thực thi công việc trên tệp, hoặc cấu hình MCP config cho các Agent ngoài thông qua file Setting của AionUi.
4. **Viết kỹ năng**: Các kỹ năng mở rộng chỉ đơn giản là các file `.md` viết theo mẫu cấu trúc lập trình đặt tại thư mục `skills/` hoặc `assistant/`.

## 3. Cách ứng dụng cho công việc hiện tại (Application to Current Work)

- **Tập trung tất cả CLI Tools**: Ở cương vị một lập trình viên Odoo sử dụng nhiều command-line agent (như Claude Code tham chiếu từ Odoo Skills hiện tại), AionUi làm giao diện hoàn hảo để quan sát các lệnh này thực thi, đồng thời làm việc với nhiều repository song song trên giao diện dễ nhìn.
- **Tự động hóa nhiệm vụ ngầm**: Hẹn lịch tự chạy script Python, hoặc cập nhật git repo tự động mỗi buổi sáng, xuất báo cáo từ file excel gửi vào hòm thư nội bộ.
- **Cấu hình thống nhất**: Quá nhiều plugin AI cho Terminal hay Odoo module khiến việc quản lý API key và công cụ MCP bị rối. AionUi giúp "cắm" một MCP duy nhất (như database connector Postgres hay Jira plugin) để mọi Agent đều dùng chung.
- **Hỗ trợ quản lý File Logs**: Giao diện preview giúp mở theo dõi log Odoo và preview file ảnh, diff patches do model AI xuất ra mà không cần qua app phụ.

## 4. Vận dụng tri thức (Knowledge Application)

- **Tư duy kết hợp (Unified AI Hub)**: Ý tưởng "Biến một App thành HUB cho mọi CLI Agent" là bài học tư duy tốt. Thay vì buộc người dùng bỏ Claude Code để dùng platform mới, AionUi tận dụng việc _Bao bọc (Wrap)_ chúng lại để cải thiện trải nghiệm mặt hình ảnh và tính song song (Concurrency).
- **Thiết kế hướng luồng công việc (Workflow-first)**: Khả năng "lên lịch" biến tool không chỉ là Chatbot mà thành _Bản sao nhân viên làm việc 24/7 / Cronjob chạy bằng tư duy_.

## 5. Tiện ích hiệu quả trong công việc và đời sống (Utility in Work and Life)

- Việc sử dụng công cụ đọc được nhiều định dạng nội tiếp (đặc biệt MS Office / PDF) giúp tiết kiệm từ 1 đến 2 tiếng mỗi ngày thao tác với báo cáo.
- AI sẽ tự giám sát folder Tải xuống (Downloads), tự tổ chức, phân loại, chuyển file và đổi tên cho gọn gàng - tiết kiệm cực nhiều thao tác lặp lại trong đời sống cá nhân.
- Đồng bộ hệ thống làm việc ở nhà bằng tính năng "Remote Access" và làm nhiều việc một lúc nhờ tính song song, giúp x2 tốc độ phản hồi so với chờ 1 Agent chạy lệnh.

## 6. Giúp kiếm thêm nguồn thu nhập (Income Generation Potential)

- **Freelance / Consulting**: Với gói trợ lý UI/UX Pro Max hay PPTX Generator tự động tạo slide chuyên nghiệp, có thể nhận thêm job phụ về trình bày dự án, thiết kế slide, hoặc báo cáo tài chính.
- **Bán giải pháp "Coworker"**: Thay vì giới thiệu khách hàng mua Odoo có cài AI chatbot, có thể triển khai hệ thống nội bộ chạy AionUi + Ollama cung cấp "nhân viên xử lý hồ sơ/excel ẩn" cho các phòng hành chính nhân sự tại doanh nghiệp.
