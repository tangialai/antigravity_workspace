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
**Description**: Unofficial Python API and CLI for Google NotebookLM, enabling programmatic access to research, content generation (podcasts, videos, etc.), và structured data export. Ships with Claude Code skills.
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

### [OpenCTI - Open Cyber Threat Intelligence Platform](https://github.com/OpenCTI-Platform/opencti)

**Date**: 2026-02-24
**Description**: Nền tảng mã nguồn mở mạnh mẽ để quản lý, cấu trúc và trực quan hóa dữ liệu tình báo về các mối đe dọa an ninh mạng (CTI), sử dụng chuẩn STIX2 và hỗ trợ GraphQL API.
**Key takeaway**: Hệ thống cung cấp khả năng suy luận (inference) dữ liệu mạnh mẽ, giúp biến các dữ liệu thô thành tri thức có ý nghĩa, cực kỳ hữu ích cho các dự án về Knowledge Graph và tích hợp bảo mật.

### [UI/UX Pro Max Skill](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill)

**Date**: 2026-02-24
**Description**: Kỹ năng AI cung cấp trí tuệ thiết kế (design intelligence) để xây dựng UI/UX chuyên nghiệp trên nhiều nền tảng và framework. v2.0 đi kèm với engine suy luận (reasoning engine) tự động tạo Design System hoàn chỉnh dựa trên yêu cầu dự án.
**Key takeaway**: Chuyển đổi từ việc code UI thủ công sang việc sử dụng một "Design Reasoning Engine" giúp đảm bảo tính nhất quán, thẩm mỹ premium và tuân thủ các nguyên tắc UX/Accessibility một cách tự động.

### [WorldMonitor](https://github.com/koala73/worldmonitor)

**Date**: 2026-02-24
**Description**: Một dashboard tình báo toàn cầu thời gian thực, kết hợp sức mạnh của AI, OSINT và công nghệ đồ họa 3D để theo dõi địa chính trị và hạ tầng.
**Key takeaway**: Kiến trúc AI hybrid (Local + Cloud) và kỹ thuật visualization hiệu suất cao là bài học quý giá cho việc phát triển app hiện đại.

### [Antigravity Manager](https://github.com/Draculabo/AntigravityManager)

**Date**: 2026-02-24
**Description**: Antigravity Manager là một ứng dụng desktop mạnh mẽ dành cho việc quản lý các tài khoản Google Gemini và Claude AI. Nó cho phép tập hợp (pool) nhiều tài khoản, tự động theo dõi thời gian thực dung lượng (quota) và tự động chuyển tài khoản thông minh (auto-switching) khi hết hạn mức.
**Key takeaway**: Giải pháp "Local API Proxy" cung cấp một API Server tương thích với cấu trúc OpenAI/Anthropic, mở khóa khả năng dùng tài nguyên dồi dào của "Account Pool" cho các quy trình tự động hóa agent tốn kém năng lượng.

### [AionUi - Open-source 24/7 Cowork App](https://github.com/iOfficeAI/AionUi)

**Date**: 2026-02-24
**Description**: AionUi là một nền tảng Cowork (AI Agents làm việc song song cùng bạn) mã nguồn mở, hoạt động cục bộ (local). Tích hợp sẵn Agent engine (không cần cài CLI phức tạp), hỗ trợ đa model (Gemini, Claude, OpenClaw, Codex, OLLAMA, v.v.), lập lịch tự động 24/7 và giao diện UI có thể tùy chỉnh.
**Key takeaway**: Khả năng Multi-Agent Mode với cấu hình tool MCP (Model Context Protocol) thống nhất một lần cho mọi Agent (Claude Code, Qwen, etc.) giúp quản lý nhiều AI assistants hiệu quả trên cùng một giao diện thay vì phân tán nhiều CLI.

### [AI Engineering Toolkit](https://github.com/Sumanth077/ai-engineering-toolkit)

**Date**: 2026-02-24
**Description**: Dữ liệu tuyển chọn (curated list) gồm hơn 100 thư viện, nền tảng, và bộ công cụ mã nguồn mở dành cho AI Engineers làm việc với LLM (Agent, RAG, Inference, Vector DB).
**Key takeaway**: Đóng vai trò như "bản đồ kho báu" hệ sinh thái AI, giúp tra cứu nhanh chóng và lựa chọn công nghệ phù hợp nhất cho từng mảnh ghép kiến trúc phần mềm AI thay vì phải tìm kiếm đơn lẻ.

### [Free LLM API resources](https://github.com/cheahjs/free-llm-api-resources)

**Date**: 2026-02-24
**Description**: Danh sách tổng hợp các nhà cung cấp API LLM miễn phí hoặc cung cấp credit dùng thử (OpenRouter, Google AI Studio, NVIDIA NIM, Mistral, Groq, v.v.). Cung cấp thông tin chi tiết về các model được hỗ trợ, giới hạn rate limit và điều khoản sử dụng dữ liệu.
**Key takeaway**: Một nguồn tài nguyên vô giá để truy cập và thử nghiệm đa dạng các mô hình ngôn ngữ lớn (từ llama, gemma đến deepseek, qwen) thông qua API mà không tốn chi phí ban đầu, rất phù hợp cho việc phát triển và tự động hóa các AI Agents.

### [Next AI Draw.io](https://github.com/DayuanJiang/next-ai-draw-io)

**Date**: 2026-02-24
**Description**: Dấu trang web Next.js tích hợp AI với công cụ vẽ sơ đồ draw.io, cho phép tạo và chỉnh sửa biểu đồ bằng ngôn ngữ tự nhiên. Hỗ trợ đa dạng model, cung cấp cả MCP Server để dùng cho Claude/Cursor, có khả năng xử lý tài liệu PDF/ẩn ảnh để xuất ra biểu đồ.
**Key takeaway**: "Diagram as Code" kết hợp LLMs và MCP Server giúp biến thiết kế kiến trúc phần mềm, quy trình ERP Odoo thành biểu đồ tự động, giảm thiểu nỗ lực documentation một cách thần tốc.

### [RAGFlow - Open-source RAG Engine](https://github.com/infiniflow/ragflow)

**Date**: 2026-02-24
**Description**: RAGFlow là một RAG (Retrieval-Augmented Generation) engine mã nguồn mở hàng đầu, kết hợp RAG với khả năng Agent để cung cấp "context layer" ưu việt cho LLMs. Nổi bật với triết lý "Quality in, quality out" dựa trên nhận diện cấu trúc tài liệu sâu (Deep document understanding).
**Key takeaway**: Thay vì chunking văn bản một cách cơ học, RAGFlow cung cấp cơ chế template-based chunking chuyên sâu cho nhiều định dạng dị thể (PDF, Word, PPT, scan), giúp trích xuất thông tin chính xác hơn và hỗ trợ citation minh bạch, giảm thiểu hallucination.
