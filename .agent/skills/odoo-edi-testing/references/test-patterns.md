# Test Patterns Reference

## Import Processor Test Patterns

### Full Test Class Template

```python
# Copyright © 2025 Novobi, Inc
# See LICENSE file for full copyright and licensing details.

from odoo.tests import tagged, TransactionCase
from datetime import date, datetime


@tagged('post_install', '-at_install')
class TestCardinalAP962ImportProcessor(TransactionCase):
    """Test cases for Cardinal AP962 Import Processor transform methods"""

    @classmethod
    def setUpClass(cls):
        super().setUpClass()

        # Create parent vendor for relationship testing
        cls.parent_vendor = cls.env['res.partner'].create({
            'name': 'Parent Vendor Corp',
            'ref': '0000099999',
            'is_company': True,
            'is_cardinal_vendor': True,
        })

        # Create main test vendor
        cls.vendor = cls.env['res.partner'].create({
            'name': 'Test Vendor',
            'ref': '0000012345',
            'is_company': True,
            'is_cardinal_vendor': True,
            'parent_id': cls.parent_vendor.id,
        })

        # Create address for vendor
        cls.address = cls.env['res.partner'].create({
            'name': 'Vendor Address',
            'parent_id': cls.vendor.id,
            'type': 'delivery',
            'address_seq_num': 1,
            'vndr_address_type': 'ORDR',
            'is_cardinal_vendor': True,
        })

        # Get country/state records
        cls.country_us = cls.env['res.country'].search([('code', '=', 'USA')], limit=1)
        if not cls.country_us:
            cls.country_us = cls.env['res.country'].search([('code', '=', 'US')], limit=1)
        cls.state_va = cls.env['res.country.state'].search([
            ('code', '=', 'VA'),
            ('country_id', '=', cls.country_us.id)
        ], limit=1)

    def _get_processor(self):
        """Get processor instance"""
        return self.env['cardinal.ap962_import.processor']

    def _get_process_context(self):
        """Get standard process context with created records"""
        return {
            'created_records': {
                'res.partner': self.vendor | self.address,
            }
        }


class TestRecordType001(TestCardinalAP962ImportProcessor):
    """Tests for Record Type 001: VENDOR"""

    def test_transform_basic_vendor_data(self):
        """Test basic vendor field transformation"""
        processor = self._get_processor()
        line_data = {
            'vendor_id': '0000012345',
            'name1': 'Acme Corporation',
            'name2': '',
            'vendor_status': 'A',
            'vendor_class': 'V',
            'wthd_sw': 'N',
            'vndr_type': 'C',
            'std_id_num_qual': 'EIN',
            'std_id_num': '12-3456789',
            'corporate_vendor': '',
            'ofac_status': 'P',
            'ofac_status_dt': '2024-01-15',
        }
        transformed_line = {}

        result = processor.transform_data_by_line_by_record_type_001(
            line_data, transformed_line, self._get_process_context()
        )

        self.assertEqual(result['name'], 'Acme Corporation')
        self.assertTrue(result['active'])
        self.assertTrue(result['is_company'])
        self.assertTrue(result['is_cardinal_vendor'])
        self.assertEqual(result['vat'], '12-3456789')

    def test_transform_concatenated_names(self):
        """Test name1 + name2 concatenation"""
        processor = self._get_processor()
        line_data = {
            'vendor_id': '0000012345',
            'name1': 'Acme Corporation',
            'name2': 'International Division',
            'vendor_status': 'A',
            'std_id_num_qual': 'EIN',
            'std_id_num': '',
            'corporate_vendor': '',
        }

        result = processor.transform_data_by_line_by_record_type_001(
            line_data, {}, self._get_process_context()
        )

        self.assertEqual(result['name'], 'Acme Corporation International Division')

    def test_transform_inactive_status(self):
        """Test inactive vendor status transformation"""
        processor = self._get_processor()
        line_data = {
            'vendor_id': '0000012345',
            'name1': 'Inactive Vendor',
            'name2': '',
            'vendor_status': 'I',  # Inactive
            'std_id_num_qual': 'EIN',
            'std_id_num': '',
            'corporate_vendor': '',
        }

        result = processor.transform_data_by_line_by_record_type_001(
            line_data, {}, self._get_process_context()
        )

        self.assertFalse(result['active'])

    def test_transform_ssn_masking(self):
        """Test SSN is not stored in vat field"""
        processor = self._get_processor()
        line_data = {
            'vendor_id': '0000012345',
            'name1': 'Individual Vendor',
            'name2': '',
            'vendor_status': 'A',
            'std_id_num_qual': 'SSN',
            'std_id_num': '123-45-6789',
            'corporate_vendor': '',
        }

        result = processor.transform_data_by_line_by_record_type_001(
            line_data, {}, self._get_process_context()
        )

        self.assertFalse(result['vat'])  # SSN should not be stored

    def test_transform_corporate_vendor_lookup(self):
        """Test corporate vendor parent relationship"""
        processor = self._get_processor()
        line_data = {
            'vendor_id': '0000012345',
            'name1': 'Subsidiary Vendor',
            'name2': '',
            'vendor_status': 'A',
            'std_id_num_qual': 'EIN',
            'std_id_num': '',
            'corporate_vendor': '0000099999',  # Parent vendor ref
        }

        result = processor.transform_data_by_line_by_record_type_001(
            line_data, {}, self._get_process_context()
        )

        self.assertEqual(result['parent_id'], self.parent_vendor.id)
```

### Testing Related Records (004, 006 patterns)

```python
class TestRecordType004(TestCardinalAP962ImportProcessor):
    """Tests for Record Type 004: VENDOR_ADDR_PHN"""

    def test_transform_phone_with_address_lookup(self):
        """Test phone links to correct address"""
        processor = self._get_processor()
        line_data = {
            'vendor_id': '0000012345',
            'address_seq_num': 1,
            'effdt': '2024-01-15',
            'phone_type': 'BUSN',
            'country_code': '001',
            'phone': '555-123-4567',
            'extension': '100',
            'location_descr': 'Main Office',
        }

        result = processor.transform_data_by_line_by_record_type_004(
            line_data, {}, self._get_process_context()
        )

        self.assertEqual(result['vendor_id'], self.vendor.id)
        self.assertEqual(result['partner_id'], self.address.id)
```

## Export Processor Test Patterns

### Full Export Test Class Template

```python
@tagged('post_install', '-at_install')
class TestCardinalAP964ExportProcessor(TransactionCase):
    """Test cases for Cardinal AP964 Export Processor transform methods"""

    @classmethod
    def setUpClass(cls):
        super().setUpClass()

        # Create company with business unit
        cls.company = cls.env.company
        cls.company.write({'business_unit': 'VIBAP'})

        # Create vendor
        cls.vendor = cls.env['res.partner'].create({
            'name': 'Test Vendor',
            'ref': '0000012345',
            'is_company': True,
        })

        # Create cardinal location
        cls.location = cls.env['res.partner.location'].create({
            'partner_id': cls.vendor.id,
            'vndr_loc': 'MAIN',
        })

        # Create cardinal address
        cls.address = cls.env['res.partner'].create({
            'name': 'Vendor Address',
            'parent_id': cls.vendor.id,
            'address_seq_num': 1,
        })

        # Create analytic plans
        cls.dept_plan = cls.env['account.analytic.plan'].create({
            'name': 'Department', 'category': 'department',
        })
        cls.project_plan = cls.env['account.analytic.plan'].create({
            'name': 'Project', 'category': 'project',
        })

        # Get analytic mapping
        cls.analytic_mapping = cls.env['account.analytic.plan']._get_plan_column_name_by_category()

        # Create test invoice
        cls.invoice = cls.env['account.move'].create({
            'partner_id': cls.vendor.id,
            'move_type': 'in_invoice',
            'ref': 'VENDOR-INV-001',
            'invoice_date': date(2024, 1, 15),
            'cardinal_id_transaction': '00000001',
            'cardinal_location_id': cls.location.id,
            'cardinal_address_id': cls.address.id,
        })

    def _get_processor(self):
        return self.env['cardinal.ap964_export.processor']


class TestExportRecordType002(TestCardinalAP964ExportProcessor):
    """Tests for Record Type 002: VOUCHER HEADER"""

    def test_transform_voucher_header(self):
        """Test voucher header transformation"""
        processor = self._get_processor()

        result = processor.transform_data_by_line_by_record_type_002(
            self.invoice, self.analytic_mapping
        )

        self.assertEqual(result['record_type']['value'], '002')
        self.assertEqual(result['business_unit']['value'], 'VIBAP')
        self.assertEqual(result['voucher_id']['value'], '00000001')
        self.assertEqual(result['vendor_id']['value'], '0000012345')
        self.assertEqual(result['invoice_id']['value'], 'VENDOR-INV-001')
        self.assertEqual(result['invoice_dt']['value'], date(2024, 1, 15))

    def test_transform_amount_values(self):
        """Test amount field transformation"""
        processor = self._get_processor()
        self.invoice.write({'amount_total_in_currency_signed': 1234.56})

        result = processor.transform_data_by_line_by_record_type_002(
            self.invoice, self.analytic_mapping
        )

        self.assertEqual(result['gross_amt']['value'], 1234.56)


class TestExportRecordType999(TestCardinalAP964ExportProcessor):
    """Tests for Record Type 999: TRAILER"""

    def test_transform_trailer_counts(self):
        """Test trailer record with counts"""
        processor = self._get_processor()
        records = self.invoice

        result = processor.transform_data_by_line_by_record_type_999(records)

        self.assertEqual(result['record_type']['value'], '999')
        self.assertEqual(result['v_count1']['value'], 1)

    def test_transform_trailer_totals(self):
        """Test trailer total amount calculation"""
        processor = self._get_processor()
        self.invoice.write({'amount_total_in_currency_signed': 500.00})

        # Create second invoice
        invoice2 = self.env['account.move'].create({
            'partner_id': self.vendor.id,
            'move_type': 'in_invoice',
            'ref': 'INV-002',
            'amount_total_in_currency_signed': 300.00,
        })

        records = self.invoice | invoice2
        result = processor.transform_data_by_line_by_record_type_999(records)

        self.assertEqual(result['total_amt']['value'], 800.00)
```

## Edge Case Patterns

### Testing Empty Values

```python
def test_transform_empty_optional_fields(self):
    """Test handling of empty optional fields"""
    processor = self._get_processor()
    line_data = {
        'vendor_id': '0000012345',
        'name1': 'Vendor Name',
        'name2': '',  # Empty
        'vendor_status': 'A',
        'std_id_num_qual': '',  # Empty
        'std_id_num': '',  # Empty
        'corporate_vendor': '',  # Empty
    }

    result = processor.transform_data_by_line_by_record_type_001(
        line_data, {}, self._get_process_context()
    )

    self.assertEqual(result['name'], 'Vendor Name')  # No trailing space
    self.assertFalse(result.get('vat'))
```

### Testing Maximum Length

```python
def test_transform_max_length_fields(self):
    """Test fields at maximum character length"""
    processor = self._get_processor()
    line_data = {
        'vendor_id': '0000012345',
        'name1': 'A' * 40,  # Max 40 chars
        'name2': 'B' * 40,  # Max 40 chars
        'vendor_status': 'A',
        'std_id_num_qual': 'EIN',
        'std_id_num': '',
        'corporate_vendor': '',
    }

    result = processor.transform_data_by_line_by_record_type_001(
        line_data, {}, self._get_process_context()
    )

    self.assertEqual(len(result['name']), 81)  # 40 + space + 40
```

### Testing Missing Related Records

```python
def test_transform_missing_parent_vendor(self):
    """Test handling when corporate vendor not found"""
    processor = self._get_processor()
    line_data = {
        'vendor_id': '0000012345',
        'name1': 'Orphan Vendor',
        'name2': '',
        'vendor_status': 'A',
        'std_id_num_qual': 'EIN',
        'std_id_num': '',
        'corporate_vendor': '9999999999',  # Non-existent
    }

    result = processor.transform_data_by_line_by_record_type_001(
        line_data, {}, self._get_process_context()
    )

    self.assertFalse(result['parent_id'])  # Should be False, not error
```
