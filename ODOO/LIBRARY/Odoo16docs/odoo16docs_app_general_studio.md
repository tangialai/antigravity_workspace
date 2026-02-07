# ODOO DOCUMENTATION SUMMARY - CATEGORY: ODOO16DOCS_APP_GENERAL_STUDIO



--- SOURCE: essentials/activities.md ---

# Activities

*Activities* are follow-up tasks tied to a record in an Odoo database.
Activities can be scheduled on any page of the database that contains a
chatter thread, kanban view, list view, or activities view of an
application.

## Schedule activities

One way that activities are created is by clicking the
`Schedule Activity`{.interpreted-text role="guilabel"} button, located
at the top of the *chatter* on any record. On the pop-up window that
appears, select an `Activity Type`{.interpreted-text role="guilabel"}
from the drop-down menu.

:::: tip
::: title
Tip
:::

Individual applications have a list of *Activity Types* dedicated to
that application. For example, to view and edit the activities available
for the *CRM* application, go to
`CRM app --> Configuration --> Activity Types`{.interpreted-text
role="menuselection"}.
::::

Enter a title for the activity in the `Summary`{.interpreted-text
role="guilabel"} field, located in the `Schedule
Activity`{.interpreted-text role="guilabel"} pop-up window.

To assign the activity to a different user, select a name from the
`Assigned to`{.interpreted-text role="guilabel"} drop-down menu.
Otherwise, the user creating the activity is automatically assigned.

Lastly, feel free to add any additional information in the optional
`Log a note...`{.interpreted-text role="guilabel"} field.

:::: note
::: title
Note
:::

The `Due Date`{.interpreted-text role="guilabel"} field on the
`Schedule Activity`{.interpreted-text role="guilabel"} pop-up window
auto-populates based on the configuration settings for the selected
`Activity Type`{.interpreted-text role="guilabel"}. However, this date
can be changed by selecting a day on the calendar in the
`Due Date`{.interpreted-text role="guilabel"} field.
::::

Lastly, click one of the following buttons:

- `Schedule`{.interpreted-text role="guilabel"}: adds the activity to
  the chatter under `Planned activities`{.interpreted-text
  role="guilabel"}.
- `Mark as Done`{.interpreted-text role="guilabel"}: adds the details of
  the activity to the chatter under `Today`{.interpreted-text
  role="guilabel"}. The activity is not scheduled, it is automatically
  marked as completed.
- `Done \& Schedule Next`{.interpreted-text role="guilabel"}: adds the
  task under `Today`{.interpreted-text role="guilabel"} marked as done,
  and opens a new activity window.
- `Discard`{.interpreted-text role="guilabel"}: discards any changes
  made on the pop-up window.

![View of CRM leads and the option to schedule an activity.](activities/schedule-pop-up.png)

:::: note
::: title
Note
:::

Depending on the activity type, the `Schedule`{.interpreted-text
role="guilabel"} button may be replaced by a `Save`{.interpreted-text
role="guilabel"} button, or an `Open Calendar`{.interpreted-text
role="guilabel"} button.
::::

Scheduled activities are added to the chatter for the record under
`Planned activities`{.interpreted-text role="guilabel"}.

![View of CRM leads and the option to schedule an activity.](activities/chatter-activities.png)

Activities can also be scheduled from the kanban, list, or activities
view of an application.

:::::: tabs
::: tab
Kanban view

Select a record on which to schedule an activity. Click on the
`🕘 (clock)`{.interpreted-text role="guilabel"} icon, then
`Schedule An Activity`{.interpreted-text role="guilabel"}, and proceed
to fill out the pop-up form.

![Kanban view of the CRM pipeline and the option to schedule an activity.](activities/schedule-kanban-activity.png)
:::

::: tab
List view

Select a record on which to schedule an activity. Click on the
`🕘 (clock)`{.interpreted-text role="guilabel"} icon, then
`Schedule An Activity`{.interpreted-text role="guilabel"}. If the record
already has an activity scheduled, the clock icon may be replaced by a
`📞 (phone)`{.interpreted-text role="guilabel"} or an
`✉️ (envelope)`{.interpreted-text role="guilabel"} icon.

![List view of the CRM pipeline and the option to schedule an activity.](activities/schedule-list-activity.png)
:::

::: tab
Activity view

To open the activity view for an application, select the
`🕘 (clock)`{.interpreted-text role="guilabel"} icon from the menu bar
anywhere in the database. Select any application from the drop-down
menu, and click the `🕘 (clock)`{.interpreted-text role="guilabel"} icon
for the desired app.

![Activity menu drop down with focus on where to open activity view for CRM.](activities/schedule-activity-view-menu.png)

Select a record on which to schedule an activity. Move across the row to
find the desired activity type, then click the
`＋ (plus sign)`{.interpreted-text role="guilabel"}.

![Activity view of the CRM pipeline and the option to schedule an activity.](activities/schedule-activity-view.png)
:::
::::::

:::: note
::: title
Note
:::

Activity colors, and their relation to an activity\'s due date, is
consistent throughout Odoo, regardless of the activity type, or the
view.

- Activities that appear in **green** indicate a due date sometime in
  the future.
- **Yellow** indicates that the activity\'s due date is today.
- **Red** indicates that the activity is overdue and the due date has
  passed.

For example, if an activity is created for a phone call, and the due
date passes, the activity appears with a red phone in list view, and a
red clock on the kanban view.
::::

## View scheduled activities

To view scheduled activities, open either the
`Sales app`{.interpreted-text role="menuselection"} or
`CRM app`{.interpreted-text role="menuselection"} and click the
`🕘 (clock)`{.interpreted-text role="guilabel"} icon, located to the
far-right side of the other view options.

Doing so opens the activities menu, showcasing all the scheduled
activities for the user, by default. To show all activities for every
user, remove the `My Pipeline`{.interpreted-text role="guilabel"} filter
from the `Search...`{.interpreted-text role="guilabel"} bar.

To view a consolidated list of activities separated by the application
where they were created, and by deadline, click the
`🕘 (clock)`{.interpreted-text role="guilabel"} icon on the header menu
to see the activities for that specific application in a drop-down menu.

The possibility to `Add new note`{.interpreted-text role="guilabel"} and
`Request a Document`{.interpreted-text role="guilabel"} appear at the
bottom of this drop-down menu, when the `🕘 (clock)`{.interpreted-text
role="guilabel"} icon on the header menu is clicked.

![View of CRM leads page emphasizing the activities menu.](activities/activities-menu.png)

## Configure activity types

To configure the types of activities in the database, go to
`Settings app --> Discuss
--> Activities --> Activity Types`{.interpreted-text
role="menuselection"}.

![View of the settings page emphasizing the menu activity types.](activities/settings-activities-types.png)

Doing so reveals the `Activity Types`{.interpreted-text role="guilabel"}
page, where the existing activity types are found.

To edit an existing activity type, select it from the list, then click
`Edit`{.interpreted-text role="guilabel"}. To create a new activity
type, click `Create`{.interpreted-text role="guilabel"}.

At the top of a blank activity type form, start by choosing a
`Name`{.interpreted-text role="guilabel"} for the new activity type.

![New activity type form.](activities/new-activity-type.png)

### Activity settings

#### Action

The *Action* field specifies the intent of the activity. Some actions
trigger specific behaviors after an activity is scheduled.

- If `Upload Document`{.interpreted-text role="guilabel"} is selected, a
  link to upload a document is added directly to the planned activity in
  the chatter.
- If either `Phonecall`{.interpreted-text role="guilabel"} or
  `Meeting`{.interpreted-text role="guilabel"} are selected, users have
  the option to open their calendar to schedule a time for this
  activity.
- If `Request Signature`{.interpreted-text role="guilabel"} is selected,
  a link is added to the planned activity in the chatter that opens a
  signature request pop-up window.

:::: note
::: title
Note
:::

The actions available to select on an activity type vary, depending on
the applications currently installed in the database.
::::

#### Default user

To automatically assign this activity to a specific user when this
activity type is scheduled, choose a name from the
`Default User`{.interpreted-text role="guilabel"} drop-down menu. If
this field is left blank, the activity is assigned to the user who
creates the activity.

#### Default summary

To include notes whenever this activity type is created, enter them into
the `Default
Summary`{.interpreted-text role="guilabel"} field.

:::: note
::: title
Note
:::

The information in the `Default User`{.interpreted-text role="guilabel"}
and `Default Summary`{.interpreted-text role="guilabel"} fields are
included when an activity is created. However, they can be altered
before the activity is scheduled or saved.
::::

### Next activity

To automatically suggest, or trigger, a new activity after an activity
has been marked complete, the `Chaining Type`{.interpreted-text
role="guilabel"} must be set.

#### Suggest next activity

In the `Chaining Type`{.interpreted-text role="guilabel"} field, select
`Suggest Next Activity`{.interpreted-text role="guilabel"}. Upon doing
so, the field underneath changes to: `Suggest`{.interpreted-text
role="guilabel"}. Click the `Suggest`{.interpreted-text role="guilabel"}
field drop-down menu to select any activities to recommend as follow-up
tasks to this activity type.

In the `Schedule`{.interpreted-text role="guilabel"} field, choose a
default deadline for these activities. To do so, configure a desired
number of `Days`{.interpreted-text role="guilabel"},
`Weeks`{.interpreted-text role="guilabel"}, or
`Months`{.interpreted-text role="guilabel"}. Then, decide if it should
occur `after completion date`{.interpreted-text role="guilabel"} or
`after previous activity
deadline`{.interpreted-text role="guilabel"}.

This `Schedule`{.interpreted-text role="guilabel"} field information can
be altered before the activity is scheduled.

When all configurations are complete, click `Save`{.interpreted-text
role="guilabel"}.

![Schedule activity popup with emphasis on recommended activities.](activities/schedule-recommended-activity.png)

:::: note
::: title
Note
:::

If an activity has the `Chaining Type`{.interpreted-text
role="guilabel"} set to `Suggest Next Activity`{.interpreted-text
role="guilabel"}, and has activities listed in the
`Suggest`{.interpreted-text role="guilabel"} field, users are presented
with recommendations for activities as next steps.
::::

#### Trigger next activity

Setting the `Chaining Type`{.interpreted-text role="guilabel"} to
`Trigger Next Activity`{.interpreted-text role="guilabel"} immediately
launches the next activity once the previous one is completed.

If `Trigger Next Activity`{.interpreted-text role="guilabel"} is
selected in the `Chaining Type`{.interpreted-text role="guilabel"}
field, the field beneath changes to: `Trigger`{.interpreted-text
role="guilabel"}. From the `Trigger`{.interpreted-text role="guilabel"}
field drop-down menu, select the activity that should be launched once
this activity is completed.

In the `Schedule`{.interpreted-text role="guilabel"} field, choose a
default deadline for these activities. To do so, configure a desired
number of `Days`{.interpreted-text role="guilabel"},
`Weeks`{.interpreted-text role="guilabel"}, or
`Months`{.interpreted-text role="guilabel"}. Then, decide if it should
occur `after completion date`{.interpreted-text role="guilabel"} or
`after previous activity
deadline`{.interpreted-text role="guilabel"}.

This `Schedule`{.interpreted-text role="guilabel"} field information can
be altered before the activity is scheduled.

When all configurations are complete, click `Save`{.interpreted-text
role="guilabel"}.

![Schedule new activity popup with emphasis on Done and launch next button.](activities/triggered-activities.png)

:::: note
::: title
Note
:::

When an activity has the `Chaining Type`{.interpreted-text
role="guilabel"} set to `Trigger Next Activity`{.interpreted-text
role="guilabel"}, marking the activity as [Done]{.title-ref} immediately
launches the next activity listed in the `Trigger`{.interpreted-text
role="guilabel"} field.
::::

::: seealso
\- `/applications/productivity/discuss`{.interpreted-text role="doc"} -
`/applications/productivity/discuss/team_communication`{.interpreted-text
role="doc"}
:::




--- SOURCE: essentials/contacts.md ---

# Contacts

The *Contacts* application comes installed on all Odoo databases.
Contacts are created for customers the company does business with
through Odoo. A contact is a repository of vital business information,
facilitating communication and business transactions.

## Contact form

To create a new contact, navigate to the
`Contacts app`{.interpreted-text role="menuselection"}, and click
`Create`{.interpreted-text role="guilabel"}. A new form appears where
various contact information can be added.

### Contact type

Odoo allows for both `Individual`{.interpreted-text role="guilabel"} and
`Company`{.interpreted-text role="guilabel"} contacts. Select either
`Individual`{.interpreted-text role="guilabel"} or
`Company`{.interpreted-text role="guilabel"}, depending on the type of
contact that is being added.

### Name

First, fill in the name of the `Individual`{.interpreted-text
role="guilabel"} or `Company`{.interpreted-text role="guilabel"}. This
is how the name appears throughout the database. This field is
**mandatory**.

:::: tip
::: title
Tip
:::

`Individual`{.interpreted-text role="guilabel"} contacts can have a
`Company`{.interpreted-text role="guilabel"} contact linked to it. After
selecting `Individual`{.interpreted-text role="guilabel"}, a new
`Company Name...`{.interpreted-text role="guilabel"} field appears below
the first name field.
::::

### Address

Next, enter the `Address`{.interpreted-text role="guilabel"} of the
`Company`{.interpreted-text role="guilabel"} or
`Individual`{.interpreted-text role="guilabel"}.

:::: tip
::: title
Tip
:::

If the `Individual`{.interpreted-text role="guilabel"} option is chosen,
then the *type of address* can be chosen from a drop-down menu. Options
for this drop-down menu include: `Contact`{.interpreted-text
role="guilabel"}, `Invoice
Address`{.interpreted-text role="guilabel"},
`Delivery Address`{.interpreted-text role="guilabel"},
`Other Address`{.interpreted-text role="guilabel"}, and `Private
Address`{.interpreted-text role="guilabel"}.
::::

### Additional fields

Additional details are included on the initial form. The following
fields are available:

- `VAT`{.interpreted-text role="guilabel"}: Value Added Tax number.
- `Citizen Identification`{.interpreted-text role="guilabel"}: citizen
  or government identification number (only available on
  `Individual`{.interpreted-text role="guilabel"}).
- `Job Position`{.interpreted-text role="guilabel"}: list the job
  position of the `Individual`{.interpreted-text role="guilabel"} (only
  available on `Individual`{.interpreted-text role="guilabel"}).
- `Phone`{.interpreted-text role="guilabel"}: list phone number (with
  country code). Make a call, send an SMS, or WhatsApp message by
  hovering over the field on the saved form, and clicking the desired
  option.
- `Mobile`{.interpreted-text role="guilabel"}: list mobile phone number
  (with country code). Make a call, send an SMS, or WhatsApp message by
  hovering over the field on the saved form, and clicking on the desired
  option.
- `Email`{.interpreted-text role="guilabel"}: enter the email address
  with the domain.
- `Website`{.interpreted-text role="guilabel"}: enter the full website
  address, starting with [http]{.title-ref} or [https]{.title-ref}.
- `Title`{.interpreted-text role="guilabel"}: select
  `Doctor`{.interpreted-text role="guilabel"}, `Madam`{.interpreted-text
  role="guilabel"}, `Miss`{.interpreted-text role="guilabel"},
  `Mister`{.interpreted-text role="guilabel"},
  `Professor`{.interpreted-text role="guilabel"}, or create a new one
  directly from this field.
- `Tags`{.interpreted-text role="guilabel"}: enter preconfigured tags by
  typing them in the field, or clicking the drop-down menu, and
  selecting one. To create a new one, type the new tag in the field, and
  click `Create`{.interpreted-text role="guilabel"} from the resulting
  drop-down menu.

### Contacts & Addresses tab

At the bottom of the contact form are several tabs. On the
`Contacts & Addresses`{.interpreted-text role="guilabel"} tab, contacts
can be added that are associated with a `Company`{.interpreted-text
role="guilabel"} and related addresses. For example, a specific contact
person for the company can be listed here.

Multiple addresses can be added on both `Individual`{.interpreted-text
role="guilabel"} and `Company`{.interpreted-text role="guilabel"}
contacts. To do so, click `Add`{.interpreted-text role="guilabel"} in
the `Contacts & Addresses`{.interpreted-text role="guilabel"} tab. Doing
so reveals a `Create Contact`{.interpreted-text role="guilabel"} pop-up
form, in which additional addresses can be configured.

![Add a contact/address to the contact form.](contacts/contact-form-add-address.png){.align-center}

On the `Create Contact`{.interpreted-text role="guilabel"} pop-up form,
start by clicking the default `Other
Address`{.interpreted-text role="guilabel"} field at the top to reveal a
drop-down menu of address-related options.

Select any of the following options:

- `Contact`{.interpreted-text role="guilabel"}: adds another contact to
  the existing contact form.
- `Invoice Address`{.interpreted-text role="guilabel"}: adds a specific
  invoice address to the existing contact form.
- `Delivery Address`{.interpreted-text role="guilabel"}: adds a specific
  delivery address to the existing contact form.
- `Other Address`{.interpreted-text role="guilabel"}: adds an alternate
  address to the existing contact form.
- `Private Address`{.interpreted-text role="guilabel"}: adds a private
  address to the existing contact form.

![Create a new contact/address on a contact form.](contacts/create-contact-window.png){.align-center}

Once an option is selected, enter the corresponding contact information
that should be used for the specified address type.

Add the `Contact Name`{.interpreted-text role="guilabel"},
`Address`{.interpreted-text role="guilabel"}, `Email`{.interpreted-text
role="guilabel"}, along with the `Phone`{.interpreted-text
role="guilabel"} and/or `Mobile`{.interpreted-text role="guilabel"}
numbers below.

Set the `Job Position`{.interpreted-text role="guilabel"}, which appears
if the `Contact`{.interpreted-text role="guilabel"} address type has
been selected. This is similar to the `Individual`{.interpreted-text
role="guilabel"} contact.

To add a note, click on the text field next to `Notes`{.interpreted-text
role="guilabel"}, and write anything that is applicable to the customer
or contact.

Then, click `Save & Close`{.interpreted-text role="guilabel"} to save
the address, and close the `Create Contact`{.interpreted-text
role="guilabel"} window. Or, click `Save & New`{.interpreted-text
role="guilabel"} to save the address, and immediately input another one.

### Sales & Purchase tab

Next, is the `Sales & Purchases`{.interpreted-text role="guilabel"} tab,
which only appears when the *Sales*, *Purchase*, **or** *Point of Sale*
applications are installed.

The `Fiscal Position`{.interpreted-text role="guilabel"} can be set on
the `Sales & Purchases`{.interpreted-text role="guilabel"} tab. Select a
`Fiscal Position`{.interpreted-text role="guilabel"} from the drop-down
menu.

#### Sales section

Under the `Sales`{.interpreted-text role="guilabel"} heading, a specific
`Salesperson`{.interpreted-text role="guilabel"} can be assigned to a
contact. To do that, click the `Salesperson`{.interpreted-text
role="guilabel"} drop-down field, and select one. Create a new
`Salesperson`{.interpreted-text role="guilabel"} by typing the user\'s
name, and making the appropriate selection.

Certain `Payment Terms`{.interpreted-text role="guilabel"}, or a certain
`Pricelist`{.interpreted-text role="guilabel"}, can also be set, if
needed. Click the drop-down menu next to
`Payment Terms`{.interpreted-text role="guilabel"}, and change it to one
of the preselected `Payment Terms`{.interpreted-text role="guilabel"},
or `Create`{.interpreted-text role="guilabel"} a new one. Select the
`Pricelist`{.interpreted-text role="guilabel"} drop-down menu to choose
the appropriate `Pricelist`{.interpreted-text role="guilabel"}.

Click into the `Delivery Method`{.interpreted-text role="guilabel"}
field to select an option from the drop-down menu.

#### Point Of Sale section

Under the `Point Of Sale`{.interpreted-text role="guilabel"} heading,
enter a `Barcode`{.interpreted-text role="guilabel"} that can be used to
identify the contact. Use the `Loyalty Points`{.interpreted-text
role="guilabel"} field to track points the user won as part of a
*Loyalty Program*.

#### Purchase section

Specify `Payment Terms`{.interpreted-text role="guilabel"},
`1099 Box`{.interpreted-text role="guilabel"} information, and a
preferred `Payment Method`{.interpreted-text role="guilabel"} here. A
`Receipt Reminder`{.interpreted-text role="guilabel"} can be set here,
as well.

#### Misc section

Under the `Misc.`{.interpreted-text role="guilabel"} heading, use
`Reference`{.interpreted-text role="guilabel"} field to add any
additional information for this contact. If this contact should only be
accessible for one company in a multi-company database, select it from
the `Company`{.interpreted-text role="guilabel"} field drop-down list.
Use the `Website`{.interpreted-text role="guilabel"} drop-down menu to
restrict the publishing of this contact to one website (if working on a
database with multiple websites). Select one or more
`Website Tags`{.interpreted-text role="guilabel"} to assist in filtering
published customers on the [/customers]{.title-ref} website page. Select
an `Industry`{.interpreted-text role="guilabel"} for this contact from
the drop-down menu. Use the `SLA Policies`{.interpreted-text
role="guilabel"} field to assign a *Helpdesk* SLA policy to this
contact.

### Accounting tab

The `Accounting`{.interpreted-text role="guilabel"} tab appears when the
*Accounting* application is installed. Here, a user can add any related
`Bank Accounts`{.interpreted-text role="guilabel"}, or set default
`Accounting entries`{.interpreted-text role="guilabel"}.

Under the `Miscellaneous`{.interpreted-text role="guilabel"} heading,
use the `LEI`{.interpreted-text role="guilabel"} field to enter a Legal
Entity Identifier, if necessary.

### Internal Notes tab

Following the `Accounting`{.interpreted-text role="guilabel"} tab is the
`Internal Notes`{.interpreted-text role="guilabel"} tab, where notes can
be left on this contact form, just like on the contact form noted above.

### Partner Assignment tab

Next is the `Partner Assignment`{.interpreted-text role="guilabel"} tab,
which by default, includes a `Geolocation`{.interpreted-text
role="guilabel"} section, and other partner options, including
`Partner Activation`{.interpreted-text role="guilabel"} and `Partner
Review`{.interpreted-text role="guilabel"} configurations. These are
**only** present when the *Enterprise Resellers* module is installed.

### Membership tab

Finally, there is the `Membership`{.interpreted-text role="guilabel"}
tab, which can help users manage any memberships that are being offered
to this specific contact. It should be noted that this tab only appears
when the *Members* applications is installed.

## Smart buttons

At the top of the contact form, there are some additional options
available, known as *smart buttons*.

Here, Odoo displays a variety of records, related to this contact, that
were created on other apps. Odoo integrates information from every
single app, so there are many smart buttons.

::: example
For example, there is an `Opportunities`{.interpreted-text
role="guilabel"} smart button, where all the opportunities related to
this customer from the *CRM* app are accessible.
:::

:::: tip
::: title
Tip
:::

If the corresponding applications are installed, their related smart
buttons appear automatically on a contact form.
::::

A user can see any `Meetings`{.interpreted-text role="guilabel"},
`Sales`{.interpreted-text role="guilabel"},
`POS Orders`{.interpreted-text role="guilabel"},
`Subscriptions`{.interpreted-text role="guilabel"}, project
`Tasks`{.interpreted-text role="guilabel"}, and the
`More`{.interpreted-text role="guilabel"} smart button reveals
additional options, via a drop-down menu. A user can even quickly access
`Purchases`{.interpreted-text role="guilabel"},
`Helpdesk`{.interpreted-text role="guilabel"} tasks,
`On-time Rate`{.interpreted-text role="guilabel"} for deliveries,
`Invoiced`{.interpreted-text role="guilabel"} information,
`Vendor Bills`{.interpreted-text role="guilabel"}, and the
`Partner Ledger`{.interpreted-text role="guilabel"} connected to this
contact.

Deliveries, documents, loyalty cards, and direct debits are *also*
linked to smart buttons, like this, should there be any
outstanding/on-file for this contact.

If the contact is a partner, the user can visit their partner page on
the Odoo-built website by clicking the `Go to Website`{.interpreted-text
role="guilabel"} smart button.

### Archive contacts

If a user decides they no longer want to have this contact active, the
record can be archived. To do that, go to the `fa-cog`{.interpreted-text
role="icon"} `Action`{.interpreted-text role="guilabel"} menu at the top
of the contact form, and click `Archive`{.interpreted-text
role="guilabel"}.

Then, click `OK`{.interpreted-text role="guilabel"} from the resulting
`Confirmation`{.interpreted-text role="guilabel"} pop-up window.

With this contact successfully archived, as indicated by a banner at the
top, they do not show up in the main contacts page, but they can still
be searched for with the `Archived`{.interpreted-text role="guilabel"}
filter.

:::: tip
::: title
Tip
:::

A contact can be *unarchived*, if the user decides to work with them
again. To do that, just click the `fa-cog`{.interpreted-text
role="icon"} `Action`{.interpreted-text role="guilabel"} menu again at
the top of the archived contact form, and click
`Unarchive`{.interpreted-text role="guilabel"}. Upon doing so, the
`Archived`{.interpreted-text role="guilabel"} banner is removed, and the
contact is restored.
::::

::: seealso
\-
`Add different addresses in CRM <../sales/sales/send_quotations/different_addresses>`{.interpreted-text
role="doc"} - [Odoo\'s eLearning Contacts
tutorial](https://www.odoo.com/slides/slide/contacts-2527?fullscreen=1)
:::




--- SOURCE: essentials/export_import_data.md ---

# Export and import data

In Odoo, it is sometimes necessary to export or import data for running
reports, or for data modification. This document covers the export and
import of data into and out of Odoo.

:::: important
::: title
Important
:::

Sometimes, users run into a \'time out\' error, or a record does not
process, due to its size. This can occur with large exports, or in cases
where the import file is too large. To circumvent this limitation
surrounding the size of the records, process exports or imports in
smaller batches.
::::

## Export data from Odoo {#export-data}

When working with a database, it is sometimes necessary to export data
in a distinct file. Doing so can aid in reporting on activities,
although, Odoo provides a precise and easy reporting tool with each
available application.

With Odoo, the values can be exported from any field in any record. To
do so, activate the list view `fa-list`{.interpreted-text role="icon"}
`(List)`{.interpreted-text role="guilabel"} icon, on the items that need
to be exported, and then select the records that should be exported. To
select a record, tick the checkbox next to the corresponding record.
Finally, click on `fa-cog`{.interpreted-text role="icon"}
`(Action)`{.interpreted-text role="guilabel"} icon, and then
`Export`{.interpreted-text role="guilabel"}.

![View of the different things to enable/click to export data.](export_import_data/list-view-export.png)

When clicking on `Export`{.interpreted-text role="guilabel"}, an
`Export Data`{.interpreted-text role="guilabel"} pop-over window
appears, with several options for the data to export:

![Overview of options to consider when exporting data in Odoo..](export_import_data/export-data-overview.png)

1.  With the
    `I want to update data (import-compatable export)`{.interpreted-text
    role="guilabel"} option ticked, the system only shows the fields
    that can be imported. This is helpful in the case where the existing
    records need to be updated. This works like a filter. Leaving the
    box unticked, gives many more field options because it shows all the
    fields, not just the ones that can be imported.
2.  When exporting, there is the option to export in two formats:
    [.csv]{.title-ref} and [.xls]{.title-ref}. With [.csv]{.title-ref},
    items are separated by a comma, while [.xls]{.title-ref} holds
    information about all the worksheets in a file, including both
    content and formatting.
3.  These are the items that can be exported. Use the
    `fa-chevron-right`{.interpreted-text role="icon"} `(Show
    sub-fields)`{.interpreted-text role="guilabel"} icon to display more
    sub-field options. Use the `Search`{.interpreted-text
    role="guilabel"} bar to find specific fields. To use the
    `Search`{.interpreted-text role="guilabel"} option more efficiently,
    click on all the `fa-chevron-right`{.interpreted-text role="icon"}
    `(Show sub-fields)`{.interpreted-text role="guilabel"} icon to
    display all fields.
4.  The `fa-plus`{.interpreted-text role="icon"}
    `(Select field)`{.interpreted-text role="guilabel"} icon button is
    present to add fields to the `Fields to export`{.interpreted-text
    role="guilabel"} list.
5.  The `fa-sort`{.interpreted-text role="icon"}
    `(Sort)`{.interpreted-text role="guilabel"} icon to the left of the
    selected fields can be used to move the fields up and down, to
    change the order in which they are displayed in the exported file.
    Drag-and-drop using the `fa-sort`{.interpreted-text role="icon"}
    `(Sort)`{.interpreted-text role="guilabel"} icon.
6.  The `fa-trash`{.interpreted-text role="icon"}
    `(Remove field)`{.interpreted-text role="guilabel"} icon is used to
    remove fields. Click the `fa-trash`{.interpreted-text role="icon"}
    `(Remove field)`{.interpreted-text role="guilabel"} icon to remove
    the field.
7.  For recurring reports, it is helpful to save export presets. Select
    all the needed fields, and click on the template drop-down menu.
    Once there, click on `New template`{.interpreted-text
    role="guilabel"}, and give a unique name to the export just created.
    The next time the same list needs to be exported, select the related
    template that was previously saved from the drop-down menu.

:::: tip
::: title
Tip
:::

It is helpful to know the field\'s external identifier. For example,
`Related Company`{.interpreted-text role="guilabel"} in the export user
interface is equal to *parent_id* (external identifier). This is helpful
because then, the only data exported is what should be modified and
re-imported.
::::

## Import data into Odoo {#import-data}

Importing data into Odoo is extremely helpful during implementation, or
in times where data needs to be updated in bulk. The following
documentation covers how to import data into an Odoo database.

:::: warning
::: title
Warning
:::

Imports are permanent and **cannot** be undone. However, it is possible
to use filters ([created on]{.title-ref} or [last modified]{.title-ref})
to identify records changed or created by the import.
::::

:::: tip
::: title
Tip
:::

Activating `developer mode <developer-mode>`{.interpreted-text
role="ref"} changes the visible import settings in the left menu. Doing
so reveals an `Advanced`{.interpreted-text role="menuselection"} menu.
Included in this advanced menu are two options:
`Track history during import`{.interpreted-text role="guilabel"} and
`Allow matching with subfields`{.interpreted-text role="guilabel"}.

![Advanced import options when developer mode is activated.](export_import_data/advanced-import.png){.align-center}

If the model uses openchatter, the
`Track history during import`{.interpreted-text role="guilabel"} option
sets up subscriptions and sends notifications during the import, but
leads to a slower import.

Should the `Allow matching with subfields`{.interpreted-text
role="guilabel"} option be selected, then all subfields within a field
are used to match under the `Odoo Field`{.interpreted-text
role="guilabel"} while importing.
::::

### Get started

Data can be imported on any Odoo business object using either Excel
([.xlsx]{.title-ref}) or `CSV
(Comma-separated Values)`{.interpreted-text role="abbr"}
([.csv]{.title-ref}) formats. This includes: contacts, products, bank
statements, journal entries, and orders.

Open the view of the object to which the data should be
imported/populated, and click on
`⭐ Favorites --> Import records`{.interpreted-text
role="menuselection"}.

![Favorites menu revealed with the import records option highlighted.](export_import_data/import-button.png)

After clicking `Import records`{.interpreted-text role="guilabel"}, Odoo
reveals a separate page with templates that can be downloaded and
populated with the company\'s own data. Such templates can be imported
in one click, since the data mapping is already done. To download a
template click `Import Template for
Customers`{.interpreted-text role="guilabel"} at the center of the page.

:::: important
::: title
Important
:::

When importing a `CSV (Comma-separated Values)`{.interpreted-text
role="abbr"} file, Odoo provides `Formatting`{.interpreted-text
role="guilabel"} options. These options do **not** appear when importing
the proprietary Excel file type ([.xls]{.title-ref},
[.xlsx]{.title-ref}).

![Formatting options presented when a CVS file is imported in Odoo.](export_import_data/formatting.png)
::::

Make necessary adjustments to the *Formatting* options, and ensure all
columns in the `Odoo field`{.interpreted-text role="guilabel"} and
`File Column`{.interpreted-text role="guilabel"} are free of errors.
Finally, click `Import`{.interpreted-text role="guilabel"} to import the
data.

### Adapt a template

Import templates are provided in the import tool of the most common data
to import (contacts, products, bank statements, etc.). Open them with
any spreadsheet software (*Microsoft Office*, *OpenOffice*, *Google
Drive*, etc.).

Once the template is downloaded, proceed to follow these steps:

- Add, remove, and sort columns to best fit the data structure.
- It is strongly advised to **not** remove the
  `External ID`{.interpreted-text role="guilabel"} (ID) column (see why
  in the next section).
- Set a unique ID to every record by dragging down the ID sequencing in
  the `External ID`{.interpreted-text role="guilabel"} (ID) column.

![An animation of the mouse dragging down the ID column, so each record has a unique ID.](export_import_data/dragdown.gif)

:::: note
::: title
Note
:::

When a new column is added, Odoo may not be able to map it
automatically, if its label does not fit any field within Odoo. However,
new columns can be mapped manually when the import is tested. Search the
drop-down menu for the corresponding field.

![Drop-down menu expanded in the initial import screen on Odoo.](export_import_data/field-list.png)

Then, use this field\'s label in the import file to ensure future
imports are successful.
::::

:::: tip
::: title
Tip
:::

Another useful way to find out the proper column names to import is to
export a sample file using the fields to be imported. This way, if there
is not a sample import template, the names are accurate.
::::

### Import from another application

The `External ID`{.interpreted-text role="guilabel"} (ID) is a unique
identifier for a line item. It is possible to use an
`External ID`{.interpreted-text role="guilabel"} (ID) from previous
software to facilitate the transition to Odoo.

Setting an ID is not mandatory when importing, but it helps in many
cases:

- Update imports: import the same file several times without creating
  duplicates.
- `Import relation fields <export_import_data/relation-fields>`{.interpreted-text
  role="ref"}.

To recreate relationships between different records, the unique
identifier from the original application should be used to map it to the
`External ID`{.interpreted-text role="guilabel"} (ID) column in Odoo.

When another record is imported that links to the first one, use
**XXX/ID** (XXX/External ID) for the original unique identifier. This
record can also be found using its name.

:::: warning
::: title
Warning
:::

It should be noted that there will be a conflict if two or more records
have the same name.
::::

The `External ID`{.interpreted-text role="guilabel"} (ID) can also be
used to update the original import, if modified data needs to be
re-imported later, therefore, it is a good practice to specify it
whenever possible.

### Field missing to map column

Odoo heuristically tries to find the type of field for each column
inside the imported file, based on the first ten lines of the files.

For example, if there is a column only containing numbers, only the
fields with the *integer* type are presented as options.

While this behavior might be beneficial in most cases, it is also
possible that it could fail, or the column may be mapped to a field that
is not proposed by default.

If this happens, check the
`Show fields of relation fields (advanced) option`{.interpreted-text
role="guilabel"}, then a complete list of fields becomes available for
each column.

![Searching for the field to match the tax column.](export_import_data/field-list.png)

### Change data import format

:::: note
::: title
Note
:::

Odoo can automatically detect if a column is a date, and tries to guess
the date format from a set of most commonly used date formats. While
this process can work for many date formats, some date formats are not
recognizable. This can cause confusion, due to day-month inversions; it
is difficult to guess which part of a date format is the day, and which
part is the month, in a date, such as [01-03-2016]{.title-ref}.
::::

When importing a `CSV (Comma-separated Values)`{.interpreted-text
role="abbr"} file, Odoo provides `Formatting`{.interpreted-text
role="guilabel"} options.

To view which date format Odoo has found from the file, check the
`Date Format`{.interpreted-text role="guilabel"} that is shown when
clicking on options under the file selector. If this format is
incorrect, change it to the preferred format using *ISO 8601* to define
the format.

:::: important
::: title
Important
:::

*ISO 8601* is an international standard, covering the worldwide
exchange, along with the communication of date and time-related data.
For example, the date format should be [YYYY-MM-DD]{.title-ref}. So, in
the case of July 24th 1981, it should be written as
[1981-07-24]{.title-ref}.
::::

:::: tip
::: title
Tip
:::

When importing Excel files ([.xls]{.title-ref}, [.xlsx]{.title-ref}),
consider using *date cells* to store dates. This maintains locale date
formats for display, regardless of how the date is formatted in Odoo.
When importing a `CSV (Comma-separated Values)`{.interpreted-text
role="abbr"} file, use Odoo\'s `Formatting`{.interpreted-text
role="guilabel"} section to select the date format columns to import.
::::

### Import numbers with currency signs

Odoo fully supports numbers with parenthesis to represent negative
signs, as well as numbers with currency signs attached to them. Odoo
also automatically detects which thousand/decimal separator is used. If
a currency symbol unknown to Odoo is used, it might not be recognized as
a number, and the import crashes.

:::: note
::: title
Note
:::

When importing a `CSV (Comma-separated Values)`{.interpreted-text
role="abbr"} file, the `Formatting`{.interpreted-text role="guilabel"}
menu appears on the left-hand column. Under these options, the
`Thousands Separator`{.interpreted-text role="guilabel"} can be changed.
::::

Examples of supported numbers (using \'thirty-two thousand\' as the
figure):

- 32.000,00
- 32000,00
- 32,000.00
- -32000.00
- (32000.00)
- \$ 32.000,00
- (32000.00 €)

Example that will not work:

- ABC 32.000,00
- \$ (32.000,00)

:::: important
::: title
Important
:::

A `() (parenthesis)`{.interpreted-text role="guilabel"} around the
number indicates that the number is a negative value. The currency
symbol **must** be placed within the parenthesis for Odoo to recognize
it as a negative currency value.
::::

### Import preview table not displayed correctly

By default, the import preview is set on commas as field separators, and
quotation marks as text delimiters. If the
`CSV (Comma-separated Values)`{.interpreted-text role="abbr"} file does
not have these settings, modify the `Formatting`{.interpreted-text
role="guilabel"} options (displayed under the `Import`{.interpreted-text
role="guilabel"} `CSV
(Comma-separated Values)`{.interpreted-text role="abbr"} file bar after
selecting the `CSV (Comma-separated Values)`{.interpreted-text
role="abbr"} file).

:::: important
::: title
Important
:::

If the `CSV (Comma-separated Values)`{.interpreted-text role="abbr"}
file has a tabulation as a separator, Odoo does **not** detect the
separations. The file format options need to be modified in the
spreadsheet application. See the following
`Change CSV file format <export_import_data/change-csv>`{.interpreted-text
role="ref"} section.
::::

### Change CSV file format in spreadsheet application {#export_import_data/change-csv}

When editing and saving `CSV (Comma-separated Values)`{.interpreted-text
role="abbr"} files in spreadsheet applications, the computer\'s regional
settings are applied for the separator and delimiter. Odoo suggests
using *OpenOffice* or *LibreOffice*, as both applications allow
modifications of all three options (from *LibreOffice* application, go
to `'Save As' dialog box --> Check the box 'Edit filter
settings' --> Save`{.interpreted-text role="menuselection"}).

Microsoft Excel can modify the encoding when saving
(`'Save As' dialog box -->
'Tools' drop-down menu --> Encoding tab`{.interpreted-text
role="menuselection"}).

### Difference between Database ID and External ID

Some fields define a relationship with another object. For example, the
country of a contact is a link to a record of the \'Country\' object.
When such fields are imported, Odoo has to recreate links between the
different records. To help import such fields, Odoo provides three
mechanisms.

:::: important
::: title
Important
:::

**Only one** mechanism should be used per field that is imported.
::::

For example, to reference the country of a contact, Odoo proposes three
different fields to import:

- `Country`{.interpreted-text role="guilabel"}: the name or code of the
  country
- `Country/Database ID`{.interpreted-text role="guilabel"}: the unique
  Odoo ID for a record, defined by the ID PostgreSQL column
- `Country/External ID`{.interpreted-text role="guilabel"}: the ID of
  this record referenced in another application (or the
  [.XML]{.title-ref} file that imported it)

For the country of Belgium, for example, use one of these three ways to
import:

- `Country`{.interpreted-text role="guilabel"}: [Belgium]{.title-ref}
- `Country/Database ID`{.interpreted-text role="guilabel"}:
  [21]{.title-ref}
- `Country/External ID`{.interpreted-text role="guilabel"}:
  [base.be]{.title-ref}

According to the company\'s need, use one of these three ways to
reference records in relations. Here is an example when one or the other
should be used, according to the need:

- Use `Country`{.interpreted-text role="guilabel"}: this is the easiest
  way when data comes from `CSV (Comma-separated
  Values)`{.interpreted-text role="abbr"} files that have been created
  manually.
- Use `Country/Database ID`{.interpreted-text role="guilabel"}: this
  should rarely be used. It is mostly used by developers as the main
  advantage is to never have conflicts (there may be several records
  with the same name, but they always have a unique Database ID)
- Use `Country/External ID`{.interpreted-text role="guilabel"}: use
  *External ID* when importing data from a third-party application.

When *External IDs* are used, import
`CSV (Comma-separated Values)`{.interpreted-text role="abbr"} files with
the `External ID`{.interpreted-text role="guilabel"} (ID) column
defining the *External ID* of each record that is imported. Then, a
reference can be made to that record with columns, like [Field/External
ID]{.title-ref}. The following two
`CSV (Comma-separated Values)`{.interpreted-text role="abbr"} files
provide an example for products and their categories.

- `CSV file for categories
  <export_import_data/External_id_3rd_party_application_product_categories.csv>`{.interpreted-text
  role="download"}
- `CSV file for Products
  <export_import_data/External_id_3rd_party_application_products.csv>`{.interpreted-text
  role="download"}

### Import relation fields {#export_import_data/relation-fields}

An Odoo object is always related to many other objects (e.g. a product
is linked to product categories, attributes, vendors, etc.). To import
those relations, the records of the related object need to be imported
first, from their own list menu.

This can be achieved by using either the name of the related record, or
its ID, depending on the circumstances. The ID is expected when two
records have the same name. In such a case add [/ ID]{.title-ref} at the
end of the column title (e.g. for product attributes: [Product
Attributes / Attribute / ID]{.title-ref}).

#### Options for multiple matches on fields

If, for example, there are two product categories with the child name
[Sellable]{.title-ref} (e.g. [Misc. Products/Sellable]{.title-ref} &
[Other Products/Sellable]{.title-ref}), the validation is halted, but
the data may still be imported. However, Odoo recommends that the data
is not imported because it will all be linked to the first
[Sellable]{.title-ref} category found in the *Product Category* list
([Misc. Products/Sellable]{.title-ref}). Odoo, instead, recommends
modifying one of the duplicate\'s values, or the product category
hierarchy.

However, if the company does not wish to change the configuration of
product categories, Odoo recommends making use of the *External ID* for
this field, \'Category\'.

#### Import many2many relationship fields

The tags should be separated by a comma, without any spacing. For
example, if a customer needs to be linked to both tags:
[Manufacturer]{.title-ref} and [Retailer]{.title-ref} then
\'Manufacturer,Retailer\' needs to be encoded in the same column of the
`CSV (Comma-separated Values)`{.interpreted-text role="abbr"} file.

- `CSV file for Manufacturer, Retailer <export_import_data/m2m-customers-tags.csv>`{.interpreted-text
  role="download"}

#### Import one2many relationships

If a company wants to import a sales order with several order lines, a
specific row **must** be reserved in the
`CSV (Comma-separated Values)`{.interpreted-text role="abbr"} file for
each order line. The first order line is imported on the same row as the
information relative to order. Any additional lines need an additional
row that does not have any information in the fields relative to the
order.

::: example
A company imports quotations using a
`CSV (Comma-separated Values)`{.interpreted-text role="abbr"} file,
based on demo data:

- `File for some quotations <export_import_data/o2m-quotations-order-lines.csv>`{.interpreted-text
  role="download"}

A company imports purchase orders with their respective purchase order
lines using a `CSV
(Comma-separated Values)`{.interpreted-text role="abbr"} file:

- `Purchase orders with their respective purchase order lines
  <export_import_data/o2m-purchase-order-lines.csv>`{.interpreted-text
  role="download"}

A company imports customers and their respective contacts using a
`CSV (Comma-separated
Values)`{.interpreted-text role="abbr"} file:

- `Customers and their respective contacts
  <export_import_data/o2m-customers-contacts.csv>`{.interpreted-text
  role="download"}
:::

### Import records several times

If an imported file contains one of the columns:
`External ID`{.interpreted-text role="guilabel"} or
`Database ID`{.interpreted-text role="guilabel"}, records that have
already been imported are modified, instead of being created. This is
extremely useful as it allows users to import the same
`CSV (Comma-separated Values)`{.interpreted-text role="abbr"} file
several times, while having made some changes in between two imports.

Odoo takes care of creating or modifying each record, depending if it is
new or not.

This feature allows a company to use the *Import/Export tool* in Odoo to
modify a batch of records in a spreadsheet application.

### Value not provided for a specific field

If all fields are not set in the CSV file, Odoo assigns the default
value for every non-defined field. But, if fields are set with empty
values in the `CSV (Comma-separated Values)`{.interpreted-text
role="abbr"} file, Odoo sets the empty value in the field, instead of
assigning the default value.

### Export/import different tables from an SQL application to Odoo

If data needs to be imported from different tables, relations need to be
recreated between records belonging to different tables. For instance,
if companies and people are imported, the link between each person and
the company they work for needs to be recreated.

To manage relations between tables, use the [External ID]{.title-ref}
facilities of Odoo. The [External ID]{.title-ref} of a record is the
unique identifier of this record in another application. The [External
ID]{.title-ref} must be unique across all records of all objects. It is
a good practice to prefix this [External ID]{.title-ref} with the name
of the application or table. (like, \'company_1\', \'person_1\' -
instead of \'1\')

As an example, suppose there is an SQL database with two tables that are
to be imported: companies and people. Each person belongs to one
company, so the link between a person and the company they work for must
be recreated.

Test this example, with a `sample of a PostgreSQL database
<export_import_data/database_import_test.sql>`{.interpreted-text
role="download"}.

First, export all companies and their *External ID*. In PSQL, write the
following command:

``` sh
> copy (select 'company_'||id as "External ID",company_name as "Name",'True' as "Is a Company" from companies) TO '/tmp/company.csv' with CSV HEADER;
```

This SQL command creates the following
`CSV (Comma-separated Values)`{.interpreted-text role="abbr"} file:

``` text
External ID,Name,Is a Company
company_1,Bigees,True
company_2,Organi,True
company_3,Boum,True
```

To create the `CSV (Comma-separated Values)`{.interpreted-text
role="abbr"} file for people linked to companies, use the following SQL
command in PSQL:

``` sh
> copy (select 'person_'||id as "External ID",person_name as "Name",'False' as "Is a Company",'company_'||company_id as "Related Company/External ID" from persons) TO '/tmp/person.csv' with CSV
```

It produces the following
`CSV (Comma-separated Values)`{.interpreted-text role="abbr"} file:

``` text
External ID,Name,Is a Company,Related Company/External ID
person_1,Fabien,False,company_1
person_2,Laurence,False,company_1
person_3,Eric,False,company_2
person_4,Ramsy,False,company_3
```

In this file, Fabien and Laurence are working for the Bigees company
([company_1]{.title-ref}), and Eric is working for the Organi company.
The relation between people and companies is done using the *External
ID* of the companies. The *External ID* is prefixed by the name of the
table to avoid a conflict of ID between people and companies
([person_1]{.title-ref} and [company_1]{.title-ref}, who shared the same
ID 1 in the original database).

The two files produced are ready to be imported in Odoo without any
modifications. After having imported these two
`CSV (Comma-separated Values)`{.interpreted-text role="abbr"} files,
there are four contacts and three companies (the first two contacts are
linked to the first company). Keep in mind to first import the
companies, and then the people.




--- SOURCE: essentials/in_app_purchase.md ---

# In-app purchases (IAP)

In-app purchases (IAP) are optional services that enhance Odoo
databases. Each service provides its own specific features and
functionality. A full list of services is available on the [Odoo IAP
Catalog](https://iap.odoo.com/iap/all-in-app-services).

![The IAP catalog with various services available on IAP.Odoo.com.](in_app_purchase/iap.png){.align-center}

::: example
The `SMS`{.interpreted-text role="guilabel"} service sends text messages
to contacts directly from the database, and the
`Documents Digitization`{.interpreted-text role="guilabel"} service
digitizes scanned or PDF vendor bills, expenses, and resumes with
optical character recognition (OCR) and artificial intelligence (AI).
:::

`IAP (In-app purchases)`{.interpreted-text role="abbr"} services do
**not** need to be configured or set up before use. Odoo users can
simply click on the service in the app to activate it. However, each
service requires its own prepaid credits, and when they run out, users
**must** `buy more <iap/buying_credits>`{.interpreted-text role="ref"}
in order to keep using it.

:::: note
::: title
Note
:::

Enterprise Odoo users with a valid subscription get free credits to test
IAP features before deciding to purchase more credits for the database.
This includes demo/training databases, educational databases, and
one-app-free databases.
::::

## IAP services {#in_app_purchase/portal}

`IAP (In-app purchases)`{.interpreted-text role="abbr"} services are
provided by Odoo, as well as third-parties, and have a wide range of
uses.

The following `IAP (In-app purchases)`{.interpreted-text role="abbr"}
services are offered by Odoo:

- `Documents Digitization`{.interpreted-text role="guilabel"}: digitizes
  scanned or PDF vendor bills, expenses, and resumes with OCR and AI.
- `Partner Autocomplete`{.interpreted-text role="guilabel"}:
  automatically populates contact records with corporate data.
- `SMS`{.interpreted-text role="guilabel"}: sends SMS text messages to
  contacts directly from the database.
- `Lead Generation`{.interpreted-text role="guilabel"}: generates leads
  based on a set of criteria, and converts web visitors into quality
  leads and opportunities.
- `Snailmail`{.interpreted-text role="guilabel"}: sends customer
  invoices and follow-up reports by post, worldwide.
- `Signer identification with itsme®️`{.interpreted-text
  role="guilabel"}: ask document signatories in Odoo *Sign* to provide
  their identity using the *itsme®* identity platform, which is
  available in Belgium and the Netherlands.

For more information on every service currently available (offered from
developers other than Odoo), visit the [Odoo IAP
Catalog](https://iap.odoo.com/iap/all-in-app-services).

### Use IAP services

`IAP (In-app purchases)`{.interpreted-text role="abbr"} services are
automatically integrated with Odoo, and do **not** require users to
configure any settings. To use a service, simply interact with it
wherever it appears in the database.

::: example
The following flow focuses on the *SMS*
`IAP (In-app purchases)`{.interpreted-text role="abbr"} service being
used from a contact\'s record.

This can be done by clicking the `📱 SMS`{.interpreted-text
role="guilabel"} icon within the database.

![The SMS icon on a typical contact information form located within an Odoo database.](in_app_purchase/sms-icon.png){.align-center}

One way to utilize the *SMS* `IAP (In-app purchases)`{.interpreted-text
role="abbr"} service with Odoo is showcased in the following steps:

First, navigate to the `Contacts application`{.interpreted-text
role="menuselection"}, and click on a contact with a mobile phone number
entered in either the `Phone`{.interpreted-text role="guilabel"} or
`Mobile`{.interpreted-text role="guilabel"} field of the contact form.

Next, find the `📱 SMS`{.interpreted-text role="guilabel"} icon that
appears to the right of the `Phone`{.interpreted-text role="guilabel"}
or `Mobile`{.interpreted-text role="guilabel"} fields. Click the
`📱 SMS`{.interpreted-text role="guilabel"} icon, and a `Send SMS Text
Message`{.interpreted-text role="guilabel"} pop-up window appears.

Type a message in the `Message`{.interpreted-text role="guilabel"} field
of the pop-up window. Then, click the `Send SMS`{.interpreted-text
role="guilabel"} button. Odoo then sends the message, via SMS, to the
contact, and logs what was sent in the *chatter* of the contact\'s form.

Upon sending the SMS message, the prepaid credits for the *SMS*
`IAP (In-app purchases)`{.interpreted-text role="abbr"} service are
automatically deducted from the existing credits. If there are not
enough credits to send the message, Odoo prompts the user to purchase
more.
:::

::: seealso
For more information on how to use various
`IAP (In-app purchases)`{.interpreted-text role="abbr"} services, and
for more in-depth instructions related to SMS functionality in Odoo,
review the documentation below:

- `Lead mining <../sales/crm/acquire_leads/lead_mining>`{.interpreted-text
  role="doc"}
- `Enrich your contacts base with Partner Autocomplete
  <../sales/crm/optimize/partner_autocomplete>`{.interpreted-text
  role="doc"}
- `SMS essentials <../marketing/sms_marketing/essentials/sms_essentials>`{.interpreted-text
  role="doc"}
:::

## IAP credits {#in_app_purchase/credits}

Every time an `IAP (In-app purchases)`{.interpreted-text role="abbr"}
service is used, the prepaid credits for that service are spent. Odoo
prompts the purchase of more credits when there are not enough credits
left to continue using a service. Email alerts can also be set up for
when `credits are low <in_app_purchase/low-credits>`{.interpreted-text
role="ref"}.

Credits are purchased in *Packs* from the [Odoo IAP
Catalog](https://iap.odoo.com/iap/all-in-app-services), and pricing is
specific to each service.

::: example
The [SMS service](https://iap.odoo.com/iap/in-app-services/1) has four
packs available, in denominations of:

- `Starter Pack`{.interpreted-text role="guilabel"}: 10 credits
- `Standard Pack`{.interpreted-text role="guilabel"}: 100 credits
- `Advanced Pack`{.interpreted-text role="guilabel"}: 500 credits
- `Expert Pack`{.interpreted-text role="guilabel"}: 1,000 credits

![Four different packs of credits for the SMS IAP service.](in_app_purchase/packs.png){.align-center}

The number of credits consumed depends on the length of the SMS and the
country of destination.

For more information, refer to the `SMS Pricing and FAQ
<../marketing/sms_marketing/pricing/pricing_and_faq>`{.interpreted-text
role="doc"} documentation.
:::

### Buy credits {#iap/buying_credits}

If there are not enough credits to perform a task, the database
automatically prompts the purchase of more credits.

Users can check the current balance of credits for each service, and
manually purchase more credits, by navigating to the
`Settings app --> Contacts section`{.interpreted-text
role="menuselection"}, and beneath the `Odoo IAP`{.interpreted-text
role="guilabel"} setting, click `View My Services`{.interpreted-text
role="guilabel"}.

Doing so reveals a `My Services`{.interpreted-text role="guilabel"}
page, listing the various `IAP (In-app purchases)`{.interpreted-text
role="abbr"} services in the database. From here, click an
`IAP (In-app purchases)`{.interpreted-text role="abbr"} service to open
its `Account Information`{.interpreted-text role="guilabel"} page, where
additional credits can be purchased.

#### Manually buy credits

To manually buy credits in Odoo, follow these steps:

First, go to the `Settings application`{.interpreted-text
role="menuselection"} and type [IAP]{.title-ref} in the
`Search...`{.interpreted-text role="guilabel"} bar. Alternatively users
can scroll down to the `Contacts`{.interpreted-text role="guilabel"}
section. Under the `Contacts`{.interpreted-text role="guilabel"}
section, where it says `Odoo IAP`{.interpreted-text role="guilabel"},
click `View My
Services`{.interpreted-text role="guilabel"}.

![The Settings app showing the Odoo IAP heading and View My Services button.](in_app_purchase/view-services.png){.align-center}

Doing so reveals an `IAP Account`{.interpreted-text role="guilabel"}
page, listing the various `IAP (In-app purchases)`{.interpreted-text
role="abbr"} services in the database. From here, click an
`IAP (In-app purchases)`{.interpreted-text role="abbr"} service to open
details about it; additional credits can be purchased from here.

On the following page, click the `Buy Credit`{.interpreted-text
role="guilabel"} button. Doing so loads a `Buy
Credits for (IAP Account)`{.interpreted-text role="guilabel"} page in a
new tab. From here, click `Buy`{.interpreted-text role="guilabel"} on
the desired pack of credits. Then, follow the prompts to enter payment
details, and confirm the order.

![The SMS service page on IAP.Odoo.com with four packs of credits available for purchase.](in_app_purchase/buy-pack.png){.align-center}

Once the transaction is complete, the credits are available for use in
the database.

#### Low-credit notification {#in_app_purchase/low-credits}

It is possible to be notified when credits are low, in order to avoid
running out of credits, while using an
`IAP (In-app purchases)`{.interpreted-text role="abbr"} service. To do
that, follow this process:

Go to the `Settings application`{.interpreted-text
role="menuselection"}, and type [IAP]{.title-ref} in the
`Search...`{.interpreted-text role="guilabel"} bar. Under the
`Contacts`{.interpreted-text role="guilabel"} section, where it says
`Odoo IAP`{.interpreted-text role="guilabel"}, click `View My
Services`{.interpreted-text role="guilabel"}.

The available `IAP (In-app purchases)`{.interpreted-text role="abbr"}
accounts appear in a list view on the `IAP Account`{.interpreted-text
role="guilabel"} page. From here, click on the desired
`IAP (In-app purchases)`{.interpreted-text role="abbr"} account to view
that service\'s details.

On the details page, tick the
`Receive threshold warning`{.interpreted-text role="guilabel"} checkbox.
Doing so reveals two fields on the form:
`Warning Threshold`{.interpreted-text role="guilabel"} and
`Contact Email`{.interpreted-text role="guilabel"}.

In the `Warning Threshold`{.interpreted-text role="guilabel"} field,
enter an amount of credits Odoo should use as the minimum threshold for
this service. In the `Contact Email`{.interpreted-text role="guilabel"}
field, enter the email address that receives the notification.

Odoo sends a low-credit alert to the `Contact Email`{.interpreted-text
role="guilabel"} when the balance of credits falls below the amount
listed as the `Warning Threshold`{.interpreted-text role="guilabel"}.




--- SOURCE: essentials/reporting.md ---

# Reporting

You can find several reports under the `Reporting`{.interpreted-text
role="guilabel"} menu of most apps that let you analyze and visualize
the data of your records.

## Selecting a view {#reporting/views}

Depending on the report, Odoo can display the data in various ways.
Sometimes, a unique view fully tailored to the report is available,
while several views are available for others. However, two generic views
are dedicated to reporting: the graph and pivot views.

### Graph view {#reporting/views/graph}

The `graph view <reporting/using-graph>`{.interpreted-text role="ref"}
is used to visualize your records\' data, helping you identify patterns
and trends. The view is often found under the
`Reporting`{.interpreted-text role="guilabel"} menu of apps but can be
found elsewhere. Click the **graph view button** located at the top
right to access it.

![Selecting the graph view](reporting/graph-button.png)

### Pivot view {#reporting/views/pivot}

The `pivot view <reporting/using-pivot>`{.interpreted-text role="ref"}
is used to aggregate your records\' data and break it down for analysis.
The view is often found under the `Reporting`{.interpreted-text
role="guilabel"} menu of apps but can be found elsewhere. Click the
**pivot view button** located at the top right to access it.

![Selecting the pivot view](reporting/pivot-button.png)

## Choosing measures {#reporting/choosing-measures}

After selecting a view, you should ensure only the relevant records are
`filtered <search>`{.interpreted-text role="doc"}. Next, you should
choose what is measured. By default, a measure is always selected. If
you wish to edit it, click `Measures`{.interpreted-text role="guilabel"}
and choose one or, only for pivots, multiple measures.

:::: note
::: title
Note
:::

When you select a measure, Odoo aggregates the values recorded on that
field for the filtered records. Only numerical fields
(`integer <studio/fields/simple-fields/integer>`{.interpreted-text
role="ref"},
`decimal <studio/fields/simple-fields/decimal>`{.interpreted-text
role="ref"}, `monetary
<studio/fields/simple-fields/monetary>`{.interpreted-text role="ref"})
can be measured. In addition, the `Count`{.interpreted-text
role="guilabel"} option is used to count the total number of filtered
records.
::::

After choosing what you want to measure, you can define how the data
should be `grouped
<search/group>`{.interpreted-text role="ref"} depending on the dimension
you want to analyze. By default, the data is often grouped by *Date \>
Month*, which is used to analyze the evolution of a measure over the
months.

:::: tip
::: title
Tip
:::

When you filter a single time period, the option to compare it against
another one appears.

![Using the comparison option](reporting/comparison.png)
::::

:::::: example
::::: tabs
::: tab
Select measures

Among other measures, you could add the `Margin`{.interpreted-text
role="guilabel"} and `Count`{.interpreted-text role="guilabel"} measures
to the Sales Analysis report. By default, the
`Untaxed Amount`{.interpreted-text role="guilabel"} measure is selected.

![Selecting different measures on the Sales Analysis report](reporting/measures.png)
:::

::: tab
Group measures

You could group the measures by `Product Category`{.interpreted-text
role="guilabel"} at the level of rows on the previous Sales Analysis
report example.

![Adding a group on the Sales Analysis report](reporting/single-group.png)
:::
:::::
::::::

## Using the pivot view {#reporting/using-pivot}

Grouping data is quintessential to the pivot view. It enables drilling
down the data to gain deeper insights. While you can use the
`Group By`{.interpreted-text role="guilabel"} option to quickly add a
group at the level of rows, as shown in the example above, you can also
click the plus button (`➕`{.interpreted-text role="guilabel"}) next to
the `Total`{.interpreted-text role="guilabel"} header at the level of
rows *and* columns, and then select one of the **preconfigured groups**.
To remove one, click the minus button (`➖`{.interpreted-text
role="guilabel"}).

Once you have added a group, you can add new ones on the opposite axis
or the newly created subgroups.

::: example
You could further divide the measures on the previous Sales Analysis
report example by the `Salesperson`{.interpreted-text role="guilabel"}
group at the level of columns and by the
`Order Date > Month`{.interpreted-text role="guilabel"} group on the
`All / Saleable / Office Furniture`{.interpreted-text role="guilabel"}
product category.

![Adding multiple groups on the Sales Analysis report](reporting/multiple-groups.png)
:::

:::: tip
::: title
Tip
:::

\- Switch the rows and columns\' groups by clicking the flip axis button
(`⇄`{.interpreted-text role="guilabel"}). - Click on a measure\'s label
to sort the values by ascending (⏶) or descending (⏷) order. - Download
a [.xlsx]{.title-ref} version of the pivot by clicking the download
button (`⭳`{.interpreted-text role="guilabel"}).
::::

## Using the graph view {#reporting/using-graph}

Three graphs are available: the bar, line, and pie charts.

**Bar charts** are used to show the distribution or a comparison of
several categories. They are especially useful as they can deal with
larger data sets.

**Line charts** are useful to show changing time series and trends over
time.

**Pie charts** are used to show the distribution or a comparison of a
small number of categories when they form a meaningful whole.

:::::: tabs
::: tab
Bar chart

![Viewing the Sales Analysis report as a bar chart](reporting/bar.png)
:::

::: tab
Line chart

![Viewing the Sales Analysis report as a line chart](reporting/line.png)
:::

::: tab
Pie chart

![Viewing the Sales Analysis report as a pie chart](reporting/pie.png)
:::
::::::

:::::::::::: tip
::: title
Tip
:::

For **bar** and **line** charts, you can use the stacked option when you
have at least two groups, which then appear on top of each other instead
of next to each other.

::::::: tabs
::: tab
Stacked bar chart

![Stacked bar chart example](reporting/stacked-bar.png)
:::

::: tab
Regular bar chart

![Non-stacked bar chart example](reporting/non-stacked-bar.png)
:::

::: tab
Stacked line chart

![Stacked line chart example](reporting/stacked-line.png)
:::

::: tab
Regular line chart

![Non-stacked line chart example](reporting/non-stacked-line.png)
:::
:::::::

For **line** charts, you can use the cumulative option to sum values,
which is especially useful to show the change in growth over a time
period.

::::: tabs
::: tab
Cumulative line chart

![Cumulative line chart example](reporting/cumulative.png)
:::

::: tab
Regular line chart

![Regular line chart example](reporting/non-cumulative.png)
:::
:::::
::::::::::::




--- SOURCE: essentials/search.md ---

# Search and filter records

Odoo uses filters to include only the most relevant records depending on
the purpose of the view you are on. However, you can edit the default
filter or search for specific values.

## Preconfigured filters {#search/preconfigured-filters}

You can modify the default selection of records by clicking
`Filters`{.interpreted-text role="guilabel"} and selecting one or
several **preconfigured filters**.

::: example
On the Sales Analysis report, only records at the sales order stage are
selected by default. However, you could *also* include records at the
quotation stage by selecting `Quotations`{.interpreted-text
role="guilabel"}. Furthermore, you could *only* include records from a
specific year, for example *2022*, by selecting
`Order Date --> 2022`{.interpreted-text role="menuselection"}.

![Using preconfigured filters on the Sales Analysis report](search/preconfigured-filters.png){.align-center}
:::

:::: note
::: title
Note
:::

If you select preconfigured filters from the same group (i.e., that are
*not* separated by an horizontal line), the records can match *any*
condition to be included. However, if you select filters from different
groups, the records have to match *all* condition to be included.
::::

## Custom filters {#search/custom-filters}

You can create custom filters using most fields present on the model by
clicking `Filters --> Add Custom Filter`{.interpreted-text
role="menuselection"}, selecting a field, an operator, a value, and
clicking `Apply`{.interpreted-text role="guilabel"}.

::: example
You could *only* include records from a single salesperson on the Sales
Analysis report, for example *Mitchell Admin*, by selecting
`Salesperson`{.interpreted-text role="guilabel"} as the field, `is equal
to`{.interpreted-text role="guilabel"} as the operator, and typing
[Mitchell Admin]{.title-ref} as the value.

![Using a custom filter on the Sales Analysis report](search/custom-filter.png){.align-center}
:::

:::: note
::: title
Note
:::

If the records should *only* match one of several conditions, click
`Add a condition`{.interpreted-text role="guilabel"} before applying a
custom filter. If the records should match *all* conditions, add new
custom filters instead.
::::

## Search for values {#search/values}

You can use the search field to quickly look for specific values and add
them as a filter. Either type the full value you are searching for and
select the desired field, or type a part of the value, click the
dropdown button (`⏵`{.interpreted-text role="guilabel"}) before the
chosen field, and select the exact value you are looking for.

::: example
Instead of adding a custom filter to select records where *Mitchell
Admin* is the salesperson on the Sales Analysis report, you could search
for [Mitch]{.title-ref}, click the dropdown button
(`⏵`{.interpreted-text role="guilabel"}) next to
`Search Salesperson for: Mitch`{.interpreted-text role="guilabel"}, and
select `Mitchell Admin`{.interpreted-text role="guilabel"}.

![Searching for a specific value on the Sales Analysis report](search/search-values.png){.align-center}
:::

:::: note
::: title
Note
:::

Using the search field is equivalent to using the *contains* operator
when adding a custom filter. If you enter a partial value and directly
select the desired field, *all* records containing the characters you
typed for the selected field will be included.
::::

## Group records {#search/group}

You can click `Group By`{.interpreted-text role="guilabel"} below the
search field to cluster records together according to one of the
**preconfigured groups**.

::: example
You could group the records by salesperson on the Sales Analysis report
by clicking `Group By`{.interpreted-text role="guilabel"} and selecting
`Salesperson`{.interpreted-text role="guilabel"}. No records are
filtered out.

![Grouping records on the Sales Analysis report](search/group.png){.align-center}
:::

You can **customize groups** by using a wide selection of fields present
on the model. To do so, click
`Group By --> Add Custom Group`{.interpreted-text role="menuselection"},
select a field, and click `Apply`{.interpreted-text role="guilabel"}.

:::: note
::: title
Note
:::

You can use several groups at the same time. The first group you select
is the main cluster, the next one you add further divides the main
group\'s categories, and so on.
::::




--- SOURCE: general/apps_modules.md ---

# Apps and modules

You can `install <general/install>`{.interpreted-text role="ref"},
`upgrade <general/upgrade>`{.interpreted-text role="ref"} and `uninstall
<general/uninstall>`{.interpreted-text role="ref"} all apps and modules
from the `Apps`{.interpreted-text role="menuselection"} dashboard.

By default, an *Apps* filter is applied. If you want to search for
modules, click on *Filters* and select *Extra*.

![Add \"Extra\" filter in Odoo Apps](apps_modules/apps-search-filter.png){.align-center}

:::: warning
::: title
Warning
:::

Odoo is *not a smartphone*, and its apps shouldn\'t be installed or
uninstalled carelessly. Apply caution when adding or removing apps and
modules on your database since this may impact your subscription costs.

- | **Installing or uninstalling apps and managing users is up to you.**
  | As the administrator of your database, you are responsible for its
    usage, as you know best how your organization works.

- | **Odoo apps have dependencies.**
  | Installing some apps and features with dependencies may also install
    additional apps and modules that are technically required, even if
    you won\'t actively use them.

- | **Test app installation/removal on a duplicate of your database.**
  | This way, you can know what app dependencies may be required or what
    data may be erased.
::::

## Install apps and modules {#general/install}

Go to `Apps`{.interpreted-text role="menuselection"}, and click on the
*Install* button of the app you want to install.

:::: note
::: title
Note
:::

If the module you are looking for is not listed, you can **update the
app list**.

To do so, activate the
`developer mode <developer-mode>`{.interpreted-text role="ref"}, then go
to `Apps
--> Update Apps List`{.interpreted-text role="menuselection"} and click
on *Update*.
::::

## Upgrade apps and modules {#general/upgrade}

On some occasions, new improvements or app features are added to
`supported versions of Odoo
</administration/supported_versions>`{.interpreted-text role="doc"}. To
be able to use them, you must **upgrade** your app.

Go to `Apps`{.interpreted-text role="menuselection"}, click on the
*dropdown menu* of the app you want to upgrade, then on *Upgrade*.

## Uninstall apps and modules {#general/uninstall}

Go to `Apps`{.interpreted-text role="menuselection"}, click on the
*dropdown menu* of the app you want to uninstall, then on *Uninstall*.

![image](apps_modules/uninstall.png){.align-center}

Some apps have dependencies, meaning that one app requires another.
Therefore, uninstalling one app may uninstall multiple apps and modules.
Odoo warns you which dependent apps and modules are affected by it.

![image](apps_modules/uninstall_deps.png){.align-center}

To complete the uninstallation, click on *Confirm*.

:::: danger
::: title
Danger
:::

Uninstalling an app also uninstalls all its dependencies and permanently
erases their data.
::::




--- SOURCE: general/companies/digest_emails.md ---

# Digest emails

*Digest Emails* are periodic snapshots sent via email to users in an
organization that include high-level information about how the business
is performing.

To start sending digest emails, begin by navigating to
`Settings app --> Statistics
section`{.interpreted-text role="menuselection"}, activate the
`Digest Emails`{.interpreted-text role="guilabel"} feature, and click
`Save`{.interpreted-text role="guilabel"}.

![Digest Emails section inside General Settings.](digest_emails/digest-email-settings.png){.align-center}

A variety of settings can be configured for digest emails, such as:

- Deciding which `KPIs (key performance indicators)`{.interpreted-text
  role="abbr"} are shared in the digest emails
- Determining how often digest emails are sent
- Choosing who in the organization receives digest emails
- Creating custom digest email templates
- Adding additional
  `KPIs (key performance indicators)`{.interpreted-text role="abbr"}
  (*Studio* app required)

:::: note
::: title
Note
:::

By default, the `Digest Email`{.interpreted-text role="guilabel"}
feature is enabled. `Your Odoo Periodic
Digest`{.interpreted-text role="guilabel"} serves as the primary
template, which includes all `KPI (key performance
indicator)`{.interpreted-text role="abbr"} measurements across the Odoo
database, and is sent daily to administrators.
::::

:::: warning
::: title
Warning
:::

When creating duplicates of databases that have sending capabilities
(not testing-mode), the digest emails continue to send from the
duplicate database, unless deactivated.

To deactivate the digest email, navigate to
`Settings --> Statistics section`{.interpreted-text
role="menuselection"}. Then, deactivate the
`Digest Emails`{.interpreted-text role="guilabel"} feature, by
un-ticking the checkbox, and clicking `Save`{.interpreted-text
role="guilabel"}. See the section on
`digest-emails/deactivate`{.interpreted-text role="ref"}.
::::

## Customize default digest email {#digest-emails/customize-digest}

To customize the default digest email (*Your Odoo Periodic Digest*), go
to `Settings
app --> Statistics section --> Digest Email field`{.interpreted-text
role="menuselection"}. Then, select `Your Odoo Periodic
Digest`{.interpreted-text role="guilabel"}, and click on the
`↗️ (External link)`{.interpreted-text role="guilabel"} icon, next to
the drop-down menu selection.

A pop-up window appears, and presents a variety of editable settings,
which include:

- `Digest Name`{.interpreted-text role="guilabel"}: the name of the
  digest email.
- `Periodicity`{.interpreted-text role="guilabel"}: control how often
  digest emails are sent (`Daily`{.interpreted-text role="guilabel"},
  `Weekly`{.interpreted-text role="guilabel"},
  `Monthly`{.interpreted-text role="guilabel"}, or
  `Quarterly`{.interpreted-text role="guilabel"}).
- `Next Send Date`{.interpreted-text role="guilabel"}: the date on which
  the digest email will be sent again.
- `KPIs`{.interpreted-text role="guilabel"} tab: check/uncheck each
  calculated `KPI (key performance indicator)`{.interpreted-text
  role="abbr"} that appears in digest emails. A ticked box indicates an
  active `KPI (key performance indicator)`{.interpreted-text
  role="abbr"} in the digest email. See the section on
  `digest-emails/kpis`{.interpreted-text role="ref"}.
- `Recipients`{.interpreted-text role="guilabel"} tab: add/remove users
  who receive the digest emails. See the section on
  `digest-emails/recipients`{.interpreted-text role="ref"}.

:::: note
::: title
Note
:::

The `KPIs (key performance indicators)`{.interpreted-text role="abbr"}
can be customized using Odoo *Studio*. Additional costs to the database
subscription are incurred should *Studio* need to be installed. See this
section on `digest-emails/custom-kpi`{.interpreted-text role="ref"}.
::::

![Customize default Digest Email settings and custom KPIs.](digest_emails/periodic-digest.png){.align-center}

## Deactivate digest email {#digest-emails/deactivate}

To manually deactivate an individual digest email, first navigate to
`Settings app
--> Statistics section`{.interpreted-text role="menuselection"}, and
click `Configure Digest Emails`{.interpreted-text role="guilabel"}.
Then, select the desired digest email from the list that should be
deactivated.

Next, click `DEACTIVATE FOR EVERYONE`{.interpreted-text role="guilabel"}
to deactivate the digest email for everyone, or
`UNSUBSCRIBE ME`{.interpreted-text role="guilabel"} to remove the logged
in user from the mailing list. These buttons are located in the top
menu, just above the `Digest Name`{.interpreted-text role="guilabel"}.

## Manually send digest email

To manually send a digest email, first navigate to
`Settings app --> Statistics
section`{.interpreted-text role="menuselection"}, and click
`Configure Digest Emails`{.interpreted-text role="guilabel"}. Then,
select the desired digest email, and click `SEND NOW`{.interpreted-text
role="guilabel"}. This button is located in the top menu, just above the
`Digest
Name`{.interpreted-text role="guilabel"}.

## KPIs {#digest-emails/kpis}

Pre-configured `KPIs (key performance indicators)`{.interpreted-text
role="abbr"} can be added to the digest email from the
`KPIs`{.interpreted-text role="guilabel"} tab of the digest email
template form.

First, navigate to
`Settings app --> Statistics section`{.interpreted-text
role="menuselection"}, and click
`Configure Digest Emails`{.interpreted-text role="guilabel"}.

Then, select the desired digest email, and open the
`KPIs`{.interpreted-text role="guilabel"} tab.

To add a `KPI (key performance indicator)`{.interpreted-text
role="abbr"} to the digest email, tick the checkbox next to the desired
`KPI (key performance indicator)`{.interpreted-text role="abbr"}. After
all `KPIs (key performance indicators)`{.interpreted-text role="abbr"}
are added (or deselected), click `Save`{.interpreted-text
role="guilabel"}.

The following `KPIs (key performance indicators)`{.interpreted-text
role="abbr"} are available in the `KPIs`{.interpreted-text
role="guilabel"} tab on a digest email template form out-of-box in Odoo:

![KPIs listed in the out-of-box digest email.](digest_emails/oob-kpis.png){.align-right}

`General`{.interpreted-text role="guilabel"}

:   - `Connected Users`{.interpreted-text role="guilabel"}
    - `Messages`{.interpreted-text role="guilabel"}

`Project`{.interpreted-text role="guilabel"}

:   - `Open Tasks`{.interpreted-text role="guilabel"}

`Recruitment`{.interpreted-text role="guilabel"}

:   - `Employees`{.interpreted-text role="guilabel"}

`CRM`{.interpreted-text role="guilabel"}

:   - `New Leads/Opportunities`{.interpreted-text role="guilabel"}
    - `Opportunities Won`{.interpreted-text role="guilabel"}

`Sales`{.interpreted-text role="guilabel"}

:   - `All Sales`{.interpreted-text role="guilabel"}
    - `eCommerce Sales`{.interpreted-text role="guilabel"}

`Point of Sale`{.interpreted-text role="guilabel"}

:   - `POS Sales`{.interpreted-text role="guilabel"}

`Live Chat`{.interpreted-text role="guilabel"}

:   - `% of Happiness`{.interpreted-text role="guilabel"}
    - `Conversations handled`{.interpreted-text role="guilabel"}
    - `Time to answer (sec)`{.interpreted-text role="guilabel"}

`Helpdesk`{.interpreted-text role="guilabel"}

:   - `Tickets Closed`{.interpreted-text role="guilabel"}

`Invoicing`{.interpreted-text role="guilabel"}

:   - `Revenue`{.interpreted-text role="guilabel"}
    - `Banks and Cash Moves`{.interpreted-text role="guilabel"}

## Recipients {#digest-emails/recipients}

Digest email recipients are added from the
`Recipients`{.interpreted-text role="guilabel"} tab of the digest email
template form.

To add a recipient, navigate to
`Settings app --> Statistics section`{.interpreted-text
role="menuselection"}, and click
`Configure Digest Emails`{.interpreted-text role="guilabel"}. Then,
select the desired digest email, and open the
`Recipients`{.interpreted-text role="guilabel"} tab.

To add a recipient, click `Add a line`{.interpreted-text
role="guilabel"}, and an `Add Recipients`{.interpreted-text
role="guilabel"} pop-up window appears, with all available users to add
as recipients.

From the pop-up window, tick the checkbox next to the
`Name`{.interpreted-text role="guilabel"} of the user(s), and click the
`Select`{.interpreted-text role="guilabel"} button.

To remove a user as a recipient, click the
`❌ (remove)`{.interpreted-text role="guilabel"} icon to the far-right
of the user listed in the `Recipients`{.interpreted-text
role="guilabel"} tab.

Click `Save`{.interpreted-text role="guilabel"} to implement the
changes.

## Create digest emails {#digest-emails/custom-emails}

To create a new digest email, navigate to
`Settings app --> Statistics section`{.interpreted-text
role="menuselection"}, and click
`Configure Digest Emails`{.interpreted-text role="guilabel"}. Then,
click `Create`{.interpreted-text role="guilabel"} to create a new digest
email.

A separate page, with a blank digest email template appears, and
presents a variety of editable settings, including:

- `Digest Name`{.interpreted-text role="guilabel"}: the name of the
  digest email.
- `Periodicity`{.interpreted-text role="guilabel"}: control how often
  digest emails are sent (`Daily`{.interpreted-text role="guilabel"},
  `Weekly`{.interpreted-text role="guilabel"},
  `Monthly`{.interpreted-text role="guilabel"}, or
  `Quarterly`{.interpreted-text role="guilabel"}).
- `Next Send Date`{.interpreted-text role="guilabel"}: the date on which
  the digest email will be sent again.
- `KPIs`{.interpreted-text role="guilabel"} tab: check/uncheck each
  calculated `KPI (key performance indicator)`{.interpreted-text
  role="abbr"} that appears in digest emails. A ticked box indicates an
  active `KPI (key performance indicator)`{.interpreted-text
  role="abbr"} in the digest email. See the section on
  `digest-emails/kpis`{.interpreted-text role="ref"}.
- `Recipients`{.interpreted-text role="guilabel"} tab: add/remove users
  who receive the digest emails. See the section on
  `digest-emails/recipients`{.interpreted-text role="ref"}.

From there, give the digest email a `Digest Name`{.interpreted-text
role="guilabel"}, specify `Periodicity`{.interpreted-text
role="guilabel"}, choose the desired
`KPIs (key performance indicators)`{.interpreted-text role="abbr"}, and
add `Recipients`{.interpreted-text role="guilabel"}, as needed.

After clicking `Save`{.interpreted-text role="guilabel"}, the new custom
digest email is available as a selection in the
`Digest Email`{.interpreted-text role="guilabel"} field, located in the
`Settings app --> Statistics section`{.interpreted-text
role="menuselection"}.

## Custom KPIs with Odoo Studio {#digest-emails/custom-kpi}

The `KPIs (key performance indicators)`{.interpreted-text role="abbr"}
on a digest email template form, in the `KPIs`{.interpreted-text
role="guilabel"} tab, can be customized using Odoo *Studio*.

:::: warning
::: title
Warning
:::

Additional costs to the database subscription are incurred, should Odoo
*Studio* need to be installed.
::::

To begin, click the `🛠️ (tools)`{.interpreted-text role="guilabel"} icon
in the top-right of the screen. This is the link to the Odoo *Studio*
application.

In order to create additional fields, create two fields on the digest
object:

1.  Create a boolean field called [kpi_myfield]{.title-ref}, and display
    it in the `KPIs`{.interpreted-text role="guilabel"} tab.
2.  Create a computed field called [kpi_myfield_value]{.title-ref} that
    computes the customized `KPI (key
    performance indicator)`{.interpreted-text role="abbr"}.
3.  Select the `KPIs (key performance indicators)`{.interpreted-text
    role="abbr"} in the `KPIs`{.interpreted-text role="guilabel"} tab.

:::: tip
::: title
Tip
:::

Here is the [source
code](https://github.com/odoo/odoo/blob/15.0/addons/digest/models/digest.py)
for the [digest.py]{.title-ref} file, which guides the programmer in the
coding of the computed field.
::::

::: seealso
Users can also click the `Recipients`{.interpreted-text role="guilabel"}
tab, and then the vertical three-dot `(kebab)`{.interpreted-text
role="guilabel"} menu to edit this view. Either click
`EDIT LIST VIEW`{.interpreted-text role="guilabel"} or
`EDIT FORM VIEW`{.interpreted-text role="guilabel"} to modify this tab.
:::

### Computed values reference table

  -------------------------------------------------------------------------------
  LABEL                   VALUE
  ----------------------- -------------------------------------------------------
  Connected Users         [kpi_res_users_connected_value]{.title-ref}

  Messages Sent           [kpi_mail_message_total_value]{.title-ref}

  New Leads               [kpi_crm_lead_created_value]{.title-ref}

  Opportunities Won       [kpi_crm_opportunities_won_value]{.title-ref}

  Open Tasks              [kpi_project_task_opened_value]{.title-ref}

  Tickets Closed          [kpi_helpdesk_tickets_closed_value]{.title-ref}

  \% of Happiness         [kpi_livechat_rating_value]{.title-ref}

  Conversations handled   [kpi_livechat_conversations_value]{.title-ref}

  Time to answer (sec)    [kpi_livechat_response_value]{.title-ref}

  All Sales               [kpi_all_sale_total_value]{.title-ref}

  eCommerce Sales         [kpi_website_sale_total_value]{.title-ref}

  Revenue                 [kpi_account_total_revenue_value]{.title-ref}

  Bank & Cash Moves       [kpi_account_bank_cash_value]{.title-ref}

  POS Sales               [kpi_pos_total_value]{.title-ref}

  New Employees           [kpi_hr_recruitment_new_colleagues_value]{.title-ref}
  -------------------------------------------------------------------------------




--- SOURCE: general/companies/email_template.md ---

# Email templates

Email templates are saved emails that are used repeatedly to send emails
from the database. They allow users to send quality communications,
without having to compose the same text repeatedly.

Creating different templates that are tailored to specific situations
lets users choose the right message for the right audience. This
increases the quality of the message and the overall engagement rate
with the customer.

:::: note
::: title
Note
:::

Email templates in Odoo use QWeb or XML, which allows for editing emails
in their final rendering, making customizations more robust, without
having to edit any code whatsoever. This means that Odoo can use a
Graphical User Interface (GUI) to edit emails, which edits the backend
code. When the received email is read by the end user\'s program,
different formatting and graphics will appear in the final form of it.
::::

Access email templates in
`developer mode <developer-mode>`{.interpreted-text role="ref"} by
navigating to
`Settings app --> Technical menu --> Email --> Email Templates`{.interpreted-text
role="menuselection"}.

## Editing email templates

The *powerbox* feature can be used when working with email templates.
This feature provides the ability to directly edit the formatting and
text in an email template, as well as the ability to add links, buttons,
appointment options, or images.

Additionally, the XML/HTML code of the email template can be edited
directly, via the `</>`{.interpreted-text role="guilabel"} icon. Dynamic
placeholders (referencing fields within Odoo) are also available for use
in the email template.

### Powerbox

The *powerbox* feature is an enriched text editor with various
formatting, layout, and text options. It can also be used to add
XML/HTML features in an email template. The powerbox feature is
activated by typing a forward slash [/]{.title-ref} in the body of the
email template.

When a forward slash [/]{.title-ref} is typed in the body of an email
template, a drop-down menu appears with the following options:

`Structure`{.interpreted-text role="guilabel"}

- `Bulleted list`{.interpreted-text role="guilabel"}: Create a simple
  bulleted list.
- `Numbered list`{.interpreted-text role="guilabel"}: Create a list with
  numbering.
- `Checklist`{.interpreted-text role="guilabel"}: Track tasks with a
  checklist.
- `Table`{.interpreted-text role="guilabel"}: Insert a table.
- `Separator`{.interpreted-text role="guilabel"}: Insert a horizontal
  rule separator.
- `Quote`{.interpreted-text role="guilabel"}: Add a blockquote section.
- `Code`{.interpreted-text role="guilabel"}: Add a code section.
- `2 columns`{.interpreted-text role="guilabel"}: Convert into two
  columns.
- `3 columns`{.interpreted-text role="guilabel"}: Convert into three
  columns.
- `4 columns`{.interpreted-text role="guilabel"}: Convert into four
  columns.

`Format`{.interpreted-text role="guilabel"}

- `Heading 1`{.interpreted-text role="guilabel"}: Big section heading.
- `Heading 2`{.interpreted-text role="guilabel"}: Medium section
  heading.
- `Heading 3`{.interpreted-text role="guilabel"}: Small section heading.
- `Switch direction`{.interpreted-text role="guilabel"}: Switch the
  text\'s direction.
- `Text`{.interpreted-text role="guilabel"}: Paragraph block.

`Media`{.interpreted-text role="guilabel"}

- `Image`{.interpreted-text role="guilabel"}: Insert an image.
- `Article`{.interpreted-text role="guilabel"}: Link an article.

`Navigation`{.interpreted-text role="guilabel"}

- `Link`{.interpreted-text role="guilabel"}: Add a link.
- `Button`{.interpreted-text role="guilabel"}: Add a button.
- `Appointment`{.interpreted-text role="guilabel"}: Add a specific
  appointment.
- `Calendar`{.interpreted-text role="guilabel"}: Schedule an
  appointment.

`Widgets`{.interpreted-text role="guilabel"}

- `3 Stars`{.interpreted-text role="guilabel"}: Insert a rating over
  three stars.
- `5 Stars`{.interpreted-text role="guilabel"}: Insert a rating over
  five stars.

`Basic Blocks`{.interpreted-text role="guilabel"}

- `Signature`{.interpreted-text role="guilabel"}: Insert your signature.

`Marketing Tools`{.interpreted-text role="guilabel"}

- `Dynamic Placeholders`{.interpreted-text role="guilabel"}: Insert
  personalized content.

:::: tip
::: title
Tip
:::

To use any of these options, click on the desired feature from the
powerbox drop-down menu. To format existing text with a text-related
option (e.g. `Heading 1`{.interpreted-text role="guilabel"}, `Switch
direction`{.interpreted-text role="guilabel"}, etc.), highlight the
text, then type in the activator key (forward slash) [/]{.title-ref},
and select the desired option from the drop-down menu.

![Powerbox feature in the email template.](email_template/powerbox-feature.png){.align-center}
::::

::: seealso
`Using dynamic placeholders <email_template/dynamic-placeholders>`{.interpreted-text
role="ref"}
:::

### XML/HTML code editor

To access the XML/HTML editor for an email template, first enter
`developer mode
<developer-mode>`{.interpreted-text role="ref"}. Then, click the
`</>`{.interpreted-text role="guilabel"} icon in the upper-right corner
of the template, and proceed to edit the XML/HTML. To return to the
standard text editor, click the `</>`{.interpreted-text role="guilabel"}
icon again.

![HTML editor in the email template.](email_template/html-code-editor.png){.align-center}

:::: warning
::: title
Warning
:::

The XML/HTML editor should be accessed with caution as this is the
backend code of the template. Editing the code can cause the email
template to break immediately or when upgrading the database.
::::

### Dynamic placeholders {#email_template/dynamic-placeholders}

*Dynamic placeholders* reference certain fields within the Odoo database
to produce unique data in the email template.

::: example
Many companies like to customize their emails with a personalized piece
of customer information to grab attention. This can be accomplished in
Odoo by referencing a field within a model by inserting a dynamic
placeholder. For example, a customer\'s name can be referenced in the
email from the `Customer`{.interpreted-text role="guilabel"} field on
the `Sales Order`{.interpreted-text role="guilabel"} model. The dynamic
placeholder for this field is: [{{ object.partner_id }}]{.title-ref}.
:::

Dynamic placeholders are encoded to display fields from within the
database. Dynamic placeholders can be used in the
`Body`{.interpreted-text role="guilabel"} (`Content`{.interpreted-text
role="guilabel"} Tab) of the email template. They can also be used in
the fields present in the `Email Configuration`{.interpreted-text
role="guilabel"} tab, the `Subject`{.interpreted-text role="guilabel"}
of the email, and the `Language`{.interpreted-text role="guilabel"}.

To use the dynamic placeholders in the `Body`{.interpreted-text
role="guilabel"} of an email open the **powerbox** feature by typing in
[/]{.title-ref} into the body of the email template under the
`Content`{.interpreted-text role="guilabel"} tab. Scroll to the bottom
of the options list, to `Marketing Tools`{.interpreted-text
role="guilabel"}. Next, select `Dynamic
Placeholder`{.interpreted-text role="guilabel"}. Then select the dynamic
placeholder from a list of available options and follow the prompts to
configure it with the desired corresponding Odoo field. Each dynamic
placeholder will vary in configuration.

![Using dynamic placeholders in an email template.](email_template/dynamic-placeholders.png){.align-center}

:::: note
::: title
Note
:::

Each unique combination of `Fields`{.interpreted-text role="guilabel"},
`Sub-models`{.interpreted-text role="guilabel"} and
`Sub-fields`{.interpreted-text role="guilabel"} creates a different
dynamic placeholder. Imagine it as a combination to the field that is
being created.

To search the available fields, simply type in the front-end name (on
user-interface) of the field in the search. This will find a result from
all of the available fields for the model that the email template is
created for.
::::

:::: warning
::: title
Warning
:::

Customizing email templates are out of the scope of Odoo Support.
::::

### Rich text editor

A rich text editor toolbar can be accessed by highlighting text in the
email template. This can be used to change the heading, font size/style,
color, add a list type, or a link.

![Rich text editor in the email template.](email_template/rich-text-editor.png){.align-center}

### Resetting email templates

Should the email template not work because the code has been altered it
can be reset to restore it back to the out-of-box default template.
Simply click on the `Reset Template`{.interpreted-text role="guilabel"}
button in the upper left-hand of the screen and the template will be
reset.

![Resetting the email template.](email_template/reset.png){.align-center}

### Default reply on email templates

Under the `Email Configuration`{.interpreted-text role="guilabel"} tab
on an email template, there is a `Reply To`{.interpreted-text
role="guilabel"} field. In this field, add email addresses to which
replies are redirected when sending emails en masse using this template.

:::: tip
::: title
Tip
:::

Add multiple email addresses by adding a comma [,]{.title-ref} between
the addresses or dynamic placeholders.
::::

![Reply-to field on template.](email_template/reply-to-template-sales.png){.align-center}

The `Reply To`{.interpreted-text role="guilabel"} field is **only** used
for mass mailing (sending emails in bulk). Bulk emails can be sent in
almost every Odoo application that has a list view option.

To send mass mails, while in `list`{.interpreted-text role="guilabel"}
view, check the boxes next to the desired records where the emails are
to be sent, click the `Action`{.interpreted-text role="guilabel"} button
(represented by a `⚙️
(gear)`{.interpreted-text role="guilabel"} icon), and select the desired
email option from the `Action`{.interpreted-text role="guilabel"}
drop-down menu. Email options can vary by the particular list view and
application.

If it is possible to send an email, a mail composer pop-up window
appears, with values that can be defined and customized. This option
will be available on the `Action`{.interpreted-text role="guilabel"}
button on pages where emails can be sent in bulk\-\--for example, on the
`Customers`{.interpreted-text role="guilabel"} page of the CRM app. This
action occurs throughout the Odoo database.

![Email composer in mass mailing mode with reply-to highlighted.](email_template/composer-mass-mailing.png){.align-center}

## Transactional emails and corresponding URLs

In Odoo, multiple events can trigger the sending of automated emails.
These emails are known as *transactional emails*, and sometimes contain
links redirecting to the Odoo database.

By default, links generated by the database use the dynamic
[web.base.url]{.title-ref} key defined in the system parameters. For
more information about this, see `system parameters
<domain-name/web-base-url>`{.interpreted-text role="ref"}.

If the *Website* application is not installed, the
[web.base.url]{.title-ref} key will always be the default parameter used
to generate all the links.

:::::: important
::: title
Important
:::

The [web.base.url]{.title-ref} key can only have a single value, meaning
that, in a multi-website or multi-company database environment, even if
there is a specific domain name for each website, the links generated to
share a document (or the links within a transactional email) may remain
the same, regardless of which website/company is related to the sending
of the email/document.

::: example
If the `Value`{.interpreted-text role="guilabel"} of the
`web.base.url`{.interpreted-text role="guilabel"} system parameter is
equal to [https://www.mycompany.com]{.title-ref} and there are two
separate companies in Odoo with different website URLs:
[https://www.mycompany2.com]{.title-ref} and
[https://www.mycompany1.com]{.title-ref}, the links created by Odoo to
share a document, or send a transactional email, come from the domain:
[https://www.mycompany.com]{.title-ref}, regardless of which company
sends the document or email.
:::

This is not always the case, as some Odoo applications (*eCommerce*, for
example) have a link established in the database with the *Website*
application. In that case, if a specific domain is defined for the
website, the URL generated in the email template uses the domain defined
on the corresponding website of the company.

::: example
When a customer makes a purchase on an Odoo *eCommerce* website, the
order has an established link with that website. As a result, the links
in the confirmation email sent to the customer use the domain name for
that specific website.
:::
::::::

:::: note
::: title
Note
:::

A document shared using the *Documents* application will **always** use
the [web.base.url]{.title-ref} key, as the document shared is not
associated with any particular website. This means that the URL will
always be the same (the [web.base.url]{.title-ref} key value), no matter
what company it\'s shared from. This is a known limitation.
::::

For more information about how to configure domains, check out the
`domain name documentation
</applications/websites/website/configuration/domain_names>`{.interpreted-text
role="doc"}.

### Updating translations within email templates

In Odoo, email templates are automatically translated for all users in
the database for all of the languages installed. Changing the
translations shouldn\'t be necessary. However, if for a specific reason,
some of the translations need to be changed, it can be done.

:::: warning
::: title
Warning
:::

Like any modification in the code, if translation changes are not done
correctly (for example, modifications leading to bad syntax), it can
break the template, and as a result, the template will appear blank.
::::

In order to edit translations, first enter
`developer mode <developer-mode>`{.interpreted-text role="ref"}. Then,
on the email template, click on the `Edit`{.interpreted-text
role="guilabel"} button, and then click on the language button,
represented by the initials of the language currently being used (e.g.
`EN`{.interpreted-text role="guilabel"} for English).

![Edit the language of a template.](email_template/edit-language-template.png){.align-center}

:::: note
::: title
Note
:::

If there aren\'t multiple languages installed and activated in the
database, or if the user does not have administration access rights, the
language button will not appear.
::::

A pop-up window with the different languages installed on the database
appears. From this pop-up, editing of translations is possible. When the
desired changes have been made, click the `Save`{.interpreted-text
role="guilabel"} button to save the changes.

![Translation of the body of the Appointment Booked template.](email_template/translation-body.png){.align-center}

:::: note
::: title
Note
:::

When editing the translations, the default language set in the database
appears in **bold**.
::::




--- SOURCE: general/companies.md ---

show-content

:   

# Companies

A centralized management environment allows you to select multiple
companies simultaneously and set their specific warehouses, customers,
equipment, and contacts. It provides you the ability to generate reports
of aggregated figures without switching interfaces, which facilitates
daily tasks and the overall management process.

## Manage companies and records {#companies/manage}

Go to `Settings --> Manage Companies`{.interpreted-text
role="menuselection"} and fill in the form with your company's
information. If a *Parent Company* is selected, records are shared
between the two companies (as long as both environments are active).

![Overview of a new company\'s form in Odoo](companies/create_js_store_us.png){.align-center}

:::: tip
::: title
Tip
:::

Activate the `developer mode <developer-mode>`{.interpreted-text
role="ref"} to choose a *Favicon* for each of your companies, and easily
identify them by the browser tabs. Set your favicons' files size to
16x16 or 32x32 pixels. JPG, PNG, GIF, and ICO are extensions accepted.

![View of a web browser and the favicon for a specific company chosen in Odoo](companies/favicon.png){.align-center
height="200px"}
::::

Switch between or select multiple companies by enabling their selection
boxes to activate them. The grayed company is the one which environment
is in use. To switch environments, click on the company's name. In the
example below, the user has access to three companies, two are
activated, and the environment in use is of *JS Store US*.

![View of the companies menu through the main dashboard in Odoo](companies/multi_companies_menu_dashboard.png){.align-center}

Data such as Products, Contacts, and Equipment can be shared or set to
be shown for a specific company only. To do so, on their forms, choose
between:

- *A blank field*: the record is shared within all companies.
- *Adding a company*: the record is visible to users logged in to that
  specific company.

![View of a product\'s form emphasizing the company field in Odoo Sales](companies/product_form_company.png){.align-center}

## Employees\' access

Once companies are created, manage your employees\'
`Access Rights <users/access_rights>`{.interpreted-text role="doc"} for
*Multi Companies*.

![View of an user form emphasizing the multi companies field under the access rights tabs
in Odoo](companies/access_rights_multi_companies.png){.align-center}

| If a user has multiple companies *activated* on his database, and he
  is **editing** a record, the editing happens on the record\'s related
  company.
| Example: if editing a sale order issued under JS Store US while
  working on the JS Store Belgium environment, the changes are applied
  under JS Store US (the company from which the sale order was issued).
| When **creating** a record, the company taken into account is:

- The current company (the one active) or,
- No company is set (on products and contacts' forms for example) or,
- The company set is the one linked to the document (the same as if a
  record is being edited).

## Documents' format

To set documents\' formats according to each company, *activate* and
*select* the respective one and, under *Settings*, click on *Configure
Document Layout*.

![View of the settings page emphasizing the document layout field in Odoo](companies/document_layout.png){.align-center}

## Inter-Company Transactions

First, make sure each one of your companies is properly set in relation
to:

- `Chart of Accounts <../finance/accounting/get_started/chart_of_accounts>`{.interpreted-text
  role="doc"}
- `Taxes <../finance/accounting/taxes>`{.interpreted-text role="doc"}
- `Fiscal Positions <../finance/accounting/taxes/fiscal_positions>`{.interpreted-text
  role="doc"}
- `Journals <../finance/accounting/bank>`{.interpreted-text role="doc"}
- `Fiscal Localizations <../finance/fiscal_localizations>`{.interpreted-text
  role="doc"}
- `Pricelists <../sales/sales/products_prices/prices/pricing>`{.interpreted-text
  role="doc"}

Now, activate the *Inter-Company Transactions* option under *Settings*.
With the respective company *activated* and *selected*, choose if you
would like operations between companies to be synchronized at an
invoice/bills level or at a sales/purchase orders level.

![View of the settings page emphasizing the inter company transaction field in Odoo](companies/inter_company_transactions.png){.align-center}

- **Synchronize invoice/bills**: generates a bill/invoice when a company
  confirms a bill/invoice for the selected company.

  *Example:* an invoice posted on JS Store Belgium, for JS Store US,
  automatically creates a vendor bill on the JS Store US, from the JS
  Store Belgium.

![View of an invoice for JS Store US created on JS Store Belgium in Odoo](companies/invoice_inter_company.png){.align-center}

- **Synchronize sales/purchase order**: generates a drafted
  purchase/sales order using the selected company warehouse when a
  sales/purchase order is confirmed for the selected company. If instead
  of a drafted purchase/sales order you rather have it validated, enable
  *Automatic Validation*.

  *Example:* when a sale order for JS Store US is confirmed on JS Store
  Belgium, a purchase order on JS Store Belgium is automatically created
  (and confirmed if the *Automatic Validation* feature was enabled).

![View of the purchase created on JS Store US from JS Store Belgium in Odoo](companies/purchase_order_inter_company.png){.align-center}

:::: note
::: title
Note
:::

Products have to be configured as *Can be sold* and must be shared
between the companies.
::::

:::: tip
::: title
Tip
:::

Remember to test all workflows as an user other than the administrator.
::::

::: seealso
\-
`Multi-company Guidelines </developer/howtos/company>`{.interpreted-text
role="doc"} -
`../finance/accounting/get_started/multi_currency`{.interpreted-text
role="doc"}
:::

::: {.toctree titlesonly=""}
companies/digest_emails companies/email_template
:::




--- SOURCE: general/developer_mode.md ---

# Developer mode (debug mode) {#developer-mode}

The developer mode, also known as debug mode, unlocks access to advanced
`tools and settings
<developer-mode/tools>`{.interpreted-text role="ref"} in Odoo.

:::: warning
::: title
Warning
:::

Proceed with caution, as some developer tools and technical settings are
considered advanced and may have associated risks. Only use them if you
understand the implications and are confident in your actions.
::::

:::: note
::: title
Note
:::

The developer mode is also available with
`assets <frontend/framework/assets_debug_mode>`{.interpreted-text
role="ref"}, which are used to debug JavaScript code, and with
`tests assets
<frontend/framework/tests_debug_mode>`{.interpreted-text role="ref"},
which are used to run test tours.
::::

## Activation {#developer-mode/activation}

To activate it, open the `Settings`{.interpreted-text role="guilabel"}
app, scroll down to the `Developer Tools`{.interpreted-text
role="guilabel"} section, and click
`Activate the developer mode`{.interpreted-text role="guilabel"}.

Once activated, the `Deactivate the developer mode`{.interpreted-text
role="guilabel"} option becomes available.

![Activating the developer mode in the Settings app](developer_mode/settings.png)

To activate the developer mode **from anywhere in the database**, add
[?debug=1]{.title-ref} to the URL after [/web]{.title-ref} (e.g.,
[https://example.odoo.com/web?debug=1#action=menu&cids=1]{.title-ref}).
To deactivate it, use [?debug=0]{.title-ref} instead.

Use [?debug=assets]{.title-ref} to activate the developer mode with
assets and [?debug=tests]{.title-ref} to activate it with tests assets.

:::: tip
::: title
Tip
:::

Open the **command palette** by pressing [Ctrl + K]{.title-ref} or [Cmd
⌘ + K]{.title-ref}, then type [debug]{.title-ref} to activate the
developer mode with assets or deactivate it.
::::

::: admonition
Browser extension

The [Odoo Debug](https://github.com/Droggol/OdooDebug) browser extension
adds an icon to toggle developer mode on or off from the browser\'s
toolbar. It is available on the [Chrome Web
Store](https://chromewebstore.google.com/detail/odoo-debug/hmdmhilocobgohohpdpolmibjklfgkbi)
and [Firefox
Add-ons](https://addons.mozilla.org/firefox/addon/odoo-debug/).
:::

## Developer tools and technical menu {#developer-mode/tools}

Once the developer mode is activated, the developer tools can be
accessed by clicking the `fa-bug`{.interpreted-text role="icon"}
`(bug)`{.interpreted-text role="guilabel"} icon. The menu contains tools
useful for understanding or editing technical data, such as a view\'s
field, filters, or actions. The options available depend on where the
menu is accessed from.

![Accessing the developer tools](developer_mode/tools.png)

Database administrators can access the technical menu from the
`Settings`{.interpreted-text role="guilabel"} app. It contains advanced
database settings, such as ones related to the database structure,
security, actions, etc.

![Accessing the technical menu](developer_mode/technical.png)




--- SOURCE: general/email_communication/azure_oauth.md ---

# Connect Microsoft Outlook 365 to Odoo using Azure OAuth

Odoo is compatible with Microsoft\'s Azure OAuth for Microsoft 365. In
order to send and receive secure emails from a custom domain, all that
is required is to configure a few settings on the Azure platform and on
the back end of the Odoo database. This configuration works with either
a personal email address or an address created by a custom domain.

::: seealso
[Microsoft Learn: Register an application with the Microsoft identity
platform](https://learn.microsoft.com/azure/active-directory/develop/quickstart-register-app)
:::

::: seealso
\- `/applications/general/users/azure`{.interpreted-text role="doc"} -
`/applications/productivity/calendar/outlook`{.interpreted-text
role="doc"}
:::

## Setup in Microsoft Azure Portal

### Create a new application

To get started, go to [Microsoft\'s Azure
Portal](https://portal.azure.com/). Log in with the
`Microsoft Outlook Office 365`{.interpreted-text role="guilabel"}
account if there is one, otherwise log in with the personal
`Microsoft account`{.interpreted-text role="guilabel"}. A user with
administrative access to the Azure Settings will need to connect and
perform the following configuration. Next, navigate to the section
labeled `Manage Microsoft Entra ID`{.interpreted-text role="guilabel"}
(formally *Azure Active Directory*).

Now, click on `Add (+)`{.interpreted-text role="guilabel"}, located in
the top menu, and then select `App
registration`{.interpreted-text role="guilabel"}. On the
`Register an application`{.interpreted-text role="guilabel"} screen,
rename the `Name`{.interpreted-text role="guilabel"} to
[Odoo]{.title-ref} or something recognizable. Under the
`Supported account types`{.interpreted-text role="guilabel"} section
select
`Accounts in any organizational directory (Any Microsoft Entra ID directory - Multitenant)
and personal Microsoft accounts (e.g. Skype, Xbox)`{.interpreted-text
role="guilabel"}.

Under the `Redirect URL`{.interpreted-text role="guilabel"} section,
select `Web`{.interpreted-text role="guilabel"} as the platform, and
then input [https://\<web base
url\>/microsoft_outlook/confirm]{.title-ref} in the
`URL`{.interpreted-text role="guilabel"} field. The
[web.base.url]{.title-ref} is subject to change depending on the URL
used to log in to the database.

:::: note
::: title
Note
:::

The documentation about the
`web.base.url <domain-name/web-base-url>`{.interpreted-text role="ref"}
explains how to freeze a unique URL. It is also possible to add
different redirect URLs on the Microsoft app.
::::

After the URL has been added to the field, `Register`{.interpreted-text
role="guilabel"} the application, so it is created.

### API permissions

The `API permissions`{.interpreted-text role="guilabel"} should be set
next. Odoo will need specific API permissions to be able to read (IMAP)
and send (SMTP) emails in the Microsoft 365 setup. First, click the
`API permissions`{.interpreted-text role="guilabel"} link, located in
the left menu bar. Next, click on the `(+)
Add a Permission`{.interpreted-text role="guilabel"} button and select
`Microsoft Graph`{.interpreted-text role="guilabel"} under
`Commonly Used
Microsoft APIs`{.interpreted-text role="guilabel"}. After, select the
`Delegated Permissions`{.interpreted-text role="guilabel"} option.

In the search bar, search for the following
`Delegated permissions`{.interpreted-text role="guilabel"} and click
`Add permissions`{.interpreted-text role="guilabel"} for each one:

- `SMTP.Send`{.interpreted-text role="guilabel"}
- `IMAP.AccessAsUser.All`{.interpreted-text role="guilabel"}

:::: note
::: title
Note
:::

The `User.Read`{.interpreted-text role="guilabel"} permission will be
added by default.
::::

![API permissions needed for Odoo integration are listed under the Microsoft Graph.](azure_oauth/permissions.png){.align-center}

## Assign users and groups

After adding the API permissions, navigate back to the
`Overview`{.interpreted-text role="guilabel"} of the
`Application`{.interpreted-text role="guilabel"} in the top of the left
sidebar menu.

Now, add users to this application. Under the
`Essentials`{.interpreted-text role="guilabel"} overview table, click on
the link labeled
`Managed Application in Local Directory`{.interpreted-text
role="guilabel"}, or the last option on the bottom right-hand side of
the table.

![Add users/groups by clicking the Managed application in local directory link for the
created application.](azure_oauth/managed-application.png){.align-center}

In the left sidebar menu, select `Users and Groups`{.interpreted-text
role="guilabel"}. Next, click on `(+) Add
User/Group`{.interpreted-text role="guilabel"}. Depending on the
account, either a `Group`{.interpreted-text role="guilabel"} and a
`User`{.interpreted-text role="guilabel"} can be added, or only
`Users`{.interpreted-text role="guilabel"}. Personal accounts will only
allow for `Users`{.interpreted-text role="guilabel"} to be added.

Under `Users`{.interpreted-text role="guilabel"} or
`Groups`{.interpreted-text role="guilabel"}, click on
`None Selected`{.interpreted-text role="guilabel"} and add the users or
group of users that will be sending emails from the
`Microsoft account`{.interpreted-text role="guilabel"} in Odoo.
`Add`{.interpreted-text role="guilabel"} the users/groups, click
`Select`{.interpreted-text role="guilabel"}, and then
`Assign`{.interpreted-text role="guilabel"} them to the application.

### Create credentials

Now that the Microsoft Azure app is set up, credentials need to be
created for the Odoo setup. These include the
`Client ID`{.interpreted-text role="guilabel"} and
`Client Secret`{.interpreted-text role="guilabel"}. To start, the
`Client ID`{.interpreted-text role="guilabel"} can be copied from the
`Overview`{.interpreted-text role="guilabel"} page of the app. The
`Client ID`{.interpreted-text role="guilabel"} or
`Application ID`{.interpreted-text role="guilabel"} is located under the
`Display Name`{.interpreted-text role="guilabel"} in the
`Essentials`{.interpreted-text role="guilabel"} overview of the app.

![Application/Client ID located in the Overview of the app.](azure_oauth/application-id.png){.align-center}

Next, the `Client Secret Value`{.interpreted-text role="guilabel"} needs
to be retrieved. To get this value, click on
`Certificates & Secrets`{.interpreted-text role="guilabel"} in the left
sidebar menu. Then, a `Client Secret`{.interpreted-text role="guilabel"}
needs to be produced. In order to do this, click on the
`(+) New Client Secret`{.interpreted-text role="guilabel"} button.

A window on the right will populate with a button labeled
`Add a client secret`{.interpreted-text role="guilabel"}. Under
`Description`{.interpreted-text role="guilabel"}, type in [Odoo
Fetchmail]{.title-ref} or something recognizable, and then set the
`expiration date`{.interpreted-text role="guilabel"}.

:::: important
::: title
Important
:::

A new `Client Secret`{.interpreted-text role="guilabel"} will need to be
produced and configured if the first one expires. In this event, there
could be an interruption of service, so the expiration date should be
noted and set to the furthest possible date.
::::

Next, click on `Add`{.interpreted-text role="guilabel"} when these two
values are entered. A `Client Secret Value`{.interpreted-text
role="guilabel"} and `Secret ID`{.interpreted-text role="guilabel"} will
be created. It is important to copy the `Value`{.interpreted-text
role="guilabel"} or `Client Secret Value`{.interpreted-text
role="guilabel"} into a notepad as it will become encrypted after
leaving this page. The `Secret ID`{.interpreted-text role="guilabel"} is
not needed.

![Client Secret Value or Value in the app\'s credentials.](azure_oauth/secretvalue.png){.align-center}

After these steps, the following items should be ready to be set up in
Odoo:

- A client ID (`Client ID`{.interpreted-text role="guilabel"} or
  `Application ID`{.interpreted-text role="guilabel"})
- A client secret (`Value`{.interpreted-text role="guilabel"} or
  `Client Secret Value`{.interpreted-text role="guilabel"})

This completes the setup on the
`Microsoft Azure Portal`{.interpreted-text role="guilabel"} side.

## Setup in Odoo

### Enter Microsoft Outlook credentials

First, open the Odoo database and navigate to the
`Apps`{.interpreted-text role="guilabel"} module. Then, remove the
`Apps`{.interpreted-text role="guilabel"} filter from the search bar and
type in [Outlook]{.title-ref}. After that, install the module called
`Microsoft Outlook`{.interpreted-text role="guilabel"}.

Next, navigate to `Settings --> General Settings`{.interpreted-text
role="menuselection"}, and under the `Discuss`{.interpreted-text
role="guilabel"} section, ensure that the checkbox for
`Custom Email Servers`{.interpreted-text role="guilabel"} is checked.
This populates a new option for `Outlook Credentials`{.interpreted-text
role="guilabel"}.

`Save`{.interpreted-text role="guilabel"} the progress.

Then, copy and paste the `Client ID`{.interpreted-text role="guilabel"}
(Application ID) and `Client Secret
(Client Secret Value)`{.interpreted-text role="guilabel"} into the
respective fields and `Save`{.interpreted-text role="guilabel"} the
settings.

![Outlook Credentials in Odoo General Settings.](azure_oauth/outlookcreds.png){.align-center}

### Configure outgoing email server

On the `General Settings`{.interpreted-text role="guilabel"} page, under
the `Custom Email Servers`{.interpreted-text role="guilabel"} setting,
click the `Outgoing Email Servers`{.interpreted-text role="guilabel"}
link to configure the Microsoft account.

Then, create a new email server and check the box for
`Outlook`{.interpreted-text role="guilabel"}. Next, fill in the
`Name`{.interpreted-text role="guilabel"} (it can be anything) and the
Microsoft Outlook email `Username`{.interpreted-text role="guilabel"}.

If the `From Filter`{.interpreted-text role="guilabel"} field is empty,
enter either a `domain or email address
<email_communication/default>`{.interpreted-text role="ref"}.

Then, click on `Connect your Outlook account`{.interpreted-text
role="guilabel"}.

A new window from Microsoft opens to complete the
`authorization process`{.interpreted-text role="guilabel"}. Select the
appropriate email address that is being configured in Odoo.

![Permission page to grant access between newly created app and Odoo.](azure_oauth/verify-outlook.png){.align-center}

Then, allow Odoo to access the Microsoft account by clicking on
`Yes`{.interpreted-text role="guilabel"}. After this, the page will
navigate back to the newly configured
`Outgoing Mail Server`{.interpreted-text role="guilabel"} in Odoo. The
configuration automatically loads the `token`{.interpreted-text
role="guilabel"} in Odoo, and a tag stating
`Outlook Token Valid`{.interpreted-text role="guilabel"} appears in
green.

![Valid Outlook Token indicator.](azure_oauth/outlook-token.png){.align-center}

Finally, click `Test Connection`{.interpreted-text role="guilabel"}. A
confirmation message should appear. The Odoo database can now send safe,
secure emails through Microsoft Outlook using OAuth authentication.

#### Configuration with a single outgoing mail server {#azure_oauth/notifications}

Configuring a single outgoing server is the simplest configuration
available for Microsoft Azure and it doesn\'t require extensive access
rights for the users in the database.

A generic email address would be used to send emails for all users
within the database. For example it could be structured with a
[notifications]{.title-ref} alias
([notifications@example.com]{.title-ref}) or [contact]{.title-ref} alias
([contact@example.com]{.title-ref}). This address must be set as the
`FROM Filtering`{.interpreted-text role="guilabel"} on the server. This
address must also match the
[{mail.default.from}@{mail.catchall.domain}]{.title-ref} key combination
in the system parameters.

::: seealso
For more information on the from filter visit:
`email_communication/default`{.interpreted-text role="ref"}.
:::

:::: note
::: title
Note
:::

The `System Parameters`{.interpreted-text role="guilabel"} can be
accessed by activating `developer-mode`{.interpreted-text role="ref"} in
the
`Settings --> Technical --> Parameters --> System Parameters`{.interpreted-text
role="menuselection"} menu.
::::

When using this configuration, every email that is sent from the
database will use the address of the configured
[notification]{.title-ref} mailbox. However it should be noted that the
name of the sender will appear but their email address will change:

![Name from real sender with static email.](azure_oauth/from-name-remain.png){.align-center}

::: example
Single outgoing mail server configuration:

- Outgoing mail server **username** (login) =
  [notifications@example.com]{.title-ref}
- Outgoing mail server `FROM Filtering`{.interpreted-text
  role="guilabel"} = [notifications@example.com]{.title-ref}
- [mail.catchall.domain]{.title-ref} in system parameters =
  [example.com]{.title-ref}
- [mail.default.from]{.title-ref} in system parameters =
  [notifications]{.title-ref}
:::

#### User-specific (multiple user) configuration

In addition to a generic email server, individual email servers can be
set up for users in a database. These email addresses must be set as the
`FROM Filtering`{.interpreted-text role="guilabel"} on each individual
server for this configuration to work.

This configuration is the more difficult of the two Microsoft Azure
configurations, in that it requires all users configured with email
servers to have access rights to settings in order to establish a
connection to the email server.

##### Setup

Each user should have a separate email server set up. The
`FROM Filtering`{.interpreted-text role="guilabel"} should be set so
that only the user\'s email is sent from that server. In other words,
only a user with an email address that matches the set
`FROM Filtering`{.interpreted-text role="guilabel"} is able to use this
server.

::: seealso
For more information on the from filter visit:
`email_communication/default`{.interpreted-text role="ref"}.
:::

A `fallback server <azure_oauth/notifications>`{.interpreted-text
role="ref"} must be setup to allow for the sending of
`notifications`{.interpreted-text role="guilabel"}. The
`FROM Filtering`{.interpreted-text role="guilabel"} for this server
should have the value of the
[{mail.default.from}@{mail.catchall.domain}]{.title-ref}.

:::: note
::: title
Note
:::

The `System Parameters`{.interpreted-text role="guilabel"} can be
accessed by activating `developer-mode`{.interpreted-text role="ref"} in
the
`Settings --> Technical --> Parameters --> System Parameters`{.interpreted-text
role="menuselection"} menu.
::::

::::: important
::: title
Important
:::

The configuration for this transactional email server can work alongside
an outgoing mass-mailing email server. The
`FROM Filtering`{.interpreted-text role="guilabel"} for the mass-mailing
email server can remain empty, but it\'s require to be added in the
settings of the *Email Marketing* application.

::: seealso
For more information on setting the mass-mailing email server visit
`email_communication/mass_mails`{.interpreted-text role="ref"}.
:::
:::::

::: example
Multiple user outgoing mail server configuration:

- 

  User #1 mailbox

  :   - Outgoing mail server #1 **username** (login) =
        [john@example.com]{.title-ref}
      - Outgoing mail server #1 `FROM Filtering`{.interpreted-text
        role="guilabel"} = [john@example.com]{.title-ref}

- 

  User #2 mailbox

  :   - Outgoing mail server #2 **username** (login) =
        [jane@example.com]{.title-ref}
      - Outgoing mail server #2 `FROM Filtering`{.interpreted-text
        role="guilabel"} = [jane@example.com]{.title-ref}

- 

  Notifications mailbox

  :   - Outgoing mail server #3 **username** (login) =
        [notifications@example.com]{.title-ref}
      - Outgoing mail server #3 `FROM Filtering`{.interpreted-text
        role="guilabel"} = [notifications@example.com]{.title-ref}

- 

  System Parameters

  :   - [mail.catchall.domain]{.title-ref} in system parameters =
        [example.com]{.title-ref}
      - [mail.default.from]{.title-ref} in system parameters =
        [notifications]{.title-ref}
:::

### Configure incoming email server

The incoming account should be configured in a similar way to the
outgoing email account. Navigate to the
`Incoming Mail Servers`{.interpreted-text role="guilabel"} in the
`Technical Menu`{.interpreted-text role="guilabel"} and
`Create`{.interpreted-text role="guilabel"} a new configuration. Check
or Select the button next to
`Outlook Oauth Authentication`{.interpreted-text role="guilabel"} and
enter the `Microsoft Outlook username`{.interpreted-text
role="guilabel"}. Click on `Connect your Outlook
account`{.interpreted-text role="guilabel"}. Odoo will state:
`Outlook Token Valid`{.interpreted-text role="guilabel"} Now
`Test and Confirm`{.interpreted-text role="guilabel"} the account. The
account should be ready to receive email to the Odoo database.

::: seealso
`email_servers`{.interpreted-text role="doc"}
:::




--- SOURCE: general/email_communication/email_domain.md ---

# Configure DNS records to send emails in Odoo

## SPAM labels overview

Sometimes, emails from Odoo are misclassified by the different email
providers and end up in spam folders. At the moment, some settings are
out of Odoo\'s control, notably the way the different email providers
classify Odoo\'s emails according to their own restriction policy and/or
limitations.

It is standard in Odoo that emails are received from
`"name of the author" <notifications@mycompany.odoo.com>`. In other
words this can be translated to:
`"name of the author" <{ICP.mail.from.filter}@{mail.catchall.domain}>`.
In this case ICP stands for [ir.config.parameters]{.title-ref}, which
are the System Parameters. Deliverability is greatly improved with the
`notifications configuration <email_servers/notifications>`{.interpreted-text
role="ref"}.

In order for servers to accept emails from Odoo on a more regular basis,
one of the solutions is for customers to create rules within their own
mailbox. A filter can be added to the email inbox so that when email is
received from Odoo ([notifications@mycompany.odoo.com]{.title-ref}) it
is moved to the inbox. It is also possible to add the Odoo database
domain onto a safe senders list or whitelist on the receiving domain.

If an Odoo email server appears on a blacklist, notify Odoo via a [new
help ticket](https://www.odoo.com/help) and the support team will work
to get the servers removed from the blacklist.

Should the Odoo database be using a custom domain for sending emails
from Odoo there are three records that should be implemented on the
custom domain\'s DNS to ensure deliverability of email. This includes
setting records for `SPF (Sender Policy Framework)`{.interpreted-text
role="abbr"}, `DKIM (DomainKeys Identified Mail)`{.interpreted-text
role="abbr"} and
`DMARC (Domain-based Message Authentication, Reporting, & Conformance)`{.interpreted-text
role="abbr"}. Ultimately though, it is up to the discretion of the final
receiving mailbox.

## Be SPF compliant {#email_communication/spf_compliant}

The Sender Policy Framework (SPF) protocol allows the owner of a domain
name to specify which servers are allowed to send emails from that
domain. When a server receives an incoming email, it checks whether the
IP address of the sending server is on the list of allowed IPs according
to the sender\'s `SPF (Sender Policy Framework)`{.interpreted-text
role="abbr"} record.

:::: note
::: title
Note
:::

The `SPF (Sender Policy Framework)`{.interpreted-text role="abbr"}
verification is performed on the domain mentioned in the
[Return-Path]{.title-ref} field of the email. In the case of an email
sent by Odoo, this domain corresponds to the value of the
[mail.catchall.domain]{.title-ref} key in the database system
parameters.
::::

The `SPF (Sender Policy Framework)`{.interpreted-text role="abbr"}
policy of a domain is set using a TXT record. The way to create or
modify a TXT record depends on the provider hosting the
`DNS (Domain Name System)`{.interpreted-text role="abbr"} zone of the
domain name. In order for the verification to work properly, each domain
can only have one `SPF (Sender Policy Framework)`{.interpreted-text
role="abbr"} record.

If the domain name does not yet have a
`SPF (Sender Policy Framework)`{.interpreted-text role="abbr"} record,
create one using the following input: [v=spf1 include:\_spf.odoo.com
\~all]{.title-ref}

If the domain name already has a
`SPF (Sender Policy Framework)`{.interpreted-text role="abbr"} record,
the record must be updated (and do not create a new one).

::: example
If the TXT record is [v=spf1 include:\_spf.google.com
\~all]{.title-ref}, edit it to add \`include:\_spf.odoo.com\`: [v=spf1
include:\_spf.odoo.com include:\_spf.google.com \~all]{.title-ref}
:::

Check if the `SPF (Sender Policy Framework)`{.interpreted-text
role="abbr"} record is valid with a free tool like [MXToolbox
SPF](https://mxtoolbox.com/spf.aspx).

## Enable DKIM {#email_communication/DKIM_compliant}

The DomainKeys Identified Mail (DKIM) allows a user to authenticate
emails with a digital signature.

When sending an email, the Odoo server includes a unique
`DKIM (DomainKeys Identified Mail)`{.interpreted-text role="abbr"}
signature in the headers. The recipient\'s server decrypts this
signature using the `DKIM
(DomainKeys Identified Mail)`{.interpreted-text role="abbr"} record in
the database\'s domain name. If the signature and the key contained in
the record match, this guarantees that the message is authentic and has
not been altered during transport.

To enable `DKIM (DomainKeys Identified Mail)`{.interpreted-text
role="abbr"}, add a `CNAME (Canonical Name)`{.interpreted-text
role="abbr"} record to the `DNS (Domain Name System)`{.interpreted-text
role="abbr"} zone of the domain name:

[odoo.\_domainkey IN CNAME odoo.\_domainkey.odoo.com.]{.title-ref}

:::: tip
::: title
Tip
:::

If the domain name is [mycompany.com]{.title-ref}, make sure to create a
subdomain [odoo.\_domainkey.mycompany.com]{.title-ref} whose canonical
name is [odoo.\_domainkey.odoo.com.]{.title-ref}.
::::

The way to create or modify a `CNAME (Canonical Name)`{.interpreted-text
role="abbr"} record depends on the provider hosting the
`DNS (Domain Name System)`{.interpreted-text role="abbr"} zone of the
domain name. The most common providers are
`listed below <email_communication/SPFDKIM_common_providers>`{.interpreted-text
role="ref"}.

Check if the `DKIM (DomainKeys Identified Mail)`{.interpreted-text
role="abbr"} record is valid with a free tool like [DKIM
Core](https://dkimcore.org/tools/). If a selector is asked, enter
[odoo]{.title-ref}.

## Check the DMARC policy

The Domain-based Message Authentication, Reporting, & Conformance
(DMARC) record is a protocol that unifies
`SPF (Sender Policy Framework)`{.interpreted-text role="abbr"} and
`DKIM (DomainKeys Identified Mail)`{.interpreted-text role="abbr"}. The
instructions contained in the
`DMARC (Domain-based Message Authentication, Reporting, &
Conformance)`{.interpreted-text role="abbr"} record of a domain name
tell the destination server what to do with an incoming email that fails
the `SPF (Sender Policy Framework)`{.interpreted-text role="abbr"}
and/or `DKIM (DomainKeys Identified
Mail)`{.interpreted-text role="abbr"} check.

::: example
DMARC: TXT record

[v=DMARC1; p=none;]{.title-ref}
:::

There are three
`DMARC (Domain-based Message Authentication, Reporting, & Conformance)`{.interpreted-text
role="abbr"} policies:

- [p=none]{.title-ref}
- [p=quarantine]{.title-ref}
- [p=reject]{.title-ref}

[p=quarantine]{.title-ref} and [p=reject]{.title-ref} instruct the
server that receives an email to quarantine that email or ignore it if
the `SPF (Sender Policy Framework)`{.interpreted-text role="abbr"}
and/or `DKIM (DomainKeys Identified
Mail)`{.interpreted-text role="abbr"} check fails.

If the domain name uses
`DMARC (Domain-based Message Authentication, Reporting, &
Conformance)`{.interpreted-text role="abbr"} and has defined one of
these policies, the domain must be `SPF (Sender Policy
Framework)`{.interpreted-text role="abbr"} compliant or enable
`DKIM (DomainKeys Identified Mail)`{.interpreted-text role="abbr"}.

:::: warning
::: title
Warning
:::

Yahoo or AOL are examples of email providers with a
`DMARC (Domain-based Message
Authentication, Reporting, & Conformance)`{.interpreted-text
role="abbr"} policy set to [p=reject]{.title-ref}. Odoo strongly advises
against using an *\@yahoo.com* or *\@aol.com* address for the database
users. These emails will never reach their recipient.
::::

[p=none]{.title-ref} is used for the domain owner to receive reports
about entities using their domain. It should not impact the
deliverability if the `DMARC (Domain-based Message Authentication,
Reporting, & Conformance)`{.interpreted-text role="abbr"} check fails.

`DMARC (Domain-based Message Authentication, Reporting, & Conformance)`{.interpreted-text
role="abbr"} records are comprised of tags in the form of
`DNS (Domain Name System)`{.interpreted-text role="abbr"} records. These
tags/parameters allow for reporting, such as
`RUA (Reporting URI of aggregate reports)`{.interpreted-text
role="abbr"} and `RUF (Reporting URI
for forensic reports)`{.interpreted-text role="abbr"}, along with more
precise specification like `PCT (Percentage of
messages subjected to filtering)`{.interpreted-text role="abbr"},
`P (Policy for organizational domain)`{.interpreted-text role="abbr"},
`SP (Policy
for subdomains of the OD)`{.interpreted-text role="abbr"}
`ADKIM (Alignment mode for DKIM)`{.interpreted-text role="abbr"} &
`ASPF (Alignment mode for
SPF)`{.interpreted-text role="abbr"}. For best practice, the the
`DMARC (Domain-based Message Authentication, Reporting, &
Conformance)`{.interpreted-text role="abbr"} policy should not start out
being too restrictive.

The following chart displays available tags:

  ----------------------------------------------------------------------------------------------
  Tag Name   Purpose                             Example
  ---------- ----------------------------------- -----------------------------------------------
  v          Protocol version                    [v=DMARC1]{.title-ref}

  pct        Percentage of messages subjected to [pct=20]{.title-ref}
             filtering                           

  ruf        Reporting URI for forensic reports  [ruf=mailto:authfail@example.com]{.title-ref}

  rua        Reporting URI of aggregate reports  [rua=mailto:aggrep@example.com]{.title-ref}

  p          Policy for organizational domain    [p=quarantine]{.title-ref}

  sp         Policy for subdomains of the OD     [sp=reject]{.title-ref}

  adkim      Alignment mode for DKIM             [adkim=s]{.title-ref}

  aspf       Alignment mode for SPF              [aspf=r]{.title-ref}
  ----------------------------------------------------------------------------------------------

Check the
`DMARC (Domain-based Message Authentication, Reporting, & Conformance)`{.interpreted-text
role="abbr"} record of a domain name with a tool like [MXToolbox
DMARC](https://mxtoolbox.com/DMARC.aspx).

::: seealso
[DMARC.org is another great resource to learn about DMARC
records.](https://dmarc.org/overview/)
:::

## SPF, DKIM & DMARC documentation of common providers {#email_communication/SPFDKIM_common_providers}

- [OVH
  DNS](https://docs.ovh.com/us/en/domains/web_hosting_how_to_edit_my_dns_zone/)
- [OVH
  SPF](https://docs.ovh.com/us/en/domains/web_hosting_the_spf_record/)
- [GoDaddy TXT
  record](https://www.godaddy.com/help/add-a-txt-record-19232)
- [GoDaddy SPF](https://www.godaddy.com/help/add-an-spf-record-19218)
- [GoDaddy DKIM](https://www.godaddy.com/help/add-a-cname-record-19236)
- [NameCheap](https://www.namecheap.com/support/knowledgebase/article.aspx/317/2237/how-do-i-add-txtspfdkimdmarc-records-for-my-domain/)
- [CloudFlare
  DNS](https://support.cloudflare.com/hc/en-us/articles/360019093151)
- [Google
  Domains](https://support.google.com/domains/answer/3290350?hl=en)
- [Azure
  DNS](https://docs.microsoft.com/en-us/azure/dns/dns-getstarted-portal)

To fully test the configuration, use the
[Mail-Tester](https://www.mail-tester.com/) tool, which gives a full
overview of the content and configuration in one sent email. Mail-Tester
can also be used to configure records for other, lesser-known providers.

::: seealso
[Using Mail-Tester to set SPF Records for specific
carriers](https://www.mail-tester.com/spf/)
:::




--- SOURCE: general/email_communication/email_servers.md ---

# Send and receive emails in Odoo with an email server {#communication/emails_servers}

## Odoo Online or Odoo.sh users

Since **Odoo sets up its own mail servers for the database**, outgoing
and incoming emails already work out-of-the-box. So for **Odoo Online**
and **Odoo.sh** customers, nothing needs to be configured!

Unless an external mail server is required to send large batches of mass
emails, simply use the standard online Odoo database normally since it
has already been pre-configured to send email.

:::: important
::: title
Important
:::

The Odoo server is subject to a daily email limit to prevent abuse. The
default limit is 200 emails sent per day for databases with an
**Enterprise** subscription. This limit can be increased under certain
conditions. See the `FAQ <faq>`{.interpreted-text role="doc"} or contact
support for more information.
::::

## Scope of this documentation

This document is **mainly dedicated to Odoo on-premise databases** that
do not benefit from an out-of-the-box solution to send and receive
emails in Odoo, unlike [Odoo Online](https://www.odoo.com/trial) and
[Odoo.sh](https://www.odoo.sh). Incoming and outgoing servers must be
configured for on-premise databases.

The following sections below contain information on how to integrate an
external email server with Odoo.

:::: warning
::: title
Warning
:::

If no one in the company is employed to manage email servers, Odoo
Online and Odoo.sh are strongly recommended. In these Odoo hosting types
email sending and receiving works instantly and is monitored by
professionals. Nevertheless, a company can use their own email server if
they want to manage the email server\'s reputation themselves. For more
information see
`Configure DNS records to send emails in Odoo <email_domain>`{.interpreted-text
role="doc"}
::::

## Default notifications system {#email_servers/notifications}

Documents in Odoo (such as a CRM opportunity, a sales order, an invoice,
etc.) have a discussion thread, called *chatter*.

When a database user posts a message in the chatter, this message is
sent by email to the followers of the document as a notification (except
to the sender). If a follower replies to the message, the reply updates
the chatter, and Odoo relays another reply to the followers as a
notification. Messages sent back to the chatter from users or external
users will appear in the chatter from their respective email, or as the
name listed in their *Contacts* record.

These notifications are sent using a default from address. For more
information see
`Use a default email address <email_communication/default>`{.interpreted-text
role="ref"}.

## Manage outbound messages

As a system administrator, go to
`Settings --> General Settings --> Discuss`{.interpreted-text
role="menuselection"} in Odoo, and enable the
`Custom Email Servers`{.interpreted-text role="guilabel"} option. Then,
click `Save`{.interpreted-text role="guilabel"}. Next, click
`Outgoing Email Servers`{.interpreted-text role="guilabel"} and click
`Create`{.interpreted-text role="guilabel"} to create a new outgoing
mail server record in Odoo. Reference the SMTP data of the external
email server. Once all the information has been filled out, click
`Test Connection`{.interpreted-text role="guilabel"}.

::: seealso
\- `google_oauth`{.interpreted-text role="doc"} -
`azure_oauth`{.interpreted-text role="doc"}
:::

:::: note
::: title
Note
:::

Ensuring the outgoing domain has
`SPF (Sender Policy Framework)`{.interpreted-text role="abbr"},
`DKIM (DomainKeys
Identified Mail)`{.interpreted-text role="abbr"} and
`DMARC (Domain-based Message Authentication, Reporting, &
Conformance)`{.interpreted-text role="abbr"} set up on the
`DNS (Domain Name System)`{.interpreted-text role="abbr"} will improve
deliverability. For more information see
`email_domain`{.interpreted-text role="doc"}.
::::

### Port restriction {#email_servers/restriction}

Note that port 25 is blocked for security reasons on the Odoo Online and
Odoo.sh platforms. Try using ports 465, 587, or 2525 instead.

### Use a default \"From\" email address {#email_communication/default}

Sometimes, an email\'s \"From\" (outgoing) address can belong to a
different domain, and that can be a problem.

For example, if a customer with the email address
[mary@customer.example.com]{.title-ref} responds to a message, Odoo will
try to redistribute that same email to the other subscribers in the
thread. However, if the domain [customer.example.com]{.title-ref}
forbids that kind of usage for security, the email that Odoo is trying
to redistribute would get rejected by some recipients\' email servers.

To avoid that problem, Odoo sends all emails using a \"From\" address
from the same authorized domain.

Access the `System Parameters`{.interpreted-text role="guilabel"} by
activating `developer mode <developer-mode>`{.interpreted-text
role="ref"} and going to
`Settings --> Technical --> Parameters --> System Parameters`{.interpreted-text
role="menuselection"} menu.

To force the email address from which emails are sent, a combination of
the following keys needs to be set in the system parameters of the
database:

- \`mail.default.from\`: accepts the local part or a complete email
  address as value
- \`mail.default.from_filter\`: accepts a domain name or a full email
  address as value

:::: note
::: title
Note
:::

The [mail.default.from_filter]{.title-ref} works only for
[odoo-bin]{.title-ref} configurations or the default Odoo email server,
otherwise this parameter can be set using the [from_filter]{.title-ref}
field on [ir.mail_server]{.title-ref}.
::::

The field can be a domain name or an entire email address, or it can
remain empty. If the sender\'s email address does not match this set
filter, then the email will be encapsulated using a combination of the
two system parameters: [mail.default.from]{.title-ref} and
[mail.catchall.domain]{.title-ref}.

::: example
In the following example, the from email address is replaced with the
combination of the the two system parameters
([mail.default.from]{.title-ref} and
[mail.catchall.domain]{.title-ref}). This is the defaultnotifications
configuration in Odoo: `“Admin” <admin@example.com>` =\>
`“Admin” <notifications@mycompany.com>`.
:::

In other words if the email address of the author does not match
[mail.default.from_filter]{.title-ref}, the email address is replaced by
[mail.default.from]{.title-ref} (if it contains a full email address) or
a combination of [mail.default.from]{.title-ref} and
[mail.catchall.domain]{.title-ref}.

If the [from_filter]{.title-ref} contains a full email address, and if
the [mail.default.from]{.title-ref} is the same as this address, then
all of the email addresses that are different from
[mail.default.from]{.title-ref} will be encapsulated in
[mail.default.from]{.title-ref}.

### Utilizing the \"From\" filter on an outgoing email server {#email_communication/from_filter}

The `FROM Filtering`{.interpreted-text role="guilabel"} field allows for
the use of a specific outgoing email server depending on the
`From`{.interpreted-text role="guilabel"} email address or domain that
Odoo is sending on behalf of. This setting can be used to improve the
deliverability or sending success rate of emails sent from the database.
Setting the `FROM Filtering`{.interpreted-text role="guilabel"} field
can also be used to send from different domains in a multi-company
environment. Access this field in Odoo by navigating to
`Settings --> Discuss --> Custom Mail Servers --> Outgoing Mail Servers --> New`{.interpreted-text
role="menuselection"}.

![Outgoing email server settings and the FROM filter settings.](email_servers/from-filter-setting.png){.align-center}

When an email is sent from Odoo while the
`FROM Filtering`{.interpreted-text role="guilabel"} field is set, an
email server is chosen in the following sequence:

1.  First, Odoo searches for an email server that has the same
    `FROM Filtering`{.interpreted-text role="guilabel"} value as the
    `From`{.interpreted-text role="guilabel"} value (email address)
    defined in the outgoing email. For example, if the
    `From`{.interpreted-text role="guilabel"} value (email address) is
    [test@example.com]{.title-ref}, only the email servers that have the
    `FROM Filtering`{.interpreted-text role="guilabel"} value equal to
    [test@example.com]{.title-ref} are returned.
2.  However, if no email servers are found that use the
    `From`{.interpreted-text role="guilabel"} value, then Odoo searches
    for an email server that has the same *domain* as the
    `From`{.interpreted-text role="guilabel"} value (email address)
    defined in the outgoing email. For example, if the
    `From`{.interpreted-text role="guilabel"} email address is
    [test@example.com]{.title-ref}, only the email servers that have the
    `FROM Filtering`{.interpreted-text role="guilabel"} value equal to
    [example.com]{.title-ref} are returned.

If no email servers are found after checking for the domain, then Odoo
returns all email servers that do not have any
`FROM Filtering`{.interpreted-text role="guilabel"} value(s) set.

Should this query return no results, then Odoo performs a search for an
email server using the system parameter:
[mail.default.from]{.title-ref}. First, the email address listed
attempts to match an email server, and then the domain attempts to find
a match. If no email server is found, Odoo returns the first outgoing
email server (sorted by priority).

:::: note
::: title
Note
:::

If several email servers are found, then Odoo uses the first one
according to its priority. For example, if there are two email servers,
one with a priority of [10]{.title-ref} and the other with a priority of
[20]{.title-ref}, then the email server with a priority of
[10]{.title-ref} is used first.
::::

### Set up different dedicated servers for transactional and mass emails {#email_communication/mass_mails}

In Odoo a separate email server can be used for transactional emails and
mass mailings. Example: Use Postmark or SendinBlue for transactional
emails, and Amazon SES, Mailgun, Sendgrid or
`Mailjet <mailjet_api>`{.interpreted-text role="doc"} for mass mailings.

:::: important
::: title
Important
:::

A default outgoing email server is already configured. Do not create an
alternative one unless a specific external outgoing email server is
needed for technical reasons.
::::

To do this, first activate the
`developer mode <developer-mode>`{.interpreted-text role="ref"}, and
then go to `Settings --> Technical --> Outgoing`{.interpreted-text
role="menuselection"} email servers. There, create two outgoing email
server settings; one for the transactional emails and one for the mass
mailing server. Make sure to give priority to the transactional server
over the mass mailing server by providing a lower priority number for
the transactional email server.

Now, go to `Email Marketing --> Settings`{.interpreted-text
role="menuselection"} and enable `Dedicated Server`{.interpreted-text
role="guilabel"}. Choose the appropriate email server. With these
settings, Odoo uses the server with the lower priority for transactional
emails, and the server here selected for mass mails. Note that in this
case, the domain\'s Sender Policy Framework (SPF) records must be set to
include both transactional and mass mail servers.

::: seealso
\- `email_domain`{.interpreted-text role="doc"}
:::

## Manage inbound messages {#email_communication/inbound_messages}

Odoo relies on generic email aliases to fetch incoming messages.

- **Reply messages** of messages sent from Odoo are routed to their
  original discussion thread (and to the inbox of all its followers) by
  the alias of the model if there is any or by the catchall alias
  (**catchall@**). Replies to messages of models that do not have a
  custom alias will use the catchall alias
  ([catchall@mycompany.odoo.com]{.title-ref}). The catchall address,
  however, does not have another action attached to it like other
  aliases might, it is only used to collect replies.

- **Bounced messages** are used as a Return-Path. One example this is
  especially useful for is in [Odoo Email
  Marketing](https://www.odoo.com/page/email-marketing). In this case
  bounces are opt-out based on if the email bounced too many times (5)
  in the last month and the bounces are separated by one week. This is
  done to avoid blacklisting someone because of a mail server error. If
  these circumstances are met then the email is considered invalid and
  is blacklisted. A log note is added on the contact under
  `Blacklisted Email Addresses`{.interpreted-text role="guilabel"} on
  the `Email Marketing Configuration Menu`{.interpreted-text
  role="guilabel"}.

  Messages that bounce in the chatter (outside of Email Marketing) will
  populate a red envelope indicating the failed delivery. This can be
  helpful to know that a Sales Order or an Invoice did not reach its
  final destination.

- **Original messages**: several business objects have their own alias
  to create new records in Odoo from incoming emails:

  > - Sales channel (to create *Leads* or *Opportunities* in [Odoo
  >   CRM](https://www.odoo.com/page/crm))
  > - Support channel (to create *Tickets* in [Odoo
  >   Helpdesk](https://www.odoo.com/page/helpdesk))
  > - Projects (to create new *Tasks* in [Odoo
  >   Project](https://www.odoo.com/page/project-management))
  > - Job positions (to create *Applicants* in [Odoo
  >   Recruitment](https://www.odoo.com/page/recruitment))

Depending on the mail server, there might be several methods to fetch
emails. The easiest and most recommended method is to manage one email
address per Odoo alias in the mail server.

- Create the corresponding email addresses in the mail server
  (**catchall@**, **bounce@**, **sales@**, etc.).

- Set the `Alias Domain`{.interpreted-text role="guilabel"} name in
  `Settings --> General Settings -->
  Discuss`{.interpreted-text role="menuselection"}. Changing the
  `Alias Domain`{.interpreted-text role="guilabel"} will change the
  catchall\'s domain for the database.

- If the database\'s hosting type is Odoo on-premise, create an
  `Incoming Mail Server`{.interpreted-text role="guilabel"} in Odoo for
  each alias. To create a new incoming server go to:
  `Settings --> Discuss
  --> Custom Mail Servers --> Incoming Mail Servers --> New`{.interpreted-text
  role="menuselection"} Fill out the form according to the email
  provider\'s settings. Leave the
  `Actions to Perform on Incoming Mails`{.interpreted-text
  role="guilabel"} field blank. Once all the information has been filled
  out, click on `TEST & CONFIRM`{.interpreted-text role="guilabel"}.

  ![Incoming mail server configuration on Odoo.](email_servers/incoming-server.png){.align-center}

- If the database\'s hosting type is Odoo Online or Odoo.sh, redirecting
  or forwarding incoming messages to Odoo\'s domain name instead of the
  external email server is recommended. That way, incoming messages can
  be received without delay. Redirections for all email addresses should
  be set to Odoo\'s domain name in the email server (e.g.
  [catchall@mydomain.ext]{.title-ref} to
  [catchall@mycompany.odoo.com]{.title-ref}).

All the aliases are customizable in Odoo. Object aliases can be edited
from their respective configuration view by navigating to
`Settings --> Technical Menu --> Email -->
Aliases`{.interpreted-text role="menuselection"}.

To edit catchall and bounce aliases, first activate the
`developer mode <developer-mode>`{.interpreted-text role="ref"}. Then,
go to
`Settings --> Technical --> Parameters --> System Parameters`{.interpreted-text
role="menuselection"} to customize the aliases
([mail.catchall.alias]{.title-ref} & [mail.bounce.alias]{.title-ref}).
These types of changes should be completed prior to the database going
live. If a customer replies after a change is made then the system will
not recognize the old alias, and the reply will not be received.

By default, inbound messages are fetched every 5 minutes for on-premise
databases.

:::: note
::: title
Note
:::

This value can be changed in
`developer mode <developer-mode>`{.interpreted-text role="ref"}. Go to
`Settings --> Technical --> Automation --> Scheduled Actions`{.interpreted-text
role="menuselection"} and look for
`Mail: Fetchmail Service`{.interpreted-text role="guilabel"}.
::::

### System parameters that prevent feedback loops

There are two system parameters that help prevent email loops from
occurring in Odoo. These parameters were introduced in Odoo 16 to
prevent aliases from creating too many records and to prevent feedback
loops on the catchall reply-to email address. They are present in
database but not in the *System Parameters*. To override the following
defaults they need to be added in.

The two system parameters are as follows:

- [mail.gateway.loop.minutes]{.title-ref} (120 minutes by default)
- [mail.gateway.loop.threshold]{.title-ref} (20 by default)

Add these fields in Odoo by first enabling
`developer mode <developer-mode>`{.interpreted-text role="ref"}, and
then navigating to
`Settings --> Technical Menu --> Parameters --> System Parameters`{.interpreted-text
role="menuselection"}. Change the value of these parameters, as needed.

When an email is received in the Odoo database on the catchall email
address or on any alias, Odoo looks at the mail received for the given
period of time defined in the system parameter
[mail.gateway.loop.minutes]{.title-ref}. If the received email was sent
to an alias then Odoo will reference the
[mail.gateway.loop.threshold]{.title-ref} system parameter and determine
the value as the number of records this alias is allowed to create in
the given period of time (value of
[mail.gateway.loop.minutes]{.title-ref}).

In addition, when email is received to the catchall email address, Odoo
will reference the emails received to the database during the set period
of time (as stated by the value in the system parameter:
[mail.gateway.loop.minutes]{.title-ref}). Odoo will then determine
whether any of the emails received match that of the email(s) being
received during the specified time-frame, and will prevent a feedback
loop from occurring if a duplicate email is detected.

### Allow alias domain system parameter

Incoming aliases are set in the Odoo database to create records by
receiving incoming emails. To view aliases set in the Odoo database,
first activate the `developer mode <developer-mode>`{.interpreted-text
role="ref"}. Then, go to
`Settings app --> Technical --> Email section --> Aliases`{.interpreted-text
role="menuselection"}.

The following system parameter,
[mail.catchall.domain.allowed]{.title-ref}, set with allowed alias
domain values, separated by commas, filters out correctly addressed
emails to aliases. Setting the domain(s) for which the alias can create
a ticket, lead, opportunity, etc., eliminates false positives where
email addresses with only the prefix alias (not the domain) are present.

In some instances, matches have been made in the Odoo database when an
email is received with the same alias prefix and a different domain on
the incoming email address. This is true in the sender, recipient, and
`CC (Carbon Copy)`{.interpreted-text role="abbr"} email addresses of an
incoming email.

::: example
When Odoo receives emails that have the name [commercial]{.title-ref}
prefix alias in the sender, recipient, or
`CC (Carbon Copy)`{.interpreted-text role="abbr"} email address(es)
(e.g. <commercial@gmail.com>, <commercial@odoo.net>), the database
falsely treats the email as the full [commercial]{.title-ref} alias
(with a different domain), and therefore, creates a
ticket/lead/opportunity/etc.
:::

To add the [mail.catchall.domain.allowed]{.title-ref} system parameter,
first, activate the `developer mode
<developer-mode>`{.interpreted-text role="ref"}. Then, go to
`Settings app --> Technical --> Parameters section -->
System Parameters`{.interpreted-text role="menuselection"}. Click
`Create`{.interpreted-text role="guilabel"}. Then, type in
[mail.catchall.domain.allowed]{.title-ref} for the
`Key`{.interpreted-text role="guilabel"} field.

Next, for the `Value`{.interpreted-text role="guilabel"} field, add the
domain(s) separated by comma(s) (if plural domains). Manually
`Save`{.interpreted-text role="guilabel"}, and the system parameter
takes immediate effect.

![mail.catchall.domain.allowed system parameter set with key and value highlighted.](email_servers/allowed-domain.png){.align-center}




--- SOURCE: general/email_communication/faq.md ---

# Email issues

This document contains an explanation of the most recurring emailing
issues in Odoo.

## Outgoing emails

### Email is not sent {#red_envelop}

The first indicator showing that an email has not been sent is the
presence of a red `✉️
(envelope)`{.interpreted-text role="guilabel"} icon, next to the date
and time of the message, located in the chatter.

![Red envelope icon displayed in chatter.](faq/red-envelop.png){.align-center}

Unsent emails also appear in the Odoo email queue. In
`developer mode <developer-mode>`{.interpreted-text role="ref"}, the
email queue can be accessed by going to
`Settings app --> Technical menu --> Email
--> Emails`{.interpreted-text role="menuselection"}. Unsent emails
appear in turquoise, while sent emails appear in grey.

#### Common error messages

##### Daily limit reached {#email_communication/daily_limit_mail}

![Warning in Odoo upon email limit reached.](faq/email-limit.png){.align-center}

Each email service provider has its own email sending limits. The limits
may be daily, hourly, or sometimes, per minute. This is the same for
Odoo, which limits a customer\'s sending to prevent Odoo\'s email
servers from being blacklisted.

Here are the default limits for new databases:

- **200 emails per day** for Odoo Online and Odoo.sh databases with an
  active subscription.
- **20 emails per day** for one-app free databases.
- **50 emails per day** for trial databases.
- In the case of migration, the daily limit might be reset to 50 emails
  per day.

If the daily limit is reached:

- Contact the Odoo support team, who may increase the daily limit
  depending on the following factors:
  1.  How many users are in the database?
  2.  Which apps are installed?
  3.  The bounce rate: the percentage of email addresses that did not
      receive emails because they were returned by a mail server on its
      way to the final recipient.
- Use an external outgoing email server to be independent of Odoo\'s
  mail limit (refer to the corresponding `email documentation
  </applications/general/email_communication/email_servers>`{.interpreted-text
  role="doc"}).
- Wait until 11 PM (UTC) for the daily limit to reset, and retry sending
  the email. In `developer mode <developer-mode>`{.interpreted-text
  role="ref"}, go to `Settings app --> Technical menu -->
  Email --> Emails`{.interpreted-text role="menuselection"}, then click
  the `Retry`{.interpreted-text role="guilabel"} button next to an
  unsent email.

:::: warning
::: title
Warning
:::

The daily email limit is comprehensive to the database. By default, any
internal message, notification, logged note, etc. counts as an email in
the daily limit if it notifies someone via email. This can be mitigated
by receiving `notifications in Odoo
<discuss_app/notification_preferences>`{.interpreted-text role="ref"},
instead of emails.
::::

##### SMTP error

Simple Mail Transport Protocol (SMTP) error messages explain why an
email wasn\'t transmitted successfully.
`SMTP (Simple Mail Transport Protocol)`{.interpreted-text role="abbr"}
is a protocol to describe the email structure, and transmits data from
messages over the Internet. The error messages generated by email
services are helpful tools to diagnose and troubleshoot email problems.

::: example
This is an example of a 554 SMTP permanent delivery error: [554:
delivery error: Sorry, your message to \-\-\-\-\--@yahoo.com cannot be
delivered. This mailbox is disabled (554.30). -
mta4471.mail.bf1.yahoo.com \-\-- Below this line is a copy of the
message.]{.title-ref}
:::

The debug menu can be used to investigate SMTP sending issues from a
database. To access the menu,
`developer mode <developer-mode>`{.interpreted-text role="ref"} must be
activated. Once activated, navigate to the
`Debug Menu`{.interpreted-text role="menuselection"} in the top right of
the menu bar (the `🐞 (bug)`{.interpreted-text role="guilabel"} icon),
`Debug Menu --> Manage Messages`{.interpreted-text role="menuselection"}

The `Manage Messages`{.interpreted-text role="guilabel"} menu opens a
list of all the messages sent in a particular record. Within each
message there is information on sending, including the type, and
subtype, of the message.

Other information includes to whom the message was sent, and whether
Odoo received a bounce-back message from an email server.

![Manage messages menu option on the debug menu.](faq/manage-messages.png){.align-center}

:::: note
::: title
Note
:::

A user must be on a view in Odoo that has a chatter in order for the
`Manage Messages`{.interpreted-text role="guilabel"} menu option to
appear.
::::

###### No error populated

Odoo is not always capable of providing information for the reason it
failed. The different email providers implement a personalized policy of
bounced emails, and it is not always possible for Odoo to interpret it
correctly.

If this is a recurring problem with the same client, or the same domain,
do not hesitate to contact [Odoo Support](https://www.odoo.com/help) for
help in finding a reason.

:::: note
::: title
Note
:::

One of the most common reasons for an email failing to send with no
error message is related to
`SPF <email_communication/spf_compliant>`{.interpreted-text role="ref"}
and/or `DKIM
<email_communication/DKIM_compliant>`{.interpreted-text role="ref"}
configuration. Also, check to make sure the
[mail.bounce.alias]{.title-ref} is defined in the *system parameters*.
Access system parameters in
`developer mode <developer-mode>`{.interpreted-text role="ref"} by
navigating to `Settings app -->
Technical menu --> Parameters --> System Parameters`{.interpreted-text
role="menuselection"}.
::::

### Email is sent late

Email campaigns send at a scheduled time, using a delay pre-programed in
the database. Odoo uses a delayed task to send emails that are
considered \"not urgent\" (newsletter formats, such as: mass mailing,
marketing automation, and events). The system utility **cron** can be
used to schedule programs to run automatically at predetermined
intervals. Odoo uses that policy in order to avoid cluttering the mail
servers and, instead, prioritizes individual communication. This
**cron** is called `Mail: Email Queue Manager`{.interpreted-text
role="guilabel"}, and can be accessed in `developer mode
<developer-mode>`{.interpreted-text role="ref"} by going to
`Settings app --> Technical menu --> Automation -->
Scheduled Actions`{.interpreted-text role="menuselection"}.

![Email scheduled to be sent later.](faq/email-scheduled-later.png){.align-center}

:::: tip
::: title
Tip
:::

What is a **cron**? A cron is an action that Odoo runs in the background
to execute particular code to complete a task.
::::

:::: important
::: title
Important
:::

By default, the *Mass Mailing cron* runs every 60 minutes. This can be
changed to no less than 5 minutes. However, running the action every 5
minutes would bog down the Odoo database (stress the system), so this is
not recommended. To edit the mass mailing cron, select the scheduled
action `Mail: Email Queue Manager`{.interpreted-text role="guilabel"},
and proceed to make any necessary adjustments.
::::

Emails that are considered urgent (communication from one person to
another, such as sales orders, invoices, purchase orders, etc.) are sent
immediately.

## Incoming emails

When there is an issue with incoming emails, there might not be an
indication, per se, in Odoo. It is the sending email client, who tries
to contact a database, that will get a bounce-back message (most of the
time a `550: mailbox unavailable`{.interpreted-text role="guilabel"}
error message).

### Email is not received

The steps that should be taken depend on the Odoo platform where the
database is hosted.

**Odoo.sh** users can find their live logs on the folder
`~/logs/`{.interpreted-text role="file"}.

Logs are a stored collection of all the tasks completed in a database.
They are a text-only representation, complete with timestamps of every
action taken on the Odoo database. This can be helpful to track emails
leaving the database. Failure to send can also be seen by logs that
indicate that the message tried to send repeatedly. Logs will show every
action to the email servers from the database.

The folder `~/logs/`{.interpreted-text role="file"} (accessed by the
command line or on the Odoo.sh dashboard) of an Odoo.sh database
contains a list of files containing the logs of the database. The log
files are created everyday at 5:00 AM (UTC).

:::: tip
::: title
Tip
:::

The two most recent days (today and yesterday) are not compressed, while
the older ones are, in order to save space. The naming of the files for
today and yesterday are respectively: `odoo.log`{.interpreted-text
role="file"} and `odoo.log.1`{.interpreted-text role="file"}.

For the following days, they are named with their dates, and then
compressed. Use the command `grep`{.interpreted-text role="command"} and
`zgrep`{.interpreted-text role="command"} (for the compressed ones) to
search through the files.
::::

::: seealso
For more information on logs and how to access them via the Odoo.sh
dashboard, see `this
administration documentation <odoosh/logs>`{.interpreted-text
role="ref"}.

For more information on accessing logs via the command line visit
`this developer
documentation <reference/cmdline/server/logging>`{.interpreted-text
role="ref"}.
:::

**Odoo Online** users won\'t have access to the logs. However [Odoo
Support](https://www.odoo.com/help) can be contacted if there is a
recurring issue with the same client or domain.

## Get help from Odoo support

In order to get helped efficiently, please provide as much information
as possible. Here is a list of what can be helpful when reaching out to
the Odoo Support team about an issue:

1.  Send a copy of the email headers. The [.EML]{.title-ref} file (or
    **headers**) of the email is the file format containing all the
    technical information required for an investigation. The
    documentation from the email provider might explain how to access
    the EML file/header files. Once the headers of the email are
    obtained, adding it into the Odoo Support ticket is the most
    efficient way for the Odoo Support team to investigate.

    ::: seealso
    - [Gmail documentation on
      headers](https://support.google.com/mail/answer/29436)

    \- [Outlook documentation on
    headers](https://support.microsoft.com/en-us/office/view-internet-message-headers-in-outlook-cd039382-dc6e-4264-ac74-c048563d212c#tab=Web)
    :::

2.  Explain the exact flow that is being followed to normally receive
    those emails in Odoo. Here are examples of questions whose answers
    can be useful:

    - Is this a notification message from a reply being received in
      Odoo?
    - Is this a message being sent from the Odoo database?
    - Is there an incoming email server being used, or is the email
      somehow being redirected?
    - Is there an example of an email that has been correctly forwarded?

3.  Provide answers to the following questions:

    - Is it a generic issue, or is it specific to a use case? If
      specific to a use case, which one exactly?
    - Is it working as expected? In case the email is sent using Odoo,
      the bounce email should reach the Odoo database, and display the
      `red envelope <red_envelop>`{.interpreted-text role="ref"}.

:::: note
::: title
Note
:::

The bounce system parameter needs to be set in the technical settings in
order for the database to correctly receive bounce messages. To access
this setting, go to `Settings app
--> Technical menu --> Parameters --> System Parameters`{.interpreted-text
role="menuselection"}. Then select the parameter name
`mail.bounce.alias`{.interpreted-text role="guilabel"} and set the value
to [bounce]{.title-ref} if it isn\'t already set.
::::




--- SOURCE: general/email_communication/google_oauth.md ---

# Connect Gmail to Odoo using Google OAuth

Odoo is compatible with Google\'s OAuth for Gmail. In order to send
secure emails from a custom domain, all that is required is to configure
a few settings on Google\'s *Workspace* platform, as well as on the back
end of the Odoo database. This configuration works by using either a
personal email address or an address created by a custom domain.

:::: tip
::: title
Tip
:::

For more information, visit [Google\'s
documentation](https://support.google.com/cloud/answer/6158849) on
setting up OAuth.
::::

::: seealso
\- `/applications/general/users/google`{.interpreted-text role="doc"} -
`/applications/productivity/calendar/google`{.interpreted-text
role="doc"}
:::

## Setup in Google

### Create a new project

To get started, go to the [Google API
Console](https://console.developers.google.com). Log in with your
*Google Workspace* account if you have one, otherwise log in with your
personal Gmail account (this should match the email address you want to
configure in Odoo).

After that, click on `Create Project`{.interpreted-text
role="guilabel"}, located on the far right of the `OAuth
consent screen`{.interpreted-text role="guilabel"}. If a project has
already been created in this account, then the `New
Project`{.interpreted-text role="guilabel"} option will be located on
the top right under the `Select a project`{.interpreted-text
role="guilabel"} drop-down menu.

On the `New Project`{.interpreted-text role="menuselection"} screen,
rename the `Project name`{.interpreted-text role="guilabel"} to
[Odoo]{.title-ref} and browse for the `Location`{.interpreted-text
role="guilabel"}. Set the `Location`{.interpreted-text role="guilabel"}
as the *Google Workspace organization*. If you are using a personal
Gmail account, then leave the `Location`{.interpreted-text
role="guilabel"} as `No Organization`{.interpreted-text
role="guilabel"}.

![Project Name and Location for Google OAuth.](google_oauth/new-project.png){.align-center}

Click on `Create`{.interpreted-text role="guilabel"} to finish this
step.

### OAuth consent screen

If the page doesn\'t redirect to the `User Type`{.interpreted-text
role="menuselection"} options, click on `OAuth
consent screen`{.interpreted-text role="guilabel"} in the left menu.

Under `User Type`{.interpreted-text role="guilabel"} options, select the
appropriate `User Type`{.interpreted-text role="guilabel"}, and then
click on `Create`{.interpreted-text role="guilabel"} again, which will
finally navigate to the `Edit app registration`{.interpreted-text
role="menuselection"} page.

:::: warning
::: title
Warning
:::

*Personal* Gmail Accounts are only allowed to be **External** User Type,
which means Google may require an approval, or for *Scopes* to be added
on. However, using a *Google WorkSpace* account allows for **Internal**
User Type to be used.

Note, as well, that while the API connection is in the *External*
testing mode, then no approval is necessary from Google. User limits in
this testing mode is set to 100 users.
::::

### Edit app registration

Next we will configure the app registration of the project.

On the `OAuth consent screen`{.interpreted-text role="guilabel"} step,
under the `App information`{.interpreted-text role="guilabel"} section,
enter [Odoo]{.title-ref} in the `App name`{.interpreted-text
role="guilabel"} field. Select the organization\'s email address under
the `User support`{.interpreted-text role="guilabel"} email field.

Next, under `App Domain --> Authorized domains`{.interpreted-text
role="menuselection"}, click on `Add Domain`{.interpreted-text
role="guilabel"} and enter [odoo.com]{.title-ref}.

After that, under the `Developer contact information`{.interpreted-text
role="guilabel"} section, enter the organization\'s email address.
Google uses this email address to notify the organization about any
changes to your project.

Next, click on the `Save and Continue`{.interpreted-text
role="guilabel"} button. Then, skip the `Scopes`{.interpreted-text
role="menuselection"} page by scrolling to the bottom and clicking on
`Save and Continue`{.interpreted-text role="guilabel"}.

If continuing in testing mode (External), add the email addresses being
configured under the `Test users`{.interpreted-text role="guilabel"}
step, by clicking on `Add Users`{.interpreted-text role="guilabel"}, and
then the `Save and
Continue`{.interpreted-text role="guilabel"} button. A summary of the
app registration appears.

Finally, scroll to the bottom and click on
`Back to Dashboard`{.interpreted-text role="guilabel"} to finish setting
up the project.

### Create Credentials

Now that the project is set up, credentials should be created, which
includes the *Client ID* and *Client Secret*. First, click on
`Credentials`{.interpreted-text role="guilabel"} in the left sidebar
menu.

Then, click on `Create Credentials`{.interpreted-text role="guilabel"}
in the top menu and select `OAuth client ID`{.interpreted-text
role="guilabel"} from the dropdown menu.

- Under `Application Type`{.interpreted-text role="guilabel"}, select
  `Web Application`{.interpreted-text role="guilabel"} from the dropdown
  menu.
- In the `Name`{.interpreted-text role="guilabel"} field, enter
  [Odoo]{.title-ref}.
- Under the `Authorized redirect URIs`{.interpreted-text
  role="guilabel"} label, click the button `ADD URI`{.interpreted-text
  role="guilabel"}, and then input
  [https://yourdbname.odoo.com/google_gmail/confirm]{.title-ref} in the
  `URIs 1`{.interpreted-text role="guilabel"} field. Be sure to replace
  the *yourdbname* part of the URL with the actual Odoo database name.
- Next, click on `Create`{.interpreted-text role="guilabel"} to generate
  an OAuth `Client ID`{.interpreted-text role="guilabel"} and `Client
  Secret`{.interpreted-text role="guilabel"}. Finally, copy each
  generated value for later use when configuring in Odoo, and then
  navigate to the Odoo database.

![Client ID and Client Secret for Google OAuth.](google_oauth/client-credentials.png){.align-center}

## Setup in Odoo

### Enter Google Credentials

First, open Odoo and navigate to the `Apps`{.interpreted-text
role="guilabel"} module. Then, remove the `Apps`{.interpreted-text
role="guilabel"} filter from the search bar and type in
[Google]{.title-ref}. Install the module called `Google
Gmail`{.interpreted-text role="guilabel"}.

Next, navigate to `Settings --> General Settings`{.interpreted-text
role="menuselection"}, and under the `Discuss`{.interpreted-text
role="guilabel"} section, ensure that the checkbox for
`Custom Email Servers`{.interpreted-text role="guilabel"} or
`External Email
Servers`{.interpreted-text role="guilabel"} is checked. This populates a
new option for `Gmail Credentials`{.interpreted-text role="guilabel"} or
`Use
a Gmail Sever`{.interpreted-text role="guilabel"}. Then, copy and paste
the respective values into the `Client ID`{.interpreted-text
role="guilabel"} and `Client Secret`{.interpreted-text role="guilabel"}
fields and `Save`{.interpreted-text role="guilabel"} the settings.

### Configure outgoing email server

To configure the external Gmail account, return to the top of the
`Custom Email Servers`{.interpreted-text role="guilabel"} setting and
then click the `Outgoing Email Servers`{.interpreted-text
role="guilabel"} link.

![Configure Outgoing Email Servers in Odoo.](google_oauth/outgoing-servers.png){.align-center}

Then, click on `New`{.interpreted-text role="guilabel"} or
`Create`{.interpreted-text role="guilabel"} to create a new email
server, and fill in the `Name`{.interpreted-text role="guilabel"},
`Description`{.interpreted-text role="guilabel"}, and the email
`Username`{.interpreted-text role="guilabel"} (if required).

Next, click on `Gmail OAuth Authentication`{.interpreted-text
role="guilabel"} or `Gmail`{.interpreted-text role="guilabel"} (under
the `Authenticate with`{.interpreted-text role="guilabel"} or
`Connection`{.interpreted-text role="guilabel"} section). Finally, click
on `Connect your Gmail Account`{.interpreted-text role="guilabel"}.

A new window labeled `Google`{.interpreted-text role="guilabel"} opens
to complete the authorization process. Select the appropriate email
address that is being configured in Odoo.

If the email address is a personal account, then an extra step pops up,
so click `Continue`{.interpreted-text role="guilabel"} to allow the
verification and connect the Gmail account to Odoo.

Then, allow Odoo to access the Google account by clicking on
`Continue`{.interpreted-text role="guilabel"} or
`Allow`{.interpreted-text role="guilabel"}. After that, the page
navigates back to the newly configured outgoing email server in Odoo.
The configuration automatically loads the token in Odoo, and a tag
stating `Gmail Token Valid`{.interpreted-text role="guilabel"} appears
in green.

![Configure Outgoing Email Servers in Odoo.](google_oauth/green-token.png){.align-center}

Finally, `Test the Connection`{.interpreted-text role="guilabel"}. A
confirmation message should appear. The Odoo database can now send safe,
secure emails through Google using OAuth authentication.

## Google OAuth FAQ

### Production VS Testing Publishing Status

Choosing `Production`{.interpreted-text role="guilabel"} as the
`Publishing Status`{.interpreted-text role="guilabel"} (instead of
`Testing`{.interpreted-text role="guilabel"}) will display the following
warning message:

![OAuth is Limited to 100 Sensitive Scope Logins.](google_oauth/published-status.png){.align-center}

To correct this warning, navigate to the [Google API
Platform](https://console.cloud.google.com/apis/credentials/consent). If
the `Publishing status`{.interpreted-text role="guilabel"} is
`In Production`{.interpreted-text role="guilabel"}, click
`Back to Testing`{.interpreted-text role="guilabel"} to correct the
issue.

### No Test Users Added

If no test users are added to the OAuth consent screen, then a 403
access denied error will populate.

![403 Access Denied Error.](google_oauth/403-error.png){.align-center}

To correct this error, return to the
`OAuth consent screen`{.interpreted-text role="guilabel"} under `APIs &
Services`{.interpreted-text role="guilabel"} and add test user(s) to the
app. Add the email that you are configuring in Odoo.

### Gmail Module not updated

If the *Google Gmail* module in Odoo has not been updated to the latest
version, then a `Forbidden`{.interpreted-text role="guilabel"} error
message populates.

![Forbidden you don\'t have the permission to access the requested resource.](google_oauth/forbidden-error.png){.align-center}

To correct this error, go to the `Apps`{.interpreted-text
role="menuselection"} module and clear out the search terms. Then,
search for [Gmail]{.title-ref} or [Google]{.title-ref} and upgrade the
`Google Gmail`{.interpreted-text role="guilabel"} module. Finally, click
on the three dots on the upper right of the module and select
`Upgrade`{.interpreted-text role="guilabel"}.

### Application Type

When creating the credentials (OAuth *Client ID* and *Client Secret*),
if `Desktop App`{.interpreted-text role="guilabel"} is selected for the
`Application Type`{.interpreted-text role="guilabel"}, an
`Authorization Error`{.interpreted-text role="guilabel"} appears.

![Error 400 Redirect URI Mismatch.](google_oauth/error-400.png){.align-center}

To correct this error, delete the credentials already created and create
new credentials, selecting `Web Application`{.interpreted-text
role="guilabel"} for the `Application Type`{.interpreted-text
role="guilabel"}. Then, under `Authorized
redirect URIs`{.interpreted-text role="guilabel"}, click
`ADD URI`{.interpreted-text role="guilabel"} and type:
[https://yourdbname.odoo.com/google_gmail/confirm]{.title-ref} in the
field, being sure to replace *yourdbname* in the URL with the Odoo
database name.




--- SOURCE: general/email_communication/mailjet_api.md ---

# Mailjet API

Odoo is compatible with Mailjet\'s
`API (Application Programming Interface)`{.interpreted-text role="abbr"}
for mass mailing. Set up a dedicated mass mailing server through Mailjet
by configuring settings in the Mailjet account and the Odoo database. In
some circumstances, settings need to be configured on the custom
domain\'s `DNS (Domain Name System)`{.interpreted-text role="abbr"}
settings as well.

## Set up in Mailjet

### Create API credentials

To get started, sign in to the [Mailjet Account
Information](https://app.mailjet.com/account) page. Next, navigate to
the `Senders & Domains`{.interpreted-text role="guilabel"} section and
click on `SMTP and
SEND API Settings`{.interpreted-text role="guilabel"}.

![SMTP and Send API Settings link in the Senders & Domains section of Mailjet.](mailjet_api/api-settings.png)

Then, copy the `SMTP (Simple Mail Transfer Protocol)`{.interpreted-text
role="abbr"} configuration settings onto a notepad. They can be found
under the `Configuration (SMTP only)`{.interpreted-text role="guilabel"}
section. The `SMTP (Simple
Mail Transfer Protocol)`{.interpreted-text role="abbr"} configuration
settings include the server address, the security option needed (Use
`SSL (Secure Sockets Layer)`{.interpreted-text
role="abbr"}/`TLS (Transport Layer Security)`{.interpreted-text
role="abbr"}), and the port number. The settings are needed to configure
Mailjet in Odoo, which is covered in the
`last section <maintain/mailjet-api/odoo-setup>`{.interpreted-text
role="ref"}.

::: seealso
[Mailjet: How can I configure my SMTP
parameters?](https://documentation.mailjet.com/hc/articles/360043229473)
:::

:::: important
::: title
Important
:::

Odoo blocks [port 25]{.title-ref} on Odoo Online and Odoo.sh databases.
`See reference here
<email_servers/restriction>`{.interpreted-text role="ref"}.
::::

![SMTP configuration from Mailjet.](mailjet_api/smtp-config.png)

Next, click on the button labeled
`Retrieve your API credentials`{.interpreted-text role="guilabel"} to
retrieve the Mailjet API credentials.

Then, click on the eye icon to reveal the `API key`{.interpreted-text
role="guilabel"}. Copy this key to a notepad, as this serves as the
`Username`{.interpreted-text role="guilabel"} in the Odoo configuration.
Next, click on the `Generate Secret Key`{.interpreted-text
role="guilabel"} button to generate the `Secret Key`{.interpreted-text
role="guilabel"}. Copy this key to a notepad, as this serves as the
`Password`{.interpreted-text role="guilabel"} in the Odoo configuration.

### Add verified sender address(es)

The next step is to add a sender address or a domain to the Mailjet
account settings so that the email address or domain is approved to send
emails using Mailjet\'s servers. First, navigate to the [Mailjet Account
Information](https://app.mailjet.com/account) page. Next, click on the
`Add a Sender Domain or Address`{.interpreted-text role="guilabel"} link
under the `Senders & Domains`{.interpreted-text role="guilabel"}
section.

![Add a sender domain or address in the Mailjet interface.](mailjet_api/add-domain-email.png){.align-center}

Determine if a sender\'s email address or the entire domain needs to be
added to the Mailjet settings. It may be easier to configure the domain
as a whole if `DNS (Domain Name System)`{.interpreted-text role="abbr"}
access is available. Jump to the
`Add a domain <maintain/mailjet-api/add-domain>`{.interpreted-text
role="ref"} section for steps on adding the domain.

:::: note
::: title
Note
:::

Either all email addresses of the Odoo database users who are sending
emails using Mailjet\'s servers need to be configured or the domain(s)
of the users\' email addresses can be configured.
::::

By default, the email address originally set up in the Mailjet account
is added as a trusted sender. To add another email address, click on the
button labeled `Add a sender address`{.interpreted-text
role="guilabel"}. Then, add the email address that is configured to send
from the custom domain.

At minimum the following email addresses should be set up in the
provider and verified in Mailjet:

- notifications@yourdomain.com
- bounce@yourdomain.com
- catchall@yourdomain.com

:::: note
::: title
Note
:::

Replace [yourdomain]{.title-ref} with the custom domain for the Odoo
database. If there isn\'t one, then use the
`mail.catchall.domain`{.interpreted-text role="guilabel"} system
parameter.
::::

After that, fill out the `Email Information`{.interpreted-text
role="guilabel"} form, making sure to select the appropriate email type:
transactional email or mass emails. After completing the form, an
activation email is sent to the email address and the trusted sender can
be activated.

It is recommended to set up the
`SPF (Sender Policy Framework)`{.interpreted-text
role="abbr"}/`DKIM (DomainKeys
Identified Mail)`{.interpreted-text
role="abbr"}/`DMARC (Domain-based Message Authentication, Reporting, and
Conformance)`{.interpreted-text role="abbr"} settings on the domain of
the sender.

::: seealso
\- [Mailjet\'s SPF/DKIM
documentation](https://documentation.mailjet.com/hc/en-us/articles/360049641733-Authenticating-Domains-with-SPF-and-DKIM-A-Complete-Guide) -
[Mailjet\'s DMARC
documentation](https://documentation.mailjet.com/hc/en-us/articles/20531905163419-Understanding-DMARC)
:::

:::: important
::: title
Important
:::

If the database is not using a custom domain, then in order to verify
the sender\'s address, a temporary alias (of the three email addresses
mentioned above) should be set up in Odoo CRM to create a lead. Then,
the database is able to receive the verification email and verify the
accounts.
::::

### Add a domain {#maintain/mailjet-api/add-domain}

By adding an entire domain to the Mailjet account, all the sender
addresses related to that domain are automatically validated for sending
emails using Mailjet servers. First, navigate to the [Mailjet Account
Information](https://app.mailjet.com/account) page. Next, click on
`Add a Sender Domain or Address`{.interpreted-text role="guilabel"} link
under the `Senders & Domains`{.interpreted-text role="guilabel"}
section. Then, click on `Add domain`{.interpreted-text role="guilabel"}
to add the custom domain.

:::: note
::: title
Note
:::

The domain needs to be added to the Mailjet account and then validated
through the `DNS
(Domain Name System)`{.interpreted-text role="abbr"}.
::::

After that, fill out the `Add a new Domain`{.interpreted-text
role="guilabel"} page on Mailjet and click `Continue`{.interpreted-text
role="guilabel"}.

After adding the domain, a validation page will populate. Unless the
Odoo database is on-premise (in which case, choose
`Option 1`{.interpreted-text role="guilabel"}), choose
`Option 2: Create a DNS Record`{.interpreted-text role="guilabel"}. Copy
the TXT record information to a notepad and then navigate to the
domain\'s `DNS (Domain
Name System)`{.interpreted-text role="abbr"} provider to complete
validation.

![The TXT record information to input on the domain\'s DNS.](mailjet_api/host-value-dns.png)

#### Setup in the domain\'s DNS

After getting the TXT record information from the Mailjet account, add a
TXT record to the domain\'s `DNS (Domain Name System)`{.interpreted-text
role="abbr"}. This process varies depending on the `DNS (Domain Name
System)`{.interpreted-text role="abbr"} provider. Consult the provider
for specific configuration processes. The TXT record information
consists of the `Host`{.interpreted-text role="guilabel"} and
`Value`{.interpreted-text role="guilabel"}. Paste these into the
corresponding fields in the TXT record.

#### Return to Mailjet account information

After adding the TXT record to the domain\'s
`DNS (Domain Name System)`{.interpreted-text role="abbr"}, navigate back
to the Mailjet account. Then, navigate to
`Account Information --> Add a Sender Domain or
Address`{.interpreted-text role="menuselection"}, click the gear icon
next to `Domain`{.interpreted-text role="guilabel"}, and select
`Validate`{.interpreted-text role="guilabel"}.

This action can also be done by going to the [Sender domains &
addresses](https://app.mailjet.com/account/sender) page on the Mailjet
account information and clicking on `Manage`{.interpreted-text
role="guilabel"}.

Next, click `Check Now`{.interpreted-text role="guilabel"} to validate
the TXT record that was added on the domain. A success screen will
appear if the domain is configured correctly.

![Check DNS record in Mailjet.](mailjet_api/check-dns.png){.align-center}

After successfully setting up the domain, there is an option to
`Authenticate this domain
(SPF/DKIM)`{.interpreted-text role="guilabel"}. This button populates
`SPF (Sender Policy Framework)`{.interpreted-text role="abbr"} &
`` DKIM (DomainKeys
Identified Mail) records to input into the :abbr:`DNS (Domain Name System) ``{.interpreted-text
role="abbr"} provider.

::: seealso
[Mailjet\'s SPF/DKIM/DMARC
documentation](https://documentation.mailjet.com/hc/articles/360042412734-Authenticating-Domains-with-SPF-DKIM)
:::

![Authenticate the domain with SPF/DKIM records in Mailjet.](mailjet_api/authenticate.png)

## Set up in Odoo {#maintain/mailjet-api/odoo-setup}

To complete the setup, navigate to the Odoo database and go to the
`Settings`{.interpreted-text role="guilabel"}. With
`developer-mode`{.interpreted-text role="ref"} turned on, go to the
`Technical Menu --> Email --> Outgoing
Mail Servers`{.interpreted-text role="menuselection"}. Then, create a
new outgoing server configuration by clicking on the
`Create`{.interpreted-text role="guilabel"} button.

Next, input the [SMTP server]{.title-ref} (in-v3.mailjet.com), [port
number]{.title-ref} (587 or 465), and [Security (SSL/TLS)]{.title-ref}
that was copied earlier from the Mailjet account. They can also be found
[here](https://app.mailjet.com/account/setup). It is recommended to use
`SSL (Secure Sockets
Layer)`{.interpreted-text
role="abbr"}/`TLS (Transport Layer Security)`{.interpreted-text
role="abbr"} even though Mailjet may not require it.

For the `Username`{.interpreted-text role="guilabel"}, input the
`API KEY`{.interpreted-text role="guilabel"}. For the
`Password`{.interpreted-text role="guilabel"}, input the
`SECRET KEY`{.interpreted-text role="guilabel"} that was copied from the
Mailjet account to the notepad earlier. These settings can be found on
`Mailjet -->  Account Settings --> SMTP and SEND API
Settings`{.interpreted-text role="menuselection"}.

Then, if the Mailjet server is used for mass emailing, set the
`Priority`{.interpreted-text role="guilabel"} value higher than that of
any transactional email server(s). Finally, save the settings and
`Test the
Connection`{.interpreted-text role="guilabel"}.

![Odoo outgoing email server settings.](mailjet_api/server-settings.png)




--- SOURCE: general/email_communication.md ---

nosearch

:   

# Email communication

::: {.toctree titlesonly=""}
email_communication/email_servers email_communication/email_domain
email_communication/azure_oauth email_communication/google_oauth
email_communication/mailjet_api email_communication/faq
:::




--- SOURCE: general/integrations/geolocation.md ---

# Geolocation

You can locate contacts or places and generate routes on a map in Odoo.

![Map displaying a contact\'s location.](geolocation/contacts.png)

To use the feature, open the `Settings`{.interpreted-text
role="guilabel"} app, and, under the `Integrations`{.interpreted-text
role="guilabel"}, section, activate `Geo Localization`{.interpreted-text
role="guilabel"}. Then, choose between using the OpenStreetMap or Google
Places API.

**OpenStreetMap**

OpenStreetMap is a free, open geographic database updated and maintained
by volunteers. To use it, select `Open Street Map`{.interpreted-text
role="guilabel"}.

> :::: important
> ::: title
> Important
> :::
>
> OpenStreetMap might not always be accurate. You can [join the
> OpenStreetMap community](https://www.openstreetmap.org/fixthemap) to
> fix any issues encountered.
> ::::

**Google Places API map**

The Google Places API map provides detailed info on places, businesses,
and points of interest. It supports location-based features like search,
navigation, and recommendations.

:::: important
::: title
Important
:::

Using the Google Places API could require [payment to
Google](https://mapsplatform.google.com/pricing/).
::::

To use it, select `Google Place Map`{.interpreted-text role="guilabel"}
and enter your `API Key
<address_autocomplete/generate_api_key>`{.interpreted-text role="ref"}.

![Google Places API key](geolocation/google-places-api-key.png)

::: seealso
`/applications/websites/website/configuration/address_autocomplete`{.interpreted-text
role="doc"}
:::




--- SOURCE: general/integrations/mail_plugins/gmail.md ---

# Gmail Plugin

The *Gmail Plugin* integrates an Odoo database with a Gmail inbox, so
users can keep track of all their work between Gmail and Odoo, without
losing any information.

## Odoo Online users

For databases hosted on Odoo Online (or Odoo.sh), follow the steps below
to configure the Gmail Plugin.

### Install the Gmail Plugin

First, log in to the Gmail account that the user wishes to connect to
Odoo.

From the Gmail inbox, click the plus sign icon on the right side panel
to get add-ons. If the side panel is not visible, click on the arrow
icon at the bottom right corner of the inbox to reveal it.

![Plus sign icon on the Gmail inbox side panel.](gmail/gmail-side-panel.png){.align-center}

Then, use the search bar to search for [Odoo]{.title-ref} and locate the
`Odoo Inbox Addin`{.interpreted-text role="guilabel"}.

![Odoo Inbox Addin on Google Workspace Marketplace.](gmail/google-workspace-marketplace.png){.align-center}

Or, go directly to the `Odoo Inbox Addin`{.interpreted-text
role="guilabel"} page on the [Google Workspace
Marketplace](https://workspace.google.com/marketplace/app/odoo_inbox_addin/873497133275).

Once the plugin is located, click `Install`{.interpreted-text
role="guilabel"}. Then, click `Continue`{.interpreted-text
role="guilabel"} to start the installation.

Next, select which Gmail account the user wishes to connect to Odoo.
Then click `Allow`{.interpreted-text role="guilabel"} to let Odoo access
the Google account. Google will then show a pop-up window confirming
that the installation was successful.

### Configure the Odoo database

The `Mail Plugin`{.interpreted-text role="guilabel"} feature must be
enabled in the Odoo database in order to use the Gmail Plugin. To enable
the feature, go to `Settings --> General Settings`{.interpreted-text
role="menuselection"}. Under the `Integrations`{.interpreted-text
role="guilabel"} section, activate `Mail Plugin`{.interpreted-text
role="guilabel"}, and then click `Save`{.interpreted-text
role="guilabel"}.

![The Mail Plugin feature in the Settings.](gmail/mail-plugin-setting.png){.align-center}

### Configure the Gmail inbox

In the Gmail inbox, a purple Odoo icon is now visible on the right side
panel. Click on the Odoo icon to open up the Odoo plugin window. Then,
click on any email in the inbox. Click
`Authorize Access`{.interpreted-text role="guilabel"} in the plugin
window to grant Odoo access to the Gmail inbox.

![The Authorize Access button in the right sidebar of the Odoo plugin panel.](gmail/authorize-access.png){.align-center}

Next, click `Login`{.interpreted-text role="guilabel"}. Then, enter the
URL of the Odoo database that the user wishes to connect to the Gmail
inbox, and log in to the database.

:::: note
::: title
Note
:::

Use the general URL for the database, not the URL of a specific page in
the database. For example, use [https://mycompany.odoo.com]{.title-ref},
not [https://mycompany.odoo.com/web#cids=1&action=menu]{.title-ref}.
::::

Finally, click `Allow`{.interpreted-text role="guilabel"} to let Gmail
access the Odoo database. The browser will then show a
`Success!`{.interpreted-text role="guilabel"} message. After that, close
the window. The Gmail inbox and Odoo database are now connected.

## Odoo On-Premise users

For databases hosted on servers other than Odoo Online (or Odoo.sh),
follow the steps below to configure the Gmail Plugin.

:::: note
::: title
Note
:::

As part of their security guidelines, Google requires add-on creators to
provide a list of URLs that can be used in actions and redirections
launched by the add-on. This protects users by ensuring, for example,
that no add-on redirects users toward a malicious website. (Read more on
[Google Apps
Script](https://developers.google.com/apps-script/manifest/allowlist-url).)

Since Odoo can only list the [odoo.com]{.title-ref} domain and not every
on-premise customer\'s unique server domain, on-premise customers cannot
install the Gmail Plugin from the Google Workspace Marketplace.
::::

### Install the Gmail Plugin

First, access the [GitHub
repository](https://github.com/odoo/mail-client-extensions) for the Odoo
Mail Plugins. Next, click on the green `Code`{.interpreted-text
role="guilabel"} button. Then, click `Download ZIP`{.interpreted-text
role="guilabel"} to download the Mail Plugin files onto the user\'s
computer.

![Download the ZIP file from the Odoo GitHub repository for Mail Plugins.](gmail/gh-download-zip.png){.align-center}

Open the ZIP file on the computer. Then, go to
`mail-client-extensions-master -->
gmail --> src --> views`{.interpreted-text role="menuselection"}, and
open the `login.ts`{.interpreted-text role="file"} file using any text
editor software, such as Notepad (Windows), TextEdit (Mac), or Visual
Studio Code.

Delete the following three lines of text from the
`login.ts`{.interpreted-text role="file"} file:

``` 
if (!/^https:\/\/([^\/?]*\.)?odoo\.com(\/|$)/.test(validatedUrl)) {
     return notify("The URL must be a subdomain of odoo.com");
}
```

This removes the [odoo.com]{.title-ref} domain constraint from the Gmail
Plugin program.

Next, in the ZIP file, go to
`mail-client-extensions-master --> gmail`{.interpreted-text
role="menuselection"}, and open the file called
`appsscript.json`{.interpreted-text role="guilabel"}. In the
`urlFetchWhitelist`{.interpreted-text role="guilabel"} section, replace
all the references to [odoo.com]{.title-ref} with the Odoo customer\'s
unique server domain.

Then, in the same `gmail`{.interpreted-text role="guilabel"} folder,
open the file called `README.md`{.interpreted-text role="guilabel"}.
Follow the instructions in the `README.md`{.interpreted-text
role="guilabel"} file to push the Gmail Plugin files as a Google
Project.

:::: note
::: title
Note
:::

The computer must be able to run Linux commands in order to follow the
instructions on the `README.md`{.interpreted-text role="guilabel"} file.
::::

After that, share the Google Project with the Gmail account that the
user wishes to connect to Odoo. Then, click `Publish`{.interpreted-text
role="guilabel"} and `Deploy from manifest`{.interpreted-text
role="guilabel"}. Lastly, click `Install the add-on`{.interpreted-text
role="guilabel"} to install the Gmail Plugin.

### Configure the Odoo database

The `Mail Plugin`{.interpreted-text role="guilabel"} feature must be
enabled in the Odoo database in order to use the Gmail Plugin. To enable
the feature, go to `Settings --> General Settings`{.interpreted-text
role="menuselection"}. Under the `Integrations`{.interpreted-text
role="guilabel"} section, activate `Mail Plugin`{.interpreted-text
role="guilabel"}, and then click `Save`{.interpreted-text
role="guilabel"}.

![The Mail Plugin feature in the Settings.](gmail/mail-plugin-setting.png){.align-center}

### Configure the Gmail inbox

In the Gmail inbox, a purple Odoo icon is now visible on the right side
panel. Click on the Odoo icon to open up the Odoo plugin window. Then,
click on any email in the inbox. Click
`Authorize Access`{.interpreted-text role="guilabel"} in the plugin
window to grant Odoo access to the Gmail inbox.

![The Authorize Access button in the right sidebar of the Odoo plugin panel.](gmail/authorize-access.png){.align-center}

Next, click `Login`{.interpreted-text role="guilabel"}. Then, enter the
URL of the Odoo database that the user wishes to connect to the Gmail
inbox, and log in to the database.

:::: note
::: title
Note
:::

Use the general URL for the database, not the URL of a specific page in
the database. For example, use [https://mycompany.odoo.com]{.title-ref},
not [https://mycompany.odoo.com/web#cids=1&action=menu]{.title-ref}.
::::

Finally, click `Allow`{.interpreted-text role="guilabel"} to let Gmail
access the Odoo database. The browser will then show a
`Success!`{.interpreted-text role="guilabel"} message. After that, close
the window. The Gmail inbox and Odoo database are now connected.




--- SOURCE: general/integrations/mail_plugins/outlook.md ---

# Outlook Plugin

Outlook allows for third-party applications to connect in order to
execute database actions from emails. Odoo has a plugin for Outlook that
allows for the creation of an opportunity from the email panel.

## Configuration

The Outlook `Mail Plugin <../mail_plugins>`{.interpreted-text
role="doc"} needs to be configured both on Odoo and Outlook.

### Enable Mail Plugin {#mail-plugin/outlook/enable-mail-plugin}

First, enable the *Mail Plugin* feature in the database. Go to
`Settings --> General
Settings --> Integrations`{.interpreted-text role="menuselection"},
enable `Mail Plugin`{.interpreted-text role="guilabel"}, and
`Save`{.interpreted-text role="guilabel"} the configuration.

### Install the Outlook Plugin {#mail-plugin/outlook/install-plugin}

Download (`Save Page As --> Web Page XML only`{.interpreted-text
role="menuselection"}) the following XML file to upload later:
<https://download.odoocdn.com/plugins/outlook/manifest.xml>.

Next, open the Outlook mailbox, and select any email. After completing
this, click on the `More actions`{.interpreted-text role="guilabel"}
button in the upper right-side and select
`Get Add-ins`{.interpreted-text role="guilabel"}.

![More actions button in Outlook](outlook/more-actions.png){.align-center}

:::: tip
::: title
Tip
:::

For locally installed versions of Microsoft Outlook, access the
`Get Add-ins`{.interpreted-text role="guilabel"} menu item while in
preview mode (**not** with a message open). First, click on the `...
(ellipsis)`{.interpreted-text role="guilabel"} icon in the upper right
of the previewed message, then scroll down, and click on
`Get Add-ins`{.interpreted-text role="guilabel"}.
::::

Following this step, select the `My add-ins`{.interpreted-text
role="guilabel"} tab on the left-side.

![My add-ins in Outlook](outlook/my-add-ins.png){.align-center}

Under `Custom add-ins`{.interpreted-text role="guilabel"} towards the
bottom, click on `+ Add a custom add-in`{.interpreted-text
role="guilabel"}, and then on `Add from file...`{.interpreted-text
role="guilabel"}

![Custom add-ins in Outlook](outlook/custom-add-ins.png){.align-center}

For the next step, attach the [manifest.xml]{.title-ref} file downloaded
above, and press `OK`{.interpreted-text role="guilabel"}. Next, read the
warning and click on `Install`{.interpreted-text role="guilabel"}.

![Custom add-in installation warning in Outlook](outlook/add-in-warning.png){.align-center}

### Connect the database {#mail-plugin/outlook/connect-database}

Now, Outlook will be connected to the Odoo database. First, open any
email in the Outlook mailbox, click on the
`More actions`{.interpreted-text role="guilabel"} button in the upper
right-side, and select `Odoo for
Outlook`{.interpreted-text role="guilabel"}.

![Odoo for Outlook add-in button](outlook/odoo-for-outlook.png){.align-center}

The right-side panel can now display **Company Insights**. At the
bottom, click on `Login`{.interpreted-text role="guilabel"}.

![Logging in the Odoo database](outlook/panel-login.png){.align-center}

:::: note
::: title
Note
:::

Only a limited amount of **Company Insights** (*Lead Enrichment*)
requests are available as a trial database. This feature requires
`prepaid credits <mail_plugins/pricing>`{.interpreted-text role="ref"}.
::::

:::: tip
::: title
Tip
:::

If, after a short while, the panel is still empty, it is possible that
the browser cookie settings prevented it from loading. Note that these
settings also change if the browser is in \"Incognito\" mode.

To fix this issue, configure the browser to always allow cookies on
Odoo\'s plugin page.

For Google Chrome, change the browser cookie settings by following the
guide at: <https://support.google.com/chrome/answer/95647> and adding
[download.odoo.com]{.title-ref} to the list of
`Sites that can always use cookies`{.interpreted-text role="guilabel"}.

Once this is complete, the Outlook panel needs to be opened again.
::::

Now, enter the Odoo database URL and click on `Login`{.interpreted-text
role="guilabel"}.

![Entering the Odoo database URL](outlook/enter-database-url.png){.align-center}

Next, click on `Allow`{.interpreted-text role="guilabel"} to open the
pop-up window.

![New window pop-up warning](outlook/new-window-warning.png){.align-center}

If the user isn\'t logged into the database, enter the credentials.
Click on `Allow`{.interpreted-text role="guilabel"} to let the Outlook
Plugin connect to the database.

![Allowing the Outlook Plugin to connect to a database](outlook/odoo-permission.png){.align-center}

### Add a shortcut to the plugin {#mail-plugin/outlook/add-shortcut}

By default, the Outlook Plugin can be opened from the *More actions*
menu. However, to save time, it\'s possible to add it next to the other
default actions.

In the Outlook mailbox, click on `Settings`{.interpreted-text
role="guilabel"}, then on `View all Outlook
settings`{.interpreted-text role="guilabel"}.

![Viewing all Outlook settings](outlook/all-outlook-settings.png){.align-center}

Now, select `Customize actions`{.interpreted-text role="guilabel"} under
`Mail`{.interpreted-text role="guilabel"}, click on `Odoo for
Outlook`{.interpreted-text role="guilabel"}, and then
`Save`{.interpreted-text role="guilabel"}.

![Odoo for Outlook customized action](outlook/customize-actions.png){.align-center}

Following this step, open any email; the shortcut should be displayed.

![Odoo for Outlook customized action](outlook/odoo-outlook-shortcut.png){.align-center}

### Using the plugin

Now that the plug-in is installed and operational, all that needs to be
done to create a lead is to click on the [O]{.title-ref} \[Odoo icon\]
or navigate to `More actions`{.interpreted-text role="guilabel"} and
click on `Odoo
for Outlook`{.interpreted-text role="guilabel"}. The side panel will
appear on the right-side, and under `Opportunities`{.interpreted-text
role="guilabel"} click on `New`{.interpreted-text role="guilabel"}. A
new window with the created opportunity in the Odoo database will
populate.




--- SOURCE: general/integrations/mail_plugins.md ---

show-content

:   

# Mail Plugins

::: {.toctree titlesonly=""}
mail_plugins/outlook mail_plugins/gmail
:::

Mail Plugins are connectors that bridge your mailbox with your Odoo
database. With them, you can interact with your Odoo database directly
from your mailbox by:

- Creating leads and centralizing prospects\' emails into the CRM app.
- Generating tasks in any Odoo project.
- Creating tickets in the Helpdesk app.
- Searching and storing insights on your contacts.

Mail Plugins are available for
`Outlook <mail_plugins/outlook>`{.interpreted-text role="doc"} and
`Gmail
<mail_plugins/gmail>`{.interpreted-text role="doc"}.

## Pricing {#mail_plugins/pricing}

Mail Plugins are **free** to install and use.

However, they can provide **Lead Enrichment**, which is part of a paid
service known as **Lead Generation**.

Mail plugins allow you to test Lead Enrichment for free, whether you
connect the plugins to a database or not. After a while, the plugins ask
you to buy `../../essentials/in_app_purchase`{.interpreted-text
role="doc"} credits if you would like to keep using this service.

### Lead Generation IAP service {#mail_plugins/lead-generation}

Lead Enrichment uses the *Lead Generation IAP service*. Each request
consumes one *Lead Generation credit*.

To buy credits, go to
`Settings --> CRM --> Lead Enrichment --> Buy credits`{.interpreted-text
role="menuselection"} and select a package.

:::: note
::: title
Note
:::

\- If you are out of credits, the only information populated when
clicking on the suggested company is its website link and logo. - Check
out the [Lead Generation IAP service Privacy
Policy](https://iap.odoo.com/privacy#header_3).
::::

::: seealso
\- `../../essentials/in_app_purchase`{.interpreted-text role="doc"} -
[Odoo Tutorials: Lead Enrichment](https://www.odoo.com/r/p73)
:::




--- SOURCE: general/integrations/unsplash.md ---

# Unsplash

**Unsplash** is a recognized stock photography library integrated with
Odoo.

If your database is hosted on **Odoo Online**, you can access Unsplash
pictures without configuration.

If your database is hosted on **Odoo.sh or on-premise**, proceed as
follows:

1.  To **generate an Unsplash access key**, create or sign in to an
    [Unsplash account](https://unsplash.com).
2.  Access your [applications
    dashboard](https://unsplash.com/oauth/applications), click
    `New Application`{.interpreted-text role="guilabel"}, select all
    checkboxes, and click `Accept terms`{.interpreted-text
    role="guilabel"}.
3.  In the pop-up window, enter your
    `Application Name`{.interpreted-text role="guilabel"}, starting with
    the prefix [Odoo:]{.title-ref} (e.g., [Odoo:
    connection]{.title-ref}), so Unsplash recognizes it as an Odoo
    instance. Then, add a `Description`{.interpreted-text
    role="guilabel"} and click `Create application`{.interpreted-text
    role="guilabel"}.
4.  On the application details page, scroll down to the
    `Keys`{.interpreted-text role="guilabel"} section and copy the
    `Access Key`{.interpreted-text role="guilabel"} and
    `Application ID`{.interpreted-text role="guilabel"}.
5.  In Odoo, go to `General Settings`{.interpreted-text
    role="menuselection"} and enable the `Unsplash Image
    Library`{.interpreted-text role="guilabel"} feature. Then, enter the
    Unsplash `Access Key`{.interpreted-text role="guilabel"} and
    `Application ID`{.interpreted-text role="guilabel"}.

:::: warning
::: title
Warning
:::

As a non-Odoo Online user, you are limited to a test key with a maximum
of 50 Unsplash requests per hour.
::::




--- SOURCE: general/integrations.md ---

# Integrations

::: toctree
integrations/mail_plugins integrations/unsplash integrations/geolocation
:::




--- SOURCE: general/iot/config/connect.md ---

# Connect an IoT box to Odoo

An Internet of Things (IoT) box is a micro-computer device that allows
for the connection of input and output devices to an Odoo database. An
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box
subscription is required in order to use the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box with a
secured connection. A computer is also required to set up the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box.

::: seealso
[IoT Box FAQ](https://www.odoo.com/app/iot-faq)
:::

Begin the `IoT (Internet of Things)`{.interpreted-text role="abbr"}
configuration process by `installing the IoT app
<general/install>`{.interpreted-text role="ref"} on the Odoo database
through the `Apps`{.interpreted-text role="menuselection"} application.

![The Internet of Things (IoT) app on the Odoo database.](connect/install-iot-app.png){.align-center}

Next, after the *IoT app* is installed, navigate to
`IoT app --> IoT Boxes`{.interpreted-text role="menuselection"}, and
then click on the `Connect`{.interpreted-text role="guilabel"} button
located in the upper-left corner of the `IoT
Boxes`{.interpreted-text role="menuselection"} dashboard.

![Connecting an IoT box to the Odoo database.](connect/connect-iot.png){.align-center}

There are two recommended ways to connect the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box to the
database once the *IoT app* is installed. Follow the steps in either of
the next two sections to connect the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box via
`wired ethernet connection <iot_connect/ethernet>`{.interpreted-text
role="ref"} or via `WiFi <iot_connect/wifi>`{.interpreted-text
role="ref"}.

![Connection steps for a wired connection or WiFi connection.](connect/connect-iot-box.png){.align-center}

:::: important
::: title
Important
:::

The disk image that the `IoT (Internet of Things)`{.interpreted-text
role="abbr"} box SD card is formatted with is unique to the version of
the Odoo database that the `IoT (Internet of Things)`{.interpreted-text
role="abbr"} box is running on. Ensure that the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box is
`flashed <iot/config/flash>`{.interpreted-text role="ref"} with the most
up-to-date disk image.
::::

## Ethernet connection {#iot_connect/ethernet}

The following is the process to connect the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box via an
ethernet cable to the Odoo database (by way of the ethernet port;
RJ-45).

First, connect all wired devices to the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box (ethernet,
`USB
(Universal Serial Bus)`{.interpreted-text role="abbr"} devices, etc.).
At minimum, an HDMI screen should be connected. Then, plug the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box into a
power source.

Immediately after the unit powers on and boots up, read the *pairing
code* from the screen or from the printout of a receipt printer
connected to the `IoT (Internet of Things)`{.interpreted-text
role="abbr"} box.

:::: warning
::: title
Warning
:::

By default, the `IoT (Internet of Things)`{.interpreted-text
role="abbr"} box will display the *pairing code* for a maximum of 5
minutes after the unit boots up. After 5 minutes, the *pairing code*
will disappear for security purposes and the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box will need
to be rebooted manually by unplugging the unit from the power source for
ten seconds and re-plugging it back in.
::::

:::: note
::: title
Note
:::

If no screen is attached to the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box, then the
*pairing code* can be accessed from the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box homepage
by clicking on the `POS Display`{.interpreted-text role="guilabel"}
button. For instructions on how to access the `IoT (Internet of
Things)`{.interpreted-text role="abbr"} box homepage visit
`iot_connect/token`{.interpreted-text role="ref"}.
::::

On the computer, navigate to `IoT app --> IoT Boxes`{.interpreted-text
role="menuselection"}, and then click on the `Connect`{.interpreted-text
role="guilabel"} button located in the upper-left corner of the the
`IoT Boxes`{.interpreted-text role="menuselection"} dashboard. Input the
*pairing code* in the `Pairing Code`{.interpreted-text role="guilabel"}
field and click on the `Pair`{.interpreted-text role="guilabel"} button.
The database will now link to the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box and it
will appear on the `IoT Boxes`{.interpreted-text role="menuselection"}
page.

## WiFi connection {#iot_connect/wifi}

The following is the process to connect the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box via a WiFi
connection to the Odoo database.

First, ensure there is no ethernet cable plugged into the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box. Then,
connect all wired devices to the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box
(`USB (Universal
Serial Bus)`{.interpreted-text role="abbr"} devices, etc.).

After connecting the devices, plug the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box into to a
power source. On the computer, navigate to
`IoT app --> IoT Boxes`{.interpreted-text role="menuselection"}, and
then click on the `Connect`{.interpreted-text role="guilabel"} button
located in the upper-left corner of the the
`IoT Boxes`{.interpreted-text role="menuselection"} dashboard. Then copy
the `Token`{.interpreted-text role="guilabel"} from the
`WiFi connection`{.interpreted-text role="guilabel"} section as this
will later be used to link the Odoo database to the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box.

Back on the computer, navigate to the available WiFi networks and
connect to the `IoT
(Internet of Things)`{.interpreted-text role="abbr"} box WiFi network.
The WiFi network dispersed by the `IoT (Internet of
Things)`{.interpreted-text role="abbr"} box will start with
[IoTBox-xxxxxxxxxx]{.title-ref}.

![WiFi networks available on the computer.](connect/connect-iot-wifi.png){.align-center}

Upon connecting to the `IoT (Internet of Things)`{.interpreted-text
role="abbr"} box WiFi, a browser will automatically redirect to the
`Configure Iot Box`{.interpreted-text role="menuselection"} wizard. Name
the `IoT (Internet of Things)`{.interpreted-text role="abbr"} box, then
paste the previously copied *token* into the
`Server Token`{.interpreted-text role="guilabel"} field, and then click
on `Next`{.interpreted-text role="guilabel"}.

![Enter the server token into the IoT box.](connect/server-token.png){.align-center}

:::: note
::: title
Note
:::

If the `IoT (Internet of Things)`{.interpreted-text role="abbr"} box
WiFi connection wizard doesn\'t start, then see the documentation on
`connecting with a token <iot_connect/token>`{.interpreted-text
role="ref"}.
::::

Now, choose the WiFi network that the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box will
connect with (enter the password if there is one) and click on
`Connect`{.interpreted-text role="guilabel"}. Wait a few seconds and the
browser will redirect to the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box homepage.
The computer may need to be manually re-connected back to the original
WiFi connection, if this does not happen automatically.

![Configuring the WiFi for the IoT box.](connect/configure-wifi-network-iot.png){.align-center}

After completing each step, the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box should
appear when navigating to `IoT app --> IoT Boxes`{.interpreted-text
role="menuselection"} on the Odoo database.

![The IoT box has been successfully configured on the Odoo database.](connect/iot-box-connected.png){.align-center}

:::: important
::: title
Important
:::

The `IoT (Internet of Things)`{.interpreted-text role="abbr"} box may
need to be manually rebooted upon successfully connecting via WiFi for
the box to appear in the *IoT app* on the Odoo database. To do so,
simply unplug the device and plug it back into the power source after
ten seconds.
::::

## Manually connecting the IoT box using the token {#iot_connect/token}

A manual connection of the `IoT (Internet of Things)`{.interpreted-text
role="abbr"} box to the `IoT (Internet of
Things)`{.interpreted-text role="abbr"} app can be made using the
*token*, from a computer. The *token* can be found by navigating to
`IoT app --> IoT Boxes`{.interpreted-text role="menuselection"} and
clicking on `Connect`{.interpreted-text role="guilabel"}.

Under the `WiFi Connection`{.interpreted-text role="guilabel"} section
of the `Connect an IoT Box`{.interpreted-text role="guilabel"} page that
appears, click `Copy`{.interpreted-text role="guilabel"} to the right of
the `Token`{.interpreted-text role="guilabel"}. This token will be
entered into the `IoT (Internet of Things)`{.interpreted-text
role="abbr"} box homepage.

Access the `IoT (Internet of Things)`{.interpreted-text role="abbr"} box
homepage by entering the `IP (Internet
Protocol)`{.interpreted-text role="abbr"} address of the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box into a
browser window from a computer on the same network as the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box
(preferably by ethernet connection).

:::: note
::: title
Note
:::

The `IP (Internet Protocol)`{.interpreted-text role="abbr"} address can
be accessed by the router admin console that the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box is
connected to, or by connecting a receipt printer to the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box. A receipt
will print out with the `IoT (Internet of
Things)`{.interpreted-text role="abbr"} box\'s
`IP (Internet Protocol)`{.interpreted-text role="abbr"} address on it.
::::

On the `IoT (Internet of Things)`{.interpreted-text role="abbr"} box
homepage, enter the *token* under the `Server`{.interpreted-text
role="guilabel"} section by clicking on `Configure`{.interpreted-text
role="guilabel"}. Then, paste the *token* into the `Server
Token`{.interpreted-text role="guilabel"} field and click
`Connect`{.interpreted-text role="guilabel"}. The
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box will then
link to the Odoo database.

## IoT box schema {#iot/connect_schema}

### Raspberry Pi 4

![The Odoo IoT box (Raspberry Pi 4) schema with
labels.](connect/iot-box-schema.png)

### Raspberry Pi 3

![The Odoo IoT box (Raspberry Pi 3) schema with
labels.](connect/iox-box-schema-3.png)




--- SOURCE: general/iot/config/https_certificate_iot.md ---

# HTTPS certificate (IoT) {#iot/https_certificate_iot}

## What is HTTPS?

*Hypertext Transfer Protocol Secure* (HTTPS) is the secure version of
*Hypertext Transfer Protocol* (HTTP), which is the primary protocol used
to send data back and forth between a web browser and a website.
`HTTPS (Hypertext Transfer Protocol Secure)`{.interpreted-text
role="abbr"} is encrypted in order to increase the security of data
transfer.

`HTTPS (Hypertext Transfer Protocol Secure)`{.interpreted-text
role="abbr"} uses an encryption protocol to encrypt communications. The
protocol is called *Transport Layer Security* (TLS), although formerly
it was known as *Secure Sockets Layer* (SSL).

`HTTPS (Hypertext Transfer Protocol Secure)`{.interpreted-text
role="abbr"} occurs based upon the transmission of `TLS
(Transport Layer Security)`{.interpreted-text
role="abbr"}/`SSL (Secure Sockets Layer)`{.interpreted-text role="abbr"}
certificates, which verify that a particular provider is who they say
they are.

:::: note
::: title
Note
:::

In this documentation and throughout Odoo the term \"HTTPS certificate\"
will be used to define the fact that the
`SSL (Secure Sockets Layer)`{.interpreted-text role="abbr"} certificate
is valid and allows a `HTTPS
(Hypertext Transfer Protocol Secure)`{.interpreted-text role="abbr"}
connection.
::::

### Why is it needed?

In order to communicate with certain network devices (in particular for
payment terminals), the usage of
`HTTPS (Hypertext Transfer Protocol Secure)`{.interpreted-text
role="abbr"} is mandatory. If the `HTTPS
(Hypertext Transfer Protocol Secure)`{.interpreted-text role="abbr"}
certificate isn\'t valid, some devices won\'t be able to interact with
the `IoT (Internet of Things)`{.interpreted-text role="abbr"} Box.

## How to obtain a Hypertext Transfer Protocol Secure (HTTPS) certificate

The generation of the
`HTTPS (Hypertext Transfer Protocol Secure)`{.interpreted-text
role="abbr"} certificate is automatic.

The `IoT (Internet of Things)`{.interpreted-text role="abbr"} Box will
send a specific request to <https://www.odoo.com> which will send back
the `HTTPS (Hypertext Transfer Protocol Secure)`{.interpreted-text
role="abbr"} certificate if the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box and
database are eligible.

### Internet of Things (IoT) eligibility {#iot/iot-eligibility}

> 1.  The database should be a **production** instance. The database
>     instance should not be a copy, a duplicate, a staging, or a
>     development environment.
>
> 2.  The Odoo subscription must:
>
>     > - Have an `IoT Box Subscription`{.interpreted-text
>     >   role="guilabel"} line.
>     > - `Status`{.interpreted-text role="guilabel"} must be
>     >   `In Progress`{.interpreted-text role="guilabel"}.
>
>     If the subscription is linked to a <https://www.odoo.com> portal
>     user check the information on the portal subscription page.
>
>     <figure class="align-center">
>     <img src="https_certificate_iot/sub-example-in-progress.png"
>     alt="Odoo.com portal subscriptions filtered by &quot;in progress&quot;." />
>     <figcaption>In this case, both subscriptions are considered "in
>     progress" as the <code class="interpreted-text"
>     role="guilabel">Filter By\:
>     In Progress</code> was used.</figcaption>
>     </figure>
>
>     :::: note
>     ::: title
>     Note
>     :::
>
>     If the subscription is in question, contact the database\'s
>     Account Manager or Partner regarding the matter.
>     ::::

## Troubleshooting Hypertext Transfer Protocol Secure (HTTPS) certificate errors

If anything goes wrong during the process of the \"HTTPS certificate\"
generation or reception, a specific error will code be given on the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box home page.

:::: tip
::: title
Tip
:::

Accessing the `IoT (Internet of Things)`{.interpreted-text role="abbr"}
box homepage will check for the presence of the \"HTTPS certificate\"
and will attempt its generation if it is missing. As such, if there is
an error on the `IoT (Internet of Things)`{.interpreted-text
role="abbr"} box home page, refresh the `IoT (Internet of
Things)`{.interpreted-text role="abbr"} home page to see if the error
disappears.
::::

### [ERR_IOT_HTTPS_CHECK_NO_SERVER]{.title-ref}

Reason:

:   The configuration regarding the server is missing. In other words,
    the Odoo instance is not connected with the IoT box.

Solution:

:   Ensure that the server is configured.

::: seealso
`/applications/general/iot/config/connect`{.interpreted-text role="doc"}
:::

### [ERR_IOT_HTTPS_CHECK_CERT_READ_EXCEPTION]{.title-ref}

Reason:

:   An unhandled error happened when trying to read the existing
    `HTTPS (Hypertext Transfer
    Protocol Secure)`{.interpreted-text role="abbr"} certificate.

Solution:

:   Ensure that the
    `HTTPS (Hypertext Transfer Protocol Secure)`{.interpreted-text
    role="abbr"} certificate file is readable.

### [ERR_IOT_HTTPS_LOAD_NO_CREDENTIAL]{.title-ref}

Reason:

:   The contract and/or database
    `UUID (Universal Unique Identifier)`{.interpreted-text role="abbr"}
    is missing.

Solution:

:   Ensure that both values are configured as intended. To modify them,
    go to the `IoT
    (Internet of Things)`{.interpreted-text role="abbr"} box home page,
    and navigate to `Credential`{.interpreted-text role="guilabel"}.

### [ERR_IOT_HTTPS_LOAD_REQUEST_EXCEPTION]{.title-ref}

Reason:

:   An unexpected error happened when the
    `IoT (Internet of Things)`{.interpreted-text role="abbr"} box tried
    to reach <https://www.odoo.com>. The causes are likely due to the
    network infrastructure/configuration:

    > - The `IoT (Internet of Things)`{.interpreted-text role="abbr"}
    >   box does not have access to internet.
    > - The network does not allow the
    >   `IoT (Internet of Things)`{.interpreted-text role="abbr"} box to
    >   communicate with <https://www.odoo.com>. This may be due to
    >   network devices preventing the communication (firewalls, etc.)
    >   or the network configuration
    >   (`VPN (Virtual Private Network)`{.interpreted-text role="abbr"},
    >   etc.).

    :::: note
    ::: title
    Note
    :::

    More information regarding the error that occurred can be found in
    the full request exception details, which are in the
    `IoT (Internet of Things)`{.interpreted-text role="abbr"} box logs.
    ::::

Solution:

:   :::: warning
    ::: title
    Warning
    :::

    Consult with your system or network administrator should this issue
    arise. This error code depends on the network infrastructure and
    goes beyond Odoo support\'s service scope.
    ::::

### [ERR_IOT_HTTPS_LOAD_REQUEST_STATUS]{.title-ref}

Reason:

:   The IoT-box was able to reach <https://www.odoo.com> but received an
    unusual [HTTP response (status
    codes)](https://developer.mozilla.org/en-US/docs/Web/HTTP/Status).

    This error code will also give the HTTP response status codes. For
    example, if the error reads [ERR_IOT_HTTPS_LOAD_REQUEST_STATUS
    404]{.title-ref} it means that the page returned a 404 error, which
    is the \"Page Not Found\" code.

Solution:

:   Check if <https://www.odoo.com> is down using a web browser, as
    it\'s possible that it is down due to maintenance.

    > - If <https://www.odoo.com> is down due to maintenance,
    >   unfortunately there is nothing that can be done but instead wait
    >   for it to recover.
    > - If <https://www.odoo.com> is not down due to maintenance, open a
    >   [support ticket](https://www.odoo.com/help) on the matter.
    >   Ensure that the 3 digits status code next to the code error is
    >   included in the support ticket.

### [ERR_IOT_HTTPS_LOAD_REQUEST_NO_RESULT]{.title-ref}

Reason:

:   The `IoT (Internet of Things)`{.interpreted-text role="abbr"} box
    was able to reach <https://www.odoo.com> but it refused to deliver
    the `HTTPS (Hypertext Transfer Protocol Secure)`{.interpreted-text
    role="abbr"} certificate.

Solution:

:   Ensure that the `IoT (Internet of Things)`{.interpreted-text
    role="abbr"} box and database are eligible for a certificate:
    `Internet of Things (IoT) eligibility <iot/iot-eligibility>`{.interpreted-text
    role="ref"}.

## How to ensure that the HTTPS certificate is correct

If the certificate has been applied successfully, a new
`HTTPS (Hypertext Transfer Protocol
Secure)`{.interpreted-text role="abbr"}
`URL (Uniform Resource Locator)`{.interpreted-text role="abbr"} for the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box ending
with [.odoo-iot.com]{.title-ref} will appear on the Odoo database,
inside of the `IoT`{.interpreted-text role="menuselection"} application
on that specific device\'s form.

![Odoo IoT app IoT box with .odoo-iot.com domain.](https_certificate_iot/odoo-new-domain.png){.align-center}

When navigating to the
`URL (Uniform Resource Locator)`{.interpreted-text role="abbr"} in a
browser a secured `HTTPS
(Hypertext Transfer Protocol Secure)`{.interpreted-text role="abbr"}
connection will be established.

<figure class="align-center">
<img src="https_certificate_iot/secured-connection.png"
alt="Example of valid SSL certificate details on the browser." />
<figcaption>Padlock in Chrome on Windows 10 attesting the fact that the
connection is secured in <code class="interpreted-text"
role="abbr">HTTPS
(Hypertext Transfer Protocol Secure)</code>.</figcaption>
</figure>

The IoT-box homepage will now display an [OK]{.title-ref} status next to
[HTTPS certificate]{.title-ref}. The drop-down menu icon, when clicked,
will reveal information regarding the certificate.

![IoT box homepage with HTTPS certificate OK status.](https_certificate_iot/status-ok.png){.align-center}

## Domain Name System (DNS) issue

If the `IoT (Internet of Things)`{.interpreted-text role="abbr"} box can
be accessed from its `IP (Intrernet Protocol)`{.interpreted-text
role="abbr"} address but not the Odoo assigned domain:
[.odoo-iot.com]{.title-ref}; then the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box is likely
running into a `DNS (Domain Name System)`{.interpreted-text role="abbr"}
issue. On some browsers, it will give an error code mentioning
`DNS (Domain Name System)`{.interpreted-text role="abbr"} (like
[DNS_PROBE_FINISHED_NXDOMAIN]{.title-ref}).

These `DNS (Domain Name System)`{.interpreted-text role="abbr"} issues
may appear as the following in different browsers:

:::::: tabs
::: tab
Chrome

<figure class="align-center">
<img src="https_certificate_iot/dns-chrome.png"
alt="DNS issue on Chrome browser on Windows 10." />
<figcaption aria-hidden="true">DNS issue on Chrome browser on Windows
10.</figcaption>
</figure>
:::

::: tab
Firefox

<figure class="align-center">
<img src="https_certificate_iot/dns-firefox.png"
alt="DNS issue on Firefox browser on Windows 10." />
<figcaption aria-hidden="true">DNS issue on Firefox browser on Windows
10.</figcaption>
</figure>
:::

::: tab
Edge

<figure class="align-center">
<img src="https_certificate_iot/dns-edge.png"
alt="DNS issue on Edge browser on Windows 10." />
<figcaption aria-hidden="true">DNS issue on Edge browser on Windows
10.</figcaption>
</figure>
:::
::::::

### Domain Name System (DNS) issue solution

1.  Should the router allow the
    `DNS (Domain Name System)`{.interpreted-text role="abbr"} to be
    manually changed, change the DNS to use [Google
    DNS](https://developers.google.com/speed/public-dns).

2.  If your router doesn\'t allow for this, then a change will need to
    be made on the `DNS
    (Domain Name System)`{.interpreted-text role="abbr"} settings of
    each of the devices using [Google
    DNS](https://developers.google.com/speed/public-dns). This will need
    to occur on **every** device that plans to interact with the
    `IoT (Internet of Things)`{.interpreted-text role="abbr"} box (e.g.
    computer, tablet or phone). The individual device configuration
    processes can be found on the website of the device\'s manufacturer.

    :::: note
    ::: title
    Note
    :::

    Other `IoT (Internet of Things)`{.interpreted-text role="abbr"}
    devices such as payment terminals likely won\'t need their
    `DNS (Domain Name System)`{.interpreted-text role="abbr"} settings
    changed as they are already configured with custom
    `DNS (Domain Name System)`{.interpreted-text role="abbr"}.
    ::::

    :::: warning
    ::: title
    Warning
    :::

    Consult with your system or network administrator should this issue
    arise. This error code depends on the network infrastructure, and it
    goes beyond Odoo support\'s service scope.
    ::::




--- SOURCE: general/iot/config/pos.md ---

# Use an IoT box with a PoS

## Prerequisites

Before starting, make sure the following equipment is available:

- An `IoT (Internet of Things)`{.interpreted-text role="abbr"} box, with
  its power adapter.
- A computer or tablet with an up-to-date web browser.
- Odoo Online or an Odoo instance with the *Point of Sale* and *IoT*
  applications installed.
- A local network set up with
  `DHCP (Dynamic Host Configuration Protocol)`{.interpreted-text
  role="abbr"} (this is the default setting).
- An RJ45 Ethernet Cable (optional, but preferred over WiFi, which is
  already built in).
- Any of the supported hardware (receipt printer, barcode scanner, cash
  drawer, payment terminal, scale, customer display, etc.). The list of
  supported hardware can be found on the [POS Hardware
  page](https://www.odoo.com/page/point-of-sale-hardware).

## Setup

![A suggested configuration for a point of sale
system.](pos/pos-connections.png)

To connect hardware to the `PoS (Point of Sale)`{.interpreted-text
role="abbr"}, the first step is to connect an `IoT
(Internet of Things)`{.interpreted-text role="abbr"} box to the
database. To do this, follow these instructions: `Connect an
Internet of Things (IoT) box to the Odoo database <connect>`{.interpreted-text
role="doc"}.

Then, connect the peripheral devices to the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box.

  Device Name        Instructions
  ------------------ -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  Printer            Connect a supported receipt printer to a `USB (Universal Serial Bus)`{.interpreted-text role="abbr"} port or to the network, and power it on. Refer to `/applications/sales/point_of_sale/restaurant/kitchen_printing`{.interpreted-text role="doc"}.
  Cash drawer        The cash drawer should be connected to the printer with an RJ25 cable.
  Barcode scanner    In order for the barcode scanner to be compatible it must end barcodes with an [ENTER]{.title-ref} character (keycode 28). This is most likely the default configuration of the barcode scanner.
  Scale              Connect the scale and power it on. Refer to `../devices/scale`{.interpreted-text role="doc"}.
  Customer display   Connect a screen to the `IoT (Internet of Things)`{.interpreted-text role="abbr"} box to display the `PoS (Point
                     of Sale)`{.interpreted-text role="abbr"} order. Refer to `../devices/screen`{.interpreted-text role="doc"}.
  Payment terminal   The connection process depends on the terminal. Refer to the `payment terminals
                     documentation </applications/sales/point_of_sale/payment_methods>`{.interpreted-text role="doc"}.

Once this is completed, connect the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box to the
`PoS`{.interpreted-text role="menuselection"} application. To do this,
go to `Point of Sale --> Configuration --> PoS`{.interpreted-text
role="menuselection"}, tick the `IoT Box`{.interpreted-text
role="guilabel"} option, and select the devices to be used in this
`PoS (Point of Sale)`{.interpreted-text role="abbr"}.
`Save`{.interpreted-text role="guilabel"} the the changes.

![Configuring the connected devices in the POS application.](pos/iot-connected-devices.png){.align-center}

Once set up is done, a new `PoS (Point of Sale)`{.interpreted-text
role="abbr"} session can be launched.




--- SOURCE: general/iot/config/troubleshooting.md ---

# Troubleshooting

## IoT box connection

### Unable to locate the pairing code to connect the IoT box

The pairing code should be printed on receipt printers connected to the
`IoT (Internet of
Things)`{.interpreted-text role="abbr"} box and should also be displayed
on connected monitors.

The pairing code does not show under the following circumstances:

- The `IoT (Internet of Things)`{.interpreted-text role="abbr"} box is
  already connected to an Odoo database.
- The `IoT (Internet of Things)`{.interpreted-text role="abbr"} box is
  not connected to the Internet.
- The code is only valid for 5 minutes after the
  `IoT (Internet of Things)`{.interpreted-text role="abbr"} box has
  started. It is automatically removed from connected displays when this
  time has expired.
- The version of the `IoT (Internet of Things)`{.interpreted-text
  role="abbr"} box image is too old. If the `IoT
  (Internet of Things)`{.interpreted-text role="abbr"} box image is from
  an earlier version, then the SD card of the `IoT
  (Internet of Things)`{.interpreted-text role="abbr"} box needs to be
  re-flashed to update the image (see `Flashing the SD
  Card <iot/config/flash>`{.interpreted-text role="ref"}).

If none of the cases listed above correct the issue, then make sure the
`IoT (Internet of
Things)`{.interpreted-text role="abbr"} box has correctly started, by
checking that a fixed green LED is showing next to the power port.

### IoT box is connected but it is not showing in the database

When an `IoT (Internet of Things)`{.interpreted-text role="abbr"} box
connects to a database, it may restart. If so, it can take up to five
minutes before appearing in the database. If the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box is still
not showing after five minutes, make sure that the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box can reach
the database and that the server does not use a multi-database
environment.

To access the database from the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box, open a
browser and type in the database address.

### The IoT box is connected to the Odoo database, but cannot be reached

Make sure that the `IoT (Internet of Things)`{.interpreted-text
role="abbr"} box and the computer running the browser are located on the
same network, as the `IoT (Internet of Things)`{.interpreted-text
role="abbr"} box cannot be reached from outside the local network.

### The HTTPS certificate does not generate

In order to generate a
`HTTPS (Hypertext Transfer Protocol Secure)`{.interpreted-text
role="abbr"} certificate, an IoT box subscription is required for the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box.
Connecting the `IoT
(Internet of Things)`{.interpreted-text role="abbr"} box prior to
configuring an `IoT (Internet of Things)`{.interpreted-text role="abbr"}
subscription for the database and
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box with the
Account Manager will result in an unsecured connection.

In addition, a firewall can also prevent the
`HTTPS (Hypertext Transfer Protocol Secure)`{.interpreted-text
role="abbr"} certificate from generating correctly. In this case,
deactivate the firewall until the certificate is successfully generated.
It should also be noted that certain devices, such as a router that has
a built-in firewall, can prevent the
`HTTPS (Hypertext Transfer Protocol Secure)`{.interpreted-text
role="abbr"} certificate from generating.

::: seealso
`HTTPS certificate (IoT) <https_certificate_iot>`{.interpreted-text
role="doc"}
:::

## Printer

### The printer is not detected

If a printer does not appear in the devices list, go to the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box homepage
and make sure that it is listed under `Printers`{.interpreted-text
role="guilabel"}.

![The IoT box Home Page landing page.](troubleshooting/printer-status.png){.align-center}

If the printer is not present on the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box homepage,
click `Printers Server`{.interpreted-text role="guilabel"}, go to the
`Administration`{.interpreted-text role="guilabel"} tab and click on
`Add
Printer`{.interpreted-text role="guilabel"}. If the printer is not
present in the list, it is likely not connected properly.

### The printer outputs random text

For most printers, the correct driver should be automatically detected
and selected. However, in some cases, the automatic detection mechanism
might not be enough, and if no driver is found, the printer might print
random characters.

The solution is to manually select the corresponding driver. On the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box homepage,
click on `Printers Server`{.interpreted-text role="guilabel"}, go to the
`Printers`{.interpreted-text role="guilabel"} tab and select the printer
in the list. In the `Administration`{.interpreted-text role="guilabel"}
drop-down menu, click on `Modify Printer`{.interpreted-text
role="guilabel"}. Follow the steps and select the *make* and *model*
corresponding to the printer.

![Edit the printer connected to the IoT box.](troubleshooting/modify-printer.png){.align-center}

:::: note
::: title
Note
:::

Epson and Star receipt printers and Zebra label printers do not need a
driver to work. Make sure that no driver is selected for those printers.
::::

#### Epson configuration special case

Most Epson printers support printing receipts in Odoo
`POS (Point of Sale)`{.interpreted-text role="abbr"} using the [GS v
0]{.title-ref} command. However, the following Epson printer models do
not support this command:

- TM-U220
- TM-U230
- TM-P60
- TMP-P60II

Bypass this issue by configuring the printer to use the [ESC
\*]{.title-ref} command instead.

##### Process to force ESC \* command

###### Epson printer compatibility

The first step is to check whether the printer is incompatible with [GS
v 0]{.title-ref} command.

::: seealso
- [Epson GS v 0
  documentation](https://reference.epson-biz.com/modules/ref_escpos/index.php?content_id=94)
  for [GS v 0]{.title-ref} compatible printers.
- [Epson ESC \*
  documentation](https://reference.epson-biz.com/modules/ref_escpos/index.php?content_id=88)
  for [ESC \*]{.title-ref} compatible printers.
:::

If the printer is not compatible with the [ESC \*]{.title-ref} command
then the following process is not possible. Should the printer be
compatible to use the [ESC \*]{.title-ref} command to print, follow this
process to configure the printer with the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box.

###### IoT box configuration for ESC \*

To configure the `IoT (Internet of Things)`{.interpreted-text
role="abbr"} box to use the [ESC \*]{.title-ref} command to print, go to
the `IoT (Internet of Things)`{.interpreted-text role="abbr"} box
homepage by navigating to `IoT app --> IoT
Boxes`{.interpreted-text role="menuselection"}. Then click on the
`IP address`{.interpreted-text role="guilabel"} and this will direct to
the `IoT (Internet of
Things)`{.interpreted-text role="abbr"} box homepage.

**Choosing the printer**

Now click on the `Printers server`{.interpreted-text role="guilabel"}
button. This will redirect the browser to the *CUPS* page. Next, go to
`Administration --> Printers --> Add Printer`{.interpreted-text
role="menuselection"}, choose the printer that should be modified, and
then click `Continue`{.interpreted-text role="guilabel"}.

:::::: tip
::: title
Tip
:::

If the name of the printer is still uncertain, take the following steps:

1.  Take note of the listed printers on the *CUPS* page.
2.  Turn the printer off and refresh the page.
3.  Now compare the difference with the first list to see which printer
    disappeared.
4.  Turn the printer back on and refresh the page again.
5.  Double-check the list again to see if the printer re-appears.
6.  The printer that disappeared and reappears again on the listed
    printers is the name of the printer in question.

:::: note
::: title
Note
:::

This can be `Unknown`{.interpreted-text role="guilabel"} under
`Local printers`{.interpreted-text role="guilabel"}.
::::
::::::

**CUPS naming convention**

[CUPS]{.title-ref} will prompt the administrator for three pieces of
information: the `Name`{.interpreted-text role="guilabel"},
`Description`{.interpreted-text role="guilabel"} and the
`Location`{.interpreted-text role="guilabel"}. The last two pieces of
information do not need to be specific, however, the
`Name`{.interpreted-text role="guilabel"} should follow a particular
convention to work with the [ESC \*]{.title-ref} command.

The `Name`{.interpreted-text role="guilabel"} should match this
convention:
[\<printer_name\>\_\_IMC\_\<param_1\>\_\<param_2\>\_\...\_\<param_n\>\_\_]{.title-ref}

A breakdown of the naming convention:

- \`printer_name\`: This is the printer name. It can be any character as
  long as it does not contain [\_]{.title-ref}, [/]{.title-ref},
  [\#]{.title-ref}, or [ ]{.title-ref} (space character).
- \`IMC\`: This stands for *Image Mode Column* (the simplified name for
  [ESC \*]{.title-ref}).
- \`param_1\`: This stands for the specific parameter:
  - \`SCALE\<X\>\`: Scale of the picture (with the same aspect ratio).
    [X]{.title-ref} should be an integer describing the scale percentage
    that should be used.

    ::: example
    [100]{.title-ref} is the original size, [50]{.title-ref} is half the
    size, [200]{.title-ref} is twice the size.
    :::

  - \`LDV\`: *Low Density Vertical* (will be set to *High Density
    Vertical* if not specified).

  - \`LDH\`: *Low Density Horizontal* (will be set to *High Density
    Horizontal* if not specified).

    :::: note
    ::: title
    Note
    :::

    *Density* parameters might need to be configured in a particular way
    depending on the printer model.
    ::::

::: seealso
Visit [Epson\'s ESC \*
documentation](https://reference.epson-biz.com/modules/ref_escpos/index.php?content_id=88)
and click on the printer model printer in the table above to see if the
printer should set these parameters.
:::

::: example
The following are examples of proper and improper name formatting:

Proper name formatting:

- [EPSONTMm30II\_\_IMC\_\_]{.title-ref}
- [EPSON_TM_U220\_\_IMC_LDV_LDH_SCALE80\_\_]{.title-ref}

Improper name formatting (this will not prevent printing, but the result
might not have the expected printed output):

- [EPSON TMm 30II]{.title-ref} -\> The name cannot have spaces.
- [EPSONTMm30II]{.title-ref} -\> The name itself is correct, but it will
  not use [ESC \*]{.title-ref}.
- [EPSONTMm30II\_\_IMC]{.title-ref} -\> This name is missing the end
  [\_\_]{.title-ref}.
- [EPSONTMm30II\_\_IMC_XDV\_\_]{.title-ref} -\> The parameter
  [XDV]{.title-ref} does not match any existing parameters.
- [EPSONTMm30II\_\_IMC_SCALE\_\_]{.title-ref} -\> The parameter
  [SCALE]{.title-ref} is missing the scale value.
:::

**Finish adding a printer**

After setting the name of the printer with the appropriate naming
convention, click `Continue`{.interpreted-text role="guilabel"}. Next,
set the `Make`{.interpreted-text role="guilabel"} value to
`Raw`{.interpreted-text role="guilabel"} and for the
`Model`{.interpreted-text role="guilabel"} value, set this to
`Raw Queue (en)`{.interpreted-text role="guilabel"}.

After completing these steps, click `Add Printer`{.interpreted-text
role="guilabel"}. If everything was done correctly, the page should
redirect to the *Banners* page.

At this point the printer should have been created, now the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box just needs
to detect it and then sync to Odoo\'s server (this could take a few
minutes).

**Adding the printer to Odoo PoS**

Once the printer is visible on the Odoo database, do not forget to
choose it in the `` PoS
(Point of Sale)`configuration as the :abbr:`IoT (Internet of Things) ``{.interpreted-text
role="abbr"} printer. Navigate to
`Pos App --> Settings --> Connected Devices --> IoT Box --> Receipt Printer -->
Save`{.interpreted-text role="menuselection"}.

:::: note
::: title
Note
:::

If the printer was set up incorrectly (it is still printing random text
or the printed receipt is too big or small), then it cannot be modified
via the printer name with *CUPS*. Instead, the above process can be
repeated to set up another printer from scratch to create one with
modified parameters.
::::

**Example setup of the Epson TM-U220B printer using ESC**

::: spoiler
Click this text to reveal the example

The following is an example of the troubleshooting process for a
TM-U220B printer model using the [ESC \*]{.title-ref} command. The
receipt pictured below is an example of a receipt that is printing
correctly due to proper formatting (in theory):

![Properly formatted receipt picture from a demo database.](troubleshooting/receipt-example.png){.align-center}

Trying to print this receipt right-away prior to the proper formatting
will not work as the TM-U220B printer model does not support [GS v
0]{.title-ref}. Instead random characters will print:

![Printer paper with seemingly random characters.](troubleshooting/receipt-print-random-letters.png){.align-center}

To properly configure formatting for the Epson TM-U220B printer model
take the following steps.

After consulting Epson\'s website for compatibility for both of the
commands: [GS v
0](https://reference.epson-biz.com/modules/ref_escpos/index.php?content_id=94)
and [ESC
\*](https://reference.epson-biz.com/modules/ref_escpos/index.php?content_id=88),
it can be seen that indeed the TM-U220B is not compatible with [GS v
0]{.title-ref}, but is compatible with [ESC \*]{.title-ref}.

![Epson compatibility evaluation from Epson website.](troubleshooting/epson-compatibility-compare.png){.align-center}

When adding the printer, *CUPS* will ask which printer should be added:

![Administration menu, add printer selection.](troubleshooting/add-printer.png){.align-center}

In this case, the printer is connected via
`USB (Universal Serial Bus)`{.interpreted-text role="abbr"} so it won\'
be part of the `Discovered Network Printers`{.interpreted-text
role="guilabel"}. Instead it is likely part of the
`Unknown`{.interpreted-text role="guilabel"} selection under
`Local Printers`{.interpreted-text role="guilabel"}. By unplugging the
printer\'s `USB (Universal Serial Bus)`{.interpreted-text role="abbr"}
cable from the `IoT (Internet of Things)`{.interpreted-text role="abbr"}
box and refreshing the page, the `Unknown`{.interpreted-text
role="guilabel"} printer disappears. By plugging it back in, the printer
reappears, so it can be said that this is the printer in question.

For the naming convention, since it needs to print using the [ESC
\*]{.title-ref} command, it is imperative to add [\_\_IMC]{.title-ref}.
Reference the printer model on [Epson\'s ESC \*
site](https://reference.epson-biz.com/modules/ref_escpos/index.php?content_id=88)
to find out more about the *density* parameters.

![Epson TM-U220 specifications on manufacturer\'s website.](troubleshooting/epson-tm-u220-specification.png){.align-center}

For this particular model, TM-U220, [m]{.title-ref} should be equal to 0
or 1. While referencing the `Description`{.interpreted-text
role="guilabel"} below the pink box in the above picture, the
[m]{.title-ref} values could be 0, 1, 32 or 33. So in this printers
case, the [m]{.title-ref} value can NOT be 32 or 33 (otherwise there
will be random characters printed).

The table includes the numeric values: 32 and 33, they both occur if the
`Number of
bits for vertical data`{.interpreted-text role="guilabel"} is set to 24.
This means that is a *High Vertical Density*. In the case of configuring
the Epson TM-U220, the *Low Vertical Density* will need to be forced, as
this printer model does not support *High Vertical Density* for this
command [ESC \*]{.title-ref}.

To add a *Low Vertical Density*, add the [LDV]{.title-ref} parameter to
the naming convention.

![Add a \*Low Vertical Density\* (the \`LDV\` parameter) to the naming convention.](troubleshooting/add-printer-filled.png){.align-center}

Click `Continue`{.interpreted-text role="guilabel"} to proceed. Next,
set the `Make`{.interpreted-text role="guilabel"} value to
`Raw`{.interpreted-text role="guilabel"} and for the
`Model`{.interpreted-text role="guilabel"} value, set this to
`Raw Queue (en)`{.interpreted-text role="guilabel"}.

![Epson TM-U220 specifications on manufacturers website.](troubleshooting/add-printer-add.png){.align-center}

However, when trying to print with the naming convention:
[EpsonTMU220B\_\_IMC_LDV\_\_]{.title-ref}, it prints the receipt, but it
is too big and outside the margin. To resolve this, add a new printer
(and naming convention) with the [SCALE\<X\>]{.title-ref} parameter to
adapt to our receipt size.

Here are some examples:

  Printer Naming Convention                                                        [EpsonTMU220B\_\_IMC_LDV\_\_]{.title-ref}                                                                                 [EpsonTMU220B\_\_IMC_LDV_SCALE75\_\_]{.title-ref}                                                                                         [EpsonTMU220B\_\_IMC_LDV_LDH\_\_]{.title-ref}                                                                                     [EpsonTMU220B\_\_IMC_LDV_LDH_SCALE35\_\_]{.title-ref}
  -------------------------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------
  ![Receipt example format.](troubleshooting/receipt-example.png){.align-center}   ![Receipt format using naming convention: EpsonTMU220B\_\_IMC_LDV\_\_.](troubleshooting/tm-u220-ldv.png){.align-center}   ![Receipt format using naming convention: EpsonTMU220B\_\_IMC_LDV_SCALE75\_\_.](troubleshooting/tm-u220-ldv-scale75.png){.align-center}   ![Receipt format using naming convention: EpsonTMU220B\_\_IMC_LDV_LDH\_\_.](troubleshooting/tm-u220-ldv-hdv.png){.align-center}   ![Receipt format using naming convention: EpsonTMU220B\_\_IMC_LDV_LDH_SCALE35\_\_.](troubleshooting/tm-u220-ldv-hdv-scale35.png){.align-center}
:::

### DYMO LabelWriter print issue

The DYMO LabelWriter has a known issue in printing with the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box. The
OpenPrinting CUPS server installs the printer using
`Local RAW Printer`{.interpreted-text role="guilabel"} drivers. In order
to print anything, the correct `Make and Model`{.interpreted-text
role="guilabel"} needs to be set, so the correct driver is referenced
when using the device.

Additionally, a new printer needs to be added to reduce a print delay
that occurs after updating the driver.

:::: important
::: title
Important
:::

The DYMO LabelWriter 450 DUO printer is the recommended DYMO printer for
use with Odoo and the `IoT (Internet of Things)`{.interpreted-text
role="abbr"} box. It **must** already be connected to, and recognized
on, the `IoT (Internet of Things)`{.interpreted-text role="abbr"} box.

The DYMO LabelWriter 450 DUO printer contains two printers in one: a
label printer and a tape printer. Choosing the correct model (either
DYMO LabelWriter 450 DUO Label (en) or DYMO LabelWriter 450 DUO Tape
(en)) is crucial when configuring the following processes.

To keep things consistent, both of the following processes detail the
configuration for the DYMO LabelWriter 450 DUO Label (en) model. Change
the model when needed.
::::

#### DYMO LabelWriter not printing {#troubleshooting/dymo/update_drivers}

In the case where the DYMO LabelWriter is not printing anything, a new
driver needs to be installed.

First, open the OpenPrinting CUPS console by clicking
`Printers server`{.interpreted-text role="menuselection"} at the bottom
of the `IoT (Internet of Things)`{.interpreted-text role="abbr"} box
homepage. Next, click on `Printers`{.interpreted-text
role="menuselection"} in the top menu. Click into the printer in
question, and select `Maintenance`{.interpreted-text role="guilabel"} in
the first drop-down menu. Then, select
`Modify Printer`{.interpreted-text role="guilabel"} in the second
drop-down menu.

![Modify the make and model of the DYMO LabelWriter. Maintenance and Modify drop-down menus
highlighted.](troubleshooting/main-modify.png){.align-center}

Next, select the specific network connection/printer that the
modification should be made on. Click `Continue`{.interpreted-text
role="guilabel"}.

![Printer selection screen with Continue highlighted.](troubleshooting/modify-select-printer.png){.align-center}

On the next page, click `Continue`{.interpreted-text role="guilabel"} to
proceed to set the `Make`{.interpreted-text role="guilabel"} of the
printer.

![Printer modification screen with Continue highlighted.](troubleshooting/modify-printer-dymo.png){.align-center}

Under `Make`{.interpreted-text role="guilabel"} select
`DYMO`{.interpreted-text role="guilabel"} from the menu. Click on
`Continue`{.interpreted-text role="guilabel"} to set the
`Model`{.interpreted-text role="guilabel"}.

![Setting the make page, with DYMO and continue highlighted.](troubleshooting/setting-make.png){.align-center}

On the following page, set the `Model`{.interpreted-text
role="guilabel"} to
`DYMO LabelWriter 450 DUO Label (en)`{.interpreted-text role="guilabel"}
(or whichever DYMO printer model is being used). Click on
`Modify Printer`{.interpreted-text role="guilabel"} to complete setting
the new driver, a confirmation page will appear.

![Setting the printer model page with DYMO LabelWriter 450 DUO Label (en) highlighted.](troubleshooting/setting-model.png){.align-center}

After being redirected to a confirmation page, acknowledging a
successful update, click on the `Printers`{.interpreted-text
role="menuselection"} button in the top menu.

All the printers installed on the OpenPrinting CUPS server appear,
including the newly updated:
`DYMO LabelWriter 450 DUO Label`{.interpreted-text role="guilabel"} (or
whichever DYMO printer model is being used). Click into the printer that
was just updated.

To print a test label, click on the `Maintenance`{.interpreted-text
role="guilabel"} drop-down menu to the left of the
`Administration`{.interpreted-text role="guilabel"} drop-down menu, and
select `Print Test Page`{.interpreted-text role="guilabel"}. The test
label will print out with a ten-second delay if the driver update was
successful.

![Printing a test page from the administration drop-down menu in the OpenPrinting CUPs
server.](troubleshooting/print-test.png){.align-center}

To reduce this delay a new printer will need to be added, follow the
process below.

#### DYMO LabelWriter print delay

To resolve the delay issue after modifying the driver, the printer
**must** be reinstalled. To reinstall the printer, open the OpenPrinting
CUPS administration page by clicking `Printers server`{.interpreted-text
role="menuselection"}, at the bottom of the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box homepage.
Then, click on `Administration`{.interpreted-text role="menuselection"}
in the top menu, then click `Add
a Printer`{.interpreted-text role="guilabel"}.

:::: tip
::: title
Tip
:::

If the DYMO LabelWriter 450 DUO printer is not printing at all, or is
not recognizable (has a RAW driver type), then update the drivers on the
device. See `troubleshooting/dymo/update_drivers`{.interpreted-text
role="ref"}.
::::

![Add a printer button highlighted on the Printer CUPS management page.](troubleshooting/add-printer-dymo.png){.align-center}

On the next screen, in the `Local Printers`{.interpreted-text
role="guilabel"} section, select the `DYMO
LabelWriter 450 DUO Label (DYMO LabelWriter 450 DUO Label)`{.interpreted-text
role="guilabel"} (or whichever DYMO printer model is being used)
pre-installed printer. Click `Continue`{.interpreted-text
role="guilabel"}.

![Add a printer screen on OpenPrinting CUPS with DYMO LabelWriter 450 DUO Label highlighted.](troubleshooting/local-printer.png){.align-center}

On the following screen, modify the `Name`{.interpreted-text
role="guilabel"} to something recognizable, as the original printer will
still be present. Click `Continue`{.interpreted-text role="guilabel"} to
be taken to the next screen.

![Rename printer page in the \'Add a Printer\' flow, with the name field highlighted.](troubleshooting/rename-printer.png){.align-center}

Next, choose the `Model`{.interpreted-text role="guilabel"}. Select
`DYMO LabelWriter 450 DUO Label (en)`{.interpreted-text role="guilabel"}
(or whichever DYMO printer model is being used), and finally, click
`Add Printer`{.interpreted-text role="guilabel"} to complete the
installation.

![Choose model screen on the OpenPrinting CUPS console with model and add a printer
highlighted.](troubleshooting/choose-printer.png){.align-center}

After being redirected to a confirmation page, acknowledging a
successful installation, click on the `Printers`{.interpreted-text
role="menuselection"} button in the top menu.

All the printers installed on the OpenPrinting CUPS server appear,
including the newly installed:
`DYMO LabelWriter 450 DUO Label`{.interpreted-text role="guilabel"} (or
whichever DYMO printer model is being used). Click into the printer that
was just installed.

![Printer page with newly installed printer highlighted.](troubleshooting/printer-page.png){.align-center}

To print a test label, click on the `Maintenance`{.interpreted-text
role="guilabel"} drop-down menu to the left of the
`Administration`{.interpreted-text role="guilabel"} drop-down menu, and
select `Print Test Page`{.interpreted-text role="guilabel"}. The test
label should print out immediately (one-to-two seconds delay).

![Printing a test page from the administration drop-down menu in the OpenPrinting CUPs
server.](troubleshooting/print-test.png){.align-center}

### The Zebra printer does not print anything

Zebra printers are quite sensitive to the format of the Zebra
Programming Language (ZPL) code that is printed. If nothing comes out of
the printer or blank labels are printed, try changing the format of the
report that is sent to the printer by accessing
`Settings --> Technical -->
User Interface --> Views`{.interpreted-text role="menuselection"} in
`developer mode <developer-mode>`{.interpreted-text role="ref"} and look
for the corresponding template.

::: seealso
Check out Zebra\'s instructions on printing
`ZPL (Zebra Programming Language)`{.interpreted-text role="abbr"} files
[here](https://supportcommunity.zebra.com/s/article/Print-a-zpl-file-using-the-Generic-Text-Printer).
:::

## Barcode scanner

### The characters read by the barcode scanner do not match the barcode

By default, most barcode scanners are configured in the US QWERTY
format. If the barcode scanner uses a different layout, go to the form
view of the device (`IoT App --> Devices -->
Barcode Device`{.interpreted-text role="menuselection"}) and select the
correct format.

### Nothing happens when a barcode is scanned

Make sure that the correct device is selected in the
`Point of Sale`{.interpreted-text role="menuselection"} configuration
and that the barcode is configured to send an [ENTER]{.title-ref}
character (keycode 28) at the end of every barcode. To do so, navigate
to `PoS app --> 3-Dot Menu on the PoS --> IoT Box section
--> Edit`{.interpreted-text role="menuselection"}.

### The barcode scanner is detected as a keyboard

:::: important
::: title
Important
:::

Some barcode scanners do not advertise themselves as barcode scanners
but as a USB keyboard instead, and will not be recognized by the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box.
::::

The device type can be manually changed by going to its form view
(`IoT App -->
Devices --> Barcode Device`{.interpreted-text role="menuselection"}) and
activating the `Is scanner`{.interpreted-text role="guilabel"} option.

![Modifying the form view of the barcode scanner.](troubleshooting/barcode-scanner-settings.png){.align-center}

### Barcode scanner processes barcode characters individually

When accessing the mobile version of Odoo from a mobile device, or
tablet, paired with a barcode scanner, via the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box, the
scanner may process each barcode character as an individual scan. In
this case, the *Keyboard Layout* option **must** be filled out with the
appropriate language of the barcode scanner on the *Barcode Scanner*
form page.

:::: tip
::: title
Tip
:::

Access the barcode scanner form page by navigating to
`IoT App --> Devices -->
Barcode Scanner`{.interpreted-text role="menuselection"}.
::::

![Barcode scanner form page, with keyboard layout option highlighted.](troubleshooting/keyboard-layout.png){.align-center}

The `Keyboard Layout`{.interpreted-text role="guilabel"} is language
based, and the options available vary, depending on the device and the
language of the database. For example: `English (UK)`{.interpreted-text
role="guilabel"}, `English
(US)`{.interpreted-text role="guilabel"}, etc.

## Cash drawer

### The cash drawer does not open

The cash drawer should be connected to the printer and the
`Cash drawer`{.interpreted-text role="guilabel"} checkbox should be
ticked in the `PoS (Point of Sale)`{.interpreted-text role="abbr"}
configuration. To do so, navigate to
`POS app --> 3-Dot Menu on the POS --> IoT Box section --> Edit --> Receipt Printer
--> Cashdrawer checkbox`{.interpreted-text role="menuselection"}.

## Scale

Scales play a crucial role in the checkout process, especially for
products sold by weight, rather than fixed pricing.

### Set up Ariva S scales

Odoo has determined that a specific setting in Ariva S series scales
(manufactured by Mettler-Toledo, LLC.) needs modification, and a
dedicated Mettler `USB (Universal Serial
Bus)`{.interpreted-text role="abbr"}-to-proprietary RJ45 cable is
required for the scale to function with Odoo\'s `IoT
(Internet of Things)`{.interpreted-text role="abbr"} box.

To correctly configure the scale for recognition by the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box, follow
this setup process for the Ariva S series scales.

:::: important
::: title
Important
:::

It is crucial to use the official Mettler
`USB (Universal Serial Bus)`{.interpreted-text role="abbr"}-to-RJ45
cable during this process.
::::

#### Cable

The Mettler part number is 72256236 -
`USB (Universal Serial Bus)`{.interpreted-text
role="abbr"}-to-`POS (Point of
Sale)`{.interpreted-text role="abbr"} cable. Contact Mettler, or a
partner, to purchase an authentic cable. Note that **no other** cable
outside of this Mettler cable works for this configuration. Using a
serial-only cable attached to a
serial-to-`USB (Universal Serial Bus)`{.interpreted-text role="abbr"}
adapter is **not** effective.

![Authentic Mettler USB to POS cable, part number 72256236.](troubleshooting/cable-mettler.png){.align-center}

#### Setup

Refer to Mettler\'s Setup Guide for Ariva S series scales during the
following configuration: [Ariva Checkout Scale User\'s
Guide](https://www.mt.com/dam/RET_DOCS/Ariv.pdf).

To begin, go to page 17 in the above manual for *Setup*. This guide
lists potential settings for the Ariva S series scales.

Follow the instructions, along with the following process:

1.  Hold the **\>T\<** button for eight seconds, or until
    `CONF`{.interpreted-text role="guilabel"} appears.

2.  Press **\>T\<** until `GRP 3`{.interpreted-text role="guilabel"}
    appears, then press **\>0\<** to confirm.

3.  At step `3.1`{.interpreted-text role="guilabel"}, make sure the
    value is set to `1`{.interpreted-text role="guilabel"} (USB Virtual
    COM ports) by pressing **\>T\<** to cycle through the options.

4.  Press **\>0\<** until `3.6`{.interpreted-text role="guilabel"} (if
    available, otherwise skip the next step).

5.  At step `3.6`{.interpreted-text role="guilabel"}, make sure the
    value is set to `3`{.interpreted-text role="guilabel"} (8217
    Mettler-Toledo (WO)) by pressing **\>T\<** to cycle through the
    options.

6.  Press **\>0\<** (multiple times if necessary) until
    `GRP 4`{.interpreted-text role="guilabel"} appears.

7.  Press **\>T\<** until `EXIT`{.interpreted-text role="guilabel"}
    appears.

    :::: important
    ::: title
    Important
    :::

    Do **not** make any other changes unless otherwise needed.
    ::::

8.  Press **\>0\<**.

9.  Press **\>0\<** again to `SAVE`{.interpreted-text role="guilabel"};
    the scale restarts.

10. Reboot the IoT box or restart the Windows virtual IoT service. The
    scale should then appear as Toledo 8217, as opposed to the previous
    display, where it appeared as Adam Equipment Serial.




--- SOURCE: general/iot/config/updating_iot.md ---

# Updating (IoT)

Due to the complexity of the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box, and
virtual Windows `IoT
(Internet of Things)`{.interpreted-text role="abbr"} box, the term
\'updating\' can mean several different things.

The actual drivers can be updated, the core code on the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box can be
updated, or a new image can be flashed (using a physical
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box).

This document explores the various ways to update
`IoT (Internet of Things)`{.interpreted-text role="abbr"} boxes to
ensure smooth operation of `IoT (Internet of Things)`{.interpreted-text
role="abbr"} box processes and devices.

## Flashing the SD card on IoT box {#iot/config/flash}

:::: important
::: title
Important
:::

This update does **not** apply to the Windows
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box (Odoo 16
and higher).

To update the Windows `IoT (Internet of Things)`{.interpreted-text
role="abbr"}, first, uninstall the previous version of the Odoo Windows
program, and then reinstall it using the most up-to-date installation
package.

To begin the installation, navigate to the Odoo 16 (or higher)
installation package for Enterprise or Community - Windows edition, at
[Odoo\'s download page](https://odoo.com/download).
::::

In some circumstances, the `IoT (Internet of Things)`{.interpreted-text
role="abbr"} box\'s micro SD Card may need to be re-flashed with
*Etcher* software to benefit from Odoo\'s latest
`IoT (Internet of Things)`{.interpreted-text role="abbr"} image update.
This means the Odoo `IoT (Internet of Things)`{.interpreted-text
role="abbr"} box software may need to be updated in instances of a new
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box, or when a
handler\'s update, or an update from the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box home page,
does not resolve issues.

:::: note
::: title
Note
:::

\- It is often necessary to re-flash the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box\'s image
after upgrading the Odoo database to a new version. - A computer with a
micro SD card reader/adapter is **required** to re-flash the micro SD
card.
::::

First, begin by downloading
[Etcher](https://www.balena.io/etcher#download-etcher). It is a free,
open-source utility, used for burning image files onto drives. After the
download completes, install and launch the program on the computer.

Then, download the latest `IoT (Internet of Things)`{.interpreted-text
role="abbr"} image from
[nightly](http://nightly.odoo.com/master/iotbox), which will be labeled
as [iotbox-latest.zip]{.title-ref}. This particular image is compatible
with *all* supported versions of Odoo.

After this step is complete, insert the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box\'s micro
SD card into the computer or reader. Open *Etcher*, and select
`Flash from file`{.interpreted-text role="guilabel"}, then find and
select the [iotbox-latest.zip]{.title-ref} image and extract it. Next,
select the drive the image should be burned to.

Lastly, click `Flash`{.interpreted-text role="guilabel"}, and wait for
the process to finish.

![Balena\'s Etcher software dashboard.](updating_iot/etcher-app.png){.align-center}

:::: tip
::: title
Tip
:::

Balena\'s *Etcher* software also allows for the administrator to flash
the `SD (Secure
Digital)`{.interpreted-text role="abbr"} card from a
`URL (Uniform Resource Locator)`{.interpreted-text role="abbr"}. To
flash from a `URL (Uniform
Resource Locator)`{.interpreted-text role="abbr"}, simply click
`Flash from URL`{.interpreted-text role="guilabel"}, instead of
`Flash from
file`{.interpreted-text role="guilabel"}.

Then, enter the following:
[http://nightly.odoo.com/master/iotbox/iotbox-latest.zip]{.title-ref}.

![A view of Balena\'s Etcher software, with the flash from URL option highlighted.](updating_iot/url-flash.png){.align-center}
::::

:::: note
::: title
Note
:::

An alternative software for flashing the micro SD card is [Raspberry Pi
Imager](https://www.raspberrypi.com/software/).
::::

## Windows IoT update

Windows virtual `IoT (Internet of Things)`{.interpreted-text
role="abbr"} box may occasionally need an update to work properly.

The following processes cover the
`uninstallation <iot/config/uninstall-windows-iot>`{.interpreted-text
role="ref"} and
`re-installation <iot/config/re-install-windows-iot>`{.interpreted-text
role="ref"} of the Windows virtual `IoT
(Internet of Things)`{.interpreted-text role="abbr"} box.

### Uninstalling Windows IoT {#iot/config/uninstall-windows-iot}

Prior to upgrading the Windows virtual
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box, the
previous version should be uninstalled first.

:::: important
::: title
Important
:::

Before uninstalling a previous version of the Windows virtual
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box, ensure
that there is a newer version of Windows virtual
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box available,
compared to the version currently installed. To do so, navigate to the
[Odoo Nightly builds](https://nightly.odoo.com/) page.

On the `Odoo Nightly builds`{.interpreted-text role="guilabel"} page,
navigate to `Builds (stable version)
--> windows/`{.interpreted-text role="menuselection"} to view the date
next to the `odoo_(version).latest.exe`{.interpreted-text role="file"}
file; where *(version)* is equal to the version of Odoo (e.g. 16.0,
17.0). The latest version of the Windows virtual
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box can be
downloaded by selecting this file, or it is always available at the
[Odoo Download](https://odoo.com/download/) page.
::::

Uninstalling the Windows virtual
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box is done
through the Windows program manager.

On any version of Windows, search for [program]{.title-ref} to open the
`Programs --> Programs
and Features`{.interpreted-text role="menuselection"} section of the
`Control Panel`{.interpreted-text role="guilabel"}. Then, select
`Uninstall or change
a program`{.interpreted-text role="guilabel"}. Next, search for
[Odoo]{.title-ref}, and click the `... (three dot)`{.interpreted-text
role="guilabel"} menu on the `Odoo.exe`{.interpreted-text
role="guilabel"} program to uninstall.

Confirm the uninstallation, and follow the steps to uninstall through
the Odoo uninstall wizard.

### Download and re-install {#iot/config/re-install-windows-iot}

The latest version of the Windows virtual
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box can be
downloaded from the [Odoo Nightly builds](https://nightly.odoo.com/)
page or it is always available at the [Odoo
Download](https://odoo.com/download/) page.

To download from the `Odoo Nightly builds`{.interpreted-text
role="guilabel"} page, navigate to `Builds
(stable version) --> windows/`{.interpreted-text role="menuselection"}
to and select the `odoo_(version).latest.exe`{.interpreted-text
role="file"} file; where *(version)* is equal to the version of Odoo
(e.g. 16.0, 17.0).

To download from the `Odoo Download`{.interpreted-text role="guilabel"}
page, find the section for the version of Odoo (e.g. 16.0, 17.0), and
select the `Download`{.interpreted-text role="guilabel"} button for
`Windows`{.interpreted-text role="guilabel"}.

Next, install and setup the downloaded Odoo `.exe`{.interpreted-text
role="file"} file. After the instructions screen, click
`Next`{.interpreted-text role="guilabel"} to start the installation, and
agree to the `TOS (Terms of Service)`{.interpreted-text role="abbr"}.

During the next step of the re-installation, select
`Odoo IoT`{.interpreted-text role="guilabel"} from the `Select
the type of install`{.interpreted-text role="guilabel"} drop-down menu.

::: example
For reference, the following should be installed:

- `Odoo server`{.interpreted-text role="guilabel"}
- `Odoo IoT`{.interpreted-text role="guilabel"}
- `Nginx WebServer`{.interpreted-text role="guilabel"}
- `Ghostscript interpreter`{.interpreted-text role="guilabel"}
:::

Ensure there is enough space on the computer for the installation, then
click `Next`{.interpreted-text role="guilabel"}.

### Set the destination and complete the installation

To complete the re-installation, select the
`Destination Folder`{.interpreted-text role="guilabel"}, and click
`Install`{.interpreted-text role="guilabel"}.

:::: warning
::: title
Warning
:::

Choosing [C:odoo]{.title-ref} as the install location allows for the
*Nginx* server to start. Odoo\'s Windows virtual
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box software
should **not** be installed inside any of the Windows user\'s
directories. Doing so does **not** allow for *Nginx* to initialize.
::::

The installation may take a few minutes. When complete, click
`Next`{.interpreted-text role="guilabel"} to continue.

Then, ensure that the `Start Odoo`{.interpreted-text role="guilabel"}
box is checked, and click `Finish`{.interpreted-text role="guilabel"}.
After installation, the Odoo server runs, and automatically opens
[http://localhost:8069]{.title-ref} on a web browser. The webpage should
display the `IoT (Internet of Things)`{.interpreted-text role="abbr"}
box homepage.

:::: tip
::: title
Tip
:::

A `restart <iot/restart_windows_iot>`{.interpreted-text role="ref"} of
the Windows IoT program may be necessary if the web browser does not
display anything.
::::

## Update from the IoT box home page {#iot/config/homepage-upgrade}

In the background, the `IoT (Internet of Things)`{.interpreted-text
role="abbr"} box uses a version of Odoo code to run and connect to the
Odoo database. This code may need to be updated in order for the
`IoT (Internet
of Things)`{.interpreted-text role="abbr"} box to operate effectively.
This operation should be completed on a routine basis, to ensure the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} system, and
its processes, stay up-to-date.

Go to the `IoT (Internet of Things)`{.interpreted-text role="abbr"} box
home page by navigating to `IoT app
--> IoT Boxes`{.interpreted-text role="menuselection"}, and clicking on
the `IP address`{.interpreted-text role="guilabel"} of the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box. Then,
click on `Update`{.interpreted-text role="guilabel"} (next to the
version number).

If a new version of the `IoT (Internet of Things)`{.interpreted-text
role="abbr"} box image is available, an
`Upgrade to _xx.xx_`{.interpreted-text role="guilabel"} button appears
at the bottom of the page. Click this button to upgrade the unit, at
which point the `IoT (Internet of Things)`{.interpreted-text
role="abbr"} box flashes itself to the newer version. All of the
previous configurations are then saved.

:::: important
::: title
Important
:::

This process can take more than 30 minutes. Do **not** turn off, or
unplug, the `IoT
(Internet of Things)`{.interpreted-text role="abbr"} box, as it would
leave it in an inconsistent state. This means the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box needs to
be `re-flashed <iot/config/flash>`{.interpreted-text role="ref"} with a
new image.
::::

![IoT box software upgrade in the IoT Box Home Page.](updating_iot/flash-upgrade.png){.align-center}

## Handler (driver) update

There may be some instances where drivers or interfaces need to be
updated for individual devices (e.g. scales, measurement tools, etc.).
The IoT handler\'s (drivers and interfaces) code can be modified by
syncing them with the configured server handler\'s code.

This can be helpful in instances where
`IoT (Internet of Things)`{.interpreted-text role="abbr"} devices (e.g.
scales, measurement tools, etc.) are not working properly with the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box.

For both the Windows `IoT (Internet of Things)`{.interpreted-text
role="abbr"} (Odoo 16 and higher) and physical `IoT
(Internet of Things)`{.interpreted-text role="abbr"} box, this process
can be performed manually from the `IoT (Internet of
Things)`{.interpreted-text role="abbr"} box home page. Go to the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box home page
by navigating to `IoT app --> IoT Boxes`{.interpreted-text
role="menuselection"}, and clicking on the
`IP address`{.interpreted-text role="guilabel"} of the `IoT
(Internet of Things)`{.interpreted-text role="abbr"} box.

Next, click `Handlers list`{.interpreted-text role="guilabel"}, and then
select `Load Handlers`{.interpreted-text role="guilabel"} at the bottom
of the page.

![Handlers list on an IoT box with the load handlers button highlighted.](updating_iot/load-handlers.png){.align-center}

:::: important
::: title
Important
:::

Handler\'s code is fetched from the configured server, and it needs to
be up-to-date to have the latest fixes and patches.
::::

:::: note
::: title
Note
:::

A handler update is also performed automatically each time the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box is
restarted. The only exception to this process is if the *Automatic
drivers update* is unchecked in the form view of the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box on the
Odoo server. This setting can be reached by going to
`IoT App --> Select the IoT box --> Automatic
drivers update`{.interpreted-text role="menuselection"}.
::::




--- SOURCE: general/iot/config/windows_iot.md ---

# Connect Windows IoT Odoo

A Virtual IoT box is a computer program that needs to be downloaded and
installed on a Windows computer. This requires a Windows operating
system with an Odoo 16 or later database.

The Windows virtual `IoT (Internet of Things)`{.interpreted-text
role="abbr"} box works the same way as a physical `IoT
(Internet of Things)`{.interpreted-text role="abbr"} box, with the
ability to run most of the same devices. All `POS (Point
of Sale)`{.interpreted-text role="abbr"} devices work with it, such as a
scale or printer. Payment terminals will also work, but it should be
noted that `MRP (Material Requirement Planning)`{.interpreted-text
role="abbr"} devices are not compatible. *These include cameras or
measurement tools.*

## Pre-requisites

The following items will be needed to complete the Windows
`IoT (Internet of Things)`{.interpreted-text role="abbr"} installation.

- Odoo 16 database or any version above.

- `IoT (Internet of Things)`{.interpreted-text role="abbr"} compatible
  devices (except those mentioned above). Refer to: [Odoo\'s compatible
  IoT devices](https://www.odoo.com/app/iot-hardware).

- Device drivers for Windows.

  :::: note
  ::: title
  Note
  :::

  Odoo recommends using an updated, recent version of Windows (Windows
  10/11) as some older operating systems can cause the Windows virtual
  `IoT (Internet of Things)`{.interpreted-text role="abbr"} to not work.
  ::::

- Windows computer (laptop, desktop, or server).

- Odoo `IoT (Internet of Things)`{.interpreted-text role="abbr"}
  subscription. Refer to: `iot/iot-eligibility`{.interpreted-text
  role="ref"}.

## Connect the Windows virtual IoT box to an Odoo database

The Windows virtual IoT box is simple to setup in just a few easy steps.
Follow this process when installing the Windows virtual IoT software for
the first time.

### Download and initial installation

To begin the installation, navigate to the Odoo 16 or higher
installation package for Community -Windows edition at [Odoo\'s download
page](https://odoo.com/download). Next, install and setup the Odoo
`.exe`{.interpreted-text role="file"} file. After the instructions
screen, click `Next`{.interpreted-text role="guilabel"} to start the
installation and agree to the `TOS (Terms of Service)`{.interpreted-text
role="abbr"}.

During the next step of the installation, select
`Odoo IoT`{.interpreted-text role="guilabel"} from the `Select the
type of install`{.interpreted-text role="guilabel"} drop-down menu.

::: example
For reference, the following should be installed:

- **Odoo server**
- **Odoo IoT**
- **Nginx WebServer**
- **Ghostscript interpreter**
:::

Ensure there is enough space on the computer for the installation and
click `Next`{.interpreted-text role="guilabel"}.

### Setting the destination and completing the installation

To complete the installation, select the
`Destination Folder`{.interpreted-text role="guilabel"} and click
`Install`{.interpreted-text role="guilabel"}.

:::: tip
::: title
Tip
:::

Choosing `C:\odoo` as the install location will allow for the Nginx
server to start. If the folder doesn\'t exist, then create it. Otherwise
the installation files will be spread throughout the hard drive.
::::

:::: warning
::: title
Warning
:::

Odoo\'s Windows virtual IoT software should not be installed inside any
of the Window\'s User\'s directories. Doing so will not allow for Nginx
to initialize.
::::

The installation may take a few minutes. When complete, click
`Next`{.interpreted-text role="guilabel"} to continue.

Ensure that the `Start Odoo`{.interpreted-text role="guilabel"} box is
checked and click `Finish`{.interpreted-text role="guilabel"}. After
installation, the Odoo server will run and automatically open
[http://localhost:8069]{.title-ref} on a web browser. The webpage should
display the `IoT (Internet of Things)`{.interpreted-text role="abbr"}
box homepage.

::: seealso
A restart of the Windows IoT program may be necessary should the web
browser not display anything.
`iot/restart_windows_iot`{.interpreted-text role="ref"}
:::

### Connecting devices

Next, connect the `IoT (Internet of Things)`{.interpreted-text
role="abbr"} devices to the Windows computer. Windows should
automatically detect the device because the driver is pre-installed on
the computer. If not, search for and install the Windows driver for the
device.

:::: important
::: title
Important
:::

Most devices connect to the Windows Machine for Windows IoT
automatically through Windows Plug-N-Play (PnP). However, if Windows
does not automatically recognize the device after connecting, then the
administrator may need to install the corresponding drivers manually.

Devices automatically recognized:

- Regular ink/toner based printers
- Receipt printers (Epson/Star)
- Barcode scanners
- Measurement devices (although some configuration of the measurement
  device settings is required) See this documentation:
  `../devices/measurement_tool`{.interpreted-text role="doc"}

Devices not automatically recognized (requires manual driver download):

- Label printers (Zebra)
- Scales

Reference the manufacturer\'s website for the equipment in question.
Then, download the drivers and install them on the Windows machine.
Reconnect the device in question and Windows will find the device.
::::

Following connecting devices to the computer, refresh the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box homepage
and verify the device is seen. If not, reload the handlers through the
`IoT (Internet
of Things)`{.interpreted-text role="abbr"} box homepage.

Finally, connect Windows `IoT (Internet of Things)`{.interpreted-text
role="abbr"} to a database using existing instructions (manually using
the Token).

::: seealso
`/applications/general/iot/config/connect`{.interpreted-text role="doc"}
:::

Now the installation is complete, the devices connected to
`IoT (Internet of Things)`{.interpreted-text role="abbr"} can be used to
complete processes/actions.

## Troubleshooting

### Restart Windows IoT box {#iot/restart_windows_iot}

In some instances a manual restart of the physical
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box can
resolve the issue of an `IoT (Internet of Things)`{.interpreted-text
role="abbr"} box not showing up on the database. For the Windows virtual
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box a manual
restart of the Odoo server can resolve database connection issues.

To restart the virtual Windows IoT server:

1.  Type [Services]{.title-ref} into the Windows
    `Search Bar`{.interpreted-text role="guilabel"}.
2.  Select the `Services`{.interpreted-text role="menuselection"} App
    and scroll down to the `Odoo`{.interpreted-text role="guilabel"}
    service.
3.  Right click on `Odoo`{.interpreted-text role="guilabel"} and select
    `Start`{.interpreted-text role="guilabel"} or
    `Restart`{.interpreted-text role="guilabel"}. This action will
    manually restart the Odoo IoT server.

### Firewalls

Firewalls keep devices safe and secure. Sometimes they can block
connections that should be made though. The Windows virtual
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box software
may not be reachable to the `LAN (Local Area Network)`{.interpreted-text
role="abbr"} due to a firewall preventing the connection. Consult your
local IT support team to make exceptions (network discovery) in the
`OS (Operating System)`{.interpreted-text role="abbr"} or firewall
program. Windows has their own firewall as do other virus protection
programs.

::: example
A client might encounter a time when they are able to reach the homepage
of the `IoT
(Internet of Things)`{.interpreted-text role="abbr"} box, yet they
cannot access it from another computer/mobile device/tablet on the same
network.
:::

#### Making an exception on Windows Defender

It is possible to allow other devices to access the Windows virtual
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box while
keeping the firewall on. This is done by creating a rule on *Windows
Defender* and allowing communication through port [8069]{.title-ref}.
The following process describes the steps to take in order to make this
exception.

##### Create a rule in Windows Defender

First, open the *Windows Firewall* by navigating to the
`Start Menu`{.interpreted-text role="menuselection"} and typing in
[Firewall]{.title-ref}. Then, open the
`Windows Defender Firewall`{.interpreted-text role="menuselection"}
program. In the left-hand menu, navigate to
`Advanced Settings`{.interpreted-text role="guilabel"}.

Once `Advanced Settings`{.interpreted-text role="guilabel"} have been
selected, click `Inbound Rules`{.interpreted-text role="guilabel"} in
the left-hand menu. Then, in the right-hand menu column (under
`Inbound Rules`{.interpreted-text role="guilabel"}), click on
`New Rule`{.interpreted-text role="guilabel"} to create a new rule.

##### Configure new rule

On the `Rule Type`{.interpreted-text role="menuselection"} screen,
select `Port`{.interpreted-text role="guilabel"}. Then click
`Next`{.interpreted-text role="guilabel"}. From the
`Protocol and Ports`{.interpreted-text role="menuselection"} page leave
the rule application to `TCP`{.interpreted-text role="guilabel"}. Then,
select `Specific Local Ports`{.interpreted-text role="guilabel"} for the
`ports`{.interpreted-text role="guilabel"} option. In the text box, type
in [8069, 443]{.title-ref}. Finally, click `Next`{.interpreted-text
role="guilabel"} to continue to the next step.

On the `Actions`{.interpreted-text role="menuselection"} page, select
`Allow the connection`{.interpreted-text role="guilabel"} and click
`Next`{.interpreted-text role="guilabel"}. The following page on the
`Rule Configuration`{.interpreted-text role="menuselection"} wizard is
the `Profile`{.interpreted-text role="guilabel"} page. On this page,
select whichever connection type applies to the network the Windows
machine is operating on. Ideally, select `Private`{.interpreted-text
role="guilabel"} only connections. The *Private* connection type is the
most secure connection while allowing the selected port to communicate.
Click `Next`{.interpreted-text role="guilabel"} to continue.

Finally, assign a new, unique name to the rule. For example, this name
can be [Odoo]{.title-ref}. Optionally, add a brief description in the
`Description`{.interpreted-text role="guilabel"} field. Click
`Finish`{.interpreted-text role="guilabel"} to complete the
`Rule Configuration`{.interpreted-text role="guilabel"} wizard. Now, the
new rule is active and devices can connect to the Windows virtual
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box.

#### Worldline exception {#iot/windows/wordline}

*Worldline* is a payment terminal that can be connected to Odoo\'s *PoS*
(point of sale) system. It allows for a comprehensive and fluid payment
experience for customers. Worldline is available in Belgium, the
Netherlands, and Luxembourg.

When using the Windows IoT server to connect the Worldline payment
terminal, it is necessary to create an exception in the Windows firewall
so that a connection can be made between the Odoo
database/`IoT (Internet of Things)`{.interpreted-text role="abbr"} box
and Worldline.

::: seealso
`../../../sales/point_of_sale/payment_methods/terminals/worldline`{.interpreted-text
role="doc"}
:::

To create the exception, first, open the *Windows Defender Firewall* app
on the Windows machine. This can be accomplished by typing [windows
defender]{.title-ref} in the `Search`{.interpreted-text role="guilabel"}
bar.

Next, click `Advanced settings`{.interpreted-text role="guilabel"} in
the left menu.

![Advanced settings option highlighted in the left pane of the Windows Defender Firewall app.](windows_iot/advanced-settings.png){.align-center}

In the left menu, choose `Inbound Rules`{.interpreted-text
role="guilabel"}.

![Windows Defender left window pane with inbound rules menu item highlighted.](windows_iot/inbound-rules.png){.align-center}

After selecting `Inbound Rules`{.interpreted-text role="guilabel"},
select `New Rule`{.interpreted-text role="guilabel"} in the far right
menu.

![New rule dropdown shown with new rule option highlighted.](windows_iot/new-rule.png){.align-center}

Then, for the `Rule Type`{.interpreted-text role="guilabel"}, select the
radio button for `Port`{.interpreted-text role="guilabel"}. Click
`Next`{.interpreted-text role="guilabel"} to continue to the rest of the
configuration.

![Rule Type window open, with the radio button next to port highlighted.](windows_iot/radio-port.png){.align-center}

On the `Protocols and Ports`{.interpreted-text role="guilabel"} page,
choose the radio button for `TCP`{.interpreted-text role="guilabel"},
under `Does this rule apply to TCP or UDP?`{.interpreted-text
role="guilabel"}.

Next, under
`Does this rule apply to all local ports or specific ports?`{.interpreted-text
role="guilabel"}, select the radio button for
`Specific local ports`{.interpreted-text role="guilabel"}. Then, enter
[9050]{.title-ref}, and click `Next`{.interpreted-text role="guilabel"}
to continue.

![Protocol/port configuration window with TCP, specific port (9050) and Next highlighted.](windows_iot/protocol-port.png){.align-center}

The next screen is the `Action`{.interpreted-text role="guilabel"} page.
Under `What action should be taken when a
connection matches the specified conditions?`{.interpreted-text
role="guilabel"}, choose the radio button for `Allow the
connection`{.interpreted-text role="guilabel"}. Then, click
`Next`{.interpreted-text role="guilabel"} to continue.

A `Profile`{.interpreted-text role="guilabel"} page appears. Under
`When does this rule apply?`{.interpreted-text role="guilabel"}, leave
the three boxes checked for: `Domain`{.interpreted-text
role="guilabel"}, `Private`{.interpreted-text role="guilabel"}, and
`Public`{.interpreted-text role="guilabel"}. Click
`Next`{.interpreted-text role="guilabel"} to continue to the naming
convention page.

On the `Name`{.interpreted-text role="guilabel"} page, enter [Odoo
Worldline]{.title-ref}, under the `Name`{.interpreted-text
role="guilabel"} field. Enter a
`Description (optional)`{.interpreted-text role="guilabel"}. Finally,
once ready, click `Finish`{.interpreted-text role="guilabel"}.

The final `Inbound rule`{.interpreted-text role="guilabel"} should
appear as follows:

                                Odoo Worldline
  ----------------------------- ----------------
  Profile                       All
  Enabled                       Yes
  Action                        Allow
  Override                      No
  Program                       Any
  Local Address                 Any
  Remote Address                Any
  Protocol                      TCP
  Local Port                    9050
  Remote Port                   Any
  Authorized Users              Any
  Authorized Computers          Any
  Authorized Local Principals   Any
  Local User Owner              Any
  PolicyAppld                   None
  Application Package           Any

### Uninstalling Windows IoT

Uninstalling the Windows virtual
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box is done
through the Windows program manager. Using any Windows version, search
for [program]{.title-ref}. Then, select `Add or
Remove Programs`{.interpreted-text role="guilabel"} located in the
control panel. Search for [Odoo]{.title-ref} and click the `three dot
menu`{.interpreted-text role="guilabel"} to uninstall.

Confirm the un-installation and follow the steps to uninstall through
the Odoo uninstall guide.




--- SOURCE: general/iot/config.md ---

nosearch

:   

# Configuration

::: {.toctree titlesonly="" glob=""}
config/connect config/pos config/https_certificate_iot
config/updating_iot config/troubleshooting config/windows_iot
:::




--- SOURCE: general/iot/devices/camera.md ---

# Connect a camera

A camera can be connected to an
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box with an
Odoo database in just a few steps. Once a camera is connected to an
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box, it can be
used in a manufacturing process, or it can be linked to a quality
control point/quality check. Doing so allows for the taking of pictures
when a chosen quality control point/check has been reached, or when a
specific key is pressed during manufacturing.

## Connection

To connect a camera to an `IoT (Internet of Things)`{.interpreted-text
role="abbr"} box, simply connect the two via cable. This is usually done
with a `USB (Universal Serial Bus)`{.interpreted-text role="abbr"} cable
of some sort.

If the camera is [supported](https://www.odoo.com/page/iot-hardware),
there is no need to set up anything, as it\'ll be detected as soon as
it\'s connected.

![Camera recognized on the IoT box.](camera/camera-dropdown.png){.align-center}

## Link camera to quality control point in manufacturing process

In the `Quality app`{.interpreted-text role="menuselection"}, a device
can be set up on a `Quality Control Point`{.interpreted-text
role="guilabel"}. To do that, navigate to the
`Quality app --> Quality Control --> Control Points`{.interpreted-text
role="menuselection"} and open the desired
`Control Point`{.interpreted-text role="guilabel"} that\'ll be linked to
the camera.

On the control point form, edit the control point by selecting the
`Type`{.interpreted-text role="guilabel"} field, and clicking on
`Take a Picture`{.interpreted-text role="guilabel"} from the drop-down
menu. Doing so reveals a field called `Device`{.interpreted-text
role="guilabel"}, wherein the attached *device* can be selected.
`Save`{.interpreted-text role="guilabel"} the changes, if required.

![Setting up the device on the quality control point.](camera/control-point-device.png){.align-center}

The camera is now useable with the selected quality control point. When
the quality control point is reached during the manufacturing process,
the database prompts the operator to take a picture.

![Graphic user interface of the device on the quality control point.](camera/serial-number-picture.png){.align-center}

:::: note
::: title
Note
:::

Quality control points can also be accessed by navigating to
`IoT App -->
Devices`{.interpreted-text role="menuselection"}. From here, select the
device. There is a `Quality Control Points`{.interpreted-text
role="guilabel"} tab, where they can be added with the device.
::::

:::: tip
::: title
Tip
:::

On a quality check form, the `Type`{.interpreted-text role="guilabel"}
of check can also be specified to `Take a
Picture`{.interpreted-text role="guilabel"}. Navigate to
`Quality app --> Quality Control --> Quality Checks --> New`{.interpreted-text
role="menuselection"} to create a new quality check from the
`Quality Checks`{.interpreted-text role="guilabel"} page.
::::

::: seealso
\-
`/applications/inventory_and_mrp/quality/quality_management/quality_control_points`{.interpreted-text
role="doc"} -
`/applications/inventory_and_mrp/quality/quality_management/quality_alerts`{.interpreted-text
role="doc"}
:::

## Link camera to a work center in the Manufacturing app

To link a camera to an action, it first needs to be configured on a work
center. Navigate to
`Manufacturing app --> Configuration --> Work Centers`{.interpreted-text
role="menuselection"}. Next, go to the desired
`Work Center`{.interpreted-text role="guilabel"} in which a camera will
be used to reveal that specific work center\'s detail form. From here,
add the device in the `IoT Triggers`{.interpreted-text role="guilabel"}
tab, in the `Device`{.interpreted-text role="guilabel"} column, by
clicking `Add a Line`{.interpreted-text role="guilabel"}.

Now, the camera device can be linked to the `Action`{.interpreted-text
role="guilabel"} column drop-down option labeled
`Take a Picture`{.interpreted-text role="guilabel"}. A key can also be
added to trigger the action.

:::: important
::: title
Important
:::

The first trigger listed is chosen first. The order of triggers matters,
and they can be dragged into any desired order.
::::

:::: note
::: title
Note
:::

On the `Work Order`{.interpreted-text role="guilabel"} screen, a status
graphic indicates whether the database is correctly connected to the
camera.
::::

::: seealso
`workcenter_iot`{.interpreted-text role="ref"}
:::




--- SOURCE: general/iot/devices/footswitch.md ---

# Connect a footswitch

When working in a manufacturing environment, it\'s always better for an
operator to have both hands available at all times. Odoo\'s
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box makes this
possible when using a footswitch.

In fact, with a footswitch, the operator is able to go from one screen
to another, and perform actions using their foot. This can be configured
in just a few steps on the work center in the *Manufacturing* app.

## Connection

To connect a footswitch to the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box, connect
the two devices via cable. More often than not, this is done with a
`USB (Universal Serial Bus)`{.interpreted-text role="abbr"} cable.

If the footswitch is a [supported
device](https://www.odoo.com/page/iot-hardware), there is no need to
take further action, since it\'ll be automatically detected when
connected.

![Footswitch recognized on the IoT box.](footswitch/footswitch-dropdown.png){.align-center}

## Link a footswitch to a work center in the Odoo Manufacturing app

To link a footswitch to an action, it first needs to be configured on a
work center. Navigate to
`Manufacturing app --> Configuration --> Work Centers`{.interpreted-text
role="menuselection"}. From here, go to the desired
`Work Center`{.interpreted-text role="guilabel"} in which the footswitch
will be used, and add the device in the `IoT Triggers`{.interpreted-text
role="guilabel"} tab, under the `Device`{.interpreted-text
role="guilabel"} column, by selecting `Add a
Line`{.interpreted-text role="guilabel"}. Doing so means the footswitch
can be linked to an option in the `Action`{.interpreted-text
role="guilabel"} column drop-down, and optionally, a key can be added to
trigger it. An example of an `Action`{.interpreted-text role="guilabel"}
in the *Manufacturing app* could be the `Validate`{.interpreted-text
role="guilabel"} or `Mark as Done`{.interpreted-text role="guilabel"}
buttons on a manufacturing work order.

![Footswitch trigger setup on the Odoo database.](footswitch/footswitch-example.png){.align-center}

:::: important
::: title
Important
:::

It should be noted that the first listed trigger is chosen first. So,
the order matters, and these triggers can be dragged into any order. In
the picture above, using the footswitch automatically skips the part of
the process that\'s currently being worked on.
::::

:::: note
::: title
Note
:::

On the `Work Order`{.interpreted-text role="guilabel"} screen, a status
graphic indicates whether the database is correctly connected to the
footswitch.
::::

::: seealso
`workcenter_iot`{.interpreted-text role="ref"}
:::




--- SOURCE: general/iot/devices/measurement_tool.md ---

# Connect a measurement tool

::: {#iot/devices/measurement-tool}
With Odoo\'s `IoT (Internet of Things)`{.interpreted-text role="abbr"}
box, it is possible to connect measurement tools to the Odoo database
for use in the *Quality app* on a quality control point/quality check,
or for use in a work center during the manufacturing process.
:::

Find the list of supported devices here: [Supported
devices](https://www.odoo.com/page/iot-hardware).

## Connect with universal serial bus (USB)

To add a device connected by
`USB (Universal Serial Bus)`{.interpreted-text role="abbr"}, plug the
`USB (Universal
Serial Bus)`{.interpreted-text role="abbr"} cable into the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box, and the
device appears in the Odoo database.

![Measurement tool recognized on the IoT box.](measurement_tool/device-dropdown.png){.align-center}

## Connect with bluetooth

Activate the Bluetooth functionality on the device (see the device
manual for further explanation), and the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box
automatically connects to the device.

![Bluetooth indicator on measurement tool.](measurement_tool/measurement-tool.jpeg){.align-center}

## Link a measurement tool to a quality control point in the manufacturing process

In the *Quality app*, a device can be set up on a quality control point.
To do that, navigate to
`Quality app --> Quality Control --> Control Points`{.interpreted-text
role="menuselection"}, and open the desired control point to which the
measurement tool should be linked.

From here, edit the control point, by selecting the
`Type`{.interpreted-text role="guilabel"} field, and clicking
`Measure`{.interpreted-text role="guilabel"} from the drop-down menu.
Doing so reveals a field called `Device`{.interpreted-text
role="guilabel"}, where the attached device can be selected.

Additionally, `Norm`{.interpreted-text role="guilabel"} and
`Tolerance`{.interpreted-text role="guilabel"} can be configured.
`Save`{.interpreted-text role="guilabel"} the changes, if required.

At this point, the measurement tool is linked to the chosen quality
control point. The value, which usually needs to be changed manually, is
automatically updated while the tool is being used.

![Measurement tool input in the Odoo database.](measurement_tool/measurement-control-point.png){.align-center}

:::: tip
::: title
Tip
:::

Quality control points can also be accessed by navigating to
`IoT App -->
Devices`{.interpreted-text role="menuselection"}, then select the
device. There is a `Quality Control Points`{.interpreted-text
role="guilabel"} tab, where they can be added with the device.
::::

:::: note
::: title
Note
:::

On a quality check detail form, the `Type`{.interpreted-text
role="guilabel"} of check can also be specified to
`Measure`{.interpreted-text role="guilabel"}. Access a new quality check
detail page, by navigating to
`Quality app --> Quality Control --> Quality Checks --> New`{.interpreted-text
role="menuselection"}.
::::

::: seealso
\-
`../../../inventory_and_mrp/quality/quality_management/quality_control_points`{.interpreted-text
role="doc"} -
`../../../inventory_and_mrp/quality/quality_management/quality_alerts`{.interpreted-text
role="doc"}
:::

## Link a measurement tool to a work center in the Manufacturing app

To link a measurement tool to an action, it first needs to be configured
on a work center. To do that, navigate to
`Manufacturing app --> Configuration --> Work Centers`{.interpreted-text
role="menuselection"}. Then, select the desired work center in which the
measurement tool will be used.

On the work center page, add the device in the
`IoT Triggers`{.interpreted-text role="guilabel"} tab, under the
`Device`{.interpreted-text role="guilabel"} column, by selecting
`Add a Line`{.interpreted-text role="guilabel"}. Then, the measurement
tool can be linked to the `Action`{.interpreted-text role="guilabel"}
drop-down menu option labeled `Take Measure`{.interpreted-text
role="guilabel"}. A key can be added to trigger the action.

:::: important
::: title
Important
:::

It should be noted that the first listed trigger is chosen first. The
order matters, and these triggers can be dragged into any order.
::::

:::: note
::: title
Note
:::

On the `Work Order`{.interpreted-text role="guilabel"} screen, a status
graphic indicates whether the database is correctly connected to the
measurement tool.
::::

::: seealso
`workcenter_iot`{.interpreted-text role="ref"}
:::




--- SOURCE: general/iot/devices/printer.md ---

# Connect a printer

Printer installation can be done in a few easy steps. The printer can be
used to print receipts, labels, orders, or even reports from the
different Odoo apps. In addition, printer actions can be assigned as an
*action on a trigger* during the manufacturing process, or added onto a
quality control point or a quality check.

## Connection

The `IoT (Internet of Things)`{.interpreted-text role="abbr"} box
supports printers connected through `USB (Universal
Serial Bus)`{.interpreted-text role="abbr"}, network connection, or
Bluetooth. [Supported printers](https://www.odoo.com/page/iot-hardware)
are detected automatically, and appear in the
`Devices`{.interpreted-text role="guilabel"} list of the *IoT app*.

![The printer as it would appear in the IoT app devices list.](printer/printer-detected.png){.align-center}

:::: note
::: title
Note
:::

The printer can take up to two minutes to appear in the *IoT app*
devices list.
::::

## Link printer

### Link printer to work orders

*Work Orders* can be linked to printers, via a quality control point, to
print labels for manufactured products.

In the *Quality app*, a device can be set up on a quality control point.
To do that, go to the
`Quality app --> Quality Control --> Control Points`{.interpreted-text
role="menuselection"}, and open the desired control point to which the
printer will be linked.

:::: important
::: title
Important
:::

A *Manufacturing Operation* and *Work Order Operation* need to be
attached to a quality control point before the `Type`{.interpreted-text
role="guilabel"} field allows for the `Print Label`{.interpreted-text
role="guilabel"} option to be selected.
::::

From here, edit the control point, by selecting the
`Type`{.interpreted-text role="guilabel"} field, and selecting
`Print Label`{.interpreted-text role="guilabel"} from the drop-down menu
of options. Doing so reveals a field called `Device`{.interpreted-text
role="guilabel"}, where the attached *device* can be selected.
`Save`{.interpreted-text role="guilabel"} the changes, if required.

![This is the quality control point setup.](printer/printer-controlpoint.png){.align-center}

The printer can now be used with the selected quality control point.
When the quality control point is reached during the manufacturing
process, the database presents the option to print labels for a specific
product.

![image](printer/printer-prompt.png){.align-center}

:::: tip
::: title
Tip
:::

Quality control points can also be accessed by navigating to
`IoT App -->
Devices`{.interpreted-text role="menuselection"}, then select the
device. There is a `Quality Control Points`{.interpreted-text
role="guilabel"} tab, where they can be added with the device.
::::

:::: note
::: title
Note
:::

On a quality check detail form, the `Type`{.interpreted-text
role="guilabel"} of check can also be specified to
`Print Label`{.interpreted-text role="guilabel"}. To create new quality
checks, navigate to `Quality app
--> Quality Control --> Quality Checks --> New`{.interpreted-text
role="menuselection"}.
::::

::: seealso
\-
`/applications/inventory_and_mrp/quality/quality_management/quality_control_points`{.interpreted-text
role="doc"} -
`/applications/inventory_and_mrp/quality/quality_management/quality_alerts`{.interpreted-text
role="doc"}
:::

### Link a printer to a work center in the Manufacturing app

To link a printer to an action, it first needs to be configured on a
work center. To do that, navigate to
`Manufacturing app --> Configuration --> Work Centers`{.interpreted-text
role="menuselection"}. From here, select the desired work center in
which the printer will be used. Next, add the device in the
`IoT Triggers`{.interpreted-text role="guilabel"} tab, under the
`Device`{.interpreted-text role="guilabel"} column, by selecting `Add a
Line`{.interpreted-text role="guilabel"}.

Then, the printer can be linked to either of the following options in
the `Actions`{.interpreted-text role="guilabel"} drop-down menu:
`Print Labels`{.interpreted-text role="guilabel"},
`Print Operation`{.interpreted-text role="guilabel"}, or `Print Delivery
Slip`{.interpreted-text role="guilabel"}. A key can also be added to
trigger the action.

:::: important
::: title
Important
:::

The first listed trigger on the form will be chosen first. So, the order
matters, and these triggers can be dragged into any order.
::::

:::: note
::: title
Note
:::

On the `Work Order`{.interpreted-text role="guilabel"} screen, a status
graphic indicates whether the database is correctly connected to the
printer.
::::

::: seealso
`workcenter_iot`{.interpreted-text role="ref"}
:::

### Link printer to reports

It\'s also possible to link a type of report to a certain printer. In
the *IoT app*, go to the `Devices`{.interpreted-text role="guilabel"}
menu, and select the desired printer that needs to be configured.

From here, click `Edit`{.interpreted-text role="guilabel"}, go to the
`Printer Reports`{.interpreted-text role="guilabel"} tab, and select
`Add a line`{.interpreted-text role="guilabel"}. In the window that
appears, check all the types of `Reports`{.interpreted-text
role="guilabel"} that should be linked to this printer.

![The printer devices listed in the IoT Devices menu.](printer/printers-listed.png){.align-center}

Now, each time `Print`{.interpreted-text role="guilabel"} is selected in
the control panel, instead of downloading a PDF, a pop-up appears which
displays all the printer(s) linked to the report. Then Odoo sends the
report to the selected printer(s), and automatically prints it.

::: seealso
`POS Order Printing <../../../sales/point_of_sale/restaurant/kitchen_printing>`{.interpreted-text
role="doc"}
:::

:::: tip
::: title
Tip
:::

Reports can also be configured in the `Technical Menu`{.interpreted-text
role="guilabel"} while in `debug mode
<developer-mode>`{.interpreted-text role="ref"}. To do that, navigate to
`Settings App --> Technical Menu -->
Actions --> Reports`{.interpreted-text role="menuselection"}. From here,
the individual report can be found in this list, where the
`IoT Device`{.interpreted-text role="guilabel"} can be set on the
report.
::::




--- SOURCE: general/iot/devices/scale.md ---

# Connect a scale

A scale can be connected to the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box on an Odoo
database in a few easy steps. After setup, the *Point of Sale* app can
be used to weigh products, which is helpful if their prices are
calculated based on weight.

:::: important
::: title
Important
:::

\- In EU member states, [certification is legally
required](https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=uriserv%3AOJ.L_.2014.096.01.0107.01.ENG)
to use a scale as an integrated device. - Odoo is not certified in
several countries, including France, Germany, and Switzerland. If you
reside in one of these countries, you can still use a scale but without
integration to your Odoo database. - Alternatively, you have the option
to acquire a *non-integrated* certified scale that prints certified
labels, which can then be scanned into your Odoo database.
::::

::: seealso
[Directive 2014/31/EU of the European
Parliament](https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=uriserv%3AOJ.L_.2014.096.01.0107.01.ENG)
:::

## Connection

To link the scale to the `IoT (Internet of Things)`{.interpreted-text
role="abbr"} box, connect it with a `USB
(Universal Serial Bus)`{.interpreted-text role="abbr"} cable.

:::: note
::: title
Note
:::

In some cases, a serial port to
`USB (Universal Serial Bus)`{.interpreted-text role="abbr"} adapter may
be needed.
::::

If the scale is [compatible with Odoo IoT
Box](https://www.odoo.com/page/iot-hardware), there is no need to set up
anything because it will be automatically detected as soon as it is
connected.

![IOT box auto detection.](scale/iot-choice.png){.align-center}

The `IoT (Internet of Things)`{.interpreted-text role="abbr"} box may
need to be restarted and the scale\'s drivers may need to be downloaded
to the box in some cases. To update the drivers, go to the
`IoT (Internet of
Things)`{.interpreted-text role="abbr"} box homepage and click on
`Drivers List`{.interpreted-text role="guilabel"}. Then, click on `Load
Drivers`{.interpreted-text role="guilabel"}.

![View of the IoT box settings and driver list.](scale/driver-list.png){.align-center}

If loading the drivers still doesn\'t allow for the scale to function,
it may be that the scale is not compatible with the Odoo
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box. In this
case, a different scale will need to be used.

## Use a scale in a point of sale (POS) system

To use the scale in the *Point of Sale app*, go to
`PoS app --> 3-Dot Menu on the PoS
--> Settings`{.interpreted-text role="menuselection"}, then enable the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box feature.
After this is complete, the scale device can be set.

Select the scale from the `Electronic Scale`{.interpreted-text
role="guilabel"} drop-down menu. Then click `Save`{.interpreted-text
role="guilabel"} to save the changes, if required.

![List of the external tools that can be used with PoS and the IoT box.](scale/electronic-scale-feature.png){.align-center}

The scale is now available in all the
`PoS (Point of Sale)`{.interpreted-text role="abbr"} sessions. Now, if a
product has a price per weight set, clicking on it on the
`PoS`{.interpreted-text role="guilabel"} screen opens the scale screen,
where the cashier can weigh the product and add the correct price to the
cart.

![Electronic Scale dashboard view when no items are being weighed.](scale/scale-view.png){.align-center}




--- SOURCE: general/iot/devices/screen.md ---

# Connect a screen

In Odoo, an `IoT (Internet of Things)`{.interpreted-text role="abbr"}
box can be connected to a screen display. After being configured, the
screen can be used to display a Point of Sale (PoS) order to a client.

![An example of a PoS (point of sale) order on a screen
display.](screen/screen-pos-client-display.png)

Access the customer display by going to the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box homepage
and clicking on the `PoS Display`{.interpreted-text role="guilabel"}
button. To get to the `IoT (Internet of Things)`{.interpreted-text
role="abbr"} box homepage, navigate to
`IoT app --> IoT Boxes`{.interpreted-text role="menuselection"} and
click on the `IoT (Internet
of Things)`{.interpreted-text role="abbr"} box homepage link.

## Connection

The way to connect the screen display to the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box differs
depending on the model.

::::: tabs
::: tab
IoT Box model 4

Connect up to two screens with micro-HDMI cables on the side of the
`IoT (Internet of
Things)`{.interpreted-text role="abbr"} box. If two screens are
connected, they can display distinct content (see
`Screen Usage <iot/usage_screen>`{.interpreted-text role="ref"}).
:::

::: tab
IoT Box model 3

Connect the screen with an HDMI cable on the side of the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box.
:::
:::::

::: seealso
`See the Raspberry Pi Schema <iot/connect_schema>`{.interpreted-text
role="ref"}.
:::

:::: important
::: title
Important
:::

Screen(s) should be connected before the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box is
switched on. If it is already on, connect the screen(s), and then
restart the `IoT (Internet of Things)`{.interpreted-text role="abbr"}
box by unplugging it for ten seconds and plugging it back into its power
source.
::::

:::: warning
::: title
Warning
:::

The usage of HDMI/micro-HDMI adapters may cause issues which will result
in a blank, black screen on the screen display. Using the specific cable
for the display connection is recommended.
::::

If the connection was successful, the screen should display the
`POS Client display`{.interpreted-text role="guilabel"} screen.

![The default \"POS Client Display\" screen that appears when a screen display is successfully
connected to an IoT box.](screen/screen-pos-client-display-no-order.png){.align-center}

The screen should also appear in the list of
`Displays`{.interpreted-text role="guilabel"} on the `IoT (Internet of
Things)`{.interpreted-text role="abbr"} box homepage. Alternatively, the
display can be seen by accessing `IoT app
--> Devices`{.interpreted-text role="menuselection"}.

![An example of a screen display name shown on the IoT Box Home Page.](screen/screen-screen-name-example.png){.align-center}

:::: note
::: title
Note
:::

If no screen is detected, a default display named
`Distant Display`{.interpreted-text role="guilabel"} will be displayed
instead. This indicates that there is no hardware screen connected.

![The \"Distant Display\" screen name will be used if no screen is detected.](screen/screen-no-screen.png){.align-center}
::::

## Usage {#iot/usage_screen}

### Show Point of Sale orders to customers

To use the screen in the *Point of Sale app*, go to `Point of Sale -->
Configuration --> Point of Sale`{.interpreted-text
role="menuselection"}, select a `PoS (Point of Sale)`{.interpreted-text
role="abbr"}, click `Edit`{.interpreted-text role="guilabel"} if
necessary, and enable the `IoT Box`{.interpreted-text role="guilabel"}
feature.

Next, select the screen from the `Customer Display`{.interpreted-text
role="guilabel"} drop-down menu. Then click `Save`{.interpreted-text
role="guilabel"}, if required.

![Connect the screen display to the Point of Sale app.](screen/screen-pos-screen-config.png){.align-center}

The screen is now available for `PoS (Point of Sale)`{.interpreted-text
role="abbr"} sessions. A screen icon will appear in the menu at the top
of the screen to indicate the screen\'s connection status.

![The \"screen\" icon on the Point of Sale display shows the connection status with the
screen.](screen/screen-pos-icon.png){.align-center}

The screen will automatically show the
`PoS (Point of Sale)`{.interpreted-text role="abbr"} orders and update
when changes are made to the order.

![An example of a PoS order on a screen display.](screen/screen-pos-client-display.png){.align-center}

### Display a website on the screen

Open the screen form view by accessing
`IoT app --> Devices --> Customer Display`{.interpreted-text
role="menuselection"}. This allows the user to choose a particular
website URL to display on the screen using the
`Display URL`{.interpreted-text role="guilabel"} field.




--- SOURCE: general/iot/devices.md ---

nosearch

:   

show-content

:   

show-toc

:   

# Devices

::: {.toctree titlesonly="" glob=""}
devices/screen devices/measurement_tool devices/camera
devices/footswitch devices/printer devices/scale
:::

::: seealso
\- `Worldline payment terminal
<../../sales/point_of_sale/payment_methods/terminals/worldline>`{.interpreted-text
role="doc"} -
`Ingenico payment terminal <../../sales/point_of_sale/payment_methods/terminals/ingenico>`{.interpreted-text
role="doc"}
:::




--- SOURCE: general/iot.md ---

nosearch

:   

show-content

:   

hide-page-toc

:   

show-toc

:   

# Internet of Things (IoT)

::: {.toctree titlesonly=""}
iot/config iot/devices
:::

:::: note
::: title
Note
:::

The Open Platform Communications (OPC) Unified Architecture (UA)
protocol is now supported by the
`IoT (Internet of Things)`{.interpreted-text role="abbr"} box.
`OPC (Open Platform Communications)`{.interpreted-text role="abbr"} `UA
(United Architecture)`{.interpreted-text role="abbr"} is an open
standard that specifies information exchange for industrial
communication on devices, between machines and between systems. This
includes communication between information technology and operational
technology. `OPC (Open Platform
Communications)`{.interpreted-text role="abbr"}
`UA (United Architecture)`{.interpreted-text role="abbr"} can be used
with any software platform, on a wide variety of devices, and deployed
securely. The `IoT (Internet of Things)`{.interpreted-text role="abbr"}
box has entered the world of the Industry 4.0 standard and can be
utilized in a wide variety of industries, and for things like building
automation, packaging, utilities, etc.
::::




--- SOURCE: general/users/2fa.md ---

# Two-factor Authentication

Two-factor authentication (\"2FA\") is a good way to improve the
security of an account, to make it less likely that an other person will
manage to log in instead of you.

Practically, it means storing a secret inside an *authenticator*
(usually your cell phone) and exchanging a code from the authenticator
when you try to log in.

This means an attacker needs *both* to have guessed (or found) your
password and to access (or steal) your authenticator, a more difficult
proposition than either one or the other.

## Requirements

:::: note
::: title
Note
:::

These lists are just examples, they are not endorsements of any specific
software.
::::

If you don\'t already have one, you will need to choose an
authenticator.

Phone-based authenticators are the easiest and most common so we will
assume you\'ll pick and install one on your phone, examples include
[Authy](https://authy.com/), [FreeOTP](https://freeotp.github.io/),
[Google
Authenticator](https://support.google.com/accounts/answer/1066447?hl=en),
[LastPass Authenticator](https://lastpass.com/auth/), [Microsoft
Authenticator](https://www.microsoft.com/en-gb/account/authenticator?cmp=h66ftb_42hbak),
\...; password managers also commonly include `2FA (two-factor
authentication)`{.interpreted-text role="abbr"} support e.g.
[1Password](https://support.1password.com/one-time-passwords/),
[Bitwarden](https://bitwarden.com/help/article/authenticator-keys/),
\...

For the sake of demonstration we will be using Google Authenticator (not
because it is any good but because it is quite common).

## Setting up two-factor authentication

Once you have your authenticator of choice, go to the Odoo instance you
want to setup `2FA (two-factor authentication)`{.interpreted-text
role="abbr"}, then open `Preferences`{.interpreted-text role="guilabel"}
(or `My Profile`{.interpreted-text role="guilabel"}):

<figure class="align-center">
<img src="2fa/preferences.png" />
</figure>

Open the `Account Security`{.interpreted-text role="guilabel"} tab, then
click the `Enable two-factor authentication`{.interpreted-text
role="guilabel"} button:

<figure class="align-center">
<img src="2fa/sec_tab.png" />
</figure>

Because this is a security-sensitive action, you will need to input your
password:

<figure class="align-center">
<img src="2fa/sec_enhanced.png" />
</figure>

After which you will see this screen with a barcode:

<figure class="align-center">
<img src="2fa/totp_scan.png" />
</figure>

In most applications, you can simply *scan the barcode* via the
authenticator of your choice, the authenticator will then take care of
all the setup:

<figure class="align-center">
<img src="2fa/scan_barcode.jpg" />
</figure>

:::: note
::: title
Note
:::

If you can not scan the screen (e.g. because you are doing this set-up
on the same phone as the authenticator application), you can click the
provided link, or copy the secret to manually set-up your authenticator:

<figure class="align-center">
<img src="2fa/secret_visible.png" />
</figure>

<figure class="align-center">
<img src="2fa/input_secret.png" />
</figure>
::::

Once this is done, the authenticator should display a *verification
code* with some useful identifying information (e.g. the domain and
login for which the code is):

<figure class="align-center">
<img src="2fa/authenticator.png" />
</figure>

You can now input the code into the
`Verification Code`{.interpreted-text role="guilabel"} field, then click
the `Enable two-factor authentication`{.interpreted-text
role="guilabel"} button.

Congratulation, your account is now protected by two-factor
authentication!

<figure class="align-center">
<img src="2fa/totp_enabled.png" />
</figure>

## Logging in

You should now `Log out`{.interpreted-text role="guilabel"} to follow
along.

On the login page, input the username and password of the account for
which you set up `2FA (two-factor authentication)`{.interpreted-text
role="abbr"}, rather than immediately enter Odoo you will now get a
second log-in screen:

<figure class="align-center">
<img src="2fa/2fa_input.png" />
</figure>

Get your authenticator, input the code it provides for the domain and
account, validate, and you\'re now in.

And that\'s it. From now on, unless you disable `2FA (two-factor
authentication)`{.interpreted-text role="abbr"} you will have a two-step
log-in process rather than the old one-step process.

:::: danger
::: title
Danger
:::

Don\'t lose your authenticator, if you do, you will need an *Odoo
Administrator* to disable `2FA (two-factor
authentication)`{.interpreted-text role="abbr"} on the account.
::::




--- SOURCE: general/users/access_rights.md ---

# Access rights

*Access rights* are permissions that determine the content and
applications users can access and edit. In Odoo, these permissions can
be set for individual users or for groups of users. Limiting permissions
to only those who need them ensures that users do not modify or delete
anything they should not have access to.

**Only** an *administrator* can change access rights.

:::: danger
::: title
Danger
:::

Making changes to access rights can have a detrimental impact on the
database. This includes *impotent admin*, which means that no user in
the database can make changes to the access rights. For this reason,
Odoo recommends contacting an Odoo Business Analyst, or our Support
Team, before making changes.
::::

:::: tip
::: title
Tip
:::

A user **must** have the specific *Administration* access rights set on
their user profile, in order to make changes on another user\'s settings
for access rights.

To access this setting, navigate to
`Settings app --> Manage users --> select a
user --> Access Rights tab --> Administration section --> Administration field`{.interpreted-text
role="menuselection"}.

Once at the setting, an already existing administrator **must** change
the setting in the `Administration`{.interpreted-text role="guilabel"}
field to `Access Rights`{.interpreted-text role="guilabel"}.

Once complete, click `Save`{.interpreted-text role="guilabel"} to save
the changes, and implement the user as an administrator.
::::

## Users

The access rights for
`individual users <users/add-individual>`{.interpreted-text role="ref"}
are set when the user is added to the database, but they can be adjusted
at any point in the user\'s profile.

To make changes to a user\'s rights, click on the desired user to edit
their profile.

![Users menu in the Users & Companies section of the Settings app of Odoo.](access_rights/navigate-to-users-menu.png){.align-center}

On the user\'s profile page, in the `Access Rights`{.interpreted-text
role="guilabel"} tab, scroll down to view the current permissions.

For each app, use the drop-down menu to select what level of permission
this user should have. The options vary for each section, yet the most
common are: `Blank/None`{.interpreted-text role="guilabel"}, `User: Own
Documents`{.interpreted-text role="guilabel"},
`User: All Documents`{.interpreted-text role="guilabel"}, or
`Administrator`{.interpreted-text role="guilabel"}.

The `Administration`{.interpreted-text role="guilabel"} field in the
`Access Rights`{.interpreted-text role="guilabel"} tab has the following
options: `Settings`{.interpreted-text role="guilabel"} or
`Access Rights`{.interpreted-text role="guilabel"}.

![The Sales apps drop-down menu to set the user\'s level of permissions.](access_rights/user-permissions-dropdown-menu.png){.align-center}

## Create and modify groups {#access-rights/groups}

*Groups* are app-specific sets of permissions that are used to manage
common access rights for a large amount of users. Administrators can
modify the existing groups in Odoo, or create new ones to define rules
for models within an application.

To access groups, first activate Odoo\'s
`developer mode <developer-mode>`{.interpreted-text role="ref"}, then go
to `Settings app --> Users & Companies --> Groups`{.interpreted-text
role="menuselection"}.

![Groups menu in the Users & Companies section of the Settings app of Odoo.](access_rights/click-users-and-companies.png){.align-center}

To create a new group from the `Groups`{.interpreted-text
role="guilabel"} page, click `Create`{.interpreted-text
role="guilabel"}. Then, from the blank group form, select an
`Application`{.interpreted-text role="guilabel"}, and complete the group
form (detailed below).

To modify existing groups, click on an existing group from the list
displayed on the `Groups`{.interpreted-text role="guilabel"} page, and
edit the contents of the form.

Enter a `Name`{.interpreted-text role="guilabel"} for the group and tick
the checkbox next to `Share Group`{.interpreted-text role="guilabel"},
if this group was created to set access rights for sharing data with
some users.

:::: important
::: title
Important
:::

Always test the settings being changed to ensure they are being applied
to the correct users.
::::

The group form contains multiple tabs for managing all elements of the
group. In each tab, click `Add a line`{.interpreted-text
role="guilabel"} to add a new row for users or rules, and click the
`❌ (remove)`{.interpreted-text role="guilabel"} icon to remove a row.

![Tabs in the Groups form to modify the settings of the group.](access_rights/groups-form.png){.align-center}

- `Users`{.interpreted-text role="guilabel"} tab: lists the current
  users in the group. Users listed in black have administrative rights.
  Users without administrative access appear in blue. Click `Add a
  line`{.interpreted-text role="guilabel"} to add users to this group.

- `Inherited`{.interpreted-text role="guilabel"} tab: Inherited means
  that users added to this group are automatically added to the groups
  listed on this tab. Click `Add a line`{.interpreted-text
  role="guilabel"} to add inherited groups.

  ::: example
  For example, if the group *Sales/Administrator* lists the group
  *Website/Restricted Editor* in its `Inherited`{.interpreted-text
  role="guilabel"} tab, then any users added to the
  *Sales/Administrator* group automatically receive access to the
  *Website/Restricted Editor* group, as well.
  :::

- `Menus`{.interpreted-text role="guilabel"} tab: defines which models
  the group can have access to. Click `Add a line`{.interpreted-text
  role="guilabel"} to add a specific menu.

- `Views`{.interpreted-text role="guilabel"} tab: lists which views in
  Odoo the group has access to. Click `Add a
  line`{.interpreted-text role="guilabel"} to add a view to the group.

- `Access Rights`{.interpreted-text role="guilabel"} tab: lists the
  first level of rights (models) that this group has. The
  `Name`{.interpreted-text role="guilabel"} column represents the name
  for the current group\'s access to the model selected in the
  `Model`{.interpreted-text role="guilabel"} column.

  To link a new access right to a group, click
  `Add a line`{.interpreted-text role="guilabel"}. Select the
  appropriate model from the `Model`{.interpreted-text role="guilabel"}
  dropdown, then enter a name for the access right in the
  `Name`{.interpreted-text role="guilabel"} column. For each model,
  enable the following options as appropriate:

  - `Read`{.interpreted-text role="guilabel"}: Users can see the
    object\'s existing values.
  - `Write`{.interpreted-text role="guilabel"}: Users can edit the
    object\'s existing values.
  - `Create`{.interpreted-text role="guilabel"}: Users can create new
    values for the object.
  - `Delete`{.interpreted-text role="guilabel"}: Users can delete values
    for the object.

  :::: tip
  ::: title
  Tip
  :::

  While there are no conventions for naming access rights, it is
  advisable to choose a name that easily identifies its purpose.

  For example, the access that purchase managers have to the
  `Contact`{.interpreted-text role="guilabel"} model could be named
  [res.partner.purchase.manager]{.title-ref}. This consists of the
  technical name of the model, followed by a name identifying the group
  of users in question.

  ![Name of access rights to a model](access_rights/name-field.png)

  To find the model\'s technical name from the current view, first enter
  a placeholder text in the `Name`{.interpreted-text role="guilabel"}
  field, then click the `Model`{.interpreted-text role="guilabel"} name,
  then the `fa-arrow-right`{.interpreted-text role="icon"}
  `(Internal link)`{.interpreted-text role="guilabel"} icon.
  ::::

- `Record Rules`{.interpreted-text role="guilabel"}: lists the second
  layer of editing and visibility rights.
  `Record Rules`{.interpreted-text role="guilabel"} overwrite, or
  refine, the group\'s access rights. Click `Add a
  line`{.interpreted-text role="guilabel"} to add a record rule to this
  group. For each rule, choose values for the following options:

  - `Apply for Read`{.interpreted-text role="guilabel"}.
  - `Apply for Write`{.interpreted-text role="guilabel"}.
  - `Apply for Create`{.interpreted-text role="guilabel"}.
  - `Apply for Delete`{.interpreted-text role="guilabel"}.

  :::: important
  ::: title
  Important
  :::

  Record rules are written using a *domain*, or conditions that filter
  data. A domain expression is a list of such conditions. For example:

  [\[(\'mrp_production_ids\', \'in\',
  user.partner_id.commercial_partner_id.production_ids.ids)\]]{.title-ref}

  This record rule is to enable MRP consumption warnings for
  subcontractors.

  Odoo has a library of preconfigured record rules for ease of use.
  Users without knowledge of domains (and domain expressions) should
  consult an Odoo Business Analyst, or the Odoo Support Team, before
  making changes.
  ::::

## Superuser mode {#access-rights/superuser}

*Superuser mode* allows the user to bypass record rules and access
rights. To activate *Superuser mode*, first, activate
`developer mode <developer-mode>`{.interpreted-text role="ref"}. Then,
navigate to the *debug* menu, represented by a
`🪲 (bug)`{.interpreted-text role="guilabel"} icon, located in the top
banner.

Finally, towards the bottom of the menu, click
`Become Superuser`{.interpreted-text role="guilabel"}.

:::: important
::: title
Important
:::

Only users with *Settings* access for the *Administration* section of
the *Access Rights* (in their user profile) are allowed to log in to
*Superuser mode*.
::::

:::: danger
::: title
Danger
:::

*Superuser mode* allows for circumvention of record rules and access
rights, and therefore, should be exercised with extreme caution.

Upon exiting *Superuser mode*, users may be locked out of the database,
due to changes that were made. This can cause *impotent admin*, or an
administrator without the ability to change access rights/settings.

In this case contact Odoo Support here: [new help
ticket](https://www.odoo.com/help). The support team is able to restore
access using a support login.
::::

To leave *Superuser mode*, log out of the account, by navigating to the
upper-right corner, and clicking on the `OdooBot`{.interpreted-text
role="guilabel"} username. Then, select the `Log out`{.interpreted-text
role="guilabel"} option.

:::: tip
::: title
Tip
:::

An alternative way to activate *Superuser mode* is to login as a
superuser. To do that, navigate to the login screen, and enter the
appropriate `Email`{.interpreted-text role="guilabel"} and
`Password`{.interpreted-text role="guilabel"}.

Instead of clicking `Login`{.interpreted-text role="guilabel"}, click
`Log in as superuser`{.interpreted-text role="guilabel"}.
::::




--- SOURCE: general/users/azure.md ---

# Microsoft Azure sign-in authentication

The Microsoft Azure OAuth sign-in authentication is a useful function
that allows Odoo users to sign in to their database with their Microsoft
Azure account.

This is particularly helpful if the organization uses Azure Workspace,
and wants employees within the organization to connect to Odoo using
their Microsoft Accounts.

:::: warning
::: title
Warning
:::

Databases hosted on Odoo.com should not use OAuth login for the owner or
administrator of the database as it would unlink the database from their
Odoo.com account. If OAuth is set up for that user, the database will no
longer be able to be duplicated, renamed, or otherwise managed from the
Odoo.com portal.
::::

::: seealso
\- `../../productivity/calendar/outlook`{.interpreted-text role="doc"} -
`../email_communication/azure_oauth`{.interpreted-text role="doc"}
:::

## Configuration

Integrating the Microsoft sign-in function requires configuration on
Microsoft and Odoo.

### Odoo System Parameter

First activate the `developer mode <developer-mode>`{.interpreted-text
role="ref"}, and then go to `Settings
--> Technical --> System Parameters`{.interpreted-text
role="menuselection"}.

Click `Create`{.interpreted-text role="guilabel"} and on the new/blank
form that appears, add the following system parameter
[auth_oauth.authorization_header]{.title-ref} to the
`Key`{.interpreted-text role="guilabel"} field, and set the
`Value`{.interpreted-text role="guilabel"} to [1]{.title-ref}. Then
click `Save`{.interpreted-text role="guilabel"} to finish.

### Microsoft Azure dashboard

#### Create a new application

Now that the system parameters in Odoo have been set up, it\'s time to
create a corresponding application inside of Microsoft Azure. To get
started creating the new application, go to [Microsoft\'s Azure
Portal](https://portal.azure.com/). Log in with the `Microsoft
Outlook Office 365`{.interpreted-text role="guilabel"} account if there
is one, otherwise, log in with a personal `Microsoft
account`{.interpreted-text role="guilabel"}.

:::: important
::: title
Important
:::

A user with administrative access to the *Azure Settings* must connect
and perform the following configuration steps below.
::::

Next, navigate to the section labeled
`Manage Microsoft Entra ID`{.interpreted-text role="guilabel"} (formally
*Azure Active Directory*). The location of this link is usually in the
center of the page.

Now, click on the `Add (+)`{.interpreted-text role="guilabel"} icon,
located in the top menu, and then select `App
registration`{.interpreted-text role="guilabel"} from the drop-down
menu. On the `Register an application`{.interpreted-text
role="guilabel"} screen, rename the `Name`{.interpreted-text
role="guilabel"} field to [Odoo Login OAuth]{.title-ref} or a similarly
recognizable title. Under the
`Supported account types`{.interpreted-text role="guilabel"} section
select the option for `Accounts in this
organizational directory only (Default Directory only - Single tenant)`{.interpreted-text
role="guilabel"}.

:::: warning
::: title
Warning
:::

The `Supported account types`{.interpreted-text role="guilabel"} can
vary by Microsoft account type and end use of the OAuth. For example: Is
the login meant for internal users within one organization or is it
meant for customer portal access? The above configuration is used for
internal users in an organization.

Choose `Personal Microsoft accounts only`{.interpreted-text
role="guilabel"} if the target audience is meant for portal users.
Choose
`Accounts in this organizational directory only (Default Directory only -
Single tenant)`{.interpreted-text role="guilabel"} if the target
audience is company users.
::::

Under the `Redirect URL`{.interpreted-text role="guilabel"} section,
select `Web`{.interpreted-text role="guilabel"} as the platform, and
then input [https://\<odoo base url\>/auth_oauth/signin]{.title-ref} in
the `URL`{.interpreted-text role="guilabel"} field. The Odoo base `URL
(Uniform Resource Locator)`{.interpreted-text role="abbr"} is the
canonical domain at which your Odoo instance can be reached (e.g.
*mydatabase.odoo.com* if you are hosted on Odoo.com) in the
`URL`{.interpreted-text role="guilabel"} field. Then, click
`Register`{.interpreted-text role="guilabel"}, and the application is
created.

#### Authentication

Edit the new app\'s authentication by clicking on the
`Authentication`{.interpreted-text role="guilabel"} menu item in the
left menu after being redirected to the application\'s settings from the
previous step.

Next, the type of *tokens* needed for the OAuth authentication will be
chosen. These are not currency tokens but rather authentication tokens
that are passed between Microsoft and Odoo. Therefore, there is no cost
for these tokens; they are used merely for authentication purposes
between two
`APIs (application programming interfaces)`{.interpreted-text
role="abbr"}. Select the tokens that should be issued by the
authorization endpoint by scrolling down the screen and check the boxes
labeled: `Access tokens (used for implicit flows)`{.interpreted-text
role="guilabel"} and `ID tokens (used for implicit and
hybrid flows)`{.interpreted-text role="guilabel"}.

![Authentication settings and endpoint tokens.](azure/authentication-tokens.png){.align-center}

Click `Save`{.interpreted-text role="guilabel"} to ensure these settings
are saved.

#### Gather credentials

With the application created and authenticated in the Microsoft Azure
console, credentials will be gathered next. To do so, click on the
`Overview`{.interpreted-text role="guilabel"} menu item in the left-hand
column. Select and copy the `Application (client) ID`{.interpreted-text
role="guilabel"} in the window that appears. Paste this credential to a
clipboard / notepad, as this credential will be used in the Odoo
configuration later.

After finishing this step, click on `Endpoints`{.interpreted-text
role="guilabel"} on the top menu and click the *copy icon* next to
`OAuth 2.0 authorization endpoint (v2)`{.interpreted-text
role="guilabel"} field. Paste this value in the clipboard / notepad.

![Application ID and OAuth 2.0 authorization endpoint (v2) credentials.](azure/overview-azure-app.png){.align-center}

### Odoo setup

Finally, the last step in the Microsoft Azure OAuth configuration is to
configure some settings in Odoo. Navigate to
`Settings --> Integrations --> OAuth Authentication`{.interpreted-text
role="menuselection"} and check the box to activate the OAuth login
feature. Click `Save`{.interpreted-text role="guilabel"} to ensure the
progress is saved. Then, sign in to the database once the login screen
loads.

Once again, navigate to
`Settings --> Integrations --> OAuth Authentication`{.interpreted-text
role="menuselection"} and click on `OAuth Providers`{.interpreted-text
role="guilabel"}. Now, select `New`{.interpreted-text role="guilabel"}
in the upper-left corner and name the provider [Azure]{.title-ref}.

Paste the `Application (client) ID`{.interpreted-text role="guilabel"}
from the previous section into the `Client
ID`{.interpreted-text role="guilabel"} field. After completing this,
paste the new `OAuth 2.0 authorization endpoint (v2)`{.interpreted-text
role="guilabel"} value into the `Authorization URL`{.interpreted-text
role="guilabel"} field.

For the `UserInfo URL`{.interpreted-text role="guilabel"} field, paste
the following `URL (Uniform Resource Locator)`{.interpreted-text
role="abbr"}: [https://graph.microsoft.com/oidc/userinfo]{.title-ref}

In the `Scope`{.interpreted-text role="guilabel"} field, paste the
following value: [openid profile email]{.title-ref}. Next, the Windows
logo can be used as the CSS class on the login screen by entering the
following value: [fa fa-fw fa-windows]{.title-ref}, in the
`CSS class`{.interpreted-text role="guilabel"} field.

Check the box next to the `Allowed`{.interpreted-text role="guilabel"}
field to enable the OAuth provider. Finally, add [Microsoft
Azure]{.title-ref} to the `Login button label`{.interpreted-text
role="guilabel"} field. This text will appear next to the Windows logo
on the login page.

![Odoo provider setup in the Settings application.](azure/odoo-provider-settings.png){.align-center}

`Save`{.interpreted-text role="guilabel"} the changes to complete the
OAuth authentication setup in Odoo.

### User experience flows

For a user to log in to Odoo using Microsoft Azure, the user must be on
the `Odoo
password reset page`{.interpreted-text role="menuselection"}. This is
the only way that Odoo is able to link the Microsoft Azure account and
allow the user to log in.

:::: note
::: title
Note
:::

Existing users must
`reset their password <users/reset-password>`{.interpreted-text
role="ref"} to access the `Odoo password reset page`{.interpreted-text
role="menuselection"}. New Odoo users must click the new user invitation
link that was sent via email, then click on
`Microsoft Azure`{.interpreted-text role="guilabel"}. Users should not
set a new password.
::::

To sign in to Odoo for the first time using the Microsoft Azure OAuth
provider, navigate to the `Odoo password reset page`{.interpreted-text
role="menuselection"} (using the new user invitation link). A password
reset page should appear. Then, click on the option labeled
`Microsoft Azure`{.interpreted-text role="guilabel"}. The page will
redirect to the Microsoft login page.

![Microsoft Outlook login page.](azure/odoo-login.png){.align-center}

Enter the `Microsoft Email Address`{.interpreted-text role="guilabel"}
and click `Next`{.interpreted-text role="guilabel"}. Follow the process
to sign in to the account. Should
`2FA (Two Factor Authentication)`{.interpreted-text role="abbr"} be
turned on, then an extra step may be required.

![Enter Microsoft login credentials.](azure/login-next.png){.align-center}

Finally, after logging in to the account, the page will redirect to a
permissions page where the user will be prompted to
`Accept`{.interpreted-text role="guilabel"} the conditions that the Odoo
application will access their Microsoft information.

![Accept Microsoft conditions for permission access to your account information.](azure/accept-access.png){.align-center}




--- SOURCE: general/users/google.md ---

# Google Sign-In Authentication

The *Google Sign-In Authentication* is a useful function that allows
Odoo users to sign in to their database with their Google account.

This is particularly helpful if the organization uses Google Workspace,
and wants employees within the organization to connect to Odoo using
their Google Accounts.

:::: warning
::: title
Warning
:::

Databases hosted on Odoo.com should not use Oauth login for the owner or
administrator of the database as it would unlink the database from their
Odoo.com account. If Oauth is set up for that user, the database will no
longer be able to be duplicated, renamed or otherwise managed from the
Odoo.com portal.
::::

::: seealso
\- `/applications/productivity/calendar/google`{.interpreted-text
role="doc"} - `../email_communication/google_oauth`{.interpreted-text
role="doc"}
:::

## Configuration {#google-sign-in/configuration}

The integration of the Google sign-in function requires configuration
both on Google *and* Odoo.

### Google API Dashboard {#google-sign-in/api}

1.  Go to the [Google API
    Dashboard](https://console.developers.google.com/).

2.  Make sure the right project is opened. If there isn\'t a project
    yet, click on `Create
    Project`{.interpreted-text role="guilabel"}, fill out the project
    name and other details of the company, and click on
    `Create`{.interpreted-text role="guilabel"}.

    ![Filling out the details of a new project.](google/new-project-details.png){.align-center}

    :::: tip
    ::: title
    Tip
    :::

    Choose the name of the company from the drop-down menu.
    ::::

#### OAuth consent screen {#google-sign-in/oauth}

1.  On the left side menu, click on
    `OAuth consent screen`{.interpreted-text role="menuselection"}.

    ![Google OAuth consent selection menu.](google/consent-selection.png){.align-center}

2.  Choose one of the options (`Internal`{.interpreted-text
    role="guilabel"} / `External`{.interpreted-text role="guilabel"}),
    and click on `Create`{.interpreted-text role="guilabel"}.

    ![Choice of a user type in OAuth consent.](google/consent.png){.align-center}

    :::: warning
    ::: title
    Warning
    :::

    *Personal* Gmail Accounts are only allowed to be **External** User
    Type, which means Google may require an approval, or for *Scopes* to
    be added on. However, using a *Google WorkSpace* account allows for
    **Internal** User Type to be used.

    Note, as well, that while the API connection is in the *External*
    testing mode, then no approval is necessary from Google. User limits
    in this testing mode is set to 100 users.
    ::::

3.  Fill out the required details and domain info, then click on
    `Save and Continue`{.interpreted-text role="guilabel"}.

4.  On the `Scopes`{.interpreted-text role="menuselection"} page, leave
    all fields as is, and click on `Save and
    Continue`{.interpreted-text role="guilabel"}.

5.  Next, if continuing in testing mode (*External*), add the email
    addresses being configured under the `Test users`{.interpreted-text
    role="guilabel"} step by clicking on `Add Users`{.interpreted-text
    role="guilabel"}, and then the `Save and Continue`{.interpreted-text
    role="guilabel"} button. A summary of the app registration appears.

6.  Finally, scroll to the bottom, and click on
    `Back to Dashboard`{.interpreted-text role="guilabel"}.

#### Credentials {#google-sign-in/credentials}

1.  On the left side menu, click on `Credentials`{.interpreted-text
    role="menuselection"}.

    ![Credentials button menu.](google/credentials-button.png){.align-center}

2.  Click on `Create Credentials`{.interpreted-text role="guilabel"},
    and select `OAuth client ID`{.interpreted-text role="guilabel"}.

    ![OAuth client id selection.](google/client-id.png){.align-center}

3.  Select `Web Application`{.interpreted-text role="guilabel"} as the
    `Application Type`{.interpreted-text role="guilabel"}. Now,
    configure the allowed pages on which Odoo will be redirected.

    In order to achieve this, in the
    `Authorized redirect URIs`{.interpreted-text role="guilabel"} field,
    enter the database\'s domain immediately followed by
    [/auth_oauth/signin]{.title-ref}. For example:
    [https://mydomain.odoo.com/auth_oauth/signin]{.title-ref}, then
    click on `Create`{.interpreted-text role="guilabel"}.

4.  Now that the *OAuth client* has been created, a screen will appear
    with the `Client ID`{.interpreted-text role="guilabel"} and
    `Client Secret`{.interpreted-text role="guilabel"}. Copy the
    `Client ID`{.interpreted-text role="guilabel"} for later, as it will
    be necessary for the configuration in Odoo, which will be covered in
    the following steps.

### Google Authentication on Odoo {#google-sign-in/auth-odoo}

#### Retrieve the Client ID {#google-sign-in/client-id}

Once the previous steps are complete, two keys are generated on the
Google API Dashboard: `Client ID`{.interpreted-text role="guilabel"} and
`Client Secret`{.interpreted-text role="guilabel"}. Copy the
`Client ID`{.interpreted-text role="guilabel"}.

![Google OAuth Client ID generated.](google/secret-ids.png){.align-center}

#### Odoo activation {#google-sign-in/odoo-activation}

1.  Go to `Odoo General Settings --> Integrations`{.interpreted-text
    role="menuselection"} and activate `OAuth
    Authentication`{.interpreted-text role="guilabel"}.

    :::: note
    ::: title
    Note
    :::

    Odoo may prompt the user to log-in again after this step.
    ::::

2.  Go back to
    `General Settings --> Integrations --> OAuth Authentication`{.interpreted-text
    role="menuselection"}, activate the selection and
    `Save`{.interpreted-text role="guilabel"}. Next, return to
    `General Settings -->
    Integrations --> Google Authentication`{.interpreted-text
    role="menuselection"} and activate the selection. Then fill out the
    `Client ID`{.interpreted-text role="guilabel"} with the key from the
    Google API Dashboard, and `Save`{.interpreted-text role="guilabel"}.

    ![Filling out the client id in Odoo settings.](google/odoo-client-id.png){.align-center}

    :::: note
    ::: title
    Note
    :::

    Google OAuth2 configuration can also be accessed by clicking on
    `OAuth Providers`{.interpreted-text role="guilabel"} under the
    `OAuth Authentication`{.interpreted-text role="guilabel"} heading in
    `Integrations`{.interpreted-text role="menuselection"}.
    ::::

## Log in to Odoo with Google {#google-sign-in/log-in}

To link the Google account to the Odoo profile, click on
`Log in with Google`{.interpreted-text role="guilabel"} when first
logging into Odoo.

> ![Reset password screen with \"Log in with Google\" button.](google/first-login.png){.align-center}

Existing users must
`reset their password <users/reset-password>`{.interpreted-text
role="ref"} to access the `Reset Password`{.interpreted-text
role="menuselection"} page, while new users can directly click on
`Log in with
Google`{.interpreted-text role="guilabel"}, instead of choosing a new
password.

::: seealso
\- [Google Cloud Platform Console Help - Setting up OAuth
2.0](https://support.google.com/cloud/answer/6158849)
:::




--- SOURCE: general/users/language.md ---

# Change languages

You select the language of your database upon its creation. However, you
can `add <language/add>`{.interpreted-text role="ref"} and
`install <language/install>`{.interpreted-text role="ref"} additional
languages to allow users to manage the database in another language or
to
`translate <../../websites/website/configuration/translate>`{.interpreted-text
role="doc"} your website.

## Add languages {#language/add}

To download additional languages:

- either click the profile icon in the upper-right corner, select
  `My profile`{.interpreted-text role="menuselection"}, and click the
  `fa-globe`{.interpreted-text role="icon"} (`globe`{.interpreted-text
  role="guilabel"}) icon next to the `Language`{.interpreted-text
  role="guilabel"} field;
- or go to the **Settings** app, and click
  `Add Languages`{.interpreted-text role="guilabel"} in the
  `Languages`{.interpreted-text role="guilabel"} section.

You can then select the languages you want from the dropdown menu and
click `Add`{.interpreted-text role="guilabel"}.

::: seealso
`Translations <../../websites/website/configuration/translate>`{.interpreted-text
role="doc"}
:::

## Change languages {#language/install}

To select their preferred language, users can click the profile icon in
the upper-right corner, go to `My profile`{.interpreted-text
role="menuselection"}, and select a `Language`{.interpreted-text
role="guilabel"} in the dropdown list.

### Change another user\'s language

To change the database language for a user:

1.  Go to the `Settings`{.interpreted-text role="guilabel"} app and
    click `Manage Users`{.interpreted-text role="guilabel"} in the
    `Users`{.interpreted-text role="guilabel"} section.
2.  Click on the user whose language you want to change.
3.  Go to the `Preferences`{.interpreted-text role="guilabel"} tab and
    select a previously
    `installed language <language/add>`{.interpreted-text role="ref"}
    from the `Language`{.interpreted-text role="guilabel"} dropdown
    menu.

:::: note
::: title
Note
:::

Emails and documents will be sent to the user in the selected language.
::::




--- SOURCE: general/users/ldap.md ---

# Sign in with LDAP

- Install the Lightweight Directory Access Protocol (LDAP) module in
  General Settings.
- Click on **Create** in Setup the
  `LDAP (Lightweight Directory Access Protocol)`{.interpreted-text
  role="abbr"} Server.

![LDAP Authentication checkbox highlighted in the integrations settings on Odoo.](ldap/ldap01.png){.align-center}

![Create highlighted in the LDAP server settings.](ldap/ldap02.png){.align-center}

- Choose the company using the LDAP.

![Select the company drop-down menu highlighted in LDAP setup.](ldap/ldap03.png){.align-center}

- In **Server Information**, enter the IP address of the server and the
  port it listens to.
- Tick **Use TLS** if the server is compatible.

![LDAP server settings highlighted in LDAP server setup on Odoo.](ldap/ldap04.png){.align-center}

- In **Login Information**, enter ID and password of the account used to
  query the server. If left empty, the server queries anonymously.

![Login information highlighted in LDAP server setup on Odoo.](ldap/ldap05.png){.align-center}

- In **Process Parameter**, enter the domain name of the LDAP server in
  `LDAP (Lightweight
  Directory Access Protocol)`{.interpreted-text role="abbr"}
  nomenclature (e.g. `dc=example,dc=com`).
- In **LDAP filter**, enter `uid=%s`

![Process parameter highlighted in LDAP server setup on Odoo.](ldap/ldap06.png){.align-center}

- In **User Information**, tick *Create User* if Odoo should create a
  User profile the first time someone logs in with
  `LDAP (Lightweight Directory Access Protocol)`{.interpreted-text
  role="abbr"}.
- In **Template User**, indicate a template for the new profiles
  created. If left blanked, the admin profile will be used as template.

![User information highlighted on LDAP server setup on Odoo.](ldap/ldap07.png){.align-center}




--- SOURCE: general/users/portal.md ---

# Portal access

::: {#portal/main}
Portal access is given to users who need the ability to view certain
documents or information within an Odoo database.
:::

Some common use cases for providing portal access include allowing
customers to read/view any or all of the following in Odoo:

- leads/opportunities
- quotations/sales orders
- purchase orders
- invoices & bills
- projects
- tasks
- timesheets
- tickets
- signatures
- subscriptions

:::: note
::: title
Note
:::

Portal users only have read/view access, and will not be able to edit
any documents in the database.
::::

## Provide portal access to customers

From the main Odoo dashboard, select the `Contacts`{.interpreted-text
role="guilabel"} application. If the contact is not yet created in the
database, click on the `Create`{.interpreted-text role="guilabel"}
button, enter the details of the contact, and then click
`Save`{.interpreted-text role="guilabel"}. Otherwise, choose an existing
contact, and then click on the `Action`{.interpreted-text
role="guilabel"} drop-down menu located at the top-center of the
interface.

![Use the Contacts application to give portal access to users.](portal/grant-portal-access.png){.align-center}

Then select `Grant portal access`{.interpreted-text role="guilabel"}. A
pop-up window appears, listing three fields:

- `Contact`{.interpreted-text role="guilabel"}: the recorded name of the
  contact in the Odoo database
- `Email`{.interpreted-text role="guilabel"}: the contact\'s email
  address that they will use to log into the portal
- `In Portal`{.interpreted-text role="guilabel"}: whether or not the
  user has portal access

To grant portal access, first enter the contact\'s
`Email`{.interpreted-text role="guilabel"} they will use to log into the
portal. Then, check the box under the `In Portal`{.interpreted-text
role="guilabel"} column. Optionally, add text to the invitation message
the contact will receive. Then click `Apply`{.interpreted-text
role="guilabel"} to finish.

![An email address and corresponding checkbox for the contact need to be filled in before
sending a portal invitation.](portal/add-contact-to-portal.png){.align-center}

An email will be sent to the specified email address, indicating that
the contact is now a portal user for that Odoo database.

:::: tip
::: title
Tip
:::

To grant portal access to multiple users at once, navigate to a company
contact, then click `Action --> Grant portal access`{.interpreted-text
role="menuselection"} to view a list of all of the company\'s related
contacts. Check the box under the `In Portal`{.interpreted-text
role="guilabel"} column for all the contacts that need portal access,
then click `Apply`{.interpreted-text role="guilabel"}.
::::

:::: note
::: title
Note
:::

At any time, portal access can be revoked by navigating to the contact,
clicking `Action --> Grant portal access`{.interpreted-text
role="menuselection"}, and then unselecting the checkbox under the
`In Portal`{.interpreted-text role="guilabel"} column and clicking
`Apply`{.interpreted-text role="guilabel"}.
::::

## Change portal username {#portal/login}

There may be times when a portal user wants to change their user login.
This can be done by any user in the database with administrator access
rights. The following process outlines the necessary steps to change the
portal user login.

::: seealso
`See the documentation on setting access rights
</applications/general/users/access_rights>`{.interpreted-text
role="doc"}.
:::

First, navigate to `Settings app --> Users`{.interpreted-text
role="menuselection"}. Then, under `Filters`{.interpreted-text
role="guilabel"}, select `Portal Users`{.interpreted-text
role="guilabel"}, or select `Add Custom Filter`{.interpreted-text
role="guilabel"} and set the following configuration
`Groups`{.interpreted-text role="guilabel"} \>
`contains`{.interpreted-text role="guilabel"} \> [portal]{.title-ref}.
After making this selection, search for (and open) the portal user that
needs to be edited.

Next, click `Edit`{.interpreted-text role="guilabel"} (if necessary),
click into the `Email Address`{.interpreted-text role="guilabel"} field,
and proceed to make any necessary changes to this field. The
`Email Address`{.interpreted-text role="guilabel"} field is used to log
into the Odoo portal.

:::: note
::: title
Note
:::

Changing the `Email Address`{.interpreted-text role="guilabel"} (or
login) only changes the *username* on the customer\'s portal login.

In order to change the contact email, this change needs to take place on
the contact template in the *Contacts* app. Alternatively, the customer
can change their email directly from the portal, but the login
**cannot** be changed.
`See change customer info <portal/custinfo>`{.interpreted-text
role="ref"}.
::::

## Customer portal changes

There may be times when the customer would like to make changes to their
contact information, password/security, or payment information attached
to the portal account. This can be performed by the customer from their
portal. The following process is how a customer can change their contact
information.

### Change customer info {#portal/custinfo}

First enter the username and password (login) into the database login
page to access the portal user account. A portal dashboard will appear
upon successfully logging in. Portal documents from the various
installed Odoo applications will appear with the number count of each.

::: seealso
`Portal access documentation <portal/main>`{.interpreted-text
role="ref"}.
:::

Next, navigate to the upper-right corner of the portal, and click the
`Edit`{.interpreted-text role="guilabel"} button, next to the
`Details`{.interpreted-text role="guilabel"} section. Then, change the
pertinent information, and click `Confirm`{.interpreted-text
role="guilabel"}.

### Change password

First enter the username and password (login) into the database login
page to access the portal user account. A portal dashboard will appear
upon successfully logging in.

If the customer would like to change their password for portal access,
click on the `Edit
Security Settings`{.interpreted-text role="guilabel"} link, below the
`Account Security`{.interpreted-text role="guilabel"} section. Then,
make the necessary changes, by typing in the current
`Password`{.interpreted-text role="guilabel"},
`New Password`{.interpreted-text role="guilabel"}, and verify the new
password. Lastly, click on `Change Password`{.interpreted-text
role="guilabel"} to complete the password change.

:::: note
::: title
Note
:::

If a customer would like to change the login, as documented above,
contact the Odoo database point-of-contact.
`See above documentation on changing the portal username <portal/login>`{.interpreted-text
role="ref"}.
::::

:::: note
::: title
Note
:::

Passwords for portal users and Odoo.com users remain separate, even if
the same email address is used.
::::

### Add two-factor authentication

First enter the username and password (login) into the database login
page to access the portal user account. A portal dashboard will appear
upon successfully logging in.

If the customer would like to turn on two-factor authentication (2FA)
for portal access, click on the
`Edit Security Settings`{.interpreted-text role="guilabel"} link, below
the `Account Security`{.interpreted-text role="guilabel"} section.

Click on `Enable two-factor authentication`{.interpreted-text
role="guilabel"} to turn on `2FA (two-factor
authentication)`{.interpreted-text role="abbr"}. Confirm the current
portal password in the `Password`{.interpreted-text role="guilabel"}
field. Then, click on `Confirm Password`{.interpreted-text
role="guilabel"}. Next, activate
`2FA (two-factor authentication)`{.interpreted-text role="abbr"} in a
`2FA (two-factor authentication)`{.interpreted-text role="abbr"} app
(Google Authenticator, Authy, etc.), by scanning the
`QR code`{.interpreted-text role="guilabel"} or entering a
`Verification Code`{.interpreted-text role="guilabel"}.

Finally, click `Enable two-factor authentication`{.interpreted-text
role="guilabel"} to complete the setup.

### Change payment info {#users-portal-payment-methods}

First enter the username and password (login) into the database login
page to access the portal user account. A portal dashboard will appear
upon successfully logging in.

If the customer would like to manage payment options, navigate to the
`Manage payment
methods`{.interpreted-text role="guilabel"} in the menu on the right.
Then, add the new payment information, and select `Add
new card`{.interpreted-text role="guilabel"}.




--- SOURCE: general/users.md ---

show-content

:   

# Users

Odoo defines a *user* as someone who has access to a database. An
administrator can add as many users as the company needs and, in order
to restrict the type of information each user can access, rules can be
applied to each user. Users and access rights can be added and changed
at any point.

::: seealso
\- `users/language`{.interpreted-text role="doc"} -
`users/access_rights`{.interpreted-text role="doc"} -
`access-rights/superuser`{.interpreted-text role="ref"} -
`access-rights/groups`{.interpreted-text role="ref"}
:::

## Add individual users {#users/add-individual}

To add new users, navigate to
`Settings app --> Users section --> Manage Users`{.interpreted-text
role="menuselection"}, and click on `Create`{.interpreted-text
role="guilabel"}.

![View of the settings page emphasizing the manage users field in Odoo.](users/manage-users.png){.align-center}

Fill in the form with all the required information. Under the
`Access Rights
<users/access_rights>`{.interpreted-text role="doc"} tab, choose the
group within each application the user can have access to.

The list of applications shown is based on the applications installed on
the database.

![View of a user\'s form emphasizing the access rights tab in Odoo.](users/new-user.png){.align-center}

After filling out all the necessary fields on the page, click
`Save`{.interpreted-text role="guilabel"}. An invitation email is
automatically sent to the user, using the email in the
`Email Address`{.interpreted-text role="guilabel"} field. The user must
click on the link included in the email to accept the invitation, and to
create a database login.

![View of a user\'s form with a notification that the invitation email has been sent in Odoo.](users/invitation-email.png){.align-center}

:::: warning
::: title
Warning
:::

If the company is on a monthly subscription plan, the database
automatically updates to reflect the added users. If the company is on a
yearly or multi-year plan, an expiration banner appears in the database.
An upsell quotation can be created by clicking the banner to update the
subscription. Alternatively, [send a support
ticket](https://www.odoo.com/help) to resolve the issue.
::::

### User type

With the `developer mode <developer-mode>`{.interpreted-text role="ref"}
activated, `User Type`{.interpreted-text role="guilabel"} can be
selected from the `Access Rights`{.interpreted-text role="guilabel"} tab
of the user form, accessible via `Settings app
--> Users section --> Manage Users`{.interpreted-text
role="menuselection"}.

There are three types of users: `Internal User`{.interpreted-text
role="guilabel"}, `Portal`{.interpreted-text role="guilabel"}, and
`Public`{.interpreted-text role="guilabel"}.

![View of a user\'s form in developer mode emphasizing the user type field in Odoo.](users/user-type.png){.align-center}

:::: tip
::: title
Tip
:::

Users are considered internal database users. Portal users are external
users, who only have access to the database portal to view records. See
the documentation on `users/portal`{.interpreted-text role="doc"}.

Public users are those visiting websites, via the website\'s frontend.
::::

The `Portal`{.interpreted-text role="guilabel"} and
`Public`{.interpreted-text role="guilabel"} user options do **not**
allow the administrator to choose access rights. These users have
specific access rights pre-set (such as, record rules and restricted
menus), and usually do not belong to the usual Odoo groups.

## Deactivate users {#users/deactivate}

To deactivate (i.e. archive) a user, navigate to
`Settings app --> Users section -->
Manage Users`{.interpreted-text role="menuselection"}. Then, tick the
checkbox to the left of the user(s) to be deactivated.

After selecting the appropriate user to be archived, click the
`⚙️ Actions`{.interpreted-text role="guilabel"} icon, and select
`Archive`{.interpreted-text role="guilabel"} from the resulting
drop-down menu. Then, click `OK`{.interpreted-text role="guilabel"} from
the `Confirmation`{.interpreted-text role="guilabel"} pop-up window that
appears.

:::: danger
::: title
Danger
:::

**Never** deactivate the main/administrator user (admin). Making changes
to admin users can have a detrimental impact on the database. This
includes *impotent admin*, which means that no user in the database can
make changes to the access rights. For this reason, Odoo recommends
contacting an Odoo Business Analyst, or our Support Team, before making
changes.
::::

### Error: too many users

If there are more users in an Odoo database than provisioned in the Odoo
Enterprise subscription, the following message is displayed.

![Too many users on a database error message.](users/add-more-users.png){.align-center}

When the message appears, the database administrator has 30 days to act
before the database expires. The countdown is updated every day.

To resolve the issue, either:

- Add more users to the subscription by clicking the
  `Upgrade your subscription`{.interpreted-text role="guilabel"} link
  displayed in the message to validate the upsell quotation, and pay for
  the extra users.
- `Deactivate users <users/deactivate>`{.interpreted-text role="ref"},
  and reject the upsell quotation.

:::: warning
::: title
Warning
:::

If the company is on a monthly subscription plan, the database
automatically updates to reflect the added users. If the company is on a
yearly or multi-year plan, an expiration banner appears in the database.
An upsell quotation can be created by clicking the banner to update the
subscription. Alternatively, users can [send a support
ticket](https://www.odoo.com/help) to resolve the issue.
::::

Once the database has the correct number of users, the expiration
message disappears automatically after a few days, when the next
verification occurs.

## Password management {#users/passwords-management}

Password management is an important part of granting users autonomous
access to the database at all times. Odoo offers a few different methods
to reset a user\'s password.

:::: tip
::: title
Tip
:::

Odoo has a setting to specify the length needed for a password. This
setting can be accessed by navigating to
`Settings app --> Permissions`{.interpreted-text role="menuselection"}
section, and entering the desired password length in the
`Minimum Password Length`{.interpreted-text role="guilabel"} field. By
default the value is [8]{.title-ref}.
::::

![Minimum Password Length highlighted in the Permissions section of General Settings.](users/minimum-password-length.png){.align-center}

### Reset password {#users/reset-password}

Sometimes, users might wish to reset their personal password for added
security, so they are the only ones with access to the password. Odoo
offers two different reset options: one initiated by the user to reset
the password, and another where the administrator triggers a reset.

#### Enable password reset from login page {#users/reset-password-login}

It is possible to enable/disable password resets directly from the login
page. This action is completed by the individual user, and this setting
is enabled by default.

To change this setting, go to
`Settings app --> Permissions`{.interpreted-text role="menuselection"}
section, activate `Password Reset`{.interpreted-text role="guilabel"},
and then click `Save`{.interpreted-text role="guilabel"}.

![Enabling Password Reset in Odoo Settings](users/password-reset-login.png){.align-center}

On the login page, click `Reset Password`{.interpreted-text
role="guilabel"} to initiate the password reset process, and have a
reset-token sent to the email on file.

![Login screen on Odoo.com with the password reset option highlighted.](users/password-reset.png){.align-center}

#### Send reset instructions {#users/reset-password-email}

Go to `Settings app --> Users & Companies --> Users`{.interpreted-text
role="menuselection"}, select the user from the list, and click on
`Send Password Reset Instructions`{.interpreted-text role="guilabel"} on
the user form. An email is automatically sent to them with password
reset instructions.

:::: note
::: title
Note
:::

The `Send Password Reset Instructions`{.interpreted-text
role="guilabel"} button **only** appears if the Odoo invitation email
has already been confirmed by the user. Otherwise, a
`Re-send Invitation Email`{.interpreted-text role="guilabel"} button
appears.
::::

This email contains all the instructions needed to reset the password,
along with a link redirecting the user to an Odoo login page.

![Example of an email with a password reset link for an Odoo account.](users/password-reset-email.png){.align-center}

### Change user password {#users/change-password}

Go to `Settings app --> Users & Companies --> Users`{.interpreted-text
role="menuselection"}, and select a user to access its form. Click on
the `⚙️ Actions`{.interpreted-text role="guilabel"} icon, and select
`Change Password`{.interpreted-text role="guilabel"} from, the resulting
drop-down menu. Enter a new password in the
`New Password`{.interpreted-text role="guilabel"} column of the
`Change Password`{.interpreted-text role="guilabel"} pop-up window that
appears, and confirm the change by clicking
`Change Password`{.interpreted-text role="guilabel"}.

![Change a user\'s password on Odoo.](users/change-password.png){.align-center}

:::: note
::: title
Note
:::

This operation only modifies the password of the users locally, and does
**not** affect their odoo.com account.

If the odoo.com password needs to be changed, use the
`send the password reset instructions
<users/reset-password-email>`{.interpreted-text role="ref"}. Odoo.com
passwords grant access to the *My Databases* page, and other portal
features.
::::

After clicking `Change Password`{.interpreted-text role="guilabel"}, the
page is redirected to an Odoo login page where the database can be
re-accessed using the new password.

## Multi Companies {#users/multi-companies}

The `Multi Companies`{.interpreted-text role="guilabel"} field on a user
form allows an administrator to provide access to multiple companies for
existing users. To configure a multi-company environment for a user,
navigate to the desired user by going to:
`Settings app --> Users section --> Manage users`{.interpreted-text
role="menuselection"}. Then, select the user to open their user form,
and configure with multi-company access.

Under `Multi Companies`{.interpreted-text role="guilabel"} in the
`Access Rights`{.interpreted-text role="guilabel"} tab, set the fields
labeled `Allowed Companies`{.interpreted-text role="guilabel"} and
`Default Company`{.interpreted-text role="guilabel"}.

The `Allowed Companies`{.interpreted-text role="guilabel"} field can
contain multiple companies. These are the companies the user can access
and edit, according to the set access rights. The
`Default Company`{.interpreted-text role="guilabel"} is the company the
user defaults to, upon logging in each time. This field can contain only
**one** company.

:::: warning
::: title
Warning
:::

If multi-company access is not configured correctly, it could lead to
inconsistent multi-company behaviors. Because of this, only experienced
Odoo users should make access rights changes to users for databases with
a multi-company configuration. For technical explanations, refer to the
developer documentation on
`../../../developer/howtos/company`{.interpreted-text role="doc"}.
::::

![View of a user\'s form emphasizing the multi companies field in Odoo.](users/multi-companies.png){.align-center}

::: seealso
`companies`{.interpreted-text role="doc"}
:::

::: {.toctree titlesonly=""}
users/language users/2fa users/access_rights users/portal users/google
users/azure users/ldap
:::




--- SOURCE: studio/approval_rules.md ---

# Approval rules

Approval rules are used to automate approval processes for actions. They
allow you to define the criteria for when an approval is required before
an action can be performed using a button.

## Configuration

To add approval rules with Studio, proceed as follows:

1.  `Open Studio <studio/access>`{.interpreted-text role="ref"} and
    switch to the required `view <views>`{.interpreted-text role="doc"}.
2.  Select the button for which you want to add approval rules.
3.  In the `Properties`{.interpreted-text role="guilabel"} tab on the
    left, enable the `Set approval rules`{.interpreted-text
    role="guilabel"} feature.
4.  Specify the `Approval Group`{.interpreted-text role="guilabel"} to
    limit the approval permission to a specific user group.
5.  Define the `Responsible`{.interpreted-text role="guilabel"} user to
    create an activity for a specific user when an approval is requested
    from them.
6.  Add a `Description`{.interpreted-text role="guilabel"} to be
    displayed in the
    `Approval dialog <approval-rules/use>`{.interpreted-text
    role="ref"}.
7.  Enable `Limit approver to this rule`{.interpreted-text
    role="guilabel"} to require approvers to be different users (when
    there are multiple approval rules).

Optionally, you can also add conditions for the approval rule to be
applied by clicking the `fa-filter`{.interpreted-text role="icon"}
(`filter`{.interpreted-text role="guilabel"}) icon next to the
`Approval Group`{.interpreted-text role="guilabel"} field.

Click `Add an approval rule`{.interpreted-text role="guilabel"} to add
another rule.

Click the `fa-trash`{.interpreted-text role="icon"}
(`trash`{.interpreted-text role="guilabel"}) icon next to the
`Approval group`{.interpreted-text role="guilabel"} field to delete the
approval rule.

:::: tip
::: title
Tip
:::

You can create `user groups <access-rights/groups>`{.interpreted-text
role="ref"} specifically for approvals.
::::

## Use {#approval-rules/use}

Once approval rules have been defined for a button:

- A **user avatar** icon is displayed next to the button\'s label for
  each approval rule that has been defined.

  > ![Confirm button with approval for purchase orders](approval_rules/approvals-button.png)

- When an unauthorized user clicks the button, an error message is
  displayed in the top-right corner and an activity is created for the
  user specified in the `Responsible`{.interpreted-text role="guilabel"}
  field.

- Only users from the group defined in the
  `Approval Group`{.interpreted-text role="guilabel"} field are allowed
  to approve or reject the action.

Authorized users can:

- approve and perform the action by clicking the button;
- approve the action and allow another user to perform it by clicking
  the **user avatar** icon next to the button\'s label, then clicking
  the `fa-check`{.interpreted-text role="icon"}
  (`Approve`{.interpreted-text role="guilabel"}) button in the dialog
  that opens.
- reject the action by clicking the **user avatar** icon next to the
  button\'s label, then clicking the `fa-times`{.interpreted-text
  role="icon"} (`Reject`{.interpreted-text role="guilabel"}) button in
  the dialog that opens.

![Approval dialog](approval_rules/approvals-awaiting.png)

:::: tip
::: title
Tip
:::

\- The user who approved/rejected the action can revoke their decision
by clicking the **user avatar** icon next to the button\'s label, then
clicking the `fa-undo`{.interpreted-text role="icon"}
(`Revoke`{.interpreted-text role="guilabel"}) button. - Approvals are
tracked in the record\'s chatter. An approval entry is also created
every time a Studio approval-related action is performed. To access the
approval entries, `activate
the developer mode </applications/general/developer_mode>`{.interpreted-text
role="doc"} and go to `Settings
--> Technical --> Studio Approval Entries`{.interpreted-text
role="menuselection"}.
::::




--- SOURCE: studio/automated_actions.md ---

# Automated actions (automations)

Automated actions are used to trigger automatic changes based on user
actions (e.g., apply a modification when a field is set to a specific
value) or on time conditions (e.g., archive a record 7 days after its
last update).

To create an automated action with Studio,
`open Studio <studio/access>`{.interpreted-text role="ref"}, then go to
`Automations`{.interpreted-text role="guilabel"} and click
`New`{.interpreted-text role="guilabel"}.

For every automated action you create, the following elements should be
defined: the `studio/automated-actions/model`{.interpreted-text
role="ref"}, the `studio/automated-actions/trigger`{.interpreted-text
role="ref"}, the `studio/automated-actions/apply-on`{.interpreted-text
role="ref"}, and the `studio/automated-actions/action`{.interpreted-text
role="ref"}.

::: example
![Example of an automated action on the Subscription model](automated_actions/automated-action-example.png){.align-center}
:::

## Model {#studio/automated-actions/model}

Select the model where the automated action should be applied.

:::: note
::: title
Note
:::

The model you are on when you click on `Automations`{.interpreted-text
role="guilabel"} is pre-selected by default.
::::

## Trigger {#studio/automated-actions/trigger}

Define when the automated action should be applied. Six triggers are
available.

### On Creation {#studio/automated-actions/trigger/on-creation}

The action is triggered when a record is created and then saved.

### On Update {#studio/automated-actions/trigger/on-update}

The action is triggered when a previously saved record is edited and
then saved.

- Use `Trigger Fields`{.interpreted-text role="guilabel"} to specify
  which fields - and only those - trigger the action on their update.

- To detect when a record changes from one state to another, define a
  `Before Update
  Domain`{.interpreted-text role="guilabel"} filter, which checks if the
  condition is satisfied before the record is updated. Then set an
  `studio/automated-actions/apply-on`{.interpreted-text role="ref"}
  filter, which checks if the condition is met after the record is
  updated.

  ::: example
  If you want the automated action to happen when an email address is
  set on a contact, define the `Before Update Domain`{.interpreted-text
  role="guilabel"} to [Email is not set]{.title-ref}, and the
  `Apply on`{.interpreted-text role="guilabel"} domain to [Email is
  set]{.title-ref}.

  ![Example of an On Update trigger](automated_actions/on-update-trigger-example.png){.align-center}
  :::

### On Creation & Update {#studio/automated-actions/trigger/on-creation-update}

The action is triggered when a record is created and saved or edited
afterward and saved.

### On Deletion {#studio/automated-actions/trigger/on-deletion}

The action is triggered when a record is deleted.

:::: note
::: title
Note
:::

This trigger is rarely used, as archiving records is usually preferred
to deletion.
::::

### Based on Form Modification {#studio/automated-actions/trigger/form-modification}

The action is triggered when any change is done to a trigger field\'s
value on the `Form view
<studio/views/general/form>`{.interpreted-text role="ref"}, even before
saving the record. This trigger only works on the user interface when a
modification is made by a user. If the field is changed through another
action and not by the user, the action will not run.

:::: note
::: title
Note
:::

This trigger can only be used with the `Execute Python Code action
<studio/automated-actions/action/python-code>`{.interpreted-text
role="ref"}, so development is required.
::::

### Based on Timed Condition {#studio/automated-actions/trigger/timed-condition}

The action is triggered when a trigger field\'s date or date & time
value is reached.

- To trigger the action after the `Trigger Date`{.interpreted-text
  role="guilabel"}, add a number of minutes, hours, days, or months
  under `Delay after trigger date`{.interpreted-text role="guilabel"}.
  To trigger the action before, add a negative number instead.

  ::: example
  If you want to send a reminder email 30 minutes before the start of a
  calendar event, select the `Start (Calendar Event)`{.interpreted-text
  role="guilabel"} under `Trigger Date`{.interpreted-text
  role="guilabel"} and set the
  `Delay after trigger date`{.interpreted-text role="guilabel"} to
  **-30** `Minutes`{.interpreted-text role="guilabel"}.

  ![Example of a Based on Timed Condition trigger](automated_actions/timed-condition-trigger-example.png){.align-center}
  :::

:::: note
::: title
Note
:::

By default, the scheduler checks for trigger dates every 4 hours.
::::

## Apply on {#studio/automated-actions/apply-on}

Define on which records of the model the automated action should be
applied. It works the same way as when you apply filters on a model.

## Action To Do {#studio/automated-actions/action}

Determine what the automated action should do (server action). There are
eight types of action to choose from.

### Execute Python Code {#studio/automated-actions/action/python-code}

The action is used to execute Python code. The available variables are
described on the `Python Code`{.interpreted-text role="guilabel"} tab,
which is also used to write your code, or on the
`Help`{.interpreted-text role="guilabel"} tab.

- To allow the action to be run through the website, tick
  `Available on the Website`{.interpreted-text role="guilabel"} and add
  a `Website Path`{.interpreted-text role="guilabel"}.

### Create a new Record {#studio/automated-actions/action/new-record}

The action is used to create a new record on any model.

:::: note
::: title
Note
:::

Selecting a `Target Model`{.interpreted-text role="guilabel"} is only
required if you want to target another model than the one you are on.
::::

- To link the record that triggered the creation of the new record,
  select a field under `Link Field`{.interpreted-text role="guilabel"}.
  For example, you could create a contact automatically when a lead is
  turned into an opportunity.
- `Data to Write`{.interpreted-text role="guilabel"} tab: the tab is
  used to specify the new record\'s values. After selecting a
  `Field`{.interpreted-text role="guilabel"}, select its
  `Evaluation Type`{.interpreted-text role="guilabel"}:
  - `Value`{.interpreted-text role="guilabel"}: used to directly give
    the field\'s raw value in the `Value`{.interpreted-text
    role="guilabel"} column.

  - `Reference`{.interpreted-text role="guilabel"}: used to select the
    record under the `Record`{.interpreted-text role="guilabel"} column
    and let Studio add the internal ID in the `Value`{.interpreted-text
    role="guilabel"} column.

    ::: example
    If an automated action creates a new task in a project, you can
    assign it to a specific user by setting the
    `Field`{.interpreted-text role="guilabel"} to
    `Responsible User (Project)`{.interpreted-text role="guilabel"}, the
    `Evaluation Type`{.interpreted-text role="guilabel"} to
    `Reference`{.interpreted-text role="guilabel"}, and the
    `Record`{.interpreted-text role="guilabel"} to a specific user.

    ![Example of a Create a new Record action](automated_actions/new-record-example.png){.align-center}
    :::

  - `Python expression`{.interpreted-text role="guilabel"}: used to
    dynamically define the newly created record's value for a field
    using Python code in the `Value`{.interpreted-text role="guilabel"}
    column.

### Update the Record {#studio/automated-actions/action/update-record}

The action is used to set value(s) for field(s) of any record on the
current model.

:::: note
::: title
Note
:::

The process to fill in the `Data to Write`{.interpreted-text
role="guilabel"} tab is the same as described under
`studio/automated-actions/action/new-record`{.interpreted-text
role="ref"}.
::::

### Execute several actions {#studio/automated-actions/action/several-actions}

The action is used to trigger multiple actions at the same time. To do
so, click on `Add a
line`{.interpreted-text role="guilabel"} under the
`Actions`{.interpreted-text role="guilabel"} tab. In the
`Child Actions`{.interpreted-text role="guilabel"} pop-up, click on
`Create`{.interpreted-text role="guilabel"} and configure the action.

### Send Email {#studio/automated-actions/action/send-email}

The action is used to send an email to a contact linked to a specific
record. To do so, select or create an `Email Template`{.interpreted-text
role="guilabel"}.

### Add Followers {#studio/automated-actions/action/add-followers}

The action is used to subscribe existing contacts to the record.

### Create Next Activity {#studio/automated-actions/action/next-activity}

The action is used to schedule a new activity linked to the record. Use
the `Activity`{.interpreted-text role="guilabel"} tab to set it up as
usual, but instead of the `Assigned to`{.interpreted-text
role="guilabel"} field, select an `Activity User Type`{.interpreted-text
role="guilabel"}. Select `Specific User`{.interpreted-text
role="guilabel"} and add the user under `Responsible`{.interpreted-text
role="guilabel"} if the activity should always be assigned to the same
user. To dynamically target a user linked to the record, select
`Generic User From Record`{.interpreted-text role="guilabel"} instead
and change the `User field name`{.interpreted-text role="guilabel"} if
necessary.

::: example
After a lead is turned into an opportunity, you want your automated
action to set up a call for the user responsible for the lead. To do so,
set the `Activity`{.interpreted-text role="guilabel"} to
`Call`{.interpreted-text role="guilabel"} and set the
`Activity User Type`{.interpreted-text role="guilabel"} to
`Generic User From Record`{.interpreted-text role="guilabel"}.

![Example of a Create Next Activity action](automated_actions/next-activity-example.png){.align-center}
:::

### Send SMS Text Message {#studio/automated-actions/action/send-sms}

The action is used to send an SMS to a contact linked to the record. To
do so, select or create an `SMS Template`{.interpreted-text
role="guilabel"}.

:::: tip
::: title
Tip
:::

If you want sent messages to be logged in the Chatter, tick
`Log as Note`{.interpreted-text role="guilabel"}.
::::




--- SOURCE: studio/fields.md ---

# Fields and widgets

Fields structure the models of a database. If you picture a model as a
table or spreadsheet, fields are the columns where data is stored in the
records (i.e., the rows). Fields also define the type of data that is
stored within them. How the data is presented and formatted on the
`UI (User
Interface)`{.interpreted-text role="abbr"} is defined by their widget.

From a technical point of view, there are 15 field types in Odoo.
However, you can choose from 20 fields in Studio, as some field types
are available more than once with a different default widget.

:::: tip
::: title
Tip
:::

`New Fields`{.interpreted-text role="guilabel"} can only be added to the
`studio/views/general/form`{.interpreted-text role="ref"} and
`studio/views/multiple-records/list`{.interpreted-text role="ref"}
views. On other views, you can only add
`Existing Fields`{.interpreted-text role="guilabel"}
`(fields already on the model)`{.interpreted-text role="dfn"}.
::::

## Simple fields {#studio/fields/simple-fields}

Simple fields contain basic values, such as text, numbers, files, etc.

:::: note
::: title
Note
:::

Non-default widgets, when available, are presented as bullet points
below.
::::

### Text ([char]{.title-ref}) {#studio/fields/simple-fields/text}

The `Text`{.interpreted-text role="guilabel"} field is used for short
text containing any character. One text line is displayed when filling
out the field.

- `Badge`{.interpreted-text role="guilabel"}: displays the value inside
  a rounded shape, similar to a tag. The value cannot be edited on the
  UI, but a default value can be set.

- `Copy to Clipboard`{.interpreted-text role="guilabel"}: users can copy
  the value by clicking a button.

- `E-mail`{.interpreted-text role="guilabel"}: the value becomes a
  clickable *mailto* link.

- `Image`{.interpreted-text role="guilabel"}: displays an image using a
  URL. The value cannot be edited manually, but a default value can be
  set.

  :::: note
  ::: title
  Note
  :::

  This works differently than selecting the `Image field
  <studio/fields/simple-fields/image>`{.interpreted-text role="ref"}
  directly, as the image is not stored in Odoo when using a
  `Text`{.interpreted-text role="guilabel"} field with the
  `Image`{.interpreted-text role="guilabel"} widget. For example, it can
  be useful if you want to save disk space.
  ::::

- `Phone`{.interpreted-text role="guilabel"}: the value becomes a
  clickable *tel* link.

  :::: tip
  ::: title
  Tip
  :::

  Tick `Enable SMS`{.interpreted-text role="guilabel"} to add an option
  to send an SMS directly from Odoo next to the field.
  ::::

- `URL`{.interpreted-text role="guilabel"}: the value becomes a
  clickable URL.

::: example
![Examples of Text fields with different widgets](fields/text-examples.png){.align-center}
:::

### Multiline Text ([text]{.title-ref}) {#studio/fields/simple-fields/multiline-text}

The `Multiline Text`{.interpreted-text role="guilabel"} field is used
for longer text containing any type of character. Two text lines are
displayed on the UI when filling out the field.

- `Copy to Clipboard`{.interpreted-text role="guilabel"}: users can copy
  the value by clicking a button.

::: example
![Examples of Multiline Text fields with different widgets](fields/multiline-text-examples.png){.align-center}
:::

### Integer ([integer]{.title-ref}) {#studio/fields/simple-fields/integer}

The `Integer`{.interpreted-text role="guilabel"} field is used for all
integer numbers (`positive, negative, or zero,
without a decimal`{.interpreted-text role="dfn"}).

- `Percentage Pie`{.interpreted-text role="guilabel"}: displays the
  value inside a percentage circle, usually for a computed value. The
  value cannot be edited on the UI, but a default value can be set.
- `Progress Bar`{.interpreted-text role="guilabel"}: displays the value
  next to a percentage bar, usually for a computed value. The field
  cannot be edited manually, but a default value can be set.
- `Handle`{.interpreted-text role="guilabel"}: displays a drag handle
  icon to order records manually in `List view
  <studio/views/multiple-records/list>`{.interpreted-text role="ref"}.

::: example
![Examples of Integer fields with different widgets](fields/integer-examples.png){.align-center}
:::

### Decimal ([float]{.title-ref}) {#studio/fields/simple-fields/decimal}

The `Decimal`{.interpreted-text role="guilabel"} field is used for all
decimal numbers (`positive, negative, or zero,
with a decimal`{.interpreted-text role="dfn"}).

:::: note
::: title
Note
:::

Decimal numbers are displayed with two decimals after the decimal point
on the UI, but they are stored in the database with more precision.
::::

- `Monetary`{.interpreted-text role="guilabel"}: it is similar to using
  the `Monetary field
  <studio/fields/simple-fields/monetary>`{.interpreted-text role="ref"}.
  It is recommended to use the later as it offers more functionalities.
- `Percentage`{.interpreted-text role="guilabel"}: displays a percent
  character [%]{.title-ref} after the value.
- `Percentage Pie`{.interpreted-text role="guilabel"}: displays the
  value inside a percentage circle, usually for a computed value. The
  field cannot be edited manually, but a default value can be set.
- `Progress Bar`{.interpreted-text role="guilabel"}: displays the value
  next to a percentage bar, usually for a computed value. The field
  cannot be edited manually, but a default value can be set.
- `Time`{.interpreted-text role="guilabel"}: the value must follow the
  *hh:mm* format, with a maximum of 59 minutes.

::: example
![Examples of Decimal fields with different widgets](fields/decimal-examples.png){.align-center}
:::

### Monetary ([monetary]{.title-ref}) {#studio/fields/simple-fields/monetary}

The `Monetary`{.interpreted-text role="guilabel"} field is used for all
monetary values.

:::: note
::: title
Note
:::

When you first add a `Monetary`{.interpreted-text role="guilabel"}
field, you are prompted to add a `Currency`{.interpreted-text
role="guilabel"} field if none exists already on the model. Odoo offers
to add the `Currency`{.interpreted-text role="guilabel"} field for you.
Once it is added, add the `Monetary`{.interpreted-text role="guilabel"}
field again.
::::

::: example
![Example of a Monetary field along with its Currency field](fields/monetary-example.png){.align-center}
:::

### Html ([html]{.title-ref}) {#studio/fields/simple-fields/html}

The `Html`{.interpreted-text role="guilabel"} field is used to add text
that can be edited using the Odoo HTML editor.

- `Multiline Text`{.interpreted-text role="guilabel"}: disables the Odoo
  HTML editor to allow editing raw HTML.

::: example
![Examples of Html fields with different widgets](fields/html-example.png){.align-center}
:::

### Date ([date]{.title-ref}) {#studio/fields/simple-fields/date}

The `Date`{.interpreted-text role="guilabel"} field is used to select a
date on a calendar.

- `Remaining Days`{.interpreted-text role="guilabel"}: the remaining
  number of days before the selected date is displayed (e.g., *In 5
  days*), based on the current date.

::: example
![Examples of Date fields with different widgets](fields/date-examples.png){.align-center}
:::

### Date & Time ([datetime]{.title-ref}) {#studio/fields/simple-fields/date-time}

The `Date & Time`{.interpreted-text role="guilabel"} field is used to
select a date on a calendar and a time on a clock. The user\'s current
time is automatically used if no time is set.

- `Date`{.interpreted-text role="guilabel"}: used to record the time
  without displaying it on the UI.
- `Remaining days`{.interpreted-text role="guilabel"}: displays the
  remaining number of days before the selected date (e.g., *In 5 days*),
  based on the current date and time.

::: example
![Examples of Date & Time fields with different widgets](fields/date-time-examples.png){.align-center}
:::

### Checkbox ([boolean]{.title-ref}) {#studio/fields/simple-fields/checkbox}

The `Checkbox`{.interpreted-text role="guilabel"} field is used when a
value should only be true or false, indicated by checking or unchecking
a checkbox.

- `Button`{.interpreted-text role="guilabel"}: displays a radio button.
  The widget works without switching to the edit mode.
- `Toggle`{.interpreted-text role="guilabel"}: displays a toggle button.
  The widget works without switching to the edit mode.

::: example
![Examples of Checkbox fields with different widgets](fields/checkbox-examples.png){.align-center}
:::

### Selection ([selection]{.title-ref}) {#studio/fields/simple-fields/selection}

The `Selection`{.interpreted-text role="guilabel"} field is used when
users should select a single value from a group of predefined values.

- `Badge`{.interpreted-text role="guilabel"}: displays the value inside
  a rounded shape, similar to a tag. The value cannot be edited on the
  UI, but a default value can be set.

- `Badges`{.interpreted-text role="guilabel"}: displays all selectable
  values simultaneously inside rectangular shapes, organized
  horizontally.

- `Priority`{.interpreted-text role="guilabel"}: displays star symbols
  instead of values, which can be used to indicate an importance or
  satisfaction level, for example. This has the same effect as selecting
  the
  `Priority field <studio/fields/simple-fields/priority>`{.interpreted-text
  role="ref"}, although, for the latter, four priority values are
  already predefined.

- `Radio`{.interpreted-text role="guilabel"}: displays all selectable
  values at the same time as radio buttons.

  :::: tip
  ::: title
  Tip
  :::

  By default, radio buttons are organized vertically. Tick
  `display horizontally`{.interpreted-text role="guilabel"} to switch
  the way they are displayed.
  ::::

::: example
![Examples of Selection fields with different widgets](fields/selection-examples.png){.align-center}
:::

### Priority ([selection]{.title-ref}) {#studio/fields/simple-fields/priority}

The `Priority`{.interpreted-text role="guilabel"} field is used to
display a three-star rating system, which can be used to indicate
importance or satisfaction level. This field type is a `Selection field
<studio/fields/simple-fields/selection>`{.interpreted-text role="ref"}
with the `Priority`{.interpreted-text role="guilabel"} widget selected
by default and four priority values predefined. Consequently, the
`Badge`{.interpreted-text role="guilabel"}, `Badges`{.interpreted-text
role="guilabel"}, `Radio`{.interpreted-text role="guilabel"}, and
`Selection`{.interpreted-text role="guilabel"} widgets have the same
effects as described under
`Selection <studio/fields/simple-fields/selection>`{.interpreted-text
role="ref"}.

:::: tip
::: title
Tip
:::

To change the number of available stars by adding or removing values,
click `Edit
Values`{.interpreted-text role="guilabel"}. Note that the first value is
equal to 0 stars (i.e., when no selection is made), so having four
values results in a three-star rating system, for example.
::::

::: example
![Example of a Priority field](fields/priority-example.png){.align-center}
:::

### File ([binary]{.title-ref}) {#studio/fields/simple-fields/file}

The `File`{.interpreted-text role="guilabel"} field is used to upload
any type of file, or sign a form (`Sign`{.interpreted-text
role="guilabel"} widget).

- `Image`{.interpreted-text role="guilabel"}: users can upload an image
  file, which is then displayed in `Form view
  <studio/views/general/form>`{.interpreted-text role="ref"}. This has
  the same effect as using the `Image field
  <studio/fields/simple-fields/image>`{.interpreted-text role="ref"}.
- `PDF Viewer`{.interpreted-text role="guilabel"}: users can upload a
  PDF file, which can be then browsed from the
  `Form view <studio/views/general/form>`{.interpreted-text role="ref"}.
- `Sign`{.interpreted-text role="guilabel"}: users can electronically
  sign the form. This has the same effect as selecting the
  `Sign field <studio/fields/simple-fields/sign>`{.interpreted-text
  role="ref"}.

::: example
![Examples of File fields with different widgets](fields/file-examples.png){.align-center}
:::

### Image ([binary]{.title-ref}) {#studio/fields/simple-fields/image}

The `Image`{.interpreted-text role="guilabel"} field is used to upload
an image and display it in `Form view
<studio/views/general/form>`{.interpreted-text role="ref"}. This field
type is a `File field
<studio/fields/simple-fields/file>`{.interpreted-text role="ref"} with
the `Image`{.interpreted-text role="guilabel"} widget selected by
default. Consequently, the `File`{.interpreted-text role="guilabel"},
`PDF Viewer`{.interpreted-text role="guilabel"}, and
`Sign`{.interpreted-text role="guilabel"} widgets have the same effects
as described under
`File <studio/fields/simple-fields/file>`{.interpreted-text role="ref"}.

:::: tip
::: title
Tip
:::

To change the display size of uploaded images, select
`Small`{.interpreted-text role="guilabel"}, `Medium`{.interpreted-text
role="guilabel"}, or `Large`{.interpreted-text role="guilabel"} under
the `Size`{.interpreted-text role="guilabel"} option.
::::

### Sign ([binary]{.title-ref}) {#studio/fields/simple-fields/sign}

The `Sign`{.interpreted-text role="guilabel"} field is used to sign the
form electronically. This field type is a `File
field <studio/fields/simple-fields/file>`{.interpreted-text role="ref"}
with the `Sign`{.interpreted-text role="guilabel"} widget selected by
default. Consequently, the `File`{.interpreted-text role="guilabel"},
`Image`{.interpreted-text role="guilabel"}, and
`PDF Viewer`{.interpreted-text role="guilabel"} widgets have the same
effects as described under
`File <studio/fields/simple-fields/file>`{.interpreted-text role="ref"}.

:::: tip
::: title
Tip
:::

To give users the `Auto`{.interpreted-text role="guilabel"} option when
having to draw their signature, select one of the available
`Auto-complete with`{.interpreted-text role="guilabel"} fields
(`Text <studio/fields/simple-fields/text>`{.interpreted-text
role="ref"},
`Many2One <studio/fields/relational-fields/many2one>`{.interpreted-text
role="ref"}, and `Related Field
<studio/fields/relational-fields/related-field>`{.interpreted-text
role="ref"} on the model only). The signature is automatically generated
using the data from the selected field.
::::

## Relational fields {#studio/fields/relational-fields}

Relational fields are used to link and display the data from records on
another model.

:::: note
::: title
Note
:::

Non-default widgets, when available, are presented as bullet points
below.
::::

### Many2One ([many2one]{.title-ref}) {#studio/fields/relational-fields/many2one}

The `Many2One`{.interpreted-text role="guilabel"} field is used to link
another record (from another model) to the record being edited. The
record\'s name from the other model is then displayed on the record
being edited.

::: example
On the *Sales Order* model, the `Customer`{.interpreted-text
role="guilabel"} field is a `Many2One`{.interpreted-text
role="guilabel"} field pointing at the *Contact* model. This allows
**many** sales orders to be linked to **one** contact (customer).

![Diagram showing a many2one relationship](fields/many2one-diagram.png){.align-center}
:::

:::: tip
::: title
Tip
:::

\- To prevent users from creating a new record in the linked model, tick
`Disable
creation`{.interpreted-text role="guilabel"}. - To prevent users from
opening records in a pop-up window, tick
`Disable opening`{.interpreted-text role="guilabel"}. - To help users
only select the right record, click on `Domain`{.interpreted-text
role="guilabel"} to create a filter.
::::

- `Badge`{.interpreted-text role="guilabel"}: displays the value inside
  a rounded shape, similar to a tag. The value cannot be edited on the
  UI.
- `Radio`{.interpreted-text role="guilabel"}: displays all selectable
  values at the same time as radio buttons.

### One2Many ([one2many]{.title-ref}) {#studio/fields/relational-fields/one2many}

The `One2Many`{.interpreted-text role="guilabel"} field is used to
display the existing relations between a record on the current model and
multiple records from another model.

::: example
You could add a `One2Many`{.interpreted-text role="guilabel"} field on
the *Contact* model to look at **one** customer\'s **many** sales
orders.

![Diagram showing a one2many relationship](fields/one2many-diagram.png){.align-center}
:::

:::: note
::: title
Note
:::

To use a `One2Many`{.interpreted-text role="guilabel"} field, the two
models must have been linked already using a
`Many2One field <studio/fields/relational-fields/many2one>`{.interpreted-text
role="ref"}. One2Many relations do not exist independently: a
reverse-search of existing Many2One relations is performed.
::::

### Lines ([one2many]{.title-ref}) {#studio/fields/relational-fields/lines}

The `Lines`{.interpreted-text role="guilabel"} field is used to create a
table with rows and columns (e.g., the lines of products on a sales
order).

:::: tip
::: title
Tip
:::

To modify the columns, click on the `Lines`{.interpreted-text
role="guilabel"} field and then `Edit List View`{.interpreted-text
role="guilabel"}. To edit the form that pops up when a user clicks on
`Add a line`{.interpreted-text role="guilabel"}, click on
`Edit Form View`{.interpreted-text role="guilabel"} instead.
::::

::: example
![Example of a Lines field](fields/lines-example.png){.align-center}
:::

### Many2Many ([many2many]{.title-ref}) {#studio/fields/relational-fields/many2many}

The `Many2Many`{.interpreted-text role="guilabel"} field is used to link
multiple records from another model to multiple records on the current
model. Many2Many fields can use `Disable creation`{.interpreted-text
role="guilabel"}, `Disable opening`{.interpreted-text role="guilabel"},
`Domain`{.interpreted-text role="guilabel"}, just like `Many2One fields
<studio/fields/relational-fields/many2one>`{.interpreted-text
role="ref"}.

::: example
On the *Task* model, the `Assignees`{.interpreted-text role="guilabel"}
field is a `Many2Many`{.interpreted-text role="guilabel"} field pointing
at the *Contact* model. This allows a single user to be assigned to
**many** tasks and **many** users to be assigned to a single task.

![Diagram showing many2many relationships](fields/many2many-diagram.png){.align-center}
:::

- `Checkboxes`{.interpreted-text role="guilabel"}: users can select
  several values using checkboxes.
- `Tags`{.interpreted-text role="guilabel"}: users can select several
  values appearing in rounded shapes, also known as *tags*. This has the
  same effect as selecting the `Tags field
  <studio/fields/relational-fields/tags>`{.interpreted-text role="ref"}.

### Tags ([many2many]{.title-ref}) {#studio/fields/relational-fields/tags}

The `Tags`{.interpreted-text role="guilabel"} field is used to display
several values from another model appearing in rounded shapes, also
known as *tags*. This field type is a `Many2Many field
<studio/fields/relational-fields/many2many>`{.interpreted-text
role="ref"} with the `Tags`{.interpreted-text role="guilabel"} widget
selected by default. Consequently, the `Checkboxes`{.interpreted-text
role="guilabel"} and `Many2Many`{.interpreted-text role="guilabel"}
widgets have the same effects as described under
`Many2Many <studio/fields/relational-fields/many2many>`{.interpreted-text
role="ref"}.

:::: tip
::: title
Tip
:::

To display tags with different background colors, tick
`Use colors`{.interpreted-text role="guilabel"}.
::::

::: example
![Example of a Tags field](fields/tags-example.png){.align-center}
:::

### Related Field ([related]{.title-ref}) {#studio/fields/relational-fields/related-field}

A `Related Field`{.interpreted-text role="guilabel"} is not a relational
field per se; no relationship is created between models. It uses an
existing relationship to fetch and display information from another
record.

::: example
To display the email address of a customer on the *Sales Order* model,
use the `Related
Field`{.interpreted-text role="guilabel"} [partner_id.email]{.title-ref}
by selecting `Customer`{.interpreted-text role="guilabel"} and then
`Email`{.interpreted-text role="guilabel"}.
:::

## Properties {#studio/fields/properties}

- `Invisible`{.interpreted-text role="guilabel"}: When it is not
  necessary for users to view a field on the UI, tick
  `Invisible`{.interpreted-text role="guilabel"}. It helps clear the UI
  by only showing the essential fields depending on a specific
  situation.

  ::: example
  On the *Form* view of the *Contact* model, the
  `Title`{.interpreted-text role="guilabel"} field only appears when
  `Individual`{.interpreted-text role="guilabel"} is selected, as that
  field would not be helpful for a `Company`{.interpreted-text
  role="guilabel"} contact.
  :::

  :::: note
  ::: title
  Note
  :::

  The `Invisible`{.interpreted-text role="guilabel"} attribute also
  applies to Studio. To view hidden fields inside Studio, click on a
  view\'s `View`{.interpreted-text role="guilabel"} tab and tick
  `Show Invisible
  Elements`{.interpreted-text role="guilabel"}.
  ::::

- `Required`{.interpreted-text role="guilabel"}: If a field should
  always be completed by the user before being able to proceed, tick
  `Required`{.interpreted-text role="guilabel"}.

- `Read only`{.interpreted-text role="guilabel"}: If users should not be
  able to modify a field, tick `Read only`{.interpreted-text
  role="guilabel"}.

  :::: note
  ::: title
  Note
  :::

  You can choose to apply these three properties only for specific
  records by clicking on `Conditional`{.interpreted-text
  role="guilabel"} and creating a filter.
  ::::

- `Label`{.interpreted-text role="guilabel"}: The
  `Label`{.interpreted-text role="guilabel"} is the field\'s name on the
  UI.

  :::: note
  ::: title
  Note
  :::

  This is not the same name as used in the PostgreSQL database. To view
  and change the latter, activate the
  `Developer mode <developer-mode>`{.interpreted-text role="ref"}, and
  edit the `Technical Name`{.interpreted-text role="guilabel"}.
  ::::

- `Help Tooltip`{.interpreted-text role="guilabel"}: To explain the
  purpose of a field, write a description under
  `Help Tooltip`{.interpreted-text role="guilabel"}. It is displayed
  inside a tooltip box when hovering with your mouse over the field\'s
  label.

- `Placeholder`{.interpreted-text role="guilabel"}: To provide an
  example of how a field should be completed, write it under
  `Placeholder`{.interpreted-text role="guilabel"}. It is displayed in
  light gray in lieu of the field\'s value.

- `Widget`{.interpreted-text role="guilabel"}: To change the default
  appearance or functionality of a field, select one of the available
  widgets.

- `Default value`{.interpreted-text role="guilabel"}: To add a default
  value to a field when a record is created, use
  `Default value`{.interpreted-text role="guilabel"}.

- `Limit visibility to groups`{.interpreted-text role="guilabel"}: To
  limit which users can see the field, select a user access group.




--- SOURCE: studio/models_modules_apps.md ---

# Models, modules, and apps

Models determine the logical structure of a database and how data is
stored, organized, and manipulated. In other words, a model is a table
of information that can be linked with other tables. A model usually
represents a business concept, such as a *sales order*, *contact*, or
*product*.

Modules and apps contain various elements, such as models, views, data
files, web controllers, and static web data.

:::: note
::: title
Note
:::

All apps are modules. Larger, standalone modules are typically referred
to as apps, whereas other modules usually serve as add-ons to said apps.
::::

## Suggested features {#studio/models-modules-apps/suggested-features}

When you create a new model or app with Studio, you can choose to add up
to 14 features to speed up the creation process. These features bundle
fields, default settings, and views that are usually used together to
provide some standard functionality. Most of these features can be added
later on, but adding them from the start makes the model creation
process much easier. Furthermore, these features interact together in
some cases to increase their usefulness.

::: example
Creating a model with the
`studio/models-modules-apps/suggested-features/picture`{.interpreted-text
role="ref"} and
`studio/models-modules-apps/suggested-features/pipeline-stages`{.interpreted-text
role="ref"} features enabled adds the image in the card layout of the
`Kanban view <studio/views/multiple-records/kanban>`{.interpreted-text
role="ref"}.

![Combination of the Picture and Pipeline stages features on the Kanban view](models_modules_apps/picture-pipeline-kanban.png){.align-center}
:::

### Contact details {#studio/models-modules-apps/suggested-features/contact-details}

Selecting `Contact details`{.interpreted-text role="guilabel"} adds to
the `Form view <studio/views/general/form>`{.interpreted-text
role="ref"} a
`Many2One field <studio/fields/relational-fields/many2one>`{.interpreted-text
role="ref"} linked to the *Contact* model and two of its
`Related Fields <studio/fields/relational-fields/related-field>`{.interpreted-text
role="ref"}: `Phone`{.interpreted-text role="guilabel"} and
`Email`{.interpreted-text role="guilabel"}. The
`Contact`{.interpreted-text role="guilabel"} field is also added to the
`List view
<studio/views/multiple-records/list>`{.interpreted-text role="ref"}, and
the `Map view <studio/views/multiple-records/map>`{.interpreted-text
role="ref"} is activated.

::: example
![Contact details feature on the Form view](models_modules_apps/contact.png){.align-center}
:::

### User assignment {#studio/models-modules-apps/suggested-features/user-assignment}

Selecting `User assignment`{.interpreted-text role="guilabel"} adds to
the `Form view <studio/views/general/form>`{.interpreted-text
role="ref"} a
`Many2One field <studio/fields/relational-fields/many2one>`{.interpreted-text
role="ref"} linked to the *Contact* model, with the following
`Domain`{.interpreted-text role="guilabel"}: [Share User is not
set]{.title-ref} to only allow the selection of *Internal Users*. In
addition, the `many2one_avatar_user`{.interpreted-text role="guilabel"}
widget is used to display the user\'s avatar. The
`Responsible`{.interpreted-text role="guilabel"} field is also added to
the `List view
<studio/views/multiple-records/list>`{.interpreted-text role="ref"}.

::: example
![User assignment feature on the Form view](models_modules_apps/user-assignment.png){.align-center}
:::

### Date & Calendar {#studio/models-modules-apps/suggested-features/date-calendar}

Selecting `Date & Calendar`{.interpreted-text role="guilabel"} adds to
the `Form view <studio/views/general/form>`{.interpreted-text
role="ref"} a
`Date field <studio/fields/simple-fields/date>`{.interpreted-text
role="ref"} and activates the `Calendar view
<studio/views/timeline/calendar>`{.interpreted-text role="ref"}.

### Date range & Gantt {#studio/models-modules-apps/suggested-features/date-range-gantt}

Selecting `Date range & Gantt`{.interpreted-text role="guilabel"} adds
to the `Form view <studio/views/general/form>`{.interpreted-text
role="ref"} two
`Date fields <studio/fields/simple-fields/date>`{.interpreted-text
role="ref"} next to each other: one to set a start date, the other to
set an end date, using the `daterange`{.interpreted-text
role="guilabel"} widget, and activates the
`Gantt view <studio/views/timeline/gantt>`{.interpreted-text
role="ref"}.

### Pipeline stages {#studio/models-modules-apps/suggested-features/pipeline-stages}

Selecting `Pipeline stages`{.interpreted-text role="guilabel"} activates
the `Kanban view
<studio/views/multiple-records/kanban>`{.interpreted-text role="ref"},
adds several fields such as `Priority
<studio/fields/simple-fields/priority>`{.interpreted-text role="ref"}
and `Kanban State`{.interpreted-text role="guilabel"}, and three stages:
`New`{.interpreted-text role="guilabel"},
`In Progress`{.interpreted-text role="guilabel"}, and
`Done`{.interpreted-text role="guilabel"}. The
`Pipeline status bar`{.interpreted-text role="guilabel"} and the
`Kanban State`{.interpreted-text role="guilabel"} field are added to the
`Form view
<studio/views/general/form>`{.interpreted-text role="ref"}. The
`Color`{.interpreted-text role="guilabel"} field is added to the
`List view
<studio/views/multiple-records/list>`{.interpreted-text role="ref"}.

:::: note
::: title
Note
:::

The `Pipeline stages`{.interpreted-text role="guilabel"} feature can be
added at a later stage.
::::

### Tags {#studio/models-modules-apps/suggested-features/tags}

Selecting `Tags`{.interpreted-text role="guilabel"} adds to the
`studio/views/general/form`{.interpreted-text role="ref"} and
`studio/views/multiple-records/list`{.interpreted-text role="ref"} views
a `Tags field
<studio/fields/relational-fields/tags>`{.interpreted-text role="ref"},
creating a *Tag* model with preconfigured access rights in the process.

### Picture {#studio/models-modules-apps/suggested-features/picture}

Selecting `Picture`{.interpreted-text role="guilabel"} adds to the
top-right of the `Form view
<studio/views/general/form>`{.interpreted-text role="ref"} an
`Image field <studio/fields/simple-fields/image>`{.interpreted-text
role="ref"}.

:::: note
::: title
Note
:::

The `Picture`{.interpreted-text role="guilabel"} feature can be added at
a later stage.
::::

### Lines {#studio/models-modules-apps/suggested-features/lines}

Selecting `Lines`{.interpreted-text role="guilabel"}: adds to the
`Form view <studio/views/general/form>`{.interpreted-text role="ref"} a
`Lines
field <studio/fields/relational-fields/lines>`{.interpreted-text
role="ref"} inside a `Tab`{.interpreted-text role="guilabel"} component.

### Notes {#studio/models-modules-apps/suggested-features/notes}

Selecting `Notes`{.interpreted-text role="guilabel"} adds to the
`Form view <studio/views/general/form>`{.interpreted-text role="ref"} an
`Html
field <studio/fields/simple-fields/html>`{.interpreted-text role="ref"}
using the full width of the form.

### Monetary value {#studio/models-modules-apps/suggested-features/monetary-value}

Selecting `Monetary value`{.interpreted-text role="guilabel"} adds to
the `studio/views/general/form`{.interpreted-text role="ref"} and
`studio/views/multiple-records/list`{.interpreted-text role="ref"} views
a `Monetary field
<studio/fields/simple-fields/monetary>`{.interpreted-text role="ref"}.
The `studio/views/reporting/graph`{.interpreted-text role="ref"} and
`studio/views/reporting/pivot`{.interpreted-text role="ref"} views are
also activated.

:::: note
::: title
Note
:::

A *Currency* field is added and hidden from the view.
::::

### Company {#studio/models-modules-apps/suggested-features/company}

Selecting `Company`{.interpreted-text role="guilabel"} adds to the
`studio/views/general/form`{.interpreted-text role="ref"} and
`studio/views/multiple-records/list`{.interpreted-text role="ref"} views
a `Many2One field
<studio/fields/relational-fields/many2one>`{.interpreted-text
role="ref"} linked to the *Company* model.

:::: note
::: title
Note
:::

This is only useful if you work in a multi-company environment.
::::

### Custom Sorting {#studio/models-modules-apps/suggested-features/custom-sorting}

Selecting `Custom Sorting`{.interpreted-text role="guilabel"} adds to
the `List view
<studio/views/multiple-records/list>`{.interpreted-text role="ref"} a
drag handle icon to manually reorder records.

::: example
![Custom Sorting feature on the List view](views/list-drag-handle.png){.align-center}
:::

### Chatter {#studio/models-modules-apps/suggested-features/chatter}

Selecting `Chatter`{.interpreted-text role="guilabel"} adds to the
`Form view <studio/views/general/form>`{.interpreted-text role="ref"}
Chatter functionalities (sending messages, logging notes, and scheduling
activities).

:::: note
::: title
Note
:::

The `Chatter`{.interpreted-text role="guilabel"} feature can be added at
a later stage.
::::

::: example
![Chatter feature on the Form view](models_modules_apps/chatter.png){.align-center}
:::

### Archiving {#studio/models-modules-apps/suggested-features/archiving}

Selecting `Archiving`{.interpreted-text role="guilabel"} adds to the
`studio/views/general/form`{.interpreted-text role="ref"} and
`studio/views/multiple-records/list`{.interpreted-text role="ref"} views
the `Archive`{.interpreted-text role="guilabel"} action and hides
archived records from searches and views by default.

## Export and import customizations {#studio/export-import}

When you do any customization with Studio, a new module named
`Studio customizations`{.interpreted-text role="guilabel"} is added to
your database.

To export these customizations, go to
`Main dashboard --> Studio --> Customizations
--> Export`{.interpreted-text role="menuselection"} to download a ZIP
file containing all customizations.

To import and install these customizations in another database, connect
to the destination database and go to
`Main dashboard --> Studio --> Customizations --> Import`{.interpreted-text
role="menuselection"}, then upload the exported ZIP file before clicking
on the `Import`{.interpreted-text role="guilabel"} button.

:::: warning
::: title
Warning
:::

Before importing, make sure the destination database contains the same
apps and modules as the source database. Studio does not add the
underlying modules as dependencies of the exported module.
::::




--- SOURCE: studio/pdf_reports.md ---

# PDF reports

With Studio, you can edit existing PDF reports (e.g., orders and
quotations) or create new ones.

:::: important
::: title
Important
:::

To edit a standard PDF report, it is strongly recommended to
**duplicate** it and make changes to the duplicated version, as changes
made to standard reports will be overwritten after an Odoo upgrade. To
duplicate a report, go to `Studio --> Reports`{.interpreted-text
role="menuselection"}. Hover the mouse pointer on the top right corner
of the report, click the vertical ellipsis icon (`⋮`{.interpreted-text
role="guilabel"}), and then select `Duplicate`{.interpreted-text
role="guilabel"}.

![Duplicating a PDF report](pdf_reports/duplicate-report.png)
::::

## Default layout {#studio/pdf-reports/default-layout}

The default layout of reports is managed outside Studio. Go to
`Settings -->
Companies: Document Layout --> Configure Document Layout`{.interpreted-text
role="menuselection"}. Layout settings apply to all reports but only to
the current company.

:::: tip
::: title
Tip
:::

Use `Download PDF Preview`{.interpreted-text role="guilabel"} to view
how the different settings affect the layout of a sample invoice.
::::

### Layout {#studio/pdf-reports/default-layout/layout}

Four layouts are available.

::::::: tabs
::: tab
Light

![Light report layout sample](pdf_reports/light.png)
:::

::: tab
Boxed

![Boxed report layout sample](pdf_reports/boxed.png)
:::

::: tab
Bold

![Bold report layout sample](pdf_reports/bold.png)
:::

::: tab
Striped

![Striped report layout sample](pdf_reports/striped.png)
:::
:::::::

### Font {#studio/pdf-reports/default-layout/font}

Seven fonts are available. Click on the links below to preview them on
[Google Fonts](https://fonts.google.com/).

- [Lato](https://fonts.google.com/specimen/Lato#type-tester)

- [Roboto](https://fonts.google.com/specimen/Roboto#type-tester)

- [Open Sans](https://fonts.google.com/specimen/Open+Sans#type-tester)

- [Montserrat](https://fonts.google.com/specimen/Montserrat#type-tester)

- [Oswald](https://fonts.google.com/specimen/Oswald#type-tester)

- [Raleway](https://fonts.google.com/specimen/Raleway#type-tester)

- [Tajawal](https://fonts.google.com/specimen/Tajawal#type-tester)

  :::: note
  ::: title
  Note
  :::

  `Tajawal`{.interpreted-text role="guilabel"} supports both Arabic and
  Latin scripts.
  ::::

### Company logo {#studio/pdf-reports/default-layout/logo}

Upload an image file to add a `Company Logo`{.interpreted-text
role="guilabel"}.

:::: note
::: title
Note
:::

This adds the logo to the company's record on the *Company* model, which
you can access by going to
`General Settings --> Companies --> Update Info`{.interpreted-text
role="menuselection"}.
::::

### Colors {#studio/pdf-reports/default-layout/colors}

Change the primary and secondary colors used throughout reports to
highlight important elements. The default colors are automatically
generated based on the colors of the logo.

### Layout background {#studio/pdf-reports/default-layout/background}

Change the `Layout Background`{.interpreted-text role="guilabel"} of the
report:

- `Blank`{.interpreted-text role="guilabel"}: nothing is displayed.
- `Geometric`{.interpreted-text role="guilabel"}: an image featuring
  geometric shapes is displayed in the background.
- `Custom`{.interpreted-text role="guilabel"}: use a custom background
  image by uploading one.

### Company tagline {#studio/pdf-reports/default-layout/tagline}

The `Company Tagline`{.interpreted-text role="guilabel"} is displayed on
the header of `External reports
<studio/pdf-reports/header-footer/external>`{.interpreted-text
role="ref"}. You can add multiple lines of text.

### Company details {#studio/pdf-reports/default-layout/details}

The `Company Details`{.interpreted-text role="guilabel"} are displayed
on the header of `External reports
<studio/pdf-reports/header-footer/external>`{.interpreted-text
role="ref"}. You can add multiple lines of text.

### Footer {#studio/pdf-reports/default-layout/footer}

Use the `Footer`{.interpreted-text role="guilabel"} field to put any
text in the `External reports'
<studio/pdf-reports/header-footer/external>`{.interpreted-text
role="ref"} footers. You can add multiple lines of text.

### Paper format {#studio/pdf-reports/default-layout/paper}

Use the `Paper format`{.interpreted-text role="guilabel"} field to
change the paper size of reports. You can either select
`A4`{.interpreted-text role="guilabel"} (21 cm x 29.7 cm) or
`US Letter`{.interpreted-text role="guilabel"} (21.59 cm x 27.54 cm).

:::: tip
::: title
Tip
:::

You can change the `Paper format`{.interpreted-text role="guilabel"} on
individual reports. Open the app containing the report, then go to
`Studio --> Reports --> Select or Create a report --> Report
--> Select a Paper format`{.interpreted-text role="menuselection"}.
::::

![Configuration pop-up window for the default layout of PDF reports](pdf_reports/default-layout.png)

## Header and footer {#studio/pdf-reports/header-footer}

When creating a new report in Studio, you must choose between one of
three styles of reports first. This is solely used to determine what is
displayed on the header and footer. To do so, go to the app on which you
want to add a new report, then
`Studio button --> Reports --> Create`{.interpreted-text
role="menuselection"} and select
`studio/pdf-reports/header-footer/external`{.interpreted-text
role="ref"},
`studio/pdf-reports/header-footer/internal`{.interpreted-text
role="ref"}, or
`studio/pdf-reports/header-footer/blank`{.interpreted-text role="ref"}.

### External {#studio/pdf-reports/header-footer/external}

The header displays the company
`studio/pdf-reports/default-layout/logo`{.interpreted-text role="ref"}
and several values set on the *Company* model: the
`Company Name`{.interpreted-text role="guilabel"},
`Phone`{.interpreted-text role="guilabel"}, `Email`{.interpreted-text
role="guilabel"}, and `Website`{.interpreted-text role="guilabel"}.

:::: tip
::: title
Tip
:::

To change a company\'s information, go to
`Settings --> Companies --> Update Info`{.interpreted-text
role="menuselection"}.
::::

![Example of an External header](pdf_reports/external-header.png)

The footer displays the values set on the
`studio/pdf-reports/default-layout/footer`{.interpreted-text
role="ref"},
`studio/pdf-reports/default-layout/details`{.interpreted-text
role="ref"}, and
`studio/pdf-reports/default-layout/tagline`{.interpreted-text
role="ref"} fields, as well as the page number.

![Example of an External footer](pdf_reports/external-footer.png)

### Internal {#studio/pdf-reports/header-footer/internal}

The header displays the user\'s current date and time,
`Company Name`{.interpreted-text role="guilabel"}, and page number.

There is no footer.

### Blank {#studio/pdf-reports/header-footer/blank}

There is neither a header nor a footer.

## Add tab {#studio/pdf-reports/elements}

After opening an existing report or creating a new one, go to the
`Add`{.interpreted-text role="guilabel"} tab to add or edit elements.
The elements are organized into four categories:
`studio/pdf-reports/elements/block`{.interpreted-text role="ref"},
`studio/pdf-reports/elements/inline`{.interpreted-text role="ref"},
`studio/pdf-reports/elements/table`{.interpreted-text role="ref"}, and
`studio/pdf-reports/elements/column`{.interpreted-text role="ref"}.

### Block {#studio/pdf-reports/elements/block}

Block elements start on a new line and occupy the full width of the
page.

:::: tip
::: title
Tip
:::

You can set an element\'s width by selecting it and going to the
`Options`{.interpreted-text role="guilabel"} tab.
::::

- `Text`{.interpreted-text role="guilabel"}: add any text using small
  font size by default.

- `Title Block`{.interpreted-text role="guilabel"}: add any text using
  larger font size by default.

- `Image`{.interpreted-text role="guilabel"}: add an image. You can
  either upload one from your device, add one from an URL, or select one
  already existing on your database.

- `Field`{.interpreted-text role="guilabel"}: dynamically add a field\'s
  value.

- `Field & Label`{.interpreted-text role="guilabel"}: to dynamically add
  a field\'s value and label.

- `Address Block`{.interpreted-text role="guilabel"}: to dynamically add
  the values, if any, of a contact\'s ([res.partner]{.title-ref} model):
  *Name*, *Address*, *Phone*, *Mobile*, and *Email*.

  ![Example of an Address Block](pdf_reports/address-block.png)

### Inline {#studio/pdf-reports/elements/inline}

Inline elements are used around other elements. They do not start on a
new line and the width adapts to length of the content.

:::: tip
::: title
Tip
:::

You can set an element\'s width and margins by selecting it and going to
the `Options`{.interpreted-text role="guilabel"} tab.
::::

- `Text`{.interpreted-text role="guilabel"}: add any text using small
  font size by default.
- `Field`{.interpreted-text role="guilabel"}: dynamically add a field\'s
  value.

### Table {#studio/pdf-reports/elements/table}

Table elements are used together to create a data table.

- `Data table`{.interpreted-text role="guilabel"}: create a table and
  dynamically add a first column displaying the *Name* values of a
  `Many2Many <studio/fields/relational-fields/many2many>`{.interpreted-text
  role="ref"} or `One2Many
  <studio/fields/relational-fields/one2many>`{.interpreted-text
  role="ref"} field on your model.

  ![Example of a Data table](pdf_reports/data-table.png)

- `Field Column`{.interpreted-text role="guilabel"}: add a new column to
  the table displaying the values of a `Related
  Field <studio/fields/relational-fields/related-field>`{.interpreted-text
  role="ref"} to the one used to create the
  `Data table`{.interpreted-text role="guilabel"}.

- `Text in Cell`{.interpreted-text role="guilabel"}: add any text within
  an existing table cell.

- `Field in Cell`{.interpreted-text role="guilabel"}: add, within an
  existing table cell, the values of a `Related
  Field <studio/fields/relational-fields/related-field>`{.interpreted-text
  role="ref"} to the one used to create the
  `Data table`{.interpreted-text role="guilabel"}.

- `Subtotal & Total`{.interpreted-text role="guilabel"}: add an existing
  `Total`{.interpreted-text role="guilabel"} field\'s value. If a
  `Taxes`{.interpreted-text role="guilabel"} field exists, the untaxed
  and taxes amounts are added before the total amount.

### Column {#studio/pdf-reports/elements/column}

Columns are used to add multiple
`blocks <studio/pdf-reports/elements/block>`{.interpreted-text
role="ref"} elements on the same line.

- `Two Columns`{.interpreted-text role="guilabel"}: add any text in two
  different columns.
- `Three Columns`{.interpreted-text role="guilabel"}: add any text in
  three different columns.

## Report tab

Several configuration options are available under the
`Report`{.interpreted-text role="guilabel"} tab.

- `Name`{.interpreted-text role="guilabel"}: change the report name. The
  new name is applied everywhere (in Studio, under the
  `Print`{.interpreted-text role="guilabel"} button, and for the PDF
  file name).
- `Paper format`{.interpreted-text role="guilabel"}: change the paper
  size of the report.
- `Add in print`{.interpreted-text role="guilabel"}: add the report
  under the `🖶 Print`{.interpreted-text role="guilabel"} button
  available on the record.
- `Limit visibility to groups`{.interpreted-text role="guilabel"}: limit
  the availability of the PDF report to specific
  `user groups </applications/general/users/access_rights>`{.interpreted-text
  role="doc"}.

## Options tab

Select an element on the report to access the element\'s options and
edit it.

![The Options tab for a text element](pdf_reports/text-options-tab.png)

:::: note
::: title
Note
:::

You can select and edit multiple elements at the same time by clicking
on the different sections or divisions (e.g., [div]{.title-ref},
[table]{.title-ref}, etc.).
::::

Below are presented some of the most common options:

- `Margins`{.interpreted-text role="guilabel"}: add spacing at the
  `top`{.interpreted-text role="guilabel"}, `right`{.interpreted-text
  role="guilabel"}, `bottom`{.interpreted-text role="guilabel"}, and
  `left`{.interpreted-text role="guilabel"} of the element.
- `Width`{.interpreted-text role="guilabel"}: set the element\'s maximum
  width.
- `Visible if`{.interpreted-text role="guilabel"}: set under which
  condition(s) the element should be displayed.
- `Visible for`{.interpreted-text role="guilabel"}: set for which
  `users groups
  </applications/general/users/access_rights>`{.interpreted-text
  role="doc"} the element should be displayed.
- `Remove from View`{.interpreted-text role="guilabel"}: remove the
  element from the report\'s view.
- `Text decoration`{.interpreted-text role="guilabel"}: bold, italicize,
  and underline the font.
- `Alignment`{.interpreted-text role="guilabel"}: align the element to
  the left, center, or right of the report.
- `Font style`{.interpreted-text role="guilabel"}: use one of the
  default font styles.
- `Colors`{.interpreted-text role="guilabel"}: change the font\'s color
  and the background color.

:::: note
::: title
Note
:::

You may need to select a section or division above the element you want
to edit to see some of the options described above.
::::




--- SOURCE: studio/views.md ---

# Views

Views are the interface that allows displaying the data contained in a
model. One model can have several views, which are simply different ways
to show the same data. In Studio, views are organized into four
categories: `general <studio/views/general>`{.interpreted-text
role="ref"}, `multiple records
<studio/views/multiple-records>`{.interpreted-text role="ref"},
`timeline <studio/views/timeline>`{.interpreted-text role="ref"}, and
`reporting
<studio/views/reporting>`{.interpreted-text role="ref"}.

:::: tip
::: title
Tip
:::

To change the default view of a model, go to
`Studio --> Views --> Dropdown menu
(⋮) --> Set as Default`{.interpreted-text role="menuselection"}.
::::

:::::: note
::: title
Note
:::

You can modify views by using the built-in XML editor. To do so,
activate `Developer mode
<developer-mode>`{.interpreted-text role="ref"}, go to the view you want
to edit, select the `View`{.interpreted-text role="guilabel"} tab and
then click on `</> XML`{.interpreted-text role="guilabel"}.

:::: important
::: title
Important
:::

If you are editing a view using the XML editor, avoid making changes
directly to standard views and inherited views, as those would be reset
and would not be kept in case of an update or module upgrade. Always
make sure you select the right Studio inherited views. Indeed, when you
modify a view in Studio by drag-and-dropping a new field, a specific
Studio inherited view and its XPath, the latter which defines which part
of the view is modified, are automatically generated.
::::
::::::

## General views {#studio/views/general}

:::: note
::: title
Note
:::

The settings described below are found under the view\'s
`View`{.interpreted-text role="guilabel"} tab unless specified
otherwise.
::::

### Form {#studio/views/general/form}

The `Form`{.interpreted-text role="guilabel"} view is used when creating
and editing records, such as contacts, sales orders, products, etc.

- To structure a form, drag-and-drop the
  `Tabs and Columns`{.interpreted-text role="guilabel"} element found
  under the `+ Add`{.interpreted-text role="guilabel"} tab.
- To prevent users from creating, editing, or deleting records, untick
  `Can Create`{.interpreted-text role="guilabel"},
  `Can Edit`{.interpreted-text role="guilabel"}, or
  `Can Delete`{.interpreted-text role="guilabel"}.

::: example
![Sales order model\'s Form view](views/form-sales-order.png){.align-center}
:::

### Activity {#studio/views/general/activity}

The `Activity`{.interpreted-text role="guilabel"} view is used to
schedule and have an overview of activities (emails, calls, etc.) linked
to records.

:::: note
::: title
Note
:::

This view can only be modified within Studio by editing the XML code.
::::

::: example
![Lead/Opportunity model\'s Activity view](views/activity-lead-opportunity.png){.align-center}
:::

### Search {#studio/views/general/search}

The `Search`{.interpreted-text role="guilabel"} view is added on top of
other views to filter, group, and search records.

- To add custom `Filters`{.interpreted-text role="guilabel"} and
  structure them using `Separators`{.interpreted-text role="guilabel"},
  go to the `+ Add`{.interpreted-text role="guilabel"} tab and drag and
  drop them under `Filters`{.interpreted-text role="guilabel"}.
- To add an existing field under the search dropdown menu, go to the
  `+ Add`{.interpreted-text role="guilabel"} tab and drag-and-drop it
  under `Autocompletion Fields`{.interpreted-text role="guilabel"}.

::: example
![Project model\'s Search view on the Kanban view](views/search-project-kanban.png){.align-center}
:::

## Multiple records views {#studio/views/multiple-records}

:::: note
::: title
Note
:::

The settings described below are found under the view\'s
`View`{.interpreted-text role="guilabel"} tab unless specified
otherwise.
::::

### Kanban {#studio/views/multiple-records/kanban}

The `Kanban`{.interpreted-text role="guilabel"} view is often used to
support business flows by moving records across stages or as an
alternative way to display records inside *cards*.

:::: note
::: title
Note
:::

If the `Kanban`{.interpreted-text role="guilabel"} view exists, it is
used by default to display data on mobile devices instead of the
`List view <studio/views/multiple-records/list>`{.interpreted-text
role="ref"}.
::::

- To prevent users from creating new records, untick
  `Can Create`{.interpreted-text role="guilabel"}.
- To create records directly within the view, in a minimalistic form,
  enable `Quick
  Create`{.interpreted-text role="guilabel"}.
- To change the way records are grouped by default, select a new group
  under `Default
  Group by`{.interpreted-text role="guilabel"}.

::: example
![Project model\'s Kanban view](views/kanban-project.png){.align-center}
:::

### List {#studio/views/multiple-records/list}

The `List`{.interpreted-text role="guilabel"} view is used to overview
many records at once, look for records, and edit simple records.

- To prevent users from creating, editing, or deleting records, untick
  `Can Create`{.interpreted-text role="guilabel"},
  `Can Edit`{.interpreted-text role="guilabel"}, or
  `Can Delete`{.interpreted-text role="guilabel"}.

- To create and edit records directly within the view, select either
  `New record on top`{.interpreted-text role="guilabel"} or
  `New record at the bottom`{.interpreted-text role="guilabel"} under
  `Editable`{.interpreted-text role="guilabel"}.

  :::: note
  ::: title
  Note
  :::

  This prevents users from opening records in
  `Form view <studio/views/general/form>`{.interpreted-text role="ref"}
  from the `List`{.interpreted-text role="guilabel"} view.
  ::::

- To edit several records at once, tick
  `Enable Mass Editing`{.interpreted-text role="guilabel"}.

- To change the way records are sorted by default, select a field under
  `Sort By`{.interpreted-text role="guilabel"}.

:::: tip
::: title
Tip
:::

To add a drag handle icon to reorder records manually, add an
`Integer field
<studio/fields/simple-fields/integer>`{.interpreted-text role="ref"}
with the `Handle`{.interpreted-text role="guilabel"} widget.

![Drag handle icon enabling to sort records manually in List view](views/list-drag-handle.png){.align-center}
::::

::: example
![Sales order model\'s List view](views/list-sales-order.png){.align-center}
:::

### Map {#studio/views/multiple-records/map}

The `Map`{.interpreted-text role="guilabel"} view is used to display
records on a map. For example, it is used in the Field Service app to
plan an itinerary between different tasks.

:::: note
::: title
Note
:::

A
`Many2One field <studio/fields/relational-fields/many2one>`{.interpreted-text
role="ref"} linked to the *Contact* model is required to activate the
view, as the contact address is used to position records on the map.
::::

- To select which kind of contact should be used on the map, select it
  under `Contact
  Field`{.interpreted-text role="guilabel"}.
- To hide the name or the address of the record, tick
  `Hide name`{.interpreted-text role="guilabel"} or `Hide
  Address`{.interpreted-text role="guilabel"}.
- To add information from other fields, select them under
  `Additional Fields`{.interpreted-text role="guilabel"}.
- To have a route suggested between the different records, tick
  `Enable Routing`{.interpreted-text role="guilabel"} and select which
  field should be used to sort records for the routing.

::: example
![Task model\'s Map view](views/map-task.png){.align-center}
:::

## Timeline views {#studio/views/timeline}

:::: note
::: title
Note
:::

\- When you first activate one of the timeline views, you need to select
which `Date
<studio/fields/simple-fields/date>`{.interpreted-text role="ref"} or
`Date & Time
<studio/fields/simple-fields/date-time>`{.interpreted-text role="ref"}
fields on your model should be used to define when the records start and
stop in order to display them on the view. You can modify the
`Start Date Field`{.interpreted-text role="guilabel"} and
`Stop Date Field`{.interpreted-text role="guilabel"} after activating
the view. - The settings described below are found under the view\'s
`View`{.interpreted-text role="guilabel"} tab unless specified
otherwise.
::::

### Calendar {#studio/views/timeline/calendar}

The `Calendar`{.interpreted-text role="guilabel"} view is used to
overview and manage records inside a calendar.

- To create records directly within the view instead of opening the
  `Form view
  <studio/views/general/form>`{.interpreted-text role="ref"}, enable
  `Quick Create`{.interpreted-text role="guilabel"}.

  :::: note
  ::: title
  Note
  :::

  This only works on specific models that can be *quick-created* using
  only a *name*. However, most models do not support quick creation and
  open the `Form`{.interpreted-text role="guilabel"} view to fill in the
  required fields.
  ::::

- To color records on the calendar, select a field under
  `Color`{.interpreted-text role="guilabel"}. All the records sharing
  the same value for that field are displayed using the same color.

  :::: note
  ::: title
  Note
  :::

  As the number of colors is limited, the same color can end up being
  assigned to different values.
  ::::

- To display events lasting the whole day at the top of the calendar,
  select a `Checkbox field
  <studio/fields/simple-fields/checkbox>`{.interpreted-text role="ref"}
  that specifies if the event lasts the whole day.

- To choose the default time scale used to display events, select
  `Day`{.interpreted-text role="guilabel"}, `Week`{.interpreted-text
  role="guilabel"}, `Month`{.interpreted-text role="guilabel"}, or
  `Year`{.interpreted-text role="guilabel"} under
  `Default Display Mode`{.interpreted-text role="guilabel"}.

:::: note
::: title
Note
:::

You can also use `Delay Field`{.interpreted-text role="guilabel"} to
display the duration of the event in hours by selecting a
`Decimal <studio/fields/simple-fields/decimal>`{.interpreted-text
role="ref"} or `Integer
<studio/fields/simple-fields/integer>`{.interpreted-text role="ref"}
field on the model which specifies the duration of the event. However,
if you set an `End Date Field`{.interpreted-text role="guilabel"}, the
`Delay Field`{.interpreted-text role="guilabel"} will not be taken into
account.
::::

::: example
![Calendar Event model\'s Calendar view](views/calendar-event.png){.align-center}
:::

### Cohort {#studio/views/timeline/cohort}

The `Cohort`{.interpreted-text role="guilabel"} view is used to examine
the life cycle of records over a time period. For example, it is used in
the Subscriptions app to view the subscriptions\' retention rate.

- To display a measure (i.e., the aggregated value of a given field) by
  default on the view, select a `Measure Field`{.interpreted-text
  role="guilabel"}.
- To choose which time interval is used by default to group results,
  select `Day`{.interpreted-text role="guilabel"},
  `Week`{.interpreted-text role="guilabel"}, `Month`{.interpreted-text
  role="guilabel"}, or `Year`{.interpreted-text role="guilabel"} under
  `Interval`{.interpreted-text role="guilabel"}.
- To change the cohort `Mode`{.interpreted-text role="guilabel"}, select
  either `Retention`{.interpreted-text role="guilabel"} `the percentage
  of records staying over a period of time, it starts at 100% and decreases with time`{.interpreted-text
  role="dfn"} or `Churn`{.interpreted-text role="guilabel"}
  `the percentage of records moving out over a period of time - it starts at
  0% and increases with time`{.interpreted-text role="dfn"}.
- To change the way the `Timeline`{.interpreted-text role="guilabel"}
  (i.e., the columns) progresses, select either
  `Forward`{.interpreted-text role="guilabel"} (from 0 to +15) or
  `Backward`{.interpreted-text role="guilabel"} (from -15 to 0). For
  most purposes, the `Forward`{.interpreted-text role="guilabel"}
  timeline is used.

::: example
![Subscription model\'s Cohort view](views/cohort-subscription.png){.align-center}
:::

### Gantt {#studio/views/timeline/gantt}

The `Gantt`{.interpreted-text role="guilabel"} view is used to forecast
and examine the overall progress of records. Records are represented by
a bar under a time scale.

- To prevent users from creating or editing records, untick
  `Can Create`{.interpreted-text role="guilabel"} or `Can
  Edit`{.interpreted-text role="guilabel"}.

- To fill cells in gray whenever a record should not be created there
  (e.g., on weekends for employees), tick
  `Display Unavailability`{.interpreted-text role="guilabel"}.

  :::: note
  ::: title
  Note
  :::

  The underlying model must support this feature, and support for it
  cannot be added using Studio. It is supported for the Project, Time
  Off, Planning, and Manufacturing apps.
  ::::

- To show a total row at the bottom, tick
  `Display Total row`{.interpreted-text role="guilabel"}.

- To collapse multiple records in a single row, tick
  `Collapse First Level`{.interpreted-text role="guilabel"}.

- To choose which way records are grouped by default on rows (e.g., per
  employee or project), select a field under
  `Default Group by`{.interpreted-text role="guilabel"}.

- To define a default time scale to view records, select
  `Day`{.interpreted-text role="guilabel"}, `Week`{.interpreted-text
  role="guilabel"}, `Month`{.interpreted-text role="guilabel"}, or
  `Year`{.interpreted-text role="guilabel"} under
  `Default Scale`{.interpreted-text role="guilabel"}.

- To color records on the view, select a field under
  `Color`{.interpreted-text role="guilabel"}. All the records sharing
  the same value for that field are displayed using the same color.

  :::: note
  ::: title
  Note
  :::

  As the number of colors is limited, the same color can be assigned to
  different values.
  ::::

- To specify with which degree of precision each time scale should be
  divided by, select `Quarter Hour`{.interpreted-text role="guilabel"},
  `Half Hour`{.interpreted-text role="guilabel"}, or
  `Hour`{.interpreted-text role="guilabel"} under `Day
  Precision`{.interpreted-text role="guilabel"},
  `Half Day`{.interpreted-text role="guilabel"} or
  `Day`{.interpreted-text role="guilabel"} under
  `Week Precision`{.interpreted-text role="guilabel"}, and
  `Month Precision`{.interpreted-text role="guilabel"}.

::: example
![Planning Shift model\'s Gantt view](views/gantt-planning.png){.align-center}
:::

## Reporting views {#studio/views/reporting}

:::: note
::: title
Note
:::

The settings described below are found under the view\'s
`View`{.interpreted-text role="guilabel"} tab unless specified
otherwise.
::::

### Pivot {#studio/views/reporting/pivot}

The `Pivot`{.interpreted-text role="guilabel"} view is used to explore
and analyze the data contained in records in an interactive manner. It
is especially useful to aggregate numeric data, create categories, and
drill down the data by expanding and collapsing different levels of
data.

- To access all records whose data is aggregated under a cell, tick
  `Access records from
  cell`{.interpreted-text role="guilabel"}.
- To divide the data into different categories, select field(s) under
  `Column grouping`{.interpreted-text role="guilabel"},
  `Row grouping - First level`{.interpreted-text role="guilabel"}, or
  `Row grouping - Second level`{.interpreted-text role="guilabel"}.
- To add different types of data to be measured using the view, select a
  field under `Measures`{.interpreted-text role="guilabel"}.
- To display a count of records that made up the aggregated data in a
  cell, tick `Display
  count`{.interpreted-text role="guilabel"}.

::: example
![Purchase Report model\'s Pivot view](views/pivot-purchase-report.png){.align-center}
:::

### Graph {#studio/views/reporting/graph}

The `Graph`{.interpreted-text role="guilabel"} view is used to showcase
data from records in a bar, line, or pie chart.

- To change the default chart, select `Bar`{.interpreted-text
  role="guilabel"}, `Line`{.interpreted-text role="guilabel"}, or
  `Pie`{.interpreted-text role="guilabel"} under
  `Type`{.interpreted-text role="guilabel"}.
- To choose a default data dimension (category), select a field under
  `First dimension`{.interpreted-text role="guilabel"} and, if needed,
  another under `Second dimension`{.interpreted-text role="guilabel"}.
- To select a default type of data to be measured using the view, select
  a field under `Measure`{.interpreted-text role="guilabel"}.
- *For Bar and Line charts only*: To sort the different data categories
  by their value, select `Ascending`{.interpreted-text role="guilabel"}
  (from lowest to highest value) or `Descending`{.interpreted-text
  role="guilabel"} (from highest to lowest) under
  `Sorting`{.interpreted-text role="guilabel"}.
- *For Bar and Pie charts only*: To access all records whose data is
  aggregated under a data category on the chart, tick
  `Access records from graph`{.interpreted-text role="guilabel"}.
- *For Bar charts only*: When using two data dimensions (categories),
  display the two columns on top of each other by default by ticking
  `Stacked graph`{.interpreted-text role="guilabel"}.

::: example
![Sales Analysis Report model\'s Bar chart on Graph view](views/graph-sales-report.png){.align-center}
:::

### Dashboard {#studio/views/reporting/dashboard}

The `Dashboard`{.interpreted-text role="guilabel"} view is used to
display multiple reporting views and key performance indicators. Which
elements are displayed on the view depends on the configuration of the
other reporting views.

::: example
![Sales Analysis Report model\'s Dashboard view](views/dashboard-sales-report.png){.align-center}
:::


