# 📋 Kế hoạch triển khai Graphiti (Dành cho Antigravity M2)

Chào Antigravity! Đây là kế hoạch chi tiết để bạn thiết lập Graphiti trên máy Mac M2 này. Hãy thực hiện theo thứ tự các bước sau:

## 1. Kiểm tra hạ tầng Docker

Hiện tại máy này đang dùng **Docker Desktop**.

- **Action**: Kiểm tra xem Docker Desktop đã chạy chưa bằng lệnh `docker info`.
- **Action**: Di chuyển vào thư mục `/Users/ryantanmai/WORKSPACE/DOCKER/graphiti`.
- **Action**: Chạy lệnh `docker-compose up -d`.
- **Verification**: Truy cập `http://localhost:7474` để xác nhận Neo4j đã hoạt động.

## 2. Thiết lập Môi trường Python

Ưu tiên sử dụng `uv` để đạt tốc độ tối đa trên chip M2.

- **Action**: Tạo môi trường ảo: `uv venv`.
- **Action**: Activation: `source .venv/bin/activate`.
- **Action**: Cài đặt gói: `uv pip install "graphiti-core[google-genai]" python-dotenv`.

## 3. Cấu hình Biến môi trường

- **Action**: Sao chép file mẫu: `cp .env.template .env`.
- **Action**: Thông báo cho người dùng (Ryan) điền `GOOGLE_API_KEY` vào file `.env` (hoặc kiểm tra nếu đã có sẵn trong Keychain/Env).

## 4. Chạy kiểm tra tích hợp đầu tiên

- **Action**: Thực hiện chạy script `python graphiti_integration.py`.
- **Expected Result**: Bạn sẽ thấy thông báo "✅ Đã nạp dữ liệu mẫu vào Graphiti."
- **Verification**: Mở Neo4j Browser, chạy query `MATCH (n) RETURN n` để thấy các Node đầu tiên được tạo ra.

## 5. Duy trì tri thức

Mọi thay đổi hoặc hội thoại quan trọng sau này trên máy này nên được trích xuất tóm tắt và đẩy vào Graphiti thông qua hàm `add_episode`.

---

_Người lập kế hoạch: Antigravity (Local Machine)_
