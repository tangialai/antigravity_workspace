# Odoo shell script to test eVA outbound approval
import sys

# Find an eVA PR to test (e.g. REQ21008123)
po = env['purchase.order'].search([('eva_purchase_pr_number', '!=', False)], limit=1)

if not po:
    print("❌ No eVA PR found in Odoo database.")
    sys.exit(1)

print(f"✅ Found PR: {po.name} (eVA ID: {po.eva_purchase_pr_number})")

# Temporarily point eVA Credential to our mock server
cred = env['request.credential'].search([('platform', '=', 'eva_purchase')], limit=1)
if not cred:
    print("❌ eVA Purchase credential not configured.")
    sys.exit(1)

old_host = cred.host
cred.host = 'http://localhost:8099'
print(f"🚀 Sending outbound XML to {cred.host}...")

try:
    # Call the new method on request.log
    env['request.log']._eva_purchase_send_approval_notification(po)
    print("✅ Sync logic executed. Check the other terminal for received XML.")

    # Check if log was created
    log = env['request.log'].search(
        [('type', '=', 'outbound'), ('usage', '=', 'eva_purchase')], order='id desc', limit=1)
    if log:
        print(f"📝 Odoo Log Created: {log.name}")
        print(f"📊 State: {log.state}")
        # print(f"📄 Response received: {log.response}")
finally:
    # ALWAYS Restore the actual host URL
    cred.host = old_host
