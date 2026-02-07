---
description: Generate unit tests for standard Odoo models and business logic
---

# Generate Odoo Tests

1. **Analyze Model**
    - Read the Python file provided.
    - Identify the main Class and key methods (`action_`, `_compute_`, `write`).

2. **Dependency Mapping**
    - Scan the methods for `self.env['...']` calls.
    - Read the definition of those referenced models to understand their required fields.

3. **Generate Tests**
    - Use the `odoo-core-testing` skill patterns.
    - Create `tests/test_{filename}.py`.
    - Use `TransactionCase` and `setUpClass` to prepare data.
    - Write one test method per logical branch (e.g., `test_action_success`, `test_action_failure`).

4. **Verify**
    - Ensure imports are correct (`from odoo.tests import ...`).
    - Check that `tags` are applied (`post_install`).
