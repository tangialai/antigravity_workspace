from lxml import etree
import os

# Mock the parser and other dependecies


class EVABaseParser:
    def __init__(self, xml_content):
        self.xml_content = xml_content
        self.root = etree.fromstring(xml_content.encode('utf-8') if isinstance(xml_content, str) else xml_content)

    @staticmethod
    def format_date(date_str):
        return date_str


class PurchaseParser(EVABaseParser):
    def _extract_fields(self, node):
        fields_map = {}
        for field in node.iterchildren('field'):
            name = field.get('ariba_field_name')
            label = field.get('field_label')
            value = (field.text or "").strip()
            if name:
                fields_map[name] = value
            if label:
                fields_map[f"label:{label}"] = value
        return fields_map

    def parse_purchase_data(self, fund_code, business_unit, precision, mappings=None):
        self.precision = precision
        header_node = self.root.find('header')

        fund_keys = set()
        bu_keys = set()
        for m in (mappings or []):
            mtype = m['map_type']
            if mtype == 'fund':
                fund_keys.add(m['xml_key'])
            elif mtype == 'bu':
                bu_keys.add(m['xml_key'])

        line_items = [
            self._extract_line_item(node)
            for node in header_node.iterfind('./lineitems/lineitem')
        ]

        xml_fund_code, xml_business_unit = self._resolve_fund_bu(line_items, fund_keys, bu_keys)

        return {
            'xml_fund_code': xml_fund_code,
            'xml_business_unit': xml_business_unit,
            'line_items': line_items,
        }

    def _resolve_fund_bu(self, line_items, fund_keys, bu_keys):
        if not line_items or not (fund_keys and bu_keys):
            return "KEYS_MISSING", "KEYS_MISSING"

        def _get_val(split, keys):
            for k in keys:
                val = split.get(k) or split.get(f'label:{k}')
                if val:
                    return val
                k_lower = k.lower()
                for key, v in split.items():
                    if key.startswith('label:') and k_lower in key.lower():
                        return v
            return None

        for line in line_items[:1]:
            for split in line.get('split_accountings', []):
                fund = _get_val(split, fund_keys)
                bu = _get_val(split, bu_keys)
                if fund and bu:
                    return fund, bu
        return "NOT_FOUND", "NOT_FOUND"

    def _extract_line_item(self, item_node):
        l_map = self._extract_fields(item_node)
        return {
            'split_accountings': [
                self._extract_accounting(node)
                for node in item_node.iterfind('./accountings/splitaccountings/splitaccounting')
            ],
            'xml_fields': l_map,
        }

    def _extract_accounting(self, split_node):
        return self._extract_fields(split_node)


# Load XML
xml_path = '/Users/ryantanmai/WORKSPACE/ODOO/NOVOBI/DBVI/project-addons/vib_eva_integration/testing_files/115_vib_pr_sync.xml'
with open(xml_path, 'r') as f:
    xml_content = f.read()

# Mock mappings
mappings = [
    {'xml_key': 'Cardinal Fund', 'map_type': 'fund'},
    {'xml_key': 'Cardinal GL Business Unit', 'map_type': 'bu'}
]

parser = PurchaseParser(xml_content)
result = parser.parse_purchase_data(None, None, 5, mappings)

print(f"Result Fund: {result['xml_fund_code']}")
print(f"Result BU: {result['xml_business_unit']}")

# Print split accounting keys to debug
print("\nFirst split accounting keys:")
if result['line_items']:
    first_split = result['line_items'][0]['split_accountings'][0]
    for k, v in first_split.items():
        print(f"  {k}: {v}")
