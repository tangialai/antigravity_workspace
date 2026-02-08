---
description: Generate specialized unit tests for Odoo EDI Processors (Cardinal/eVA)
---

# Generate EDI Tests

1. **Analyze Processor**
    - Read the processor file provided by the user.
    - Identify if it is `Import` (Dict -> Odoo) or `Export` (Odoo -> Layout).
    - List all `transform_data_...` methods.

2. **Deep Code Analysis**
    - For each transform method, read the corresponding `get_layout...` method.
    - **Trace Dependencies**: Read the Model definitions for any `self.env['model']` used.
    - **Trace Helpers**: Read any `_helper_method` called.

3. **Generate Tests**
    - Use the `odoo-edi-testing` skill patterns.
    - Create a test file in `tests/odoo_test_{filename}.py`.
    - Ensure you include `process_context` for imports and `analytic_mapping` for exports if used.

4. **Verify**
    - Double check that all mock data fields actually exist in the related models.
