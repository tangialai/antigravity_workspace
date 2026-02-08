# Vision: SaaS Application (Odoo Edition)

**Description:** A multi-tenant or subscription-based solution built on Odoo.

## Core Features

- [ ] User Subscription Management (Odoo Subscription)
- [ ] Portal Access for Customers
- [ ] Role-based Access Control (RBAC)
- [ ] Recurring Billing & Invoicing

## Architecture Recommendation

- **Backend:** Odoo (Python)
- **Frontend:** Odoo Website / Portal (QWeb)
- **Database:** PostgreSQL (Separate schemas or Single DB with Record Rules)

## Typical Odoo Modules

- `sale_subscription`
- `website`
- `portal`
- `auth_signup`
