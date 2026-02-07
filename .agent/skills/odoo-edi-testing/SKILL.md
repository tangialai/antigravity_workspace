---
name: Odoo Processor Testing
description: This skill should be used when the user asks to "generate tests for processor", "create unit tests for transform methods", "test EDI integration", "write tests for import processor", "write tests for export processor", or mentions testing Cardinal/EVA transform methods. Provides knowledge about Odoo test patterns, processor layout structures, and code analysis techniques for generating comprehensive unit tests.
version: 0.2.0
---

# Odoo Processor Testing

Generate unit tests for EDI integration processors that verify data transformation correctness between fixed-width file formats and Odoo records.

## CRITICAL: Code Context Gathering

**Before generating ANY test code, you MUST gather complete code context.** Never guess at field names, model names, or method signatures.

### Step 1: Read the Processor Source Code

```bash
Read: {processor_file_path}
```

Extract:
- Class `_name` and `_inherit`
- All `transform_data_by_line_by_record_type_XXX` methods
- All `get_record_type_XXX_layout` methods
- All helper methods (`_search_*`, `_transform_*`, `_concatenate_*`)
- The main `transform_data()` orchestration method

### Step 2: Analyze Each Transform Method

For each method, identify:

```python
# Models used
self.env['res.partner']
self.env['account.move']

# Fields accessed (import)
line_data.get('field_name')
line_data['field_name']

# Fields accessed (export)
record.field_name
record.relation_id.field_name

# Output fields set (import)
transformed_line['field'] = value
transformed_line.update({...})

# Output fields set (export)
layout['field']['value'] = value

# Helper method calls
self._search_for_related_vendor(...)
self._concatenate_names(...)
```

### Step 3: Read Layout Methods

Extract field definitions from `get_record_type_XXX_layout()`:

```python
{
    'field_name': {
        'position': (start, end),
        'type': 'character|number|date|signed_number',
        'length': 10,
        'odoo_field': 'field_name',  # Import: target Odoo field
        'value': 'default',          # Export: default value
        'format': '%Y-%m-%d',        # Date format
    }
}
```

### Step 4: Read Related Model Definitions

For each model used, search and read its definition:

```bash
Grep: "_name = 'res.partner'" in **/*.py
Grep: "_inherit = 'res.partner'" in **/*.py
```

Extract:
- Required fields (`required=True`)
- Related fields (`Many2one`, `One2many`)
- Computed fields and dependencies
- Default values

### Step 5: Check Existing Test Patterns

```bash
Glob: {module}/tests/test_*.py
```

Match existing coding style and reuse helper methods.

## Processor Architecture

### Import Processors

Import processors transform fixed-width file lines into Odoo record values:

```
Fixed-width line → get_record_type_XXX_layout() → transform_data_by_line_by_record_type_XXX() → Odoo values
```

**Layout structure:**
```python
def get_record_type_001_layout(self):
    return {
        'field_name': {
            'position': (start, end),  # 0-indexed, extracts chars at start to end-1
            'type': 'character|number|date|datetime|signed_number',
            'length': int,
            'odoo_field': 'field_name' or None,
            'format': '%Y-%m-%d'  # Optional for date/datetime
        }
    }
```

**Transform method signature:**
```python
def transform_data_by_line_by_record_type_XXX(self, line_data, transformed_line, process_context):
    # line_data: dict with extracted values from layout
    # transformed_line: dict to populate with Odoo field values
    # process_context: dict with 'created_records' and other context
    # Returns: transformed_line with updates
```

### Export Processors

Export processors transform Odoo records into fixed-width layout values:

```
Odoo records → transform_data_by_line_by_record_type_XXX() → layout dict with 'value' keys
```

**Layout structure with values:**
```python
def get_record_type_002_layout(self):
    return {
        'field_name': {
            'position': (start, end),
            'length': int,
            'type': 'character|number|date|signed_number',
            'value': default_value  # Optional default
        }
    }
```

**Transform method signatures:**
```python
# Standard record transform
def transform_data_by_line_by_record_type_XXX(self, record, analytic_plan_mapping):
    layout = self.get_record_type_XXX_layout()
    layout['field']['value'] = record.field_name
    return layout

# Header/trailer without record
def transform_data_by_line_by_record_type_000(self):
    layout = self.get_record_type_000_layout()
    layout['business_unit']['value'] = self.sftp_file_id.company_id.business_unit
    return layout
```

## Test Structure

### Odoo Test Class Pattern

```python
from odoo.tests import tagged
from odoo.tests.common import TransactionCase
from odoo import fields
from datetime import date, datetime, timedelta


@tagged('post_install', '-at_install')
class TestProcessorName(TransactionCase):
    """Test cases for processor_name transform methods"""

    @classmethod
    def setUpClass(cls):
        super().setUpClass()
        # Create mock records needed by transform methods
        # ONLY create fields/records actually used in transforms
```

### Import Transform Test Pattern

```python
def test_transform_data_by_line_by_record_type_001(self):
    """Test record type 001 transformation"""
    processor = self.env['cardinal.ap962_import.processor']

    # Prepare input data (simulates extracted line_data)
    # Include ALL fields from get_record_type_001_layout()
    line_data = {
        'vendor_id': '0000012345',
        'name1': 'Test Vendor Name',
        'name2': '',
        'vendor_status': 'A',
    }
    transformed_line = {}
    process_context = {'created_records': {'res.partner': self.vendor}}

    # Execute transform
    result = processor.transform_data_by_line_by_record_type_001(
        line_data, transformed_line, process_context
    )

    # Verify ALL transformations performed by the method
    self.assertEqual(result['name'], 'Test Vendor Name')
    self.assertTrue(result['active'])
    self.assertTrue(result['is_company'])
```

### Export Transform Test Pattern

```python
def test_transform_data_by_line_by_record_type_002(self):
    """Test record type 002 transformation"""
    processor = self.env['cardinal.ap964_export.processor'].new({
        'sftp_file_id': self.sftp_file.id
    })

    # Create test record with ALL fields accessed by transform
    invoice = self._create_invoice(
        cardinal_id_transaction='12345678',
        cardinal_location_id=self.vendor_location.id,
    )

    # Get analytic mapping if method uses it
    analytic_mapping = self.env['account.analytic.plan']._get_plan_column_name_by_category()

    # Execute transform
    result = processor.transform_data_by_line_by_record_type_002(
        invoice, analytic_mapping
    )

    # Verify ALL layout values set by transform
    self.assertEqual(result['voucher_id']['value'], '12345678')
    self.assertEqual(result['vendor_id']['value'], 'VEND123456')
```

## Mock Data Setup

### Company Setup (if business_unit, fund_code accessed)

```python
cls.company = cls.env.ref('base.main_company')
cls.company.write({
    'business_unit': 'VIB01',
    'fund_code': 'FND01',
})
```

### Partners (vendors) - Based on Fields Actually Accessed

```python
# Parent vendor (if corporate_vendor lookup used)
cls.parent_vendor = cls.env['res.partner'].create({
    'name': 'Parent Vendor Corp',
    'ref': '0000099999',
    'is_company': True,
    'is_cardinal_vendor': True,
})

# Main vendor
cls.vendor = cls.env['res.partner'].create({
    'name': 'Test Vendor LLC',
    'ref': '0000012345',  # Used in _search_for_related_vendor
    'is_company': True,
    'is_cardinal_vendor': True,
    'parent_id': cls.parent_vendor.id,
})

# Vendor address (if child_ids accessed)
cls.vendor_address = cls.env['res.partner'].create({
    'name': 'Vendor Address',
    'parent_id': cls.vendor.id,
    'type': 'invoice',
    'address_seq_num': 1,
    'vndr_address_type': 'ORDR',
})
```

### SFTP Setup (for export processors)

```python
cls.sftp_connection = cls.env['sftp.server'].create({
    'name': 'Cardinal SFTP',
    'host': 'sftp.cardinal.com',
    'port': 22,
    'username': 'testuser',
    'password': 'testpass',
    'action': 'POST',
    'company_id': cls.company.id,
})

cls.sftp_folder = cls.env['sftp.folder'].create({
    'server_id': cls.sftp_connection.id,
    'path': '/export/ap964',
    'usage': 'cardinal.ap964_export.processor',
    'action': 'POST',
})

cls.sftp_file = cls.env['sftp.file'].create({
    'folder_id': cls.sftp_folder.id,
    'name': 'VIB01_AP964_01012025_1200_999.DAT',
    'sftp_date': fields.Datetime.now(),
    'company_id': cls.company.id,
    'res_model': 'account.move',
    'res_ids': '',
})
```

### Analytic Plans (for export using analytic_plan_mapping)

```python
cls.analytic_plan_department = cls.env['account.analytic.plan'].create({
    'name': 'Department Plan',
    'category': 'department',
})
cls.analytic_account_dept = cls.env['account.analytic.account'].create({
    'name': 'DEPT100',
    'code': 'DEPT100',
    'plan_id': cls.analytic_plan_department.id,
})

# Repeat for: program, cost_center, fips, project
```

## Testing Strategies

### Test Data Type Conversions

Verify each field type converts correctly:

| Type | Import Input | Import Expected | Export Input | Export Expected |
|------|--------------|-----------------|--------------|-----------------|
| `character` | `'ABC  '` | `'ABC'` (stripped) | `'ABC'` | Left-justified, padded |
| `number` | `'00123'` | `123` (int) | `123` | Right-justified, zero-padded |
| `date` | `'2024-01-15'` | `date(2024, 1, 15)` | `date(...)` | Formatted string |
| `signed_number` | `'0000012345-'` | `-12345` | `-12345` | With sign |

### Test Custom Transformations

Focus on methods that do more than direct mapping:

- `_concatenate_names()` - Combine name1 + name2
- `_transform_active_status()` - 'A' → True, else False
- `_search_country_by_code()` - Code → record ID
- Conditional logic (payment terms, date conditions)

### Test Edge Cases

- **Empty/null values** - No errors, appropriate defaults
- **Maximum length strings** - Correct truncation
- **Negative amounts** - Signed numbers format correctly
- **Missing related records** - Graceful handling (False, not error)
- **Invalid date formats** - Error handling

## File Naming Convention

Test files follow Odoo naming pattern:
```
test_{processor_file_name}.py
```

Examples:
- `cardinal_ap962_import_processor.py` → `test_cardinal_ap962_import_processor.py`
- `cardinal_ap964_export_processor.py` → `test_cardinal_ap964_export_processor.py`

## Helper Methods for Tests

### Get Processor Instance

```python
def _get_processor(self):
    """Get processor instance."""
    # For import processors:
    return self.env['cardinal.ap962_import.processor']

    # For export processors with sftp_file_id:
    return self.env['cardinal.ap964_export.processor'].new({
        'sftp_file_id': self.sftp_file.id
    })
```

### Get Process Context (Import)

```python
def _get_process_context(self):
    """Get standard process context for import transforms."""
    return {
        'created_records': {
            'res.partner': self.vendor | self.vendor_address,
        }
    }
```

### Create Invoice Helper (Export)

```python
def _create_invoice(self, **kwargs):
    """Helper to create vendor bill with defaults."""
    defaults = {
        'partner_id': self.vendor.id,
        'move_type': 'in_invoice',
        'journal_id': self.journal.id,
        'invoice_date': fields.Date.today(),
        'ref': 'INV-2025-001',
        # Add all fields accessed by transforms
    }
    defaults.update(kwargs)
    invoice = self.env['account.move'].create(defaults)
    invoice._post()
    return invoice
```

## Additional Resources

### Reference Files

For detailed patterns and examples:
- **`references/test-patterns.md`** - Complete test patterns for all scenarios
- **`references/mock-data-guide.md`** - Comprehensive mock data setup
- **`references/code-analysis-patterns.md`** - Code analysis techniques
