---
name: Odoo Core Testing
description: Use this skill when the user asks to "generate tests for this model", "write unit tests for this wizard", "test this business logic", or "create tests for generic Odoo module". Provides knowledge about standard Odoo test patterns (TransactionCase), mock data generation, and code analysis for regular Odoo models.
version: 1.0.0
---

# Odoo Core Testing

Generate unit tests for standard Odoo models, wizards, and business logic methods.

## CRITICAL: Deep Code Analysis

**Before generating ANY test code, you MUST gather complete code context.**

### Step 1: Read the Model Source Code

```bash
Read: {file_path}
```

Extract:

- Class `_name` and `_inherit`
- Fields definitions (types, required, defaults)
- Method logic (`action_...`, `_compute_...`)

### Step 2: Analyze Method Logic

For the target method(s), identify:

- **Input**: Does it use `self` (recordset), arguments, or `context`?
- **Dependencies**: What other models are called? (`self.env['other.model']`)
- **Side Effects**: Does it `create`, `write`, or `unlink` records?
- **Return Value**: What does it return? (Action dict, boolean, recordset?)

### Step 3: Read Related Models

**CRITICAL**: If the method uses `self.env['other.model']`, READ that model's definition to get valid field names for mock data.

## Test Structure (Standard Odoo)

### Class Skeleton

```python
from odoo.tests import tagged
from odoo.tests.common import TransactionCase
from odoo import fields

@tagged('post_install', '-at_install')
class TestModelName(TransactionCase):

    @classmethod
    def setUpClass(cls):
        super().setUpClass()
        # Create minimal mock data needed for tests
        cls.partner = cls.env['res.partner'].create({'name': 'Test Partner'})
```

### Test Method Pattern

```python
def test_action_confirm(self):
    """Test that action_confirm sets state to 'done'"""
    # 1. Setup
    record = self.env['my.model'].create({
        'name': 'Test Record',
        'partner_id': self.partner.id,
        'state': 'draft',
    })

    # 2. Execute
    record.action_confirm()

    # 3. Verify
    self.assertEqual(record.state, 'done', "State should be done after confirm")
```

## Mock Data Best Practices

- **Minimalism**: Only create fields required by the constraints or logic being tested.
- **Realism**: Use realistic dates and types.
- **Dependencies**: Create dependencies first in `setUpClass`.

## File Naming

- `tests/test_{model_filename}.py`
