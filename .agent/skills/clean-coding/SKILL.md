---
name: clean-coding
description: "Master standards for clean, maintainable, and efficient code. Covers Python patterns, API design, and general logic excellence."
---

# Clean Coding Excellence

## 1. Universal Principles

- **SRP & DRY**: Single Responsibility, Don't Repeat Yourself.
- **KISS & YAGNI**: Keep It Simple, You Aren't Gonna Need It.
- **Boy Scout Rule**: Leave code cleaner than you found it.

## 2. Pythonic Patterns

- **Idiomatic Python**: Use list comprehensions, context managers (`with`), and modern type hints.
- **Consistency**: Follow PEP 8 + Black formatting standards.
- **Async**: Use `async`/`await` for I/O bound tasks where applicable.

## 3. API & Web Design

- **RESTful**: Proper status codes, idempotent methods, and clear URL structures.
- **JSON-2/RPC**: Odoo-style API standards for backend-service communication.
- **Validation**: Strict input validation and meaningful error responses.

## 4. Structure & Style

- **Guard Clauses**: Early returns to keep code flat (avoid deep nesting).
- **Naming**: Variables must reveal intent. Booleans ask questions (`is_active`).
- **No Side Effects**: Functions should not mutate inputs unexpectedly.
