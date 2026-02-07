# Auto-Logging Workflow

Workflow này giúp Antigravity tự động ghi nhật ký mà không cần user nhắc nhở.

## Trigger
- Được kích hoạt tự động sau khi hoàn thành bất kỳ task lớn nào (Task Boundary status = Completed).

## Các bước thực hiện
1. **Tổng hợp**: Antigravity tự đọc lại các thay đổi vừa thực hiện.
2. **Ghi Log**: Tạo một file mới trong `LOGS/` với định dạng `YYYY-MM-DD_TaskName.md`.
3. **Cập nhật Dashboard**: Mở `DASHBOARD.md` và thêm một dòng vào bảng "Recent Milestones".

## Ví dụ
Khi hoàn thành task "Tạo module CRM", Antigravity sẽ:
- Tạo `LOGS/2026-01-27_Create_CRM_Module.md`.
- Thêm dòng "- 2026-01-27: Hoàn thành module CRM v1.0" vào Dashboard.
