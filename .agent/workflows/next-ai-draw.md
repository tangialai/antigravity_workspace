---
description: Tạo và vẽ biểu đồ Draw.io chuyên nghiệp tự động bằng AI
---

# Next AI Draw Workflow

Workflow này giúp bạn dễ dàng chuyển đổi các ý tưởng, mã nguồn, cấu trúc database hoặc kiến trúc hệ thống thành biểu đồ trực quan (Draw.io) thông qua AI.

## 1. Phân tích Yêu cầu

Khi người dùng gọi `/next-ai-draw [Mô tả biểu đồ hoặc Tên file code]`:

- **Xác định loại biểu đồ**: ERD (Thực thể), Flowchart (Luồng quy trình), Sequence Diagram (Trình tự), Cloud Architecture, Mindmap.
- **Thu thập dữ liệu**: Nếu người dùng yêu cầu vẽ từ code (mặc định Odoo/Python), sử dụng `view_file` để đọc code và hiểu rõ luồng logic/quan hệ dữ liệu trước khi vẽ.

## 2. Chuẩn bị File System

- Mặc định lưu file vào thư mục `docs/diagrams/` trong thư mục gốc của dự án hiện tại (hoặc `/Users/ryantanmai/WORKSPACE/docs/diagrams/` nếu không nói rõ).
- Tooling: Dùng `run_command` để `mkdir -p` thư mục chứa nếu nó chưa tồn tại.
- Định dạng xuất: Tên file snake_case, đuôi `.drawio` (VD: `sale_order_workflow.drawio`).

// turbo

## 3. Quá trình Thực thi (Generation)

AI sẽ tạo biểu đồ theo một trong 2 phương pháp:

**Phương pháp A (Ưu tiên): Dùng công cụ MCP**
Nếu Agent đang chạy trong môi trường đã nạp sẵn MCP tool (như Cursor/Claude Desktop có tool `drawio`), hãy gọi tool đó để ra lệnh render theo đúng chuẩn Next AI Draw.io.

**Phương pháp B (Native Agent Code Generation):**
Nếu không có tool MCP, Agent **BẮT BUỘC** tự dùng khả năng suy luận để tạo mã XML chuẩn `mxGraphModel` của nền tảng Draw.io.

- Thiết kế các khối (`mxCell` hình chữ nhật, oval, database) và đường nối (Edges).
- Sử dụng công cụ `write_to_file` để ghi toàn bộ mã XML này trực tiếp vào file `.drawio`.

_Mẫu XML cơ bản:_

```xml
<mxfile host="Electron">
  <diagram id="diagram-1" name="Page-1">
    <mxGraphModel dx="1000" dy="1000" grid="1" gridSize="10" guides="1" tooltips="1" connect="1" arrows="1" fold="1" page="1" pageScale="1" pageWidth="827" pageHeight="1169" math="0" shadow="0">
      <root>
        <mxCell id="0" />
        <mxCell id="1" parent="0" />
        <!-- Các node và nối kết của AI được sinh ra tại đây -->
      </root>
    </mxGraphModel>
  </diagram>
</mxfile>
```

## 4. Hoàn tất & Hướng dẫn

- Thông báo cho người dùng đường dẫn tuyệt đối của file `.drawio` vừa tạo.
- Hướng dẫn nhanh: "Bạn có thể mở trực tiếp file này ngay trên VSCode/Cursor bằng extension **Draw.io Integration** để kéo thả và chỉnh sửa tiếp."
