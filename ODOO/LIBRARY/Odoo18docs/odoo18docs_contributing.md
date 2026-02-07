# ODOO DOCUMENTATION SUMMARY - CATEGORY: ODOO18DOCS_CONTRIBUTING



--- SOURCE: contributing/development/coding_guidelines.md ---

# Coding guidelines

This page introduces the Odoo Coding Guidelines. Those aim to improve
the quality of Odoo Apps code. Indeed proper code improves readability,
eases maintenance, helps debugging, lowers complexity and promotes
reliability. These guidelines should be applied to every new module and
to all new development.

:::: warning
::: title
Warning
:::

When modifying existing files in **stable version** the original file
style strictly supersedes any other style guidelines. In other words
please never modify existing files in order to apply these guidelines.
It avoids disrupting the revision history of code lines. Diff should be
kept minimal. For more details, see our [pull request
guide](https://odoo.com/submit-pr).
::::

:::: warning
::: title
Warning
:::

When modifying existing files in **master (development) version** apply
those guidelines to existing code only for modified code or if most of
the file is under revision. In other words modify existing files
structure only if it is going under major changes. In that case first do
a **move** commit then apply the changes related to the feature.
::::

## Module structure

:::: warning
::: title
Warning
:::

For modules developed by the community, it is strongly recommended to
name your module with a prefix like your company name.
::::

### Directories

A module is organized in important directories. Those contain the
business logic; having a look at them should make you understand the
purpose of the module.

- *data/* : demo and data xml
- *models/* : models definition
- *controllers/* : contains controllers (HTTP routes)
- *views/* : contains the views and templates
- *static/* : contains the web assets, separated into *css/, js/, img/,
  lib/, \...*

Other optional directories compose the module.

- *wizard/* : regroups the transient models (`models.TransientModel`)
  and their views
- *report/* : contains the printable reports and models based on SQL
  views. Python objects and XML views are included in this directory
- *tests/* : contains the Python tests

### File naming

File naming is important to quickly find information through all odoo
addons. This section explains how to name files in a standard odoo
module. As an example we use a [plant
nursery](https://github.com/tivisse/odoodays-2018/tree/master/plant_nursery)
application. It holds two main models *plant.nursery* and *plant.order*.

Concerning *models*, split the business logic by sets of models
belonging to a same main model. Each set lies in a given file named
based on its main model. If there is only one model, its name is the
same as the module name. Each inherited model should be in its own file
to help understanding of impacted models.

``` text
addons/plant_nursery/
|-- models/
|   |-- plant_nursery.py (first main model)
|   |-- plant_order.py (another main model)
|   |-- res_partner.py (inherited Odoo model)
```

Concerning *security*, three main files should be used:

- First one is the definition of access rights done in a
  `ir.model.access.csv`{.interpreted-text role="file"} file.
- User groups are defined in `<module>_groups.xml`{.interpreted-text
  role="file"}.
- Record rules are defined in `<model>_security.xml`{.interpreted-text
  role="file"}.

``` text
addons/plant_nursery/
|-- security/
|   |-- ir.model.access.csv
|   |-- plant_nursery_groups.xml
|   |-- plant_nursery_security.xml
|   |-- plant_order_security.xml
```

Concerning *views*, backend views should be split like models and
suffixed by `_views.xml`. Backend views are list, form, kanban,
activity, graph, pivot, .. views. To ease split by model in views main
menus not linked to specific actions may be extracted into an optional
`<module>_menus.xml` file. Templates (QWeb pages used notably for portal
/ website display) are put in separate files named
`<model>_templates.xml`.

``` text
addons/plant_nursery/
|-- views/
|   | -- plant_nursery_menus.xml (optional definition of main menus)
|   | -- plant_nursery_views.xml (backend views)
|   | -- plant_nursery_templates.xml (portal templates)
|   | -- plant_order_views.xml
|   | -- plant_order_templates.xml
|   | -- res_partner_views.xml
```

Concerning *data*, split them by purpose (demo or data) and main model.
Filenames will be the main_model name suffixed by `_demo.xml` or
`_data.xml`. For instance for an application having demo and data for
its main model as well as subtypes, activities and mail templates all
related to mail module:

``` text
addons/plant_nursery/
|-- data/
|   |-- plant_nursery_data.xml
|   |-- plant_nursery_demo.xml
|   |-- mail_data.xml
```

Concerning *controllers*, generally all controllers belong to a single
controller contained in a file named `<module_name>.py`. An old
convention in Odoo is to name this file `main.py` but it is considered
as outdated. If you need to inherit an existing controller from another
module do it in `<inherited_module_name>.py`. For example adding portal
controller in an application is done in `portal.py`.

``` text
addons/plant_nursery/
|-- controllers/
|   |-- plant_nursery.py
|   |-- portal.py (inheriting portal/controllers/portal.py)
|   |-- main.py (deprecated, replaced by plant_nursery.py)
```

Concerning *static files*, Javascript files follow globally the same
logic as python models. Each component should be in its own file with a
meaningful name. For instance, the activity widgets are located in
`activity.js` of mail module. Subdirectories can also be created to
structure the \'package\' (see web module for more details). The same
logic should be applied for the templates of JS widgets (static XML
files) and for their styles (scss files). Don\'t link data (image,
libraries) outside Odoo: do not use an URL to an image but copy it in
the codebase instead.

Concerning *wizards*, naming convention is the same of for python
models: `<transient>.py` and `<transient>_views.xml`. Both are put in
the wizard directory. This naming comes from old odoo applications using
the wizard keyword for transient models.

``` text
addons/plant_nursery/
|-- wizard/
|   |-- make_plant_order.py
|   |-- make_plant_order_views.xml
```

Concerning *statistics reports* done with python / SQL views and classic
views naming is the following :

``` text
addons/plant_nursery/
|-- report/
|   |-- plant_order_report.py
|   |-- plant_order_report_views.xml
```

Concerning *printable reports* which contain mainly data preparation and
Qweb templates naming is the following :

``` text
addons/plant_nursery/
|-- report/
|   |-- plant_order_reports.xml (report actions, paperformat, ...)
|   |-- plant_order_templates.xml (xml report templates)
```

The complete tree of our Odoo module therefore looks like

``` text
addons/plant_nursery/
|-- __init__.py
|-- __manifest__.py
|-- controllers/
|   |-- __init__.py
|   |-- plant_nursery.py
|   |-- portal.py
|-- data/
|   |-- plant_nursery_data.xml
|   |-- plant_nursery_demo.xml
|   |-- mail_data.xml
|-- models/
|   |-- __init__.py
|   |-- plant_nursery.py
|   |-- plant_order.py
|   |-- res_partner.py
|-- report/
|   |-- __init__.py
|   |-- plant_order_report.py
|   |-- plant_order_report_views.xml
|   |-- plant_order_reports.xml (report actions, paperformat, ...)
|   |-- plant_order_templates.xml (xml report templates)
|-- security/
|   |-- ir.model.access.csv
|   |-- plant_nursery_groups.xml
|   |-- plant_nursery_security.xml
|   |-- plant_order_security.xml
|-- static/
|   |-- img/
|   |   |-- my_little_kitten.png
|   |   |-- troll.jpg
|   |-- lib/
|   |   |-- external_lib/
|   |-- src/
|   |   |-- js/
|   |   |   |-- widget_a.js
|   |   |   |-- widget_b.js
|   |   |-- scss/
|   |   |   |-- widget_a.scss
|   |   |   |-- widget_b.scss
|   |   |-- xml/
|   |   |   |-- widget_a.xml
|   |   |   |-- widget_a.xml
|-- views/
|   |-- plant_nursery_menus.xml
|   |-- plant_nursery_views.xml
|   |-- plant_nursery_templates.xml
|   |-- plant_order_views.xml
|   |-- plant_order_templates.xml
|   |-- res_partner_views.xml
|-- wizard/
|   |--make_plant_order.py
|   |--make_plant_order_views.xml
```

:::: note
::: title
Note
:::

File names should only contain `[a-z0-9_]` (lowercase alphanumerics and
`_`)
::::

:::: warning
::: title
Warning
:::

Use correct file permissions : folder 755 and file 644.
::::

## XML files {#contributing/development/xml_guidelines}

### Format

To declare a record in XML, the **record** notation (using *\<record\>*)
is recommended:

- Place `id` attribute before `model`
- For field declaration, `name` attribute is first. Then place the
  *value* either in the `field` tag, either in the `eval` attribute, and
  finally other attributes (widget, options, \...) ordered by
  importance.
- Try to group the record by model. In case of dependencies between
  action/menu/views, this convention may not be applicable.
- Use naming convention defined at the next point
- The tag *\<data\>* is only used to set not-updatable data with
  `noupdate=1`. If there is only not-updatable data in the file, the
  `noupdate=1` can be set on the `<odoo>` tag and do not set a `<data>`
  tag.

``` xml
<record id="view_id" model="ir.ui.view">
    <field name="name">view.name</field>
    <field name="model">object_name</field>
    <field name="priority" eval="16"/>
    <field name="arch" type="xml">
        <list>
            <field name="my_field_1"/>
            <field name="my_field_2" string="My Label" widget="statusbar" statusbar_visible="draft,sent,progress,done" />
        </list>
    </field>
</record>
```

Odoo supports custom tags acting as syntactic sugar:

- menuitem: use it as a shortcut to declare a `ir.ui.menu`
- template: use it to declare a QWeb View requiring only the `arch`
  section of the view.

These tags are preferred over the *record* notation.

### XML IDs and naming

#### Security, View and Action

Use the following pattern :

- For a menu: `{<model_name>}_menu`{.interpreted-text role="samp"}, or
  `{<model_name>}_menu_{do_stuff}`{.interpreted-text role="samp"} for
  submenus.
- For a view: `{<model_name>}_view_{<view_type>}`{.interpreted-text
  role="samp"}, where *view_type* is `kanban`, `form`, `list`, `search`,
  \...
- For an action: the main action respects
  `{<model_name>}_action`{.interpreted-text role="samp"}. Others are
  suffixed with `_{<detail>}`{.interpreted-text role="samp"}, where
  *detail* is a lowercase string briefly explaining the action. This is
  used only if multiple actions are declared for the model.
- For window actions: suffix the action name by the specific view
  information like
  `{<model_name>}_action_view_{<view_type>}`{.interpreted-text
  role="samp"}.
- For a group: `{<module_name>}_group_{<group_name>}`{.interpreted-text
  role="samp"} where *group_name* is the name of the group, generally
  \'user\', \'manager\', \...
- For a rule:
  `{<model_name>}_rule_{<concerned_group>}`{.interpreted-text
  role="samp"} where *concerned_group* is the short name of the
  concerned group (\'user\' for the \'model_name_group_user\',
  \'public\' for public user, \'company\' for multi-company rules,
  \...).

Name should be identical to xml id with dots replacing underscores.
Actions should have a real naming as it is used as display name.

``` xml
<!-- views  -->
<record id="model_name_view_form" model="ir.ui.view">
    <field name="name">model.name.view.form</field>
    ...
</record>

<record id="model_name_view_kanban" model="ir.ui.view">
    <field name="name">model.name.view.kanban</field>
    ...
</record>

<!-- actions -->
<record id="model_name_action" model="ir.act.window">
    <field name="name">Model Main Action</field>
    ...
</record>

<record id="model_name_action_child_list" model="ir.actions.act_window">
    <field name="name">Model Access Children</field>
</record>

<!-- menus and sub-menus -->
<menuitem
    id="model_name_menu_root"
    name="Main Menu"
    sequence="5"
/>
<menuitem
    id="model_name_menu_action"
    name="Sub Menu 1"
    parent="module_name.module_name_menu_root"
    action="model_name_action"
    sequence="10"
/>

<!-- security -->
<record id="module_name_group_user" model="res.groups">
    ...
</record>

<record id="model_name_rule_public" model="ir.rule">
    ...
</record>

<record id="model_name_rule_company" model="ir.rule">
    ...
</record>
```

#### Inheriting XML

Xml Ids of inheriting views should use the same ID as the original
record. It helps finding all inheritance at a glance. As final Xml Ids
are prefixed by the module that creates them there is no overlap.

Naming should contain an `.inherit.{details}` suffix to ease
understanding the override purpose when looking at its name.

``` xml
<record id="model_view_form" model="ir.ui.view">
    <field name="name">model.view.form.inherit.module2</field>
    <field name="inherit_id" ref="module1.model_view_form"/>
    ...
</record>
```

New primary views do not require the inherit suffix as those are new
records based upon the first one.

``` xml
<record id="module2.model_view_form" model="ir.ui.view">
    <field name="name">model.view.form.module2</field>
    <field name="inherit_id" ref="module1.model_view_form"/>
    <field name="mode">primary</field>
    ...
</record>
```

## Python {#contributing/development/python_guidelines}

:::: warning
::: title
Warning
:::

Do not forget to read the
`Security Pitfalls <reference/security/pitfalls>`{.interpreted-text
role="ref"} section as well to write secure code.
::::

### PEP8 options

Using a linter can help show syntax and semantic warnings or errors.
Odoo source code tries to respect Python standard, but some of them can
be ignored.

- E501: line too long
- E301: expected 1 blank line, found 0
- E302: expected 2 blank lines, found 1

### Imports

The imports are ordered as

1.  External libraries (one per line sorted and split in python stdlib)
2.  Imports of `odoo`
3.  Imports from Odoo modules (rarely, and only if necessary)

Inside these 3 groups, the imported lines are alphabetically sorted.

``` python
# 1 : imports of python lib
import base64
import re
import time
from datetime import datetime
# 2 : imports of odoo
import odoo
from odoo import Command, _, api, fields, models # ASCIIbetically ordered
from odoo.tools.safe_eval import safe_eval as eval
# 3 : imports from odoo addons
from odoo.addons.web.controllers.main import login_redirect
from odoo.addons.website.models.website import slug
```

### Idiomatics of Programming (Python)

- Always favor *readability* over *conciseness* or using the language
  features or idioms.
- Don\'t use `.clone()`

``` python
# bad
new_dict = my_dict.clone()
new_list = old_list.clone()
# good
new_dict = dict(my_dict)
new_list = list(old_list)
```

- Python dictionary : creation and update

``` python
# -- creation empty dict
my_dict = {}
my_dict2 = dict()

# -- creation with values
# bad
my_dict = {}
my_dict['foo'] = 3
my_dict['bar'] = 4
# good
my_dict = {'foo': 3, 'bar': 4}

# -- update dict
# bad
my_dict['foo'] = 3
my_dict['bar'] = 4
my_dict['baz'] = 5
# good
my_dict.update(foo=3, bar=4, baz=5)
my_dict = dict(my_dict, **my_dict2)
```

- Use meaningful variable/class/method names
- Useless variable : Temporary variables can make the code clearer by
  giving names to objects, but that doesn\'t mean you should create
  temporary variables all the time:

``` python
# pointless
schema = kw['schema']
params = {'schema': schema}
# simpler
params = {'schema': kw['schema']}
```

- Multiple return points are OK, when they\'re simpler

``` python
# a bit complex and with a redundant temp variable
def axes(self, axis):
    axes = []
    if type(axis) == type([]):
        axes.extend(axis)
    else:
        axes.append(axis)
    return axes

 # clearer
def axes(self, axis):
    if type(axis) == type([]):
        return list(axis) # clone the axis
    else:
        return [axis] # single-element list
```

- Know your builtins : You should at least have a basic understanding of
  all the Python builtins
  (<http://docs.python.org/library/functions.html>)

``` python
value = my_dict.get('key', None) # very very redundant
value = my_dict.get('key') # good
```

Also, `if 'key' in my_dict` and `if my_dict.get('key')` have very
different meaning, be sure that you\'re using the right one.

- Learn list comprehensions : Use list comprehension, dict
  comprehension, and basic manipulation using `map`, `filter`, `sum`,
  \... They make the code easier to read.

``` python
# not very good
cube = []
for i in res:
    cube.append((i['id'],i['name']))
# better
cube = [(i['id'], i['name']) for i in res]
```

- Collections are booleans too : In python, many objects have
  \"boolean-ish\" value when evaluated in a boolean context (such as an
  if). Among these are collections (lists, dicts, sets, \...) which are
  \"falsy\" when empty and \"truthy\" when containing items:

``` python
bool([]) is False
bool([1]) is True
bool([False]) is True
```

So, you can write `if some_collection:` instead of
`if len(some_collection):`.

- Iterate on iterables

``` python
# creates a temporary list and looks bar
for key in my_dict.keys():
    "do something..."
# better
for key in my_dict:
    "do something..."
# accessing the key,value pair
for key, value in my_dict.items():
    "do something..."
```

- Use dict.setdefault

``` python
# longer.. harder to read
values = {}
for element in iterable:
    if element not in values:
        values[element] = []
    values[element].append(other_value)

# better.. use dict.setdefault method
values = {}
for element in iterable:
    values.setdefault(element, []).append(other_value)
```

- As a good developer, document your code (docstring on methods, simple
  comments for tricky part of code)
- In additions to these guidelines, you may also find the following link
  interesting:
  <https://david.goodger.org/projects/pycon/2007/idiomatic/handout.html>
  (a little bit outdated, but quite relevant)

### Programming in Odoo

- Avoid to create generators and decorators: only use the ones provided
  by the Odoo API.
- As in python, use `filtered`, `mapped`, `sorted`, \... methods to ease
  code reading and performance.

#### Propagate the context

The context is a `frozendict` that cannot be modified. To call a method
with a different context, the `with_context` method should be used :

``` python
records.with_context(new_context).do_stuff() # all the context is replaced
records.with_context(**additionnal_context).do_other_stuff() # additionnal_context values override native context ones
```

:::: warning
::: title
Warning
:::

Passing parameter in context can have dangerous side-effects.

Since the values are propagated automatically, some unexpected behavior
may appear. Calling `create()` method of a model with *default_my_field*
key in context will set the default value of *my_field* for the
concerned model. But if during this creation, other objects (such as
sale.order.line, on sale.order creation) having a field name *my_field*
are created, their default value will be set too.
::::

If you need to create a key context influencing the behavior of some
object, choose a good name, and eventually prefix it by the name of the
module to isolate its impact. A good example are the keys of `mail`
module : *mail_create_nosubscribe*, *mail_notrack*,
*mail_notify_user_signature*, \...

#### Think extendable

Functions and methods should not contain too much logic: having a lot of
small and simple methods is more advisable than having few large and
complex methods. A good rule of thumb is to split a method as soon as it
has more than one responsibility (see
<http://en.wikipedia.org/wiki/Single_responsibility_principle>).

Hardcoding a business logic in a method should be avoided as it prevents
to be easily extended by a submodule.

``` python
# do not do this
# modifying the domain or criteria implies overriding whole method
def action(self):
    ...  # long method
    partners = self.env['res.partner'].search(complex_domain)
    emails = partners.filtered(lambda r: arbitrary_criteria).mapped('email')

# better but do not do this either
# modifying the logic forces to duplicate some parts of the code
def action(self):
    ...
    partners = self._get_partners()
    emails = partners._get_emails()

# better
# minimum override
def action(self):
    ...
    partners = self.env['res.partner'].search(self._get_partner_domain())
    emails = partners.filtered(lambda r: r._filter_partners()).mapped('email')
```

The above code is over extendable for the sake of example but the
readability must be taken into account and a tradeoff must be made.

Also, name your functions accordingly: small and properly named
functions are the starting point of readable/maintainable code and
tighter documentation.

This recommendation is also relevant for classes, files, modules and
packages. (See also
<http://en.wikipedia.org/wiki/Cyclomatic_complexity>)

#### Never commit the transaction

The Odoo framework is in charge of providing the transactional context
for all RPC calls. The principle is that a new database cursor is opened
at the beginning of each RPC call, and committed when the call has
returned, just before transmitting the answer to the RPC client,
approximately like this:

``` python
def execute(self, db_name, uid, obj, method, *args, **kw):
    db, pool = pooler.get_db_and_pool(db_name)
    # create transaction cursor
    cr = db.cursor()
    try:
        res = pool.execute_cr(cr, uid, obj, method, *args, **kw)
        cr.commit() # all good, we commit
    except Exception:
        cr.rollback() # error, rollback everything atomically
        raise
    finally:
        cr.close() # always close cursor opened manually
    return res
```

If any error occurs during the execution of the RPC call, the
transaction is rolled back atomically, preserving the state of the
system.

Similarly, the system also provides a dedicated transaction during the
execution of tests suites, so it can be rolled back or not depending on
the server startup options.

The consequence is that if you manually call `cr.commit()` anywhere
there is a very high chance that you will break the system in various
ways, because you will cause partial commits, and thus partial and
unclean rollbacks, causing among others:

1.  inconsistent business data, usually data loss
2.  workflow desynchronization, documents stuck permanently
3.  tests that can\'t be rolled back cleanly, and will start polluting
    the database, and triggering error (this is true even if no error
    occurs during the transaction)

Here is the very simple rule:

:   You should **NEVER** call `cr.commit()` yourself, **UNLESS** you
    have created your own database cursor explicitly! And the situations
    where you need to do that are exceptional!

    And by the way if you did create your own cursor, then you need to
    handle error cases and proper rollback, as well as properly close
    the cursor when you\'re done with it.

And contrary to popular belief, you do not even need to call
`cr.commit()` in the following situations: - in the `_auto_init()`
method of an *models.Model* object: this is taken care of by the addons
initialization method, or by the ORM transaction when creating custom
models - in reports: the `commit()` is handled by the framework too, so
you can update the database even from within a report - within
*models.Transient* methods: these methods are called exactly like
regular *models.Model* ones, within a transaction and with the
corresponding `cr.commit()/rollback()` at the end - etc. (see general
rule above if you are in doubt!)

All `cr.commit()` calls outside of the server framework from now on must
have an **explicit comment** explaining why they are absolutely
necessary, why they are indeed correct, and why they do not break the
transactions. Otherwise they can and will be removed !

#### Use translation method correctly

Odoo uses a GetText-like method named \"underscore\" `_()` to indicate
that a static string used in the code needs to be translated at runtime.
That method is available at `self.env._` using the language of the
environment.

A few very important rules must be followed when using it, in order for
it to work and to avoid filling the translations with useless junk.

Basically, this method should only be used for static strings written
manually in the code, it will not work to translate field values, such
as Product names, etc. This must be done instead using the translate
flag on the corresponding field.

The method accepts optional positional or named parameter The rule is
very simple: calls to the underscore method should always be in the form
`self.env._('literal string')` and nothing else:

``` python
_ = self.env._

# good: plain strings
error = _('This record is locked!')

# good: strings with formatting patterns included
error = _('Record %s cannot be modified!', record)

# ok too: multi-line literal strings
error = _("""This is a bad multiline example
             about record %s!""", record)
error = _('Record %s cannot be modified' \
          'after being validated!', record)

# bad: tries to translate after string formatting
#      (pay attention to brackets!)
# This does NOT work and messes up the translations!
error = _('Record %s cannot be modified!' % record)

# bad: formatting outside of translation
# This won't benefit from fallback mechanism in case of bad translation
error = _('Record %s cannot be modified!') % record

# bad: dynamic string, string concatenation, etc are forbidden!
# This does NOT work and messes up the translations!
error = _("'" + que_rec['question'] + "' \n")

# bad: field values are automatically translated by the framework
# This is useless and will not work the way you think:
error = _("Product %s is out of stock!") % _(product.name)
# and the following will of course not work as already explained:
error = _("Product %s is out of stock!" % product.name)

# Instead you can do the following and everything will be translated,
# including the product name if its field definition has the
# translate flag properly set:
error = _("Product %s is not available!", product.name)
```

Also, keep in mind that translators will have to work with the literal
values that are passed to the underscore function, so please try to make
them easy to understand and keep spurious characters and formatting to a
minimum. Translators must be aware that formatting patterns such as `%s`
or `%d`, newlines, etc. need to be preserved, but it\'s important to use
these in a sensible and obvious manner:

``` python
# Bad: makes the translations hard to work with
error = "'" + question + _("' \nPlease enter an integer value ")

# Ok (pay attention to position of the brackets too!)
error = _("Answer to question %s is not valid.\n" \
          "Please enter an integer value.", question)

# Better
error = _("Answer to question %(title)s is not valid.\n" \
          "Please enter an integer value.", title=question)
```

In general in Odoo, when manipulating strings, prefer `%` over
`.format()` (when only one variable to replace in a string), and prefer
`%(varname)` instead of position (when multiple variables have to be
replaced). This makes the translation easier for the community
translators.

### Symbols and Conventions

- 

  Model name (using the dot notation, prefix by the module name) :

  :   - When defining an Odoo Model : use singular form of the name
        (*res.partner* and *sale.order* instead of *res.partnerS* and
        *saleS.orderS*)
      - When defining an Odoo Transient (wizard) : use
        `<related_base_model>.<action>` where *related_base_model* is
        the base model (defined in *models/*) related to the transient,
        and *action* is the short name of what the transient do. Avoid
        the *wizard* word. For instance : `account.invoice.make`,
        `project.task.delegate.batch`, \...
      - When defining *report* model (SQL views e.i.) : use
        `<related_base_model>.report.<action>`, based on the Transient
        convention.

- Odoo Python Class : use Pascal case (Object-oriented style).

``` python
class AccountInvoice(models.Model):
    ...
```

- 

  Variable name :

  :   - use Pascal case for model variable
      - use underscore lowercase notation for common variable.
      - suffix your variable name with *\_id* or *\_ids* if it contains
        a record id or list of id. Don\'t use `partner_id` to contain a
        record of res.partner

``` python
Partner = self.env['res.partner']
partners = Partner.browse(ids)
partner_id = partners[0].id
```

- `One2Many` and `Many2Many` fields should always have *\_ids* as suffix
  (example: sale_order_line_ids)

- `Many2One` fields should have *\_id* as suffix (example : partner_id,
  user_id, \...)

- 

  Method conventions

  :   - Compute Field : the compute method pattern is
        *\_compute\_\<field_name\>*
      - Search method : the search method pattern is
        *\_search\_\<field_name\>*
      - Default method : the default method pattern is
        *\_default\_\<field_name\>*
      - Selection method: the selection method pattern is
        *\_selection\_\<field_name\>*
      - Onchange method : the onchange method pattern is
        *\_onchange\_\<field_name\>*
      - Constraint method : the constraint method pattern is
        *\_check\_\<constraint_name\>*
      - Action method : an object action method is prefix with
        *action\_*. Since it uses only one record, add
        `self.ensure_one()` at the beginning of the method.

- 

  In a Model attribute order should be

  :   1.  Private attributes (`_name`, `_description`, `_inherit`,
          `_sql_constraints`, \...)
      2.  Default method and `default_get`
      3.  Field declarations
      4.  Compute, inverse and search methods in the same order as field
          declaration
      5.  Selection method (methods used to return computed values for
          selection fields)
      6.  Constrains methods (`@api.constrains`) and onchange methods
          (`@api.onchange`)
      7.  CRUD methods (ORM overrides)
      8.  Action methods
      9.  And finally, other business methods.

``` python
class Event(models.Model):
    # Private attributes
    _name = 'event.event'
    _description = 'Event'

    # Default methods
    def _default_name(self):
        ...

    # Fields declaration
    name = fields.Char(string='Name', default=_default_name)
    seats_reserved = fields.Integer(string='Reserved Seats', store=True
        readonly=True, compute='_compute_seats')
    seats_available = fields.Integer(string='Available Seats', store=True
        readonly=True, compute='_compute_seats')
    price = fields.Integer(string='Price')
    event_type = fields.Selection(string="Type", selection='_selection_type')

    # compute and search fields, in the same order of fields declaration
    @api.depends('seats_max', 'registration_ids.state', 'registration_ids.nb_register')
    def _compute_seats(self):
        ...

    @api.model
    def _selection_type(self):
        return []

    # Constraints and onchanges
    @api.constrains('seats_max', 'seats_available')
    def _check_seats_limit(self):
        ...

    @api.onchange('date_begin')
    def _onchange_date_begin(self):
        ...

    # CRUD methods (and name_search, _search, ...) overrides
    def create(self, values):
        ...

    # Action methods
    def action_validate(self):
        self.ensure_one()
        ...

    # Business methods
    def mail_user_confirm(self):
        ...
```

## Javascript {#contributing/development/js_guidelines}

### Static files organization

Odoo addons have some conventions on how to structure various files. We
explain here in more details how web assets are supposed to be
organized.

The first thing to know is that the Odoo server will serve (statically)
all files located in a *static/* folder, but prefixed with the addon
name. So, for example, if a file is located in
*addons/web/static/src/js/some_file.js*, then it will be statically
available at the url
*your-odoo-server.com/web/static/src/js/some_file.js*

The convention is to organize the code according to the following
structure:

- *static*: all static files in general
  - *static/lib*: this is the place where js libs should be located, in
    a sub folder. So, for example, all files from the *jquery* library
    are in *addons/web/static/lib/jquery*
  - *static/src*: the generic static source code folder
    - *static/src/css*: all css files
    - *static/fonts*
    - *static/img*
    - *static/src/js*
      - *static/src/js/tours*: end user tour files (tutorials, not
        tests)
    - *static/src/scss*: scss files
    - *static/src/xml*: all qweb templates that will be rendered in JS
  - *static/tests*: this is where we put all test related files.
    - *static/tests/tours*: this is where we put all tour test files
      (not tutorials).

### Javascript coding guidelines

- `use strict;` is recommended for all javascript files
- Use a linter (jshint, \...)
- Never add minified Javascript Libraries
- Use Pascal case for class declaration

More precise JS guidelines are detailed in the [github
wiki](https://github.com/odoo/odoo/wiki/Javascript-coding-guidelines).
You may also have a look at existing API in Javascript by looking
Javascript References.

## CSS and SCSS {#contributing/coding_guidelines/scss}

### Syntax and Formatting {#contributing/coding_guidelines/scss/formatting}

::::: tabs
::: code-tab
html SCSS

.o_foo, .o_foo_bar, .o_baz {

:   height: \$o-statusbar-height;

    .o_qux {

    :   height: \$o-statusbar-height \* 0.5;

    }

}

.o_corge {

:   background: \$o-list-footer-bg-color;

}
:::

::: code-tab
css CSS

.o_foo, .o_foo_bar, .o_baz {

:   height: 32px;

}

.o_foo .o_quux, .o_foo_bar .o_quux, .o_baz .o_qux {

:   height: 16px;

}

.o_corge {

:   background: #EAEAEA;

}
:::
:::::

- four (4) space indents, no tabs;
- columns of max. 80 characters wide;
- opening brace ([{]{.title-ref}): empty space after the last selector;
- closing brace ([}]{.title-ref}): on its own new line;
- one line for each declaration;
- meaningful use of whitespace.

::: spoiler
Suggested Stylelint settings

``` html
"stylelint.config": {
    "rules": {
        // https://stylelint.io/user-guide/rules

        // Avoid errors
        "block-no-empty": true,
        "shorthand-property-no-redundant-values": true,
        "declaration-block-no-shorthand-property-overrides": true,

        // Stylistic conventions
        "indentation": 4,

        "function-comma-space-after": "always",
        "function-parentheses-space-inside": "never",
        "function-whitespace-after": "always",

        "unit-case": "lower",

        "value-list-comma-space-after": "always-single-line",

        "declaration-bang-space-after": "never",
        "declaration-bang-space-before": "always",
        "declaration-colon-space-after": "always",
        "declaration-colon-space-before": "never",

        "block-closing-brace-empty-line-before": "never",
        "block-opening-brace-space-before": "always",

        "selector-attribute-brackets-space-inside": "never",
        "selector-list-comma-space-after": "always-single-line",
        "selector-list-comma-space-before": "never-single-line",
    }
},
```
:::

### Properties order {#contributing/coding_guidelines/scss/properties_order}

Order properties from the \"outside\" in, starting from
[position]{.title-ref} and ending with decorative rules
([font]{.title-ref}, [filter]{.title-ref}, etc.).

`Scoped SCSS variables <contributing/coding_guidelines/scss/scoped_scss_variables>`{.interpreted-text
role="ref"} and
`CSS variables <contributing/coding_guidelines/scss/css_variables>`{.interpreted-text
role="ref"} must be placed at the very top, followed by an empty line
separating them from other declarations.

``` html
.o_element {
   $-inner-gap: $border-width + $legend-margin-bottom;

   --element-margin: 1rem;
   --element-size: 3rem;

   @include o-position-absolute(1rem);
   display: block;
   margin: var(--element-margin);
   width: calc(var(--element-size) + #{$-inner-gap});
   border: 0;
   padding: 1rem;
   background: blue;
   font-size: 1rem;
   filter: blur(2px);
}
```

### Naming Conventions {#contributing/coding_guidelines/scss/naming_conventions}

Naming conventions in CSS are incredibly useful in making your code more
strict, transparent and informative.

| Avoid [id]{.title-ref} selectors, and prefix your classes with
  [o\_\<module_name\>]{.title-ref}, where [\<module_name\>]{.title-ref}
  is the technical name of the module ([sale]{.title-ref},
  [im_chat]{.title-ref}, \...) or the main route reserved by the module
  (for website modules mainly, i.e. : [o_forum]{.title-ref} for the
  [website_forum]{.title-ref} module).
| The only exception for this rule is the webclient: it simply uses the
  [o\_]{.title-ref} prefix.

Avoid creating hyper-specific classes and variable names. When naming
nested elements, opt for the \"Grandchild\" approach.

::: rst-class
bg-light
:::

::::: example
::: {.container .alert .alert-danger}
Don\'t

``` html
<div class=“o_element_wrapper”>
   <div class=“o_element_wrapper_entries”>
      <span class=“o_element_wrapper_entries_entry”>
         <a class=“o_element_wrapper_entries_entry_link”>Entry</a>
      </span>
   </div>
</div>
```
:::

::: {.container .alert .alert-success}
Do

``` html
<div class=“o_element_wrapper”>
   <div class=“o_element_entries”>
      <span class=“o_element_entry”>
         <a class=“o_element_link”>Entry</a>
      </span>
   </div>
</div>
```
:::
:::::

Besides being more compact, this approach eases maintenance because it
limits the need of renaming when changes occur at the DOM.

#### SCSS Variables {#contributing/coding_guidelines/scss/scss_variables}

Our standard convention is
[\$o-\[root\]-\[element\]-\[property\]-\[modifier\]]{.title-ref}, with:

- 

  [\$o-]{.title-ref}

  :   The prefix.

- 

  [\[root\]]{.title-ref}

  :   Either the component **or** the module name (components take
      priority).

- 

  [\[element\]]{.title-ref}

  :   An optional identifier for inner elements.

- 

  [\[property\]]{.title-ref}

  :   The property/behavior defined by the variable.

- 

  [\[modifier\]]{.title-ref}

  :   An optional modifier.

::: example
``` scss
$o-block-color: value;
$o-block-title-color: value;
$o-block-title-color-hover: value;
```
:::

#### SCSS Variables (scoped) {#contributing/coding_guidelines/scss/scoped_scss_variables}

These variables are declared within blocks and are not accessible from
the outside. Our standard convention is [\$-\[variable
name\]]{.title-ref}.

::: example
``` html
.o_element {
   $-inner-gap: compute-something;

   margin-right: $-inner-gap;

   .o_element_child {
      margin-right: $-inner-gap * 0.5;
   }
}
```
:::

::: seealso
[Variables scope on the SASS
Documentation](https://sass-lang.com/documentation/variables#scope)
:::

#### SCSS Mixins and Functions {#contributing/coding_guidelines/scss/mixins}

Our standard convention is [o-\[name\]]{.title-ref}. Use descriptive
names. When naming functions, use verbs in the imperative form (e.g.:
[get]{.title-ref}, [make]{.title-ref}, [apply]{.title-ref}\...).

Name optional arguments in the `scoped variables form
<contributing/coding_guidelines/scss/scoped_scss_variables>`{.interpreted-text
role="ref"}, so [\$-\[argument\]]{.title-ref}.

::: example
``` html
@mixin o-avatar($-size: 1.5em, $-radius: 100%) {
   width: $-size;
   height: $-size;
   border-radius: $-radius;
}

@function o-invert-color($-color, $-amount: 100%) {
   $-inverse: change-color($-color, $-hue: hue($-color) + 180);

   @return mix($-inverse, $-color, $-amount);
}
```
:::

::: seealso
\- [Mixins on the SASS
Documentation](https://sass-lang.com/documentation/at-rules/mixin) -
[Functions on the SASS
Documentation](https://sass-lang.com/documentation/at-rules/function)
:::

#### CSS Variables {#contributing/coding_guidelines/scss/css_variables}

In Odoo, the use of CSS variables is strictly DOM-related. Use them to
**contextually** adapt the design and layout.

Our standard convention is BEM, so
[\--\[root\]\_\_\[element\]-\[property\]\--\[modifier\]]{.title-ref},
with:

- 

  [\[root\]]{.title-ref}

  :   Either the component **or** the module name (components take
      priority).

- 

  [\[element\]]{.title-ref}

  :   An optional identifier for inner elements.

- 

  [\[property\]]{.title-ref}

  :   The property/behavior defined by the variable.

- 

  [\[modifier\]]{.title-ref}

  :   An optional modifier.

::: example
``` scss
.o_kanban_record {
   --KanbanRecord-width: value;
   --KanbanRecord__picture-border: value;
   --KanbanRecord__picture-border--active: value;
}

// Adapt the component when rendered in another context.
.o_form_view {
   --KanbanRecord-width: another-value;
   --KanbanRecord__picture-border: another-value;
   --KanbanRecord__picture-border--active: another-value;
}
```
:::

### Use of CSS Variables {#contributing/coding_guidelines/scss/variables_use}

In Odoo, the use of CSS variables is strictly DOM-related, meaning that
are used to **contextually** adapt the design and layout rather than to
manage the global design-system. These are typically used when a
component\'s properties can vary in specific contexts or in other
circumstances.

We define these properties inside the component\'s main block, providing
default fallbacks.

::: example
``` {.scss caption=":file:`my_component.scss`"}
.o_MyComponent {
   color: var(--MyComponent-color, #313131);
}
```

``` {.scss caption=":file:`my_dashboard.scss`"}
.o_MyDashboard {
   // Adapt the component in this context only
   --MyComponent-color: #017e84;
}
```
:::

::: seealso
[CSS variables on MDN web
docs](https://developer.mozilla.org/en-US/docs/Web/CSS/Using_CSS_custom_properties)
:::

#### CSS and SCSS Variables {#contributing/coding_guidelines/scss/css_scss_variables_use}

Despite being apparently similar, [CSS]{.title-ref} and
[SCSS]{.title-ref} variables behave very differently. The main
difference is that, while [SCSS]{.title-ref} variables are
**imperative** and compiled away, [CSS]{.title-ref} variables are
**declarative** and included in the final output.

::: seealso
[CSS/SCSS variables difference on the SASS
Documentation](https://sass-lang.com/documentation/variables#:~:text=CSS%20variables%20are%20included%20in,use%20will%20stay%20the%20same)
:::

In Odoo, we take the best of both worlds: using the [SCSS]{.title-ref}
variables to define the design-system while opting for the
[CSS]{.title-ref} ones when it comes to contextual adaptations.

The implementation of the previous example should be improved by adding
SCSS variables in order to gain control at the top-level and ensure
consistency with other components.

::: example
``` {.scss caption=":file:`secondary_variables.scss`"}
$o-component-color: $o-main-text-color;
$o-dashboard-color: $o-info;
// [...]
```

``` {.text caption=":file:`component.scss`"}
.o_component {
   color: var(--MyComponent-color, #{$o-component-color});
}
```

``` {.text caption=":file:`dashboard.scss`"}
.o_dashboard {
   --MyComponent-color: #{$o-dashboard-color};
}
```
:::

#### The [:root]{.title-ref} pseudo-class {#contributing/coding_guidelines/scss/root}

Defining CSS variables on the [:root]{.title-ref} pseudo-class is a
technique we normally **don\'t use** in Odoo\'s UI. The practice is
commonly used to access and modify CSS variables globally. We perform
this using SCSS instead.

Exceptions to this rule should be fairly apparent, such as templates
shared across bundles that require a certain level of contextual
awareness in order to be rendered properly.




--- SOURCE: contributing/development/git_guidelines.md ---

# Git guidelines

## Configure your git

Based on ancestral experience and oral tradition, the following things
go a long way towards making your commits more helpful:

- Be sure to define both the user.email and user.name in your local git
  config

  ``` text
  git config --global <var> <value>
  ```

- Be sure to add your full name to your Github profile here. Please feel
  fancy and add your team, avatar, your favorite quote, and whatnot ;-)

## Commit message structure

Commit message has four parts: tag, module, short description and full
description. Try to follow the preferred structure for your commit
messages

``` text
[TAG] module: describe your change in a short sentence (ideally < 50 chars)

Long version of the change description, including the rationale for the change,
or a summary of the feature being introduced.

Please spend a lot more time describing WHY the change is being done rather
than WHAT is being changed. This is usually easy to grasp by actually reading
the diff. WHAT should be explained only if there are technical choices
or decision involved. In that case explain WHY this decision was taken.

End the message with references, such as task or bug numbers, PR numbers, and
OPW tickets, following the suggested format:
task-123 (related to task)
Fixes #123  (close related issue on Github)
Closes #123  (close related PR on Github)
opw-123 (related to ticket)
```

## Tag and module name

Tags are used to prefix your commit. They should be one of the following

- **\[FIX\]** for bug fixes: mostly used in stable version but also
  valid if you are fixing a recent bug in development version;
- **\[REF\]** for refactoring: when a feature is heavily rewritten;
- **\[ADD\]** for adding new modules;
- **\[REM\]** for removing resources: removing dead code, removing
  views, removing modules, \...;
- **\[REV\]** for reverting commits: if a commit causes issues or is not
  wanted reverting it is done using this tag;
- **\[MOV\]** for moving files: use git move and do not change content
  of moved file otherwise Git may loose track and history of the file;
  also used when moving code from one file to another;
- **\[REL\]** for release commits: new major or minor stable versions;
- **\[IMP\]** for improvements: most of the changes done in development
  version are incremental improvements not related to another tag;
- **\[MERGE\]** for merge commits: used in forward port of bug fixes but
  also as main commit for feature involving several separated commits;
- **\[CLA\]** for signing the Odoo Individual Contributor License;
- **\[I18N\]** for changes in translation files;
- **\[PERF\]** for performance patches;
- **\[CLN\]** for code cleanup;
- **\[LINT\]** for linting passes;

After tag comes the modified module name. Use the technical name as
functional name may change with time. If several modules are modified,
list them or use various to tell it is cross-modules. Unless really
required or easier avoid modifying code across several modules in the
same commit. Understanding module history may become difficult.

## Commit message header

After tag and module name comes a meaningful commit message header. It
should be self explanatory and include the reason behind the change. Do
not use single words like \"bugfix\" or \"improvements\". Try to limit
the header length to about 50 characters for readability.

Commit message header should make a valid sentence once concatenated
with `if applied, this commit will <header>`. For example
`[IMP] base: prevent to archive users linked to active partners` is
correct as it makes a valid sentence
`if applied, this commit will prevent users to archive...`.

## Commit message full description

In the message description specify the part of the code impacted by your
changes (module name, lib, transversal object, \...) and a description
of the changes.

First explain WHY you are modifying code. What is important if someone
goes back to your commit in about 4 decades (or 3 days) is why you did
it. It is the purpose of the change.

What you did can be found in the commit itself. If there was some
technical choices involved it is a good idea to explain it also in the
commit message after the why. For Odoo R&D developers \"PO team asked me
to do it\" is not a valid why, by the way.

Please avoid commits which simultaneously impact multiple modules. Try
to split into different commits where impacted modules are different. It
will be helpful if we need to revert changes in a given module
separately.

Don\'t hesitate to be a bit verbose. Most people will only see your
commit message and judge everything you did in your life just based on
those few sentences. No pressure at all.

**You spend several hours, days or weeks working on meaningful features.
Take some time to calm down and write clear and understandable commit
messages.**

If you are an Odoo R&D developer the WHY should be the purpose of the
task you are working on. Full specifications make the core of the commit
message. **If you are working on a task that lacks purpose and
specifications please consider making them clear before continuing.**

Finally here are some examples of correct commit messages :

``` text
[REF] models: use `parent_path` to implement parent_store

 This replaces the former modified preorder tree traversal (MPTT) with the
 fields `parent_left`/`parent_right`[...]

[FIX] account: remove frenglish

 [...]

 Closes #22793
 Fixes #22769

[FIX] website: remove unused alert div, fixes look of input-group-btn

 Bootstrap's CSS depends on the input-group-btn
 element being the first/last child of its parent.
 This was not the case because of the invisible
 and useless alert.
```

:::: note
::: title
Note
:::

Use the long description to explain the *why* not the *what*, the *what*
can be seen in the diff
::::




--- SOURCE: contributing/development.md ---

show-content

:   

# Development

::: {.toctree titlesonly=""}
development/coding_guidelines development/git_guidelines
:::

If you are reading this, chances are that you are interested in learning
how to contribute to the codebase of Odoo. Whether that\'s the case or
you landed here by accident, we\'ve got you covered!

::: seealso
`Discover other ways to contribute to Odoo <../contributing>`{.interpreted-text
role="doc"}
:::

When you feel ready, jump to the
`contributing/development/setup`{.interpreted-text role="ref"} section
to begin your journey in contributing to the development of Odoo.

## Environment setup {#contributing/development/setup}

The instructions below help you prepare your environment for making
local changes to the codebase and then push them to GitHub. Skip this
section and go to
`contributing/development/first-contribution`{.interpreted-text
role="ref"} if you have already completed this step.

1.  First, you need to [create a GitHub
    account](https://github.com/join). Odoo uses GitHub to manage the
    source code of its products, and this is where you will make your
    changes and submit them for review.

2.  [Generate a new SSH key and register it on your GitHub
    account](https://docs.github.com/en/authentication/connecting-to-github-with-ssh).

3.  Go to [github.com/odoo/odoo](https://github.com/odoo/odoo) and click
    on the `Fork`{.interpreted-text role="guilabel"} button in the top
    right corner to create a fork (`your own copy`{.interpreted-text
    role="dfn"}) of the repository on your account. Do the same with
    [github.com/odoo/enterprise](https://github.com/odoo/enterprise) if
    you have access to it. This creates a copy of the codebase to which
    you can make changes without affecting the main codebase. Skip this
    step if you work at Odoo.

4.  [Install
    Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git).
    It is a command-line (`a text interface`{.interpreted-text
    role="dfn"}) tool that allows tracking the history of changes made
    to a file and, more importantly, working on different versions of
    that file simultaneously. It means you do not need to worry about
    overwriting someone else's pending work when making changes.

    Verify that the installation directory of Git is included in your
    system\'s [PATH]{.title-ref} variable.

    ::::: tabs
    ::: group-tab
    Linux and macOS

    Follow the [guide to update the PATH variable on Linux and
    macOS](https://unix.stackexchange.com/a/26059) with the installation
    path of Git (by default `/usr/bin/git`{.interpreted-text
    role="file"}).
    :::

    ::: group-tab
    Windows

    Follow the [guide to update the PATH variable on
    Windows](https://www.howtogeek.com/118594/how-to-edit-your-system-path-for-easy-command-line-access/)
    with the installation path of Git (by default
    `C:\\Program Files\\Git`{.interpreted-text role="file"}).
    :::
    :::::

5.  Configure Git to identify yourself as the author of your future
    contributions. Enter the same email address you used to register on
    GitHub.

    ``` console
    $ git config --global user.name "Your Name"
    $ git config --global user.email "youremail@example.com"
    ```

6.  `Install Odoo from the sources <../administration/on_premise/source>`{.interpreted-text
    role="doc"}. Make sure to fetch the sources through Git with SSH.

7.  Configure Git to push changes to your fork(s) rather than to the
    main codebase. If you work at Odoo, configure Git to push changes to
    the shared forks created on the account **odoo-dev**.

    ::::: tabs
    ::: tab
    Link Git with your fork(s)

    In the command below, replace [\<your_github_account\>]{.title-ref}
    with the name of the GitHub account on which you created the
    fork(s).

    ``` console
    $ cd /CommunityPath
    $ git remote add dev git@github.com:<your_github_account>/odoo.git
    ```

    If you have access to [odoo/enterprise]{.title-ref}, configure the
    related remote too.

    ``` console
    $ cd /EnterprisePath
    $ git remote add dev git@github.com:<your_github_account>/enterprise.git
    ```
    :::

    ::: tab
    Link Git with odoo-dev

    ``` console
    $ cd /CommunityPath
    $ git remote add dev git@github.com:odoo-dev/odoo.git
    $ git remote set-url --push origin you_should_not_push_on_this_repository

    $ cd /EnterprisePath
    $ git remote add dev git@github.com:odoo-dev/enterprise.git
    $ git remote set-url --push origin you_should_not_push_on_this_repository
    ```
    :::
    :::::

8.  That\'s it! You are ready to `make your first contribution
    <contributing/development/first-contribution>`{.interpreted-text
    role="ref"}.

## Make your first contribution {#contributing/development/first-contribution}

:::: important
::: title
Important
:::

\- Odoo development can be challenging for beginners. We recommend you
to be knowledgeable enough to code a small module before contributing.
If that is not the case, take some time to go through the
`developer tutorials </developer/tutorials>`{.interpreted-text
role="doc"} to fill in the gaps. - Some steps of this guide require to
be comfortable with Git. Here are some
[tutorials](https://www.atlassian.com/git/tutorials) and an [interactive
training](https://learngitbranching.js.org/) if you are stuck at some
point.
::::

Now that your environment is set up, you can start contributing to the
codebase. In a terminal, navigate to the directory where you installed
Odoo from sources and follow the guide below.

1.  Choose the version of Odoo to which you want to make changes. Keep
    in mind that contributions targeting an
    `unsupported version of Odoo </administration/standard_extended_support>`{.interpreted-text
    role="doc"} are not accepted. This guide assumes that the changes
    target Odoo {CURRENT_VERSION}, which corresponds to branch
    [{CURRENT_BRANCH}]{.title-ref}.

2.  Create a new branch starting from branch {CURRENT_BRANCH}. Prefix
    the branch name with the base branch:
    [{CURRENT_BRANCH}-\...]{.title-ref}. If you work at Odoo, suffix the
    branch name with your Odoo handle:
    [{CURRENT_BRANCH}-\...-xyz]{.title-ref}.

    ::: example
    ``` console
    $ git switch -c {CURRENT_BRANCH}-fix-invoices
    ```

    ``` console
    $ git switch -c {CURRENT_BRANCH}-fix-invoices-xyz
    ```
    :::

3.  [Sign the Odoo CLA]({GITHUB_PATH}/doc/cla/sign-cla.md) if not
    already done. Skip this step if you work at Odoo.

4.  Make the desired changes to the codebase. When working on the
    codebase, follow these rules:

    - Keep your changes focused and specific. It is best to work on one
      particular feature or bug fix at a time rather than tackle
      multiple unrelated changes simultaneously.
    - Respect the [stable
      policy](https://github.com/odoo/odoo/wiki/Contributing#what-does-stable-mean)
      when working in another branch than [master]{.title-ref}.
    - Follow the
      `coding guidelines <development/coding_guidelines>`{.interpreted-text
      role="doc"}.
    - Test your changes thoroughly and
      `write tests </developer/reference/backend/testing>`{.interpreted-text
      role="doc"} to ensure that everything is working as expected and
      that there are no regressions or unintended consequences.

5.  Commit your changes. Write a clear commit message as instructed in
    the `Git guidelines
    <development/git_guidelines>`{.interpreted-text role="doc"}.

    ``` console
    $ git add .
    $ git commit
    ```

6.  Push your change to your fork, for which we added the remote alias
    [dev]{.title-ref}.

    ::: example
    ``` console
    $ git push -u dev {CURRENT_BRANCH}-fix-invoices-xyz
    ```
    :::

7.  Open a `PR (Pull Request)`{.interpreted-text role="abbr"} on GitHub
    to submit your changes for review.

    1.  Go to the [compare page of the odoo/odoo
        codebase](https://github.com/odoo/odoo/compare), or the [compare
        page of the odoo/enterprise
        codebase](https://github.com/odoo/enterprise/compare), depending
        on which codebase your changes target.
    2.  Select **{CURRENT_BRANCH}** for the base.
    3.  Click on `compare across forks`{.interpreted-text
        role="guilabel"}.
    4.  Select **\<your_github_account\>/odoo** or
        **\<your_github_account\>/enterprise** for the head repository.
        Replace [\<your_github_account\>]{.title-ref} with the name of
        the GitHub account on which you created the fork or by
        **odoo-dev** if you work at Odoo.
    5.  Review your changes and click on the
        `Create pull request`{.interpreted-text role="guilabel"} button.
    6.  Tick the `Allow edits from maintainer`{.interpreted-text
        role="guilabel"} checkbox. Skip this step if you work at Odoo.
    7.  Complete the description and click on the
        `Create pull request`{.interpreted-text role="guilabel"} button
        again.

8.  At the bottom of the page, check the mergeability status and address
    any issues.

9.  As soon as your `PR (Pull Request)`{.interpreted-text role="abbr"}
    is ready for merging, a member of the Odoo team is automatically
    assigned for review. If the reviewer has questions or remarks, they
    will post them as comments and you will be notified by email. Those
    comments must be resolved for the contribution to go forward.

10. Once your changes are approved, the review merges them and they
    become available for all Odoo users after the next code update!




--- SOURCE: contributing/documentation/content_guidelines.md ---

# Content guidelines

While we encourage you to adopt your own writing style, some rules still
apply to maintain clarity and ensure readers can easily understand the
content.

:::: important
::: title
Important
:::

We strongly recommend to read the `rst_guidelines`{.interpreted-text
role="doc"} and the main `../documentation`{.interpreted-text
role="doc"} pages before contributing.
::::

## Documentation organization {#contributing/content/organization}

When writing documentation about a given topic, keep pages within the
same folder organized.

For most topics, a single page should do the job. Place it in the
appropriate section of the documentation (e.g., content related to the
CRM app goes under `User Docs --> Sales
--> CRM`{.interpreted-text role="menuselection"}) and follow the
`document structure <contributing/content/structure>`{.interpreted-text
role="ref"} guidelines.

For more complex topics, several pages may be needed to cover all their
aspects. Usually, you will find yourself adding documentation to a topic
that is already partially covered. In that case, either create a new
page and place it at the same level as other related pages or add new
sections to an existing page. When documenting a complex topic from
scratch, organize the content across several child pages that are
referenced on that directory\'s parent page (the `TOC (Table Of
Contents)`{.interpreted-text role="abbr"} page); whenever possible,
write content on the parent page and not only on the child pages. Make
the parent page accessible from the navigation menu by using the
`show-content <contributing/rst/document-metadata>`{.interpreted-text
role="ref"} metadata directive.

:::: note
::: title
Note
:::

Avoid duplicating content whenever possible; if a topic is already
documented on another page,
`reference <contributing/rst/hyperlinks>`{.interpreted-text role="ref"}
that existing information instead of repeating it.
::::

:::: important
::: title
Important
:::

When deleting or moving a [.rst]{.title-ref} file, update the
corresponding text file in the `redirects`{.interpreted-text
role="file"} folder based on your branch\'s version (e.g.,
`17.0.txt`{.interpreted-text role="file"}). To do so, add a new line at
the bottom of the relevant section (e.g., [\#
applications/sales]{.title-ref}). On this line, first, add the
redirection entry point with the old file location, followed by a space,
and then add the exit point with the new or relevant file location. For
example, if moving the file `unsplash.rst`{.interpreted-text
role="file"} from
`applications/websites/website/configuration`{.interpreted-text
role="file"} to `applications/general/integrations`{.interpreted-text
role="file"}, add the following entry under the section \`#
applications/websites\`:

``` text
applications/websites/website/configuration/unsplash.rst applications/general/integrations/unsplash.rst
```
::::

## Document structure {#contributing/content/structure}

Use different **heading levels** to organize text by sections and
sub-sections. Headings are not only displayed in the document but also
on the navigation menu (only the H1) and on the \"On this page\" sidebar
(all H2 to H6).

+--------------------------+----------------------------------+------------------------------------------------------------+
| | **H1: Page title**                                                                                                     |
| | The *page title* gives readers a quick and clear understanding of what the content is about.                           |
|                                                                                                                          |
| The *content* in this section describes the upcoming content from a **business point of view**, and should not put the   |
| emphasis on Odoo, as this is documentation and not marketing.                                                            |
|                                                                                                                          |
| Under the page title (H1), start with a **lead paragraph**, which helps the reader make sure that they\'ve found the     |
| right page, then explain the **business aspects of this topic** in the following paragraphs.                             |
+--------------------------+-----------------------------------------------------------------------------------------------+
|                          | | **H2: Section title (configuration)**                                                       |
|                          | | This first H2 section is about the configuration of the feature, or the prerequisites to    |
|                          |   achieve a specific goal.                                                                    |
+--------------------------+-----------------------------------------------------------------------------------------------+
|                          | | **H2: Section title (main sections)**                                                       |
|                          | | Create as many main sections as you have actions or features to distinguish.                |
+--------------------------+----------------------------------+------------------------------------------------------------+
|                          |                                  | | **H3: Subsection**                                       |
|                          |                                  | | Subsections are perfect for assessing very specific      |
|                          |                                  |   points.                                                  |
+--------------------------+----------------------------------+------------------------------------------------------------+
|                          | **H2: Next Section**                                                                          |
+--------------------------+-----------------------------------------------------------------------------------------------+

To write good titles and headings:

- **Be concise**: **avoid sentences**, questions, and titles starting
  with \"how to\".
- **Do not use pronouns** in your titles, especially 2nd person
  (*you/your*).
- Use **sentence case**. This means you capitalize only:
  - the first word of the title or heading;
  - the first word after a colon;
  - proper nouns (brands, product and service names, etc.).

:::: note
::: title
Note
:::

\- Most titles and headings generally refer to a concept and do *not*
represent the name of a feature or a model. - Do not capitalize the
words of an acronym if they do not entail a proper noun. - Verbs in
headings are fine since they often describe an action.
::::

::: seealso
\-
`RST cheat sheet: headings <contributing/rst/headings>`{.interpreted-text
role="ref"} -
`RST cheat sheet: markups <contributing/rst/markups>`{.interpreted-text
role="ref"}
:::

## Writing style {#contributing/content/writing-style}

Writing for documentation is not the same as writing for a blog or
another medium. Readers are more likely to skim through content to find
the information they need. Keep in mind that the documentation is a
place to **inform and describe**, not to convince and promote.

::::: tip
::: title
Tip
:::

Avoid using *you* as much as possible by opting for the imperative mood
where appropriate. However, do not complicate sentences just to avoid
addressing the reader directly.

::: example
\| **Good example:** \| Select the appropriate option from the dropdown
menu.

| **Bad example:**
| You can select the appropriate option from the dropdown menu.
:::
:::::

### Spelling {#contributing/content/spelling}

Use American English spelling and grammar throughout the documentation.

### Consistency {#contributing/content/consistency}

*Consistency is key to everything.*

Make sure that the writing style remains **consistent**. When modifying
existing content, try to match the existing tone and presentation or
rewrite it to match your own style.

### Capitalization {#contributing/content/capitalization}

- Use sentence case in
  `titles <contributing/content/structure>`{.interpreted-text
  role="ref"}.
- Capitalize app names, e.g., **Odoo Sales**, the **Sales** app, etc.
- Capitalize labels (such as fields and buttons) as they appear in Odoo.
  If a label is in all caps, convert it to sentence case.
- Capitalize the first letter after a colon if it is a complete
  sentence.
- Avoid capitalizing common nouns, such as \"sales order\" and \"bill of
  materials\", unless you reference a label or a model.

### Grammatical tenses {#contributing/content/grammatical-tenses}

In English, descriptions and instructions usually require the use of the
**present tense**, while the *future tense* is appropriate only when a
specific event is to happen ulteriorly.

::: example
| **Good example (present):**
| Screenshots are automatically resized to fit the content block\'s
  width.

| **Bad example (future):**
| When you take a screenshot, remember that it will be automatically
  resized to fit the content block\'s width.
:::

## Lists {#contributing/content/lists}

Lists help organize information in a clear and concise manner and
improve readability. They are used to highlight important details, guide
the reader through steps in a systematic way, etc.

Use numbered lists when the sequence matters, e.g., instructions,
procedures, or steps that must be performed in a particular order.

Use bulleted lists when the sequence of items does not matter, e.g.,
lists of features, fields, options, etc.

:::: tip
::: title
Tip
:::

\- Use inline text for explanations or when there are three or fewer
list items. - Combine bulleted and numbered lists using
`nested lists <contributing/rst/nested-list>`{.interpreted-text
role="ref"} where appropriate. - Consider grouping simple steps within
the same list item, e.g.: Go to `Website
--> Site --> Pages`{.interpreted-text role="menuselection"} and click
`New`{.interpreted-text role="guilabel"}. - Only use a period at the end
of the list item if it forms a complete sentence.
::::

::: example
**Bulleted list**

The following fields are available on the
`Replenishment`{.interpreted-text role="guilabel"} report:

- `Product`{.interpreted-text role="guilabel"}: the product that
  requires a replenishment
- `Location`{.interpreted-text role="guilabel"}: the specific location
  where the product is stored
- `Warehouse`{.interpreted-text role="guilabel"}: the warehouse where
  the product is stored
- `On Hand`{.interpreted-text role="guilabel"}: the amount of product
  currently available

**Numbered list**

To create a new website page, proceed as follows:

1.  - Either open the **Website** app, click `+ New`{.interpreted-text
      role="guilabel"} in the top-right corner, then select
      `Page`{.interpreted-text role="guilabel"};
    - Or go to `Website --> Site --> Pages`{.interpreted-text
      role="menuselection"} and click `New`{.interpreted-text
      role="guilabel"}.
2.  Enter a `Page Title`{.interpreted-text role="guilabel"}; this title
    is used in the menu and the page\'s URL.
3.  Click `Create`{.interpreted-text role="guilabel"}.
4.  Customize the page\'s content and appearance using the website
    builder, then click `Save`{.interpreted-text role="guilabel"}.
:::

::: seealso
`RST cheat sheet: lists <contributing/rst/lists>`{.interpreted-text
role="ref"}
:::

## Icons

Use `icons <contributing/rst/icons>`{.interpreted-text role="ref"} in
instructions to help readers identify user interface elements and reduce
the need for lengthy explanations. Accompany every icon with a
descriptor in brackets.

::: example
Once the developer mode is activated, the developer tools can be
accessed by clicking the `fa-bug`{.interpreted-text role="icon"}
(`bug`{.interpreted-text role="guilabel"}) icon.
:::

::: seealso
`RST cheat sheet: icons <contributing/rst/icons>`{.interpreted-text
role="ref"}
:::

## Images {#contributing/content/images}

Adding a few images to illustrate text helps the readers understand and
memorize the content. However, images should never replace text: written
instructions should be complete and clear on their own, without relying
on visual aids. Use images sparingly, for example, to highlight a
particular point or clarify an example.

:::: important
::: title
Important
:::

Do not forget to [compress your PNG files with
pngquant](https://pngquant.org).
::::

### Screenshots {#contributing/content/screenshots}

Screenshots are automatically resized to fit the content block\'s width.
This implies that if they are too wide, they are not readable on
lower-resolution screens. We recommend avoiding full-screen screenshots
of the app unless absolutely necessary and making sure images are no
wider than a range of 768-933 pixels.

Here are a few tips to improve your screenshots:

1.  **Resize** your browser\'s width, either by *resizing the window*
    itself or by opening the *browser\'s developer tools* and resizing
    the width.
2.  **Select** the relevant area rather than keeping the entire window.
3.  **Remove** unnecessary information and **resize** columns when
    applicable.

:::: important
::: title
Important
:::

Do not use markups such as rectangles or arrows on screenshots. Instead,
crop the image to highlight the most relevant information, and ensure
that text instructions are clear and self-explanatory without relying on
images.
::::

::: example
**Good example (resized browser, no unnecessary columns, adjusted
columns\' width, cropped):**

![Cropped screenshot](content_guidelines/quotations-list-reduced.png)

**Bad example (full-width screenshot):**

![Full-width screenshot](content_guidelines/quotations-list-full.png)
:::

### Media files {#contributing/content/media-files}

A **media filename**:

- is written in **lower-case letters**;
- is **relevant** to the media\'s content. (e.g.,
  `screenshot-tips.gif`{.interpreted-text role="file"});
- separates its words with a **hyphen** [-]{.title-ref} (e.g.,
  `awesome-filename.png`{.interpreted-text role="file"}).

Each RST file has its own folder for storing media files. The folder\'s
name must be the same as the RST file\'s name.

For example, the document `doc_filename.rst`{.interpreted-text
role="file"} refers to two images that are placed in the folder
`doc_filename`.

    ├── section
    │   └── doc_filename
    │   │   └── screenshot-tips.gif
    │   │   └── awesome-filename.png
    │   └── doc_filename.rst

:::: note
::: title
Note
:::

Previously, image filenames would mostly be named with numbers (e.g.,
`feature01.png`{.interpreted-text role="file"}) and placed in a single
`media`{.interpreted-text role="file"} folder. While it is advised not
to name your *new* images in that fashion, it is also essential **not to
rename unchanged files**, as doing this would double the weight of
renamed image files on the repository. They will eventually all be
replaced as the content referencing those images is updated.
::::

### ALT tags {#contributing/content/alt-tags}

An **ALT tag** is a *text alternative* to an image. This text is
displayed if the browser fails to render the image. It is also helpful
for users who are visually impaired. Finally, it helps search engines,
such as Google, to understand what the image is about and index it
correctly, which improves
`SEO (Search Engine Optimization)`{.interpreted-text role="abbr"}.

Good ALT tags are:

- **Short** (one line maximum);
- **Not a repetition** of a previous sentence or title;
- A **good description** of the action happening in the image;
- Easily **understandable** if read aloud.

::: example
An appropriate ALT tag for the following screenshot would be *Activating
the developer mode in the Settings app*.

![Activating the developer mode in the Settings app](content_guidelines/settings.png)
:::

::: seealso
`RST cheat sheet: images <contributing/rst/images>`{.interpreted-text
role="ref"}
:::




--- SOURCE: contributing/documentation/rst_guidelines.md ---

custom-css
:   showcase_tables.css

# RST guidelines and cheat sheet

:::: important
::: title
Important
:::

We strongly recommend reading the `content_guidelines`{.interpreted-text
role="doc"} and main `../documentation`{.interpreted-text role="doc"}
pages before contributing.
::::

## General guidelines

Follow the RST guidelines below when contributing to the documentation
to help maintain consistency with the rest of the documentation and
facilitate the review process for the team:

- `Use formatting. <contributing/rst/formatting>`{.interpreted-text
  role="ref"}
- `Be consistent with indentation. <contributing/rst/indentation>`{.interpreted-text
  role="ref"}
- `Start a new line before the 100th character. <contributing/rst/character-limit>`{.interpreted-text
  role="ref"}

### Formatting {#contributing/rst/formatting}

Use specific formatting to improve clarity and readability. For example,
apply `contributing/rst/menuselection`{.interpreted-text role="ref"} for
menu paths, `contributing/rst/guilabel`{.interpreted-text role="ref"}
for other user interface elements, such as fields, buttons, and options,
`contributing/rst/note`{.interpreted-text role="ref"} for notes,
`contributing/rst/example`{.interpreted-text role="ref"} for examples,
etc.

:::: note
::: title
Note
:::

Add a blank line between different block elements, such as paragraphs,
lists, and directives to ensure proper rendering and formatting.
::::

### Indentation {#contributing/rst/indentation}

Use only spaces (never tabs).

Use as many spaces at the beginning of an indented line as needed to
align it with the first character of the markup in the line above. This
usually implies three spaces, but you only need two for bulleted lists,
for example.

::: example
The first [:]{.title-ref} is below the [i]{.title-ref} (three spaces):

``` rst
.. image:: media/example.png
   :alt: example
```

The [:titlesonly:]{.title-ref} and page references start below the
[t]{.title-ref} (three spaces):

``` rst
.. toctree::
   :titlesonly:

   payables/supplier_bills
   payables/pay
```

Continuation lines resume below the [I]{.title-ref}'s of \"Invoice\"
(two spaces):

``` rst
- Invoice on ordered quantity: invoice the full order as soon as the sales order is confirmed.
- Invoice on delivered quantity: invoice on what was delivered even if it is a partial
  delivery.
```
:::

### 100th-character limit {#contributing/rst/character-limit}

In RST, it is possible to break a line without forcing a line break on
the rendered HTML. Make use of this feature to write **lines of maximum
100 characters**. It is not necessary to leave a trailing whitespace at
the end of a line to separate words.

:::: tip
::: title
Tip
:::

\- You can safely break a line on any space, even inside markups such as
[menuselection]{.title-ref} and [doc]{.title-ref}. - Some external
hyperlinks may exceed 100 characters, but leaving them on a single line
is acceptable.
::::

::: example
``` rst
To register your seller account in Odoo, go to :menuselection:`Sales --> Configuration -->
Settings --> Amazon Connector --> Amazon Accounts` and click :guilabel:`Create`. You can find
the **Seller ID** under the link :guilabel:`Your Merchant Token`.
```
:::

## Headings {#contributing/rst/headings}

For each formatting line (e.g., [===]{.title-ref}), write as many
symbols ([=]{.title-ref}) as there are characters in the header. Use the
symbols below to format headings:

+--------------+----------------------+
| Heading size | Formatting           |
+==============+======================+
| H1           | ``` text             |
|              | =======              |
|              | Heading              |
|              | =======              |
|              | ```                  |
+--------------+----------------------+
| H2           | ``` text             |
|              | Heading              |
|              | =======              |
|              | ```                  |
+--------------+----------------------+
| H3           | ``` text             |
|              | Heading              |
|              | -------              |
|              | ```                  |
+--------------+----------------------+
| H4           | ``` text             |
|              | Heading              |
|              | ~~~~~~~              |
|              | ```                  |
+--------------+----------------------+
| H5           | ``` text             |
|              | Heading              |
|              | *******              |
|              | ```                  |
+--------------+----------------------+
| H6           | ``` text             |
|              | Heading              |
|              | ^^^^^^^              |
|              | ```                  |
+--------------+----------------------+

:::: important
::: title
Important
:::

Each document must have **exactly one H1 heading**.
::::

## Markups {#contributing/rst/markups}

### Emphasis (italic) {#contributing/rst/italic}

To emphasize a part of the text. The text is rendered in italic.

+----------------------------------------------------+
| Fill out the information *before* saving the form. |
+----------------------------------------------------+
| ``` text                                           |
| Fill out the information *before* saving the form. |
| ```                                                |
+----------------------------------------------------+

### Strong emphasis (bold) {#contributing/rst/bold}

To emphasize a part of the text. The text is rendered in bold.

+---------------------------------------------------------------+
| A **subdomain** is a domain that is a part of another domain. |
+---------------------------------------------------------------+
| ``` text                                                      |
| A **subdomain** is a domain that is a part of another domain. |
| ```                                                           |
+---------------------------------------------------------------+

### Technical term (literal) {#contributing/rst/code-sample}

To write a technical term or a specific value to insert. The text is
rendered in literal.

+----------------------------------------------------------------------+
| Insert the IP address of your printer, for example,                  |
| [192.168.1.25]{.title-ref}.                                          |
+----------------------------------------------------------------------+
| ``` text                                                             |
| Insert the IP address of your printer, for example, `192.168.1.25`.  |
| ```                                                                  |
+----------------------------------------------------------------------+

### Definitions {#contributing/rst/definitions}

Use the [dfn]{.title-ref} markup to define a term.

+-----------------------------------------------------------------------------------------+
| The documentation is written in RST and needs to be built                               |
| (`converted to HTML`{.interpreted-text role="dfn"}) to display nicely.                  |
+-----------------------------------------------------------------------------------------+
| ``` text                                                                                |
| The documentation is written in RST and needs to be built (:dfn:`converted to HTML`) to |
| display nicely.                                                                         |
| ```                                                                                     |
+-----------------------------------------------------------------------------------------+

### Abbreviations {#contributing/rst/abbreviations}

Use the [abbr]{.title-ref} markup to write a self-defining abbreviation
that is displayed as a tooltip.

+-----------------------------------------------------------------------------------+
| Odoo uses `OCR (optical character recognition)`{.interpreted-text role="abbr"}    |
| and artificial intelligence technologies to recognize the content of the          |
| documents.                                                                        |
+-----------------------------------------------------------------------------------+
| ``` text                                                                          |
| Odoo uses :abbr:`OCR (optical character recognition)` and artificial intelligence |
| technologies to recognize the content of the documents.                           |
| ```                                                                               |
+-----------------------------------------------------------------------------------+

### `GUI (graphical user interface)`{.interpreted-text role="abbr"} element {#contributing/rst/guilabel}

Use the [guilabel]{.title-ref} markup to identify any text of the
interactive user interface (e.g., labels).

+----------------------------------------------------------------------+
| Update your credentials, then click on `Save`{.interpreted-text      |
| role="guilabel"}.                                                    |
+----------------------------------------------------------------------+
| ``` text                                                             |
| Update your credentials, then click on :guilabel:`Save`.             |
| ```                                                                  |
+----------------------------------------------------------------------+

::::: note
::: title
Note
:::

Avoid using the [guilabel]{.title-ref} markup when referring to a
concept or general term.

::: example
\- \| **Good example:** \| To create a credit note, go to
`Accounting --> Customers --> Invoices`{.interpreted-text
role="menuselection"}, open the invoice, and click
`Credit Note`{.interpreted-text role="guilabel"}. - \| **Bad example:**
\| To create a `Credit Note`{.interpreted-text role="guilabel"}, go to
`Accounting --> Customers -->
Invoices`{.interpreted-text role="menuselection"}, open the
`Invoice`{.interpreted-text role="guilabel"}, and click
`Credit Note`{.interpreted-text role="guilabel"}.
:::
:::::

### Menu selection {#contributing/rst/menuselection}

Use the [menuselection]{.title-ref} markup to guide users through a
sequence of menus, starting with the app\'s name.

+----------------------------------------------------------------------------------------+
| To review sales performance, go to                                                     |
| `Sales --> Reporting --> Dashboard`{.interpreted-text role="menuselection"}.           |
+----------------------------------------------------------------------------------------+
| ``` text                                                                               |
| To review sales performance, go to :menuselection:`Sales --> Reporting --> Dashboard`. |
| ```                                                                                    |
+----------------------------------------------------------------------------------------+

:::: note
::: title
Note
:::

Only include actual menu items in the [menuselection]{.title-ref}
markup:

- Use the `contributing/rst/guilabel`{.interpreted-text role="ref"}
  markup for other user interface elements, such as buttons and section
  titles:

  ``` text
  To configure the bill control policy, navigate to :menuselection:`Purchase --> Configuration
  --> Settings`, and scroll down to the :guilabel:`Invoicing` section. Under :guilabel:`Bill
  Control`, select either :guilabel:`Ordered quantities` or :guilabel:`Received quantities`.
  ```

- Do not include menu section names. For example, in the screenshot
  below, [Journals]{.title-ref} should not be included in the menu path
  `Accounting --> Accounting --> Journal Entries`{.interpreted-text
  role="menuselection"}:

  ![Accounting menu showing the Journals menu section.](rst_guidelines/accounting-menu.png)
::::

### File {#contributing/rst/file}

Use the [file]{.title-ref} markup to indicate a file path or name.

+-----------------------------------------------------------------------------------+
| Create redirections using the `redirects.txt`{.interpreted-text role="file"} file |
| found at the root of the repository.                                              |
+-----------------------------------------------------------------------------------+
| ``` text                                                                          |
| Create redirections using the :file:`redirects.txt` file found at the root of the |
| repository.                                                                       |
| ```                                                                               |
+-----------------------------------------------------------------------------------+

### Command {#contributing/rst/command}

Use the [command]{.title-ref} markup to highlight a command.

+-----------------------------------------------------------------------------------------+
| Run the command `make clean html`{.interpreted-text role="command"} to delete existing  |
| built files and build the documentation to HTML.                                        |
+-----------------------------------------------------------------------------------------+
| ``` text                                                                                |
| Run the command :command:`make clean html` to delete existing built files and build the |
| documentation to HTML.                                                                  |
| ```                                                                                     |
+-----------------------------------------------------------------------------------------+

### Icons {#contributing/rst/icons}

Use the [icon]{.title-ref} markup to add the class name of an icon.
There are three icon sets used in Odoo:
[FontAwesome4](https://fontawesome.com/v4/icons/) ([fa-\*]{.title-ref}),
`Odoo UI <ui/odoo-ui-icons>`{.interpreted-text role="ref"}
([oi-\*]{.title-ref}) and
`Odoo Spreadsheet <ui/odoo-spreadsheet-icons>`{.interpreted-text
role="ref"} ([os-\*]{.title-ref}) icons.

Follow the icon with its name as a
`contributing/rst/guilabel`{.interpreted-text role="ref"} in brackets as
a descriptor.

+-------------------------------------------------------------------------------------------+
| The graph view is represented by the `fa-area-chart`{.interpreted-text role="icon"}       |
| `(area chart)`{.interpreted-text role="guilabel"} icon.                                   |
|                                                                                           |
| The pivot view is represented by the `oi-view-pivot`{.interpreted-text role="icon"}       |
| `(pivot table)`{.interpreted-text role="guilabel"} icon.                                  |
|                                                                                           |
| Use `os-global-filters`{.interpreted-text role="icon"}                                    |
| `(global filters)`{.interpreted-text role="guilabel"} in Odoo **Spreadsheet**.            |
+-------------------------------------------------------------------------------------------+
| ``` text                                                                                  |
| The graph view is represented by the :icon:`fa-area-chart` :guilabel:`(area chart)` icon. |
|                                                                                           |
| The pivot view is represented by the :icon:`oi-view-pivot` icon.                          |
|                                                                                           |
| Use :icon:`os-global-filters` :guilabel:`(global filters)` in Odoo **Spreadsheet**.       |
| ```                                                                                       |
+-------------------------------------------------------------------------------------------+

## Lists {#contributing/rst/lists}

### Bulleted list {#contributing/rst/bulleted-list}

+-----------------------------------------------------+
| - This is a bulleted list.                          |
| - It has two items, the second item uses two lines. |
+-----------------------------------------------------+
| ``` text                                            |
| - This is a bulleted list.                          |
| - It has two items, the second                      |
|   item uses two lines.                              |
| ```                                                 |
+-----------------------------------------------------+

### Numbered list {#contributing/rst/numbered-list}

+------------------------------+
| 1.  This is a numbered list. |
| 2.  Numbering is automatic.  |
+------------------------------+
| ``` text                     |
| #. This is a numbered list.  |
| #. Numbering is automatic.   |
| ```                          |
+------------------------------+

+----------------------------------------------------------------------+
| 6.  Use this format to start the numbering with a number other than  |
|     one.                                                             |
| 7.  The numbering is automatic from there.                           |
+----------------------------------------------------------------------+
| ``` text                                                             |
| 6. Use this format to start the numbering                            |
|    with a number other than one.                                     |
| #. The numbering is automatic from there.                            |
| ```                                                                  |
+----------------------------------------------------------------------+

:::: tip
::: title
Tip
:::

Prefer the use of autonumbered lists with [#.]{.title-ref} instead of
[1.]{.title-ref}, [2.]{.title-ref}, etc. for better code resilience.
::::

### Nested lists {#contributing/rst/nested-list}

:::: tip
::: title
Tip
:::

\- Add a blank line before the nested elements in lists. -
`Indent <contributing/rst/indentation>`{.interpreted-text role="ref"}
nested lists properly, with sub-items aligned under their parent item.
::::

+----------------------------------------------+
| - This is the first item of a bulleted list. |
|   1.  It has a nested numbered list          |
|   2.  with two items.                        |
+----------------------------------------------+
| ``` text                                     |
| - This is the first item of a bulleted list. |
|                                              |
|   #. It has a nested numbered list           |
|   #. with two items.                         |
| ```                                          |
+----------------------------------------------+

## Hyperlinks {#contributing/rst/hyperlinks}

::::: note
::: title
Note
:::

When using labels for hyperlinks, make sure they are clear and
descriptive to indicate the destination or purpose of the link.

::: example
| **Good example (descriptive label):**
| Please refer to the
  `Accounting documentation <../../../applications/finance/accounting>`{.interpreted-text
  role="doc"}.

| **Bad example (non-descriptive label):**
| Please refer to
  `this page <../../../applications/finance/accounting>`{.interpreted-text
  role="doc"}.
:::
:::::

### External hyperlinks {#contributing/rst/external-hyperlinks}

External hyperlinks are links to a URL with a custom label. They follow
the syntax: `` `label <URL>`_ ``.

:::: important
::: title
Important
:::

Use
`documentation page hyperlinks <contributing/rst/doc-hyperlinks>`{.interpreted-text
role="ref"} when targeting another documentation page.
::::

+------------------------------------------------------------------------------------------+
| For instance, [this is an external hyperlink to Odoo\'s website](https://www.odoo.com).  |
+------------------------------------------------------------------------------------------+
| ``` text                                                                                 |
| For instance, `this is an external hyperlink to Odoo's website <https://www.odoo.com>`_. |
| ```                                                                                      |
+------------------------------------------------------------------------------------------+

#### Aliases {#contributing/rst/external-hyperlink-aliases}

External hyperlink aliases allow creating shortcuts for external
hyperlinks. The definition syntax is as follows: [.. \_target:
URL]{.title-ref}. There are two ways to reference them, depending on the
use case:

1.  [target\_]{.title-ref} creates a hyperlink with the target name as
    label and the URL as reference. Note that the [\_]{.title-ref} moved
    after the target.
2.  `` `label <target_>`_ `` the label replaces the name of the target,
    and the target is replaced by the URL.

+---------------------------------------------------------------------------------------------+
| A [proof-of-concept](https://en.wikipedia.org/wiki/Proof_of_concept) is a simplified        |
| version, a prototype of what is expected to agree on the main lines of expected changes.    |
| [PoC](https://en.wikipedia.org/wiki/Proof_of_concept) is a common abbreviation.             |
+---------------------------------------------------------------------------------------------+
| ``` text                                                                                    |
| .. _proof-of-concept: https://en.wikipedia.org/wiki/Proof_of_concept                        |
|                                                                                             |
|    A proof-of-concept_ is a simplified version, a prototype of what is expected to agree on |
|    the main lines of expected changes. `PoC <proof-of-concept_>`_ is a common abbreviation. |
| ```                                                                                         |
+---------------------------------------------------------------------------------------------+

### Internal documentation links

:::: important
::: title
Important
:::

When refactoring (improving without adding new content) section headings
or hyperlink targets, make sure not to break any hyperlink reference to
these targets, or update them accordingly.
::::

#### Relative links {#contributing/rst/relative-links}

If you need to reference an
`internal documentation page <contributing/rst/doc-hyperlinks>`{.interpreted-text
role="ref"} or a `file <contributing/rst/file>`{.interpreted-text
role="ref"} that is not located in the same directory as the current
page, always use *relative file paths* instead of *absolute file paths*.
This ensures that links remain valid even with version updates, folder
name changes, and directory structure reorganizations.

An absolute file path indicates the target\'s location from the root
directory. A relative file path uses smart notations (such as
[../]{.title-ref} that redirects to the parent folder) to indicate the
target\'s location *relative* to that of the source document.

::::: example
:::: note
::: title
Note
:::

The purpose of the following example is to illustrate the difference
between absolute and relative links. Always use
`contributing/rst/doc-hyperlinks`{.interpreted-text role="ref"} when
referencing documentation pages.
::::

Given the following source file tree: :

    documentation
    ├── content
    │   └── applications
    │   │   └── sales
    │   │   │   └── sales
    │   │   │   │   └── products_prices
    │   │   │   │   │   └── products
    │   │   │   │   │   │   └── import.rst
    │   │   │   │   │   │   └── variants.rst
    │   │   │   │   │   └── prices.rst

A reference to `prices.rst`{.interpreted-text role="file"} and
`variants.rst`{.interpreted-text role="file"} could be made from
`import.rst`{.interpreted-text role="file"} as follows:

1.  Absolute:

    > - [documentation/content/applications/sales/sales/products_prices/prices.rst]{.title-ref}
    > - [documentation/content/applications/sales/sales/products_prices/products/variants.rst]{.title-ref}

2.  Relative:

    > - [../prices.rst]{.title-ref}
    > - [variants.rst]{.title-ref}
:::::

#### Documentation page hyperlinks {#contributing/rst/doc-hyperlinks}

The [doc]{.title-ref} markup allows referencing a documentation page
wherever it is in the file tree through a relative file path. There are
two ways to use the [doc]{.title-ref} markup:

1.  `` :doc:`path_to_doc_page ``\` creates a hyperlink to the
    documentation page with the title of the page as label.
2.  `` :doc:`label <path_to_doc_page> ``\` creates a hyperlink to the
    documentation page with the given label.

+------------------------------------------------------------------------------------------------+
| Please refer to the `Accounting documentation                                                  |
| <../../../applications/finance/accounting>`{.interpreted-text role="doc"} to learn more about  |
| `../../../applications/finance/accounting/customer_invoices`{.interpreted-text role="doc"}.    |
+------------------------------------------------------------------------------------------------+
| ``` text                                                                                       |
| Please refer to the :doc:`Accounting documentation <../../../applications/finance/accounting>` |
| to learn more about :doc:`../../../applications/finance/accounting/customer_invoices`.         |
| ```                                                                                            |
+------------------------------------------------------------------------------------------------+

:::: important
::: title
Important
:::

`Use relative links <contributing/rst/relative-links>`{.interpreted-text
role="ref"} for documentation page hyperlinks.
::::

#### Custom anchors {#contributing/rst/custom-anchors}

Custom anchors follow the same syntax as `external hyperlink aliases
<contributing/rst/external-hyperlink-aliases>`{.interpreted-text
role="ref"} but without any URL. They allow referencing a specific part
of a RST file by using the target as an anchor. When users click the
reference, they are taken to the part of the documentation page where
the target is defined.

The definition syntax is: [.. \_target:]{.title-ref}. There are two ways
to reference them, both using the [ref]{.title-ref} markup:

1.  `` :ref:`target ``\` creates a hyperlink to the anchor with the
    heading defined below as the label.
2.  `` :ref:`label <target> ``\` creates a hyperlink to the anchor with
    the given label.

:::: important
::: title
Important
:::

As targets are visible from the entire documentation when referenced
with the [ref]{.title-ref} markup, prefix the target name with the
**app/section name** and the **file name**, separated by slashes, e.g.,
[accounting/taxes/configuration]{.title-ref}.
::::

:::: note
::: title
Note
:::

\- Add custom anchors for all headings so they can be referenced from
any documentation file or within Odoo using documentation links. -
Notice that there is no [\_]{.title-ref} at the end, contrary to
`external hyperlinks
<contributing/rst/external-hyperlinks>`{.interpreted-text role="ref"}.
::::

+---------------------------------------------------------------------------------------+
| Please refer to the `contributing/rst/external-hyperlinks`{.interpreted-text          |
| role="ref"} section to learn more about                                               |
| `aliases <contributing/rst/external-hyperlink-aliases>`{.interpreted-text             |
| role="ref"}.                                                                          |
+---------------------------------------------------------------------------------------+
| ``` text                                                                              |
| .. _contributing/rst/external-hyperlinks:                                             |
|                                                                                       |
| External hyperlinks                                                                   |
| -------------------                                                                   |
|                                                                                       |
| .. _contributing/rst/external-hyperlink-aliases:                                      |
|                                                                                       |
| Aliases                                                                               |
| ~~~~~~~                                                                               |
|                                                                                       |
| Please refer to the :ref:`contributing/rst/external-hyperlinks` section to learn more |
| about :ref:`aliases <contributing/rst/external-hyperlink-aliases>`.                   |
| ```                                                                                   |
+---------------------------------------------------------------------------------------+

#### File download {#contributing/rst/download}

The [download]{.title-ref} markup allows referencing files (that are not
necessarily `RST
(reStructuredText)`{.interpreted-text role="abbr"} documents) within the
source tree to be downloaded.

+-------------------------------------------------------------------------------------------------------------------+
| Download this `module structure template <rst_guidelines/my_module.zip>`{.interpreted-text role="download"} to    |
| start building your module.                                                                                       |
+-------------------------------------------------------------------------------------------------------------------+
| ``` text                                                                                                          |
| Download this :download:`module structure template <rst_guidelines/my_module.zip>` to start building your module. |
| ```                                                                                                               |
+-------------------------------------------------------------------------------------------------------------------+

:::: note
::: title
Note
:::

Store the file alongside other
`media files <contributing/content/media-files>`{.interpreted-text
role="ref"} and reference it using a
`relative link <contributing/rst/relative-links>`{.interpreted-text
role="ref"}.
::::

## Images {#contributing/rst/images}

The [image]{.title-ref} markup allows inserting images in a document.

+----------------------------------------------------------+
| ![Create an invoice.](rst_guidelines/create-invoice.png) |
+----------------------------------------------------------+
| ``` text                                                 |
| .. image:: rst_guidelines/create-invoice.png             |
|    :alt: Create an invoice.                              |
| ```                                                      |
+----------------------------------------------------------+

:::: tip
::: title
Tip
:::

\- Images should generally be aligned to the left, which is the default
behavior. Use the [align]{.title-ref} parameter to change the alignment,
e.g., [:align: center]{.title-ref}. - Use the [alt]{.title-ref}
parameter to add `contributing/content/alt-tags`{.interpreted-text
role="ref"}, e.g., [:alt: Activating the developer mode in the Settings
app]{.title-ref}. - Use the [scale]{.title-ref} parameter to scale the
image, e.g., [:scale: 75%]{.title-ref}.
::::

::: seealso
`Content guidelines for images <contributing/content/images>`{.interpreted-text
role="ref"}
:::

## Alert blocks (admonitions) {#contributing/rst/alert-blocks}

### See also {#contributing/rst/seealso}

+---------------------------------------------------------------------------------------------------------------------------------+
| ::: seealso                                                                                                                     |
| - `Accounting documentation <../../../applications/finance/accounting>`{.interpreted-text role="doc"}                           |
| - `../../../applications/sales/sales/invoicing/proforma`{.interpreted-text role="doc"}                                          |
|                                                                                                                                 |
| \- [Google documentation on setting up Analytics for a website](https://support.google.com/analytics/answer/1008015?hl=en/)     |
| :::                                                                                                                             |
+---------------------------------------------------------------------------------------------------------------------------------+
| ``` text                                                                                                                        |
| .. seealso::                                                                                                                    |
|    - :doc:`Accounting documentation <../../../applications/finance/accounting>`                                                 |
|    - :doc:`../../../applications/sales/sales/invoicing/proforma`                                                                |
|    - `Google documentation on setting up Analytics for a website <https://support.google.com/analytics/answer/1008015?hl=en/>`_ |
| ```                                                                                                                             |
+---------------------------------------------------------------------------------------------------------------------------------+

### Note {#contributing/rst/note}

+--------------------------------------------------------------------------------------------------------+
| :::: note                                                                                              |
| ::: title                                                                                              |
| Note                                                                                                   |
| :::                                                                                                    |
|                                                                                                        |
| Use this alert block to draw the reader\'s attention and highlight important additional information.   |
| ::::                                                                                                   |
+--------------------------------------------------------------------------------------------------------+
| ``` text                                                                                               |
| .. note::                                                                                              |
|    Use this alert block to draw the reader's attention and highlight important additional information. |
| ```                                                                                                    |
+--------------------------------------------------------------------------------------------------------+

### Tip {#contributing/rst/tip}

+--------------------------------------------------------------------------------------------+
| :::: tip                                                                                   |
| ::: title                                                                                  |
| Tip                                                                                        |
| :::                                                                                        |
|                                                                                            |
| Use this alert block to inform the reader about a useful trick that requires an action.    |
| ::::                                                                                       |
+--------------------------------------------------------------------------------------------+
| ``` text                                                                                   |
| .. tip::                                                                                   |
|    Use this alert block to inform the reader about a useful trick that requires an action. |
| ```                                                                                        |
+--------------------------------------------------------------------------------------------+

### Example {#contributing/rst/example}

+---------------------------------------------+
| ::: example                                 |
| Use this alert block to show an example.    |
| :::                                         |
+---------------------------------------------+
| ``` text                                    |
| .. example::                                |
|    Use this alert block to show an example. |
| ```                                         |
+---------------------------------------------+

### Exercise {#contributing/rst/exercise}

+---------------------------------------------------------------+
| ::: exercise                                                  |
| Use this alert block to suggest an exercise to the reader.    |
| :::                                                           |
+---------------------------------------------------------------+
| ``` text                                                      |
| .. exercise::                                                 |
|    Use this alert block to suggest an exercise to the reader. |
| ```                                                           |
+---------------------------------------------------------------+

### Important {#contributing/rst/important}

+---------------------------------------------------------------------------+
| :::: important                                                            |
| ::: title                                                                 |
| Important                                                                 |
| :::                                                                       |
|                                                                           |
| Use this alert block to notify the reader about important information.    |
| ::::                                                                      |
+---------------------------------------------------------------------------+
| ``` text                                                                  |
| .. important::                                                            |
|    Use this alert block to notify the reader about important information. |
| ```                                                                       |
+---------------------------------------------------------------------------+

### Warning {#contributing/rst/warning}

+--------------------------------------------------------------------------------------------------------------+
| :::: warning                                                                                                 |
| ::: title                                                                                                    |
| Warning                                                                                                      |
| :::                                                                                                          |
|                                                                                                              |
| Use this alert block to require the reader to proceed with caution with what is described in the warning.    |
| ::::                                                                                                         |
+--------------------------------------------------------------------------------------------------------------+
| ``` text                                                                                                     |
| .. warning::                                                                                                 |
|    Use this alert block to require the reader to proceed with caution with what is described in the warning. |
| ```                                                                                                          |
+--------------------------------------------------------------------------------------------------------------+

### Danger {#contributing/rst/danger}

+------------------------------------------------------------------------------+
| :::: danger                                                                  |
| ::: title                                                                    |
| Danger                                                                       |
| :::                                                                          |
|                                                                              |
| Use this alert block to bring the reader\'s attention to a serious threat.   |
| ::::                                                                         |
+------------------------------------------------------------------------------+
| ``` text                                                                     |
| .. danger::                                                                  |
|    Use this alert block to bring the reader's attention to a serious threat. |
| ```                                                                          |
+------------------------------------------------------------------------------+

### Custom {#contributing/rst/custom-alert-blocks}

+----------------------------------------------------------------+
| ::: admonition                                                 |
| Title                                                          |
|                                                                |
| Customize this alert block with a **Title** of your choice.    |
| :::                                                            |
+----------------------------------------------------------------+
| ``` text                                                       |
| .. admonition:: Title                                          |
|                                                                |
|    Customize this alert block with a **Title** of your choice. |
| ```                                                            |
+----------------------------------------------------------------+

## Tables {#contributing/rst/tables}

### List tables

List tables use two-level bulleted lists to convert data into a table.
The first level represents the rows and the second level represents the
columns.

+-------------------------------------------+
|   Name      Country      Favorite color   |
|   --------- ------------ ---------------- |
|   Raúl      Montenegro   Purple           |
|   Mélanie   France       Red              |
+-------------------------------------------+
| ``` text                                  |
| .. list-table::                           |
|    :header-rows: 1                        |
|    :stub-columns: 1                       |
|                                           |
|    * - Name                               |
|      - Country                            |
|      - Favorite colour                    |
|    * - Raúl                               |
|      - Montenegro                         |
|      - Purple                             |
|    * - Mélanie                            |
|      - France                             |
|      - Turquoise                          |
| ```                                       |
+-------------------------------------------+

### Grid tables

Grid tables represent the rendered table and are more visual to work
with.

+----------------------------------------------------------+
| +-----------------------+--------------+---------------+ |
| |                       | Shirts       | T-shirts      | |
| +=======================+==============+===============+ |
| | **Available colours** | Purple       | Green         | |
| |                       +--------------+---------------+ |
| |                       | Turquoise    | Orange        | |
| +-----------------------+--------------+---------------+ |
| | **Sleeves length**    | Long sleeves | Short sleeves | |
| +-----------------------+--------------+---------------+ |
+----------------------------------------------------------+
| ``` text                                                 |
| +-----------------------+--------------+---------------+ |
| |                       | Shirts       | T-shirts      | |
| +=======================+==============+===============+ |
| | **Available colours** | Purple       | Green         | |
| |                       +--------------+---------------+ |
| |                       | Turquoise    | Orange        | |
| +-----------------------+--------------+---------------+ |
| | **Sleeves length**    | Long sleeves | Short sleeves | |
| +-----------------------+--------------+---------------+ |
| ```                                                      |
+----------------------------------------------------------+

:::: tip
::: title
Tip
:::

\- Use [=]{.title-ref} instead of [-]{.title-ref} to define header
rows. - Remove [-]{.title-ref} and [\|]{.title-ref} separators to merge
cells. - Make use of [this convenient table
generator](https://www.tablesgenerator.com/text_tables) to build tables.
Then, copy-paste the generated formatting into your document.
::::

## Code blocks {#contributing/rst/code-blocks}

Use the [code-block]{.title-ref} directive to show example code. Specify
the language (e.g., python, xml, etc.) to format the code according to
the language\'s syntax rules.

+------------------------------+
| ``` python                   |
| def main():                  |
|     print("Hello world!")    |
| ```                          |
+------------------------------+
| ``` text                     |
| .. code-block:: python       |
|                              |
|    def main():               |
|        print("Hello world!") |
| ```                          |
+------------------------------+

## Spoilers {#contributing/rst/spoilers}

+------------------------------------------------------------------------------------+
| ::: spoiler                                                                        |
| Answer to the Ultimate Question of Life, the Universe, and Everything              |
|                                                                                    |
| **42**                                                                             |
| :::                                                                                |
+------------------------------------------------------------------------------------+
| ``` text                                                                           |
| .. spoiler:: Answer to the Ultimate Question of Life, the Universe, and Everything |
|                                                                                    |
|    **42**                                                                          |
| ```                                                                                |
+------------------------------------------------------------------------------------+

## Content tabs {#contributing/rst/tabs}

:::: warning
::: title
Warning
:::

The [tabs]{.title-ref} markup may not work well in some situations. In
particular:

- The tabs\' headers cannot be translated.
- A tab cannot contain
  `headings <contributing/rst/headings>`{.interpreted-text role="ref"}.
- An `alert block <contributing/rst/alert-blocks>`{.interpreted-text
  role="ref"} cannot contain tabs.
- A tab cannot contain
  `custom anchors <contributing/rst/custom-anchors>`{.interpreted-text
  role="ref"}.
::::

### Basic tabs {#contributing/rst/basic-tabs}

Basic tabs are useful to split the content into multiple options. The
[tabs]{.title-ref} markup is used to define sequence of tabs. Each tab
is then defined with the [tab]{.title-ref} markup followed by a label.

+-----------------------------------------------+
| :::::: tabs                                   |
| ::: tab                                       |
| Odoo Online                                   |
|                                               |
| Content dedicated to Odoo Online users.       |
| :::                                           |
|                                               |
| ::: tab                                       |
| Odoo.sh                                       |
|                                               |
| Alternative for Odoo.sh users.                |
| :::                                           |
|                                               |
| ::: tab                                       |
| On-premise                                    |
|                                               |
| Third version for On-premise users.           |
| :::                                           |
| ::::::                                        |
+-----------------------------------------------+
| ``` text                                      |
| .. tabs::                                     |
|                                               |
|    .. tab:: Odoo Online                       |
|                                               |
|       Content dedicated to Odoo Online users. |
|                                               |
|    .. tab:: Odoo.sh                           |
|                                               |
|       Alternative for Odoo.sh users.          |
|                                               |
|    .. tab:: On-premise                        |
|                                               |
|       Third version for On-premise users.     |
| ```                                           |
+-----------------------------------------------+

### Nested tabs {#contributing/rst/nested-tabs}

Tabs can be nested inside one another.

+--------------------------------------------+
| :::::::::::: tabs                          |
| ::::::: tab                                |
| Stars                                      |
|                                            |
| :::::: tabs                                |
| ::: tab                                    |
| The Sun                                    |
|                                            |
| The closest star to us.                    |
| :::                                        |
|                                            |
| ::: tab                                    |
| Proxima Centauri                           |
|                                            |
| The second closest star to us.             |
| :::                                        |
|                                            |
| ::: tab                                    |
| Polaris                                    |
|                                            |
| The North Star.                            |
| :::                                        |
| ::::::                                     |
| :::::::                                    |
|                                            |
| :::::: tab                                 |
| Moons                                      |
|                                            |
| ::::: tabs                                 |
| ::: tab                                    |
| The Moon                                   |
|                                            |
| Orbits the Earth.                          |
| :::                                        |
|                                            |
| ::: tab                                    |
| Titan                                      |
|                                            |
| Orbits Jupiter.                            |
| :::                                        |
| :::::                                      |
| ::::::                                     |
| ::::::::::::                               |
+--------------------------------------------+
| ``` text                                   |
| .. tabs::                                  |
|                                            |
|    .. tab:: Stars                          |
|                                            |
|       .. tabs::                            |
|                                            |
|          .. tab:: The Sun                  |
|                                            |
|             The closest star to us.        |
|                                            |
|          .. tab:: Proxima Centauri         |
|                                            |
|             The second closest star to us. |
|                                            |
|          .. tab:: Polaris                  |
|                                            |
|             The North Star.                |
|                                            |
|    .. tab:: Moons                          |
|                                            |
|       .. tabs::                            |
|                                            |
|          .. tab:: The Moon                 |
|                                            |
|             Orbits the Earth.              |
|                                            |
|          .. tab:: Titan                    |
|                                            |
|             Orbits Jupiter.                |
| ```                                        |
+--------------------------------------------+

### Group tabs {#contributing/rst/group-tabs}

Group tabs are special tabs that synchronize based on a group label. The
last selected group is remembered and automatically selected when the
user returns to the page or visits another page with the tabs group. The
[group-tab]{.title-ref} markup is used to define group tabs.

+--------------------------------------------------------+
| :::::: tabs                                            |
| ::: group-tab                                          |
| C++                                                    |
|                                                        |
| C++                                                    |
| :::                                                    |
|                                                        |
| ::: group-tab                                          |
| Python                                                 |
|                                                        |
| Python                                                 |
| :::                                                    |
|                                                        |
| ::: group-tab                                          |
| Java                                                   |
|                                                        |
| Java                                                   |
| :::                                                    |
| ::::::                                                 |
|                                                        |
| :::::: tabs                                            |
| ::: group-tab                                          |
| C++                                                    |
|                                                        |
| ``` c++                                                |
| int main(const int argc, const char **argv) {          |
|     return 0;                                          |
| }                                                      |
| ```                                                    |
| :::                                                    |
|                                                        |
| ::: group-tab                                          |
| Python                                                 |
|                                                        |
| ``` python                                             |
| def main():                                            |
|     return                                             |
| ```                                                    |
| :::                                                    |
|                                                        |
| ::: group-tab                                          |
| Java                                                   |
|                                                        |
| ``` java                                               |
| class Main {                                           |
|     public static void main(String[] args) {}          |
| }                                                      |
| ```                                                    |
| :::                                                    |
| ::::::                                                 |
+--------------------------------------------------------+
| ``` text                                               |
| .. tabs::                                              |
|                                                        |
|    .. group-tab:: C++                                  |
|                                                        |
|       C++                                              |
|                                                        |
|    .. group-tab:: Python                               |
|                                                        |
|       Python                                           |
|                                                        |
|    .. group-tab:: Java                                 |
|                                                        |
|       Java                                             |
|                                                        |
| .. tabs::                                              |
|                                                        |
|    .. group-tab:: C++                                  |
|                                                        |
|       .. code-block:: c++                              |
|                                                        |
|          int main(const int argc, const char **argv) { |
|              return 0;                                 |
|          }                                             |
|                                                        |
|    .. group-tab:: Python                               |
|                                                        |
|       .. code-block:: python                           |
|                                                        |
|          def main():                                   |
|              return                                    |
|                                                        |
|    .. group-tab:: Java                                 |
|                                                        |
|       .. code-block:: java                             |
|                                                        |
|          class Main {                                  |
|              public static void main(String[] args) {} |
|          }                                             |
| ```                                                    |
+--------------------------------------------------------+

### Code tabs {#contributing/rst/code}

Use the [code-tab]{.title-ref} markup to create code tabs, which are
essentially `group tabs
<contributing/rst/group-tabs>`{.interpreted-text role="ref"} that treat
the tabs\' content as a `code block
<contributing/rst/code-blocks>`{.interpreted-text role="ref"}. Specify
the language to format the code according to the language\'s syntax
rules. If a label is set, it is used for grouping tabs instead of the
language name.

+-----------------------------------------------+
| :::::: tabs                                   |
| ::: code-tab                                  |
| c++ Hello C++                                 |
|                                               |
| #include \<iostream\>                         |
|                                               |
| int main() {                                  |
|                                               |
| :   std::cout \<\< \"Hello World\"; return 0; |
|                                               |
| }                                             |
| :::                                           |
|                                               |
| ::: code-tab                                  |
| python Hello Python                           |
|                                               |
| print(\"Hello World\")                        |
| :::                                           |
|                                               |
| ::: code-tab                                  |
| javascript Hello JavaScript                   |
|                                               |
| console.log(\"Hello World\");                 |
| :::                                           |
| ::::::                                        |
+-----------------------------------------------+
| ``` text                                      |
| .. tabs::                                     |
|                                               |
|    .. code-tab:: c++ Hello C++                |
|                                               |
|       #include <iostream>                     |
|                                               |
|       int main() {                            |
|           std::cout << "Hello World";         |
|           return 0;                           |
|       }                                       |
|                                               |
|    .. code-tab:: python Hello Python          |
|                                               |
|       print("Hello World")                    |
|                                               |
|    .. code-tab:: javascript Hello JavaScript  |
|                                               |
|       console.log("Hello World");             |
| ```                                           |
+-----------------------------------------------+

## Cards {#contributing/rst/cards}

+--------------------------------------------------------------------------------------------+
| :::::: cards                                                                               |
| ::: {.card target="../documentation" tag="Step-by-step guide" large=""}                    |
| Documentation                                                                              |
|                                                                                            |
| Use this guide to acquire the tools and knowledge you need to write documentation.         |
| :::                                                                                        |
|                                                                                            |
| ::: {.card target="content_guidelines"}                                                    |
| Content guidelines                                                                         |
|                                                                                            |
| List of guidelines, tips, and tricks to help you create clear and effective content.       |
| :::                                                                                        |
|                                                                                            |
| ::: {.card target="rst_guidelines"}                                                        |
| RST guidelines                                                                             |
|                                                                                            |
| List of technical guidelines to observe when writing with reStructuredText.                |
| :::                                                                                        |
| ::::::                                                                                     |
+--------------------------------------------------------------------------------------------+
| ``` text                                                                                   |
| .. cards::                                                                                 |
|                                                                                            |
|    .. card:: Documentation                                                                 |
|       :target: ../documentation                                                            |
|       :tag: Step-by-step guide                                                             |
|       :large:                                                                              |
|                                                                                            |
|       Use this guide to acquire the tools and knowledge you need to write documentation.   |
|                                                                                            |
|    .. card:: Content guidelines                                                            |
|       :target: content_guidelines                                                          |
|                                                                                            |
|       List of guidelines, tips, and tricks to help you create clear and effective content. |
|                                                                                            |
|    .. card:: RST guidelines                                                                |
|       :target: rst_guidelines                                                              |
|                                                                                            |
|       List of technical guidelines to observe when writing with reStructuredText.          |
| ```                                                                                        |
+--------------------------------------------------------------------------------------------+

## Sub-pages {#contributing/rst/toctree}

The [toctree]{.title-ref} directive is used to organize documentation
into sections with sub-pages. It adds a table of contents at the current
location (i.e., the parent page), built from the files listed in the
directive. All RST files must be included in a TOC tree, unless the
[orphan]{.title-ref}
`metadata markup <contributing/rst/document-metadata>`{.interpreted-text
role="ref"} is used.

:::: tip
::: title
Tip
:::

\- Use
`relative links <contributing/rst/relative-links>`{.interpreted-text
role="ref"} to list the files to be displayed as sub-pages. - Use the
[titlesonly]{.title-ref} parameter to only show the sub-pages\' main
headings when a parent page\'s
`content and TOC tree are displayed <contributing/rst/document-metadata>`{.interpreted-text
role="ref"}.
::::

::: example
\- TOC tree in the documentation\'s main TOC:

![Website section of the documentation](rst_guidelines/website-toctree.png)

- [toctree]{.title-ref} directive in [website.rst]{.title-ref} (i.e.,
  the parent page):

``` text
.. toctree::
   :titlesonly:

   website/web_design
   website/pages
   website/configuration
   website/reporting
   website/mail_groups
```
:::

## Document metadata {#contributing/rst/document-metadata}

[Sphinx](https://en.wikipedia.org/wiki/Sphinx_(documentation_generator))
supports document-wide metadata markups that specify a behavior for the
entire page. They must be placed between colons ([:]{.title-ref}) at the
top of the source file.

+-----------------------------+----------------------------------------------------------------------------------+
| **Metadata**                | **Purpose**                                                                      |
+-----------------------------+----------------------------------------------------------------------------------+
| [show-content]{.title-ref}  | Make the content of a RST file that contains a                                   |
|                             | `toc tree <contributing/rst/toctree>`{.interpreted-text role="ref"} visible and  |
|                             | accessible from the documentation\'s main table of contents.                     |
+-----------------------------+----------------------------------------------------------------------------------+
| [show-toc]{.title-ref}      | Display the page\'s                                                              |
|                             | `table of contents <contributing/rst/toctree>`{.interpreted-text role="ref"}     |
|                             | when using the [show-content]{.title-ref} metadata markup. Use the               |
|                             | [titlesonly]{.title-ref} parameter for the [toctree]{.title-ref} directive to    |
|                             | only show the sub-pages\' main headings.                                         |
+-----------------------------+----------------------------------------------------------------------------------+
| [hide-page-toc]{.title-ref} | Hide the \"On this page\" sidebar and use full page width for the content.       |
+-----------------------------+----------------------------------------------------------------------------------+
| [nosearch]{.title-ref}      | Exclude the document from search results.                                        |
+-----------------------------+----------------------------------------------------------------------------------+
| [orphan]{.title-ref}        | Suppress the need to include the document in a                                   |
|                             | `TOC tree <contributing/rst/toctree>`{.interpreted-text role="ref"}.             |
+-----------------------------+----------------------------------------------------------------------------------+
| [code-column]{.title-ref}   | > | Show a dynamic side column that can be used to display interactive tutorials |
|                             | >   or code excerpts.                                                            |
|                             | > | For example, see                                                             |
|                             | >   `/applications/finance/accounting/get_started/cheat_sheet`{.interpreted-text |
|                             | >   role="doc"}.                                                                 |
+-----------------------------+----------------------------------------------------------------------------------+
| [custom-css]{.title-ref}    | Link CSS files (comma-separated) to the file.                                    |
+-----------------------------+----------------------------------------------------------------------------------+
| [custom-js]{.title-ref}     | Link JS files (comma-separated) to the document.                                 |
+-----------------------------+----------------------------------------------------------------------------------+
| [classes]{.title-ref}       | Assign the specified classes to the [\<main/\>]{.title-ref} element of the file. |
+-----------------------------+----------------------------------------------------------------------------------+

## Formatting tips {#contributing/rst/formatting-tips}

### Break the line but not the paragraph {#contributing/rst/line-break}

+----------------------------------------------------------------------+
| | A first long line that you break in two -\> here \<- is rendered   |
|   as a single line.                                                  |
| | A second line that follows a line break.                           |
+----------------------------------------------------------------------+
| ``` text                                                             |
| | A first long line that you break in two                            |
|   -> here <- is rendered as a single line.                           |
| | A second line that follows a line break.                           |
| ```                                                                  |
+----------------------------------------------------------------------+

### Escape markup symbols {#contributing/rst/escaping}

Markup symbols escaped with backslashes (`\`) are rendered normally. For
instance, `this \*\*line of text\*\* with \*markup\* symbols` is
rendered as "this \*\*line of text\*\* with \*markup\* symbols".

When it comes to backticks (``[), which are used in many cases such as
:ref:\`external hyperlinks
\<contributing/rst/external-hyperlinks\>]{.title-ref}, using backslashes
for escaping is no longer an option because the outer backticks
interpret enclosed backslashes and thus prevent them from escaping inner
backticks. For instance, `` `\`this formatting\ ```produces an`\[UNKNOWN
NODE
title_reference\]`error. Instead,``` `this formatting ```` ` should be used to produce the following result: ``[this
formatting]{.title-ref}\`\`.

::: seealso
[Docutils documentation on reStructuredText directives and
roles](https://docutils.sourceforge.io/docs/ref/rst/directives.html)
:::




--- SOURCE: contributing/documentation.md ---

show-content

:   

# Documentation

::: {.toctree titlesonly=""}
documentation/content_guidelines documentation/rst_guidelines
:::

This introductory guide will help you acquire the tools and knowledge
needed to contribute to the documentation.

Read the
`introduction to the reStructuredText language <contributing/documentation/rst-intro>`{.interpreted-text
role="ref"} if you are not familiar with it. Then, there are two courses
of action to start contributing to the documentation:

- **For minor changes**, such as adding a paragraph or fixing a typo, we
  recommend **using the GitHub interface**. This is the easiest and
  fastest way to submit changes, and it is suitable for non-technical
  people. Jump directly to the
  `contributing/documentation/first-contribution`{.interpreted-text
  role="ref"} section to get started.
- **For more complex changes**, such as adding a new page, it is
  necessary to **use Git** and work from a local copy of the
  documentation. Follow the instructions in the
  `contributing/documentation/setup`{.interpreted-text role="ref"}
  section first to prepare your environment.

::: seealso
`Discover other ways to contribute to Odoo <../contributing>`{.interpreted-text
role="doc"}
:::

## reStructuredText (RST) {#contributing/documentation/rst-intro}

The documentation is written in **reStructuredText** (RST), a
[lightweight markup
language](https://en.wikipedia.org/wiki/Lightweight_markup_language)
consisting of regular text augmented with markup, which allows including
headings, images, notes, and so on. `RST
(reStructuredText)`{.interpreted-text role="abbr"} is easy to use, even
if you are not familiar with it.

:::: important
::: title
Important
:::

Be mindful of our
`content <documentation/content_guidelines>`{.interpreted-text
role="doc"} and `RST <documentation/rst_guidelines>`{.interpreted-text
role="doc"} guidelines as you write documentation. This ensures that the
documentation stays consistent and facilitates the approval of changes
by the Odoo team.
::::

## Environment setup {#contributing/documentation/setup}

The instructions below help you prepare your environment for making
local changes to the documentation and then push them to GitHub. Skip
this section and go to
`contributing/documentation/first-contribution`{.interpreted-text
role="ref"} if you have already completed this step or want to make
changes from the GitHub interface.

1.  First, [create a GitHub account](https://github.com/join). Odoo uses
    GitHub to manage the source code of its products, and this is where
    you will submit your changes.

2.  [Generate a new SSH key and register it on your GitHub
    account](https://docs.github.com/en/authentication/connecting-to-github-with-ssh).

3.  Go to
    [github.com/odoo/documentation](https://github.com/odoo/documentation)
    and click on the `Fork`{.interpreted-text role="guilabel"} button in
    the top right corner to create a fork
    (`your own copy`{.interpreted-text role="dfn"}) of the repository on
    your account. This creates a copy of the codebase to which you can
    make changes without affecting the main codebase. Skip this step if
    you work at Odoo.

4.  [Install
    Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git).
    It is a command-line (`a text interface`{.interpreted-text
    role="dfn"}) tool that allows tracking the history of changes made
    to a file and, more importantly, working on different versions of
    that file simultaneously. It means you do not need to worry about
    overwriting someone else's pending work when making changes.

    Verify that the installation directory of Git is included in your
    system\'s [PATH]{.title-ref} variable.

    ::::: tabs
    ::: group-tab
    Linux and macOS

    Follow the [guide to update the PATH variable on Linux and
    macOS](https://unix.stackexchange.com/a/26059) with the installation
    path of Git (by default `/usr/bin/git`{.interpreted-text
    role="file"}).
    :::

    ::: group-tab
    Windows

    Follow the [guide to update the PATH variable on
    Windows](https://www.howtogeek.com/118594/how-to-edit-your-system-path-for-easy-command-line-access/)
    with the installation path of Git (by default
    `C:\\Program Files\\Git`{.interpreted-text role="file"}).
    :::
    :::::

5.  Configure Git to identify yourself as the author of your future
    contributions. Enter the same email address you used to register on
    GitHub.

    ``` console
    $ git config --global user.name "Your Name"
    $ git config --global user.email "youremail@example.com"
    ```

6.  Clone the sources with Git and navigate into the local repository.

    ``` console
    $ git clone git@github.com:odoo/documentation.git
    $ cd documentation
    ```

7.  Configure Git to push changes to your fork rather than to the main
    codebase. In the commands below, replace
    [\<your_github_account\>]{.title-ref} with the name of the GitHub
    account on which you created the fork. Skip this step if you work at
    Odoo.

    ``` console
    $ git remote add dev git@github.com:<your_github_account>/documentation.git
    ```

8.  Configure Git to ease the collaboration between writers coming from
    different systems.

    ::::: tabs
    ::: group-tab
    Linux and macOS

    ``` console
    $ git config --global core.autocrlf input
    $ git config commit.template `pwd`/commit_template.txt
    ```
    :::

    ::: group-tab
    Windows

    ``` console
    $ git config --global core.autocrlf true
    $ git config commit.template %CD%\commit_template.txt
    ```
    :::
    :::::

9.  Install the latest release of
    [Python](https://wiki.python.org/moin/BeginnersGuide/Download) and
    [pip](https://pip.pypa.io/en/stable/installation/).

10. Install the Python dependencies of the documentation with pip.

    ``` console
    $ pip install -r requirements.txt
    ```

    Verify that the installation directory of the Python dependencies is
    included in your system\'s [PATH]{.title-ref} variable.

    ::::: tabs
    ::: group-tab
    Linux and macOS

    Follow the [guide to update the PATH variable on Linux and
    macOS](https://unix.stackexchange.com/a/26059) with the installation
    path of the Python dependencies (by default
    `~/.local/bin`{.interpreted-text role="file"}).
    :::

    ::: group-tab
    Windows

    Follow the [guide to update the PATH variable on
    Windows](https://www.howtogeek.com/118594/how-to-edit-your-system-path-for-easy-command-line-access/)
    with the installation path of the Python dependencies.
    :::
    :::::

11. Install Make.

    :::::: tabs
    ::: group-tab
    Linux

    ``` console
    $ sudo apt install make -y
    ```
    :::

    ::: group-tab
    macOS

    Follow the [guide to install Make on
    macOS](https://formulae.brew.sh/formula/make)
    :::

    ::: group-tab
    Windows

    Follow the [guide to install Make on
    Windows](https://www.technewstoday.com/install-and-use-make-in-windows).
    :::
    ::::::

12. [Install pngquant](https://pngquant.org/).

13. You are now ready to `make your first contribution
    <contributing/documentation/first-contribution>`{.interpreted-text
    role="ref"} with Git.

## Contributing to the documentation {#contributing/documentation/first-contribution}

::::::: tabs
::: tab
Contribute from the GitHub interface

1.  First, [create a GitHub account](https://github.com/join). Odoo uses
    GitHub to manage the source code of its products, and this is where
    you will submit your changes.

2.  Verify that you are browsing the documentation in the version that
    you intend to change. The version can be selected from the dropdown
    in the top menu.

3.  Head to the page that you want to change and click on the
    `Edit on GitHub`{.interpreted-text role="guilabel"} button in the
    top right corner of the page.

4.  Click on the `Fork this repository`{.interpreted-text
    role="guilabel"} button to create a fork (`your own
    copy`{.interpreted-text role="dfn"}) of the repository on your
    account. This creates a copy of the codebase to which you can make
    changes without affecting the main codebase. Skip this step if you
    work at Odoo.

    ![image](documentation/fork-repository.png)

5.  Make the desired changes while taking care of following the `content
    <documentation/content_guidelines>`{.interpreted-text role="doc"}
    and `RST <documentation/rst_guidelines>`{.interpreted-text
    role="doc"} guidelines.

    :::: tip
    ::: title
    Tip
    :::

    Click on the `Preview changes`{.interpreted-text role="guilabel"}
    button to review your contribution in a more human-readable format.
    Be aware that the preview is not able to handle all markups
    correctly. Notes and tips, for instance, are shown as plain text.
    ::::

6.  Scroll to the bottom of the page and fill out the small form to
    propose your changes. In the first text box, write a very short
    summary of your changes. For instance, \"Fix a typo\" or \"Add
    documentation for invoicing of sales orders.\" In the second text
    box, explain *why* you are proposing these changes. Then, click on
    the `Propose changes`{.interpreted-text role="guilabel"} button.

    ![image](documentation/propose-changes.png)

7.  Review your changes and click on the
    `Create pull request`{.interpreted-text role="guilabel"} button.

8.  Tick the `Allow edits from maintainer`{.interpreted-text
    role="guilabel"} checkbox. Skip this step if you work at Odoo.

9.  Review the summary that you wrote about your changes and click on
    the `Create
    pull request`{.interpreted-text role="guilabel"} button again.

10. At the bottom of the page, check the mergeability status and address
    any issues.

11. As soon as your `PR (Pull Request)`{.interpreted-text role="abbr"}
    is ready for merging, a member of the Odoo team is automatically
    assigned for review. If the reviewer has questions or remarks, they
    will post them as comments and you will be notified by email. Those
    comments must be resolved for the contribution to go forward.

12. Once your changes are approved, the reviewer merges them and they
    appear online the next day.
:::

::::: tab
Contribute with Git

:::: important
::: title
Important
:::

Some steps of this guide require to be comfortable with Git. Here are
some [tutorials](https://www.atlassian.com/git/tutorials) and an
[interactive training](https://learngitbranching.js.org/) if you are
stuck at some point.
::::

Now that your environment is set up, you can start contributing to the
documentation. In a terminal, navigate to the directory where you cloned
the sources and follow the guide below.

1.  Choose the version of the documentation to which you want to make
    changes. Keep in mind that contributions targeting an
    `unsupported version of Odoo
    </administration/standard_extended_support>`{.interpreted-text
    role="doc"} are not accepted. This guide assumes that the changes
    target the documentation of Odoo {CURRENT_VERSION}, which
    corresponds to branch [{CURRENT_BRANCH}]{.title-ref}.

2.  Create a new branch starting from branch {CURRENT_BRANCH}. Prefix
    the branch name with the base branch:
    [{CURRENT_BRANCH}-\...]{.title-ref}. If you work at Odoo, suffix the
    branch name with your Odoo handle:
    [{CURRENT_BRANCH}-\...-xyz]{.title-ref}.

    ::: example
    ``` console
    $ git switch -c {CURRENT_BRANCH}-explain-pricelists
    ```

    ``` console
    $ git switch -c {CURRENT_BRANCH}-explain-pricelists-xyz
    ```
    :::

3.  Make the desired changes while taking care of following the `content
    <documentation/content_guidelines>`{.interpreted-text role="doc"}
    and `RST <documentation/rst_guidelines>`{.interpreted-text
    role="doc"} guidelines.

4.  Compress all PNG images that were added or modified.

    ``` console
    $ pngquant path/to/image.png
    $ mv path/to/image-fs8.png path/to/image.png
    ```

5.  Write a [redirect
    rule](https://github.com/odoo/documentation/tree/{BRANCH}/redirects/MANUAL.md)
    for every RST file that were renamed.

6.  Build the documentation with `make`{.interpreted-text
    role="command"}. Then, open `_build/index.html`{.interpreted-text
    role="file"} in a web browser to browse the documentation with your
    changes.

    :::: tip
    ::: title
    Tip
    :::

    Use `make help`{.interpreted-text role="command"} to learn about
    other useful commands.
    ::::

7.  Commit your changes. Write a clear commit message as instructed in
    the `Git guidelines
    <development/git_guidelines>`{.interpreted-text role="doc"}.

    ``` console
    $ git add .
    $ git commit
    ```

8.  Push your changes to your fork, for which we added the remote alias
    [dev]{.title-ref}.

    ::: example
    ``` console
    $ git push -u dev {CURRENT_BRANCH}-explain-pricelists
    ```
    :::

    If you work at Odoo, push your changes directly to the main codebase
    whose remote alias is [origin]{.title-ref}.

    ::: example
    ``` console
    $ git push -u origin {CURRENT_BRANCH}-explain-pricelists-xyz
    ```
    :::

9.  Open a `PR (Pull Request)`{.interpreted-text role="abbr"} on GitHub
    to submit your changes for review.

    1.  Go to the [compare page of the odoo/documentation
        codebase](https://github.com/odoo/documentation/compare).
    2.  Select **{CURRENT_BRANCH}** for the base.
    3.  Click on `compare across forks`{.interpreted-text
        role="guilabel"}.
    4.  Select **\<your_github_account\>/odoo** for the head repository.
        Replace [\<your_github_account\>]{.title-ref} with the name of
        the GitHub account on which you created the fork. Skip this step
        if you work at Odoo.
    5.  Review your changes and click on the
        `Create pull request`{.interpreted-text role="guilabel"} button.
    6.  Tick the `Allow edits from maintainer`{.interpreted-text
        role="guilabel"} checkbox. Skip this step if you work at Odoo.
    7.  Complete the description and click on the
        `Create pull request`{.interpreted-text role="guilabel"} button
        again.

10. At the bottom of the page, check the mergeability status and address
    any issues.

11. As soon as your `PR (Pull Request)`{.interpreted-text role="abbr"}
    is ready for merging, a member of the Odoo team is automatically
    assigned for review. If the reviewer has questions or remarks, they
    will post them as comments and you will be notified by email. Those
    comments must be resolved for the contribution to go forward.

12. Once your changes are approved, the reviewer merges them and they
    appear online the next day.
:::::
:::::::




--- SOURCE: contributing/install_git.md ---

[Install
Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git). It
is a command-line (`a text interface`{.interpreted-text role="dfn"})
tool that allows tracking the history of changes made to a file and,
more importantly, working on different versions of that file
simultaneously. It means you do not need to worry about overwriting
someone else's pending work when making changes.

Verify that the installation directory of Git is included in your
system\'s [PATH]{.title-ref} variable.

::::: tabs
::: group-tab
Linux and macOS

Follow the [guide to update the PATH variable on Linux and
macOS](https://unix.stackexchange.com/a/26059) with the installation
path of Git (by default `/usr/bin/git`{.interpreted-text role="file"}).
:::

::: group-tab
Windows

Follow the [guide to update the PATH variable on
Windows](https://www.howtogeek.com/118594/how-to-edit-your-system-path-for-easy-command-line-access/)
with the installation path of Git (by default
`C:\\Program Files\\Git`{.interpreted-text role="file"}).
:::
:::::


