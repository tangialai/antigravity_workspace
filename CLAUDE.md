# CLAUDE.md — Ryan Tanmai Workspace

> **Antigravity Workspace** — Đây là file cấu hình chính cho Claude Code.
> Claude phải đọc file này và tuân thủ toàn bộ nội dung trước khi thực hiện bất kỳ hành động nào.

---

## 1. Quy tắc toàn cục

**BẮT BUỘC khi bắt đầu session**, Claude PHẢI đọc theo thứ tự:

1. `.agent/rules.md` — quy tắc master cho mọi hành vi
2. `DASHBOARD.md` — trạng thái workspace, active tasks, next steps
3. `.agent/_index.md` — danh sách skills & workflows (xem Mục 3)

---

## 2. Cấu trúc thư mục Antigravity

Workspace này sử dụng cấu trúc tùy chỉnh của **Antigravity**. Claude phải hiểu và tôn trọng các thư mục sau:

```
WORKSPACE/
├── CLAUDE.md                  ← File này (auto-loaded bởi Claude Code)
├── .agent/
│   ├── rules.md               ← Quy tắc master (PHẢI đọc khi bắt đầu session)
│   ├── skills/                ← Thư viện kỹ năng chuyên biệt
│   │   └── <skill-name>/
│   │       └── SKILL.md       ← Đọc file này để nạp skill
│   ├── workflows/             ← Workflow definitions (slash commands)
│   │   └── <workflow>.md      ← Mỗi file = 1 workflow có thể gọi
│   ├── learning/              ← Tài nguyên học tập & nghiên cứu
│   └── resources/             ← Resources & reference materials
├── ODOO/                      ← Odoo projects (bắt buộc dùng skill odoo-mastery)
├── DOCKER/                    ← Docker services & internal tools
├── APPS/                      ← Standalone apps & tools
├── LOGS/                      ← Lịch sử milestone & completion logs
└── tmp/                       ← File tạm, draft, thử nghiệm (KHÔNG commit)
```

---

## 3. Skills & Workflows — Index

File `.agent/_index.md` được tự động cập nhật và chứa toàn bộ danh sách skills + workflows hiện có (đã đọc ở Mục 1).

**Quy tắc áp dụng skill:**
- Khi task liên quan đến skill nào → đọc toàn bộ `.agent/skills/<name>/SKILL.md` rồi áp dụng
- Mọi session → nạp `agent-core`
- Mọi file trong `ODOO/` → nạp `odoo-mastery`
- `Dockerfile`/`docker-compose` → nạp `docker-expert`

**Quy tắc chạy workflow:**
- User gọi tên workflow → đọc `.agent/workflows/<name>.md` và thực thi đúng nội dung

---

## 5. Domain Rules

### ODOO Path (`/WORKSPACE/ODOO/`)
- Mọi file trong đây → bắt buộc nạp skill `odoo-mastery`
- Tham chiếu source gốc tại `ODOO/REFERENCES/`
- Tra cứu nhanh tại `ODOO/LIBRARY/Odoo19docs/`

### DOCKER Path (`/WORKSPACE/DOCKER/`)
- Nạp skill `docker-expert`
- Giữ cấu trúc ngăn nắp theo từng thư mục dự án riêng biệt

### APPS Path (`/WORKSPACE/APPS/`)
- Standalone apps, tools thử nghiệm
- Không để rác tại thư mục gốc WORKSPACE

---

## 6. Ngôn ngữ

- **Giao tiếp với user**: Tiếng Việt
- **Code, comment, tên biến/hàm**: Tiếng Anh
- **README.md**: Tiếng Anh
- **Artifacts (plan, report, task)**: Tiếng Việt
