# 🏛️ DESIGN: eVA cXML Integration (Layered Architecture)

**Phiên bản:** 3.0 (Layered Solution)
**Tác giả:** Antigravity Odoo Architect - `@[/awf_odoo_solution]`
**Ngày:** 2026-02-07

---

## 1. Kiến Trúc Phân Lớp (Layered Architecture)

Chúng ta sẽ tách giải pháp thành 2 tầng rõ rệt để đảm bảo tính module hóa và dễ mở rộng.

### 1.1. Lớp Core (`vib_eva_integration`)

**Nhiệm vụ:** Đóng vai trò là "Cổng giao tiếp" (Gateway) và "Hạ tầng" (Infrastructure).

- **HTTP Controller:** Tiếp nhận POST request, xác thực `SharedSecret`.
- **Logging:** Ghi lại mọi payload cXML (`eva.integration.log`).
- **Parsing Engine:** Thư viện parse cXML cơ bản (Header, Credential, Money).
- **Router:** Điều phối bản tin đến đúng module tính năng.
- **Config:** Cấu hình Secret, Endpoint, Debug mode.

### 1.2. Lớp Features (Tính năng nghiệp vụ)

Các module này sẽ phụ thuộc vào Core và thực hiện logic nghiệp vụ cụ thể.

- **`vib_eva_sale`**:
    - Processor: Xử lý `OrderRequest` -> Tạo **Sale Order**.
    - Logic: Mapping Partner/Product/Pricing cho luồng bán hàng.
- **`vib_eva_purchase`**:
    - Processor: Xử lý `OrderRequest` -> Tạo **Purchase Order**.
    - Logic: Xử lý khi Odoo là bên mua.
- **`vib_eva_invoice`**: (Tương lai)
    - Xử lý `InvoiceDetailRequest`.

---

## 2. Luồng Điều Phối (The Dispatcher Flow)

Khi một bản tin cXML bay tới:

1.  **`vib_eva_integration` (Controller)**:
    - Nhận cXML.
    - Check Authentication.
    - Tạo Log.
    - Bóc tách `doc_type` (VD: `OrderRequest`).
2.  **Dispatcher**:
    - Tìm xem có Processor nào đăng ký xử lý `OrderRequest` không.
    - Thông qua Odoo Registry / hook để gọi module `vib_eva_sale` hoặc `vib_eva_purchase`.
3.  **Feature Module**:
    - Thực hiện tạo record.
    - Trả về kết quả cho Core để Core đóng gói thành cXML Response gởi lại eVA.

---

## 3. Thiết Kế Dữ Liệu (Data Modeling)

### 3.1. Lớp Core (`vib_eva_integration`)

- `eva.integration.log`: (Hộp đen) - Lưu raw data.
- `eva.cxml.processor`: (Abstract Model) - Khung sườn cho các processor con.

### 3.2. Lớp Sale (`vib_eva_sale`)

- `res.config.settings`: Thêm mapping ShipTo/BillTo, Ad-hoc product.
- `sale.order`: Thêm các field tracking PO của eVA.

---

## 4. Ưu Điểm của Giải Pháp Này

- **Tính Độc Lập:** Nếu anh chỉ cần Bán hàng, chỉ cài Core + Sale. Nếu sau này cần Mua hàng, cài thêm module Purchase mà không phải sửa code Core.
- **An Toàn:** Lỗi ở module Sale sẽ không làm sập Controller của Core. Logger vẫn ghi lại được lỗi để debug.
- **Tái Sử Dụng:** Các module Feature cùng dùng chung bộ parse XML và hệ thống log của Core.

---

## 5. Danh Sách Module Đề Xuất

1.  **`vib_eva_integration`**: [NEW] - Base Connection & Framework.
2.  **`vib_eva_sale`**: [NEW/REFACTORED] - Chỉ chứa nghiệp vụ Sales. Không chứa code HTTP/Logs.
3.  **`vib_eva_purchase`**: [NEW] - Chỉ chứa nghiệp vụ Purchase.

---

## 🚀 Handoff

```
✅ Design v3.0 (Layered) đã hoàn tất.

🏗️ **Cấu trúc:** Core (Infrastructure) -> Features (Business).
🎯 **Sạch sẽ:** Đúng chuẩn quy trình phát triển module chuyên nghiệp của Novobi/Odoo.

👉 **Ready to Scaffolding?**
Anh gõ `/dev` để em bắt đầu tạo 2 module: `vib_eva_integration` (Core) và `vib_eva_sale` (Feature đầu tiên).
```
