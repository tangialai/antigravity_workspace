---
name: odoo-mastery
description: "Professional Odoo 19+ development, EDI integration, and comprehensive testing architecture. This is the SINGLE SOURCE OF TRUTH for all Odoo workflows."
globs: "**/*.{py,xml,js,scss}"
license: MIT
author: UncleCat & Community
version: 1.1.0
topics:
    - Actions (ir.actions.*, cron, bindings)
    - Controllers (HTTP, routing, web endpoints)
    - Data files (XML/CSV, records, shortcuts)
    - Decorators (@api.depends, @api.constrains, @api.ondelete)
    - Development (modules, manifest, wizards, reports)
    - Field types (Char, Text, Monetary, relational fields)
    - Manifest (__manifest__.py configuration)
    - Mixins (mail.thread, activities, aliases, tracking)
    - Model methods (ORM, CRUD, search, domain)
    - Migration (upgrading modules, data migration)
    - OWL components (hooks, services, UI)
    - Performance (N+1 prevention, optimization)
    - Quality Control (QA/QC, unit testing, integration testing)
    - Reports (QWeb, PDF/HTML, templates)
    - Security (ACL, record rules, field permissions)
    - Testing (unit tests, browser tests, mocking)
    - Transactions (savepoints, errors, serialization)
    - Translation (i18n, localization, PO files)
    - Views & XML (list, form, search, QWeb)
when_to_use:
    - Finding the appropriate guide for an Odoo 19 task
    - Understanding module structure and conventions
    - Looking up best practices for specific Odoo features
---

# Odoo Mastery Skill (Team Working Standards - Odoo 19+)

## 0. Team Compliance & Working Protocol (MANDATORY)

Tất cả thành viên trong team **PHẢI TUÂN THỦ TUYỆT ĐỐI** các quy chuẩn sau để đảm bảo tính đồng nhất và chất lượng code:

1.  **Read Before Code**: Trước khi bắt đầu bất kỳ task nào, phải đọc kỹ tài liệu hướng dẫn tương ứng trong thư mục `Odoo19docs`.
2.  **Reference Source First**: Luôn kiểm tra code mẫu (Base Code) của Odoo 19 tương ứng tại `/Users/ryantanmai/WORKSPACE/ODOO/REFERENCES/` trước khi viết logic mới.
3.  **Strict Linting**: Tuyệt đối không commit code nếu chưa pass bộ linter (autofix nếu có thể).
4.  **Review Cross-Team**: Mọi Pull Request (PR) phải được review dựa trên "Odoo Code Review Expert" (Mục 13) của tài liệu này.
5.  **Single Source of Truth**: Skill này là chuẩn mực duy nhất cho các workflow của team. Mọi đề xuất thay đổi chuẩn phải được thảo luận và cập nhật vào đây trước khi áp dụng.

---

## 1. Role & Modern Standards (Odoo 19)

- **Mindset**: Think in Modules. Inheritance First. ORM Over SQL.
- **Modern Patterns**: Use `display_name` (compute), `models.Constraint`, `_read_group()`, and `t-out`.
- **Private Attributes**: Prohibited access to `_cr`, `_uid`, `_context`. Use `self.env` and public methods.
- **Naming Rules**:
    - Models: `snake.case` (dot notation).
    - Fields: `many2one_id`, `one2many_ids`.
    - Views: `{model_name}_view_{type}`. Use `name` attribute on all elements (group, page).
    - **OCA Module Naming**:
        - Use singular form: `sale_order_import` (not `sale_orders_import`).
        - For base modules: prefix with `base_`.
        - For localization: prefix with `l10n_CC_` (e.g., `l10n_vn_`).
        - For extensions: prefix with parent module (e.g., `mail_forward`).
        - For combinations: Odoo module first (e.g., `crm_partner_firstname`).
- **Copyright**: Every Python file MUST start with `# Copyright © 2026 Novobi, Inc`.

## 2. Key Odoo 19 Framework Changes

| Change             | Old (Odoo 17-)                 | New (Odoo 19)                                 |
| ------------------ | ------------------------------ | --------------------------------------------- |
| List view tag      | `<tree>`                       | `<list>`                                      |
| Dynamic attributes | `attrs="{'invisible': [...]}"` | `invisible="..."` (direct boolean expression) |
| Delete validation  | Override `unlink()`            | `@api.ondelete(at_uninstall=False)`           |
| Field aggregation  | `group_operator=`              | `aggregator=`                                 |
| SQL queries        | `cr.execute()`                 | `SQL` class with `execute_query_dict()`       |
| SQL Constraints    | `_sql_constraints = [...]`     | `_name_unique = models.Constraint(...)`       |
| Batch create       | Single dict                    | List of dicts (`create([{...}, {...}])`)      |

## 3. EDI & Integration (Specialized)

- **Processor Architecture**: Use `get_record_type_XXX_layout()` and `transform_data_by_line...` patterns.
- **Data Conversion Patterns**:
    - `character`: Strip whitespace on import, pad on export.
    - `number`: Integer conversion on import, zero-padded on export.
    - `signed_number`: Handle trailing sign (e.g., `000123-` -> `-123`).
    - `date`: Explicit format parsing (`%Y-%m-%d`).
- **Fail-safe**: Implement duplicate prevention via external IDs. Use context managers for SFTP/API.

## 3. Comprehensive Testing Mastery

### Pattern: Setup -> Execute -> Verify

- **Base**: Inherit `TransactionCase`, use `@tagged('post_install', '-at_install')`.
- **Standard Setup**:
    ```python
    @classmethod
    def setUpClass(cls):
        super().setUpClass()
        cls.partner = cls.env['res.partner'].create({'name': 'Test'})
    ```
- **EDI Setup (Mock Data)**: Always mock `sftp.server`, `sftp.folder`, and `sftp.file` for export tests.
- **Simulation**: Use `odoo.tests.Form` for wizards and complex form interaction.

### Advanced Odoo Test Creator Patterns (Siafa Standards)

1.  **Test Data Setup Strategy**:
    - **Pattern A (Safe)**: Reuse existing core records (warehouses, products) to avoid complex NOT NULL constraints and permission issues.
    - **Pattern B (Isolation)**: If creating records, use `.sudo()` to bypass non-logic permission errors during setup.
    - **Pattern C (Efficiency)**: Heavily utilize `setUpClass` for shared, immutable test data to reduce test execution time.
2.  **Naming Convention**: Methods must follow `test_NN_descriptive_name` (e.g., `test_01_create_order`) for ordered execution.
3.  **Core Coverage Checklist**:
    - **CRUD**: Validate basic record lifecycle.
    - **Computed Fields**: Force recomputations and verify results.
    - **Constraints**: Test both `@api.constrains` (Python) and `models.Constraint` (SQL).
    - **Onchange**: Simulate UI behavior using `onchange()` methods.
    - **Exceptions**: Use `with self.assertRaises(ValidationError):` for negative testing.
4.  **Pitfall Prevention**:
    - **HTML Fields**: Convert to string before assertion.
    - **Enterprise Constraints**: Always check for fields like `sale_line_warn` which can trigger NOT NULL failures if a product isn't properly linked.
    - **Runtime Crash Prevention (CRITICAL)**: **NEVER** import the `tests` directory in the root `__init__.py` (`from . import tests`). This will load `odoo.tests` into the standard runtime environment, crashing the module installation and normal Odoo operation (e.g., `importlib._bootstrap` error). The `tests` folder should only be discovered and executed by the test runner.
5.  **Execution**: Run with `--test-enable --stop-after-init` to ensure a clean test cycle.

## 4. Mandatory Team Analysis & Reference Check (MANDATORY)

**Bất kỳ thành viên nào khi chỉnh sửa (Inherit/Override) Odoo, PHẢI thực hiện đúng quy trình:**

1. **Xác định Version**: Kiểm tra `__manifest__.py` (v17, v18, v19).
2. **Reference Check**:
    - Tìm module gốc trong `/Users/ryantanmai/WORKSPACE/ODOO/REFERENCES/odoo[version]/addons/`.
    - Sử dụng `grep` tìm chính xác ID View hoặc Signature của Hàm cần sửa.
    - Kiểm tra tài liệu hướng dẫn tương ứng tại `/Users/ryantanmai/WORKSPACE/ODOO/LIBRARY/Odoo19docs/`.
3. **Validate**:
    - Kiểm tra `xpath` có trỏ đúng vào field đang tồn tại không (Odoo 19 refactor rất nhiều).
    - Kiểm tra tham số truyền vào hàm để gọi `super()` chính xác.
4. **Mock Data Setup**: Nếu viết test, thực hiện phân tích 5 bước để mock dữ liệu thực tế.

## 5. View Inheritance & XML Rules

- **View ID**: LUÔN sử dụng chính ID của View gốc làm ID cho record kế thừa (VD: `id="view_order_form"` kế thừa từ `sale.view_order_form`).
- **Element Naming**: Mọi element mới (`page`, `group`, `button`) PHẢI có thuộc tính `name`.
- **Versioning**: LUÔN tăng số phiên bản trong `__manifest__.py` sau khi hoàn tất chỉnh sửa.
- **Config**: Khai báo `ir.config_parameter` trong XML with `noupdate="1"`.

## 6. Frontend (Owl Framework & OCA 2026 Standards)

### Core Principles

- **Standards**: Strict adherence to OCA/Odoo core OWL patterns. Always use `setup()` for initialization.
- **Reactive State**: Manage state using `useState()` for primitive/object observation and `reactive()` for complex state objects. Use `useState(props)` to observe and react to prop changes.
- **Lifecycle Management**:
    - `onWillStart`: Async data fetching before component is rendered. Ideal for lazy loading heavy assets.
    - `onWillUpdateProps`: CRITICAL - Handle refreshes driven by parent prop changes.
    - `onMounted`: DOM interactions or starting listeners. Use `useEffect` for DOM side-effects.
    - `onWillUnmount`: CRITICAL - Cleanup logic, unsubscription from buses, and memory leak prevention.
- **UI Code**: Use Guard Clauses (Flat Logic). Check visibility using Odoo Core style:
  `el.offsetWidth || el.offsetHeight || el.getClientRects().length`
- **Modern Hooks (Odoo 19)**: Use the `use()` hook for consuming providers and the latest simplified template syntax.

### Technical Guidelines (OCA 2026)

- **Component Structure**: Keep logic in `.js`, templates in `.xml`, and styling in `.css`/`.scss`. Use Fragments (`<t t-call="..." />`) to keep components modular and maintainable.
- **Service Injection**: Always use `useService()` hook for core utilities (`orm`, `notification`, `action`, `rpc` (deprecated in Odoo 19 public frontend), `user`).
- **Communication**: Use `useBus()` for cross-component event handling and `props` for parent-to-child data flow.
- **Data Fetching**: Standardize on `orm` service calls. Avoid direct `rpc` calls unless absolutely necessary. **CRITICAL (Odoo 19)**: The `rpc` service is NOT available in public/frontend components. Use native `fetch` with a JSON-RPC helper pattern instead.
- **UI/UX**: Ensure absolute consistency with Odoo's Design System 2026 (spacing, colors, interactions). Use the `o_oca_` prefix for any custom OCA-specific styling.
- **Optimization**: Always use `t-key` in `t-foreach` loops for efficient DOM reconciliation.

### Implementation Checklist

- [ ] Component structure follows OCA 2026 naming and directory conventions.
- [ ] State management uses OWL `useState` or `reactive` correctly.
- [ ] External services are injected via `useService`.
- [ ] Cleanup logic implemented in `onWillUnmount` (e.g., bus unsubscription, timers).
- [ ] XML templates are modular, escaped properly, and support translation (`t-att`, `t-esc`).
- [ ] `t-key` is present in all `t-foreach` loops.
- [ ] Hardcoded strings are wrapped in `_t()` for translation.
- [ ] Props are handled reactively using `useState(props)` or `onWillUpdateProps` if needed.

### Code Pattern: Custom Widget

```javascript
/** @odoo-module **/
import { Component, useState, onWillStart } from "@odoo/owl";
import { useService } from "@web/core/utils/hooks";

export class CustomWidget extends Component {
    static template = "my_module.CustomWidget";

    setup() {
        this.state = useState({ value: 0, items: [] });
        this.orm = useService("orm");
        this.notification = useService("notification");

        onWillStart(async () => {
            // Initial data fetch
            this.state.items = await this.orm.searchRead("res.partner", [], ["name"], { limit: 5 });
        });
    }

    async _onClick() {
        this.state.value++;
        this.notification.add(`Value incremented to ${this.state.value}`, { type: "info" });
    }
}
```

## 7. Security & Performance

- **Security**: All new models MUST have `ir.model.access.csv`. Limit `sudo()` usage to strictly necessary cases.
- **SQL Injection Prevention**:
    - **BAD**: `self.env.cr.execute("SELECT * FROM res_partner WHERE name = '%s'" % partner_name)`
    - **GOOD**: `self.env.cr.execute("SELECT * FROM res_partner WHERE name = %s", (partner_name,))`
- **XSS Protection**: Use `tools.html_escape` or Odoo's QWeb escaping. Avoid manual string concatenation of HTML.
    - **BAD**: `query = "<div>" + user_input + "</div>"`
    - **GOOD**: `query = tags.div(user_input)` or use `markupsafe.escape()`.
- **Secure sudo() Usage**: Use `sudo()` only when absolutely necessary and restrict the scope.
    - **Pattern**: `self.with_user(SUPERUSER_ID).write(...)` or better, use `sudo()` and then immediately filter or restricted access.
- **ORM Efficiency**:
    - **Anti-pattern**: `for rec in self: partners = self.env['res.partner'].search([('name', '=', rec.name)])`
    - **Optimization**: `names = self.mapped('name'); partners = self.env['res.partner'].search([('name', 'in', names)])`
- **Batching**: Move `create()`/`write()` outside loops. Accumulate in list of dicts for `create()` or recordsets for `write()`.
- **N+1 Prevention**: NEVER perform `search()` or access relational fields in a loop that can be pre-fetched.
- **Transaction Safety**: Avoid manual `cr.commit()` or `cr.rollback()` in standard models (handled by framework).

> **Reference Check**: Always verify against `/Users/ryantanmai/WORKSPACE/ODOO/REFERENCES/odoo19/`.

## 8. Odoo 19 OCA DevOps & Modernization (Integrated Skill)

### Core Workflows

1. **Custom Module Creation**:
    - Scaffolding OCA-compliant structure (`__manifest__.py`, `README.rst` or `readme/`, `models/`, `views/`).
    - **Full OCA Structure**:
        ```
        module_name/
        ├── models/
        ├── views/
        ├── security/
        ├── data/
        ├── readme/
        │   ├── DESCRIPTION.rst
        │   ├── USAGE.rst
        │   └── CONTRIBUTORS.rst
        ├── migrations/
        │   └── 17.0.1.0.0/
        │       ├── pre-migration.py
        │       ├── post-migration.py
        │       └── noupdate_changes.xml
        └── tests/
        ```
    - Validation of module structure against OCA standards.
2. **Enterprise Replacement**:
    - Mapping Enterprise features (Studio, Accounting) to OCA alternatives.
    - Cost analysis and installation guides.
3. **OCA Vendoring**:
    - Managing dependencies via `repos.yaml` with commit pinning.
    - Sparse checkout for specific modules.
4. **Production Deployment**:
    - Generating `docker-compose.yml` for Odoo 19 + Nginx + Postgres/Supabase.
    - SSL configuration and security hardening.

### Implementation Patterns

- **Module Scaffolding**:
    - `__manifest__.py`: AGPL-3, version `{odoo}.x.y.z` (e.g., `19.0.1.0.0`).
    - `author`: `Your Company, Odoo Community Association (OCA)`.
    - `website`: `https://github.com/OCA/<repository>`.
    - `README.rst`: OCA template or `readme/` directory.
    - `security/ir.model.access.csv`: Mandatory.
- **OCA Vendoring (`repos.yaml`)**:
    ```yaml
    server-tools:
        url: https://github.com/OCA/server-tools
        branch: "19.0"
        commit: abc123def456
        modules: [base_technical_user]
    ```
- **Docker Deployment**:
    - Workers: 4, Cron: 2.
    - Memory: 2GB soft / 2.5GB hard.
    - Nginx: Reverse proxy with SSL termination.

### Enterprise Feature Mapping

| Enterprise         | OCA Alternative                                  |
| ------------------ | ------------------------------------------------ |
| Studio             | `base_automation`, `server_action` + Manual Code |
| Accounting Reports | `account_financial_report`                       |
| Helpdesk           | `helpdesk_mgmt`                                  |
| Dashboards         | `mis_builder`                                    |

### Best Practices

- **Structure**: Always follow `oca-addons-repo-template`.
- **Versioning**: `19.0.x.y.z`.
- **Pinning**: Always pin OCA modules to specific commits in `repos.yaml`.
- **Testing**: Local testing with demo data before deploy.
- **Git Commits (OCA Tags)**:
    - `[ADD]`: New module or feature.
    - `[FIX]`: Bug fix.
    - `[REF]`: Refactoring.
    - `[IMP]`: Improvement.
    - `[MIG]`: Migration.
    - `[REM]`: Removal.

## 9. Mindrally Development Standards (Advanced ORM & Structure)

### Strict Directory Structure

Follow the "Convention Over Configuration" principle. Your module structure MUST look like this:

```text
module_name/
├── __manifest__.py
├── __init__.py
├── models/             # Business logic (Python)
├── views/              # XML Views (Actions, Menus, Forms, Trees)
├── security/           # Access Control (ir.model.access.csv, Rules)
├── data/               # Master Data, Demo Data, Sequence
├── controllers/        # HTTP Routes (if applicable)
├── static/             # Assets (JS, CSS, Images, XML QWeb)
│   ├── src/
│   └── description/
├── wizards/            # Transient Models
└── reports/            # QWeb Reports (XML + Python parsers)
```

### ORM Best Practices

- **Decorators**:
    - `@api.depends('field_name')`: For computed fields. Triggers re-computation.
    - `@api.onchange('field_name')`: For UI-only updates (client-side).
    - `@api.constrains('field_name')`: For Python-side validation constraints.
    - `@api.model`: For methods that don't operate on a recordset (like `create`).

#### @api Decorator Decision Tree

```text
Need to define field behavior?
├── Field computed from other fields → @api.depends
│   └── CAN use dotted paths: `@api.depends('partner_id.email')`
├── Validate data → @api.constrains
│   └── CANNOT use dotted paths: only simple field names
├── Prevent record deletion → @api.ondelete (Odoo 18+)
└── Update form UI → @api.onchange
    └── NO CRUD operations allowed

Need to define method behavior?
├── Method-level, doesn't depend on self → @api.model
└── Normal record method → no decorator needed
```

- **SQL Constraints (Odoo 19)**:
    - Use `models.Constraint` defined as a class attribute instead of the `_sql_constraints` list.
    - format: `_constraint_name = models.Constraint("CHECK/UNIQUE (...)", _("Error Message"))`

```python
class MyModel(models.Model):
    _inherit = "my.model"

    _code_unique = models.Constraint("UNIQUE(code)", _("The code must be unique!"))
    _check_amount = models.Constraint("CHECK(amount > 0)", _("The amount must be positive!"))
```

- **Error Handling**:
    - Use `odoo.exceptions.ValidationError` for invalid data states (blocks transaction).
    - Use `odoo.exceptions.UserError` for business logic warnings (blocks transaction).
    - NEVER use bare Python `raise Exception`.

### Performance & Security Rules

- **Prefetching**:
    - When iterating over large recordsets, access fields that are prefetched together to minimize SQL queries.
    - Use `read_group` or `search_count` instead of `len(search())` to count records.
- **Domain Optimization**:
    - Always put the most restrictive condition FIRST in the domain validation.
    - Avoid negated domains (`'!='`) if possible (they are slower).
- **Security First**:
    - **Groups**: Define logical groups in `security/groups.xml`.
    - **ACLs**: `ir.model.access.csv` is NOT OPTIONAL. Every model must have explicit access rights.
    - **Record Rules**: Use rules to restrict data visibility (e.g., multi-company rules).

## 10. Advanced: Collective Intelligence & Error Prevention (InsightPulse)

### Concept: Proactive Engineering

Leverage the "Collective Intelligence" of the Odoo community to shift from **Reactive Debugging** (fixing bugs after they happen) to **Proactive Error Prevention** (stopping bugs before deployment).

### Key Tools & Workflows

1.  **Odoo Forum Scraper**:
    - Automatically gather "Solved" threads from `odoo.com/forum` to build a specialized Knowledge Base.
    - Identify edge cases and obscure error patterns not found in official documentation.
2.  **Error Prevention Guardrails**:
    - Analyze gathered data to create pre-deployment checklists.
    - **Example**: If the community reports frequent issues with `create()` in Odoo 19 under specific conditions, add a specialized linter rule or manual review step for that pattern.
3.  **Auto-fix Scripts**:
    - Build a repository of "Auto-patch" scripts based on community-verified solutions.
    - Use these scripts to rapidly resolve production issues by applying known fixes.

### Implementation Strategy

- **Internal "Error Dictionary"**: Maintain a local vector database or log of common Odoo 19 errors and their solutions/workarounds.
- **Automated Code Review**: Integrate "Guardrails" into CI/CD or pre-commit hooks to catch known "bad patterns" (e.g., using deprecated methods, unsafe SQL).
- **Debug Acceleration**: When encountering a traceback, query the Knowledge Base first: "Has anyone else faced this?" -> "How did they fix it?" before starting deep investigation.

## 11. Odoo 19 Comprehensive Reference (UncleCat Library)

For detailed implementation patterns, refer to the following guide index.

| Topic              | Description                                               | Source Check                                                                                                       |
| ------------------ | --------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------ |
| **Actions**        | ir.actions.\*, menus, cron jobs, bindings, server actions | [View Guide](https://github.com/unclecatvn/agent-skills/blob/master/skills/odoo-19.0/odoo-19-actions-guide.md)     |
| **API Decorators** | `@api.depends`, `@api.constrains`, `@api.ondelete`        | [View Guide](https://github.com/unclecatvn/agent-skills/blob/master/skills/odoo-19.0/odoo-19-decorator-guide.md)   |
| **Controllers**    | HTTP endpoints, routing, web controllers                  | [View Guide](https://github.com/unclecatvn/agent-skills/blob/master/skills/odoo-19.0/odoo-19-controller-guide.md)  |
| **Data Files**     | XML/CSV data files, records, shortcuts                    | [View Guide](https://github.com/unclecatvn/agent-skills/blob/master/skills/odoo-19.0/odoo-19-data-guide.md)        |
| **Development**    | Modules, manifest, wizards, reports overview              | [View Guide](https://github.com/unclecatvn/agent-skills/blob/master/skills/odoo-19.0/odoo-19-development-guide.md) |
| **Field Types**    | Defining model fields (Char, Text, Monetary, Relational)  | [View Guide](https://github.com/unclecatvn/agent-skills/blob/master/skills/odoo-19.0/odoo-19-field-guide.md)       |
| **Manifest**       | `__manifest__.py` configuration, dependencies, hooks      | [View Guide](https://github.com/unclecatvn/agent-skills/blob/master/skills/odoo-19.0/odoo-19-manifest-guide.md)    |
| **Mixins**         | mail.thread, activities, aliases, tracking, etc.          | [View Guide](https://github.com/unclecatvn/agent-skills/blob/master/skills/odoo-19.0/odoo-19-mixins-guide.md)      |
| **Model Methods**  | ORM queries, CRUD, search, domain filters                 | [View Guide](../../../ODOO/LIBRARY/Odoo19docs/odoo19docs_model_guide.md)                                           |
| **OWL Components** | Hooks, services, UI components, OWL lifecycle             | [View Guide](../../../ODOO/LIBRARY/Odoo19docs/odoo19docs_owl_guide.md)                                             |
| **Performance**    | Optimization, N+1 prevention, query tuning                | [View Guide](https://github.com/unclecatvn/agent-skills/blob/master/skills/odoo-19.0/odoo-19-performance-guide.md) |
| **Reports**        | QWeb, PDF/HTML, templates, paper formats                  | [View Guide](https://github.com/unclecatvn/agent-skills/blob/master/skills/odoo-19.0/odoo-19-reports-guide.md)     |
| **Security**       | Access rights, record rules, field permissions            | [View Guide](https://github.com/unclecatvn/agent-skills/blob/master/skills/odoo-19.0/odoo-19-security-guide.md)    |
| **Testing**        | Unit tests, browser tests, mocking, assertions            | [View Guide](https://github.com/unclecatvn/agent-skills/blob/master/skills/odoo-19.0/odoo-19-testing-guide.md)     |
| **Transactions**   | Handling database errors, savepoints, serialization       | [View Guide](https://github.com/unclecatvn/agent-skills/blob/master/skills/odoo-19.0/odoo-19-transaction-guide.md) |
| **Translation**    | Adding translations, localization, i18n, PO files         | [View Guide](https://github.com/unclecatvn/agent-skills/blob/master/skills/odoo-19.0/odoo-19-translation-guide.md) |
| **Views & XML**    | List, form, search, QWeb types, XML structure             | [View Guide](https://github.com/unclecatvn/agent-skills/blob/master/skills/odoo-19.0/odoo-19-view-guide.md)        |

### Which Guide to Use

| Task                                  | Guide                                                        |
| ------------------------------------- | ------------------------------------------------------------ |
| Creating actions, menus, cron jobs    | `odoo-19-actions-guide.md`                                   |
| Creating a new module                 | `odoo-19-development-guide.md`                               |
| Configuring **manifest**.py           | `odoo-19-manifest-guide.md`                                  |
| Creating XML/CSV data files           | `odoo-19-data-guide.md`                                      |
| Writing ORM queries/search            | `../../../ODOO/LIBRARY/Odoo19docs/odoo19docs_model_guide.md` |
| Defining model fields                 | `odoo-19-field-guide.md`                                     |
| Using @api decorators                 | `odoo-19-decorator-guide.md`                                 |
| Writing XML views                     | `odoo-19-view-guide.md`                                      |
| Fixing slow code/N+1 queries          | `odoo-19-performance-guide.md`                               |
| Handling database errors              | `odoo-19-transaction-guide.md`                               |
| Creating HTTP endpoints               | `odoo-19-controller-guide.md`                                |
| Building OWL components               | `../../../ODOO/LIBRARY/Odoo19docs/odoo19docs_owl_guide.md`   |
| Upgrading modules/migrating data      | `odoo-19-migration-guide.md`                                 |
| Using mail.thread, activities, mixins | `odoo-19-mixins-guide.md`                                    |
| Creating QWeb reports                 | `odoo-19-reports-guide.md`                                   |
| Configuring security (ACL, rules)     | `odoo-19-security-guide.md`                                  |
| Writing tests                         | `odoo-19-testing-guide.md`                                   |
| Adding translations/localization      | `odoo-19-translation-guide.md`                               |

### Odoo 19 Reference Library Structure

Để AI và Developer dễ dàng tìm kiếm, các hướng dẫn chi tiết nằm trong cấu trúc sau tại nguồn (UncleCat):

```text
agent-skills/skills/odoo/19.0/
├── SKILL.md                       # Master index
├── dev/                           # [DEPRECATED] Detailed guides moved to Odoo19docs library
├── CLAUDE.md                      # Claude Code dynamic context
└── AGENTS.md                      # AI agents instruction set
```

## 12. Odoo Migration Strategy (Version Upgrades)

### Standard Migration Workflow

1.  **Identify**: Pinpoint source/target versions and analyze module dependencies.
2.  **Assess Changes**: Review breaking changes (Python API, JS framework, XML structure).
3.  **Migration Plan**: Create a step-by-step roadmap including data migration scripts.

### Odoo 18/19 Breaking Changes & Patterns

- **Manifest Assets**: Move XML asset declarations to the `assets` key in `__manifest__.py`.
- **Search Views (Odoo 19)**: `<group>` tags are no longer allowed inside `<search>`. Put filters directly at the root.
- **Kanban Templates (Odoo 19)**: `t-name="kanban-box"` is changed to `t-name="card"`.
- **Tree Views**: Rename direct `<tree>` tags to `<list>` in Odoo 19.
- **Cron Jobs**: Remove the `<field name="numbercall">` field; it is no longer supported in Odoo 19.
- **Slug API**: `slug` function import location changed. Use `request.env['ir.http']._slug(value)` for compatibility.
- **Python Environment**: Ensure Python 3.10+ is used for Odoo 16.0 and later.
- **Removed Methods**: Always check for removed/renamed core methods like `_update_average_price()`.

### Migration Scripting (Data Integrity)

- **`pre-migrate.py`**: Use for schema changes or cleaning data BEFORE the module code is updated.
- **`post-migrate.py`**: Use for recomputing fields or updating records AFTER the new code is loaded.

### Migration Checklist

- [ ] **Release Notes**: Review official Odoo release notes for the target version.
- [ ] **Dependencies**: Verify all dependent modules have been migrated first.
- [ ] **Method Signatures**: Compare custom overrides against the base method signature in the target version.
- [ ] **Log Monitoring**: Check for deprecation warnings during the testing phase.
- [ ] **View Integrity**: Validate all XPaths against the new view structures.

## 13. Odoo Code Review Expert (Audit & QA)

### Weighted Audit Scoring

When performing a technical audit, evaluate modules based on these weighted categories:

- **ORM & Logic (40%)**: Correct decorator usage (`@api.depends`), N+1 query prevention, batch operations.
- **Security & ACL (30%)**: Missing/Incorrect `ir.model.access.csv`, unsafe Record Rules, `sudo()` over-usage, SQL injection.
- **Performance (20%)**: Efficient search domains, proper prefetching, computation optimization.
- **Standards & XML (10%)**: OCA/Odoo naming conventions, stable XPaths (no indices), deprecated tag usage.

### High-Risk Anti-Pattern Detection Checklist

- [ ] **N+1 Queries**: Identify loops performing database round-trips (search/browse inside loops).
- [ ] **Manual Commits**: Flag `self._cr.commit()` in standard business logic (leads to inconsistent states).
- [ ] **Index-based XPaths**: Replace `//form/sheet/group[2]` with `//field[@name='target_field']/..`.
- [ ] **Security (sudo)**: Check if `sudo()` is used without restricted user/group validation.
- [ ] **SQL Injection**: Check for f-strings or manual formatting in `cr.execute()`.
- [ ] **XSS**: Ensure HTML fields or dynamically generated HTML are properly escaped.
- [ ] **OCA Guidelines**: Review variable naming (underscore for private), file structure, and mandatory `__manifest__.py` keys.
- [ ] **Deprecated Methods**: Scan for methods removed in Odoo 18/19 (e.g., old `_compute` signatures).

---

## 19. Team Standard: Odoo 19 Naming & Programming Patterns

**Mục tiêu:** Cung cấp tiêu chuẩn đặt tên (Naming Conventions) và các quy tắc cốt lõi trong framework Odoo 19 giúp AI tạo ra code XML/Python chính xác, dễ bảo trì và đúng chuẩn hệ thống.

### 19.1. Chuẩn đặt tên XML (XML IDs & Record Names)

**Nguyên tắc chung:** Tất cả các XML ID chỉ được chứa chữ cái viết thường, số và dấu gạch dưới `[a-z0-9_]`.

#### Views (Giao diện)

- **View mới:** Cú pháp `{model_name}_view_{view_type}` (trong đó `view_type` là kanban, form, list, search...).
    - _Ví dụ:_ `sale_order_view_form`
- **View kế thừa (Inherit View):** TUYỆT ĐỐI sử dụng lại **chính xác ID của view gốc**. Odoo sẽ tự động gắn tiền tố là tên module hiện tại để tránh trùng lặp.
- **Thuộc tính `name` của View:**
    - _View mới:_ Giống hệt XML ID nhưng thay dấu gạch dưới `_` bằng dấu chấm `.`. (Ví dụ: `sale.order.view.form`).
    - _View kế thừa:_ Thêm hậu tố `.inherit.{details}` để làm rõ mục đích. (Ví dụ: `sale.order.view.form.inherit.my_feature`).

#### Actions (Hành động)

- **Action chính của model:** `{model_name}_action`.
- **Action phụ/đặc thù:** `{model_name}_action_{detail}` (ví dụ: `sale_order_action_quote`).
- **Window action mở view cụ thể:** `{model_name}_action_view_{view_type}`.
- **Thuộc tính `name` của Action:** Đây là tên sẽ hiển thị trực tiếp trên giao diện cho người dùng, do đó phải viết hoa chữ cái đầu và là ngôn ngữ tự nhiên, có nghĩa (Ví dụ: `name="Sales Orders"`).

#### Menus (Trình đơn)

- **Menu chính:** `{model_name}_menu`.
- **Menu con:** `{model_name}_menu_{do_stuff}`.

#### Security (Phân quyền)

- **Group (Nhóm người dùng):** `{module_name}_group_{group_name}` (ví dụ: `estate_group_user`, `estate_group_manager`).
- **Record Rule (Quy tắc bản ghi):** `{model_name}_rule_{concerned_group}` (ví dụ: `estate_property_rule_user`).

### 19.2. Chuẩn đặt tên Python

#### Models (Mô hình dữ liệu)

- Tên model phải được viết theo **dạng số ít**, phân cách bằng dấu chấm (Ví dụ: `res.partner` thay vì `res.partners`).
- **Transient Model (Wizard):** Đặt tên theo cấu trúc `<related_base_model>.<action>`. TUYỆT ĐỐI tránh dùng từ "wizard" trong tên (Ví dụ: `account.invoice.make`).

#### Fields (Trường dữ liệu)

- Luôn sử dụng kiểu `snake_case`.
- **Many2one:** BẮT BUỘC có hậu tố `_id` (Ví dụ: `partner_id`). Không dùng `partner_id` để chứa list bản ghi.
- **One2many / Many2many:** BẮT BUỘC có hậu tố `_ids` (Ví dụ: `sale_order_line_ids`).

#### Methods (Phương thức)

Sử dụng các tiền tố chuẩn sau để framework nhận diện dễ dàng:

- **Compute Field:** `_compute_<field_name>`
- **Search Field:** `_search_<field_name>`
- **Default Value:** `_default_<field_name>`
- **Selection:** `_selection_<field_name>`
- **Onchange:** `_onchange_<field_name>`
- **Constraint:** `_check_<constraint_name>`
- **Action (Gắn với nút bấm trên UI):** `action_<action_name>`.
  _(Lưu ý: Action method là public method nên KHÔNG có dấu `_`ở đầu. Luôn khai báo`self.ensure*one()` ở đầu hàm nếu hành động này chỉ áp dụng cho một bản ghi duy nhất).*

### 19.3. Cảnh Báo & Các Lỗi Lập Trình Cần Tránh (Pitfalls)

- **Cảnh báo về `cr.commit()`:** KHÔNG BAO GIỜ tự gọi hàm `cr.commit()` hoặc `cr.rollback()` trong code business thông thường. Framework Odoo tự động quản lý các transaction (giao dịch) của cơ sở dữ liệu. Việc gọi thủ công sẽ phá vỡ quy trình đồng bộ và gây lỗi rollback.
- **Khái niệm `self`:** Trong Odoo ORM, `self` KHÔNG phải là một bản ghi đơn lẻ, mà là một **tập hợp các bản ghi (recordset)**. Luôn giả định `self` chứa nhiều bản ghi (viết code với vòng lặp `for record in self:`) trừ khi method đó đã được kiểm soát bằng `self.ensure_one()`.
- **Trường phụ thuộc (Compute dependencies):** Khi viết hàm `_compute_`, luôn đảm bảo khai báo đầy đủ các trường phụ thuộc trong `@api.depends`.

### Automated Technical Review Workflow

1. **Pre-Review**: Run linter and verify `manifest.py` versioning and Odoo version compatibility.
2. **Security Audit**: Check `security/ir.model.access.csv` for 100% model coverage and review all `sudo()` calls.
3. **Deep ORM Analysis**: Review all `search()`, `create()`, and `write()` calls for batching compliance and N+1 prevention.
4. **Performance Verification**: Validate that computed fields use `@api.depends` correctly to avoid redundant calculations.
5. **Maintainability Review**: Check docstrings, complex logic fragmentation (break down large methods), and adherence to OCA naming standards.

### Review Output Format (Professional Standard)

Reviews should be structured as follows:

- **Critical Issues**: Security risks (SQL Injection, XSS) and potential data loss/corruption.
- **High Priority**: Major performance (N+1 in loops), logic errors, or missing access rights.
- **Medium Priority**: OCA compliance, code quality, and missing translations `_()`.
- **Low Priority**: Style, documentation, and hardcoded values instead of configuration.
- **Recommendations**: Refactoring opportunities and better architectural patterns.

## 14. Odoo CI/CD Optimization (High-Speed Pipelines)

Elite patterns based on Odoo Experience 2025 for reducing test boot times and optimizing resources.

### 1. Minimal Odoo Image for Testing

- **Objective**: Reduce boot time from 20s+ to < 6s.
- **Pattern**:
    - Use a base image without unnecessary system dependencies (no nodejs, no large fonts, minimal packages).
    - Pre-install core Python dependencies in the Docker layer.
    - Skip full Odoo installation; only copy the necessary source code for the testing context.
    - Use a pre-warmed PostgreSQL instance or an in-memory database if suitable.

### 2. Testcontainers Pattern

- **Objective**: Isolated, reproducible environments for every test suite.
- **Pattern**:
    - Use the `testcontainers-python` library to spin up disposable Postgres containers on-demand.
    - Ensures each test suite starts with a 100% clean database.
    - Parallelize test execution across multiple containers without cross-contamination.

### 3. Parallel Execution & Sharding

- **Objective**: Drastically reduce CI pipeline duration.
- **Pattern**:
    - Shard unit tests by module or functional tag.
    - Use `pytest-xdist` or custom orchestration to run multiple Odoo instances concurrently.
    - Aggregate coverage report and test results at the end of the pipeline.

### 4. CI Gating Policies

- **Parity Gate**: Enforce 100% Tier-0 parity before allowing merges.
- **Determinism**: Distinguish between "flaky" and "deterministic" tests. CI MUST fail on any deterministic failure.
- **Performance Budget**: Monitor boot times and test execution duration; fail CI if performance regresses beyond thresholds.

### Implementation Checklist

- [ ] Odoo Docker image is optimized for size (Alpine/Slim base).
- [ ] Postgres containers managed via Testcontainers or similar lifecycle tools.
- [ ] Parallelization enabled for the test runner (sharding).
- [ ] Boot times monitored against the < 6s benchmark.
- [ ] Tier-0 parity enforced as a hard merge gate.

## 15. Odoo 19 Upgrade & Migration Mastery (Ahmed Lakosha Patterns)

Comprehensive assistant for migrating modules between Odoo versions (14-19).

### 15.1. XML & View Transformations (Odoo 19)

| Element          | Old Way (v14-18)                      | New Way (v19)                     |
| :--------------- | :------------------------------------ | :-------------------------------- |
| **Search Group** | `<search><group>...</group></search>` | Move `<filter>` outside `<group>` |
| **List/Tree**    | `<tree string="Title">`               | `<list string="Title">`           |
| **Kanban Box**   | `<t t-name="kanban-box">`             | `<t t-name="card">`               |
| **Active ID**    | `context="{'default_x': active_id}"`  | `context="{'default_x': id}"`     |
| **Cron Jobs**    | `<field name="numbercall">-1</field>` | Remove `numbercall` field         |

### 15.2. Python API Migrations

- **Slug Wrapper (Odoo 18+)**:
    ```python
    def slug(value):
        return request.env['ir.http']._slug(value)
    ```
- **URL For (Odoo 19)**:
    ```python
    # Use environment method instead of static import
    url = self.env['ir.http']._url_for('/path')
    ```

### 15.3. Frontend JSON-RPC Replacement (Odoo 19)

In public components where `rpc` service is missing, implement this helper:

```javascript
async _jsonRpc(endpoint, params = {}) {
    const response = await fetch(endpoint, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
            'X-Csrf-Token': document.querySelector('meta[name="csrf-token"]')?.content || '',
        },
        body: JSON.stringify({
            jsonrpc: "2.0",
            method: "call",
            params: params,
            id: Math.floor(Math.random() * 1000000)
        })
    });
    const data = await response.json();
    if (data.error) throw new Error(data.error.message);
    return data.result;
}
```

### 15.4. Theme SCSS Variable Restructuring (Odoo 19)

Always use `map-merge` for palettes and fonts:

```scss
// Color Palette assignment
$o-color-palettes: map-merge(
    $o-color-palettes,
    (
        "my_theme": (
            "o-color-1": #124f81,
            "menu": 1,
            "footer": 4
        )
    )
);

// Font Configuration
$o-theme-font-configs: map-merge(
    $o-theme-font-configs,
    (
        "Inter": (
            "family": (
                "Inter",
                sans-serif
            ),
            "url": "Inter:300...&display=swap",
            "properties": (
                "base": (
                    "font-size-base": 1rem
                )
            )
        )
    )
);
```

### 15.5. Common Upgrade Errors & Solutions

- **"Service rpc is not available"**: Replace with `fetch`-based `_jsonRpc` helper.
- **"Invalid field 'numbercall' in 'ir.cron'"**: Remove the field from XML.
- **"Invalid view definition" (Search)**: Remove `<group>` tags.
- **"Missing 'card' template"**: Rename `kanban-box` to `card`.
- **"External ID not found: website.snippet_options"**: Remove inheritance from `website.snippet_options`.

### 15.6. Upgrade Testing Checklist

- [ ] Module installations/updates finish without traceback.
- [ ] List views are functional (converted to `<list>` where needed).
- [ ] Kanban cards display correctly (`t-name="card"`).
- [ ] Search filters work (no `<group>` tag errors).
- [ ] JavaScript components load (RPC to Fetch conversion verified).
- [ ] SCSS assets compile (map-merge structure is correct).
- [ ] Cron jobs execute without `numbercall` error.

### 15.7. Upgrade Helper Commands

```bash
# Force update a specific module
python -m odoo -d [DB] -u [MODULE] --stop-after-init

# Run Odoo in development mode for easier debugging
python -m odoo -d [DB] --dev=xml,css,js,qweb

# Check for specific deprecation warnings
grep -r "deprecated" /path/to/odoo/logs
```

## 17. Odoo 19 Agentic Development & Patterns (Critical)

### Critical Anti-Patterns

| Anti-Pattern                                                   | Why Bad                 | Correct Approach                                  |
| -------------------------------------------------------------- | ----------------------- | ------------------------------------------------- |
| `attrs="{'invisible': [...]}"`                                 | Deprecated in Odoo 18   | Use `invisible="..."` direct attribute            |
| `@api.depends('partner_id')` then accessing `partner_id.email` | N queries per record    | Add `@api.depends('partner_id.email')`            |
| `search()` inside loop                                         | N+1 queries             | Use `search()` with `IN` domain or `read_group()` |
| `create()` in loop                                             | N INSERT statements     | Batch: `create([{...}, {...}])`                   |
| Overriding `unlink()` for validation                           | Breaks module uninstall | Use `@api.ondelete(at_uninstall=False)`           |
| Using `<tree>` in Odoo 19                                      | Deprecated tag          | Use `<list>` instead                              |

### N+1 Query Prevention (Odoo 19 Pattern)

```python
# GOOD: single query
payments = self.env['payment'].search_read([('order_id', 'in', orders.ids)])
```

### Delete Validation (Odoo 19 Pattern)

```python
@api.ondelete(at_uninstall=False)
def _unlink_if_not_draft(self):
    if any(rec.state != 'draft' for rec in self):
        raise UserError("Cannot delete non-draft records")
```

## 18. Base Code Reference (Odoo 19)

The guides are based on analysis of Odoo 19 source code:

- `odoo/models.py` - ORM implementation
- `odoo/fields.py` - Field types
- `odoo/api.py` - Decorators
- `odoo/http.py` - HTTP layer
- `odoo/exceptions.py` - Exception types
- `odoo/tools/translate.py` - Translation system
- `odoo/addons/base/models/res_lang.py` - Language model
- `addons/web/static/src/core/l10n/translation.js` - JS translations

## 16. Odoo 19 Quality Control (QC) Master Guide

### 16.1. QC Mindset & Principles

- **Trust but Verify**: Never assume a feature or fix works without automated tests.
- **Boundary Testing**: Focus on testing edge cases (empty strings, zero values, max limits, special characters) and potential failure points, not just the "happy path."
- **N+1 Prevention**: Actively identify slow queries and optimization opportunities during the testing phase.
- **Security First**: Explicitly verify access rights (ACLs) and record rules in all test scenarios.

### 16.2. Common QC Workflow

1.  **Static Analysis**: Run `pylint` and `flake8` with Odoo-specific plugins (`pylint-odoo`) to catch syntax, convention, and standard-compliance errors.
2.  **Unit Testing**: Develop `TransactionCase` tests for business logic at the model level (test data creation -> method call -> assertions).
3.  **Integration Testing**: Create `HttpCase` and **Odoo Tours** (JS) to validate UI/UX flows, web controllers, and end-to-end user journeys.
4.  **Test Execution**: Run tests within the Odoo Docker container with high isolation.

### 16.3. Docker-based QC Command

For official QC execution in a Docker environment, use:

```bash
docker-compose exec odoo odoo -c /etc/odoo/odoo.conf -i <module_name> --test-enable --stop-after-init
```

**Flags Reference:**

- `-i <module_name>`: Ensures the module (and its tests) are installed/updated.
- `--test-enable`: Activates the test runner.
- `--stop-after-init`: Shuts down the server automatically once tests are complete.
- `--test-tags`: Use to filter specific tests (e.g., `--test-tags=at_install,post_install`).

### 16.4. AI Agent Prompting Tips for QC

When invoking QC tasks, use specific patterns:

- _"Can you write unit tests for the 'validate_order' method in my custom module?"_
- _"Verify that the record rules for 'sales_manager' are correctly enforced in the project module."_
- _"Perform a performance check on the heavy report generation method."_
- _"Audit this module for OCA compliance and N+1 query issues."_
