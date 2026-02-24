# Learning Resources Log

This file contains a log of researched resources, including their links and general descriptions.
New resources are appended to the end of this file by the `learning_research` workflow.

## Log

### [TalkCody - Free Open Source AI Coding Agent](https://github.com/talkcody/talkcody)

**Date**: 2026-02-14
**Description**: TalkCody là một AI Coding Agent mã nguồn mở, hoạt động song song đa luồng, hỗ trợ chạy local để bảo mật dữ liệu, và tích hợp với nhiều model AI khác nhau (OpenAI, Anthropic, Google, Local Models).
**Key takeaway**: Khả năng "Four-Level Parallelism" (xử lý song song cấp độ dự án, tác vụ, agent, công cụ) giúp tăng tốc độ phát triển phần mềm đáng kể so với các công cụ đơn luồng.

### [Fish Audio / Fish Speech](https://github.com/fishaudio/fish-speech)

**Date**: 2026-02-14
**Description**: Fish Speech là một mô hình Text-to-Speech (TTS) mã nguồn mở tiên tiến, hỗ trợ đa ngôn ngữ (Anh, Trung, Nhật, v.v.), nhân bản giọng nói zero-shot chỉ với 10-30s mẫu âm thanh, và kiểm soát cảm xúc giọng nói.
**Key takeaway**: Giải pháp TTS chất lượng cao, có thể tự host (self-hosted) để tích hợp vào các ứng dụng Python/Odoo mà không phụ thuộc vào API bên thứ ba đắt đỏ, miễn là có phần cứng GPU phù hợp.

### [AgentGPT - Autonomous AI Agents in Browser](https://github.com/reworkd/AgentGPT)

**Date**: 2026-02-14
**Description**: A project to assemble, configure, and deploy autonomous AI agents in your browser. Uses Next.js, FastAPI, Prisma, Docker, and OpenAI API. It allows agents to attempt goals by thinking of tasks, executing them, and learning from results.
**Key takeaway**: A full-stack example of integrating modern frontend (T3 Stack) with a Python AI backend (FastAPI + Langchain) to create autonomous agents.

### [PR-Agent - The Original Open-Source PR Reviewer](https://github.com/qodo-ai/pr-agent)

**Date**: 2026-02-14
**Description**: An open-source, AI-powered tool for automated code reviews. It works with GitHub, GitLab, and Bitbucket to generate PR descriptions, review code, suggest improvements, and answer questions about the changes. Supports multiple LLMs.
**Key takeaway**: Automating the PR review process can significantly reduce developer friction and catch bugs early, especially in complex Odoo modules.

### [SkillsMP - The Agent Skills Marketplace](https://skillsmp.com/search)

**Date**: 2026-02-14
**Description**: SkillsMP is a massive open-source library of 214,000+ "skills" (markdown files) for AI agents (Claude, Manus, etc.). It acts as a registry for sharing optimized prompts and workflows across the developer community.
**Key takeaway**: By using pre-packaged `SKILL.md` files as modular knowledge components, we can drastically enhance our AI agent's capabilities without complex coding, effectively "hiring" specialized experts for specific tasks.

### [Odoo 19 OCA DevOps Expert (SkillsMP/GitHub)](https://github.com/jgtolentino/insightpulse-odoo/tree/main/docs/claude-code-skills/odoo)

**Date**: 2026-02-14
**Description**: Kỹ năng chuyên sâu biến AI Agent thành chuyên gia Odoo 19 DevOps & Development theo chuẩn OCA. Hỗ trợ thay thế Odoo Enterprise bằng các module Community miễn phí, tự động hóa quy trình deploy (Docker, Nginx, Supabase), và quản lý dependency chuyên nghiệp.
**Key takeaway**: Giải pháp toàn diện để xây dựng hệ thống ERP Odoo 19 mạnh mẽ, tiết kiệm chi phí license (,000+/năm) bằng cách tận dụng hệ sinh thái mã nguồn mở OCA và quy trình DevOps hiện đại.

### [Mindrally Odoo Development Skill (SkillsMP/Playbooks)](https://skillsmp.com/skills/neversight-skills-feed-data-skills-md-mindrally-skills-odoo-development-skill-md)

**Date**: 2026-02-14
**Description**: Kỹ năng Odoo Development chuyên sâu từ Mindrally, tập trung vào các nguyên tắc cốt lõi của Odoo ORM, bảo mật (ACLs/Rules), tối ưu hiệu năng (SQL/prefetch), và cấu trúc module chuẩn Convention Over Configuration.
**Key takeaway**: Việc tuân thủ nghiêm ngặt các pattern như "Inheritance First", "Strict Directory Structure", và "Security by Design" là yếu tố then chốt để xây dựng hệ thống Odoo bền vững, dễ bảo trì và mở rộng.

### [Odoo 19 Skill - Master Index](https://skillsmp.com/skills/unclecatvn-agent-skills-skills-odoo-19-0-skill-md)

**Date**: 2026-02-14
**Description**: A master index skill that acts as a router to specific, detailed guides for Odoo 19 development topics (Actions, API, Views, etc.), structured for optimal AI agent consumption.
**Key takeaway**: Organizing complex documentation into a modular "Index -> Specific Guide" structure significantly improves retrieval accuracy and developer efficiency.

### [Odoo Knowledge Agent (InsightPulse)](https://github.com/jgtolentino/insightpulse-odoo)

**Date**: 2026-02-14
**Description**: Một bộ công cụ AI Agent và Scraper chuyên dụng cho Odoo, giúp thu thập các giải pháp từ Odoo Forum để xây dựng cơ sở tri thức (Knowledge Base) tự động. Hỗ trợ tạo "rào chắn lỗi" (guardrails) và kịch bản sửa lỗi tự động (auto-fix scripts) cho quy trình phát triển Odoo.
**Key takeaway**: Tận dụng trí tuệ cộng đồng (Collective Intelligence) từ diễn đàn Odoo để chuyển đổi quy trình debug từ thụ động sang chủ động (Proactive Error Prevention).

### [Odoo 19 OCA OWL Standards Skill](https://skillsmp.com/skills/insightpulseai-odoo-agent-skills-oca-owl-standards-skill-md)

**Date**: 2026-02-14
**Description**: Bộ kỹ năng (Skill) toàn diện về phát triển Frontend cho Odoo 19 dựa trên chuẩn OCA và framework OWL mới nhất. Bao gồm hướng dẫn chi tiết về Component Lifecycle, State Management (Reactive), Hooker, và Integration Patterns.
**Key takeaway**: Việc áp dụng chuẩn OCA cho OWL Component Structure giúp code frontend đồng bộ, dễ bảo trì và mở rộng, đặc biệt quan trọng khi custom UI phức tạp trong Odoo.

### [Odoo Migration Assistant (SkillsMP / GitHub)](https://skillsmp.com/skills/jamshu-jamshi-marketplace-plugins-odoo-dev-skills-odoo-migration-assistant-skill-md)

**Date**: 2026-02-14
**Description**: Hướng dẫn toàn diện để migrate module Odoo, đặc biệt tập trung vào các thay đổi API và cấu trúc khi nâng cấp lên Odoo 16.0 (Manifest, Assets, Widgets).
**Key takeaway**: Cung cấp checklist và pattern cụ thể để xử lý các vấn đề phổ biến như assets bundle mới và thay đổi widget.

### [Odoo CI/CD Optimization Skill](https://github.com/Insightpulseai/odoo/blob/main/.agent/skills/odoo-ci-optimization/SKILL.md)

**Date**: 2026-02-14
**Description**: Kỹ năng chuyên sâu về tối ưu hóa quy trình CI/CD cho Odoo, tập trung vào tăng tốc độ kiểm thử (boot time < 6s), chạy song song (Parallel Execution) và sử dụng Docker container siêu nhẹ (Minimal Image).
**Key takeaway**: Thay đổi tư duy từ "Full Installation" sang "Minimal Source Copy" và sử dụng Testcontainers giúp giảm thời gian chạy test Odoo từ 20 phút xuống vài phút.

### [Odoo Code Review Expert (unclecatvn)](https://skillsmp.com/skills/unclecatvn-agent-skills-agents-odoo-code-review-skill-md)

**Date**: 2026-02-14
**Description**: Kỹ năng chuyên sâu giúp AI thực hiện audit code Odoo 18, phát hiện lỗi N+1, lỗi bảo mật và đề xuất tối ưu hóa theo tiêu chuẩn hiện đại.
**Key takeaway**: Tự động hóa review code giúp đảm bảo chất lượng và chuẩn bị cho việc migration lên Odoo 18 hiệu quả.

### [Odoo Test Creator Skill (SkillsMP)](https://skillsmp.com/skills/jamshu-jamshi-marketplace-plugins-odoo-dev-skills-odoo-test-creator-skill-md)

**Date**: 2026-02-14
**Description**: Kỹ năng chuyên nghiệp để tạo bộ test suite cho Odoo 16.0 Enterprise, tuân thủ các quy tắc của dự án Siafa. Hỗ trợ xử lý các ràng buộc database phức tạp, CRUD, computed fields và onchange.
**Key takeaway**: Cung cấp các mẫu (templates) và best practices cụ thể để vượt qua các lỗi common pitfalls trong Odoo Enterprise (như NOT NULL constraints trên field sale_line_warn).

### [Odoo Code Reviewer Skill](https://skillsmp.com/skills/jamshu-jamshi-marketplace-plugins-odoo-dev-skills-odoo-code-reviewer-skill-md)

**Date**: 2026-02-14
**Description**: Công cụ tự động review mã nguồn Odoo, tập trung vào bảo mật (SQL Injection, XSS), hiệu năng ORM và tuân thủ các quy tắc của OCA.
**Key takeaway**: Giúp chuẩn hóa quy trình review code, giảm thiểu lỗi bảo mật nghiêm trọng và tối ưu hóa tốc độ xử lý của module Odoo.

### [Odoo Upgrade Assistant (Ahmed Lakosha)](https://github.com/ahmed-lakosha/odoo-upgrade-skill)

**Date**: 2026-02-14
**Description**: Kỹ năng chuyên sâu hỗ trợ nâng cấp module Odoo từ phiên bản 14 lên 19. Xử lý tự động và cung cấp pattern cho Manifest, XML Views (List/Kanban/Search), Python API (slug/url_for), và đặc biệt là thay thế RPC Service bằng fetch API trong Odoo 19.
**Key takeaway**: Odoo 19 loại bỏ hoàn toàn RPC service ở frontend công cộng, yêu cầu chuyển đổi sang native fetch API để tương tác với backend; đồng thời cấu trúc SCSS cho theme cũng thay đổi sang cơ chế map-merge chuyên sâu.

### [Odoo OCA Developer Skill (SkillsMP / GitHub)](https://skillsmp.com/skills/miquelalzanillas-odoo-oca-convention-skill-odoo-oca-developer-skill-md)

**Date**: 2026-02-14
**Description**: Kỹ năng chuyên sâu về phát triển, di chuyển (migration) và bảo trì module Odoo theo chuẩn OCA (Odoo Community Association). Cung cấp template module, hướng dẫn đặt tên, OpenUpgrade migration patterns và các công cụ kiểm định chất lượng code (pre-commit, validation scripts).
**Key takeaway**: Việc tuân thủ nghiêm ngặt các tiêu chuẩn OCA không chỉ giúp module dễ dàng di chuyển giữa các phiên bản Odoo thông qua OpenUpgrade mà còn đảm bảo chất lượng code chuyên nghiệp, nâng cao khả năng tái sử dụng và bảo trì lâu dài.

### [Odoo 19 Quality Control (QC) Skill](https://skillsmp.com/skills/tranvietphuoc-agent-skills-agent-skills-odoo-19-qc-skill-md)

**Date**: 2026-02-14
**Description**: Kỹ năng chuyên sâu về kiểm thử chất lượng (QA/QC) cho Odoo 19, bao gồm unit test, integration test, kiểm tra bảo mật và hiệu suất (N+1 queries). Hỗ trợ tự động hóa việc tạo TransactionCase và HttpCase theo tiêu chuẩn OCA.
**Key takeaway**: Luôn ưu tiên kiểm thử biên (boundary testing) và kiểm tra quyền truy cập (ACL) để đảm bảo hệ thống ổn định và bảo mật trong môi trường Docker.

### [notebooklm-py](https://github.com/teng-lin/notebooklm-py)

**Date**: 2026-02-24
**Description**: Unofficial Python API and CLI for Google NotebookLM, enabling programmatic access to research, content generation (podcasts, videos, etc.), and structured data export. Ships with Claude Code skills.
**Key takeaway**: Enables "Programmatic Research" and structured export of NotebookLM artifacts (JSON/Markdown) not available in the web UI.

### [Valtec Vietnamese TTS](https://github.com/tronghieuit/valtec-tts)

**Date**: 2026-02-24
**Description**: The lightest Vietnamese Text-to-Speech (74.8M parameters) with Zero-Shot Voice Cloning. Runs exclusively on CPU and is 4x faster than real-time.
**Key takeaway**: High-quality Vietnamese voice cloning is now accessible on entry-level hardware without requiring high-end GPUs, making it ideal for edge deployment or lightweight Python integrations.

### [Antigravity Awesome Skills](https://github.com/sickn33/antigravity-awesome-skills)

**Date**: 2026-02-24
**Description**: Bộ sưu tập hơn 930 kỹ năng agentic chất lượng cao cho các AI Coding Assistant như Claude Code, Gemini CLI, Cursor. Hỗ trợ đầy đủ từ lập trình, kiến trúc, bảo mật đến tự động hóa.
**Key takeaway**: Chuyển đổi AI Assistant từ một chatbot thông thường thành một "full-stack digital agency" với các protocol và workflow chuyên nghiệp.

### [Graphiti - Build Real-Time Knowledge Graphs for AI Agents](https://github.com/getzep/graphiti)

**Date**: 2026-02-24
**Description**: Graphiti là một framework mã nguồn mở dùng để xây dựng và truy vấn các Đồ thị Tri thức (Knowledge Graphs) có nhận thức về thời gian, được tối ưu riêng cho AI agents. Nó cho phép cập nhật dữ liệu theo thời gian thực mà không cần tính toán lại toàn bộ đồ thị, hỗ trợ truy vấn lịch sử chính xác.
**Key takeaway**: Khả năng "Bi-Temporal Data Model" và kiến trúc driver linh hoạt giúp AI agents không chỉ nhớ thông tin mà còn hiểu được sự thay đổi của các mối quan hệ theo dòng thời gian, vượt xa giới hạn của RAG truyền thống.
