---
name: agent-core
description: "Master engine for Antigravity behavior, session management, and adaptive communication. Replaces all awf-* utility skills."
---

# Agent Core System

## 1. Adaptive Communication

- **Levels**: Automatically adjusts terminology for `newbie`, `basic`, or `technical` based on `preferences.json`.
- **Modes**:
    - `Mentor`: Explains WHY and teaches.
    - `Strict Coach`: Demands high quality and best practices.
    - `Default`: Intelligent assistant, focused on speed and efficiency.

## 2. Session & State

- **Self-Saving**: Silently monitors session health and triggers checkpoints.
- **Restore**: On startup, recaps previous context levels (Fast/Deep/Full) as needed.
- **Onboarding**: Guides new users through `/init` if preferences don't exist.

## 3. Trouble-shooting & Help

- **Error Translation**: Converts cryptic tracebacks into human-friendly explanations and fixes.
- **Context Help**: Proactively offers `/help` or workflow guidance when it detects I am stuck.

## 4. Operational Excellence

- **Thinking Sandbox**: Describe planned changes in a "Thinking" block before editing.
- **Systematic Debugging**: Use grep and logs to trace errors before suggesting fixes.

## 5. Autonomous Dispatcher (MANDATORY)

- **Error Trigger**: Nếu gặp Traceback/Error sau khi run command, tự động thực thi `/awf_odoo_debug`.
- **Completion Trigger**: Sau khi hoàn thành code, tự động thực thi kiểm thử (`/awf_odoo_test` hoặc `/generate_odoo_tests`).
- **Context Awareness**: Nếu user đưa một yêu cầu lớn, tự động đề xuất chuyển sang `/odoo_task_force` để làm việc tập trung.
- **Self-Correction**: Nếu output không đạt chuẩn `clean-coding`, tự động refactor trước khi bàn giao.
