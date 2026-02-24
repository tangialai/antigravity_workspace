---
description: Nghiên cứu tài liệu thông qua Google NotebookLM với tốc độ cao (API) và dự phòng (Browser).
---

# NotebookLM Research Assistant Skill (Integrated)

Sử dụng thư viện `notebooklm-py` để truy vấn tài liệu với Gemini. Ưu tiên sử dụng API để đạt tốc độ cao nhất. Nếu có lỗi, hệ thống sẽ tự động dùng phương thức trình duyệt cũ.

## Khi nào sử dụng Workflow này

- Khi người dùng muốn đặt câu hỏi cho tài liệu của họ.
- Khi cần tạo nội dung (audio, video, quiz...) tự động.
- Khi cần liệt kê hoặc quản lý các Notebook.

## 🚀 CÁCH DÙNG ƯU TIÊN (API-based)

Đây là phương thức nhanh nhất, phản hồi trong vài giây.

```bash
# Liệt kê các notebook
notebooklm list

# Đặt câu hỏi (Sử dụng notebook hiện tại)
notebooklm ask "Câu hỏi của bạn ở đây"

# Đặt câu hỏi cho một notebook cụ thể
notebooklm ask "Câu hỏi" --notebook <notebook_id>

# Tạo Audio Overview (Podcast)
notebooklm generate audio "làm nó thật hấp dẫn" --wait

# Tải kết quả
notebooklm download audio ./report.mp3
```

## 🛠️ CÁCH DÙNG DỰ PHÒNG (Workflow cũ - Browser-based)

Sử dụng khi API gặp sự cố hoặc cần login lại.

```bash
# Kiểm tra login
python scripts/run.py auth_manager.py status

# Đăng nhập lại
python scripts/run.py auth_manager.py setup

# Hỏi đáp qua trình duyệt
python scripts/run.py ask_question.py --question "..."
```

## Quy trình làm việc tự động (Workflow)

### Bước 1: Liệt kê & Chọn Notebook

Sử dụng `notebooklm list` để xem ID. Sau đó dùng `notebooklm use <id>` để cố định notebook.

### Bước 2: Truy vấn dữ liệu

Hỏi trực tiếp bằng `notebooklm ask "..."`.

### Bước 3: Tạo & Tải Artifact

Nếu cần tạo Podcast/Quiz, dùng lệnh `generate`.

## Quy định cho Antigravity (AI)

1. **Luôn ưu tiên lệnh CLI**: Dùng trực tiếp lệnh `notebooklm ...`.
2. **Xử lý lỗi**: Nếu lệnh CLI báo lỗi xác thực, hướng dẫn người dùng chạy `notebooklm login`.
3. **Phản hồi**: Tóm tắt kết quả nghiên cứu và dẫn nguồn đầy đủ.

---

> [!TIP]
> Bạn có thể dùng `/notebooklm` hoặc gọi tên mình và yêu cầu nghiên cứu tài liệu.
