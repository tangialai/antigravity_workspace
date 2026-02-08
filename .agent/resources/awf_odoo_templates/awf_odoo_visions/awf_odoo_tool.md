# Vision: Tool / Utility / Automation (Odoo Edition)

**Description:** A specific utility or automation script running within Odoo.

## Core Features

- [ ] Scheduled Actions (Cron Jobs)
- [ ] Server Actions (Python Code)
- [ ] Automated Emails
- [ ] Data Processing

## Architecture Recommendation

- **Backend:** Odoo (Python)
- **Frontend:** None (Background Process) or Simple Form View
- **Database:** PostgreSQL

## Typical Odoo Modules

- `base_automation`
- `mail`
- `queue_job` (Community)
