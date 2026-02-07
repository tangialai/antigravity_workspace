# Mock Data Setup Guide

## Common Mock Records by Model

### res.partner (Vendors)

```python
@classmethod
def setUpClass(cls):
    super().setUpClass()

    # Parent/corporate vendor
    cls.corporate_vendor = cls.env['res.partner'].create({
        'name': 'Corporate Parent Inc',
        'ref': '0000099999',
        'is_company': True,
        'is_cardinal_vendor': True,
    })

    # Main vendor
    cls.vendor = cls.env['res.partner'].create({
        'name': 'Test Vendor LLC',
        'ref': '0000012345',
        'is_company': True,
        'is_cardinal_vendor': True,
        'parent_id': cls.corporate_vendor.id,
        'vat': '12-3456789',
    })

    # Vendor address (child contact)
    cls.vendor_address = cls.env['res.partner'].create({
        'name': 'Vendor Headquarters',
        'parent_id': cls.vendor.id,
        'type': 'delivery',
        'street': '123 Main Street',
        'city': 'Richmond',
        'zip': '23219',
        'address_seq_num': 1,
        'vndr_address_type': 'ORDR',
        'is_cardinal_vendor': True,
    })

    # Vendor contact (child contact)
    cls.vendor_contact = cls.env['res.partner'].create({
        'name': 'John Smith',
        'parent_id': cls.vendor.id,
        'type': 'contact',
        'email': 'john@vendor.com',
        'function': 'Account Manager',
        'cntct_seq_num': 1,
        'contact_type': 'P',
        'is_cardinal_vendor': True,
    })
```

### res.country and res.country.state

```python
# Get existing records (don't create)
cls.country_us = cls.env['res.country'].search([
    '|', ('code', '=', 'USA'), ('code', '=', 'US')
], limit=1)

cls.state_va = cls.env['res.country.state'].search([
    ('code', '=', 'VA'),
    ('country_id', '=', cls.country_us.id)
], limit=1)

# If state doesn't exist, create it
if not cls.state_va:
    cls.state_va = cls.env['res.country.state'].create({
        'name': 'Virginia',
        'code': 'VA',
        'country_id': cls.country_us.id,
    })
```

### res.partner.location (Cardinal Location)

```python
cls.cardinal_location = cls.env['res.partner.location'].create({
    'partner_id': cls.vendor.id,
    'vndr_loc': 'MAIN',
    'descr': 'Main Location',
    'active': True,
    'remit_vendor': '0000012345',
    'remit_loc': 'MAIN',
    'remit_addr_seq_num': 1,
})
```

### res.partner.cert (Cardinal Certificates)

```python
cls.vendor_cert = cls.env['res.partner.cert'].create({
    'partner_id': cls.vendor.id,
    'certif_source': 'SWaM',
    'gov_class': 'SWaM',
    'gov_certif_nbr': 'CERT-12345',
    'effdt': date(2024, 1, 1),
    'certificate_beg_dt': date(2024, 1, 1),
    'certificate_exp_dt': date(2025, 12, 31),
})
```

### res.partner.phone

```python
cls.vendor_phone = cls.env['res.partner.phone'].create({
    'partner_id': cls.vendor_address.id,
    'phone': '555-123-4567',
    'phone_type': 'BUSN',
    'ext': '100',
    'name': 'Main Office',
    'effdt': date(2024, 1, 1),
})
```

### res.partner.tin (TIN History)

```python
cls.vendor_tin = cls.env['res.partner.tin'].create({
    'partner_id': cls.vendor.id,
    'std_id_num_qual': 'EIN',
    'std_id_num': '12-3456789',
    'audit_actn': 'A',
    'vat_write_date': datetime(2024, 1, 15, 10, 30, 0),
})
```

## Export Processor Mock Data

### account.move (Invoices/Vouchers)

```python
@classmethod
def setUpClass(cls):
    super().setUpClass()

    # Setup company
    cls.company = cls.env.company
    cls.company.write({
        'business_unit': 'VIBAP',
        'fund_code': 'GF001',
    })

    # Create vendor (see above)
    cls.vendor = cls.env['res.partner'].create({...})

    # Create payment terms
    cls.payment_term = cls.env['account.payment.term'].create({
        'name': 'Net 30',
        'cardinal_ap_term': '00',
    })

    # Create account
    cls.expense_account = cls.env['account.account'].create({
        'name': 'Expenses',
        'code': '600000',
        'account_type': 'expense',
    })

    # Create invoice
    cls.invoice = cls.env['account.move'].create({
        'partner_id': cls.vendor.id,
        'move_type': 'in_invoice',
        'ref': 'VENDOR-INV-001',
        'invoice_date': date(2024, 1, 15),
        'invoice_date_due': date(2024, 2, 14),
        'invoice_payment_term_id': cls.payment_term.id,
        'cardinal_id_transaction': '00000001',
        'cardinal_location_id': cls.cardinal_location.id,
        'cardinal_address_id': cls.vendor_address.id,
        'cardinal_payment_message': 'Payment for services',
        'line_ids': [
            (0, 0, {
                'name': 'Service Line 1',
                'account_id': cls.expense_account.id,
                'price_unit': 1000.00,
                'quantity': 1,
                'line_number': 1,
            }),
        ],
    })
```

### account.analytic.plan and account.analytic.account

```python
# Create analytic plans
cls.dept_plan = cls.env['account.analytic.plan'].create({
    'name': 'Department',
    'category': 'department',
})

cls.project_plan = cls.env['account.analytic.plan'].create({
    'name': 'Project',
    'category': 'project',
})

cls.fips_plan = cls.env['account.analytic.plan'].create({
    'name': 'FIPS',
    'category': 'fips',
})

# Create analytic accounts
cls.dept_account = cls.env['account.analytic.account'].create({
    'name': 'IT Department',
    'code': 'IT001',
    'plan_id': cls.dept_plan.id,
})

cls.project_account = cls.env['account.analytic.account'].create({
    'name': 'Project Alpha',
    'code': 'PROJ001',
    'plan_id': cls.project_plan.id,
})

# Get the column mapping
cls.analytic_mapping = cls.env['account.analytic.plan']._get_plan_column_name_by_category()
```

## Process Context Setup

### For Import Processors

```python
def _get_process_context(self):
    """Standard process context for import transforms"""
    return {
        'created_records': {
            'res.partner': self.vendor | self.vendor_address | self.vendor_contact,
            'res.partner.location': self.cardinal_location,
            'res.partner.cert': self.vendor_cert,
        },
        'file_id': 1,  # If tracking file imports
        'import_batch': 'BATCH001',
    }
```

### For Export Processors

Export transforms typically don't need process_context, but may need:
- `analytic_plan_column_mapping` - from `_get_plan_column_name_by_category()`

## Helper Methods

### Get Processor Instance

```python
def _get_import_processor(self):
    """Get import processor instance"""
    return self.env['cardinal.ap962_import.processor']

def _get_export_processor(self):
    """Get export processor instance"""
    return self.env['cardinal.ap964_export.processor']
```

### Create Line Data from Layout

```python
def _create_line_data_from_layout(self, processor, record_type, overrides=None):
    """Create sample line_data dict from layout definition"""
    layout_method = getattr(processor, f'get_record_type_{record_type}_layout')
    layout = layout_method()

    line_data = {}
    for field_name, field_def in layout.items():
        # Set default values based on type
        if field_def['type'] == 'character':
            line_data[field_name] = ''
        elif field_def['type'] == 'number':
            line_data[field_name] = 0
        elif field_def['type'] == 'date':
            line_data[field_name] = None
        elif field_def['type'] == 'signed_number':
            line_data[field_name] = 0.0

    if overrides:
        line_data.update(overrides)

    return line_data
```

## Common Assertions

### Import Transform Assertions

```python
# Check field mapping
self.assertEqual(result['name'], expected_name)
self.assertEqual(result['ref'], expected_ref)

# Check boolean conversion
self.assertTrue(result['active'])  # For status 'A'
self.assertFalse(result['active'])  # For status 'I'

# Check related record lookup
self.assertEqual(result['parent_id'], expected_partner.id)
self.assertEqual(result['country_id'], expected_country.id)

# Check existing record found
self.assertEqual(result['existing_record'], expected_record)
```

### Export Transform Assertions

```python
# Check layout value population
self.assertEqual(result['field_name']['value'], expected_value)

# Check record type constant
self.assertEqual(result['record_type']['value'], '002')

# Check numeric values
self.assertEqual(result['amount']['value'], 1234.56)

# Check date values
self.assertEqual(result['date_field']['value'], date(2024, 1, 15))
```
