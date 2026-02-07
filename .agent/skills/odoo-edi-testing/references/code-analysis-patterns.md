# Code Analysis Patterns for Test Generation

This guide provides patterns for analyzing processor code to extract the information needed for generating accurate and complete unit tests.

## Overview

Before generating tests, you must analyze the processor code to understand:
1. What models and fields are used
2. What transformations are performed
3. What conditional logic exists
4. What helper methods are called
5. What the expected inputs and outputs are

## Pattern 1: Extract Model Dependencies

### Find Model References

Search for patterns that indicate model usage:

```python
# Direct model access
self.env['res.partner']
self.env['account.move']
self.env['res.country']
self.env['res.country.state']
self.env['account.analytic.plan']

# Model access with operations
self.env['model.name'].search([...])
self.env['model.name'].create({...})
self.env['model.name'].browse(id)
```

### Extraction Commands

```bash
# Find all model references in a file
Grep: "self\.env\['" in {processor_file}

# Find all search operations
Grep: "\.search\(" in {processor_file}

# Find all create operations
Grep: "\.create\(" in {processor_file}
```

### Example Analysis

```python
# From processor code:
vendor = self.env['res.partner'].sudo().with_context(active_test=False).search(
    [('ref', '=', ref), ('ref', 'not in', [False, ''])],
    limit=1,
)

# Extracted information:
# - Model: res.partner
# - Search domain uses: 'ref' field
# - Context: active_test=False (searches inactive records too)
# - Returns: single record (limit=1)
```

## Pattern 2: Extract Field Accesses

### Import Processor - Input Fields (line_data)

```python
# Dictionary get (optional field)
line_data.get('field_name')
line_data.get('field_name', default)

# Direct access (required field)
line_data['field_name']
```

### Import Processor - Output Fields (transformed_line)

```python
# Direct assignment
transformed_line['odoo_field'] = value

# Batch update
transformed_line.update({
    'field1': value1,
    'field2': value2,
})
```

### Export Processor - Record Field Access

```python
# Direct field access
record.field_name
record.ref
record.invoice_date

# Related field access
record.partner_id.ref
record.company_id.business_unit
record.cardinal_location_id.vndr_loc

# Chained access
record.purchase_id.picking_ids.sorted('date_done')[:1].date_done

# Filtered access
record.line_ids.filtered('line_number')
record.line_ids.filtered(lambda l: l.account_id == account)
```

### Export Processor - Layout Value Setting

```python
# Direct value assignment
layout['field_name']['value'] = value

# Computed value
layout['gross_amt']['value'] = record.amount_total_in_currency_signed or 0.0

# Conditional value
layout['due_dt']['value'] = record.invoice_date_due if condition else ''
```

### Extraction Commands

```bash
# Find line_data accesses
Grep: "line_data\[" in {processor_file}
Grep: "line_data\.get\(" in {processor_file}

# Find transformed_line assignments
Grep: "transformed_line\[" in {processor_file}
Grep: "transformed_line\.update" in {processor_file}

# Find record field accesses
Grep: "record\." in {processor_file}

# Find layout value assignments
Grep: "\['value'\]" in {processor_file}
```

## Pattern 3: Extract Helper Method Calls

### Common Helper Patterns

```python
# Vendor lookup
self._search_for_related_vendor(line_data.get('vendor_id'), process_context=process_context)

# Name concatenation
self._concatenate_names(line_data['name1'], line_data['name2'])

# Status transformation
self._transform_active_status(line_data.get('vendor_status'))

# Country/state lookup
self._search_country_by_code(line_data.get('country'))
self._search_state_by_code(line_data.get('state'), line_data=line_data)
```

### Analysis Steps

1. Find all helper method calls in transform methods
2. Read each helper method implementation
3. Identify helper method dependencies (models, fields)
4. Understand return values and side effects

### Example Helper Analysis

```python
# Helper method:
def _transform_active_status(self, value):
    return value == 'A'

# Analysis:
# - Input: string value (expected 'A' or other)
# - Output: boolean
# - Test cases needed:
#   - value='A' → True
#   - value='I' → False
#   - value='' → False
#   - value=None → False
```

## Pattern 4: Extract Conditional Logic

### Identify Conditionals

```python
# If statements
if value == 'A':
    result = True

# Ternary expressions
result = value if condition else default

# Short-circuit evaluation
result = record.field or ''
result = record.field and record.field.name or ''

# In-list checks
if payment_term in ['00', '00PP']:
    layout['due_dt']['value'] = record.invoice_date_due
```

### Required Test Cases per Conditional

| Pattern | Test Cases Needed |
|---------|-------------------|
| `if value == 'A'` | value='A', value='I', value='' |
| `if record.field` | field set, field=False |
| `value or default` | value truthy, value falsy |
| `if x in [a, b]` | x=a, x=b, x=other |

### Extraction Commands

```bash
# Find if statements
Grep: "^\s+if " in {processor_file}

# Find ternary expressions
Grep: " if .* else " in {processor_file}

# Find or expressions with defaults
Grep: " or ''" in {processor_file}
Grep: " or False" in {processor_file}
```

## Pattern 5: Extract Layout Field Definitions

### Parse Layout Method

```python
def get_record_type_001_layout(self):
    return {
        'vendor_id': {
            'position': (8, 18),
            'type': 'character',
            'length': 10,
            'odoo_field': 'ref'
        },
        'effdt': {
            'position': (23, 33),
            'type': 'date',
            'length': 10,
            'odoo_field': 'effdt',
            'format': '%Y-%m-%d'
        },
    }
```

### Extract Field Information

For each field in layout:
- **Field name**: Key in the dict
- **Position**: `(start, end)` tuple
- **Type**: 'character', 'number', 'date', 'datetime', 'signed_number'
- **Length**: Field width
- **Odoo field**: Target field for import, or None
- **Format**: Date format string if applicable
- **Value**: Default value for export

### Build Test Data from Layout

```python
# For import tests - create line_data from layout
def build_line_data_from_layout(layout):
    line_data = {}
    for field_name, config in layout.items():
        if config['type'] == 'character':
            line_data[field_name] = 'test_value'
        elif config['type'] == 'number':
            line_data[field_name] = 123
        elif config['type'] == 'date':
            line_data[field_name] = '2024-01-15'
        elif config['type'] == 'signed_number':
            line_data[field_name] = 1234.56
    return line_data
```

## Pattern 6: Trace Data Flow

### Import Processor Flow

```
1. Raw fixed-width line
   ↓
2. Base processor extracts using layout positions
   ↓
3. line_data dict populated with extracted values
   ↓
4. transform_data_by_line_by_record_type_XXX() called
   ↓
5. Custom transformations applied
   ↓
6. transformed_line dict returned
   ↓
7. Base processor creates/updates Odoo record
```

### Export Processor Flow

```
1. Odoo records passed to transform_data()
   ↓
2. For each record, transform_data_by_line_by_record_type_XXX() called
   ↓
3. Layout dict retrieved from get_record_type_XXX_layout()
   ↓
4. layout['field']['value'] populated from record fields
   ↓
5. Layout dict returned
   ↓
6. Base processor converts to fixed-width line
```

## Pattern 7: Build Dependency Map

### Dependency Map Structure

```python
dependency_map = {
    'models': {
        'res.partner': {
            'fields_read': ['ref', 'name', 'parent_id', 'child_ids'],
            'fields_written': ['name', 'active', 'is_cardinal_vendor'],
            'search_domains': [
                [('ref', '=', ref), ('ref', 'not in', [False, ''])]
            ],
        },
        'account.move': {
            'fields_read': ['partner_id', 'ref', 'invoice_date', 'amount_total_in_currency_signed'],
            'fields_written': [],
            'search_domains': [],
        },
    },
    'helper_methods': {
        '_search_for_related_vendor': {
            'input': ['ref', 'process_context'],
            'output': 'res.partner record or empty',
            'models_used': ['res.partner'],
        },
        '_concatenate_names': {
            'input': ['name1', 'name2', '*args'],
            'output': 'concatenated string',
            'models_used': [],
        },
    },
    'conditionals': [
        {'condition': "value == 'A'", 'test_values': ['A', 'I', '']},
        {'condition': 'payment_term in ["00", "00PP"]', 'test_values': ['00', '00PP', '30']},
    ],
    'process_context_keys': ['created_records'],
    'analytic_plans': ['department', 'program', 'cost_center', 'fips', 'project'],
}
```

## Pattern 8: Read Related Model Definitions

### Find Model Files

```bash
# Find model definition
Grep: "_name = 'res.partner'" in **/*.py

# Find model inheritance
Grep: "_inherit = 'res.partner'" in **/*.py
Grep: "_inherit = \['res.partner'\]" in **/*.py
```

### Extract Field Information

```python
# From model definition:
class ResPartner(models.Model):
    _inherit = 'res.partner'

    ref = fields.Char(string='Reference')
    is_cardinal_vendor = fields.Boolean(default=False)
    cardinal_location_ids = fields.One2many(
        'res.partner.location', 'partner_id', string='Locations'
    )
    address_seq_num = fields.Integer()

# Extracted:
# - ref: Char field, no constraints
# - is_cardinal_vendor: Boolean, default=False
# - cardinal_location_ids: One2many to res.partner.location
# - address_seq_num: Integer field
```

### Identify Required Fields

```python
# Required field example
name = fields.Char(required=True)

# Compute field that needs dependencies
amount_total = fields.Monetary(compute='_compute_amount_total', store=True)
```

## Checklist: Complete Code Analysis

Before generating tests, verify you have:

- [ ] Read the complete processor source file
- [ ] Identified processor type (import/export) from `_inherit`
- [ ] Listed all transform methods
- [ ] For each transform method:
  - [ ] Read method signature (parameters)
  - [ ] Read corresponding layout method
  - [ ] Traced all input field accesses
  - [ ] Traced all output field assignments
  - [ ] Identified all model references
  - [ ] Identified all helper method calls
  - [ ] Identified all conditional branches
- [ ] Read all helper method implementations
- [ ] Read related model definitions for field types
- [ ] Built complete dependency map
- [ ] Checked existing test patterns in module
