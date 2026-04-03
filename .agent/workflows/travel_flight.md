---
description: Toàn bộ quy trình tối ưu hóa vé máy bay - Săn vé rẻ 30-66%
---

# Workflow: Travel Optimization Engine (Săn vé máy bay giá rẻ)

Workflow này giúp bạn tìm kiếm, phân tích và tối ưu hóa chi phí vé máy bay dựa trên bộ 8 AI Skills chuẩn Antigravity.

## Hướng dẫn thực hiện

### 1. Thu thập thông tin hành trình
Kiểm tra xem người dùng đã cung cấp đủ thông tin chưa (Điểm đi, Điểm đến, Ngày bay, Số lượng người).
Nếu thiếu, hãy hỏi thêm. Gợi ý người dùng cung cấp thêm độ linh hoạt (ví dụ: ±3 ngày) để tối ưu tốt nhất.

### 2. Kích hoạt Orchestrator Skill
Đọc file hướng dẫn chính của bộ skill để nắm bắt quy trình điều phối:
- **Đọc file**: `view_file .agent/skills/travel-optimization-engine/SKILL.md`

### 3. Thực hiện Phase 1: Tìm kiếm & Tối ưu ngày (Parallel)
Sử dụng các sub-skills để tìm kiếm:
1. **Date Optimization**: `view_file .agent/skills/travel-optimization-engine/skills/date-optimization/SKILL.md`
2. **Flight Search**: `view_file .agent/skills/travel-optimization-engine/skills/flight-search/SKILL.md`

Dựa trên kiến thức từ các file này, hãy thực hiện tìm kiếm (sử dụng Amadeus/Kiwi Client nếu có API, hoặc AI-Knowledge Mode nếu không có).

### 4. Thực hiện Phase 2: Phân tích sâu
Tiếp tục phân tích các yếu tố giảm giá:
- **Route Optimization**: `view_file .agent/skills/travel-optimization-engine/skills/route-optimization/SKILL.md` (Tìm Hub rẻ hơn).
- **Fee Analysis**: `view_file .agent/skills/travel-optimization-engine/skills/fee-analysis/SKILL.md` (Bóc tách phí ẩn).
- **Deals & Promos**: `view_file .agent/skills/travel-optimization-engine/skills/deals-verification/SKILL.md`.

### 5. Tổng hợp & Báo cáo
Tạo một báo cáo chi tiết (Travel Optimization Report) bao gồm:
- **Best Option**: Phương án rẻ nhất kèm theo số tiền tiết kiệm được.
- **Savings Breakdown**: Giải trình lý do tại sao phương án này rẻ (Lùi ngày, đổi Hub, áp mã giảm giá).
- **Risk Assessment**: Đánh giá độ rủi ro (với Hidden City hoặc Virtual Interlining).
- **Action Steps**: Hướng dẫn cụ thể để người dùng đặt vé.

// turbo
### 6. Log kết quả vào lịch sử
Ghi nhận kết quả tìm kiếm vào `.agent/learning/travel_searches.md` để tham khảo sau này.
