from odoo import api, SUPERUSER_ID


def check_companies(env):
    print("--- Checking All Companies Configuration ---")
    companies = env['res.company'].sudo().search([])
    for comp in companies:
        print(f"ID: {comp.id} | Name: {comp.name}")
        print(f"  > Fund Code: '{comp.fund_code}'")
        print(f"  > Business Unit: '{comp.business_unit}'")

    # Try the exact search used in code
    xml_fund = '05910'
    xml_bu = '70200'
    match = env['res.company'].sudo().search([
        ('fund_code', '=', xml_fund),
        ('business_unit', '=', xml_bu)
    ], limit=1)

    if match:
        print(f"\n✅ MATCH FOUND: Company '{match.name}' (ID: {match.id})")
    else:
        print(f"\n❌ NO MATCH FOUND for Fund='{xml_fund}' and BU='{xml_bu}'")


# This is a scratch script intended to be run via odoo shell or similar
if 'env' in globals():
    check_companies(env)
