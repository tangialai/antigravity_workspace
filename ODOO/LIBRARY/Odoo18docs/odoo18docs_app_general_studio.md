# ODOO DOCUMENTATION SUMMARY - CATEGORY: ODOO18DOCS_APP_GENERAL_STUDIO



--- SOURCE: essentials/activities.md ---

# Activities

*Activities* are follow-up tasks tied to a record in an Odoo database.

::: {#activities/important}
The icon used to display activities varies, depending on the
`activity type
<activities/types>`{.interpreted-text role="ref"}:
:::

- `fa-clock-o`{.interpreted-text role="icon"}
  `(clock)`{.interpreted-text role="guilabel"} icon: the default
  activities icon.
- `fa-phone`{.interpreted-text role="icon"} `(phone)`{.interpreted-text
  role="guilabel"} icon: a phone call is scheduled.
- `fa-envelope`{.interpreted-text role="icon"}
  `(envelope)`{.interpreted-text role="guilabel"} icon: an email is
  scheduled.
- `fa-check`{.interpreted-text role="icon"} `(check)`{.interpreted-text
  role="guilabel"} icon: a \"to-do\" is scheduled.
- `fa-users`{.interpreted-text role="icon"} `(people)`{.interpreted-text
  role="guilabel"} icon: a meeting is scheduled.
- `fa-upload`{.interpreted-text role="icon"}
  `(upload)`{.interpreted-text role="guilabel"} icon: a document is
  scheduled to be uploaded.
- `fa-pencil-square-o`{.interpreted-text role="icon"}
  `(request signature)`{.interpreted-text role="guilabel"} icon: a
  signature request is scheduled.

## Schedule activities

Activities can be scheduled on any page of the database that contains a
`chatter
<activities/chatter>`{.interpreted-text role="ref"} thread,
`Kanban view <activities/kanban>`{.interpreted-text role="ref"},
`list view
<activities/list>`{.interpreted-text role="ref"}, or
`activities view <activities/activity>`{.interpreted-text role="ref"} of
an application.

### Chatter {#activities/chatter}

Activities can be created from the chatter on any record.

To schedule a new activity, click the `Activities`{.interpreted-text
role="guilabel"} button, located at the top of the chatter. In the
`Schedule Activity`{.interpreted-text role="guilabel"} pop-up window
that appears, `fill out the
Schedule Activity form <activities/form>`{.interpreted-text role="ref"}.

![New activity type form.](activities/chatter.png){.align-center}

### Kanban view {#activities/kanban}

Activities can also be created from the
`oi-view-kanban`{.interpreted-text role="icon"}
`(Kanban)`{.interpreted-text role="guilabel"} view.

To do so, click on the `fa-clock-o`{.interpreted-text role="icon"}
`(clock)`{.interpreted-text role="guilabel"} icon located at the bottom
of an individual record.

Click `+ Schedule An Activity`{.interpreted-text role="guilabel"}, then
proceed to `fill out the Schedule Activity form
<activities/form>`{.interpreted-text role="ref"}.

![Kanban view of the CRM pipeline and the option to schedule an activity.](activities/schedule-kanban-activity.png){.align-center}

:::: note
::: title
Note
:::

If a record already has a scheduled activity, the
`fa-clock-o`{.interpreted-text role="icon"} `(clock)`{.interpreted-text
role="guilabel"} icon is replaced by the icon that represents the
existing scheduled activity. Click on the activity type\'s icon to
schedule another activity.
::::

### List view {#activities/list}

Activities can also be created from a `oi-view-list`{.interpreted-text
role="icon"} `(list)`{.interpreted-text role="guilabel"} view.

If the `Activities`{.interpreted-text role="guilabel"} column is hidden,
reveal it using the `oi-settings-adjust`{.interpreted-text role="icon"}
`(settings adjust)`{.interpreted-text role="guilabel"} icon in the
far-right of the top row.

Then, click on the `fa-clock-o`{.interpreted-text role="icon"}
`(clock)`{.interpreted-text role="guilabel"} icon for the record the
activity is being added to, and click `+
Schedule an activity`{.interpreted-text role="guilabel"}. Proceed to
`fill out the Schedule Activity form <activities/form>`{.interpreted-text
role="ref"} that appears.

:::: note
::: title
Note
:::

If a record already has a scheduled activity, the
`fa-clock-o`{.interpreted-text role="icon"} `(clock)`{.interpreted-text
role="guilabel"} icon is replaced by the icon that represents the
existing scheduled activity. Click on the activity type\'s icon to
schedule another activity.
::::

![List view of the CRM pipeline and the option to schedule an activity.](activities/schedule-list-activity.png){.align-center}

### Activity view {#activities/activity}

Most applications in Odoo have an *Activity* view available. If
available, a `fa-clock-o`{.interpreted-text role="icon"}
`(clock)`{.interpreted-text role="guilabel"} icon is visible in the
top-right corner of the main menu bar, amongst the other view option
icons.

To open the activity view, click the `fa-clock-o`{.interpreted-text
role="icon"} `(clock)`{.interpreted-text role="guilabel"} icon.

![Top-right menu with the Activities icon called out.](activities/activities.png){.align-center}

In this view, all the available activities are listed in the columns,
while the horizontal entries represent all the individual records.

Activities that appear green have a due date in the future, activities
that appear orange are due today, while activities appearing red are
overdue.

Color bars in each column represent records for specific activity types,
and display a number indicating how many activities are scheduled for
that type.

If multiple activity types are scheduled for a record, a number appears
in the box, indicating the total number of scheduled activities.

:::: note
::: title
Note
:::

Activity colors, and their relation to an activity\'s due date, are
consistent throughout Odoo, regardless of the activity type, or the
view.
::::

To schedule an activity for a record, hover over the corresponding
field. Click the `fa-plus`{.interpreted-text role="icon"}
`(plus)`{.interpreted-text role="guilabel"} icon that appears, and then
`fill out the Schedule Activity form
<activities/form>`{.interpreted-text role="ref"}.

![Activity view of the CRM pipeline and the option to schedule an activity.](activities/activity-view.png){.align-center}

### Schedule Activity form {#activities/form}

Activities can be scheduled from many different places, such as from the
`chatter
<activities/chatter>`{.interpreted-text role="ref"} of a record, or from
one of multiple views in an application, when available: the
`Kanban view <activities/kanban>`{.interpreted-text role="ref"},
`list view <activities/list>`{.interpreted-text role="ref"}, or
`activity
view <activities/activity>`{.interpreted-text role="ref"}.

Enter the following information on the form:

- `Activity Type`{.interpreted-text role="guilabel"}: select the type of
  activity from the drop-down menu. The default options are:
  `Email`{.interpreted-text role="guilabel"}, `Call`{.interpreted-text
  role="guilabel"}, `Meeting`{.interpreted-text role="guilabel"}, or
  `To-Do`{.interpreted-text role="guilabel"}. Depending on what other
  applications are installed, additional options may be available.
- `Summary`{.interpreted-text role="guilabel"}: enter a short title for
  the activity, such as [Discuss Proposal]{.title-ref}.
- `Due Date`{.interpreted-text role="guilabel"}: using the calendar
  popover, select the activity\'s deadline.
- `Assigned to`{.interpreted-text role="guilabel"}: by default, the
  current user populates this field. To assign a different user to the
  activity, select them from the drop-down menu.
- `Notes`{.interpreted-text role="guilabel"}: add any additional
  information for the activity in this field.

When the `Schedule Activity`{.interpreted-text role="guilabel"} pop-up
window is completed, click one of the following buttons:

- `Open Calendar`{.interpreted-text role="guilabel"}: opens the user\'s
  calendar to add and schedule the activity.

  Click on the desired date and time for the activity, and a
  `New Event`{.interpreted-text role="guilabel"} pop-up window appears.
  The summary from the *Schedule Activity* pop-up window populates the
  `Title`{.interpreted-text role="guilabel"} field.

  Enter the information in the `New Event`{.interpreted-text
  role="guilabel"} pop-up window, then click `Save &
  Close`{.interpreted-text role="guilabel"} to schedule it. Once
  scheduled, the activity is added to the chatter under the
  `Planned Activities`{.interpreted-text role="guilabel"} section.

  :::: important
  ::: title
  Important
  :::

  The `Open Calendar`{.interpreted-text role="guilabel"} button **only**
  appears if the `Activity Type`{.interpreted-text role="guilabel"} is
  set to either `Call`{.interpreted-text role="guilabel"} or
  `Meeting`{.interpreted-text role="guilabel"}.
  ::::

- `Schedule`{.interpreted-text role="guilabel"}: schedules the activity,
  and adds the activity to the chatter under
  `Planned Activities`{.interpreted-text role="guilabel"}.

- `Schedule & Mark as Done`{.interpreted-text role="guilabel"}: adds the
  details of the activity to the chatter under `Today`{.interpreted-text
  role="guilabel"}. The activity is not scheduled, and is automatically
  marked as done.

- `Done & Schedule Next`{.interpreted-text role="guilabel"}: adds the
  details of the activity to the chatter under `Today`{.interpreted-text
  role="guilabel"}. The activity is not scheduled, is automatically
  marked as done, and a new `Schedule Activity`{.interpreted-text
  role="guilabel"} pop-up window appears.

- `Cancel`{.interpreted-text role="guilabel"}: discards any changes made
  on the `Schedule Activity`{.interpreted-text role="guilabel"} pop-up
  window.

![View of CRM leads and the option to schedule an activity.](activities/schedule-pop-up.png){.align-center}

## All scheduled activities {#activities/all}

To view a consolidated list of activities, organized by application,
click the `fa-clock-o`{.interpreted-text role="icon"}
`(clock)`{.interpreted-text role="guilabel"} icon in the header menu,
located in the top-right corner.

If any activities are scheduled, the number of activities appear in a
red bubble on the `fa-clock-o`{.interpreted-text role="icon"}
`(clock)`{.interpreted-text role="guilabel"} icon.

All activities for each application are further divided into
subsections, indicating where in the application the activity is to be
completed. Each sub-section lists the number of scheduled activities
that are `Late`{.interpreted-text role="guilabel"}, due
`Today`{.interpreted-text role="guilabel"}, and scheduled in the
`Future`{.interpreted-text role="guilabel"}.

::: example
In the *Time Off* application, one activity is scheduled to be done in
the *All Time Off* requests dashboard, and six activities are scheduled
to be done in the *Allocations* dashboard.

These requests appear in two separate lists in the all activities
drop-down menu: one labeled [Time Off]{.title-ref} and one labeled [Time
Off Allocation]{.title-ref}.

![The list of activities that is accessed from the main menu bar. Two entries for the Time
Off application are highlighted.](activities/activities-menu.png){.align-center}
:::

:::: tip
::: title
Tip
:::

The option to `Request a Document <documents/request>`{.interpreted-text
role="ref"} is available at the bottom of the list of all scheduled
activities.
::::

## Activity types {#activities/types}

To view the currently configured types of activities in the database,
navigate to
`Settings app --> Discuss section --> Activities setting --> Activity Types`{.interpreted-text
role="menuselection"}.

![Activity Types button in the Settings application under the Discuss section.](activities/settings-activities-types.png){.align-center}

Doing so reveals the `Activity Types`{.interpreted-text role="guilabel"}
page, where the existing activity types are found.

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

![The list of activity types already configured and available.](activities/activity-list.png){.align-center}

### Edit activity types

To edit an existing `activity type <activities/types>`{.interpreted-text
role="ref"}, click on the activity type, and the activity type form
loads.

Make any desired changes to the activity type form. The form
automatically saves, but it can be saved manually at any time by
clicking the `Save Manually`{.interpreted-text role="guilabel"} option,
represented by a `fa-cloud-upload`{.interpreted-text role="icon"}
`(cloud upload)`{.interpreted-text role="guilabel"} icon, located in the
top-left corner of the page.

### Create new activity types

To create a new `activity type <activities/types>`{.interpreted-text
role="ref"}, click `New`{.interpreted-text role="guilabel"} from the
`Activity Types`{.interpreted-text role="guilabel"} page, and a blank
activity type form loads.

Enter a `Name`{.interpreted-text role="guilabel"} for the activity type
at the top of the form, then enter the following information on the
form.

#### Activity Settings section

- `Action`{.interpreted-text role="guilabel"}: Using the drop-down menu,
  select an action associated with this new activity type. Some actions
  trigger specific behaviors after an activity is scheduled, such as:

  - `Upload Document`{.interpreted-text role="guilabel"}: If selected, a
    link to upload a document is automatically added to the planned
    activity in the chatter.
  - `Call`{.interpreted-text role="guilabel"} or
    `Meeting`{.interpreted-text role="guilabel"}: If selected, users
    have the option to open their calendar to select a date and time for
    the activity.
  - `Request Signature`{.interpreted-text role="guilabel"}: If selected,
    a link to open a signature request pop-up window is automatically
    added to the planned activity in the chatter. This requires the Odoo
    *Sign* application to be installed.

  :::: note
  ::: title
  Note
  :::

  Available activity types vary based on the installed applications in
  the database.
  ::::

- `Folder`{.interpreted-text role="guilabel"}: Select a specific
  `folder <documents/folders>`{.interpreted-text role="ref"} to save a
  document to. This field **only** appears if
  `Upload Document`{.interpreted-text role="guilabel"} is selected for
  the `Action`{.interpreted-text role="guilabel"}.

- `Default User`{.interpreted-text role="guilabel"}: Select a user from
  the drop-down menu to automatically assign this activity to the
  selected user when this activity type is scheduled. If this field is
  left blank, the activity is assigned to the user who creates the
  activity.

- `Default Summary`{.interpreted-text role="guilabel"}: enter a note to
  include whenever this activity type is created.

  :::: note
  ::: title
  Note
  :::

  The information in the `Default User`{.interpreted-text
  role="guilabel"} and `Default Summary`{.interpreted-text
  role="guilabel"} fields are included when an activity is created.
  However, they can be altered before the activity is scheduled or
  saved.
  ::::

- `Keep Done`{.interpreted-text role="guilabel"}: Tick this checkbox to
  keep activities that have been marked as [Done]{.title-ref} visible in
  the `activity view <activities/activity>`{.interpreted-text
  role="ref"}.

- `Default Note`{.interpreted-text role="guilabel"}: enter any notes to
  appear with the activity.

#### Next Activity section

It is possible to have another activity either suggested or triggered.
To do so, configure the `Next Activity`{.interpreted-text
role="guilabel"} section.

- `Chaining Type`{.interpreted-text role="guilabel"}: select either
  `Suggest Next Activity`{.interpreted-text role="guilabel"} or `Trigger
  Next Activity`{.interpreted-text role="guilabel"} from the drop-down
  menu. Depending on the selected option, either the
  `Suggest`{.interpreted-text role="guilabel"} or
  `Trigger`{.interpreted-text role="guilabel"} field is displayed.

  :::: note
  ::: title
  Note
  :::

  The `Chaining Type`{.interpreted-text role="guilabel"} field does
  **not** appear if `Upload Document`{.interpreted-text role="guilabel"}
  is selected for the `Action`{.interpreted-text role="guilabel"}.
  ::::

- `Suggest/Trigger`{.interpreted-text role="guilabel"}: depending on
  what is selected for the `Chaining Type`{.interpreted-text
  role="guilabel"}, this field either displays
  `Suggest`{.interpreted-text role="guilabel"} or
  `Trigger`{.interpreted-text role="guilabel"}. Using the drop-down
  menu, select the activity to recommend or schedule as a follow-up task
  to the activity type.

- `Schedule`{.interpreted-text role="guilabel"}: configure when the next
  activity is suggested or triggered.

  First, enter a numerical value indicating when the activity is
  suggested or triggered.

  Next to this field, a `Days`{.interpreted-text role="guilabel"} field
  is visible. Click `Days`{.interpreted-text role="guilabel"}, the
  default option, to reveal a drop-down menu. Select the desired
  time-frame option from the list. The options are
  `Days`{.interpreted-text role="guilabel"}, `Weeks`{.interpreted-text
  role="guilabel"}, or `Months`{.interpreted-text role="guilabel"}.

  Lastly, using the drop-down menu, select whether the activity is
  scheduled or triggered either
  `after previous activity deadline`{.interpreted-text role="guilabel"}
  or `after completion date`{.interpreted-text role="guilabel"}.

![A new Activity form with all the fields filled out.](activities/new-activity.png){.align-center}

::: seealso
\- `../productivity/discuss`{.interpreted-text role="doc"} -
`../productivity/discuss/team_communication`{.interpreted-text
role="doc"} -
`../sales/crm/optimize/utilize_activities`{.interpreted-text role="doc"}
:::




--- SOURCE: essentials/contacts/merge.md ---

# Merge contacts

Odoo\'s *Contacts* application allows user\'s to merge duplicate
contacts, without losing any information in the process. This keeps the
database organized, and prevents contacts from being contacted by more
than one salesperson.

## Merge duplicate contacts {#contacts/merge-duplicate}

:::: danger
::: title
Danger
:::

Merging is an irreversible action. Do **not** merge contacts unless
absolutely certain they should be combined.
::::

Navigate to the `Contacts app`{.interpreted-text role="menuselection"},
and select the `oi-view-list`{.interpreted-text role="icon"}
`(list)`{.interpreted-text role="guilabel"} icon. Select two or more
duplicate contacts from the list, and tick the checkbox (on the
far-left) for the contacts that should be merged. Then, click the
`fa-cog`{.interpreted-text role="icon"} `Actions`{.interpreted-text
role="guilabel"} icon, and select `Merge`{.interpreted-text
role="guilabel"} from the resulting drop-down menu.

![The merge contacts option in the Contacts application.](merge/merge-menu.png){.align-center}

This opens the `Merge`{.interpreted-text role="guilabel"} pop-up window.
From here, review the details of the contacts before confirming they
should be merged. If any contacts in the list should **not** be merged,
click the `fa-times`{.interpreted-text role="icon"}
`(delete)`{.interpreted-text role="guilabel"} icon at the far right of
the contact.

:::: tip
::: title
Tip
:::

Click the individual contact to open the record for that contact, and
view additional information.
::::

![The merge pop-up window in the Contacts application.](merge/merge-window.png){.align-center}

Click the `Destination Contact`{.interpreted-text role="guilabel"}
field, and select an option from the drop-down list. This field defaults
to the contact record that was created first in the system.

After confirming the information on the pop-up window, click
`Merge Contacts`{.interpreted-text role="guilabel"}.

## Deduplicate contacts

After the merge is finished, a pop-up window appears confirming it is
complete. This pop-up window also contains a
`Deduplicate the other Contacts`{.interpreted-text role="guilabel"}
button. This feature searches for duplicated records, based on selected
criteria, and merges them automatically, or after manual approval.

Click the `Deduplicate the other Contacts`{.interpreted-text
role="guilabel"} button to open the `Deduplicate
Contacts`{.interpreted-text role="guilabel"} pop-up window.

Select one or more fields to be used in the search for duplicated
records. Duplicated contacts can be searched, based on the following
criteria:

- `Email`{.interpreted-text role="guilabel"}
- `Name`{.interpreted-text role="guilabel"}
- `Is Company`{.interpreted-text role="guilabel"}
- `VAT`{.interpreted-text role="guilabel"}
- `Parent Company`{.interpreted-text role="guilabel"}

:::: note
::: title
Note
:::

If more than one field is selected, only records that have **all**
fields in common are suggested as duplicates.
::::

If necessary, select criteria to be used to exclude potential duplicates
from the search. Potential duplicates can be excluded from the search,
based on the following criteria:

- `A user associated to the contact`{.interpreted-text role="guilabel"}
- `Journal Items associated to the contact`{.interpreted-text
  role="guilabel"}

After confirming the search criteria, click either
`Merge with Manual Check`{.interpreted-text role="guilabel"},
`Merge Automatically`{.interpreted-text role="guilabel"}, or
`Merge Automatically all process`{.interpreted-text role="guilabel"}.

If `Merge with Manual Check`{.interpreted-text role="guilabel"} is
selected, complete the merge by following the `steps
above <contacts/merge-duplicate>`{.interpreted-text role="ref"}.




--- SOURCE: essentials/contacts.md ---

show-content

:   

# Contacts

Contacts are created in the **Contacts** application for customers the
company does business with through Odoo. A contact is a repository of
vital business information, facilitating communication and business
transactions.

## Contact form

To create a new contact, navigate to the
`Contacts app`{.interpreted-text role="menuselection"}, and click
`New`{.interpreted-text role="guilabel"}. A new form appears where
various contact information can be added.

:::: note
::: title
Note
:::

Some fields may be slightly different depending on the
`fiscal localization
<fiscal_localizations/packages>`{.interpreted-text role="ref"} that is
installed on the databse.
::::

### Contact type

Odoo allows for both *Individual* and *Company* contacts. Select either
`Individual`{.interpreted-text role="guilabel"} or
`Company`{.interpreted-text role="guilabel"}, depending on the type of
contact that is being added.

### Name

First, fill in the name of the contact. This is how the name appears
throughout the database. This field is **mandatory**.

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
contact. If the `Individual`{.interpreted-text role="guilabel"} option
is chosen, then the *type of address* can be chosen from a drop-down
menu. Options for this drop-down menu include:
`Contact`{.interpreted-text role="guilabel"},
`Invoice Address`{.interpreted-text role="guilabel"},
`Delivery Address`{.interpreted-text role="guilabel"},
`Follow-up Address`{.interpreted-text role="guilabel"}, and
`Other Address`{.interpreted-text role="guilabel"}.

![The contact type drop-down on a new contact creation form.](contacts/address-type.png)

### Additional fields

Additional details are included on the initial form. The following
fields are available:

- `Job Position`{.interpreted-text role="guilabel"}: list the contact\'s
  job position (only available on `Individual`{.interpreted-text
  role="guilabel"}).
- `Tax ID`{.interpreted-text role="guilabel"}: the identification number
  used for tax and accounting purposes. This may appear as
  `Identification Number`{.interpreted-text role="guilabel"} or
  `Citizen ID`{.interpreted-text role="guilabel"} depending on the
  country.
- `Partner Level`{.interpreted-text role="guilabel"}: select the
  designated `partner <contacts/partner-assignment>`{.interpreted-text
  role="ref"} level for this contact from the drop-down menu.
- `Website`{.interpreted-text role="guilabel"}: enter the full website
  address, starting with [http]{.title-ref} or [https]{.title-ref}.
- `Language`{.interpreted-text role="guilabel"}: enter the language used
  by the contact. All of the emails and documents sent to this contact
  are then translated to the selected language.
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

Multiple addresses can be added to contacts. To do so, click
`Add`{.interpreted-text role="guilabel"} in the
`Contacts & Addresses`{.interpreted-text role="guilabel"} tab. Doing so
reveals a `Create Contact`{.interpreted-text role="guilabel"} pop-up
form, in which additional addresses can be configured.

On the `Create Contact`{.interpreted-text role="guilabel"} pop-up form,
select one of the following options for the address type:

- `Contact`{.interpreted-text role="guilabel"}: adds another contact to
  the existing contact form.
- `Invoice Address`{.interpreted-text role="guilabel"}: adds a specific
  invoice address to the existing contact form.
- `Delivery Address`{.interpreted-text role="guilabel"}: adds a specific
  delivery address to the existing contact form.
- `Follow-up Address`{.interpreted-text role="guilabel"}: adds a
  preferred address for follow-up reports and reminders about overdue
  invoices.
- `Other Address`{.interpreted-text role="guilabel"}: adds an alternate
  address for the company, such as a subsidiary.

![Add a contact/address to the contact form.](contacts/contact-form-add-address.png)

Once an option is selected, enter the corresponding contact information
that should be used for the specified address type.

Add the `Contact Name`{.interpreted-text role="guilabel"},
`Address`{.interpreted-text role="guilabel"}, `Email`{.interpreted-text
role="guilabel"}, along with the `Phone`{.interpreted-text
role="guilabel"} and `Mobile`{.interpreted-text role="guilabel"} numbers
below.

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
which only appears when the **Sales**, **Purchase**, or **Point of
Sale** applications are installed.

The `Fiscal Position`{.interpreted-text role="guilabel"} can be set on
the `Sales & Purchases`{.interpreted-text role="guilabel"} tab. Select a
`Fiscal Position`{.interpreted-text role="guilabel"} from the drop-down
menu.

#### Sales section {#essentials/contacts/sales-section}

Under the `Sales`{.interpreted-text role="guilabel"} heading, a specific
`Salesperson`{.interpreted-text role="guilabel"} can be assigned to a
contact. To do that, click the `Salesperson`{.interpreted-text
role="guilabel"} drop-down field, and select one. Create a new
`Salesperson`{.interpreted-text role="guilabel"} by typing the user\'s
name, and making the appropriate selection.

Certain `Payment Terms`{.interpreted-text role="guilabel"}, a
`Payment Method`{.interpreted-text role="guilabel"}, or a specific
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
identify the contact.

#### Purchase section

Specify `Payment Terms`{.interpreted-text role="guilabel"},
`1099 Box`{.interpreted-text role="guilabel"} information, and a
preferred `Payment Method`{.interpreted-text role="guilabel"} here. A
`Receipt Reminder`{.interpreted-text role="guilabel"} can be set here,
as well.

#### Misc section

Under the `Misc.`{.interpreted-text role="guilabel"} heading, enter a
`Citizen Identification`{.interpreted-text role="guilabel"} number, if
necessary for tax purposes. Use the `Reference`{.interpreted-text
role="guilabel"} field to add any additional information for this
contact.

If this contact should **only** be accessible for one company in a
multi-company database, select it from the `Company`{.interpreted-text
role="guilabel"} field drop-down list. Use the
`Website`{.interpreted-text role="guilabel"} drop-down menu to restrict
the publishing of this contact to one website (if working on a database
with multiple websites). Select one or more
`Website Tags`{.interpreted-text role="guilabel"} to assist in filtering
published customers on the [/customers]{.title-ref} website page.

Select an `Industry`{.interpreted-text role="guilabel"} for this contact
from the drop-down menu. Use the `SLA
Policies`{.interpreted-text role="guilabel"} field to assign a
**Helpdesk** SLA policy to this contact.

### Accounting tab

The `Accounting`{.interpreted-text role="guilabel"} tab appears when the
**Accounting** application is installed. Here, a user can add any
related `Bank Accounts`{.interpreted-text role="guilabel"}, or set
default `Accounting entries`{.interpreted-text role="guilabel"}.

Under the `Miscellaneous`{.interpreted-text role="guilabel"} heading,
use the `LEI`{.interpreted-text role="guilabel"} field to enter a Legal
Entity Identifier, if necessary.

### Internal Notes tab

Following the `Accounting`{.interpreted-text role="guilabel"} tab is the
`Internal Notes`{.interpreted-text role="guilabel"} tab, where notes can
be left on this contact form, just like on the contact form noted above.

### Partner Assignment tab {#contacts/partner-assignment}

Next is the `Partner Assignment`{.interpreted-text role="guilabel"} tab,
which by default includes a `Geolocation`{.interpreted-text
role="guilabel"} section, and other partner options, including
`Partner Activation`{.interpreted-text role="guilabel"} and `Partner
Review`{.interpreted-text role="guilabel"} configurations. These are
**only** present when the **Resellers** module is installed.

::: seealso
Follow the
`Resellers documentation <../sales/crm/track_leads/resellers>`{.interpreted-text
role="doc"} for more information on publishing partners on the website.
:::

### Membership tab

Finally, there is the `Membership`{.interpreted-text role="guilabel"}
tab on contact forms, which can help users manage any memberships that
are being offered to this specific contact. It should be noted that this
tab **only** appears when the *Members* application is installed.

#### Activate membership

To activate a contact\'s membership, click
`Buy Membership`{.interpreted-text role="guilabel"} in the
`Membership`{.interpreted-text role="guilabel"} tab of a contact form.
On the pop-up window that appears, select a
`Membership`{.interpreted-text role="guilabel"} from the drop-down menu.
Then, configure a `Member Price`{.interpreted-text role="guilabel"}.
Click `Invoice Membership`{.interpreted-text role="guilabel"} when both
fields are filled in.

Alternatively, to offer a free membership, tick the
`Free Member`{.interpreted-text role="guilabel"} checkbox, in the
`Membership`{.interpreted-text role="guilabel"} tab of a contact form.

::: seealso
Follow the `Members documentation <../sales/members>`{.interpreted-text
role="doc"} for more information on publishing members on the website.
:::

## Smart buttons

At the top of the contact form, there are some additional options
available, known as *smart buttons*.

Here, Odoo displays a variety of records, related to this contact, that
were created on other apps. Odoo integrates information from every
single app, so there are many smart buttons.

::: example
For example, there is an `Opportunities`{.interpreted-text
role="guilabel"} smart button, where all the opportunities related to
this customer from the **CRM** app are accessible.
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

Deliveries, documents, loyalty cards, and direct debits are also linked
to smart buttons, like this, should there be any related to this
contact.

If the contact is a partner, the user can visit their partner page on
the Odoo-built website by clicking the `Go to Website`{.interpreted-text
role="guilabel"} smart button.

### Archive contacts

If a user decides they no longer want to have this contact active, the
record can be archived. To do that, go to the `fa-cog`{.interpreted-text
role="icon"} `Action`{.interpreted-text role="guilabel"} menu at the top
of the contact form, and click `Archive`{.interpreted-text
role="guilabel"}.

Then, click `Archive`{.interpreted-text role="guilabel"} from the
resulting `Confirmation`{.interpreted-text role="guilabel"} pop-up
window.

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
`Add different addresses in CRM <../sales/sales/sales_quotations/different_addresses>`{.interpreted-text
role="doc"} - [Odoo\'s eLearning Contacts
tutorial](https://www.odoo.com/slides/slide/contacts-2527?fullscreen=1)
:::

::: {.toctree titlesonly=""}
contacts/merge
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

## Export data from Odoo {#essentials/export_import_data/export-data}

When working with a database, it is sometimes necessary to export data
in a distinct file. Doing so can aid in reporting on activities,
although, Odoo provides a precise reporting tool with each available
application.

With Odoo, the values can be exported from any field in any record. To
do so, activate the list view `fa-list`{.interpreted-text role="icon"}
`(List)`{.interpreted-text role="guilabel"} icon, on the items that need
to be exported, and then select the records that should be exported. To
select a record, tick the checkbox next to the corresponding record.
Finally, click the `Action`{.interpreted-text role="guilabel"} button,
and select `fa-upload`{.interpreted-text role="icon"}
`Export`{.interpreted-text role="guilabel"}.

![View of the different things to enable/click to export data.](export_import_data/list-view-export.png)

When clicking on `fa-upload`{.interpreted-text role="icon"}
`Export`{.interpreted-text role="guilabel"}, a
`Export Data`{.interpreted-text role="guilabel"} pop-over window
appears, with several options for the data to export:

![Overview of options to consider when exporting data in Odoo.](export_import_data/export-data-overview.png)

1.  With the
    `I want to update data (import-compatable export)`{.interpreted-text
    role="guilabel"} option ticked, the system only shows the fields
    that can be imported. This is helpful in the case where the
    `existing
    records need to be updated <essentials/update-data>`{.interpreted-text
    role="ref"}. This works like a filter. Leaving the box unticked,
    gives many more field options because it shows all the fields, not
    only the ones that can be imported.
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
    role="guilabel"}, and give a unique name to the export template.
    Click the `fa-floppy-o`{.interpreted-text role="icon"}
    `(floppy drive)`{.interpreted-text role="guilabel"} icon to save the
    configuration. The next time the same list needs to be exported,
    select the related template that was previously saved from the
    drop-down menu.

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

## Import data into Odoo {#essentials/export_import_data/import-data}

Importing data into Odoo is extremely helpful during implementation, or
in times where data needs to be
`updated in bulk <essentials/update-data>`{.interpreted-text
role="ref"}. The following documentation covers how to import data into
an Odoo database.

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

![Advanced import options when developer mode is activated.](export_import_data/advanced-import.png)

If the model uses openchatter, the
`Track history during import`{.interpreted-text role="guilabel"} option
sets up subscriptions and sends notifications during the import, but
leads to a slower import.

Should the `Allow matching with subfields`{.interpreted-text
role="guilabel"} option be selected, then all subfields within a field
are used to match under the `Odoo Field`{.interpreted-text
role="guilabel"} while importing.
::::

### Get started {#essentials/export_import_data/get-started}

Data can be imported on any Odoo business object using either Excel
([.xlsx]{.title-ref}) or `CSV
(Comma-separated Values)`{.interpreted-text role="abbr"}
([.csv]{.title-ref}) formats. This includes: contacts, products, bank
statements, journal entries, and orders.

Open the view of the object to which the data should be
imported/populated, click on `fa-cog`{.interpreted-text role="icon"}
`(Action)`{.interpreted-text role="guilabel"} icon, and in the drop-down
menu select `fa-upload`{.interpreted-text role="icon"} `(Import
records)`{.interpreted-text role="guilabel"}.

![Action menu revealed with the import records option highlighted.](export_import_data/import-button.png)

Click `fa-upload`{.interpreted-text
role="icon"}`Import Template for Customers`{.interpreted-text
role="guilabel"} at the center of the page to download a
`template <essentials/export_import_data/adapt-a-template>`{.interpreted-text
role="ref"} and populate it with the company\'s own data. Such templates
can be imported in one click since the data mapping is already
preconfigured.

To upload the downloaded template or an existing file, follow the next
steps:

1.  Click `Upload Data File`{.interpreted-text role="guilabel"} and
    select the desired file.
2.  Adjust the `Formatting`{.interpreted-text role="guilabel"} options
    as needed (for CSV files only).
3.  Ensure all data in the `File Column`{.interpreted-text
    role="guilabel"} is correctly mapped to the appropriate
    `Odoo Field`{.interpreted-text role="guilabel"} and free of errors.
4.  (Optional) Click `Load Data File`{.interpreted-text role="guilabel"}
    to reload the same file or upload a different one.
5.  Click `Test`{.interpreted-text role="guilabel"} to verify that the
    data is valid.
6.  Click `Import`{.interpreted-text role="guilabel"}.

:::: note
::: title
Note
:::

The `Formatting`{.interpreted-text role="guilabel"} options do **not**
appear when importing the proprietary Excel file type (i.e.,
[.xls]{.title-ref} or [.xlsx]{.title-ref}).
::::

### Adapt a template {#essentials/export_import_data/adapt-a-template}

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

### Import from another application {#essentials/external-id}

The `External ID`{.interpreted-text role="guilabel"} (ID) is a unique
identifier for a line item. It is possible to use an
`External ID`{.interpreted-text role="guilabel"} (ID) from previous
software to facilitate the transition to Odoo.

Setting an ID is not mandatory when importing, but it helps in many
cases:

- `Update imports <essentials/update-data>`{.interpreted-text
  role="ref"}: import the same file several times without creating
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

It should be noted that conflicts occur if two (or more) records have
the same *External ID*.
::::

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
For example, the date format should be [YYYY-MM-DD]{.title-ref}. In the
case of July 24th 1981, it should be written as
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

### Import image files

To import image files along with the
`uploaded <essentials/export_import_data/get-started>`{.interpreted-text
role="ref"} CSV or Excel file, follow the next steps:

1.  Add the image file names to the relevant `Image`{.interpreted-text
    role="guilabel"} column in the data file.
2.  `Upload the data file <essentials/export_import_data/get-started>`{.interpreted-text
    role="ref"} or reload it by clicking
    `Load Data File`{.interpreted-text role="guilabel"}.
3.  Click `Upload your files`{.interpreted-text role="guilabel"} under
    the `Files to import`{.interpreted-text role="guilabel"} section.
4.  Select the relevant image files. The number of files selected
    appears next to the button.
5.  Click `Test`{.interpreted-text role="guilabel"} to verify that all
    data is valid.
6.  Click `Import`{.interpreted-text role="guilabel"}. During the import
    process, Odoo performs a file check to automatically link the
    uploaded images to the imported data file. If there is no match, the
    data file is imported without any image.

:::: note
::: title
Note
:::

- The `Files to import`{.interpreted-text role="guilabel"} section is
  enabled if the product template has an `Image`{.interpreted-text
  role="guilabel"} column with all fields populated.
- The image file names in the data file must correspond to the uploaded
  image files.
- When importing a large number of images, specify the maximum batch
  size in megabytes and set a delay to prevent the system from becoming
  overloaded. To do so, `enable the developer mode
  <../general/developer_mode>`{.interpreted-text role="doc"} and fill in
  the `Max size per batch`{.interpreted-text role="guilabel"} and the
  `Delay after each batch`{.interpreted-text role="guilabel"} fields in
  the `Files to import`{.interpreted-text role="guilabel"} section. By
  default, the delay meets the RPC/API call limit defined in the [Odoo
  Cloud - Acceptable Use Policy](https://www.odoo.com/acceptable-use).
::::

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
value for every non-defined field. However, if fields are set with empty
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

## Update data in Odoo {#essentials/update-data}

Existing data can be updated in bulk through a data import, as long as
the `External ID
<essentials/external-id>`{.interpreted-text role="ref"} remains
consistent.

### Prepare data export

To update data through an import, first navigate to the data to be
updated, and select the `oi-view-list`{.interpreted-text role="icon"}
`(List)`{.interpreted-text role="guilabel"} icon to activate list view.
On the far-left side of the list, tick the checkbox for any record to be
updated. Then, click `Actions`{.interpreted-text role="guilabel"}
button, and select `fa-upload`{.interpreted-text role="icon"}
`Export`{.interpreted-text role="guilabel"} from the drop-down menu.

On the resulting `Export Data`{.interpreted-text role="guilabel"} pop-up
window, tick the checkbox labeled, `I want
to update data (import-compatible export)`{.interpreted-text
role="guilabel"}. This automatically includes the *External ID* in the
export. Additionally, it limits the `Fields to export`{.interpreted-text
role="guilabel"} list to **only** include fields that are able to be
imported.

:::: note
::: title
Note
:::

The `External ID`{.interpreted-text role="guilabel"} field does **not**
appear in the `Fields to export`{.interpreted-text role="guilabel"} list
unless it is manually added, but it is still included in the export.
However, if the `I
want to update data (import-compatible export)`{.interpreted-text
role="guilabel"} checkbox is ticked, it is included in the export.
::::

Select the required fields to be included in the export using the
`options
<essentials/export_import_data/export-data>`{.interpreted-text
role="ref"} on the pop-up window, then click `Export`{.interpreted-text
role="guilabel"}.

### Import updated data

After exporting, make any necessary changes to the data file. When the
file is ready, it can be
`imported <essentials/export_import_data/import-data>`{.interpreted-text
role="ref"} by following the same process as a normal data import.

:::: danger
::: title
Danger
:::

When updating data, it is extremely important that the *External ID*
remain consistent, as this is how the system identifies a record. If an
ID is altered, or removed, the system may add a duplicate record,
instead of updating the existing one.
::::




--- SOURCE: essentials/html_editor.md ---

# Odoo rich-text editor {#text-editor}

The Odoo rich-text editor allows creating and editing rich-text content
in HTML fields, such as the `Internal Notes`{.interpreted-text
role="guilabel"} and `Description`{.interpreted-text role="guilabel"}
fields, as well as in the `Knowledge
articles <knowledge/articles_editing/edit-article>`{.interpreted-text
role="ref"} and the `Studio report
editor <studio/pdf-reports/report-editor>`{.interpreted-text
role="ref"}, among others. Start typing or use the
`toolbar <essentials/html_editor/toolbar>`{.interpreted-text role="ref"}
or `powerbox
<essentials/html_editor/commands>`{.interpreted-text role="ref"} for
formatting and structuring text.

:::: tip
::: title
Tip
:::

Hover over any element in the text (header, table, clipboard, etc.) to
reveal the `fa-sort`{.interpreted-text role="icon"}
`(drag)`{.interpreted-text role="guilabel"} icon. Click and hold the
icon to drag and drop the element elsewhere in the text.
::::

## Text editor toolbar {#essentials/html_editor/toolbar}

To edit a word, sentence, or paragraph, select or double-click it to
display the text editor toolbar and apply any of the following
formatting options:

- **Font style**: Change the style using various options, such as
  `Header 1 to 6,
  Normal, Paragraph, Code`{.interpreted-text role="guilabel"}, and
  `Quote`{.interpreted-text role="guilabel"}.
- `B`{.interpreted-text role="guilabel"}: Put the text in bold.
- `I`{.interpreted-text role="guilabel"}: Put the text in italics.
- `U`{.interpreted-text role="guilabel"}: Underline the text.
- `S`{.interpreted-text role="guilabel"}: Strike through the text.
- `A`{.interpreted-text role="guilabel"} and
  `fa-paint-brush`{.interpreted-text role="icon"}
  `(paintbrush)`{.interpreted-text role="guilabel"} to customize the
  font and background colors, respectively:
  - `Solid`{.interpreted-text role="guilabel"}: Select the preferred
    color from the predefined palette.
  - `Custom`{.interpreted-text role="guilabel"}: Customize the color
    palette using the wheel or by configuring the
    `hex`{.interpreted-text role="guilabel"} code and
    `RGBA`{.interpreted-text role="guilabel"} values.
  - `Gradient`{.interpreted-text role="guilabel"}: Select a predefined
    gradient or customize it by choosing between
    `Linear`{.interpreted-text role="guilabel"} or
    `Radial`{.interpreted-text role="guilabel"} and adjusting the wheel.
- **Font size**: Adjust the size of the text.
- `fa-list-ul`{.interpreted-text role="icon"}
  (`bulleted list`{.interpreted-text role="guilabel"}): Turn the text
  into a bulleted list.
- `fa-list-ol`{.interpreted-text role="icon"}
  (`numbered list`{.interpreted-text role="guilabel"}): Turn the text
  into a numbered list.
- `fa-check-square-o`{.interpreted-text role="icon"}
  (`checklist`{.interpreted-text role="guilabel"}): Turn the text into a
  checklist.
- `fa-link`{.interpreted-text role="icon"} (`link`{.interpreted-text
  role="guilabel"}): Insert or edit a URL link to a selected text, and
  optionally upload an image using its file URL.
- `Translate`{.interpreted-text role="guilabel"}: Translate the content
  in the `installed languages
  </applications/general/users/language>`{.interpreted-text role="doc"}.
- `fa-magic`{.interpreted-text role="icon"} `AI`{.interpreted-text
  role="guilabel"} (`ChatGPT`{.interpreted-text role="guilabel"}): Get
  AI-generated suggestions and adjust the tone by clicking buttons such
  as `Correct, Shorten, Lengthen, Friendly,
  Professional`{.interpreted-text role="guilabel"}, and
  `Persuasive`{.interpreted-text role="guilabel"}.

![Text editor\'s toolbox](html_editor/style-and-colors.png)

:::: tip
::: title
Tip
:::

Use the following keyboard shortcuts to apply formatting: -
**Emphasis**: Press [CTRL]{.title-ref}/\`CMD\` + [B]{.title-ref},
[CTRL]{.title-ref}/\`CMD\` + [I]{.title-ref}, or
[CTRL]{.title-ref}/\`CMD\` + [U]{.title-ref} to apply the bold, italics,
or underlined effect. - **Numbered list**: Type [1.]{.title-ref},
[1)]{.title-ref}, [A.]{.title-ref}, or [A)]{.title-ref} to start a
numbered list. - **Bulleted list**: Type [\*]{.title-ref} or
[-]{.title-ref} to start a bulleted list.
::::

## Powerbox commands {#essentials/html_editor/commands}

To use a command, type [/]{.title-ref} to open the powerbox, then enter
the command\'s name or select from multiple features to insert tables,
images, banners, etc.

:::: tip
::: title
Tip
:::

Starting a new paragraph displays a tooltip with command shortcut icons.
Click an icon to add the command, or click the
`fa-ellipsis-v`{.interpreted-text role="icon"}
(`ellipsis`{.interpreted-text role="guilabel"}) icon to open the
powerbox for all commands.
::::

:::: note
::: title
Note
:::

Commands specific to particular apps are excluded from this description.
::::

:::::::::::: tabs
.. tab:: Structure

  --------------------------------------------------------------------------------------------
  Command                             Use
  ----------------------------------- --------------------------------------------------------
  `Separator`{.interpreted-text       Insert a horizontal rule separator.
  role="guilabel"}                    

  `2 columns`{.interpreted-text       Convert into 2 columns.
  role="guilabel"}                    

  `3 columns`{.interpreted-text       Convert into 3 columns.
  role="guilabel"}                    

  `4 columns`{.interpreted-text       Convert into 4 columns.
  role="guilabel"}                    

  `Table`{.interpreted-text           Insert a table.
  role="guilabel"}                    

  `Bulleted list`{.interpreted-text   Create a bulleted list.
  role="guilabel"}                    

  `Numbered list`{.interpreted-text   Create a numbered list.
  role="guilabel"}                    

  `Checklist`{.interpreted-text       Create a checklist.
  role="guilabel"}                    

  `Quote`{.interpreted-text           Add a blockquote section.
  role="guilabel"}                    

  `Code`{.interpreted-text            Add a code section.
  role="guilabel"}                    
  --------------------------------------------------------------------------------------------

:::: note
::: title
Note
:::

To organize a table, hover over a column or row to reveal the table
menu. Click the `fa-ellipsis-h`{.interpreted-text role="icon"}
`(ellipsis)`{.interpreted-text role="guilabel"} icon to move, insert, or
delete a column or row.
::::

::: tab
Banner
:::

  ---------------------------------------------------------------------------------------------
  Command                              Use
  ------------------------------------ --------------------------------------------------------
  `Banner Info`{.interpreted-text      Insert an info banner.
  role="guilabel"}                     

  `Banner Success`{.interpreted-text   Insert a success banner.
  role="guilabel"}                     

  `Banner Warning`{.interpreted-text   Insert a warning banner.
  role="guilabel"}                     

  `Banner Danger`{.interpreted-text    Insert a danger banner.
  role="guilabel"}                     
  ---------------------------------------------------------------------------------------------

::: tab
Format
:::

  -----------------------------------------------------------------------------------------------
  Command                                Use
  -------------------------------------- --------------------------------------------------------
  `Heading 1`{.interpreted-text          Big section heading.
  role="guilabel"}                       

  `Heading 2`{.interpreted-text          Medium section heading.
  role="guilabel"}                       

  `Heading 3`{.interpreted-text          Small section heading.
  role="guilabel"}                       

  `Text`{.interpreted-text               Paragraph block: Insert a paragraph.
  role="guilabel"}                       

  `Switch direction`{.interpreted-text   Switch the text\'s direction.
  role="guilabel"}                       
  -----------------------------------------------------------------------------------------------

::: tab
Media
:::

  ------------------------------------------------------------------------------------------------------
  Command                             Use
  ----------------------------------- ------------------------------------------------------------------
  `Media`{.interpreted-text           `Insert an image <insert-media>`{.interpreted-text role="ref"} or
  role="guilabel"}                    icon: `Search the Unsplash database
                                      </applications/general/integrations/unsplash>`{.interpreted-text
                                      role="doc"} or upload images, documents, or icons.

  `Clipboard`{.interpreted-text       Add a clipboard section to store content and reuse it in other
  role="guilabel"}                    apps.

  `Upload a file`{.interpreted-text   Add a download box: share images, recordings, or documents that
  role="guilabel"}                    internal users can download.
  ------------------------------------------------------------------------------------------------------

::: tab
Navigation
:::

  ---------------------------------------------------------------------------------------------------------------------
  Command                                Use
  -------------------------------------- ------------------------------------------------------------------------------
  `Link`{.interpreted-text               Add a link: Type the label and enter a URL or upload a file, then click
  role="guilabel"}                       `Apply`{.interpreted-text role="guilabel"}.

  `Button`{.interpreted-text             Add a button: Type the label, enter a URL or upload a file, select the button
  role="guilabel"}                       style, type, and size, then click `Apply`{.interpreted-text role="guilabel"}.

  `Article`{.interpreted-text            Insert a shortcut to a
  role="guilabel"}                       `Knowledge article </applications/productivity/knowledge>`{.interpreted-text
                                         role="doc"}.

  `Appointment`{.interpreted-text        Add a specific appointment: Select one or several appointment type(s) to
  role="guilabel"}                       assign to relevant users, then click `Insert a link`{.interpreted-text
                                         role="guilabel"}.

  `Table Of Content`{.interpreted-text   Highlight the structure (headings): Create a table of content based on the
  role="guilabel"}                       headings.

  `Video Link`{.interpreted-text         Insert a video: Copy-paste the video URL (Youtube, Vimeo, Dailymotion, and
  role="guilabel"}                       Youku only).
  ---------------------------------------------------------------------------------------------------------------------

::: tab
Widget
:::

  --------------------------------------------------------------------------------------
  Command                       Use
  ----------------------------- --------------------------------------------------------
  `Emoji`{.interpreted-text     Add an emoji: search for the desired emoji.
  role="guilabel"}              

  `3 Stars`{.interpreted-text   Insert a rating of up to 3 stars.
  role="guilabel"}              

  `5 Stars`{.interpreted-text   Insert a rating of up to 5 stars.
  role="guilabel"}              
  --------------------------------------------------------------------------------------

::: tab
AI Tools
:::

  --------------------------------------------------------------------------------------
  Command                       Use
  ----------------------------- --------------------------------------------------------
  `ChatGPT`{.interpreted-text   Generate content with AI.
  role="guilabel"}              

  --------------------------------------------------------------------------------------

::: tab
Basic Block
:::

  ----------------------------------------------------------------------------------------
  Command                         Use
  ------------------------------- --------------------------------------------------------
  `Signature`{.interpreted-text   Insert your signature.
  role="guilabel"}                

  ----------------------------------------------------------------------------------------
::::::::::::

### Insert media

To insert media, type [/Media]{.title-ref} or click the
`fa-file-image-o`{.interpreted-text role="icon"}
`(image)`{.interpreted-text role="guilabel"} icon in the tooltip, then
choose from the following tabs:

- `Images`{.interpreted-text role="guilabel"}

  > - Search the
  >   `Unsplash </applications/general/integrations/unsplash>`{.interpreted-text
  >   role="doc"} database to find a suitable image.
  > - `Add URL`{.interpreted-text role="guilabel"}: Copy-paste the
  >   **image address**.
  > - `Upload an image`{.interpreted-text role="guilabel"}: Upload an
  >   image into the library.

- `Documents`{.interpreted-text role="guilabel"}

  > - Search for a document in the database.
  > - `Add URL`{.interpreted-text role="guilabel"}: Copy-paste a valid
  >   URL.
  > - `Upload a document`{.interpreted-text role="guilabel"}: Upload a
  >   document from a local drive.

- `Icons`{.interpreted-text role="guilabel"}: Search an icon from the
  selection in the database.

#### Media editor toolbar

After `inserting an image <insert-media>`{.interpreted-text role="ref"},
click it to display the media editor toolbar, and apply any of the
following formatting options:

- `fa-search-plus`{.interpreted-text role="icon"}
  (`preview`{.interpreted-text role="guilabel"}): Preview the image,
  zoom in or out, print it or download it. Exit the preview by clicking
  the `fa-times`{.interpreted-text role="icon"}
  `(close)`{.interpreted-text role="guilabel"} icon in the top right
  corner.

- `Description`{.interpreted-text role="guilabel"}: Edit the image
  description and tooltip, then click `Save`{.interpreted-text
  role="guilabel"}.

- `fa-square`{.interpreted-text role="icon"}
  (`rounded`{.interpreted-text role="guilabel"}): Apply a rounded shape
  to the corners of the image.

- `fa-circle-o`{.interpreted-text role="icon"}
  (`circle`{.interpreted-text role="guilabel"}): Apply a circular shape
  to the image.

- `fa-sun-o`{.interpreted-text role="icon"} (`shadow`{.interpreted-text
  role="guilabel"}): Apply a shadow effect to the image.

- `fa-picture-o`{.interpreted-text role="icon"}
  (`image`{.interpreted-text role="guilabel"}): Apply a border to the
  image.

- `fa-plus-square-o`{.interpreted-text role="icon"}
  (`padding`{.interpreted-text role="guilabel"}): Add an image padding
  and choose from small, medium, large, or extra large sizes.

- `Default`{.interpreted-text role="guilabel"}: Restore the image to its
  default size.

- `100%`{.interpreted-text role="guilabel"}: Set the image to full size.

- `50%`{.interpreted-text role="guilabel"}: Set the image to half its
  size.

- `25%`{.interpreted-text role="guilabel"}: Set the image to a quarter
  of its size.

- `fa-object-ungroup`{.interpreted-text role="icon"}
  (`object`{.interpreted-text role="guilabel"}): Resize and rotate the
  image. Click the `fa-object-ungroup`{.interpreted-text role="icon"}
  `(object)`{.interpreted-text role="guilabel"} icon a second time to
  reset the transformation.

- `fa-crop`{.interpreted-text role="icon"} (`crop`{.interpreted-text
  role="guilabel"}): Crop the image manually or apply the following
  options:

  > - Choose from the [Flexible]{.title-ref}, [16:9]{.title-ref},
  >   [4:3]{.title-ref}, [1:1]{.title-ref}, or [2:3]{.title-ref} aspect
  >   ratios.
  > - Zoom in or out.
  > - Rotate left or right.
  > - Flip horizontally or vertically.
  > - Reset the image.

- `Replace`{.interpreted-text role="guilabel"}: Replace the image by
  searching in the `Unsplash
  </applications/general/integrations/unsplash>`{.interpreted-text
  role="doc"} database, adding a URL, or uploading a different one.

- `fa-link`{.interpreted-text role="icon"} (`link`{.interpreted-text
  role="guilabel"}): Insert a link to the image, type the URL, then
  click `Apply`{.interpreted-text role="guilabel"}. To remove the link,
  click the `fa-chain-broken`{.interpreted-text role="icon"}
  `(unlink)`{.interpreted-text role="guilabel"} icon.

- `fa-trash`{.interpreted-text role="icon"} (`trash`{.interpreted-text
  role="guilabel"}): Remove the image.




--- SOURCE: essentials/in_app_purchase.md ---

# In-app purchases (IAP)

In-app purchases (IAP) are optional services that enhance Odoo
databases. Each service provides its own specific features and
functionality. A full list of services is available on the [Odoo IAP
Catalog](https://iap.odoo.com/iap/all-in-app-services).

![The IAP catalog with various services available on IAP.Odoo.com.](in_app_purchase/iap.png)

::: example
The `SMS`{.interpreted-text role="guilabel"} service sends text messages
to contacts directly from the database, and the
`Documents Digitization`{.interpreted-text role="guilabel"} service
digitizes scanned or PDF vendor bills, expenses, and resumes with
optical character recognition (OCR) and artificial intelligence (AI).
:::

`IAP (In-app purchases)`{.interpreted-text role="abbr"} services do
**not** need to be configured or set up before use. Odoo users can click
on the service in the app to activate it. However, each service requires
its own prepaid credits, and when they run out, users **must**
`buy more <iap/buying_credits>`{.interpreted-text role="ref"} in order
to keep using it.

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
- `Signer identification with itsme®`{.interpreted-text
  role="guilabel"}: Ask document signatories in Odoo **Sign** to provide
  their identity using the *itsme* `fa-registered`{.interpreted-text
  role="icon"} identity platform, which is available in Belgium and the
  Netherlands.

For more information on every service currently available (offered from
developers other than Odoo), visit the [Odoo IAP
Catalog](https://iap.odoo.com/iap/all-in-app-services).

### Use IAP services

`IAP (In-app purchases)`{.interpreted-text role="abbr"} services are
automatically integrated with Odoo, and do **not** require users to
configure any settings. To use a service, interact with it wherever it
appears in the database.

::: example
The following flow focuses on the *SMS*
`IAP (In-app purchases)`{.interpreted-text role="abbr"} service being
used from a contact\'s record.

This can be done by clicking the `fa-mobile`{.interpreted-text
role="icon"} `SMS`{.interpreted-text role="guilabel"} icon within the
database.

![The SMS icon on a typical contact information form located within an Odoo database.](in_app_purchase/sms-icon.png)

One way to utilize the *SMS* `IAP (In-app purchases)`{.interpreted-text
role="abbr"} service with Odoo is showcased in the following steps:

First, navigate to the `Contacts application`{.interpreted-text
role="menuselection"}, and click on a contact with a mobile phone number
entered in either the `Phone`{.interpreted-text role="guilabel"} or
`Mobile`{.interpreted-text role="guilabel"} field of the contact form.

Next, find the `fa-mobile`{.interpreted-text role="icon"}
`SMS`{.interpreted-text role="guilabel"} icon that appears to the right
of the `Phone`{.interpreted-text role="guilabel"} or
`Mobile`{.interpreted-text role="guilabel"} fields. Click the
`fa-mobile`{.interpreted-text role="icon"} `SMS`{.interpreted-text
role="guilabel"} icon, and a `Send SMS Text Message`{.interpreted-text
role="guilabel"} pop-up window appears.

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
- `SMS Marketing <../marketing/sms_marketing>`{.interpreted-text
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

![Four different packs of credits for the SMS IAP service.](in_app_purchase/packs.png)

The number of credits consumed depends on the length of the SMS and the
country of destination.

For more information, refer to the `SMS Pricing and FAQ
<../marketing/sms_marketing/pricing_and_faq>`{.interpreted-text
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

Doing so reveals an `IAP Service`{.interpreted-text role="guilabel"}
page, listing the various `IAP (In-app purchases)`{.interpreted-text
role="abbr"} services in the database. From here, click an
`IAP (In-app purchases)`{.interpreted-text role="abbr"} service to open
its `Account Information`{.interpreted-text role="guilabel"} page, where
additional credits can be purchased.

#### Manually buy credits

To manually buy credits in Odoo, follow these steps:

First, go to the `Settings application`{.interpreted-text
role="menuselection"} and type [IAP]{.title-ref} in the search bar.
Alternatively users can scroll down to the `Contacts`{.interpreted-text
role="guilabel"} section. Under the `Contacts`{.interpreted-text
role="guilabel"} section, where it says `Odoo IAP`{.interpreted-text
role="guilabel"}, click `View My
Services`{.interpreted-text role="guilabel"}.

![The Settings app showing the Odoo IAP heading and View My Services button.](in_app_purchase/view-services.png)

Doing so reveals an `IAP Account`{.interpreted-text role="guilabel"}
page, listing the various `IAP (In-app purchases)`{.interpreted-text
role="abbr"} services in the database. From here, click an
`IAP (In-app purchases)`{.interpreted-text role="abbr"} service to open
its `Account Information`{.interpreted-text role="guilabel"} page, where
additional credits can be purchased.

On the `Account Information`{.interpreted-text role="guilabel"} page,
click the `Buy Credit`{.interpreted-text role="guilabel"} button. Doing
so loads a `Buy Credits for (IAP Account)`{.interpreted-text
role="guilabel"} page in a new tab. From here, click
`Buy`{.interpreted-text role="guilabel"} on the desired pack of credits.
Then, follow the prompts to enter payment details, and confirm the
order.

![The SMS service page on IAP.Odoo.com with four packs of credits available for purchase.](in_app_purchase/buy-pack.png)

Once the transaction is complete, the credits are available for use in
the database.

#### Low-credit notification {#in_app_purchase/low-credits}

It is possible to be notified when credits are low, in order to avoid
running out of credits, while using an
`IAP (In-app purchases)`{.interpreted-text role="abbr"} service. To do
that, follow this process:

Go to the `Settings application`{.interpreted-text
role="menuselection"}, and type [IAP]{.title-ref} in the search bar.
Under the `Contacts`{.interpreted-text role="guilabel"} section, where
it says `Odoo IAP`{.interpreted-text role="guilabel"}, click `View My
Services`{.interpreted-text role="guilabel"}.

The available `IAP (In-app purchases)`{.interpreted-text role="abbr"}
accounts appear in a list view on the `IAP Account`{.interpreted-text
role="guilabel"} page. From here, click on the desired
`IAP (In-app purchases)`{.interpreted-text role="abbr"} account to view
that service\'s `Account Information`{.interpreted-text role="guilabel"}
page.

Set the `Email Alert Threshold`{.interpreted-text role="guilabel"} to
the credit amount that should trigger a low-credit alert when the
balance falls below it. Next, select which user(s) should receive the
email notification using the `Email Alert Recipients`{.interpreted-text
role="guilabel"} field.




--- SOURCE: essentials/keyboard_shortcuts.md ---

# Keyboard shortcuts

Users in Odoo can utilize several keyboard shortcuts to navigate through
modules, execute actions, and manage data.

:::: tip
::: title
Tip
:::

Hold `Ctrl`{.interpreted-text role="kbd"} to view the keyboard shortcuts
assigned to each element on the interface.

![A selection of keyboard shortcuts in Odoo.](keyboard_shortcuts/menu-shortcuts.png){.align-center}
::::

:::: important
::: title
Important
:::

Some keyboard shortcuts may not be available on different versions of
Odoo or effective depending on browsers, extensions, or other individual
settings.
::::

## Keyboard shortcuts by operating system

Below is a list of some of the most commonly used keyboard shortcuts
within Odoo, listed by operating system.

  Description                  Windows / Linux                                                                                                   macOS
  ---------------------------- ----------------------------------------------------------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------
  Previous breadcrumb          `Alt`{.interpreted-text role="kbd"} + `B`{.interpreted-text role="kbd"}                                           `Ctrl`{.interpreted-text role="kbd"} + `B`{.interpreted-text role="kbd"}
  Create new record            `Alt`{.interpreted-text role="kbd"} + `C`{.interpreted-text role="kbd"}                                           `Ctrl`{.interpreted-text role="kbd"} + `C`{.interpreted-text role="kbd"}
  Odoo Home Page               `Alt`{.interpreted-text role="kbd"} + `H`{.interpreted-text role="kbd"}                                           `Ctrl`{.interpreted-text role="kbd"} + `H`{.interpreted-text role="kbd"}
  Discard changes              `Alt`{.interpreted-text role="kbd"} + `J`{.interpreted-text role="kbd"}                                           `Ctrl`{.interpreted-text role="kbd"} + `J`{.interpreted-text role="kbd"}
  Save changes                 `Alt`{.interpreted-text role="kbd"} + `S`{.interpreted-text role="kbd"}                                           `Ctrl`{.interpreted-text role="kbd"} + `S`{.interpreted-text role="kbd"}
  Next page                    `Alt`{.interpreted-text role="kbd"} + `N`{.interpreted-text role="kbd"}                                           `Ctrl`{.interpreted-text role="kbd"} + `N`{.interpreted-text role="kbd"}
  Previous page                `Alt`{.interpreted-text role="kbd"} + `P`{.interpreted-text role="kbd"}                                           `Ctrl`{.interpreted-text role="kbd"} + `P`{.interpreted-text role="kbd"}
  Search                       `Alt`{.interpreted-text role="kbd"} + `Q`{.interpreted-text role="kbd"}                                           `Ctrl`{.interpreted-text role="kbd"} + `Q`{.interpreted-text role="kbd"}
  Select menus                 `Alt`{.interpreted-text role="kbd"} + `1-9`{.interpreted-text role="kbd"}                                         `Ctrl`{.interpreted-text role="kbd"} + `1-9`{.interpreted-text role="kbd"}
  Create a new To-Do           `Alt`{.interpreted-text role="kbd"} + `Shift`{.interpreted-text role="kbd"} + `T`{.interpreted-text role="kbd"}   `Ctrl`{.interpreted-text role="kbd"} + `Shift`{.interpreted-text role="kbd"} + `T`{.interpreted-text role="kbd"}
  Search a Knowledge article   `Alt`{.interpreted-text role="kbd"} + `F`{.interpreted-text role="kbd"}                                           `Ctrl`{.interpreted-text role="kbd"} + `F`{.interpreted-text role="kbd"}
  Share a Knowledge article    `Alt`{.interpreted-text role="kbd"} + `Shift`{.interpreted-text role="kbd"} + `S`{.interpreted-text role="kbd"}   `Ctrl`{.interpreted-text role="kbd"} + `Shift`{.interpreted-text role="kbd"} + `S`{.interpreted-text role="kbd"}
  Open command palette         `Ctrl`{.interpreted-text role="kbd"} + `K`{.interpreted-text role="kbd"}                                          `Command`{.interpreted-text role="kbd"} + `K`{.interpreted-text role="kbd"}

:::: tip
::: title
Tip
:::

After opening the command palette, search using the following keyboard
shortcuts:

- `/`{.interpreted-text role="kbd"}: search for menus, applications, and
  modules.
- `@`{.interpreted-text role="kbd"}: search for users.
- `#`{.interpreted-text role="kbd"}: search for **Discuss** channels.
- `?`{.interpreted-text role="kbd"}: search for **Knowledge** articles.

Enter a name (or term) in the search bar, or use the arrow keys to
scroll through the available options. Then, click
`Ctrl`{.interpreted-text role="kbd"} + `Enter`{.interpreted-text
role="kbd"} to open the selected app, module, or menu in a new tab.

![The command palette in Odoo, with the menu search option selected.](keyboard_shortcuts/command-palete.png){.align-center}
::::




--- SOURCE: essentials/property_fields.md ---

# Property fields

Property fields, or properties, enable the customization of a `form
<studio/views/general/form>`{.interpreted-text role="ref"} view by
adding various `field types <property_field/add>`{.interpreted-text
role="ref"}. These fields allow information storage and management by
adding values.

:::: admonition
Property vs. regular fields

Properties act as pseudo-fields; they behave like regular fields but are
not saved as columns in the database. They also rely on a defined
`parent record <property-fields/properties-apps>`{.interpreted-text
role="ref"}.

::: example
Adding a property to a *task* inserts a field in *all tasks* within the
*same project* while other projects\' tasks remain unaffected.
:::
::::

## Add property fields {#property_field/add}

To add a first property field to a
`form view <studio/views/general/form>`{.interpreted-text role="ref"},
click the `fa-cog`{.interpreted-text role="icon"}
(`Actions`{.interpreted-text role="guilabel"}) icon, then select
`fa-cogs`{.interpreted-text role="icon"}
`Add Properties`{.interpreted-text role="guilabel"}.

In the popover, enter the property\'s `Label`{.interpreted-text
role="guilabel"}, choose a `Field Type`{.interpreted-text
role="guilabel"}, and then configure the field based on the selected
type:

+---------------------------------------------------------------------------+---------------------------------------------------------------------+----------------------------------------------------+
| Field type                                                                | Use                                                                 | Options                                            |
+===========================================================================+=====================================================================+====================================================+
| `Text <studio/fields/simple-fields-text>`{.interpreted-text role="ref"}   | Short text on a single line                                         | Enter a `Default Value`{.interpreted-text          |
|                                                                           |                                                                     | role="guilabel"} if desired.                       |
+---------------------------------------------------------------------------+---------------------------------------------------------------------+----------------------------------------------------+
| `Checkbox <studio/fields/simple-fields-checkbox>`{.interpreted-text       | Checked or unchecked status                                         | Choose the `Default State`{.interpreted-text       |
| role="ref"}                                                               |                                                                     | role="guilabel"}.                                  |
+---------------------------------------------------------------------------+---------------------------------------------------------------------+----------------------------------------------------+
| `Integer <studio/fields/simple-fields-integer>`{.interpreted-text         | Integer numbers                                                     | Enter a `Default Value`{.interpreted-text          |
| role="ref"}                                                               | (`positive, negative, or zero, without a decimal`{.interpreted-text | role="guilabel"} if desired.                       |
|                                                                           | role="dfn"})                                                        |                                                    |
+---------------------------------------------------------------------------+---------------------------------------------------------------------+----------------------------------------------------+
| `Decimal <studio/fields/simple-fields-decimal>`{.interpreted-text         | Decimal numbers                                                     | Enter a `Default Value`{.interpreted-text          |
| role="ref"}                                                               | (`positive, negative, or zero, with a decimal`{.interpreted-text    | role="guilabel"} if desired.                       |
|                                                                           | role="dfn"})                                                        |                                                    |
+---------------------------------------------------------------------------+---------------------------------------------------------------------+----------------------------------------------------+
| `Date <studio/fields/simple-fields-date>`{.interpreted-text role="ref"}   | Selection of a date on a calendar                                   | Select a `Default Value`{.interpreted-text         |
|                                                                           |                                                                     | role="guilabel"} if desired.                       |
+---------------------------------------------------------------------------+---------------------------------------------------------------------+----------------------------------------------------+
| `Date & Time <studio/fields/simple-fields-date-time>`{.interpreted-text   | Selection of a date on a calendar and a time on a clock             | Select a `Default Value`{.interpreted-text         |
| role="ref"}                                                               |                                                                     | role="guilabel"} if desired.                       |
+---------------------------------------------------------------------------+---------------------------------------------------------------------+----------------------------------------------------+
| `Selection <studio/fields/simple-fields-selection>`{.interpreted-text     | Selection of a value from a group of predefined values              | Add a selectable option by clicking                |
| role="ref"}                                                               |                                                                     | `fa-plus`{.interpreted-text role="icon"}           |
|                                                                           |                                                                     | `Add a Value`{.interpreted-text role="guilabel"}   |
|                                                                           |                                                                     | and entering the `Option Name`{.interpreted-text   |
|                                                                           |                                                                     | role="guilabel"}.                                  |
|                                                                           |                                                                     |                                                    |
|                                                                           |                                                                     | If desired, set an option as default by clicking   |
|                                                                           |                                                                     | the `fa-star-o`{.interpreted-text role="icon"}     |
|                                                                           |                                                                     | (`Select Default`{.interpreted-text                |
|                                                                           |                                                                     | role="guilabel"}) button.                          |
|                                                                           |                                                                     |                                                    |
|                                                                           |                                                                     | Reorder the options by dragging and dropping them  |
|                                                                           |                                                                     | using the `oi-draggable`{.interpreted-text         |
|                                                                           |                                                                     | role="icon"} (`drag handle`{.interpreted-text      |
|                                                                           |                                                                     | role="guilabel"}) button.                          |
|                                                                           |                                                                     |                                                    |
|                                                                           |                                                                     | Delete an option by clicking the                   |
|                                                                           |                                                                     | `fa-trash-o`{.interpreted-text role="icon"}        |
|                                                                           |                                                                     | (`Remove Property`{.interpreted-text               |
|                                                                           |                                                                     | role="guilabel"}) button.                          |
+---------------------------------------------------------------------------+---------------------------------------------------------------------+----------------------------------------------------+
| `Tags <studio/fields/relational-fields-tags>`{.interpreted-text           | Selection of multiple values in the form of tags                    | Enter a `Tag`{.interpreted-text role="guilabel"}   |
| role="ref"}                                                               |                                                                     | name and press [Enter]{.title-ref} to save it.     |
|                                                                           |                                                                     |                                                    |
|                                                                           |                                                                     | Change a tag\'s color by clicking it and selecting |
|                                                                           |                                                                     | another one.                                       |
+---------------------------------------------------------------------------+---------------------------------------------------------------------+----------------------------------------------------+
| `Many2one <studio/fields/relational-fields-many2one>`{.interpreted-text   | Selection of a single record from another model                     | Enter the `Model`{.interpreted-text                |
| role="ref"}                                                               |                                                                     | role="guilabel"} name. Configure its               |
|                                                                           |                                                                     | `Domain <search/custom-filters>`{.interpreted-text |
|                                                                           |                                                                     | role="ref"} to filter records if needed.           |
|                                                                           |                                                                     |                                                    |
|                                                                           |                                                                     | Select a `Default Value`{.interpreted-text         |
|                                                                           |                                                                     | role="guilabel"} if desired.                       |
+---------------------------------------------------------------------------+---------------------------------------------------------------------+----------------------------------------------------+
| `Many2many <studio/fields/relational-fields-many2many>`{.interpreted-text | Selection of multiple records from another model                    | Enter the `Model`{.interpreted-text                |
| role="ref"}                                                               |                                                                     | role="guilabel"} name. Configure its               |
|                                                                           |                                                                     | `Domain <search/custom-filters>`{.interpreted-text |
|                                                                           |                                                                     | role="ref"} to filter records if needed.           |
|                                                                           |                                                                     |                                                    |
|                                                                           |                                                                     | Select a `Default Value`{.interpreted-text         |
|                                                                           |                                                                     | role="guilabel"} if desired.                       |
+---------------------------------------------------------------------------+---------------------------------------------------------------------+----------------------------------------------------+
| `Separator`{.interpreted-text role="guilabel"}                            | Group several properties under a foldable label                     |                                                    |
+---------------------------------------------------------------------------+---------------------------------------------------------------------+----------------------------------------------------+

Click outside the popover to save the added property.

:::: note
::: title
Note
:::

\- Select whether to display the property in the Kanban, List, or
Calendar views cards for every field with the
`Display in Cards`{.interpreted-text role="guilabel"} option. - To add
another property, click `fa-plus`{.interpreted-text role="icon"}
`Add a Property`{.interpreted-text role="guilabel"} at the bottom of the
form while in `fa-cogs`{.interpreted-text role="icon"}
`Add Properties`{.interpreted-text role="guilabel"} mode.
::::

:::: tip
::: title
Tip
:::

To edit an existing property, hover the cursor over the property:

- Click the `fa-pencil`{.interpreted-text role="icon"}
  (`pencil`{.interpreted-text role="guilabel"}) button to open a popover
  and modify the property. In the popover, click the
  `fa-chevron-up`{.interpreted-text role="icon"} (up) or
  `fa-chevron-down`{.interpreted-text role="icon"} (down) chevron to
  move a property upwards or downwards.
- Click `fa-trash`{.interpreted-text role="icon"}
  `Delete`{.interpreted-text role="guilabel"}, then
  `Delete`{.interpreted-text role="guilabel"} to delete it. Deleting a
  property is permanent.
- Use the `oi-draggable`{.interpreted-text role="icon"}
  (`drag handle`{.interpreted-text role="guilabel"}) icon to drag and
  drop the property to reorder or regroup.
::::

## Properties across apps {#property-fields/properties-apps}

Property fields can be defined in the
`form view <studio/views/general/form>`{.interpreted-text role="ref"} of
multiple models. Once set, the property is shared by all records that
are linked to the same *parent*.

> +-----------------------------------+--------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------+
> | App                               | Model                                                                                                  | Parent                                                                                      |
> +===================================+========================================================================================================+=============================================================================================+
> | `Accounting`{.interpreted-text    | `Asset/Revenue Recognition <create-assets-entry>`{.interpreted-text role="ref"}                        | `Asset model <assets/asset-model>`{.interpreted-text role="ref"}                            |
> | role="guilabel"}                  |                                                                                                        |                                                                                             |
> |                                   | `Loan </applications/finance/accounting/bank/loans>`{.interpreted-text role="doc"}                     | `Journal <cheat_sheet/journals>`{.interpreted-text role="ref"}                              |
> +-----------------------------------+--------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------+
> | `Appraisals`{.interpreted-text    | `Employee Appraisal <appraisals/manual>`{.interpreted-text role="ref"}                                 | `Department <employee/create-departments>`{.interpreted-text role="ref"}                    |
> | role="guilabel"}                  |                                                                                                        |                                                                                             |
> +-----------------------------------+--------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------+
> | `CRM`{.interpreted-text           | `Lead/Opportunity </applications/sales/crm/acquire_leads/email_manual>`{.interpreted-text role="doc"}  | `Sales team <crm/sales-team-dashboard>`{.interpreted-text role="ref"}                       |
> | role="guilabel"}                  |                                                                                                        |                                                                                             |
> +-----------------------------------+--------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------+
> | `Employees`{.interpreted-text     | `Employee <employees/general-info>`{.interpreted-text role="ref"}                                      | `Company <employees/general-info>`{.interpreted-text role="ref"}                            |
> | role="guilabel"}                  |                                                                                                        |                                                                                             |
> +-----------------------------------+--------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------+
> | `Events`{.interpreted-text        | `Event Registration </applications/marketing/events/registration_desk>`{.interpreted-text role="doc"}  | `Event <events/new-event>`{.interpreted-text role="ref"}                                    |
> | role="guilabel"}                  |                                                                                                        |                                                                                             |
> +-----------------------------------+--------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------+
> | `Fleet`{.interpreted-text         | `Vehicle </applications/hr/fleet/new_vehicle>`{.interpreted-text role="doc"}                           | `Vehicle model <fleet/add-model>`{.interpreted-text role="ref"}                             |
> | role="guilabel"}                  |                                                                                                        |                                                                                             |
> +-----------------------------------+--------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------+
> | `Frontdesk`{.interpreted-text     | `Frontdesk Visitors <frontdesk/list>`{.interpreted-text role="ref"}                                    | `Station <frontdesk/stations>`{.interpreted-text role="ref"}                                |
> | role="guilabel"}                  |                                                                                                        |                                                                                             |
> +-----------------------------------+--------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------+
> | `Helpdesk`{.interpreted-text      | `Ticket <helpdesk/follow>`{.interpreted-text role="ref"}                                               | `Helpdesk team <helpdesk/create-team>`{.interpreted-text role="ref"}                        |
> | role="guilabel"}                  |                                                                                                        |                                                                                             |
> +-----------------------------------+--------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------+
> | `Inventory`{.interpreted-text     | `Lot/Serial <inventory/product_management/edit-lot>`{.interpreted-text role="ref"}                     | `Product variant <product-variants/add-product-variants>`{.interpreted-text role="ref"}     |
> | role="guilabel"}                  |                                                                                                        |                                                                                             |
> |                                   | `Transfer                                                                                              | `Operation type <inventory/product_management/operation-type-setting>`{.interpreted-text    |
> |                                   | </applications/inventory_and_mrp/inventory/shipping_receiving/picking_methods/wave>`{.interpreted-text | role="ref"}                                                                                 |
> |                                   | role="doc"}                                                                                            |                                                                                             |
> |                                   |                                                                                                        | `Operation type <inventory/product_management/operation-type-setting>`{.interpreted-text    |
> |                                   | `Batch Transfer <inventory/misc/batch_picking>`{.interpreted-text role="ref"}                          | role="ref"}                                                                                 |
> +-----------------------------------+--------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------+
> | `Knowledge`{.interpreted-text     | `Knowledge Article <knowledge/articles_editing/create-article>`{.interpreted-text role="ref"}          | `Parent article <knowledge/articles_editing/create-article>`{.interpreted-text role="ref"}  |
> | role="guilabel"}                  |                                                                                                        |                                                                                             |
> +-----------------------------------+--------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------+
> | `Maintenance`{.interpreted-text   | `Maintenance Equipment <maintenance/equipment_management/add_new_equipment>`{.interpreted-text         | `Equipment category <maintenance/equipment_management/add_new_equipment>`{.interpreted-text |
> | role="guilabel"}                  | role="ref"}                                                                                            | role="ref"}                                                                                 |
> +-----------------------------------+--------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------+
> | `Meeting Rooms`{.interpreted-text | Room                                                                                                   | Office                                                                                      |
> | role="guilabel"}                  |                                                                                                        |                                                                                             |
> +-----------------------------------+--------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------+
> | `Planning`{.interpreted-text      | `Shift <planning/roles>`{.interpreted-text role="ref"}                                                 | `Role <planning/roles>`{.interpreted-text role="ref"}                                       |
> | role="guilabel"}                  |                                                                                                        |                                                                                             |
> +-----------------------------------+--------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------+
> | `Project`{.interpreted-text       | `Task <task_creation/task-configuration>`{.interpreted-text role="ref"}                                | `Project <project_management/configuration>`{.interpreted-text role="ref"}                  |
> | role="guilabel"} /                |                                                                                                        |                                                                                             |
> | `Field Service`{.interpreted-text |                                                                                                        |                                                                                             |
> | role="guilabel"}                  |                                                                                                        |                                                                                             |
> +-----------------------------------+--------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------+
> | `Recruitment`{.interpreted-text   | `Applicant <recruitment/quick-add-applicant>`{.interpreted-text role="ref"}                            | `Job position <job-position/create-job-position>`{.interpreted-text role="ref"}             |
> | role="guilabel"}                  |                                                                                                        |                                                                                             |
> |                                   | `Job Position <recruitment/new_job_position/edit>`{.interpreted-text role="ref"}                       | `Company <general/companies/company>`{.interpreted-text role="ref"}                         |
> |                                   |                                                                                                        |                                                                                             |
> |                                   | Candidate                                                                                              | `Company <general/companies/company>`{.interpreted-text role="ref"}                         |
> +-----------------------------------+--------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------+
> | `Repairs`{.interpreted-text       | `Repair order <repairs/repair_orders/repair>`{.interpreted-text role="ref"}                            | `Company <general/companies/company>`{.interpreted-text role="ref"}                         |
> | role="guilabel"}                  |                                                                                                        |                                                                                             |
> +-----------------------------------+--------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------+
> | `Sales`{.interpreted-text         | Product                                                                                                | Category                                                                                    |
> | role="guilabel"} / etc.           |                                                                                                        |                                                                                             |
> +-----------------------------------+--------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------+




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
(`integer <studio/fields/simple-fields-integer>`{.interpreted-text
role="ref"},
`decimal <studio/fields/simple-fields-decimal>`{.interpreted-text
role="ref"}, `monetary
<studio/fields/simple-fields-monetary>`{.interpreted-text role="ref"})
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

# Search, filter, and group records

Odoo allows for the searching, filtering, and grouping of records in a
view to display only the most relevant records. The search bar is
located at the top of the view: start typing to `search for
values <search/values>`{.interpreted-text role="ref"}, or click the
`fa-caret-down`{.interpreted-text role="icon"}
`(dropdown)`{.interpreted-text role="guilabel"} icon to access the
`Filter <search/filters>`{.interpreted-text role="ref"},
`Group By <search/group>`{.interpreted-text role="ref"}, and `Favorites
<search/favorites>`{.interpreted-text role="ref"} drop-down menus.

## Search for values {#search/values}

Use the search field to look for specific values, and add them as a
filter. Type the value to search for (like a salesperson\'s name or a
product), and select the desired option from the drop-down menu to apply
the search filter.

::: example
Instead of adding a
`custom filter <search/custom-filters>`{.interpreted-text role="ref"} to
select records where *Mitchell Admin* is the salesperson on the *Sales
Analysis* report (`Sales app -->
Reporting --> Sales`{.interpreted-text role="menuselection"}), search
for [Mitch]{.title-ref}, and click the
`fa-caret-right`{.interpreted-text role="icon"}
`(submenu)`{.interpreted-text role="guilabel"} icon next to
`Search Salesperson for: Mitch`{.interpreted-text role="guilabel"}, and
select `Mitchell Admin`{.interpreted-text role="guilabel"}.

![Searching for a specific value on the Sales Analysis report](search/search-values.png)
:::

:::: note
::: title
Note
:::

Using the search field is equivalent to using the *contains* operator
when adding a `custom
filter <search/custom-filters>`{.interpreted-text role="ref"}. If a
partial value is entered, and the desired field is directly selected
(without selecting the `fa-caret-right`{.interpreted-text role="icon"}
`(submenu)`{.interpreted-text role="guilabel"}, *all* records containing
the typed characters for the selected field are included.
::::

## Filters {#search/filters}

Filters are used to select records that meet specific criteria. The
default selection of records is specific to each view, but can be
modified by selecting one (or several) `preconfigured filters
<search/preconfigured-filters>`{.interpreted-text role="ref"}, or by
adding a `custom filter <search/custom-filters>`{.interpreted-text
role="ref"}.

### Preconfigured filters {#search/preconfigured-filters}

Modify the default selection of records by clicking the
`fa-caret-down`{.interpreted-text role="icon"}
`(dropdown)`{.interpreted-text role="guilabel"} from the search bar, and
selecting one (or several) *preconfigured filters* from the
`Filters`{.interpreted-text role="guilabel"} drop-down menu.

::: example
On the *Sales Analysis* report
(`Sales app --> Reporting --> Sales`{.interpreted-text
role="menuselection"}), only records that are at the *sales order*
stage, with an *order date* within the last 365 days, are selected by
default.

To also include records at the *quotation* stage, select
`Quotations`{.interpreted-text role="guilabel"} from the
`Filters`{.interpreted-text role="guilabel"}.

Furthermore, to *only* include sales order and quotation records from a
specific year, like 2024, for example, first remove the existing [Order
Date: Last 365 Days]{.title-ref} filter by clicking
`fa-times`{.interpreted-text role="icon"} `(cancel)`{.interpreted-text
role="guilabel"}, then select the
`Order Date --> 2024`{.interpreted-text role="menuselection"} filter.

![Using preconfigured filters on the Sales Analysis report](search/preconfigured-filters.png)
:::

:::: note
::: title
Note
:::

The preconfigured `Filters`{.interpreted-text role="guilabel"} are
grouped, and each group is separated by a horizontal line. Selecting
preconfigured filters from the same group allows records to match *any*
of the applied conditions. However, selecting filters from different
groups requires records to match *all* of the applied conditions.
::::

### Custom filters {#search/custom-filters}

If the
`preconfigured filters <search/preconfigured-filters>`{.interpreted-text
role="ref"} are not specific enough, add a custom filter. To do so,
click the `fa-caret-down`{.interpreted-text role="icon"}
`(dropdown)`{.interpreted-text role="guilabel"} icon in the search bar,
then select `Filters --> Add Custom Filter`{.interpreted-text
role="menuselection"}.

The `Add Custom Filter`{.interpreted-text role="guilabel"} pop-up window
displays the matching option, filter rule, and a toggle to
`Include archived`{.interpreted-text role="guilabel"} records.

![The Add Custom Filter pop-up window.](search/custom-filter.png)

The default matching configuration is to
`Match any of the following rules`{.interpreted-text role="guilabel"},
indicating that each filter rule is applied independently. To change the
matching configuration to
`Match all of the following rules`{.interpreted-text role="guilabel"},
at least two filter rules must be added to the custom filter.

- `Match all`{.interpreted-text role="guilabel"}
  `fa-caret-down`{.interpreted-text role="icon"}
  `of the following rules`{.interpreted-text role="guilabel"}: **All**
  of the filter rules must be met. Think of this as an *AND*
  ([&]{.title-ref}) operation.
- `Match any`{.interpreted-text role="guilabel"}
  `fa-caret-down`{.interpreted-text role="icon"}
  `of the following rules`{.interpreted-text role="guilabel"}: **Any**
  of the filter rules can be met. Think of this as an *OR*
  ([\|]{.title-ref}) operation.

By default, a single filter rule is added to the custom filter. The
following describes the structure of a filter rule:

1.  The first inline field is the *field name* to filter by. Some fields
    have refined parameters that are nested within another field. These
    fields have a `fa-caret-right`{.interpreted-text role="icon"}
    `(submenu)`{.interpreted-text role="guilabel"} icon beside them,
    which can be selected to reveal the nested fields.
2.  The second inline field is the conditional *operator* used to
    compare the field name to the value. The
    `available conditional operators <reference/orm/domains>`{.interpreted-text
    role="ref"} are specific to the field\'s data type.
3.  The third inline field is the variable *value* of the field name.
    The value input may appear as a drop-down menu, a text input, a
    number input, a date/time input, a boolean selector, or it may be
    blank, depending on the operator used and the field\'s data type.

Three inline buttons are also available to the right of the rule\'s
filter criteria:

1.  `fa-plus`{.interpreted-text role="icon"} `(plus)`{.interpreted-text
    role="guilabel"}: Adds a new rule below the existing rule.

2.  `fa-sitemap`{.interpreted-text role="icon"}
    `(node)`{.interpreted-text role="guilabel"}: Adds a new group of
    rules below the existing rule, with the `any`{.interpreted-text
    role="guilabel"} and `all`{.interpreted-text role="guilabel"}
    matching options available to define how each rule within this
    branch is applied to the filter. If the matching option is set to
    the same as the parent group, the fields are moved to join the
    parent group.

    ::: example
    If the matching option is set to `Match all`{.interpreted-text
    role="guilabel"} `fa-caret-down`{.interpreted-text role="icon"}
    `of the
    following rules`{.interpreted-text role="guilabel"}, and a new
    branch is added with its matching option changed from
    `any`{.interpreted-text role="guilabel"}
    `fa-caret-down`{.interpreted-text role="icon"}
    `of`{.interpreted-text role="guilabel"} to `all`{.interpreted-text
    role="guilabel"} `fa-caret-down`{.interpreted-text role="icon"}
    `of`{.interpreted-text role="guilabel"}, the newly-added branch
    disappears, and its group of rules are moved to the parent group.
    :::

3.  `fa-trash`{.interpreted-text role="icon"}
    `(delete)`{.interpreted-text role="guilabel"}: Deletes the node. If
    a branch node is deleted, all children of that node are deleted, as
    well.

A new filter rule can be added to the custom filter by clicking the
`New Rule`{.interpreted-text role="guilabel"} button.

Once the filter criteria are defined, click `Add`{.interpreted-text
role="guilabel"} to add the custom filter to the view.

::: example
To target all leads and opportunities from the `CRM`{.interpreted-text
role="menuselection"} app that are in the *Won* stage, and have an
expected revenue greater than \$1,000, the following should be entered:

`Match all`{.interpreted-text role="guilabel"}
`fa-caret-down`{.interpreted-text role="icon"}
`of the following rules:`{.interpreted-text role="guilabel"}

1.  `Stage`{.interpreted-text role="guilabel"} `is in`{.interpreted-text
    role="guilabel"} `Won`{.interpreted-text role="guilabel"}
2.  `Expected Revenue`{.interpreted-text role="guilabel"}
    `>`{.interpreted-text role="guilabel"} [1,000]{.title-ref}
3.  `any`{.interpreted-text role="guilabel"}
    `fa-caret-down`{.interpreted-text role="icon"}
    `of:`{.interpreted-text role="guilabel"}
    - `Type`{.interpreted-text role="guilabel"} `=`{.interpreted-text
      role="guilabel"} `Lead`{.interpreted-text role="guilabel"}
    - `Type`{.interpreted-text role="guilabel"} `=`{.interpreted-text
      role="guilabel"} `Opportunity`{.interpreted-text role="guilabel"}

![Adding a custom filter to filter specific records in CRM.](search/custom-filter-example.png)
:::

:::: tip
::: title
Tip
:::

Activate `developer-mode`{.interpreted-text role="ref"} to reveal each
field\'s technical name and data type, as well as the
`# Code editor`{.interpreted-text role="guilabel"} text area below the
filter rules, to view and edit the domain manually.
::::

## Group records {#search/group}

The display of records in a view can be clustered together, according to
one of the *preconfigured groups*. To do so, click the
`fa-caret-down`{.interpreted-text role="icon"}
`(dropdown)`{.interpreted-text role="guilabel"} icon in the search bar,
then select one of the `Group By`{.interpreted-text role="guilabel"}
options from the drop-down menu.

::: example
To group the records by salesperson on the *Sales Analysis* report
(`Sales app -->
Reporting --> Sales`{.interpreted-text role="menuselection"}), click the
`Salesperson`{.interpreted-text role="guilabel"} option from the
`Group By`{.interpreted-text role="guilabel"} drop-down menu. The view
changes to group the records by salesperson, without filtering out any
records.

![Grouping records on the Sales Analysis report](search/group.png)
:::

It is possible to *customize groups* by using a field present on the
model. To do so, click `Add Custom Group`{.interpreted-text
role="menuselection"}, and select a field from the drop-down menu.

:::: note
::: title
Note
:::

Several groups can be used at the same time. The first group that is
selected is the main cluster, the next one that is added further divides
the main group\'s categories, and so on. Furthermore, filters and groups
can be used together to refine the view even more.
::::

## Comparison {#search/comparison}

Certain reporting dashboards include a `Comparison`{.interpreted-text
role="guilabel"} section in the drop-down menus of their search bars.
This includes the `Overall Equipment Effectiveness
<../inventory_and_mrp/manufacturing/reporting/oee>`{.interpreted-text
role="doc"} report for the **Manufacturing** app and the
`Purchase <../inventory_and_mrp/purchase/advanced/analyze>`{.interpreted-text
role="doc"} report for the **Purchase** app, among others.

The options in the `fa-adjust`{.interpreted-text role="icon"}
`Comparison`{.interpreted-text role="guilabel"} section are used to
compare data from two different time periods. Pick between the two
comparison options: `(Time Filter):
Previous Period`{.interpreted-text role="guilabel"} and
`(Time Filter): Previous Year`{.interpreted-text role="guilabel"}.

:::: important
::: title
Important
:::

For some reports, the `Comparison`{.interpreted-text role="guilabel"}
section **only** appears in the search bar drop-down menu if one (or
more) time periods have been selected in the `Filters`{.interpreted-text
role="guilabel"} column. This is because there is nothing to compare if
no time period is specified.

Additionally, some reports only allow use of the
`Comparison`{.interpreted-text role="guilabel"} feature when the
`fa-pie-chart`{.interpreted-text role="icon"}
`(Pie Chart)`{.interpreted-text role="guilabel"} graph type or the
`oi-view-pivot`{.interpreted-text role="icon"}
`(Pivot)`{.interpreted-text role="guilabel"} view, is selected. A
`Comparison`{.interpreted-text role="guilabel"} option can be selected
even if another view is enabled, but doing so does **not** change the
way data is displayed on the report.
::::

![The search bar for the production analysis report.](search/comparison-section.png)

To view data using one of the two comparisons, begin by selecting a time
period in the `Filters`{.interpreted-text role="guilabel"} column of the
search bar drop-down menu. Then, select either `(Time
Filter): Previous Period`{.interpreted-text role="guilabel"} or
`(Time Filter): Previous Year`{.interpreted-text role="guilabel"} in the
`Comparison`{.interpreted-text role="guilabel"} section.

With one of the `Comparison`{.interpreted-text role="guilabel"} options
enabled, the report compares the data for the selected period, with the
data for the same unit of time (month, quarter, year), one period or
year prior. The way the data is displayed depends on the selected view:

- The `fa-bar-chart`{.interpreted-text role="icon"}
  `(Bar Chart)`{.interpreted-text role="guilabel"} shows two bars,
  side-by-side, for each unit of time for the selected time period. The
  left bar represents the selected time period, while the right bar
  represents the previous time period.
- The `fa-line-chart`{.interpreted-text role="icon"}
  `(Line Chart)`{.interpreted-text role="guilabel"} is displayed with
  two lines, one representing the selected time period, and the other
  representing the previous time period.
- The `fa-pie-chart`{.interpreted-text role="icon"}
  `(Pie Chart)`{.interpreted-text role="guilabel"} appears as a large
  circle with a smaller circle inside. The larger circle represents the
  selected time period, while the smaller circle represents the previous
  time period.
- The `oi-view-pivot`{.interpreted-text role="icon"}
  `(Pivot)`{.interpreted-text role="guilabel"} is displayed with each
  column split into two smaller columns. The right column represents the
  selected time period, while the left column represents the previous
  time period.

::: example
In the `Production Analysis`{.interpreted-text role="guilabel"} report
of the `Manufacturing`{.interpreted-text role="menuselection"} app, data
for the second quarter of 2024 is compared to data for the second
quarter of 2023. `Q2`{.interpreted-text role="guilabel"} is selected in
the `End Date`{.interpreted-text role="guilabel"} filter section of the
search bar drop-down menu. In the `Comparison`{.interpreted-text
role="guilabel"} section, `End Date: Previous Year`{.interpreted-text
role="guilabel"} is selected.

The current year is 2024, so the larger circle shows data for the second
quarter (Q2) of 2024. The smaller circle shows data for the second
quarter (Q2) of 2023, which is the same time period, but one *year*
prior.

If `End Date: Previous Period`{.interpreted-text role="guilabel"} is
selected instead, the smaller circle shows data for the first quarter
(Q1) of 2024, which is the same time period, but one *period* prior.

![The comparison view of the Production Analysis report.](search/comparison.png)
:::

## Favorites {#search/favorites}

Favorites are a way to save a specific search for future use, or as the
new default filter for the view.

To save the current view as a favorite, click the
`fa-caret-down`{.interpreted-text role="icon"}
`(dropdown)`{.interpreted-text role="guilabel"} icon in the search bar,
then select the `Save current search`{.interpreted-text role="guilabel"}
drop-down menu to display the following options:

- `Filter name`{.interpreted-text role="guilabel"}: Name of the
  favorited search.
- `Default filter`{.interpreted-text role="guilabel"}: Sets the
  favorited search as the default filter for the view.
- `Shared`{.interpreted-text role="guilabel"}: Makes the favorited
  search available to all users. Otherwise, by default, the favorited
  search is only available to the user who created it.

Once the options are set, click `Save`{.interpreted-text
role="guilabel"} to save the favorited search.

![Saving a favorite search on the Sales Analysis report.](search/favorites.png)

Favorited searches are accessed by clicking the
`fa-caret-down`{.interpreted-text role="icon"}
`(dropdown)`{.interpreted-text role="guilabel"} icon in the search bar,
and are shown under `fa-star`{.interpreted-text role="icon"}
`Favorites`{.interpreted-text role="guilabel"}. Searches that are only
visible to the current user, i.e., that are not shared, are shown first,
while any shared favorites, whether created by the current user or
another user, are shown in a second section.

To remove a favorited search, click the `fa-trash`{.interpreted-text
role="icon"} `(delete)`{.interpreted-text role="guilabel"} icon next to
the saved search.

:::: tip
::: title
Tip
:::

To view *all* favorited searches,
`activate developer mode<developer-mode>`{.interpreted-text role="ref"},
then navigate to
`Settings app --> Technical --> User-defined Filters`{.interpreted-text
role="menuselection"}. From here, all favorited searches can be viewed,
edited, archived, or deleted.
::::




--- SOURCE: essentials/stages.md ---

# Stages

*Stages* are used to organize an app\'s pipeline and track the progress
of configured items, from now on are referred to as cards.

In apps these cards represent specific items, for example, in the
**Helpdesk** app, stages track tickets. Stages are customizable, and can
be renamed to fit the needs of each team.

## Create or modify stages

:::: important
::: title
Important
:::

`Developer mode <developer-mode>`{.interpreted-text role="ref"} **must**
be activated to access the stages menu. To activate developer mode, go
to `Settings app --> General Settings --> Developer
Tools`{.interpreted-text role="menuselection"}, and click
`Activate the developer mode`{.interpreted-text role="guilabel"}.
::::

To view or modify stages, go to the desired app and go to
`Configuration --> Stages`{.interpreted-text role="menuselection"}.

The default list view on the `Stages`{.interpreted-text role="guilabel"}
page displays the stages currently available in the app. They are listed
in the order they appear in the pipeline.

To change the order of the stages, click the
`oi-draggable`{.interpreted-text role="icon"}
`(draggable)`{.interpreted-text role="guilabel"} icon, to the left of
the stage name, and drag it to the desired place on the list.

![View of the stage list page emphasizing the buttons used to change the order the stages
appear in the list.](stages/stages-list-buttons.png)

:::: tip
::: title
Tip
:::

Change the stage order on the Kanban view of a team\'s pipeline by
dragging and dropping individual columns.
::::

To create a new stage, click the `New`{.interpreted-text
role="guilabel"} button at the top-left of the stage list. Doing so
reveals a blank stage form.

Choose a `Name`{.interpreted-text role="guilabel"} for the new stage.

![View of a stage\'s settings page in Odoo Helpdesk.](stages/new-stage-details.png)

## Progress bar

The progress bar is visible above each stage, displaying the percentage
breakdown of every status type for all the cards within that stage. Each
status type has an assigned color that appears within the bar.

The specific definition of these statuses changes depending on the app.
For example, in the **Helpdesk** app, the progress bar for a stage
consists of the `In progress`{.interpreted-text role="guilabel"},
`Ready`{.interpreted-text role="guilabel"}, and
`Blocked`{.interpreted-text role="guilabel"} statuses by default.

To see a detailed count, hover over a representative color, which
activates a notification detailing the number of cards in the stage of
that specific status.

Clicking a status color filters the stage to show only cards with that
status. The card count for the selected status appears next to the
progress bar.

![View of a stage\'s progress highlighting the activities that are due today.](stages/stage-progress-bar-highlight.png)

## Add email and SMS templates to stages

When an `Email Template`{.interpreted-text role="guilabel"} is added to
a stage, a preconfigured email is automatically sent to the customer
when a ticket reaches that specific stage in the pipeline. Likewise,
adding an `SMS Template`{.interpreted-text role="guilabel"} triggers a
preconfigured SMS text message to send to the customer.

:::: important
::: title
Important
:::

SMS text messaging is an
`In-App Purchase (IAP) </applications/essentials/in_app_purchase/>`{.interpreted-text
role="doc"} service that requires prepaid credits to work. Refer to [SMS
Pricing FAQ](https://iap-services.odoo.com/iap/sms/pricing) for
additional information.
::::

To select an existing email template, select it from the
`Email Template`{.interpreted-text role="guilabel"} field. After
choosing a template, click on the `oi-arrow-right`{.interpreted-text
role="icon"} `(right arrow)`{.interpreted-text role="guilabel"} icon to
the right of the field to edit the chosen template.

To create a new template from this form, click the field, and enter a
title for the new template. Then, select
`Create and edit`{.interpreted-text role="guilabel"} from the drop-down
menu that appears, and complete the form details.

Follow the same steps to select, edit, or create an
`SMS Template`{.interpreted-text role="guilabel"}.

![View of an SMS template setup page in Odoo Helpdesk.](stages/sms-template.png)

::: seealso
`/applications/general/companies/email_template`{.interpreted-text
role="doc"}
:::

## Fold a stage

By default, stages are unfolded in the Kanban view. If there is a Won or
Closed stage, it is folded by default.

Cards in an unfolded stage are visible in the pipeline under the stage
name, and are considered *open*.

Stages can be configured to be folded in the Kanban view of the pipeline
page.

The name of the folded stages are still visible, but the cards in the
stage are hidden from view.

To fold a stage, tick the `Folded in Kanban`{.interpreted-text
role="guilabel"} checkbox on the `Stages`{.interpreted-text
role="guilabel"} form.

:::: warning
::: title
Warning
:::

Cards that reach a *folded* stage are considered *closed*. Closing a
card before the work is completed can result in reporting and
communication issues. This setting should **only** be enabled for stages
that are considered *closing* stages.
::::

### Temporarily fold a stage

Stages can be temporarily folded in the Kanban view of the pipeline, as
well.

View a specific team\'s pipeline by navigating to the desired app, and
clicking the team\'s Kanban card.

Hover the cursor at the top of the desired stage to fold temporarily,
then click the `fa-gear`{.interpreted-text role="icon"}
`(gear)`{.interpreted-text role="guilabel"} icon that appears, and
select `Fold`{.interpreted-text role="guilabel"} from the drop-down
menu.

![Kanban view of a Helpdesk stage, with the temporary fold option emphasized.](stages/fold-stage-kanban.png)

:::: important
::: title
Important
:::

Manually folding a stage from the Kanban view is temporary and does
**not** close the cards in the stage.
::::

## Assign stages to a team

Make a selection in the `Teams`{.interpreted-text role="guilabel"} field
on the `Stages`{.interpreted-text role="guilabel"} form. More than one
team may be selected, since the same stage can be assigned to multiple
teams.




--- SOURCE: general/apps_modules.md ---

# Apps and modules

`Install <general/install>`{.interpreted-text role="ref"},
`upgrade <general/upgrade>`{.interpreted-text role="ref"} and `uninstall
<general/uninstall>`{.interpreted-text role="ref"} any needed apps and
modules from the `Apps`{.interpreted-text role="menuselection"}
dashboard.

By default, an `Apps`{.interpreted-text role="guilabel"} filter is
applied. To search for modules too, select `Extra`{.interpreted-text
role="guilabel"} from the `fa-filter`{.interpreted-text role="icon"}
`Filters`{.interpreted-text role="guilabel"}.

![Add \"Extra\" filter in Odoo Apps.](apps_modules/apps-search-filter.png)

:::: warning
::: title
Warning
:::

Adding or removing apps can significantly affect other apps in the
database and modify subscription costs. Consider carefully or test the
changes in a staging environment before proceeding.

- **Administrators manage the database**: The administrator of the
  database is responsible for its usage, as they know best how their
  organization works.
- **Odoo apps can have dependencies**: Installing some apps and features
  with dependencies may also install additional apps and modules that
  are technically required, even if database users do not actively use
  them.
- **Duplicate the database to test apps**: Testing on a duplicate
  database reveals what app dependencies may be required or what
  database may be erased. Learn how to duplicate an
  `Odoo Online database <../../administration/odoo_online>`{.interpreted-text
  role="doc"} or an `Odoo On-premise
  database <../../administration/on_premise>`{.interpreted-text
  role="doc"}.
::::

## Install apps and modules {#general/install}

From the main Odoo dashboard, open the `Apps`{.interpreted-text
role="menuselection"} app, then click on the search bar to find the app
to be installed or scroll to find it. From here, click
`Activate`{.interpreted-text role="guilabel"} on the app\'s card.

:::: note
::: title
Note
:::

If the app or module to be installed is not listed, update the app list
by activating `developer mode <developer-mode>`{.interpreted-text
role="ref"}, and then go to `Apps --> Update Apps
List`{.interpreted-text role="menuselection"}, and then click
`Update`{.interpreted-text role="guilabel"}.
::::

## Upgrade apps and modules {#general/upgrade}

With each
`new Odoo release <../../administration/standard_extended_support>`{.interpreted-text
role="doc"}, new improvements or app features are added. Upgrade the app
to use these new improvements and features.

Go to `Apps`{.interpreted-text role="menuselection"} and then on the app
to upgrade, click the `fa-ellipsis-v`{.interpreted-text role="icon"}
`(vertical ellipsis)`{.interpreted-text role="guilabel"} icon and select
`Upgrade`{.interpreted-text role="guilabel"}.

## Uninstall apps and modules {#general/uninstall}

:::: danger
::: title
Danger
:::

Uninstalling apps also deletes their database records. Test uninstalling
apps on a duplicated database before removing apps on a production
database.
::::

:::: note
::: title
Note
:::

Some apps have dependencies, meaning that one app requires another.
Therefore, uninstalling one app may uninstall multiple apps and modules.
::::

Go to `Apps`{.interpreted-text role="menuselection"} and then on the app
to uninstall, click the `fa-ellipsis-v`{.interpreted-text role="icon"}
`(vertical ellipsis)`{.interpreted-text role="guilabel"} icon and select
`Uninstall`{.interpreted-text role="guilabel"} to open the
`Uninstall module`{.interpreted-text role="guilabel"} pop-up window.

The `Apps to Uninstall`{.interpreted-text role="guilabel"} section lists
the applications to be uninstalled.

:::: tip
::: title
Tip
:::

Select the `Show All`{.interpreted-text role="guilabel"} checkbox to
display all module dependencies.
::::

The `Documents to Delete`{.interpreted-text role="guilabel"} section
lists the database records to be deleted.

To proceed with uninstalling the app, its dependencies, and all related
database records, click `Uninstall`{.interpreted-text role="guilabel"}.

![An app\'s card with the \"Uninstall\" menu option highlighted.](apps_modules/uninstall.png)

::: example
The **Restaurant** app requires the **Point of Sale** app to function,
so uninstalling the **Point of Sale** app will also uninstall the
**Restaurant** app, and any related records.

![A warning message showing apps that are uninstalled if the uninstallation is completed.](apps_modules/uninstall-deps.png)
:::




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




--- SOURCE: general/companies/multi_company.md ---

# Multi-company

::: seealso
`Branches <general/companies/branches>`{.interpreted-text role="ref"}
:::

In Odoo, multiple companies can be configured under one database. This
allows some data to be shared among companies while maintaining some
separation between entities.

A centralized management environment allows authorized users to select
multiple companies simultaneously and set their specific warehouses,
customers, equipment, and contacts. It also generates reports of
aggregated figures without switching interfaces, facilitating daily
tasks and enhancing the overall management process.

:::: warning
::: title
Warning
:::

Enabling multi-company functionality in an Odoo database on a *Standard*
plan automatically triggers an upsell to the *Custom* plan. This does
not apply to databases on the *One-App Free* plan.

- **For yearly or multi-year contracts**: An upsell order is created
  with a 30-day limit.
- **For monthly contracts**: The subscription automatically switches to
  the *Custom* plan and the new rate is applied when the next bill is
  generated.

For more information, refer to [Odoo\'s pricing
page](https://www.odoo.com/pricing-plan) or contact your account
manager.
::::

## Configuration {#general/multi-company/configuration}

Open the Settings app, navigate to the `Companies`{.interpreted-text
role="guilabel"} section, and click `oi-arrow-right`{.interpreted-text
role="icon"} `Manage Companies`{.interpreted-text role="guilabel"}.
Then, click `New`{.interpreted-text role="guilabel"} and `fill in
the form with the company's information <general/companies/company>`{.interpreted-text
role="ref"} or select an existing company to edit it.

:::: note
::: title
Note
:::

Alternatively, it is possible to create a company by going to
`Settings --> Users
& Companies --> Companies`{.interpreted-text role="menuselection"}.
::::

:::: tip
::: title
Tip
:::

To archive a company, follow these steps:

1.  In the Settings app, navigate to the `Companies`{.interpreted-text
    role="guilabel"} section and click
    `oi-arrow-right`{.interpreted-text role="icon"}
    `Manage Companies`{.interpreted-text role="guilabel"}.
2.  In the `Companies`{.interpreted-text role="guilabel"} list view,
    select the company to be archived.
3.  Click the `fa-cog`{.interpreted-text role="icon"}
    `Actions`{.interpreted-text role="guilabel"} menu and select
    `Archive`{.interpreted-text role="guilabel"}.
4.  Click `Archive`{.interpreted-text role="guilabel"} to confirm.
::::

## Multi-company environment {#general/multi-company/multi-company-environment}

In a multi-company environment, users are granted
`access to one or more companies
<general/multi-company/user-access>`{.interpreted-text role="ref"}, and
`data
<general/multi-company/shared-and-unshared-records>`{.interpreted-text
role="ref"} is created or modified based on its intended use within that
structure.

### User access {#general/multi-company/user-access}

A multi-company environment allows flexible control over
`user access <users/multi-companies>`{.interpreted-text role="ref"} and
`access rights <../users/access_rights>`{.interpreted-text role="doc"}
that can be granted or restricted as needed.

### Company selector {#general/multi-company/company-selector}

To switch between (or select) multiple companies, follow these steps:

1.  Click the company selector in the top-right corner of the header
    menu.
2.  In the drop-down list, select the checkboxes next to the desired
    companies.
3.  The highlighted company indicates the current active environment.
4.  To switch to another company, click its name in the list of selected
    companies.

::: example
In the example below, the user can access six companies, two of which
are selected. The current active company is *My Company (San
Francisco)*.

![View of the companies menu through the main dashboard in Odoo.](multi_company/multi-companies-menu-dashboard.png)
:::

### Shared and company-specific records {#general/multi-company/shared-and-unshared-records}

Data, such as products, contacts, and equipment can either be shared
across companies or restricted to a specific company by setting the
`Company`{.interpreted-text role="guilabel"} field on the relevant
records:

- either leave the field blank to make it accessible to all companies;
- or select the company to make it visible to users logged in to that
  specific company.

Records specifically linked to a particular company are accessible only
within that entity. For instance, quotations, invoices, and vendor bills
associated with a company are visible only when logged into that
company, and the corresponding company is automatically selected by
default and displayed in the `Company`{.interpreted-text
role="guilabel"} field.

In a multi-company database, new products and contacts are shared across
companies by default. To restrict them to a specific company, set the
`Company`{.interpreted-text role="guilabel"} field on the record\'s
form.

## Inter-company transactions {#general/multi-company/inter-company-transactions}

The `Inter-Company Transactions`{.interpreted-text role="guilabel"}
feature allows one company in the database to sell or purchase goods and
services from another company within the same database. Depending on the
configuration settings, counterpart documents for orders and invoices
can be automatically generated and synchronized.

:::: warning
::: title
Warning
:::

To handle inter-company transactions correctly, `general
<../../finance/accounting/get_started>`{.interpreted-text role="doc"}
and specific configurations must be set properly, including
`fiscal positions <../../finance/accounting/taxes/fiscal_positions>`{.interpreted-text
role="doc"} and
`localizations <../../finance/fiscal_localizations>`{.interpreted-text
role="doc"}.
::::

To activate inter-company transactions, select the relevant company in
the `company selector
<general/multi-company/company-selector>`{.interpreted-text role="ref"},
open the Settings app, navigate to the `Companies`{.interpreted-text
role="guilabel"} section, enable
`Inter-Company Transactions`{.interpreted-text role="guilabel"}, and
`Save`{.interpreted-text role="guilabel"}. Then, select the option(s) to
create a counterpart for the selected company:

- `Generate Bills and Refunds`{.interpreted-text role="guilabel"}:
  Generate a bill/refund when a company confirms an invoice/credit note
  for the selected company. To generate a validated bill/refund, select
  `Create and validate`{.interpreted-text role="guilabel"}.
- `Generate Sales Orders`{.interpreted-text role="guilabel"}: Generate a
  quotation (drafted sales order) when a sales order is confirmed for
  the selected company. To generate a validated sales order instead of a
  quotation, select `Create and validate`{.interpreted-text
  role="guilabel"}.
- `Generate Purchase Orders`{.interpreted-text role="guilabel"}:
  Generate a request for quotation (drafted purchase order) using the
  selected company warehouse in the `Use Warehouse`{.interpreted-text
  role="guilabel"} field when a purchase order is confirmed for the
  selected company. To generate a validated purchase order instead of a
  request for quotation, select `Create and validate`{.interpreted-text
  role="guilabel"}.

:::: note
::: title
Note
:::

For inter-company transactions, the `products must be shared
<general/multi-company/shared-and-unshared-records>`{.interpreted-text
role="ref"} among the involved companies.
::::

::: example
`Generate Bills and Refunds`{.interpreted-text role="guilabel"}: when an
invoice for `Customer`{.interpreted-text role="guilabel"} [JS Store
US]{.title-ref} is posted on [JS Store Belgium]{.title-ref}, a vendor
bill is automatically created in [JS Store US]{.title-ref}.

`Generate Sales Orders`{.interpreted-text role="guilabel"}: when a sales
order for `Customer`{.interpreted-text role="guilabel"} [JS Store
US]{.title-ref} is confirmed on [JS Store Belgium]{.title-ref}, a
purchase order on [JS Store US]{.title-ref} is automatically created
(and confirmed if the `Create and validate`{.interpreted-text
role="guilabel"} option is selected).
:::

::: seealso
\-
`Multi-company Guidelines <../../../developer/howtos/company>`{.interpreted-text
role="doc"} -
`../../finance/accounting/get_started/multi_currency`{.interpreted-text
role="doc"}
:::

## Use cases {#general/multi-company/use-cases}

### Multinational companies {#general/multi-company/use-cases-multinational-companies}

A multinational retail chain operating in the United States and Canada
must manage transactions in USD and CAD.

Since each country has its own tax laws and regulations, using Odoo's
multi-company feature is highly beneficial.

This setup allows for inter-company transactions, which is essential for
managing cross-border inventory transfers. It also simplifies the sales
process by enabling customers transactions in their local currency.

### Separate processes {#general/multi-company/use-cases-seperate-processes}

A small furniture company is launching a new product line that requires
separate procurement, inventory, and manufacturing workflows. These new
products differ significantly from the existing catalog. To manage this
efficiently, the company is considering using the multi-company feature
to manage the new line as a separate business entity.

However, creating a completely new company might add unnecessary
complexity to the database. Instead, the company can leverage existing
features such as `analytic accounting
<../../finance/accounting/reporting/analytic_accounting>`{.interpreted-text
role="doc"} and multiple warehouses to manage the new product line
without complicating overall operations.




--- SOURCE: general/companies.md ---

show-content

:   

# Companies

In Odoo, a company is an individual business entity that operates
independently, with its own legal identity, financial records, and
specific operational settings.

::: seealso
\- `general/companies/branches`{.interpreted-text role="ref"} -
`Multi-company <companies/multi_company>`{.interpreted-text role="doc"}
:::

## Configuration {#general/companies/configuration}

To set up a company, follow these steps:

1.  `Configure the company details <general/companies/company>`{.interpreted-text
    role="ref"}.
2.  `Manage users and their access rights <general/companies/users>`{.interpreted-text
    role="ref"}.
3.  `Customize the document layout <general/companies/document-layout>`{.interpreted-text
    role="ref"}.

### Company {#general/companies/company}

To create a company, open the Settings app, navigate to the
`Companies`{.interpreted-text role="guilabel"} section, and click
`oi-arrow-right`{.interpreted-text role="icon"}
`Manage Companies`{.interpreted-text role="guilabel"}. In the
`Companies`{.interpreted-text role="guilabel"} list view, click
`New`{.interpreted-text role="guilabel"} and configure the following
fields:

- `Company Name`{.interpreted-text role="guilabel"}
- `Address`{.interpreted-text role="guilabel"}
- `Tax ID`{.interpreted-text role="guilabel"}: tax identification
  number.
- `LEI`{.interpreted-text role="guilabel"}: legal entity identifier.
- `Company ID`{.interpreted-text role="guilabel"}: company\'s registry
  number, if different from `Tax ID`{.interpreted-text role="guilabel"}
- `Currency <multi-currency/config-main-currency>`{.interpreted-text
  role="ref"}
- `Phone`{.interpreted-text role="guilabel"} and
  `Mobile`{.interpreted-text role="guilabel"}
- `Email`{.interpreted-text role="guilabel"}
- `Website`{.interpreted-text role="guilabel"}
- `Email Domain`{.interpreted-text role="guilabel"}
- `Color`{.interpreted-text role="guilabel"}

Upload the company\'s logo and `Save`{.interpreted-text
role="guilabel"}.

:::: note
::: title
Note
:::

\- Alternatively, it is possible to create a company by going to
`Settings -->
Users & Companies --> Companies`{.interpreted-text
role="menuselection"}. - The company\'s
`General information`{.interpreted-text role="guilabel"} may vary based
on the `fiscal localization
<../finance/fiscal_localizations>`{.interpreted-text role="doc"}.
::::

### Users {#general/companies/users}

After setting up a company, add `users <users>`{.interpreted-text
role="doc"} and configure their `access
<users/add-individual>`{.interpreted-text role="ref"} and
`access rights <users/access_rights>`{.interpreted-text role="doc"}.

::: seealso
`Users in multi-company environment <users/multi-companies>`{.interpreted-text
role="ref"}
:::

### Document layout {#general/companies/document-layout}

Configure the
`default layout <studio/pdf-reports/default-layout>`{.interpreted-text
role="ref"} for all company documents.

## Branches {#general/companies/branches}

Branches represent subdivisions within a company, such as regional
offices or departments, that operate under a common parent company. They
support hierarchical company structures through
`configurable settings <general/companies/branches/configuration>`{.interpreted-text
role="ref"}, enabling
`comprehensive or branch-specific views <general/companies/branches/consolidated-view>`{.interpreted-text
role="ref"} with flexible
`access control <general/companies/branches/user-access>`{.interpreted-text
role="ref"}, `entity-specific or
shared record visibility <general/companies/branches/shared-records>`{.interpreted-text
role="ref"}, and customizable
`reporting <general/companies/branches/reporting>`{.interpreted-text
role="ref"}.

:::: note
::: title
Note
:::

Independent subsidiaries should be created as additional companies, not
branches.
::::

::: seealso
\-
`Multi-company </applications/general/companies/multi_company>`{.interpreted-text
role="doc"} -
`Branch accounting <accounting/branches>`{.interpreted-text role="ref"}
:::

### Configuration {#general/companies/branches/configuration}

Each branch is linked to its parent company but may contain different or
specific information, such as its address or logo. A branch can be a
parent company of branches at a lower level to create a multi-level
architecture.

:::: important
::: title
Important
:::

\- Clarify the company\'s structure and hierarchy before creating
companies and branches in Odoo. A company defined as a parent cannot be
converted into a branch later, as doing so may result in
`access rights <users/access_rights>`{.interpreted-text role="doc"}
issues. - Always create the parent company first.
::::

To create a branch, follow these steps in the Settings app:

1.  Navigate to the `Companies`{.interpreted-text role="guilabel"}
    section, click `oi-arrow-right`{.interpreted-text role="icon"}
    `Manage
    Companies`{.interpreted-text role="guilabel"}, or go to
    `Settings --> Users & Companies --> Companies`{.interpreted-text
    role="menuselection"}.
2.  In the `Companies`{.interpreted-text role="guilabel"} list view,
    open the desired parent company form.
3.  In the `Branches`{.interpreted-text role="guilabel"} tab, click
    `Add a line`{.interpreted-text role="guilabel"} and fill in the
    `General
    Information <general/companies/company>`{.interpreted-text
    role="ref"} fields in the `Create Branches`{.interpreted-text
    role="guilabel"} window.

To create branches from a branch and create a multi-level architecture,
click `Add a line`{.interpreted-text role="guilabel"} in the new
branch\'s `Branches`{.interpreted-text role="guilabel"} tab.

:::: tip
::: title
Tip
:::

Activate the `developer mode <developer-mode>`{.interpreted-text
role="ref"} to set `social media accounts
<../marketing/social_marketing>`{.interpreted-text role="doc"} and
company-specific `email <email_communication>`{.interpreted-text
role="doc"} system parameters.
::::

:::: warning
::: title
Warning
:::

Adding a branch to a company enables
`multi-company <companies/multi_company>`{.interpreted-text role="doc"}
functions.
::::

### Comprehensive or branch-specific view {#general/companies/branches/consolidated-view}

:::: note
::: title
Note
:::

Selecting the parent company automatically links all its branches, while
selecting a branch connects to that branch only. To switch between them,
use the `company selector
<general/multi-company/company-selector>`{.interpreted-text role="ref"}.
::::

All configurations, except for
`accounting <accounting/branches>`{.interpreted-text role="ref"}
settings inherited from the parent company, must be set individually per
branch. This allows for branch-specific setups such as
`loyalty programs <../sales/point_of_sale/pricing/loyalty>`{.interpreted-text
role="doc"}, `price lists
<../sales/point_of_sale/pricing/pricelists>`{.interpreted-text
role="doc"}, or `inventory locations
<../inventory_and_mrp/inventory/warehouses_storage/inventory_management/use_locations>`{.interpreted-text
role="doc"}.

#### User access {#general/companies/branches/user-access}

Like in a multi-company environment, parent companies and branches
support flexible `user
access <users/multi-companies>`{.interpreted-text role="ref"} control
and `access rights <users/access_rights>`{.interpreted-text role="doc"}.
User access can be granted or restricted at the parent company level,
the branch level, or both. For example, a user can be limited to a
specific branch, while an administrator with access to the parent
company can manage all associated branches.

#### Shared records {#general/companies/branches/shared-records}

In Odoo, some records are, by default, either specific to a single
entity or shared across the parent company and all its branches.

When creating a quotation, invoice, or vendor bill, the active company
or branch is automatically selected and displayed in the
`Company`{.interpreted-text role="guilabel"} field. If the active
company is the parent company or one of its branches, then records
specifically linked to that entity are accessible only within that
entity and will only be visible when the company or branch is selected
using the `company
selector <general/multi-company/company-selector>`{.interpreted-text
role="ref"}.

In contrast, some records, such as `products or contacts
<general/multi-company/shared-and-unshared-records>`{.interpreted-text
role="ref"}, are not tied to any particular entity and are shared by
default across the parent company and all its branches. However, they
can be restricted to a single entity by setting the appropriate value in
the `Company`{.interpreted-text role="guilabel"} field, if needed.

::: seealso
`Branches accounting <accounting/branches>`{.interpreted-text
role="ref"}
:::

#### Reporting {#general/companies/branches/reporting}

All `reports <../finance/accounting/reporting>`{.interpreted-text
role="doc"} can be generated for the parent company alone or with its
branches, based on
`user access <general/multi-company/user-access>`{.interpreted-text
role="ref"}.

::: {.toctree titlesonly=""}
companies/multi_company companies/digest_emails companies/email_template
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
[?debug=1]{.title-ref} at the end of the URL (e.g.,
[https://example.odoo.com/odoo?debug=1]{.title-ref}). To deactivate it,
use [?debug=0]{.title-ref} instead.

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
<email-outbound-unique-address>`{.interpreted-text role="ref"}.

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
Visit the
`From Filtering documentation <email-outbound-different-servers-personalized-from-filtering>`{.interpreted-text
role="ref"} for more information.
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
Visit the
`From Filtering documentation <email-outbound-different-servers-personalized-from-filtering>`{.interpreted-text
role="ref"} for more information.
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
`email-outbound-custom-domain-smtp-server`{.interpreted-text
role="ref"}.
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




--- SOURCE: general/email_communication/email_domain.md ---

# Configure DNS records to send emails in Odoo

This documentation presents three complementary authentication protocols
(SPF, DKIM, and DMARC) used to prove the legitimacy of an email sender.
Not complying with these protocols will greatly reduce chances of your
emails to reach their destination.

**Odoo Online** and **Odoo.sh** databases using the **default Odoo
subdomain address** (e.g., [\@company-name.odoo.com]{.title-ref}) are
pre-configured to **send authenticated emails** compliant with the SPF,
DKIM, and DMARC protocols.

If choosing to use a **custom domain** instead, **configuring SPF and
DKIM records correctly is essential** to prevent emails from being
quarantined as spam or not being delivered to recipients.

If using
`the default Odoo email server to send emails from a custom domain
<email-outbound-custom-domain-odoo-server>`{.interpreted-text
role="ref"}, the SPF and DKIM records must be configured as presented
below. If using an outgoing email server, it is required to use the SPF
and DKIM records specific to that email service and a custom domain.

:::: note
::: title
Note
:::

Email service providers apply different rules to incoming emails. An
email may be classified as spam even if it passes the SPF and DKIM
checks.
::::

## SPF (Sender Policy Framework) {#email-domain-spf}

The Sender Policy Framework (SPF) protocol allows the owner of a domain
name to specify which servers are allowed to send emails from that
domain. When a server receives an incoming email, it checks whether the
IP address of the sending server is on the list of allowed IPs according
to the sender\'s `SPF (Sender Policy Framework)`{.interpreted-text
role="abbr"} record.

In Odoo, the **SPF test is performed on the bounce address** defined
under the `Alias
Domain`{.interpreted-text role="guilabel"} field found under the
database\'s `General Settings`{.interpreted-text role="guilabel"}. If
using a custom domain as `Alias Domain`{.interpreted-text
role="guilabel"}, it is necessary to configure it to be SPF-compliant.

The SPF policy of a domain is set using a TXT record. The way to create
or modify this record depends on the provider hosting the
`DNS (Domain Name System)`{.interpreted-text role="abbr"} zone of the
domain name.

If the domain name does not yet have an SPF record, create one using the
following input:

``` bash
v=spf1 include:_spf.odoo.com ~all
```

If the domain name **already has an SPF record, the record must be
updated**. Do not create a new one, as a domain must have only one SPF
record.

::: example
If the TXT record is [v=spf1 include:\_spf.google.com
\~all]{.title-ref}, edit it to add \`include:\_spf.odoo.com\`: [v=spf1
include:\_spf.odoo.com include:\_spf.google.com \~all]{.title-ref}
:::

Check the SPF record using a tool like [MXToolbox SPF Record
Check](https://mxtoolbox.com/spf.aspx). The process to create or modify
an SPF record depends on the provider hosting the DNS zone of the domain
name. The `most common providers
<email-domain-providers-documentation>`{.interpreted-text role="ref"}
and their documentation are listed below.

## DKIM (DomainKeys Identified Mail) {#email-domain-dkim}

The DomainKeys Identified Mail (DKIM) allows a user to authenticate
emails with a digital signature.

When sending an email, the Odoo email server includes a unique DKIM
signature in the headers. The recipient\'s server decrypts this
signature using the DKIM record in the database\'s domain name. If the
signature and the key contained in the record match, it proves the
message is authentic and has not been altered during transport.

Enabling DKIM is **required** when sending emails **from a custom
domain** using the Odoo email server.

### Add a CNAME record for domain

To enable DKIM, add a canonical name (CNAME) record to the domain name
system (DNS) zone of the domain name:

``` bash
odoo._domainkey IN CNAME odoo._domainkey.odoo.com.
```

If the domain name is *company-name.com*, make sure to create a CNAME
record where the CNAME record (key/name) is
[odoo.\_domainkey.company-name.com]{.title-ref}, and the canonical name
(value/content) is [odoo.\_domainkey.odoo.com.]{.title-ref}. For
example, note the differences between each key/value in italics:

  -------- ------ ------------------------------------- ---------------------------
  Key             odoo.\_domainkey                      

  Value           odoo.\_domainkey.*odoo.com.*          

           OR     odoo.\_domainkey.*dbname*.odoo.com.   \... where *dbname* is the
                                                        name of the Odoo database.
  -------- ------ ------------------------------------- ---------------------------

  : Example CNAME record

On most DNS platforms, the DNS provider adds the custom domain (e.g.,
*company-name.com*) by default. In this case, the key looks different
while the value remains the same:

  -------- ------ ------------------------------------- ---------------------------
  Key             odoo.\_domainkey.*company-name.com*   \... where
                                                        *company-name.com* is the
                                                        custom domain.

  Value           odoo.\_domainkey.*odoo.com.*          

           OR     odoo.\_domainkey.*dbname*.odoo.com.   \... where *dbname* is the
                                                        name of the Odoo database.
  -------- ------ ------------------------------------- ---------------------------

  : Example CNAME record with custom domain

:::: note
::: title
Note
:::

If the DNS provider does not add the custom domain by default, make sure
to include it.
::::

### Add a CNAME record for subdomain

If there\'s a *subdomain* (e.g., *marketing* in
*marketing*.company-name.com), add a CNAME record to include it for
compliance as well:

  -------- ------ ------------------------------------------------ ---------------------------
  Key             odoo.\_domainkey.*marketing*                     \... where *marketing* is
                                                                   the subdomain.

           OR     odoo.\_domainkey.marketing.*company-name.com*    \... where
                                                                   *company-name.com* is the
                                                                   custom domain.

  Value           odoo.\_domainkey.*odoo.com.*                     

           OR     odoo.\_domainkey.*dbname*.odoo.com.              \... where *dbname* is the
                                                                   name of the Odoo database.
  -------- ------ ------------------------------------------------ ---------------------------

  : Example CNAME record with subdomain

### See DNS provider documentation

The way to create or modify a CNAME record depends on the provider
hosting the DNS zone of the domain name. The
`most common providers <email-domain-providers-documentation>`{.interpreted-text
role="ref"} and their documentation are listed below.

Check if the DKIM record is valid using a tool like [MXToolbox DKIM
Record Lookup](https://mxtoolbox.com/dkim.aspx). Enter
[example.com:odoo]{.title-ref} in the DKIM lookup tool, specifying that
the selector being tested is *odoo* for the custom domain *example.com*.

## DMARC (Domain-based Message Authentication, Reporting and Conformance) {#email-domain-dmarc}

The
`DMARC (Domain-based Message Authentication, Reporting, & Conformance)`{.interpreted-text
role="abbr"} record is a protocol that unifies
`SPF (Sender Policy Framework)`{.interpreted-text role="abbr"} and
`DKIM (DomainKeys Identified
Mail)`{.interpreted-text role="abbr"}. The instructions contained in the
DMARC record of a domain name tell the destination server what to do
with an incoming email that fails the SPF and/or DKIM check.

:::: note
::: title
Note
:::

The aim of this documentation is to help **understand the impact DMARC
has on the deliverability of emails**, rather than give precise
instructions for creating a DMARC record. Refer to a resource like
[DMARC.org](https://dmarc.org/) to set the DMARC record.
::::

There are three DMARC policies:

- [p=none]{.title-ref}
- [p=quarantine]{.title-ref}
- [p=reject]{.title-ref}

[p=quarantine]{.title-ref} and [p=reject]{.title-ref} instruct the
server that receives an email to quarantine that email or ignore it if
the SPF or DKIM check fails.

:::: note
::: title
Note
:::

**For the DMARC to pass, the DKIM or SPF check needs to pass** and the
domains must be in alignment. If the hosting type is Odoo Online, DKIM
configuration on the sending domain is required to pass the DMARC.
::::

Passing DMARC generally means that the email will be successfully
delivered. However, it\'s important to note that **other factors like
spam filters can still reject or quarantine a message**.

[p=none]{.title-ref} is used for the domain owner to receive reports
about entities using their domain. It should not impact the
deliverability.

::: example
`_dmarc IN TXT “v=DMARC1; p=none; rua=mailto:postmaster@example.com”`
means that aggregate DMARC reports will be sent to
[postmaster@example.com]{.title-ref}.
:::

## SPF, DKIM and DMARC documentation of common providers[]{#email_domain/mail_config_common_providers} {#email-domain-providers-documentation}

- [OVH
  DNS](https://docs.ovh.com/us/en/domains/web_hosting_how_to_edit_my_dns_zone/)
- [GoDaddy TXT
  record](https://www.godaddy.com/help/add-a-txt-record-19232)
- [GoDaddy SPF, DKIM, or DMARC
  records](https://www.godaddy.com/help/set-up-spf-dkim-or-dmarc-records-for-my-hosting-email-40810)
- [NameCheap](https://www.namecheap.com/support/knowledgebase/article.aspx/317/2237/how-do-i-add-txtspfdkimdmarc-records-for-my-domain/)
- [CloudFlare
  DNS](https://support.cloudflare.com/hc/en-us/articles/360019093151)
- [Squarespace DNS
  records](https://support.squarespace.com/hc/en-us/articles/360002101888-Adding-custom-DNS-records-to-your-Squarespace-managed-domain)
- [Azure
  DNS](https://docs.microsoft.com/en-us/azure/dns/dns-getstarted-portal)

To fully test the configuration, use the
[Mail-Tester](https://www.mail-tester.com/) tool, which gives a full
overview of the content and configuration in one sent email. Mail-Tester
can also be used to configure records for other, lesser-known providers.

::: seealso
\- [Using Mail-Tester to set SPF Records for specific
carriers](https://www.mail-tester.com/spf/) - [Magic Sheet - SPF, DKIM
and DMARC configuration
\[PDF\]](https://drive.google.com/drive/folders/1TJIXQpdR0VN8UQx5JP7q7vFuAr3e1Q3r)
:::




--- SOURCE: general/email_communication/email_servers_inbound.md ---

# Manage inbound messages

An inbound message is an email delivered to an Odoo database. Anyone can
send an email to an email alias created in the database or reply to an
email that was previously sent from the database based on the *reply-to*
header.

## Email aliases {#email-inbound-aliases}

### Model specific aliases {#email-inbound-aliases-model}

Some applications have their specific aliases (sales teams, helpdesk
teams, projects, etc.). These aliases are used to:

- Create a record when an email is sent directly to the alias,
- Receive replies to an email initially sent from a record.

::: example
![The local-part \"info\" is used for the alias of the sales team.](email_servers_inbound/sales-team-alias-config.png)

In the example displayed above, sending an email to
[info@company-name.odoo.com]{.title-ref} will create a new opportunity
or a new lead automatically assigned to the corresponding sales team. If
an email is sent from the chatter of an existing opportunity, the
*reply-to* will be [info@company-name.odoo.com]{.title-ref}. The reply
will be posted in the right chatter, according to the *message-id*
header.
:::

### Catchall {#email-inbound-aliases-catchall}

If an application does not have an alias, a generic fallback alias is
used: the catchall. An email sent from a chatter has a reply address set
to this catchall alias. A reply sent to the catchall is posted to the
right chatter thanks to the *message-id* header.

By default, the local-part *catchall* will be used. Enable
`developer-mode`{.interpreted-text role="ref"} and go to
`Settings --> Technical --> Emails: Alias Domains`{.interpreted-text
role="menuselection"} to access the configuration.

An email to the catchall always needs to be a reply to a previous email
sent from the database. If an email is sent directly to the catchall,
the sender will receive the following message:

![Bounce email from \"MAILER-DEAMON\" explaining how to contact the database.](email_servers_inbound/direct-mail-to-catchall.png)

:::: note
::: title
Note
:::

The email address [info@company-name.com]{.title-ref} displayed in the
screenshot above is the email address set on the company. Upon entering
the developer mode on a company profile, additional configuration
options (such as catchall and bounce) become readable. It can be
modified by clicking on the internal link of the Email Domain. It is
generally not recommended to modify these options unless specific needs
dictate, as it will affect all replies to previously sent emails.
::::

::: example
An alias can be configured on a sales team in the CRM app. When a
customer replies to an email coming from the CRM app, the *reply-to* is
[info@company-name.odoo.com]{.title-ref}.

When an email is sent from the Contact app, the reply address is
[catchall@company-name.odoo.com]{.title-ref} because there is no alias
on the contact model.
:::

:::: note
::: title
Note
:::

It is advised to keep the local-part of the catchall and the bounce
unchanged. If this value is modified, previous emails sent from the
database will still have the previous local-part values. This could lead
to replies not being correctly received in the database.
::::

### Bounce {#email-inbound-aliases-bounce}

In the same way the catchall alias is used to build the reply address,
the bounce alias is used to build the *return-path* of the email. The
*return-path* is used when emails cannot be delivered to the recipient
and an error is returned to the sender.

By default the name *bounce* will be used. Enable
`developer-mode`{.interpreted-text role="ref"} and go to
`Settings --> Technical --> Emails: Alias Domains`{.interpreted-text
role="menuselection"} to access the configuration.

:::: note
::: title
Note
:::

On Odoo Online, when using the default outgoing email server, the
return-path address is forced to the value
[bounce@company-name.odoo.com]{.title-ref} independently of the value
set as bounce alias.
::::

When an error occurs, a notification is received and displayed in a red
envelope in the chatter. In some cases, the red envelope can just
contain a [no error]{.title-ref} message, meaning there is an error that
could not be handled by Odoo.

A notification will also be displayed in the Discuss icon on the
navigation bar.

![An email sent to a contact had an issue and the error is reported on the navbar.](email_servers_inbound/mail-error-notif-navbar.png)

::: example
If the email address of the recipient is incorrect, by clicking on the
red envelope in the chatter an error message containing the reason for
the failure will be given.

![An email sent to a wrong domain generates a bounce displayed as a red envelope.](email_servers_inbound/red-envelope-info.png)
:::

## Receive emails with Odoo\'s default configuration {#email-inbound-default}

On **Odoo Online** and **Odoo.sh**, the email alias, reply, and bounce
addresses are pre-configured. These addresses use the alias domain
automatically added to a standard database.

::: example
Assuming the database URL is [https://mydatabase.odoo.com]{.title-ref},
the alias domain [mydatabase.odoo.com]{.title-ref} is automatically
created. Catchall and bounce can be used and their address is
respectively [catchall@mydatabase.odoo.com]{.title-ref}, and
[bounce@mydatabase.odoo.com]{.title-ref}.

If the CRM app is installed, and a sales team with the alias
[info]{.title-ref} is created, the
[info@mydatabase.odoo.com]{.title-ref} address can be used immediately.
The same goes for any other alias created in other applications.
:::

The database domain is ready to be used to receive emails without any
additional configuration.

## Use multiple Odoo subdomains {#email-inbound-multiple-subdomains}

On **Odoo Online**, the only Odoo subdomain is the one defined at the
database creation.

On **Odoo.sh**, it is possible to use several Odoo subdomains. In the
settings of the branch, additional Odoo subdomains can be added as long
as they are not used yet in another branch. These domains must then be
added to the alias domains to be used by a company.

![Setting up an Odoo subdomain on a branch.](email_servers_inbound/custom-subdomain-sh.png)

## Use a custom domain for inbound messages {#email-inbound-custom-domain}

The `alias domain <email-outbound-alias-domain>`{.interpreted-text
role="ref"} must be selected in the general settings. If you have
multiple companies, each one must be configured.

![The alias domain in the general settings.](email_servers_inbound/alias-domain-settings.png)

All the aliases will use this custom domain. Replies on models for which
an alias is configured are done to
[\[alias\]@my-custom-domain.com]{.title-ref}. Replies to other models
are sent to the catchall through
[catchall@my-custom-domain.com]{.title-ref}.

![Technical schema of mailing route when using a custom domain in Odoo.](email_servers_inbound/diagram-mail-custom-domain.png)

:::: important
::: title
Important
:::

If emails are sent using Odoo\'s email servers while using a custom
domain, follow the
`"Using a custom domain with Odoo’s email server" instructions
<email-outbound-custom-domain-odoo-server>`{.interpreted-text
role="ref"}.
::::

Since this custom domain is used, all emails using an alias (replies,
bounces and direct sends) are sent to an address of the domain. They are
thus delivered to the email server linked to the domain (MX record). To
display them in the chatter or to create new records, it is necessary to
retrieve these incoming emails in the Odoo database.

  Method                                                                                                Benefits                                                                                                        Drawbacks
  ----------------------------------------------------------------------------------------------------- --------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------
  `Redirections <email-inbound-custom-domain-redirections>`{.interpreted-text role="ref"}               Easy to set up, emails are directly sent to the database.                                                       Each alias of a database needs to be configured.
  `Incoming mail servers <email-inbound-custom-domain-incoming-server>`{.interpreted-text role="ref"}   Allows to keep a copy of the email in your mailbox (with IMAP). Allows to create records in the chosen model.   Depends on a CRON, meaning emails are not retrieved immediately in the database. Each alias of a database needs to be configured.
  `MX record <email-inbound-custom-domain-mx>`{.interpreted-text role="ref"}                            Only one record needs to be created to make all aliases work properly.                                          Using a subdomain is required. Requires advanced technical knowledge.

:::: important
::: title
Important
:::

For **on-premise databases**, the redirection and the MX record methods
also require configuring the
`mail gateway script <../../../../administration/on_premise/email_gateway>`{.interpreted-text
role="doc"}. Going through this script requires **advanced technical and
infrastructure knowledge**.
::::

:::: important
::: title
Important
:::

Refer to your provider's documentation for more detailed information on
how to handle the methods detailed below.
::::

### Redirections {#email-inbound-custom-domain-redirections}

If the database is hosted on **Odoo Online** or **Odoo.sh**, using
redirections is recommended. They allow messages to be received without
delay in the database.

:::: warning
::: title
Warning
:::

When configuring email redirections with Microsoft 365 (Exchange
Online), be aware that certain technical limitations may affect your
setup. Some users have reported that Microsoft 365 does not support true
redirection and only allows forwarding, which may not behave as needed
for Odoo\'s email routing.

For more information on Microsoft Exchange configuration, visit
[Microsoft
Learn](https://learn.microsoft.com/en-us/exchange/exchange-online).
::::

It is mandatory to redirect the catchall and bounce address to the Odoo
subdomain of the database. Every other alias used must be redirected as
well.

::: example
With one sales team, the following redirections are required:

- [catchall@company-name.com]{.title-ref} →
  [catchall@company-name.odoo.com]{.title-ref}
- [bounce@company-name.com]{.title-ref} →
  [bounce@company-name.odoo.com]{.title-ref}
- [info@company-name.com]{.title-ref} →
  [info@company-name.odoo.com]{.title-ref}
:::

:::: important
::: title
Important
:::

Some providers ask to validate the redirection by sending a link to the
target email address. This procedure is an issue for catchall and bounce
since they are not used to create records.

1.  Modify the catchall value on the mail alias domain.
    `developer-mode`{.interpreted-text role="ref"} must be enabled to
    access this menu. For example, it can be changed from
    [catchall]{.title-ref} to [temp-catchall]{.title-ref}. This will
    allow to use [catchall]{.title-ref} as the local-part of another
    alias.
2.  Open an app that uses an alias. For example, CRM contains aliases
    for each sales team. Set [catchall]{.title-ref} as the local-part of
    the alias of a sales team.
3.  The validation email will create a record in the CRM app. The email
    sent will be visible in the chatter, allowing you to validate the
    redirection.
4.  Do not forget to change back the alias of the sales team and the
    catchall value on the mail alias domain, just as they were before
    this procedure.
::::

:::: note
::: title
Note
:::

An alternative to redirections is **forwarding**. With forwarding, **the
address forwarding the email will be identified as the sender**, while
with redirections, the original sender will always remain.
::::

### Incoming mail servers {#email-inbound-custom-domain-incoming-server}

As mentioned earlier, using redirections is the recommended method to
receive emails in Odoo. However, it is also possible to set up incoming
mail servers. Using this method means creating an incoming email server
for each mailbox on your server, catchall, bounce, and every alias of
the database, in order to fetch all incoming emails.

:::: warning
::: title
Warning
:::

Odoo\'s *Incoming Mail Servers* feature is designed for shared inboxes
(e.g., [sales@yourcompany.com]{.title-ref} or
[support@yourcompany.com]{.title-ref}) to route messages to team
pipelines, tickets, or documents.

Using personal email addresses (e.g.,
[mitchell.admin@yourcompany.com]{.title-ref}) as incoming mail servers
is **not** recommended. Doing so can lead to increased security risks,
unintended message routing, privacy issues, and difficulties syncing
replies correctly.
::::

Incoming mail servers are created by going to
`Settings --> Technical --> Emails:
Incoming Mail Servers`{.interpreted-text role="menuselection"}.

:::: important
::: title
Important
:::

We recommend using the IMAP protocol over the POP protocol, as IMAP
fetches all unread emails, while POP fetches all the emails\' history
and then tags them as deleted in your mailbox.
::::

:::: tip
::: title
Tip
:::

It is also possible to connect a mailbox through
`Gmail with Google OAuth <google_oauth>`{.interpreted-text role="doc"}
or `Outlook with Microsoft Azure OAuth <azure_oauth>`{.interpreted-text
role="doc"}.
::::

Regardless of the protocol chosen, emails are fetched using the *Mail:
Fetchmail Service* scheduled action.

Additionally, using an incoming mail server in Odoo gives the
opportunity to create new records in a specified model. Each incoming
mail server can create records in a different model.

::: example
Emails received on [task@company-name.com]{.title-ref} are fetched by
the Odoo database. All fetched emails will create a new project task in
the database.

![Technical schema of mailing route when using a custom domain in Odoo.](email_servers_inbound/incoming-mail-server.png)
:::

### MX record {#email-inbound-custom-domain-mx}

A third option is to create a MX record in your DNS zone which specifies
the mail server managing emails sent to your domain. **Advanced
technical knowledge is required.**

:::: important
::: title
Important
:::

This configuration only works with a subdomain on the Odoo Online or
Odoo.sh infrastructure (e.g., [\@mail.mydomain.com]{.title-ref})
::::

Below are presented some specifications depending on the hosting type:

::::: tabs
::: group-tab
Odoo Online

The custom subdomain must be added to your `Odoo Portal
<../../websites/website/configuration/domain_names>`{.interpreted-text
role="doc"}.
:::

::: group-tab
Odoo.sh

The custom subdomain must be added to the `settings of the project
<../../../administration/odoo_sh/getting_started/settings>`{.interpreted-text
role="doc"}:

![Adding a custom subdomain for mail to Odoo.sh project settings.](email_servers_inbound/custom-subdomain-sh.png)
:::
:::::

## Infinite email loops {#email-inbound-loops}

In some cases, infinite mailing loops can be created. Odoo provides some
protection against such loops, ensuring the same sender cannot send too
many emails **that would create records** to an alias in a specific time
span.

By default, an email address can send up to 20 emails in 120 minutes. If
more emails are sent, they are blocked and the sender receives the
following message:

![Bounce email received after attempting contact too many times an alias.](email_servers_inbound/bounce-mail-loop.png)

To change the default behavior, enable
`developer-mode`{.interpreted-text role="ref"}, then go to `Settings
--> Technical --> Parameters: System Parameters`{.interpreted-text
role="menuselection"} to add two parameters.

- For the first parameter, enter [mail.gateway.loop.minutes]{.title-ref}
  as the `Key`{.interpreted-text role="guilabel"} and choose a number of
  minutes as the `Value`{.interpreted-text role="guilabel"}
  ([120]{.title-ref} is the default behavior).
- For the second parameter, enter
  [mail.gateway.loop.threshold]{.title-ref} as the
  `Key`{.interpreted-text role="guilabel"} and choose a number of emails
  as the `Value`{.interpreted-text role="guilabel"} ([20]{.title-ref} is
  the default behavior).

## Allow alias domain system parameter

Incoming aliases are set in the Odoo database to create records by
receiving incoming emails. To view aliases set in the Odoo database,
first activate the `developer mode <developer-mode>`{.interpreted-text
role="ref"}. Then, go to
`Settings app --> Technical --> Aliases`{.interpreted-text
role="menuselection"}.

The following system parameter,
[mail.catchall.domain.allowed]{.title-ref}, set with allowed alias
domain values, separated by commas, filters out correctly addressed
emails to aliases. Setting the domains for which the alias can create a
ticket, lead, opportunity, etc., eliminates false positives where email
addresses with only the prefix alias, not the domain, are present.

In some instances, matches have been made in the Odoo database when an
email is received with the same alias prefix and a different domain on
the incoming email address. This is true in the sender, recipient, and
`CC (Carbon Copy)`{.interpreted-text role="abbr"} email addresses of an
incoming email.

::: example
When Odoo receives emails with the [commercial]{.title-ref} prefix alias
in the sender, recipient, or `CC (Carbon Copy)`{.interpreted-text
role="abbr"} email addresses (e.g. commercial@example.com), the database
falsely treats the email as the full [commercial]{.title-ref} alias,
with a different domain, and therefore, creates a
ticket/lead/opportunity/etc.
:::

To add the [mail.catchall.domain.allowed]{.title-ref} system parameter,
first, activate the `developer mode
<developer-mode>`{.interpreted-text role="ref"}. Then, go to
`Settings app --> Technical --> System Parameters`{.interpreted-text
role="menuselection"}. Click `New`{.interpreted-text role="guilabel"}.
Then, type in [mail.catchall.domain.allowed]{.title-ref} for the
`Key`{.interpreted-text role="guilabel"} field.

Next, for the `Value`{.interpreted-text role="guilabel"} field, add the
domains separated by commas. Manually
`fa-cloud-upload`{.interpreted-text role="icon"}
`(Save)`{.interpreted-text role="guilabel"}, and the system parameter
takes immediate effect.

![mail.catchall.domain.allowed system parameter set.](email_servers_inbound/allowed-domain.png)

## Local-part based incoming detection

When creating a new alias, there is an option to enable
`Local-part based incoming
detection`{.interpreted-text role="guilabel"}. If enabled, Odoo only
requires the local-part to match for routing an incoming email. If this
feature is turned off, Odoo requires the whole email address to match
for routing an incoming email.




--- SOURCE: general/email_communication/email_servers_outbound.md ---

# Manage outbound messages

## Sending emails with Odoo\'s default configuration {#email-outbound-default}

On **Odoo Online** and **Odoo.sh**, sending and receiving emails works
out of the box. No configuration is required.

When a database is created, the subdomain
[company-name.odoo.com]{.title-ref} is used to send and receive emails.
The deliverability is optimized for this subdomain as it uses Odoo's DNS
configuration.

::: example
If the database subdomain is [company-name.odoo.com]{.title-ref} and all
mailing configurations are the default ones, all emails will be sent
from [notifications@company-name.odoo.com]{.title-ref}.
:::

::: {#email-outbound-default-from-filtering}
This configuration is handled by the system parameter
[mail.default.from_filter]{.title-ref}. In case where the sender\'s
domain do not match the value of this parameter, the notification
address is used instead. Multiple values can be defined in this system
parameter: comma-separated, domains or full email addresses are all
allowed. Once an `outgoing mail server is configured
<email-outbound-different-servers-personalized>`{.interpreted-text
role="ref"}, the system parameter is no longer considered and the value
used is the `FROM filtering
<email-outbound-different-servers-personalized-from-filtering>`{.interpreted-text
role="ref"} of the mail server.
:::

![Odoo's default outbound messages configuration.](email_servers_outbound/diagram-inbound-mailing-method.png)

Emails are sent with [catchall@company-name.odoo.com]{.title-ref} as the
*reply-to* address. In addition, delivery errors are sent to
[bounce@company-name.odoo.com]{.title-ref}.

:::: note
::: title
Note
:::

The catchall, bounce, and notification addresses do not work like other
aliases. They do not have the vocation to create records in a database.
Emails sent to an alias are automatically routed and will reply to an
existing and linked record or will create a new one in the database.
::::

## Using a custom domain to send emails {#email-outbound-custom-domain}

The database can be configured to use a custom domain, in which case all
default email addresses are built using the custom domain. If the custom
domain is [company-name.com]{.title-ref}, the sender address will be
[notifications@company-name.com]{.title-ref}, the *reply-to* address
[catchall@company-name.com]{.title-ref}, and the *bounce* address
[bounce@company-name.com]{.title-ref}. The custom domain can be utilized
when sending emails either with Odoo's email servers or an external one.

This section assumes ownership of a custom domain. If not, a custom
domain must be purchased from a domain registrar such as GoDaddy,
Namecheap, or any alternative provider.

::: seealso
[Magic Sheet - Email domain name configuration
\[PDF\]](https://drive.google.com/drive/folders/1cW3watvBO4h190rz-a08AshUepVzDeg5)
:::

### Using a custom domain with Odoo's email server {#email-outbound-custom-domain-odoo-server}

On **Odoo Online** or **Odoo.sh**, some configurations are mandatory in
the custom domain\'s DNS to ensure good deliverability.

:::: warning
::: title
Warning
:::

Most of the configuration will be done on the domain provider's side,
and it might require some configuration on the mail server itself.
**Some technical knowledge is required.**
::::

The first step is to configure the
`SPF <email-domain-spf>`{.interpreted-text role="ref"} and
`DKIM <email-domain-dkim>`{.interpreted-text role="ref"} to be compliant
with Odoo's mail server.

Next, the custom domain must be set as the alias domain of a company.
Select the company, open the `Settings`{.interpreted-text
role="guilabel"}, and add the custom domain under the
`Alias Domain`{.interpreted-text role="guilabel"} field.

After adding the alias domain, click the
`oi-arrow-right`{.interpreted-text role="icon"}
(`internal link`{.interpreted-text role="guilabel"}) icon to assign more
companies to the custom domain if needed. Enable the
`developer-mode`{.interpreted-text role="ref"} mode to modify the
default aliases if desired:

- `Bounce Alias`{.interpreted-text role="guilabel"}: the mailbox used to
  catch delivery errors and populate the `red
  envelope <email-issues-outgoing-delivery-failure>`{.interpreted-text
  role="ref"} on the corresponding message.
- `Catchall Alias`{.interpreted-text role="guilabel"}: the default
  mailbox used to centralize all replies.
- `Default From Alias`{.interpreted-text role="guilabel"}: the default
  sender address.

:::: note
::: title
Note
:::

At the creation of the first alias domain, all companies will use it. If
you create a new company, the alias domain automatically set is the one
with the lowest priority (ad displayed on the alias domain list in
`developer-mode`{.interpreted-text role="ref"}).
::::

All email aliases (e.g., related to CRM or Helpdesk teams) must have
their corresponding mailbox in the custom domain mail server.

![Technical schema of external mail server configuration with Odoo.](email_servers_outbound/diagram-owned-domain-odoo-server.png)

To receive emails in the Odoo database within the corresponding chatter
(CRM, invoices, sales orders, etc.), one of these three methods must be
used:

- `Redirections/forwarding <email-inbound-custom-domain-redirections>`{.interpreted-text
  role="ref"},
- `Incoming mail servers <email-inbound-custom-domain-incoming-server>`{.interpreted-text
  role="ref"},
- `MX record <email-inbound-custom-domain-mx>`{.interpreted-text
  role="ref"} (requires advanced technical knowledge)

Using a custom domain implies that specific `local-parts
<email-outbound-custom-domain-smtp-server-local-part>`{.interpreted-text
role="ref"} might be used by Odoo to send emails.

### Sending emails with an external SMTP server {#email-outbound-custom-domain-smtp-server}

:::: note
::: title
Note
:::

If utilizing your own outgoing mail server, it must be paired with your
own domain, as updating the DNS of an Odoo subdomain is not feasible.
::::

To add an external SMTP server in Odoo, open
`Settings`{.interpreted-text role="guilabel"}, and enable the `Use
Custom Email Servers`{.interpreted-text role="guilabel"} option found
under the `Emails`{.interpreted-text role="guilabel"} section. Then,
click `Save`{.interpreted-text role="guilabel"} at the top of the page
to save the changes.

Returning to the `Emails`{.interpreted-text role="guilabel"} section,
click `Outgoing Email Servers`{.interpreted-text role="guilabel"}, then
[New]{.title-ref} to create an outgoing mail server record. Most fields
are the common parameters used to set up a connection to an SMTP server;
use the values provided by your email provider.

Once completed, click `Test Connection`{.interpreted-text
role="guilabel"}. Note that a successful test connection does not
confirm that the email will go out as some restriction might remain on
the provider side, thus, it is recommended to consult your provider's
documentation.

#### Local-part values {#email-outbound-custom-domain-smtp-server-local-part}

Below are presented the different local-part values that can be used by
Odoo to send emails. It might be required to whitelist them in your mail
server:

- The Alias Domain Bounce Alias (default value = [bounce]{.title-ref}),
- The Alias Domain Default From (default value =
  [notifications]{.title-ref}),
- The default admin address [admin@company-name.odoo.com]{.title-ref}
  or, if changed, the new value),
- The default Odoobot address
  [odoobot@company-name.odoo.com]{.title-ref} or, if changed, the new
  value),
- The specific FROM defined on an email marketing campaign,
- The specific FROM that can be defined in an email template.

::: seealso
\- `google_oauth`{.interpreted-text role="doc"} -
`azure_oauth`{.interpreted-text role="doc"}
:::

## Setting up different servers for transactional and mass emails {#email-outbound-different-servers}

### Personalized mail servers {#email-outbound-different-servers-personalized}

Transactional emails and mass mailings can be sent using separate email
servers in Odoo. Doing so means day-to-day emails, quotations, or
invoices sent to clients will be handled as *transactional emails*.
*Mass mailing emails*, including the sending of batches of invoices or
quotations, will be managed by the Marketing Automation or Email
Marketing application.

::: example
You can use services like Gmail, Amazon SES, or Brevo for transactional
emails, and services like Mailgun, Sendgrid, or Mailjet for mass
mailings.
:::

First, activate the `developer-mode`{.interpreted-text role="ref"} and
go to `Settings --> Technical -->
Email: Outgoing Mail Servers`{.interpreted-text role="menuselection"}.
There, add two outgoing email server records, one for the transactional
emails server and one for the mass mailings server. Enter a lower
`Priority`{.interpreted-text role="guilabel"} value for the
transactional server (e.g., [1]{.title-ref}) over the mass mailings
server (e.g., [2]{.title-ref}) so transactional emails are given
priority.

![Example of split between transaction and mass mailing mail servers.](email_servers_outbound/split-transaction-massmail-mail-servers.png)

Now, go to
`Email Marketing --> Configuration --> Settings`{.interpreted-text
role="menuselection"}, enable `Dedicated Server`{.interpreted-text
role="guilabel"}, and select the appropriate email server. Odoo uses the
server with the lowest priority value for transactional emails, and the
server selected here for mass mailings.

![Dedicated mail server on Email Marketing app settings.](email_servers_outbound/dedicated-mass-mail-server.png)

#### FROM filtering {#email-outbound-different-servers-personalized-from-filtering}

:::: important
::: title
Important
:::

It's **highly recommended** to configure the FROM Filtering on the
outgoing mail servers as per the instructions of your provider.
::::

The `FROM Filtering`{.interpreted-text role="guilabel"} field allows for
the use of a specific outgoing email server depending on the *From*
email address or domain that Odoo is sending on behalf of. The **value
must be a domain or a complete address** that matches the sender's email
address and is trusted on the outgoing mail server provider\'s side.

If FROM filtering is not used, emails will go out using the notification
address.

:::: warning
::: title
Warning
:::

Some outgoing mail servers require a specific configuration of the FROM
filter.
::::

When an email is sent from Odoo, the following sequence is used to
choose the outgoing email server:

- First, Odoo searches for a server that has the same FROM filtering
  value as the From value (i.e., email address) defined in the outgoing
  email. This configuration is ideal if all users of a company share the
  same domain but have different local-parts.

::: example
If the sender\'s email address is [test@example.com]{.title-ref}, only
an email server having a FROM filtering value equal to
[test@example.com]{.title-ref} or [example.com]{.title-ref} can be used.
:::

- If no server is found based on the first criteria, Odoo looks for the
  first server without a FROM filtering value set. The email will be
  overridden with the notification address.
- If no server is found based on the second criteria, Odoo uses the
  first server, and the email will be overridden with the notification
  address.

:::: note
::: title
Note
:::

To determine which server is first, Odoo uses the priority value (the
lower the value is, the higher the priority is). Failing to do so, the
first server is determined by the servers\' names, using alphabetical
order.
::::

- If there is no mail server, Odoo relies on the `system parameter
  <email-outbound-default-from-filtering>`{.interpreted-text role="ref"}
  value.

It is also possible to use Odoo\'s mail server for transactional emails
in addition to mass mailings.

### Using an external email server and Odoo's default server {#email-outbound-different-servers-external-odoo}

On Odoo Online and Odoo.sh, databases are started with Odoo\'s SMTP
server. If no outgoing mail server is set, the default Odoo\'s SMTP
server will be used.

![Adding a mail server using the Odoo\'s mail server with the CLI authentication.](email_servers_outbound/command-line-interface-option-mail-server.png)

::: example
If an outgoing mail server is used simultaneously with Odoo's default
server (CLI), the FROM filter of the outgoing mail server must contain a
custom domain, and the FROM filter of the CLI must contain Odoo's
subdomain. If there is no FROM filtering, the email will go out using
the notification address.
:::

![Splitting of Odoo mail server for transactional emails and Mail server for Mass mailing.](email_servers_outbound/split-mail-servers.png)

:::: note
::: title
Note
:::

On Odoo Online, the command line interface is equivalent to the default
Odoo mail server, using the same limit as if there was no outgoing mail
server in place.
::::

:::: tip
::: title
Tip
:::

On Odoo Online, the page also shows your daily email usage and your
daily limit. On Odoo.sh, you need to check on the monitor page the
number of outgoing emails that were sent.
::::

:::: note
::: title
Note
:::

On Odoo.sh, to use the command-line interface, an outgoing mail server
can be configured on the configuration file.
::::

:::: warning
::: title
Warning
:::

Odoo's mail server is meant for transactional emails and small-scale
marketing campaigns. The
`daily limit <email-issues-outgoing-delivery-failure-messages-limit>`{.interpreted-text
role="ref"} depends on the database type and the applications used.
::::

## Using a custom domain with an external email server {#email-outbound-custom-domain-external-server}

Similar to the
`previous chapter <email-outbound-different-servers-external-odoo>`{.interpreted-text
role="ref"}, proper configuration might be needed to ensure that the
external email server is allowed to send emails using your custom
domain. Refer to your provider's documentation to properly set up the
relevant records (SPF, DKIM, and DMARC). A list of the
`most common providers is available
<email-domain-providers-documentation>`{.interpreted-text role="ref"}.

:::: note
::: title
Note
:::

DNS configuration is required when you use your own domain. If an
external outgoing mail server is used, configuring the records as
described in the `Odoo DNS configuration for our mail
servers documentation <email_domain>`{.interpreted-text role="doc"}
**will not have the desired effect**, as it is independent of Odoo when
using a custom email server. Odoo does not allow the configuration of
Odoo\'s subdomain.
::::

## Port restriction {#email-outbound-port-restriction}

Port 25 is blocked for security reasons on Odoo Online and Odoo.sh. Try
using port 465, 587, or 2525 instead.

## Alias domain {#email-outbound-alias-domain}

The catchall domain is company-specific. By default, all companies share
Odoo's subdomain (e.g., [company-name.odoo.com]{.title-ref}), but each
company may have its own custom email domain.

When the `developer-mode`{.interpreted-text role="ref"} is activated,
the alias domain options are available by going to
`Settings --> Technical --> Email: Alias Domains`{.interpreted-text
role="menuselection"}.

:::: warning
::: title
Warning
:::

Any modification of the alias domain must be done very carefully. If one
of the aliases (bounce, catchall, default from) is changed, all previous
emails that are not properly redirected to the new aliases will be lost.
::::

The `Default From Alias`{.interpreted-text role="guilabel"} field can be
filled with a local-part of the email address (by default
[notifications]{.title-ref}) or a full email address. Configure it to
determine the [FROM]{.title-ref} header of your emails. If a full email
address is used, all outgoing emails will be overwritten with this
address.

## Notification system {#email-outbound-notifications}

When an email is sent from the chatter, customers can reply directly to
it. If a customer replies directly to an email, the answer is logged in
the same chatter, thus functioning as a message thread related to the
record.

Upon receiving the reply, Odoo then uses the subscribed followers (based
on the subscribed subtypes) to send them a notification by email, or in
the Odoo inbox, depending on the user's preferences.

::: example
If a customer with the email address ["Mary"
\<mary@customer.example.com\>]{.title-ref} makes a direct reply to an
email coming from the Odoo database, Odoo\'s default behavior is to
redistribute the email\'s content to all other followers within the
thread.

As Mary's domain does not belong to the alias domain, Odoo overrides the
email address and uses the notification email address to notify the
followers. This override depends on the configuration done in the
database. By default, on Odoo Online and Odoo.sh, the email
[FROM]{.title-ref} address will be overridden with the value
[notifications@company-name.odoo.com]{.title-ref} instead of
[mary@customer.example.com]{.title-ref}.

The address is constructed using the name of the sender and [{alias
domain, default from alias}]{.title-ref}@\`{alias domain, domain
name}\`, by default, [notifications@company-name.odoo.com]{.title-ref}.
:::

## Using a unique email address for all outgoing emails {#email-outbound-unique-address}

To force the email address from which emails are sent, activate the
`developer-mode`{.interpreted-text role="ref"}, and go to
`Settings --> Technical --> Email: Alias Domains`{.interpreted-text
role="menuselection"}. On the `Default From
Alias`{.interpreted-text role="guilabel"}, use the local-part or a
complete email address as the value.

:::: warning
::: title
Warning
:::

If a **complete address** is used as the
`Default From Alias`{.interpreted-text role="guilabel"} value, **all**
outgoing emails will be overwritten by this address.
::::




--- SOURCE: general/email_communication/faq.md ---

# Common emailing issues and solutions

This page lists the most common emailing issues and their solutions.

## Odoo is not an email provider {#email-issues-provider}

Odoo does not function like a classic email inbox, such as Gmail,
Outlook, Yahoo, etc.

While Odoo uses emails as a way to notify and communicate with
users/customers, it is, by design, not a replacement for a dedicated
email server. Therefore, it might not behave in the expected way when
compared to a traditional email inbox.

The main differences are the following:

- By default, once a notification or transactional email (quote,
  invoice, direct message to a contact) is sent out successfully, the
  email object is deleted. The email message\'s content lives in the
  chatter of the related record. It prevents cluttering the database
  with multiple copies of the content of the same email (when sent to
  multiple recipients) if the content is already present in the chatter.
- There is no concept of (blind) carbon copy (\[B\]CC). Odoo uses the
  concept of *followers* added to a chatter to automatically decide when
  and how `a contact is notified
  <email-outbound-notifications>`{.interpreted-text role="ref"} or
  receives a copy of an email.
- Incoming emails are handled by checking if the *TO* email address is a
  valid email address in the Odoo database or, in case of a reply email,
  if there is a reference in the email header that matches a message
  sent from the Odoo database. All other emails will be bounced and
  **not** temporarily parked in a spam or quarantine folder. In other
  words, any email unrelated to an Odoo database is lost.

## Outgoing emails {#email-issues-outgoing}

### Changing the email address of the admin user account {#email-issues-outgoing-admin-address}

When an Odoo database is created, the main admin account is assigned a
placeholder email address. It is recommended to **replace the admin
email address** with a valid email address to prevent outgoing email
issues.

To do so, on the admin account, click the user icon, click
`My Profile`{.interpreted-text role="guilabel"} (or
`Preferences`{.interpreted-text role="guilabel"}), and update the
`Email`{.interpreted-text role="guilabel"} field found under the
`Preferences`{.interpreted-text role="guilabel"} tab. Either use any
other email address or use your Odoo subdomain (e.g.,
[company-name.odoo.com]{.title-ref}) and [admin]{.title-ref} for the
local-part (e.g., [admin@company-name.odoo.com]{.title-ref}).

### Delivery failure {#email-issues-outgoing-delivery-failure}

When a message is sent, an `fa-envelope-o`{.interpreted-text
role="icon"} `(envelope)`{.interpreted-text role="guilabel"} icon is
displayed in the chatter. The icon turns red when delivery has failed
for at least one recipient.

![Red envelope icon displayed in the chatter.](faq/red-envelope.png)

Left-click the envelope to display information about the delivery, and,
if possible, the relevant
`error messages <email-issues-outgoing-delivery-failure-messages>`{.interpreted-text
role="ref"}.

![Example of a sending failure.](faq/sending-failures.png)

Click `See Error Details`{.interpreted-text role="guilabel"} to get
extra information for the fail reason, **if** Odoo was able to process
the original error or bounce email.

Click `Send & close`{.interpreted-text role="guilabel"} to retry sending
the email to all **toggled-on** (`fa-toggle-on`{.interpreted-text
role="icon"}) recipients under the `Try Again`{.interpreted-text
role="guilabel"} column. All **toggled-off**
(`fa-toggle-off`{.interpreted-text role="icon"}) recipients will be
ignored.

Click `Ignore all`{.interpreted-text role="guilabel"} to ignore all
currently failing emails and turn the envelope icon from red to white.

Unsent emails also appear in the Odoo email queue. To access it,
activate the `developer mode
<developer-mode>`{.interpreted-text role="ref"} and go to
`Settings --> Technical --> Email: Emails`{.interpreted-text
role="menuselection"}.

![Example of the technical email queue view.](faq/technical-menu-email-delivery-failed.png)

Failed emails display the `Delivery Failed`{.interpreted-text
role="guilabel"} status. Click `Retry`{.interpreted-text
role="guilabel"} to put a failed email in the email queue again. It will
then appear with the `Outgoing`{.interpreted-text role="guilabel"}
status. The email will be sent again the next time the scheduled action
for the email queue runs.

Optionally, queued emails can be sent immediately by clicking
`Send Now`{.interpreted-text role="guilabel"}. Click
`Cancel Email`{.interpreted-text role="guilabel"} to remove it from the
email queue.

:::: note
::: title
Note
:::

Sent emails are periodically cleaned from the queue. This is controlled
by the *Auto-Vacuum* scheduled action that cleans redundant data on your
Odoo database.
::::

#### Common error messages {#email-issues-outgoing-delivery-failure-messages}

##### Daily limit reached {#email-issues-outgoing-delivery-failure-messages-limit}

![Email limit reached warning.](faq/email-limit.png)

Odoo limits the number of emails that can be sent from an Odoo Online
database. Most email service providers (e.g., Google, Yahoo, etc.) will
blacklist Odoo\'s server IP if Odoo\'s email server is sending too many
emails to addresses that do not exist or are no longer valid. It also
applies to unsolicited spam emails sent through an Odoo database.

The default daily email limit varies between **5 and 200 emails**. The
exact limit is depends on several factors (subject to change):

- Type of database subscription (one app free, trial, paying
  subscription)
- Apps installed (i.e., Email Marketing, Marketing Automation)
- If a database migration is ongoing

If the daily limit is reached, you can:

- Contact `Odoo Support <email-issues-support>`{.interpreted-text
  role="ref"} to increase your email quota. The following factors will
  be taken into account:
  1.  Numbers of users on the database

  2.  Apps installed

  3.  Bounce rate (the percentage of email addresses that did not
      receive emails because they were returned by an email server on
      their way to the final recipient).

  4.  Whether your
      `email aliases are correctly set up and use the appropriate custom domains
      <email-outbound-alias-domain>`{.interpreted-text role="ref"}.

      :::: tip
      ::: title
      Tip
      :::

      When using a custom domain, verify that
      `SPF <email-domain-spf>`{.interpreted-text role="ref"}, `DKIM
      <email-domain-dkim>`{.interpreted-text role="ref"}, and
      `DMARC <email-domain-dmarc>`{.interpreted-text role="ref"} are
      correctly configured so that
      `Odoo's email servers are allowed to send emails on your custom domain's behalf
      <email-outbound-custom-domain-odoo-server>`{.interpreted-text
      role="ref"}.
      ::::
- `Use an external outgoing email server <../email_communication>`{.interpreted-text
  role="doc"} to be independent of Odoo\'s email limit.
- Wait until the next day, and retry sending the email. To do so,
  activate the `developer mode
  <developer-mode>`{.interpreted-text role="ref"}, go to
  `Settings --> Technical --> Email: Emails`{.interpreted-text
  role="menuselection"}, and click `Retry`{.interpreted-text
  role="guilabel"} next to the unsent email.

:::: important
::: title
Important
:::

The daily email limit counts every email leaving your Odoo database,
triggered either manually or automatically. By default, any internal
message, notification, logged note, etc., counts as an email if it
notifies someone via email. This can be mitigated by receiving
`notifications in
Odoo <discuss_app/notification_preferences>`{.interpreted-text
role="ref"} instead of by email.
::::

##### SMTP error {#email-issues-outgoing-delivery-failure-messages-smtp}

[Simple Mail Transport Protocol
(SMTP)](https://en.wikipedia.org/wiki/Simple_Mail_Transfer_Protocol) is
a standard used to transmit emails between email servers and/or email
clients.

If you use
`an external STMP server to send emails <email-outbound-custom-domain-smtp-server>`{.interpreted-text
role="ref"}, a standard set of [SMTP error codes
exists](https://en.wikipedia.org/wiki/List_of_SMTP_server_return_codes#Common_status_codes).
While the code numbers are not specific to Odoo, the exact content of
the error message might vary from email server to email server.

::: example
A 550 SMTP permanent delivery error from sendgrid.com:

``` text
Mail Delivery Failed
Mail delivery failed via SMTP server 'None'.
SMTPDataError: 550
The from address does not match a verified Sender Identity. Mail cannot be sent until this
error is resolved. Visit https://sendgrid.com/docs/for-developers/sending-email/sender-identity/
to see the Sender Identity requirements
```

The error message indicates that you tried sending an email from an
unverified email address. Investigating the outgoing email server
configuration or the default *FROM* address of your database is a good
starting point to troubleshoot the issue, and verify that you
whitelisted the email address on the side of sendgrid.com.
:::

Usually, inputting the error message content in a Google search can
yield information on what the root cause might be and how to correct the
issue.

If the issue cannot be resolved and keeps occurring, contact
`Odoo Support
<email-issues-support>`{.interpreted-text role="ref"}.

##### No error populated {#email-issues-outgoing-delivery-failure-messages-no-error}

Odoo is not always capable of providing information on the reason a
delivery failed. The different email providers implement their own
policy on bounced emails, and it is not always possible for Odoo to
interpret it correctly.

If there is a recurring problem with the same customer or the same
domain, contact `Odoo
Support <email-issues-support>`{.interpreted-text role="ref"}.

:::: note
::: title
Note
:::

One of the most common reasons for an email failing to be sent with no
error message is related to the
`SPF <email-domain-spf>`{.interpreted-text role="ref"} or
`DKIM <email-domain-dkim>`{.interpreted-text role="ref"} configuration.
Also, verify that the implemented email notification setup is adapted to
your business needs. See the
`Communication in Odoo by email documentation <../email_communication>`{.interpreted-text
role="doc"} for more information.
::::

### Execution time {#email-issues-outgoing-execution-time}

The exact time of an email is sent is handled by a system utility *cron*
(scheduled action) that can be used to schedule tasks to run
automatically at predetermined intervals. Odoo uses this approach to
send emails that are considered \"not urgent\" (i.e., newsletters
formats such as mass mailing, marketing automation, and events). This
avoids cluttering the mail servers and, instead, prioritizes individual
communication.

::: spoiler
What is a cron?

A cron is an action that Odoo runs in the background to execute
particular code to complete a task. Odoo also creates cron triggers in
certain workflows that can trigger a scheduled action earlier than its
scheduled date. Running a scheduled action manually or changing its
frequency is generally not recommended, as it might create errors or
break specific workflows.
:::

By default, for the normal email queue, the
`Mail: Email Queue Manager`{.interpreted-text role="guilabel"} cron runs
every 60 minutes. The lowest running interval for a cron is 5 minutes.
Odoo recommends an interval of 15 minutes to ensure proper operation. If
the interval is too short, not all emails may be processed, which may
cause the cron to timeout.

Emails that are considered urgent (from one person to another, such as
sales orders, invoices, purchase orders, etc.) are sent immediately.
They do not show up under `Settings -->
Technical --> Email: Emails`{.interpreted-text role="menuselection"},
unless their delivery fails.

![Example of sending information header when a mailing campaign is queued.](faq/email-marketing-asap-notice.png)

Email campaigns are sent as soon as possible (after clicking the
`Send`{.interpreted-text role="guilabel"} button) or at a scheduled time
(after clicking the `Schedule`{.interpreted-text role="guilabel"}
button).

For the email marketing queue, the
`Mail Marketing: Process queue`{.interpreted-text role="guilabel"} cron
runs once a day, but will be **automatically triggered early** if a
campaign is scheduled outside of this default frequency. If a mailing
list contains a large number of recipients, triggering the cron manually
multiple times is **not recommended**, as it will not accelerate the
processing time and might create errors.

:::: tip
::: title
Tip
:::

To edit crons, enable the
`developer mode <developer-mode>`{.interpreted-text role="ref"} and go
to
`Settings --> Technical --> Automation: Scheduled Actions`{.interpreted-text
role="menuselection"}.
::::

::: seealso
For more information about crons when using Odoo.sh, check out
`Odoo.sh frequent technical
questions <../../../administration/odoo_sh/advanced/frequent_technical_questions>`{.interpreted-text
role="doc"}.
:::

#### Email Marketing campaigns stuck in the queue {#email-issues-outgoing-execution-time-campaigns}

If multiple Email Marketing campaigns are put in the queue, they are
processed in chronological order based on their creation date.

::: example
If there are three campaigns: Campaign_1 (created 1st of January),
Campaign_2 (created 2nd of January), and Campaign_3 (created 3rd of
January), they are put in the queue by clicking `Send`{.interpreted-text
role="guilabel"} on all three of them.

![Example of three email marketing campaigns.](faq/email-marketing-order-queue-example.png)

The cron will try to process Campaign_1, then Campaign_2, and finally
Campaign_3. It will not start processing Campaign_2 until it finishes
processing Campaign_1.

If an email campaign never leaves the queue, there might be an issue
with the campaign at the top of the queue. To troubleshoot, we could
remove Campaign_1 from the queue by clicking the
`Cancel`{.interpreted-text role="guilabel"} button, and see if the two
other campaigns are sent. Then we could try to fix Campaign_1 or contact
`Odoo Support <email-issues-support>`{.interpreted-text role="ref"}.
:::

## Incoming emails {#email-issues-incoming}

When there is an issue with incoming emails, there might not be an
indication, per se, in Odoo. It is the sending email client, who tries
to contact a database, that will get a bounce message (most of the time
a `550: mailbox unavailable`{.interpreted-text role="guilabel"} error
message).

### Email is not received {#email-issues-incoming-not-received}

:::::::: tabs
::: tab
Odoo Online

Contact `Odoo Support <email-issues-support>`{.interpreted-text
role="ref"} if there is a recurring issue with the same client or
domain.
:::

:::::: tab
Odoo.sh

You can use database logs to understand and fix issues. Logs are a
stored collection of all the tasks completed in a database. They are a
text-only representation, complete with timestamps of every action taken
on the Odoo database. This can be helpful to track emails leaving the
database. Sending failures can also be seen by logs when they indicate
that the message tried to send repeatedly. Logs show every action to the
email servers from the database.

Live logs are located in the `~/logs/`{.interpreted-text role="file"}
folder (accessed by the command line or on the Odoo.sh dashboard). Log
files are created everyday at 5:00 AM (UTC).

:::: tip
::: title
Tip
:::

The two most recent files, for the current day and the previous one, are
named `odoo.log`{.interpreted-text role="file"} and
`odoo.log.1`{.interpreted-text role="file"}.

Log files for older dates are named using their dates and are
compressed. Use the commands `grep`{.interpreted-text role="command"}
and `zgrep`{.interpreted-text role="command"} (for the compressed ones)
to search through the files.
::::

::: seealso
For more information on logs and how to access them via the Odoo.sh
dashboard, refer to the
`Odoo.sh logs documentation <odoo-sh/branches/tabs/logs>`{.interpreted-text
role="ref"}.

For more information on accessing logs via the command line, refer to
the `developer
logging documentation <reference/cmdline/server/logging>`{.interpreted-text
role="ref"}.
:::
::::::
::::::::

## Information for Odoo Support {#email-issues-support}

Here is a list of helpful information to include when reaching out to
[Odoo Support](https://www.odoo.com/help):

1.  An export of the full email from the inbox. These are usually in
    [.eml]{.title-ref} or [.msg]{.title-ref} file formats containing
    technical information required for an investigation. The exact
    process to download the file depends on your third-party email
    provider.

    ::: seealso
    \- [Gmail Help Center: Trace an email with its full
    header](https://support.google.com/mail/answer/29436)
    - [Microsoft Support: View internet message headers in
      Outlook](https://support.microsoft.com/en-us/office/view-internet-message-headers-in-outlook-cd039382-dc6e-4264-ac74-c048563d212c#tab=Web)
    :::

    When using a local email software (e.g., Thunderbird, Apple Mail,
    Outlook, etc.) to synchronize emails, it is usually possible to
    export the local copies of emails as EML/MSG files. Refer to the
    documentation of the software used for more information.

    :::: tip
    ::: title
    Tip
    :::

    If possible, the EML/MSG file should be based on the original email
    that was sent and is failing or is causing issues.

    For **incoming emails**: if possible contact the original email
    sender and request an EML/MSG copy of the original email. Sending a
    copy of the original email (forwarded) only contains partial
    information related to the troubleshooting.

    For **outgoing emails**: either provide the EML/MSG of the email or
    specify what record in the database is affected (e.g., sales order
    number, contact name, invoice number) and the date/time when the
    email was sent (e.g., email sent on the 10th January 2024 11:45 AM
    Central European Time).
    ::::

2.  An explanation of the exact flow that is being followed to normally
    receive those emails in Odoo. Try to answer the following questions:

    - Is this a notification message from a reply being received in
      Odoo?
    - Is this a message being sent from the Odoo database?
    - Is there an incoming email server being used, or is the email
      being redirected/forwarded through a custom email server or
      provider?
    - Is there an example of an email that has been correctly forwarded?
    - Have you changed any email-related settings recently? Did it stop
      working after those changes?

3.  An answer to the following questions:

    - Is it a generic issue or is it specific to a use case? If specific
      to a use case, which one?
    - Is it working as expected? In case the email is sent using Odoo,
      the bounce email should reach the Odoo database and display the
      `red envelope <email-issues-outgoing-delivery-failure>`{.interpreted-text
      role="ref"}.




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

Odoo
`blocks port 25 <email-outbound-port-restriction>`{.interpreted-text
role="ref"} on Odoo Online and Odoo.sh databases.
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

![Add a sender domain or address in the Mailjet interface.](mailjet_api/add-domain-email.png)

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

![Check DNS record in Mailjet.](mailjet_api/check-dns.png)

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

show-content

:   

# Communication in Odoo by email

Communication in Odoo related to records such as CRM opportunities,
sales orders, invoices, \... have a discussion thread called
**chatter**, often displayed on the right side of the record.

On the chatter, you can send direct emails or Odoo notifications to the
followers of a document (depending on their notification preferences),
log internal notes, send WhatsApp messages or SMSes, and schedule
activities.

If a follower replies to a message, the reply updates the chatter, and
Odoo relays it to the followers as a notification. All emails - outgoing
and incoming - appear in the same chatter.

## Odoo Online and Odoo.sh users {#email-online-sh}

On Odoo Online and Odoo.sh, outgoing and incoming emails work out of the
box, **nothing needs to be done**. Everything is already configured on
your subdomain.

By default, outgoing emails use the following
`notification email address
<email-outbound-notifications>`{.interpreted-text role="ref"}
[notifications@company-name.odoo.com]{.title-ref}.

### Using another domain {#email-online-sh-domain}

If you prefer not to have outgoing emails sent from Odoo\'s subdomain
[\@company-name.odoo.com]{.title-ref} but instead
`from your own domain <email-outbound-custom-domain>`{.interpreted-text
role="ref"}, **additional configuration will be necessary** on the
domain and within Odoo. This introduces an extra layer of complexity and
necessitates technical knowledge (mainly regarding DNS and mail
protocols).

By adding a domain and configuring the administration access rights, you
can also access the
`new domain alias <email-outbound-alias-domain>`{.interpreted-text
role="ref"} page to configure the alias of your companies. If only one
domain is configured, this domain will be shared by all companies on the
database.

If you want to keep using Odoo\'s mail server, you will have to
`configure the SPF and DKIM
<email-domain-spf>`{.interpreted-text role="ref"}.

If
`you want to use your own mail server <email-outbound-custom-domain-smtp-server>`{.interpreted-text
role="ref"}, you will have to follow the mail server provider\'s
specific documentation.

For incoming emails, after adding your own domain,
`replies from customers will come back to
your domain <email-inbound-custom-domain>`{.interpreted-text
role="ref"}, and you will need to use one of the three possible ways to
get the emails back into Odoo (using either `incoming mail server
<email-inbound-custom-domain-incoming-server>`{.interpreted-text
role="ref"}, `redirection/forwarding
<email-inbound-custom-domain-redirections>`{.interpreted-text
role="ref"} or `DNS MX record
<email-inbound-custom-domain-mx>`{.interpreted-text role="ref"}).
Everything is covered in the `Manage inbound messages
documentation <email_communication/email_servers_inbound>`{.interpreted-text
role="doc"}.

## On-premise users {#email-on-premise}

If you are on-premise, you will have to completely configure your
outgoing and incoming emails:

- For outgoing emails, you will need
  `to use an SMTP server and a custom domain
  <email-outbound-custom-domain-odoo-server>`{.interpreted-text
  role="ref"}.
- For incoming emails, set the frequency at which you fetch new emails
  low enough for responsiveness but high enough in order not to stress
  your system or provider. Due to this reason and the simplicity of this
  configuration, we usually advise on using incoming mail servers. To
  use an SMTP server, check out the
  `"Use a custom domain for inbound messages" documentation
  <email-inbound-custom-domain>`{.interpreted-text role="ref"}.

## Using a third-party provider\'s mail server {#email-third-party-server}

Odoo\'s documentation also covers several popular mail servers. As they
require specific authorizations and configuration, they add a layer of
complexity. For this reason, using Odoo\'s outgoing mail server is
recommended.

- `Outlook documentation <email_communication/azure_oauth>`{.interpreted-text
  role="doc"}
- `Gmail documentation <email_communication/google_oauth>`{.interpreted-text
  role="doc"}
- `Mailjet documentation <email_communication/mailjet_api>`{.interpreted-text
  role="doc"}

:::: note
::: title
Note
:::

Every provider has its own limitations. Research the desired provider
*before* configuring it. For example, Outlook and Gmail might not be
suitable for large marketing campaigns.
::::

::: seealso
\- `Activities <../essentials/activities>`{.interpreted-text
role="doc"} - `Discuss app <../productivity/discuss>`{.interpreted-text
role="doc"} -
`Digest emails <companies/digest_emails>`{.interpreted-text
role="doc"} -
`Email Marketing app <../marketing/email_marketing>`{.interpreted-text
role="doc"} -
`Email templates <companies/email_template>`{.interpreted-text
role="doc"} -
`Expense creation using an email alias <expenses/email_expense>`{.interpreted-text
role="ref"} -
`Helpdesk ticket creation using an email alias <helpdesk/receiving_tickets/email-alias>`{.interpreted-text
role="ref"} -
`Lead creation using an email alias <crm/configure_email_alias>`{.interpreted-text
role="ref"} -
`Project task creation using an email alias <task_creation/email_alias>`{.interpreted-text
role="ref"} - `Technical mail gateway for on-premise users
<../../administration/on_premise/email_gateway>`{.interpreted-text
role="doc"} -
`Technical start of Odoo database with an outgoing mail server configured from the
command-line interface <reference/cmdline/server/emails>`{.interpreted-text
role="ref"}
:::

::: {.toctree titlesonly=""}
email_communication/email_servers_inbound
email_communication/email_servers_outbound
email_communication/email_domain email_communication/azure_oauth
email_communication/google_oauth email_communication/mailjet_api
email_communication/faq
:::




--- SOURCE: general/integrations/cloud_storage.md ---

# Cloud Storage

The cloud storage integration allows to store
`chatter <../../productivity/discuss/chatter>`{.interpreted-text
role="doc"} and email attachments on the
`Google Cloud <cloud-storage/google>`{.interpreted-text role="ref"} or
`Microsoft Azure
<cloud-storage/microsoft>`{.interpreted-text role="ref"} platform
instead of the database\'s server.

The module can be used to prevent large files from being uploaded to and
downloaded from a database\'s server or when a database requires more
data storage.

:::: note
::: title
Note
:::

\- Files generated by Odoo (e.g., sales orders) and Documents/Sign app
files are always stored on the database\'s server. - A database\'s
storage limit depends on its hosting solution:

- Odoo Online: 100 GB
- Odoo.sh:
  - Shared hosting: 512 GB
  - Dedicated hosting: 4 TB
- On-premise: limited by the infrastructure in place.
::::

## Google Cloud {#cloud-storage/google}

First, register and sign in to [Google Cloud](https://cloud.google.com).

### Service account {#cloud-storage/google/service}

1.  Open the navigation sidebar on the Google Cloud console, then go to
    `IAM & Admin
    --> Service Accounts --> Create service account`{.interpreted-text
    role="menuselection"}.

2.  Define a `Service account name`{.interpreted-text role="guilabel"},
    click `Create and continue`{.interpreted-text role="guilabel"}, then
    `Done`{.interpreted-text role="guilabel"}.

    ![Creating a Google Cloud service account](cloud_storage/service-account.png)

3.  Note down the service account\'s `Email`{.interpreted-text
    role="guilabel"} as it will be used during the `cloud
    storage bucket configuration <cloud-storage/google/bucket>`{.interpreted-text
    role="ref"}.

4.  Click the `fa-ellipsis-v`{.interpreted-text role="icon"}
    (`Actions`{.interpreted-text role="guilabel"}) button, then select
    `Manage
    keys`{.interpreted-text role="guilabel"}.

    ![Accessing the \"Manage keys\" action](cloud_storage/manage-keys.png)

5.  Go to `Add key --> Create new key`{.interpreted-text
    role="menuselection"}, select `JSON`{.interpreted-text
    role="guilabel"} as the `Key
    type`{.interpreted-text role="guilabel"}, and click
    `Create`{.interpreted-text role="guilabel"}. Store the downloaded
    JSON file containing the key securely. It will be used when
    `configuring Odoo <cloud-storage/google/odoo>`{.interpreted-text
    role="ref"}.

    ![Creating a Google Cloud service account\'s JSON key](cloud_storage/create-key.png)

### Cloud storage bucket {#cloud-storage/google/bucket}

1.  Open the navigation sidebar on the Google Cloud console, then go to
    `Cloud
    Storage --> Buckets --> Create`{.interpreted-text
    role="menuselection"}.

2.  Enter a bucket name following the [bucket naming
    guidelines](https://cloud.google.com/storage/docs/buckets?_gl=1*h4hwrv*_ga*MTcwNDM2NDE1Ny4xNzQzNzUxOTEy*_ga_WH2QY8WWF5*MTc0Mzc2NDMyOS4zLjEuMTc0Mzc2NDMyOS42MC4wLjA.#naming)
    and note it down as it will be used when
    `configuring Odoo <cloud-storage/google/odoo>`{.interpreted-text
    role="ref"}.

3.  Configure the bucket as desired and click `Create`{.interpreted-text
    role="guilabel"} when done.

    ![Creating a bucket](cloud_storage/create-bucket.png)

4.  Click the `fa-ellipsis-v`{.interpreted-text role="icon"}
    (`More actions`{.interpreted-text role="guilabel"}) button, then
    select `Edit
    access`{.interpreted-text role="guilabel"}.

    ![Accessing the \"Edit access\" action of a Google Cloud storage bucket](cloud_storage/bucket-actions.png)

5.  Click `Add principal`{.interpreted-text role="guilabel"} and paste
    the service account\'s email in the `New
    principals`{.interpreted-text role="guilabel"} field.

6.  Select `Storage Admin`{.interpreted-text role="guilabel"} as
    `Role`{.interpreted-text role="guilabel"} under the
    `Cloud Storage`{.interpreted-text role="guilabel"} section and click
    `Save`{.interpreted-text role="guilabel"}.

    ![Adding a principal to a Google Cloud storage bucket](cloud_storage/bucket-access.png)

### Odoo configuration {#cloud-storage/google/odoo}

1.  `Install <general/install>`{.interpreted-text role="ref"} the
    `Cloud Storage Google`{.interpreted-text role="guilabel"} module.
2.  Open the `Settings`{.interpreted-text role="guilabel"} app and
    select `Cloud Storage`{.interpreted-text role="guilabel"} in the
    navigation sidebar.
3.  Select `Google Cloud Storage`{.interpreted-text role="guilabel"} as
    the `Cloud Storage Provider for new
    attachments`{.interpreted-text role="guilabel"}.
4.  Enter the `Google Bucket Name`{.interpreted-text role="guilabel"} as
    `previously set <cloud-storage/google/bucket>`{.interpreted-text
    role="ref"}.
5.  Click `Upload your file`{.interpreted-text role="guilabel"} next to
    `Google Service Account Key`{.interpreted-text role="guilabel"} and
    select the
    `downloaded JSON file <cloud-storage/google/service>`{.interpreted-text
    role="ref"}.
6.  Set a `Minimum File Size (bytes)`{.interpreted-text role="guilabel"}
    for attachments to be stored on Google Cloud.

## Microsoft Azure {#cloud-storage/microsoft}

First, register and sign it to [Microsoft
Azure](https://azure.microsoft.com).

### App registration {#cloud-storage/microsoft/app}

1.  On the Microsoft Azure portal, search for the
    `App registrations`{.interpreted-text role="guilabel"} service and
    open it.

2.  Click `New registration`{.interpreted-text role="guilabel"}, enter
    an application `Name`{.interpreted-text role="guilabel"}, select
    `Accounts in any organizational directory (Any Microsoft Entra ID tenant -
    Multitenant)`{.interpreted-text role="guilabel"} under
    `Supported account types`{.interpreted-text role="guilabel"}, and
    click `Register`{.interpreted-text role="guilabel"}.

    ![Registering a Microsoft Azure app](cloud_storage/app-registration.png)

3.  Note down the `Application (client) ID`{.interpreted-text
    role="guilabel"} and `Directory (tenant) ID`{.interpreted-text
    role="guilabel"} as they will be used when
    `configuring Odoo <cloud-storage/microsoft/odoo>`{.interpreted-text
    role="ref"}.

4.  Click `Add a certificate or secret`{.interpreted-text
    role="guilabel"} next to `Client credentials`{.interpreted-text
    role="guilabel"}, click `New client secret`{.interpreted-text
    role="guilabel"}, then `Add`{.interpreted-text role="guilabel"}.

    :::: important
    ::: title
    Important
    :::

    For security reasons, leave the `Expires`{.interpreted-text
    role="guilabel"} field on [180 days (6 months)]{.title-ref} or
    choose a shorter expiration interval. Before the secret expires,
    adding a new client secret and updating
    `Odoo’s configuration <cloud-storage/microsoft/odoo>`{.interpreted-text
    role="ref"} with the new value is necessary.
    ::::

5.  Copy the client secret\'s `Value`{.interpreted-text role="guilabel"}
    and store it securely. It will be used when
    `configuring Odoo <cloud-storage/microsoft/odoo>`{.interpreted-text
    role="ref"}.

    ![Adding a secret to a Microsoft Azure app](cloud_storage/app-client-secret.png)

### Storage account {#cloud-storage/microsoft/storage}

1.  Search for the `Storage accounts`{.interpreted-text role="guilabel"}
    service, open it, and click `Create`{.interpreted-text
    role="guilabel"}.

2.  Click `Create new`{.interpreted-text role="guilabel"} below the
    `Resource group`{.interpreted-text role="guilabel"} field, enter a
    `Name`{.interpreted-text role="guilabel"}, and click
    `OK`{.interpreted-text role="guilabel"}.

3.  Enter a unique `Storage account name`{.interpreted-text
    role="guilabel"} and note it down as it will be used when
    `configuring Odoo <cloud-storage/microsoft/odoo>`{.interpreted-text
    role="ref"}.

4.  Configure the storage account as desired, and, when done, click
    `Review + create`{.interpreted-text role="guilabel"}, then
    `Create`{.interpreted-text role="guilabel"}.

    ![Creating a Microsoft Azure storage account](cloud_storage/storage-account.png)

#### Container {#cloud-storage/microsoft/container}

1.  Open your storage account resource, for example by searching for its
    name, and select `Containers`{.interpreted-text role="guilabel"}
    under `Data storage`{.interpreted-text role="guilabel"} in the
    navigation sidebar.

2.  Enter a `Name`{.interpreted-text role="guilabel"}, note it down as
    it will be used when `configuring Odoo
    <cloud-storage/microsoft/odoo>`{.interpreted-text role="ref"}, and
    click `Create`{.interpreted-text role="guilabel"}.

    ![Creating a Microsoft Azure storage container](cloud_storage/storage-account-container.png)

#### Resource sharing {#cloud-storage/microsoft/resource}

1.  Select `Resource sharing (CORS)`{.interpreted-text role="guilabel"}
    under `Settings`{.interpreted-text role="guilabel"} on the storage
    account\'s navigation sidebar.

2.  Create a first CORS blob service rule:

    - `Allowed origins`{.interpreted-text role="guilabel"}:
      [\*]{.title-ref}
    - `Allowed methods`{.interpreted-text role="guilabel"}:
      [GET]{.title-ref}
    - `Allowed headers`{.interpreted-text role="guilabel"}:
      [Content-Type]{.title-ref}
    - `Exposed headers`{.interpreted-text role="guilabel"}:
      [Content-Type]{.title-ref}
    - `Max age`{.interpreted-text role="guilabel"}: [0]{.title-ref}

3.  Create a second CORS blob service rule and click
    `Save`{.interpreted-text role="guilabel"}:

    - `Allowed origins`{.interpreted-text role="guilabel"}:
      [\*]{.title-ref}
    - `Allowed methods`{.interpreted-text role="guilabel"}:
      [PUT]{.title-ref}
    - `Allowed headers`{.interpreted-text role="guilabel"}:
      [content-type,x-ms-blob-type]{.title-ref}
    - `Exposed headers`{.interpreted-text role="guilabel"}:
      [content-type,x-ms-blob-type]{.title-ref}
    - `Max age`{.interpreted-text role="guilabel"}: [0]{.title-ref}

    ![Creating Microsoft Azure storage account CORS rules](cloud_storage/resource-sharing.png)

#### Role assignment {#cloud-storage/microsoft/role}

1.  Select `Access control (IAM)`{.interpreted-text role="guilabel"} on
    the storage account\'s navigation sidebar, then click
    `Add`{.interpreted-text role="guilabel"} and select
    `Add role assignment`{.interpreted-text role="guilabel"}.

2.  Search for `Storage Blobs Data Contributor`{.interpreted-text
    role="guilabel"} and click `Next`{.interpreted-text
    role="guilabel"}.

    :::: note
    ::: title
    Note
    :::

    To remove the unnecessary [delete]{.title-ref} permission, create a
    `custom role
    <cloud-storage/microsoft/custom>`{.interpreted-text role="ref"} and
    search for the custom role\'s name instead.
    ::::

3.  Click `Select members`{.interpreted-text role="guilabel"}, enter the
    name of the `previously registered application
    <cloud-storage/microsoft/app>`{.interpreted-text role="ref"}, select
    it, and click `Select`{.interpreted-text role="guilabel"}.

4.  Click `Review + assign`{.interpreted-text role="guilabel"} twice.

    ![Adding a member to a container](cloud_storage/storage-account-role.png)

##### Custom role {#cloud-storage/microsoft/custom}

:::: note
::: title
Note
:::

This step is **optional**. However, removing the [delete]{.title-ref}
permission would prevent anyone managing to access the cloud storage\'s
credentials from deleting files.
::::

1.  Open your subscription resource, for example by searching for its
    name, select `Access
    control (IAM)`{.interpreted-text role="guilabel"} in the navigation
    sidebar, click `Add`{.interpreted-text role="guilabel"} and select
    `Add custom
    role`{.interpreted-text role="guilabel"}.
2.  Select the `JSON`{.interpreted-text role="guilabel"} tab and click
    `Edit`{.interpreted-text role="guilabel"}. Copy the code below, add
    your [subscription-id]{.title-ref} under
    [assignableScopes]{.title-ref} and change the [roleName]{.title-ref}
    ([Custom role]{.title-ref}) if desired, paste it, and click
    `Save`{.interpreted-text role="guilabel"}.

``` json
{
    "properties": {
        "roleName": "Custom role",
        "description": "",
        "assignableScopes": [
            "/subscriptions/subscription-id"
        ],
        "permissions": [
            {
                "actions": ["Microsoft.Storage/storageAccounts/blobServices/generateUserDelegationKey/action"],
                "notActions": [],
                "dataActions": ["Microsoft.Storage/storageAccounts/blobServices/containers/blobs/read", "Microsoft.Storage/storageAccounts/blobServices/containers/blobs/add/action"],
                "notDataActions": []
            }
        ]
    }
}
```

### Odoo configuration {#cloud-storage/microsoft/odoo}

1.  `Install <general/install>`{.interpreted-text role="ref"} the
    `Cloud Storage Azure`{.interpreted-text role="guilabel"} module.
2.  Open the `Settings`{.interpreted-text role="guilabel"} app and
    select `Cloud Storage`{.interpreted-text role="guilabel"} in the
    navigation sidebar.
3.  Select `Azure Cloud Azure`{.interpreted-text role="guilabel"} as the
    `Cloud Storage Provider for new
    attachments`{.interpreted-text role="guilabel"}.
4.  Enter:
    - the
      `storage account name <cloud-storage/microsoft/storage>`{.interpreted-text
      role="ref"} in the `Azure
      Account Name`{.interpreted-text role="guilabel"} field;
    - the
      `container name <cloud-storage/microsoft/container>`{.interpreted-text
      role="ref"} in the `Azure Container
      Name`{.interpreted-text role="guilabel"} field;
    - the
      `directory (tenant) ID <cloud-storage/microsoft/app>`{.interpreted-text
      role="ref"} in the `Azure Tenant
      ID`{.interpreted-text role="guilabel"} field;
    - the
      `application (client) ID <cloud-storage/microsoft/app>`{.interpreted-text
      role="ref"} in the `Azure Client
      ID`{.interpreted-text role="guilabel"} field; and
    - the
      `client secret's value <cloud-storage/microsoft/app>`{.interpreted-text
      role="ref"} in the `Azure Client
      Secret`{.interpreted-text role="guilabel"} field.
5.  Set a `Minimum File Size (bytes)`{.interpreted-text role="guilabel"}
    for attachments to be stored on Microsoft Azure.




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




--- SOURCE: general/integrations/google_translate.md ---

# Google Translate

*Google Translate* can be used to translate user generated text in the
Odoo chatter.

## Google API console

A majority of the setup for integrating *Google Translate* into Odoo is
done with the *Google API console*. Once the following processes are
complete, an *API key* is created to input in Odoo.

::: seealso
[Google Translate setup on
Google](https://cloud.google.com/translate/docs/setup)
:::

### Create a new project

To get started, go to the [Google API
Console](https://console.developers.google.com). Then, log in with a
*Google Workspace* account, if there is one. If not, log in with a
personal Gmail account (this should match the email address that has
billing attached to it).

Next, click `Create Project`{.interpreted-text role="guilabel"} on the
far-right of the `OAuth consent screen`{.interpreted-text
role="guilabel"}.

:::: tip
::: title
Tip
:::

If the *Google API Console* has existing projects, click the drop-down
menu next to the `Google Cloud`{.interpreted-text role="guilabel"} icon,
and a pop-over window appears. Next, click
`New Project`{.interpreted-text role="guilabel"} top-right of the
pop-over window.
::::

On the `New Project`{.interpreted-text role="guilabel"} screen, rename
the `Project name`{.interpreted-text role="guilabel"} to [Odoo
Translate]{.title-ref}, and browse for the `Location`{.interpreted-text
role="guilabel"}. Set the `Location`{.interpreted-text role="guilabel"}
as the *Google Workspace organization*. If a personal Gmail account is
being used, leave the `Location`{.interpreted-text role="guilabel"} as
`No Organization`{.interpreted-text role="guilabel"}.

![Project Name and Location for Google OAuth.](google_translate/new-project.png){.align-center}

Click on `Create`{.interpreted-text role="guilabel"} to finish this
step.

### API library

Next, the *Cloud Translation API* needs to be installed on this
newly-created project. To do that, click `Library`{.interpreted-text
role="menuselection"} in the left menu. Then, search the term [Cloud
Translation API]{.title-ref}, and click into the result. This should be
a *Google Enterprise API* labeled `Cloud Translation
API`{.interpreted-text role="guilabel"}.

Click `Enable`{.interpreted-text role="guilabel"} to install the library
on this project.

:::: important
::: title
Important
:::

Using the *Google Translate* API **requires** a current billing account
with [Google](https://myaccount.google.com/).
::::

Once a billing account is setup with *Google* and the library is
enabled, click `Manage`{.interpreted-text role="guilabel"} to finish
configuration on the API.

### Create credentials

Now that the project is set up, and the *Cloud Translation API* is
enabled, credentials **must** be created. This includes the *API key*.

To begin this process, click `Credentials`{.interpreted-text
role="menuselection"} in the left sidebar menu.

Then, click `Create Credentials`{.interpreted-text role="guilabel"} in
the top menu, and select `API key`{.interpreted-text role="guilabel"}
from the drop-down menu.

![Create an API key in the Google API console.](google_translate/api-key.png){.align-center}

Copy the `API key`{.interpreted-text role="guilabel"} for use in the
next section.

:::: important
::: title
Important
:::

For security purposes, the usage of the *API key* can be restricted.

To do that, go to the *API restrictions* by clicking on
`Edit API key`{.interpreted-text role="guilabel"} in the pop-over
window, or by clicking on the listed API key on the
`Credentials`{.interpreted-text role="guilabel"} page. From here, key
restrictions can be set. This includes setting an application to
restrict the use of the API key, and whether this API key can call any
API.

It is recommended that the Odoo *Translate API* be restricted to
**only** allow requests from the configured Odoo database and to the
*Cloud Translation API*.

To add the website restriction, click `Websites`{.interpreted-text
role="guilabel"}, under the `Set an
application restriction`{.interpreted-text role="guilabel"}. Then, enter
the address of the database *Google Translate* is being used in, by
clicking on `Add`{.interpreted-text role="guilabel"}. Lastly, add the
`URL (Uniform Resource Locator)`{.interpreted-text role="abbr"}, and
click `Done`{.interpreted-text role="guilabel"}.

To restrict use of the key to a selected API, first, select
`Restrict key`{.interpreted-text role="guilabel"}, under the
`API restrictions`{.interpreted-text role="guilabel"} section. Then use
the drop-down menu to choose the API being configured (*Cloud
Translation API*).
::::

:::: tip
::: title
Tip
:::

\- Save the API key: copy the API key and store it somewhere secure. -
Do **not** share the API key publicly or expose it in client-side code.
::::

## Odoo configuration

To access the integration in Odoo, navigate to the
`Settings app --> Discuss
section`{.interpreted-text role="menuselection"}. Enter the API key into
the field labeled `Message Translation`{.interpreted-text
role="guilabel"}. Then, `Save`{.interpreted-text role="guilabel"} the
settings, and *Google Translate* can be used in any chatter throughout
the database.

![Odoo configuration of the API key from the \*Google API Console\*.](google_translate/odoo-config.png){.align-center}

## Translate chatter

To translate a user\'s text from another language, click the
`... (three dot)`{.interpreted-text role="guilabel"} icon menu to the
right of the chatter. Then, select `Translate`{.interpreted-text
role="guilabel"}. The content translates to the *language* set on the
user\'s preferences.

![Google Translate present in an Odoo database\'s chatter.](google_translate/google-translate.png){.align-center}

::: seealso
`language/install`{.interpreted-text role="ref"}
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
integrations/google_translate integrations/cloud_storage
:::




--- SOURCE: general/iot/connect.md ---

# IoT system connection to Odoo

## Prerequisites

To connect the IoT system to an Odoo database, the following
prerequisites must be met:

- The Internet of Things (IoT) app must be
  `installed <general/install>`{.interpreted-text role="ref"}.
- The IoT system must be connected to the network.
- The computer connecting to Odoo must be on the same network as the IoT
  system.

:::: note
::: title
Note
:::

It is recommended to connect the IoT system to a **production**
instance, as other types of environments may cause issues (e.g., with
`HTTPS certificate generation
<iot/https_certificate_iot/iot-eligibility>`{.interpreted-text
role="ref"}).
::::

::: seealso
\- `iot_box`{.interpreted-text role="doc"} -
`windows_iot`{.interpreted-text role="doc"}
:::

## Connection

The IoT system can be connected to the Odoo database using a
`pairing code
<iot/connect/pairing-code>`{.interpreted-text role="ref"} or a
`connection token <iot/connect/token>`{.interpreted-text role="ref"}.

### Connection using a pairing code {#iot/connect/pairing-code}

:::: note
::: title
Note
:::

\- The pairing code is displayed for up to 5 minutes after the IoT
system starts. If the code is no longer visible, reboot the IoT box or
`restart the Windows virtual IoT service
<iot/windows_iot/restart>`{.interpreted-text role="ref"} to display the
pairing code again. Alternatively, connect the IoT system to the
database using a
`connection token <iot/connect/token>`{.interpreted-text role="ref"}. -
The pairing code is not displayed if the IoT system is already connected
to a database (e.g., a test database).
::::

1.  Retrieve the IoT\'s system pairing code:

    ::::::: tabs
    ::::: group-tab
    IoT box

    Connect the IoT box to an external monitor or printer. If the IoT
    box was already plugged prior to this, reboot it by unplugging it
    for a few seconds and replugging it.

    - External monitor: The pairing code should be displayed on the
      screen a few minutes after rebooting the IoT box.
    - Printer: The pairing code should be printed automatically.

    :::: tip
    ::: title
    Tip
    :::

    If no external monitor or printer is connected to the IoT box,
    access the `IoT
    box's homepage <iot/iot-box/homepage>`{.interpreted-text
    role="ref"}; the code is displayed in the `Pairing
    Code`{.interpreted-text role="guilabel"} section.
    ::::
    :::::

    ::: group-tab
    Windows virtual IoT

    On the computer with the Windows virtual IoT installed, open the IoT
    system\'s homepage in a web browser by navigating to the URL
    [http://localhost:8069]{.title-ref}. Then, scroll to the
    `Pairing Code`{.interpreted-text role="guilabel"} section.
    :::
    :::::::

2.  In Odoo, open the IoT app and click `Connect`{.interpreted-text
    role="guilabel"}.

3.  In the `Connect an IoT Box`{.interpreted-text role="guilabel"} popup
    that opens, enter the `Pairing code`{.interpreted-text
    role="guilabel"}.

4.  Click `Pair`{.interpreted-text role="guilabel"}.

### Connection using a connection token {#iot/connect/token}

1.  In Odoo, open the IoT app and click `Connect`{.interpreted-text
    role="guilabel"}.
2.  In the `Connect an IoT Box`{.interpreted-text role="guilabel"} popup
    that opens, copy the `Token`{.interpreted-text role="guilabel"}.
3.  Access the `IoT box's <iot/iot-box/homepage>`{.interpreted-text
    role="ref"} or `Windows virtual IoT's
    <iot/windows-iot/homepage>`{.interpreted-text role="ref"} homepage.
4.  In the `Odoo database connected`{.interpreted-text role="guilabel"}
    section, click `Configure`{.interpreted-text role="guilabel"}.
5.  Paste the token into the `Server Token`{.interpreted-text
    role="guilabel"} field and click `Connect`{.interpreted-text
    role="guilabel"}.

## IoT system form {#iot/connect/IoT-form}

Once the IoT system is connected to the Odoo database, it is displayed
as a card in the IoT app. Click the IP address on the card to access the
`IoT box's <iot/windows-iot/homepage>`{.interpreted-text role="ref"} or
`Windows virtual IoT's <iot/iot-box/homepage>`{.interpreted-text
role="ref"} homepage. Click the card to access the list of
`devices <devices>`{.interpreted-text role="doc"} connected to the IoT
system.

:::: tip
::: title
Tip
:::

`Enable the developer mode <developer-mode>`{.interpreted-text
role="ref"} to access the IoT system\'s
`Technical Information`{.interpreted-text role="guilabel"}, such as its
`Identifier`{.interpreted-text role="guilabel"}, `Domain
address`{.interpreted-text role="guilabel"}, and
`Image version`{.interpreted-text role="guilabel"}.
::::

:::: note
::: title
Note
:::

By default, drivers are automatically
`updated <iot_updating_iot/handlers>`{.interpreted-text role="ref"}
every time the IoT system is restarted. To disable automatic updates,
uncheck the `Automatic drivers
update`{.interpreted-text role="guilabel"} option.
::::

## Troubleshooting {#iot/connect/troubleshooting}

### The pairing code does not appear or does not work

The `pairing code <iot/connect/pairing-code>`{.interpreted-text
role="ref"} might not be displayed or printed under the following
circumstances:

- The IoT system is not connected to the Internet.
- The IoT system is already connected to an Odoo database.
- The `pairing code <iot/connect/pairing-code>`{.interpreted-text
  role="ref"} display time has expired. Reboot the IoT box or
  `restart the Windows virtual IoT service <iot/windows_iot/restart>`{.interpreted-text
  role="ref"} to display the pairing code again.
- The IoT system\'s image version is too old and needs to be `updated
  <iot/updating_iot/image-code>`{.interpreted-text role="ref"}.

### The IoT system is connected but does not appear in the database

The IoT system might take a few minutes to restart when it connects to a
database. If it still does not appear after a few minutes:

- Verify that the IoT system can reach the database and the server does
  not use a multi-database environment.
- Reboot the IoT box or
  `restart the Windows virtual IoT service <iot/windows_iot/restart>`{.interpreted-text
  role="ref"}.

### The IoT box is connected to the Odoo database but cannot be reached

Verify that the IoT system and the computer running the Odoo database
are connected to the same network.

### The Windows virtual IoT\'s homepage cannot be accessed from another device

Check the `iot/windows-iot/firewall`{.interpreted-text role="ref"}.

### The IoT system is disconnected from the database after an Odoo upgrade

`Update the IoT system's image <iot/updating_iot/image-code>`{.interpreted-text
role="ref"} by flashing the IoT box\'s card or
`uninstalling the Windows virtual IoT program <iot/windows_iot/uninstall>`{.interpreted-text
role="ref"} and
`reinstalling <iot/windows-iot/installation>`{.interpreted-text
role="ref"} the latest package for Windows **matching your database\'s
version**.




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

![Bluetooth indicator on measurement tool.](measurement_tool/measurement-tool.png){.align-center}

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

:::: warning
::: title
Warning
:::

The **only** way to connect a printer directly to an Odoo database is
through the use of an IoT system. Without an IoT system, printing can
still occur, but it is managed through the printer itself, which is not
the recommended process.
::::

## Connection

IoT systems support printers connected through USB or network
connection. [Supported printers](https://www.odoo.com/page/iot-hardware)
are detected automatically, and appear in the
`Devices`{.interpreted-text role="guilabel"} list of the IoT app.

![The printer as it would appear in the IoT app devices list.](printer/printer-detected.png)

:::: note
::: title
Note
:::

Printers can take up to two minutes to appear in the IoT app
`Devices`{.interpreted-text role="guilabel"} list.
::::

## Link a printer

### Link work orders to a printer

Work orders can be linked to printers, via a quality control point, to
print labels for manufactured products.

In the
`Quality app </applications/inventory_and_mrp/quality>`{.interpreted-text
role="doc"}, a device can be set up on a quality control point. To do
so, go to the `Quality --> Quality Control --> Control
Points`{.interpreted-text role="menuselection"}, and open the desired
control point.

:::: important
::: title
Important
:::

A manufacturing operation and work order operation need to be attached
to a quality control point before the `Type`{.interpreted-text
role="guilabel"} field allows for the `Print Label`{.interpreted-text
role="guilabel"} option to be selected.
::::

From here, edit the control point by selecting the
`Type`{.interpreted-text role="guilabel"} field, and selecting
`Print Label`{.interpreted-text role="guilabel"} from the dropdown menu
of options. Doing so reveals the `Device`{.interpreted-text
role="guilabel"} field, where the attached device can be selected.

The printer can now be used with the selected quality control point.
When the quality control point is reached during the manufacturing
process, the database presents the option to print labels for a specific
product.

:::: tip
::: title
Tip
:::

Quality control points can also be accessed by navigating to `IoT -->
Devices`{.interpreted-text role="menuselection"}, then selecting the
device. Go to the `Quality Control Points`{.interpreted-text
role="guilabel"} tab to add them to the device.
::::

:::: note
::: title
Note
:::

On a `quality check form
</applications/inventory_and_mrp/quality/quality_management/quality_checks>`{.interpreted-text
role="doc"}, the `Type`{.interpreted-text role="guilabel"} of check can
also be set to `Print Label`{.interpreted-text role="guilabel"}.
::::

::: seealso
\-
`/applications/inventory_and_mrp/quality/quality_management/quality_control_points`{.interpreted-text
role="doc"} -
`/applications/inventory_and_mrp/quality/quality_management/quality_alerts`{.interpreted-text
role="doc"}
:::

### Link reports to a printer {#iot/link-printer}

It is possible to link report types to a specific printer. To do so:

1.  Go to `IoT --> Devices`{.interpreted-text role="menuselection"} and
    select the desired printer.
2.  Go to the `Printer Reports`{.interpreted-text role="guilabel"} tab
    and click `Add a line`{.interpreted-text role="guilabel"}.
3.  In the pop-up that opens, select the types of reports to be linked
    to the printer and click `Select`{.interpreted-text
    role="guilabel"}.

![The list of reports assigned to a printer in the IoT app.](printer/printer-reports.png)

:::: tip
::: title
Tip
:::

Reports can also be configured by
`enabling the developer mode <developer-mode>`{.interpreted-text
role="ref"} and going to
`Settings --> Technical --> Reports`{.interpreted-text
role="menuselection"}. Select the desired report from the list and set
an `IoT Device`{.interpreted-text role="guilabel"}.
::::

The first time a linked report is selected to print, a
`Select Printers`{.interpreted-text role="guilabel"} pop-up window
appears. Tick the checkbox next to the correct printer for the report,
and click `Print`{.interpreted-text role="guilabel"}. At that point, the
report is linked to the printer.

#### Clear device printer cache

After a printer is linked to print a report, the setting is saved in a
browser\'s cache. This means a user can have different devices saved in
their cache for different reports, based on the device they use to
access Odoo. It also means different users can have a report
automatically printed from different printers, based on their
preferences.

To unlink a report from a printer, navigate to
`IoT --> Configuration --> Reset
Linked Printers`{.interpreted-text role="menuselection"}. This generates
a list of reports that are linked to a printer on the current device.
Click the `Unlink`{.interpreted-text role="guilabel"} button next to
each report to remove the link.

:::: important
::: title
Important
:::

This step **only** prevents the report from automatically printing to
the listed printer from the current browser. The report is still
`linked <iot/link-printer>`{.interpreted-text role="ref"} on the device,
under the `Printer Reports`{.interpreted-text role="guilabel"} tab.
::::

![A list of reports currently linked to a printer in the IoT app.](printer/clear-reports.png)

::: seealso
`POS Order Printing <pos/restaurant/orders-printing>`{.interpreted-text
role="ref"}
:::

## Potential issues

### The printer is not detected

If a printer does not appear in the devices list, go to the
`IoT box's <iot/iot-box/homepage>`{.interpreted-text role="ref"} or
`Windows virtual IoT's <iot/windows-iot/homepage>`{.interpreted-text
role="ref"} homepage, click `Show`{.interpreted-text role="guilabel"} in
the `Devices`{.interpreted-text role="guilabel"} section, and make sure
the printer is listed.

If the printer does not appear on the IoT system\'s homepage, click
`Printer Server`{.interpreted-text role="guilabel"}, then
`Administration`{.interpreted-text role="guilabel"}, and
`Add Printer`{.interpreted-text role="guilabel"}. If the printer is not
in the list, it is likely not connected properly.

### The printer outputs random text

For most printers, the correct driver should be automatically detected
and selected. However, in some cases, the automatic detection mechanism
might not be enough, and if no driver is found, the printer might print
random characters.

The solution is to manually select the corresponding driver. On the IoT
system\'s homepage, click `Printer Server`{.interpreted-text
role="guilabel"}, then `Printers`{.interpreted-text role="guilabel"},
and select the printer in the list. In the
`Administration`{.interpreted-text role="guilabel"} dropdown menu, click
`Modify Printer`{.interpreted-text role="guilabel"}. Follow the steps
and select the printer\'s *make* and *model*.

![Edit the printer connected to the IoT system.](printer/modify-printer.png)

:::: note
::: title
Note
:::

Epson receipt printers and Zebra label printers do not need a driver to
work. Make sure that no driver is selected for those printers.
::::

### The printer is detected but is not recognized correctly

If Odoo and the IoT system do not recognize the printer correctly, go to
`IoT
--> Devices`{.interpreted-text role="menuselection"}, click the
device\'s card to access its form, and set the
`Subtype`{.interpreted-text role="guilabel"} field to the appropriate
option: `Receipt Printer`{.interpreted-text role="guilabel"},
`Label Printer`{.interpreted-text role="guilabel"}, or `Office
Printer`{.interpreted-text role="guilabel"}.

#### Epson configuration special case

Most Epson printers support printing receipts in Odoo Point of Sale
using the [GS v 0]{.title-ref} command. However, the following Epson
printer models do not support this command:

- TM-U220
- TM-U230
- TM-P60
- TMP-P60II

To bypass this issue, you can configure the printer to use the [ESC
\*]{.title-ref} command.

First, review Epson\'s website for compatibility for both the [GS v
0](https://download4.epson.biz/sec_pubs/pos/reference_en/escpos/gs_lv_0.html)
and [ESC
\*](https://download4.epson.biz/sec_pubs/pos/reference_en/escpos/esc_asterisk.html)
commands.

If the printer is incompatible with [GS v 0]{.title-ref} but supports
[ESC \*]{.title-ref}, configure the IoT system to use the [ESC
\*]{.title-ref} command as follows:

1.  Access the `IoT box's <iot/iot-box/homepage>`{.interpreted-text
    role="ref"} or `Windows virtual IoT's
    <iot/windows-iot/homepage>`{.interpreted-text role="ref"} homepage.

2.  Click the `Printer server`{.interpreted-text role="guilabel"}
    button, then click `Administration`{.interpreted-text
    role="guilabel"} on the CUPS page.

3.  Click `Add Printer`{.interpreted-text role="guilabel"} in the
    `Printers`{.interpreted-text role="guilabel"} section, select the
    printer, and click `Continue`{.interpreted-text role="guilabel"}.

    :::: tip
    ::: title
    Tip
    :::

    If the printer\'s name is still uncertain, take the following steps:

    1.  Take note of the listed printers on the CUPS page.
    2.  Turn the printer off and refresh the page.
    3.  Compare the difference with the first list to see which printer
        disappeared.
    4.  Turn the printer back on and refresh the page again.
    5.  Double-check the list again to see if the printer re-appears.
    6.  The printer that disappeared and reappears again on the listed
        printers is the name of the printer in question. It can be
        `Unknown`{.interpreted-text role="guilabel"} under
        `Local printers`{.interpreted-text role="guilabel"}.
    ::::

4.  On the `Add Printer`{.interpreted-text role="guilabel"} page,
    specify the printer\'s `Name`{.interpreted-text role="guilabel"}
    using the following convention:
    [\<printer_name\>\_\_IMC\_\<param_1\>\_\<param_2\>\_\...\_\<param_n\>\_\_]{.title-ref},
    where:

    - [printer_name]{.title-ref} is the printer\'s name. It can contain
      any character except [\_]{.title-ref}, [/]{.title-ref},
      [\#]{.title-ref}, or [ ]{.title-ref} (space character).

    - \`IMC\`: This stands for *Image Mode Column* (the simplified name
      for [ESC \*]{.title-ref}).

    - \`param_1\`: This stands for the specific parameter:

      - \`SCALE\<X\>\`: Scale of the picture (with the same aspect
        ratio). [X]{.title-ref} should be an integer describing the
        scale percentage that should be used. For example,
        [100]{.title-ref} is the original size, [50]{.title-ref} is half
        the size, and [200]{.title-ref} is twice the size.
      - \`LDV\`: *Low Density Vertical* (will be set to *High Density
        Vertical* if not specified).
      - \`LDH\`: *Low Density Horizontal* (will be set to *High Density
        Horizontal* if not specified).

      :::: note
      ::: title
      Note
      :::

      \- *Density* parameters might need to be configured in a
      particular way, depending on the printer model.
      \- Refer to [Epson\'s ESC \*
      documentation](https://download4.epson.biz/sec_pubs/pos/reference_en/escpos/esc_asterisk.html)
      to determine if the printer requires these parameters to be set.
      ::::

    > ::: example
    > The following are examples of proper and improper name formatting:
    >
    > Proper name formatting:
    >
    > - [EPSONTMm30II\_\_IMC\_\_]{.title-ref}
    > - [EPSON_TM_U220\_\_IMC_LDV_LDH_SCALE80\_\_]{.title-ref}
    >
    > Improper name formatting (this will not prevent printing, but the
    > result might not have the expected printed output):
    >
    > - \`EPSON TMm 30II\`: The name cannot contain spaces.
    > - \`EPSONTMm30II\`: The name itself is correct, but it will not
    >   use [ESC \*]{.title-ref}.
    > - \`EPSONTMm30II\_\_IMC\`: This name is missing the end
    >   [\_\_]{.title-ref}.
    > - \`EPSONTMm30II\_\_IMC_XDV\_\_\`: The parameter [XDV]{.title-ref}
    >   does not match any existing parameters.
    > - \`EPSONTMm30II\_\_IMC_SCALE\_\_\`: The parameter
    >   [SCALE]{.title-ref} is missing the scale value.
    > :::

5.  Once the printer\'s name has been defined using the appropriate
    naming convention, click `Continue`{.interpreted-text
    role="guilabel"}.

6.  Set the `Make`{.interpreted-text role="guilabel"} value to
    `Raw`{.interpreted-text role="guilabel"} and the
    `Model`{.interpreted-text role="guilabel"} value to
    `Raw Queue (en)`{.interpreted-text role="guilabel"}.

7.  Click `Add Printer`{.interpreted-text role="guilabel"}. If
    everything was done correctly, the page should redirect to the
    `Banners`{.interpreted-text role="guilabel"} page.

8.  Wait a few minutes for the IoT system to detect the printer and sync
    to Odoo\'s server.

9.  `Access the POS settings <configuration/settings>`{.interpreted-text
    role="ref"} and select your POS, or click the vertical ellipsis
    button (`⋮`{.interpreted-text role="guilabel"}) on a POS card and
    click `Edit`{.interpreted-text role="guilabel"}. Scroll down to the
    `Connected Devices`{.interpreted-text role="guilabel"} section,
    enable `IoT Box`{.interpreted-text role="guilabel"}, and select the
    printer in the `Receipt Printer`{.interpreted-text role="guilabel"}
    field. Click `Save`{.interpreted-text role="guilabel"}.

:::: note
::: title
Note
:::

If the printer was set up incorrectly (e.g., it continues to print
random text, or the printed receipt is too large or too small), it
cannot be modified via the printer\'s name in CUPS. Instead, configure a
new printer from scratch with modified parameters, following the steps
above.
::::

::: spoiler
Example

The following is an example of the troubleshooting process for a
TM-U220B printer model using the [ESC \*]{.title-ref} command. The
receipt pictured below is an example of a receipt that is printing
correctly due to proper formatting (in theory):

![Properly formatted receipt picture from a demo database.](printer/receipt-example.png)

Printing this receipt immediately without proper formatting will not
work, as the TM-U220B printer model does not support the [GS v
0]{.title-ref} command. Instead, random characters will be printed:

![Printer paper with seemingly random characters.](printer/receipt-print-random-letters.png)

To properly configure formatting for the Epson TM-U220B printer model,
follow these steps:

1.  After checking Epson\'s website for compatibility with both the [GS
    v
    0](https://download4.epson.biz/sec_pubs/pos/reference_en/escpos/gs_lv_0.html)
    and [ESC
    \*](https://download4.epson.biz/sec_pubs/pos/reference_en/escpos/esc_asterisk.html)
    commands, the TM-U220B printer is indeed incompatible with [GS v
    0]{.title-ref} but supports [ESC \*]{.title-ref}.

    ![Epson compatibility evaluation from Epson website.](printer/epson-compatibility-compare.png)

2.  When adding the printer, CUPS displays the list of available
    printers:

    ![Administration menu, add printer selection.](printer/add-printer.png)

    In this case, the printer is connected via USB, so it is not part of
    the `Discovered Network Printers`{.interpreted-text
    role="guilabel"}. Instead, it is likely part of the
    `Unknown`{.interpreted-text role="guilabel"} selection under
    `Local Printers`{.interpreted-text role="guilabel"}. By unplugging
    the printer\'s USB cable from the IoT system and refreshing the
    page, the `Unknown`{.interpreted-text role="guilabel"} printer
    disappears. By plugging it back in, the printer reappears.

3.  For the naming convention, since the printer must print using the
    [ESC \*]{.title-ref} command, it is imperative to add
    [\_\_IMC]{.title-ref}.

    ![Epson TM-U220 specifications on manufacturer\'s website.](printer/epson-tm-u220-specification.png)

    For this particular model (TM-U220) [m]{.title-ref} should be equal
    to 0 or 1. While referencing the `Description`{.interpreted-text
    role="guilabel"} table on [Epson\'s ESC \*
    website](https://download4.epson.biz/sec_pubs/pos/reference_en/escpos/esc_asterisk.html),
    the [m]{.title-ref} values could be 0, 1, 32, or 33. So, in this
    case, the [m]{.title-ref} value **cannot** be 32 or 33 (otherwise,
    random characters will be printed).

    The table includes the numeric values 32 and 33; they both occur if
    the `Number of
    bits for vertical data`{.interpreted-text role="guilabel"} is set to
    24, i.e. it has a *High Vertical Density*. In the case of
    configuring the Epson TM-U220, the *Low Vertical Density* will need
    to be forced, as this printer model does not support *High Vertical
    Density* for this command [ESC \*]{.title-ref}.

    To add a *Low Vertical Density*, add the [LDV]{.title-ref} parameter
    to the naming convention.

    ![Add a \*Low Vertical Density\* (the \`LDV\` parameter) to the naming convention.](printer/add-printer-filled.png)

4.  Click `Continue`{.interpreted-text role="guilabel"} to proceed.
    Next, set the `Make`{.interpreted-text role="guilabel"} value to
    `Raw`{.interpreted-text role="guilabel"} and the
    `Model`{.interpreted-text role="guilabel"} value to
    `Raw Queue (en)`{.interpreted-text role="guilabel"}.

    ![Epson TM-U220 specifications on manufacturers website.](printer/add-printer-add.png)

    However, when trying to print with the naming convention
    [EpsonTMU220B\_\_IMC_LDV\_\_]{.title-ref}, the receipt is printed,
    but it is too large and outside the margin. To resolve this, add a
    new printer (and naming convention) with the
    [SCALE\<X\>]{.title-ref} parameter to adapt to the receipt\'s size.

    Here are some examples:

      Printer Naming Convention                                 [EpsonTMU220B\_\_IMC_LDV\_\_]{.title-ref}                                                          [EpsonTMU220B\_\_IMC_LDV_SCALE75\_\_]{.title-ref}                                                                  [EpsonTMU220B\_\_IMC_LDV_LDH\_\_]{.title-ref}                                                              [EpsonTMU220B\_\_IMC_LDV_LDH_SCALE35\_\_]{.title-ref}
      --------------------------------------------------------- -------------------------------------------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------ ---------------------------------------------------------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------
      ![Receipt example format.](printer/receipt-example.png)   ![Receipt format using naming convention: EpsonTMU220B\_\_IMC_LDV\_\_.](printer/tm-u220-ldv.png)   ![Receipt format using naming convention: EpsonTMU220B\_\_IMC_LDV_SCALE75\_\_.](printer/tm-u220-ldv-scale75.png)   ![Receipt format using naming convention: EpsonTMU220B\_\_IMC_LDV_LDH\_\_.](printer/tm-u220-ldv-hdv.png)   ![Receipt format using naming convention: EpsonTMU220B\_\_IMC_LDV_LDH_SCALE35\_\_.](printer/tm-u220-ldv-hdv-scale35.png)
:::

### DYMO LabelWriter print issue

The DYMO LabelWriter has a known issue in printing with IoT systems. The
OpenPrinting CUPS server installs the printer using
`Local RAW Printer`{.interpreted-text role="guilabel"} drivers. In order
to print anything, the correct `Make and Model`{.interpreted-text
role="guilabel"} needs to be set to reference the correct driver when
using the device.

Additionally, a new printer needs to be added to reduce the print delay
that occurs after updating the driver.

:::: important
::: title
Important
:::

The DYMO LabelWriter 450 DUO printer is the recommended DYMO printer for
use with Odoo and IoT systems. This device combines two printers: a
label printer and a tape printer. When configuring the following
processes, it is essential to select the correct model (either DYMO
LabelWriter 450 DUO Label (en) or DYMO LabelWriter 450 DUO Tape (en)).
For consistency, the following processes outline configuration steps for
the DYMO LabelWriter 450 DUO Label (en) model. Adjust the model
selections as needed.
::::

#### DYMO LabelWriter not printing {#printer/dymo/update_drivers}

If the DYMO LabelWriter fails to print, install a new driver:

1.  Access the IoT system\'s homepage and click
    `Printer server`{.interpreted-text role="menuselection"} to open the
    OpenPrinting CUPS console.

2.  Click `Printers`{.interpreted-text role="menuselection"} in the top
    menu, then click the printer in the list.

3.  Select `Maintenance`{.interpreted-text role="guilabel"} in the first
    dropdown menu.

4.  Select `Modify Printer`{.interpreted-text role="guilabel"} in the
    second dropdown menu.

    ![Modify the make and model of the DYMO LabelWriter. Maintenance and Modify dropdown
    menus highlighted.](printer/main-modify.png)

5.  Select the specific network connection/printer on which the
    modification should be made and click `Continue`{.interpreted-text
    role="guilabel"}.

6.  On the next page, click `Continue`{.interpreted-text
    role="guilabel"}, then select `DYMO`{.interpreted-text
    role="guilabel"} from the `Make`{.interpreted-text role="guilabel"}
    dropdown list.

7.  Click on `Continue`{.interpreted-text role="guilabel"} and set the
    `Model`{.interpreted-text role="guilabel"} to `DYMO LabelWriter 450
    DUO Label (en)`{.interpreted-text role="guilabel"} (or whichever
    DYMO printer model is being used).

8.  Click `Modify Printer`{.interpreted-text role="guilabel"} to set the
    new driver; a confirmation page appears.

9.  Click `Printers`{.interpreted-text role="menuselection"} in the top
    menu; all printers installed on the OpenPrinting CUPS server appear,
    including the newly updated
    `DYMO LabelWriter 450 DUO Label`{.interpreted-text role="guilabel"}
    (or whichever DYMO printer model is being used).

10. Click the newly updated printer, then click the
    `Maintenance`{.interpreted-text role="guilabel"} dropdown menu and
    select `Print Test Page`{.interpreted-text role="guilabel"} to print
    a test label. The test label is printed after a few seconds if the
    driver update was successful.

To reduce this delay, add a new printer using the steps below.

#### DYMO LabelWriter print delay

:::: tip
::: title
Tip
:::

If the DYMO LabelWriter 450 DUO printer is not printing at all, or is
not recognized (i.e., it has a `RAW`{.interpreted-text role="guilabel"}
driver type), then `update the drivers on the device
<printer/dymo/update_drivers>`{.interpreted-text role="ref"}.
::::

To resolve the delay issue after modifying the driver, reinstall the
printer:

1.  Access the IoT system\'s homepage and click
    `Printer server`{.interpreted-text role="menuselection"} to open the
    OpenPrinting CUPS console.

2.  Click `Administration`{.interpreted-text role="menuselection"} in
    the top menu, then click `Add a Printer`{.interpreted-text
    role="guilabel"}.

3.  On the next page, in the `Local Printers`{.interpreted-text
    role="guilabel"} section, select `DYMO
    LabelWriter 450 DUO Label (DYMO LabelWriter 450 DUO Label)`{.interpreted-text
    role="guilabel"} (or whichever DYMO printer model is being used)
    pre-installed printer. Click `Continue`{.interpreted-text
    role="guilabel"}.

    ![Add a printer screen on OpenPrinting CUPS with DYMO LabelWriter 450 DUO Label
    highlighted.](printer/local-printer.png)

4.  On the following screen, update the `Name`{.interpreted-text
    role="guilabel"} to something easily identifiable, as the original
    printer will remain in the list. Then, click
    `Continue`{.interpreted-text role="guilabel"}.

    ![Rename printer page in the \'Add a Printer\' flow, with the name field highlighted.](printer/rename-printer.png)

5.  Set the `Model`{.interpreted-text role="guilabel"} field to
    `DYMO LabelWriter 450 DUO Label (en)`{.interpreted-text
    role="guilabel"} (or whichever DYMO printer model is being used),
    then click `Add Printer`{.interpreted-text role="guilabel"} to
    complete the installation.

    ![Choose model screen on the OpenPrinting CUPS console with model and add a printer
    highlighted.](printer/choose-printer.png)

6.  Click `Printers`{.interpreted-text role="menuselection"} in the top
    menu and click the newly installed printer
    `DYMO LabelWriter 450 DUO Label`{.interpreted-text role="guilabel"}
    (or whichever DYMO printer model is being used) from in the list.

    ![Printer page with newly installed printer highlighted.](printer/printer-page.png)

7.  Click the `Maintenance`{.interpreted-text role="guilabel"} dropdown
    list and select `Print Test Page`{.interpreted-text role="guilabel"}
    to print a test label. The test label should print out immediately,
    or after one or two seconds.

### The Zebra printer does not print anything

Zebra printers are quite sensitive to the format of the printed Zebra
Programming Language (ZPL) code. If nothing comes out of the printer or
blank labels are printed, try changing the format of the report sent to
the printer. To do so, activate the
`developer mode <developer-mode>`{.interpreted-text role="ref"}, go to
`Settings --> Technical --> User Interface --> Views`{.interpreted-text
role="menuselection"}, and search for the corresponding template.

::: seealso
[Zebra\'s instructions on printing ZPL
files](https://supportcommunity.zebra.com/s/article/Print-a-zpl-file-using-the-Generic-Text-Printer)
:::

### The printer appears multiple times

If the printer appears multiple times on the
`IoT box's <iot/iot-box/homepage>`{.interpreted-text role="ref"} or
`Windows virtual IoT's <iot/windows-iot/homepage>`{.interpreted-text
role="ref"} homepage and/or in the list of `Devices`{.interpreted-text
role="guilabel"} on the
`IoT system's form <iot/connect/IoT-form>`{.interpreted-text
role="ref"}, the cause is usually the CUPS auto-discovery feature. This
feature allows to list all detected printers together with all available
drivers, creating one entry for each printer--driver pair.

Simply select the entry that works best and ignore the others.

:::: note
::: title
Note
:::

Workarounds exist to disable the CUPS auto-discovery feature.
::::

## Barcode scanner issues

### The characters read by the barcode scanner do not match the barcode

By default, most barcode scanners are configured in the US QWERTY
format. If the barcode scanner uses a different layout, go to
`IoT --> Devices`{.interpreted-text role="menuselection"} and click the
barcode device\'s card. Then, select the correct language in the
`Keyboard Layout`{.interpreted-text role="guilabel"} field.

:::: note
::: title
Note
:::

The `Keyboard Layout`{.interpreted-text role="guilabel"} is
language-specific, with available options varying based on the device
and the language of the database (e.g., `English (UK)`{.interpreted-text
role="guilabel"}, `English
(US)`{.interpreted-text role="guilabel"}, etc.).
::::

### Nothing happens when a barcode is scanned

Make sure the correct device is selected in the `Point of Sale settings
</applications/sales/point_of_sale/configuration/pos_iot>`{.interpreted-text
role="doc"} (when applicable) and the barcode is configured to send an
[ENTER]{.title-ref} character (keycode 28) at the end of every barcode.

### The barcode scanner is detected as a keyboard

:::: important
::: title
Important
:::

Some barcode scanners are identified as USB keyboards rather than
barcode scanners and are not recognized by IoT systems.
::::

To change the device type manually, go to
`IoT --> Devices`{.interpreted-text role="menuselection"} and click the
barcode device\'s card. Then, enable `Is scanner`{.interpreted-text
role="guilabel"}.

### The barcode scanner processes barcode characters individually

When accessing the mobile version of Odoo from a mobile device or tablet
paired with a barcode scanner via the IoT system, the scanner might
interpret each character in a barcode as a separate scan. To resolve
this, go to `IoT --> Devices`{.interpreted-text role="menuselection"}
and click the barcode device\'s card. Then, select the correct language
in the `Keyboard Layout`{.interpreted-text role="guilabel"} field.

:::: note
::: title
Note
:::

The `Keyboard Layout`{.interpreted-text role="guilabel"} is
language-specific, with available options varying based on the device
and the language of the database (e.g., `English (UK)`{.interpreted-text
role="guilabel"}, `English
(US)`{.interpreted-text role="guilabel"}, etc.).
::::




--- SOURCE: general/iot/devices/scale.md ---

# Connect a scale

:::: important
::: title
Important
:::

In EU member states, [certification is legally
required](https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=uriserv%3AOJ.L_.2014.096.01.0107.01.ENG)
to use a scale as an integrated device.
::::

To connect a scale to the IoT system, use a USB cable. In some cases,
you may need a serial-to-USB adapter to complete the connection. If the
scale is [compatible with an IoT
system](https://www.odoo.com/page/iot-hardware), no additional setup is
required; the scale is automatically detected as soon as it is
connected. If the scale is not detected, reboot the IoT box or
`restart the Windows virtual IoT service <iot/windows_iot/restart>`{.interpreted-text
role="ref"} and `update the
scale's drivers <iot_updating_iot/handlers>`{.interpreted-text
role="ref"}.

:::: note
::: title
Note
:::

If the scale still does not function after updating the drivers, it
might not be [compatible with the Odoo IoT
system](https://www.odoo.com/page/iot-hardware). In such cases, a
different scale must be used.
::::

Once the scale is connected to the IoT system,
`configure it in the POS settings <pos/scale>`{.interpreted-text
role="ref"}.

::: seealso
`Connect an IoT system to a POS </applications/sales/point_of_sale/configuration/pos_iot>`{.interpreted-text
role="doc"}
:::

## Ariva S scales

For Ariva S series scales (manufactured by Mettler-Toledo, LLC.) to
function with IoT systems, a specific setting must be modified, and a
dedicated Mettler USB-to-proprietary RJ45 cable is required.

:::: important
::: title
Important
:::

The official Mettler USB-to-RJ45 cable (Mettler part number 72256236)
must be used. Contact Mettler or a partner to purchase an authentic
cable. **No other** cable works for this configuration.
::::

To configure the Ariva S scale for IoT system recognition, refer to page
17 of [Mettler\'s Setup Guide for Ariva S series
scales](https://www.mt.com/dam/RET_DOCS/Ariv.pdf) and follow these
steps:

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

10. Reboot the IoT box or
    `restart the Windows virtual IoT service <iot/windows_iot/restart>`{.interpreted-text
    role="ref"}. The scale should then appear as [Toledo
    8217]{.title-ref}, as opposed to the previous display, where it
    appeared as [Adam Equipment Serial]{.title-ref}.




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
`See the Raspberry Pi Schema <pos/pos_iot/connect_schema>`{.interpreted-text
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

::: seealso
\- `Connect a Worldline payment terminal
<../../sales/point_of_sale/payment_methods/terminals/worldline>`{.interpreted-text
role="doc"} - `Connect an Ingenico payment terminal
<../../sales/point_of_sale/payment_methods/terminals/ingenico>`{.interpreted-text
role="doc"}
:::

::: {.toctree titlesonly="" glob=""}
devices/screen devices/measurement_tool devices/camera
devices/footswitch devices/printer devices/scale
:::




--- SOURCE: general/iot/iot_advanced/https_certificate_iot.md ---

# HTTPS certificate (IoT) {#iot/https_certificate_iot}

*Hypertext Transfer Protocol Secure* (HTTPS) is the secure and encrypted
version of *Hypertext Transfer Protocol* (HTTP), which is the primary
protocol used for data communication between a web browser and a
website. It secures communications by using an encryption protocol known
as *Transport Layer Security* (TLS), previously called *Secure Sockets
Layer* (SSL). The security of
`HTTPS (Hypertext Transfer Protocol Secure)`{.interpreted-text
role="abbr"} relies on
`TLS (Transport Layer Security)`{.interpreted-text role="abbr"}
/`SSL (Secure Sockets Layer)`{.interpreted-text role="abbr"}
certificates, which authenticate the provider and verify their identity.

The use of HTTPS is required to communicate with certain network
devices, particularly payment terminals. If the HTTPS certificate is not
valid, some devices cannot interact with the IoT system.

:::: note
::: title
Note
:::

In this documentation and throughout Odoo, the term *HTTPS certificate*
refers to a valid SSL certificate that allows an HTTPS connection.
::::

## HTTPS certificate generation {#iot/https_certificate_iot/generation}

The HTTPS certificate is generated automatically. When the IoT system is
(re-)started (e.g., after it is connected to the Odoo database), a
request is sent to <https://www.odoo.com>, which returns the HTTPS
certificate if the IoT system and database meet the eligibility
criteria:

::: {#iot/https_certificate_iot/iot-eligibility}
- The database must be a **production** instance. The database instance
  should not be a copy, a duplicate, a staging, or a development
  environment.
- The Odoo subscription must be ongoing (`In Progress`{.interpreted-text
  role="guilabel"} status) and have an `IoT
  box subscription <iot/iot/iot-subscription>`{.interpreted-text
  role="ref"} line.
:::

When the certificate has been received:

- The IoT system\'s homepage address is updated to a new HTTPS URL
  ending with [.odoo-iot.com]{.title-ref}. Click the URL to establish a
  secure HTTPS connection.

  ![Odoo IoT app IoT box with .odoo-iot.com domain.](https_certificate_iot/iot-new-domain.png)

- The `HTTPS certificate`{.interpreted-text role="guilabel"} banner
  displays the certificate\'s validity period. To view this information,
  click the `fa-cogs`{.interpreted-text role="icon"}
  (`cogs`{.interpreted-text role="guilabel"}) button on the IoT
  system\'s homepage.

  ![IoT box homepage with HTTPS certificate validity date.](https_certificate_iot/https-valid.png)

## HTTPS certificate generation issues and errors

### The HTTPS certificate does not generate

Potential causes include the following:

- No `IoT box subscription <iot/iot/iot-subscription>`{.interpreted-text
  role="ref"} is linked to your account.

- The
  `IoT box subscription <iot/iot/iot-subscription>`{.interpreted-text
  role="ref"} was added *after* connecting the IoT system to the
  database. In this case, refresh the IoT system\'s homepage or
  reboot/`restart
  <iot/windows_iot/restart>`{.interpreted-text role="ref"} the IoT
  system to regenerate the HTTPS certificate.

- The firewall is preventing the HTTPS certificate from generating
  correctly. In this case, deactivate the firewall until the certificate
  is successfully generated.

  :::: note
  ::: title
  Note
  :::

  Some devices, such as routers with a built-in firewall, can prevent
  the HTTPS certificate from generating.
  ::::

### The IoT system\'s homepage can be accessed using its IP address but not the [xxx.odoo-iot.com]{.title-ref} URL

Contact your system or network administrator to address the issue.
Network-related problems are beyond the scope of Odoo support services.

- If the router allows manual
  `DNS (Domain Name System)`{.interpreted-text role="abbr"}
  configuration, update the settings to use [Google
  DNS](https://developers.google.com/speed/public-dns).
- If the router does not support this, you need to update the DNS
  settings directly on each device that interacts with the IoT system to
  use [Google DNS](https://developers.google.com/speed/public-dns).
  Instructions for configuring DNS on individual devices can be found on
  the respective manufacturer\'s website.

:::: note
::: title
Note
:::

\- Some IoT devices, such as payment terminals, likely do not require
DNS changes, as they are typically pre-configured with custom DNS
settings. - On some browsers, an error code mentioning the DNS (such as
[DNS_PROBE_FINISHED_NXDOMAIN]{.title-ref}) is displayed.
::::

### Errors

A specific error code is displayed on the IoT system\'s homepage if any
issues occur during the generation or reception of the HTTPS
certificate.

:::: tip
::: title
Tip
:::

When you access the IoT system\'s homepage, it automatically checks for
an HTTPS certificate and attempts to generate one if it is missing. If
an error appears, refresh the page to see if the issue is resolved.
::::

#### [ERR_IOT_HTTPS_CHECK_NO_SERVER]{.title-ref}

The server configuration is missing, i.e., the Odoo instance is not
`connected <../connect>`{.interpreted-text role="doc"} to the IoT
system.

#### [ERR_IOT_HTTPS_CHECK_CERT_READ_EXCEPTION]{.title-ref}

An error occurred while attempting to read the existing HTTPS
certificate. Verify that the HTTPS certificate file is readable.

#### [ERR_IOT_HTTPS_LOAD_NO_CREDENTIAL]{.title-ref}

The contract and/or database
`UUID (Universal Unique Identifier)`{.interpreted-text role="abbr"} is
missing form the IoT.

Verify that both values are correctly configured. To update them,
`access the IoT box's
<iot/iot-box/homepage>`{.interpreted-text role="ref"} or
`Windows virtual IoT's homepage <iot/windows-iot/homepage>`{.interpreted-text
role="ref"}, click the `fa-cogs`{.interpreted-text role="icon"}
(`cogs`{.interpreted-text role="guilabel"}) button, then click
`Credential`{.interpreted-text role="guilabel"}.

#### [ERR_IOT_HTTPS_LOAD_REQUEST_EXCEPTION]{.title-ref}

An unexpected error occurred while the IoT system tried to reach
<https://www.odoo.com>. This is likely due to network-related issues,
such as:

- The IoT system does not have Internet access.
- Network restrictions (e.g., firewalls or VPNs) are preventing
  communication with <https://www.odoo.com>.

:::: note
::: title
Note
:::

\- To access the full request exception details with information
regarding the error, `enable
the developer mode <developer-mode>`{.interpreted-text role="ref"},
click the IoT system\'s card in the IoT app, and click
`Download logs`{.interpreted-text role="guilabel"} on the
`IoT system's form <iot/connect/IoT-form>`{.interpreted-text
role="ref"}. To define the log levels recorded in the IoT system\'s log
file, `access the IoT box's
<iot/windows-iot/homepage>`{.interpreted-text role="ref"} or
`Windows virtual IoT's <iot/iot-box/homepage>`{.interpreted-text
role="ref"} homepage, click the `fa-cogs`{.interpreted-text role="icon"}
(`cogs`{.interpreted-text role="guilabel"}) button, then
`Log level`{.interpreted-text role="guilabel"} at the bottom of the
page. - To address network-related issues, contact your system or
network administrator; these issues are beyond the scope of Odoo support
services.
::::

#### [ERR_IOT_HTTPS_LOAD_REQUEST_STATUS]{.title-ref}

The IoT system successfully reached <https://www.odoo.com> but received
an unexpected [HTTP response (status
codes)](https://developer.mozilla.org/en-US/docs/Web/HTTP/Status).

This error code includes the HTTP status. For example,
[ERR_IOT_HTTPS_LOAD_REQUEST_STATUS 404]{.title-ref} means the server
returned a \"Page Not Found\" response.

To solve this issue:

1.  Open <https://www.odoo.com> in a web browser to check if the website
    is temporarily down for maintenance.

2.  | If <https://www.odoo.com> is down for maintenance, wait for it to
      resume.
    | If the website is operational, open a [support
      ticket](https://www.odoo.com/help) and make sure to include the
      3-digit HTTPS status code in the ticket.

#### [ERR_IOT_HTTPS_LOAD_REQUEST_NO_RESULT]{.title-ref}

The IoT system successfully connected to <https://www.odoo.com>, but the
server refused to provide the HTTPS certificate.

Check that the IoT system and database meet the
`eligibility requirements
<iot/https_certificate_iot/iot-eligibility>`{.interpreted-text
role="ref"} for an HTTPS certificate.




--- SOURCE: general/iot/iot_advanced/ssh_connect.md ---

# IoT box SSH connection

:::: note
::: title
Note
:::

SSH connections are only available for
`IoT boxes <../iot_box>`{.interpreted-text role="doc"}, not the `Windows
virtual IoT <../windows_iot>`{.interpreted-text role="doc"}.
::::

:::: warning
::: title
Warning
:::

\- This feature should **only** be used with trusted parties, as it
provides administrative access to the IoT box, which can create security
issues. - Managing an SSH connection is **not** covered under the
standard Odoo support scope. Visit the [Odoo
Support](https://www.odoo.com/help) page for additional information
about what is covered.
::::

To provide an `SSH (secure shell protocol)`{.interpreted-text
role="abbr"} connection to an IoT box, you must generate a password:

1.  Access the IoT box\'s homepage by opening the IoT app and clicking
    the IP address displayed on the IoT box\'s card.

2.  Click the `fa-cogs`{.interpreted-text role="icon"}
    (`cogs`{.interpreted-text role="guilabel"}) button at the top-right,
    then `Remote
    Debug`{.interpreted-text role="guilabel"}.

3.  In the `Remote Debugging`{.interpreted-text role="guilabel"} popup
    that opens, click `Generate`{.interpreted-text role="guilabel"} and
    save the password securely. Once you close the popup, the password
    will no longer be available.

    ![The Remote Debugging password generation window.](ssh_connect/ssh-generate-password.png)

4.  Enter the `Authentication Token`{.interpreted-text role="guilabel"}
    provided by the user attempting to connect to the IoT box.

5.  Click `Enable Remote Debugging`{.interpreted-text role="guilabel"}.

::: seealso
\- `../iot_box`{.interpreted-text role="doc"} -
`../connect`{.interpreted-text role="doc"}
:::




--- SOURCE: general/iot/iot_advanced/updating_iot.md ---

# IoT system updates

Due to the complexity of IoT systems, the term *updating* can refer to
several processes, including:

- `Updating the IoT system's image and/or core code <iot/updating_iot/image-code>`{.interpreted-text
  role="ref"};
- `Updating the handlers <iot_updating_iot/handlers>`{.interpreted-text
  role="ref"}, which include the interfaces and drivers.

## Image and core code update {#iot/updating_iot/image-code}

::::::::::: tabs
::::::::: group-tab
IoT box

To check if the IoT box is up-to-date (and update it if needed),
`access the IoT box's
homepage <iot/iot-box/homepage>`{.interpreted-text role="ref"}, click
the `fa-cogs`{.interpreted-text role="icon"} (`cogs`{.interpreted-text
role="guilabel"}) button at the top-right, then
`Update`{.interpreted-text role="guilabel"} in the
`Version`{.interpreted-text role="guilabel"} section.

:::: tip
::: title
Tip
:::

`Enable the developer mode <developer-mode>`{.interpreted-text
role="ref"} to view the current versions of the IoT box\'s image and
core code.
::::

**Image update**

To update the IoT box\'s image, flash its SD card. Flashing can be
performed using [balenaEtcher](https://etcher.balena.io), a free and
open-source tool for writing disk images to SD cards.

:::: note
::: title
Note
:::

\- Updating the IoT system\'s image is often required after upgrading
the Odoo database to a newer version. - A computer with a micro SD card
reader/adapter is required to flash the micro SD card. - An alternative
software for flashing the micro SD card is [Raspberry Pi
Imager](https://www.raspberrypi.com/software/).
::::

1.  [Download balenaEtcher.](https://etcher.balena.io/#download-etcher)
2.  Insert the IoT box\'s micro SD card into the computer or adapter.
3.  Open balenaEtcher, click `Flash from URL`{.interpreted-text
    role="guilabel"}, and enter the following URL:
    [http://nightly.odoo.com/master/iotbox/iotbox-latest.zip]{.title-ref}.
4.  Click `Select target`{.interpreted-text role="guilabel"} and select
    the SD card.
5.  Click `Flash`{.interpreted-text role="guilabel"} and wait for the
    process to finish.

![Flashing the SD card with balenaEtcher](updating_iot/etcher-flash.png)

**Core code update**

To update the IoT box\'s core code, click `Update`{.interpreted-text
role="guilabel"} under `IoT Box Update`{.interpreted-text
role="guilabel"} in the `Update`{.interpreted-text role="guilabel"}
popup.

:::: danger
::: title
Danger
:::

This process may take over 30 minutes. **Do not turn off or unplug the
IoT box** during this time, as doing so could leave the device in an
inconsistent state, requiring the IoT box to be reflashed with a new
image.
::::
:::::::::

::: group-tab
Windows virtual IoT

To update the Windows virtual IoT\'s image and code,
`uninstall the program
<iot/windows_iot/uninstall>`{.interpreted-text role="ref"} and
`reinstall <iot/windows-iot/installation>`{.interpreted-text role="ref"}
the latest package.
:::
:::::::::::

## Handler (driver) update {#iot_updating_iot/handlers}

To update the IoT system\'s handlers (i.e., drivers and interfaces) and
synchronize them with the configured server handler\'s code, for
example, to resolve issues where
`devices <../devices>`{.interpreted-text role="doc"} are not functioning
properly with the IoT system, proceed as follows:

1.  Access the `IoT box's <iot/iot-box/homepage>`{.interpreted-text
    role="ref"} or `Windows virtual IoT's
    <iot/windows-iot/homepage>`{.interpreted-text role="ref"} homepage
    and click the `fa-cogs`{.interpreted-text role="icon"}
    (`cogs`{.interpreted-text role="guilabel"}) button at the top-right.
2.  Click `Update`{.interpreted-text role="guilabel"} in the
    `Version`{.interpreted-text role="guilabel"} section.
3.  In the `Update`{.interpreted-text role="guilabel"} popup that opens,
    click `Force Drivers Update`{.interpreted-text role="guilabel"}.

:::: important
::: title
Important
:::

If you have an
`on-premise </administration/on_premise>`{.interpreted-text role="doc"}
or `Odoo.sh
</administration/odoo_sh>`{.interpreted-text role="doc"} database, the
configured server must be up-to-date to ensure the handlers\' code
includes the latest fixes and patches.
::::

:::: note
::: title
Note
:::

A handler update is also performed automatically every time the IoT
system is restarted unless the
`Automatic drivers update`{.interpreted-text role="guilabel"} option is
disabled in the `Technical
information`{.interpreted-text role="guilabel"} tab in the
`IoT system's form <iot/connect/IoT-form>`{.interpreted-text role="ref"}
in Odoo.
::::




--- SOURCE: general/iot/iot_advanced.md ---

nosearch

:   

# Advanced

::: toctree
iot_advanced/https_certificate_iot iot_advanced/updating_iot
iot_advanced/ssh_connect
:::




--- SOURCE: general/iot/iot_box.md ---

# IoT box

To start using an IoT box:

1.  Make sure you have a
    `valid IoT box subscription <iot/iot/iot-subscription>`{.interpreted-text
    role="ref"} in addition to your Odoo subscription.
2.  Connect your `devices <devices>`{.interpreted-text role="doc"} to
    the IoT box.
3.  `Connect the IoT box to the network <iot/iot_box/network>`{.interpreted-text
    role="ref"}.
4.  `Connect the IoT box to your Odoo database <connect>`{.interpreted-text
    role="doc"}.

::: seealso
[Video: How to Set Up and Use the Odoo IoT Box: A Beginner\'s
Guide](https://www.youtube.com/watch?v=w2_Dcm3r_7o&ab_channel=Odoo)
:::

:::: note
::: title
Note
:::

Devices can also be connected after the IoT box is added to the network
and/or connected to the database; however, a reboot of the IoT box might
be required.
::::

:::: important
::: title
Important
:::

Never make the IoT box accessible from the public Internet. IoT systems
are designed to provide your database with access to devices on your
local network. Exposing them to the public Internet would create a
**security risk**.
::::

## Network connection {#iot/iot_box/network}

The IoT box can be connected to the network via
`Ethernet <iot/iot_box/network-ethernet>`{.interpreted-text role="ref"}
or `Wi-Fi <iot/iot_box/network-wifi>`{.interpreted-text role="ref"}.

:::: important
::: title
Important
:::

**All** devices must be connected to the **same network**: the IoT box,
the device(s) connected to the IoT box, and the computer connected to
Odoo.
::::

### Ethernet {#iot/iot_box/network-ethernet}

Plug the Ethernet cable into the IoT box\'s Ethernet port and an
available port on your router, then connect the IoT box to a power
source.

### Wi-Fi {#iot/iot_box/network-wifi}

Make sure no Ethernet cable is connected to the IoT box and follow these
steps:

> 1.  Connect the IoT box to a power source and wait a few minutes for
>     it to power on.
>
> 2.  Access your computer\'s Wi-Fi settings and select the IoT box\'s
>     network. The network name is in the format
>     [IoTBox-xxxxxxxxxxxx]{.title-ref} (where
>     [xxxxxxxxxxxx]{.title-ref} is a unique identifier).
>
> 3.  Connect to the IoT box\'s Wi-Fi network and sign into it; your
>     browser should automatically open and redirect to the
>     `IoT box's homepage <iot/iot-box/homepage>`{.interpreted-text
>     role="ref"}.
>
>     :::: note
>     ::: title
>     Note
>     :::
>
>     Depending on your operating system, the browser might not open and
>     redirect to the IoT box\'s homepage. In this case, open your
>     browser manually and navigate to [http://10.11.12.1]{.title-ref}
>     or any url starting with **http** (e.g.,
>     [http://odoo.com]{.title-ref}).
>     ::::
>
> 4.  On the IoT box\'s homepage, click `Configure`{.interpreted-text
>     role="guilabel"} next to the `Internet Status`{.interpreted-text
>     role="guilabel"} section.
>
> 5.  Wait a few minutes for the available networks to be scanned,
>     select the network, enter the Wi-Fi\'s password, and click
>     `Connect`{.interpreted-text role="guilabel"}.

:::: note
::: title
Note
:::

Once connected to the Wi-Fi network, the IoT box stops emitting its
Wi-Fi signal, and the computer should automatically reconnect to its
original network. If it does not, reconnect to it manually.
::::

## IoT box homepage {#iot/iot-box/homepage}

To access the IoT box\'s homepage, open a web browser **on the same
network as the IoT box** and navigate to the IoT box\'s IP address.

![IoT box\'s homepage](iot_box/iot-homepage.png)

The IoT box\'s IP address can be retrieved by:

- connecting the IoT box to an external monitor: the IP address is
  displayed on the screen.

  ![POS display with IoT box\'s IP address](iot_box/iot-pos-display.png)

- connecting the IoT box to a [supported receipt or label
  printer](https://www.odoo.com/app/iot-hardware) with a USB cable: the
  IP address is automatically printed.

- accessing the administrator interface of the router to which the IoT
  box is connected or using third-party software to scan the network.

Once the IoT box is
`connected to the Odoo database <connect>`{.interpreted-text
role="doc"}, its homepage can be accessed from Odoo by opening the IoT
app and clicking the URL displayed on the IoT box\'s card.




--- SOURCE: general/iot/windows_iot.md ---

# Windows virtual IoT

To start using the Windows virtual IoT:

1.  Make sure all
    `prerequisites <iot/windows-iot/prerequisites>`{.interpreted-text
    role="ref"} are met.
2.  `Install the Windows virtual IoT <iot/windows-iot/installation>`{.interpreted-text
    role="ref"} on a Windows computer.
3.  `Configure the Windows Firewall <iot/windows-iot/firewall>`{.interpreted-text
    role="ref"}.
4.  Connect your `devices <devices>`{.interpreted-text role="doc"} to
    the Windows virtual IoT.
5.  `Connect the Windows virtual IoT to your Odoo database <connect>`{.interpreted-text
    role="doc"}.

## Prerequisites {#iot/windows-iot/prerequisites}

The following prerequisites must be met before setting up and using the
Windows virtual IoT:

- A valid
  `IoT box subscription <iot/iot/iot-subscription>`{.interpreted-text
  role="ref"}.
- An updated and recent version of Windows (i.e., Windows 10 or
  Windows 11) installed on a Windows computer (laptop, desktop, or
  server).

:::: note
::: title
Note
:::

\- `MRP (Material Requirement Planning)`{.interpreted-text role="abbr"}
devices, including cameras and measurement tools, are not compatible
with Windows virtual IoT. - It is also possible to create a Windows
Virtual Machine on a MacOS/Linux computer. However, this option is not
supported by Odoo, and no troubleshooting assistance will be provided.
::::

:::: important
::: title
Important
:::

Never make the Windows virtual IoT accessible from the public Internet.
IoT systems are designed to provide your database with access to devices
on your local network. Exposing them to the public Internet would create
a **security risk**.
::::

## Installation {#iot/windows-iot/installation}

To install the Windows virtual IoT on a Windows computer:

1.  Access [Odoo\'s download page](https://odoo.com/download) and
    download the **Community** edition of Odoo for Windows **matching
    your database\'s version**.

2.  Open the downloaded `.exe`{.interpreted-text role="file"} file,
    allow the app to make changes to your device, select a language, and
    click `OK`{.interpreted-text role="guilabel"}.

3.  Click `Next`{.interpreted-text role="guilabel"}, then
    `I Agree`{.interpreted-text role="guilabel"} to accept the terms and
    conditions and continue.

4.  Select `Odoo IoT`{.interpreted-text role="guilabel"} from the
    `Select the type of install`{.interpreted-text role="guilabel"}
    dropdown list. The following components should be selected: Odoo
    Server, Odoo IoT, Nginx WebServer, and Ghostscript interpreter.

5.  Verify you have the required space on your computer and click
    `Next`{.interpreted-text role="guilabel"}.

6.  In the `Destination folder`{.interpreted-text role="guilabel"},
    enter C:\\odoo and click `Install`{.interpreted-text
    role="guilabel"}.

    :::: warning
    ::: title
    Warning
    :::

    Do not install Odoo\'s Windows virtual IoT in any Windows user
    directory, as this can cause issues with
    `iot/https_certificate_iot/generation`{.interpreted-text
    role="ref"}.
    ::::

7.  Once the installation is complete, click `Next`{.interpreted-text
    role="guilabel"}.

8.  Set up GPL Ghostscript: Click `Next`{.interpreted-text
    role="guilabel"}, agree to the terms and conditions, click
    `Install`{.interpreted-text role="guilabel"}, then
    `Finish`{.interpreted-text role="guilabel"}.

9.  Click `Next`{.interpreted-text role="guilabel"},
    `Next`{.interpreted-text role="guilabel"}, and
    `Finish`{.interpreted-text role="guilabel"} to complete the setup.
    The
    `IoT system's homepage <iot/windows-iot/homepage>`{.interpreted-text
    role="ref"} automatically opens in a web browser with the URL
    [http://localhost:8069]{.title-ref}.

    :::: tip
    ::: title
    Tip
    :::

    If the web browser does not show anything,
    `restart <iot/windows_iot/restart>`{.interpreted-text role="ref"}
    the Windows virtual IoT service.
    ::::

10. Check that you can access the
    `IoT system's homepage <iot/windows-iot/homepage>`{.interpreted-text
    role="ref"} in a web browser:

    - on the Windows virtual IoT computer, and

    - on another device **on the same network as the IoT system** by
      navigating to the URL [http://xxx:8069]{.title-ref} (where
      [xxx]{.title-ref} is the IoT system\'s IP address).

    - on another device **on the same network as the IoT system** by
      navigating to the URL [https://xxx]{.title-ref} (where
      [xxx]{.title-ref} is the IoT system\'s IP address) to test for
      `HTTPS
      <iot_advanced/https_certificate_iot>`{.interpreted-text
      role="doc"} connection.

      :::: tip
      ::: title
      Tip
      :::

      If you cannot access the
      `IoT system's homepage <iot/windows-iot/homepage>`{.interpreted-text
      role="ref"} from another device, create a
      `Windows Firewall <iot/windows-iot/firewall>`{.interpreted-text
      role="ref"} rule to allow communication through port
      [8069]{.title-ref}.
      ::::

## Windows Firewall configuration {#iot/windows-iot/firewall}

Firewalls help keep devices secure but can sometimes block legitimate
connections. If the Windows virtual IoT isn\'t accessible on the
`LAN (Local Area Network)`{.interpreted-text role="abbr"}, for example
from another device, it could be due to a firewall blocking the
connection. To prevent this issue, configure exceptions for network
discovery in the `OS (Operating System)`{.interpreted-text role="abbr"}
or firewall settings.

:::: note
::: title
Note
:::

If third-party firewall software is installed on the Windows computer,
refer to the software\'s documentation to configure firewall exceptions.
::::

To create a rule on Windows Defender and allow communication through
port [8069]{.title-ref}, follow these steps:

1.  Search the Windows start menu for [firewall]{.title-ref} and select
    the `Windows Defender Firewall
    with Advanced Security`{.interpreted-text role="guilabel"} app.

2.  In the left part of the window, select
    `Inbound Rules`{.interpreted-text role="guilabel"}.

3.  In the right part of the window, under `Actions`{.interpreted-text
    role="guilabel"}, click `New Rule`{.interpreted-text
    role="guilabel"}.

4.  In the `New Inbound Rule Wizard`{.interpreted-text role="guilabel"}
    that opens, select the `Port`{.interpreted-text role="guilabel"}
    type of rule and click `Next`{.interpreted-text role="guilabel"}.

5.  On the `Protocols and Ports`{.interpreted-text role="guilabel"}
    page, make sure `TCP`{.interpreted-text role="guilabel"} and
    `Specified
    local ports`{.interpreted-text role="guilabel"} are selected, enter
    the following in the field: [8069, 80, 443]{.title-ref}, and click
    `Next`{.interpreted-text role="guilabel"}.

    :::: note
    ::: title
    Note
    :::

    Other ports may be necessary depending on your IoT devices. For
    example, for the
    `/applications/sales/point_of_sale/payment_methods/terminals/worldline`{.interpreted-text
    role="doc"} payment terminal, add the [9050]{.title-ref} port.
    ::::

6.  On the `Action`{.interpreted-text role="guilabel"} page, select
    `Allow the connection`{.interpreted-text role="guilabel"} and click
    `Next`{.interpreted-text role="guilabel"}.

7.  On the `Profile`{.interpreted-text role="guilabel"} page, disable
    any connection type(s) that don\'t apply to your Windows computer
    and click `Next`{.interpreted-text role="guilabel"}.

8.  On the `Name`{.interpreted-text role="guilabel"} page, provide a
    `Name`{.interpreted-text role="guilabel"} (e.g., [Odoo]{.title-ref})
    and, optionally, a brief `Description`{.interpreted-text
    role="guilabel"}, then click `Finish`{.interpreted-text
    role="guilabel"}.

::: seealso
[Windows Firewall rules
documentation](https://learn.microsoft.com/en-us/windows/security/operating-system-security/network-security/windows-firewall/rules)
:::

## Windows virtual IoT homepage {#iot/windows-iot/homepage}

To access the Windows virtual IoT\'s homepage, navigate to the URL
[http://localhost:8069]{.title-ref} on the Windows virtual IoT computer
or open a web browser from another computer **on the same network as the
IoT system** and navigate to the URL [http://xxx:8069]{.title-ref}
(where [xxx]{.title-ref} is the IoT system\'s IP address).

Once the Windows virtual IoT is
`connected to the Odoo database <connect>`{.interpreted-text
role="doc"}, its homepage can be accessed from Odoo by opening the IoT
app and clicking the URL displayed on the IoT system\'s card.

![Windows virtual IoT\'s homepage](windows_iot/iot-windows-homepage.png)

:::: note
::: title
Note
:::

Make sure the
`Windows Firewall is configured <iot/windows-iot/firewall>`{.interpreted-text
role="ref"} to allow access.
::::

## Device connection

Most `devices <devices>`{.interpreted-text role="doc"} automatically
connect to the Windows computer used for the Windows Virtual IoT through
[Windows Plug and Play
(PnP)](https://learn.microsoft.com/en-us/windows-hardware/drivers/kernel/introduction-to-plug-and-play).
However, if Windows does not recognize the device automatically upon
connection, the administrator may need to manually install the
appropriate drivers.

:::: tip
::: title
Tip
:::

After connecting the devices to the computer, refresh the
`IoT system's homepage
<iot/windows-iot/homepage>`{.interpreted-text role="ref"} to verify that
the device is listed. If the device does not appear,
`reload the handlers <iot_updating_iot/handlers>`{.interpreted-text
role="ref"} from the `IoT system's homepage
<iot/windows-iot/homepage>`{.interpreted-text role="ref"}.
::::

## Windows virtual IoT restart {#iot/windows_iot/restart}

To manually restart the Windows IoT server, search the Windows start
menu for [services]{.title-ref} and select the
`Services`{.interpreted-text role="guilabel"} app. Scroll down to the
`odoo-server-xxx`{.interpreted-text role="guilabel"} service (where
[xxx]{.title-ref} is the odoo version), right-click it, and select
`Start`{.interpreted-text role="guilabel"} or
`Restart`{.interpreted-text role="guilabel"}.

## Windows virtual IoT uninstall {#iot/windows_iot/uninstall}

To uninstall the Windows virtual IoT,
[uninstall](https://support.microsoft.com/en-us/windows/uninstall-or-remove-apps-and-programs-in-windows-4b55f974-2cc6-2d2b-d092-5905080eaf98#ID0EBD=Windows_11)
the Odoo program on your Windows computer. Confirm the uninstallation
and complete the steps in the `Odoo Uninstall`{.interpreted-text
role="guilabel"} dialog.




--- SOURCE: general/iot.md ---

show-content

:   

hide-page-toc

:   

nosearch

:   

# Internet of Things (IoT)

Odoo Internet of Things (IoT) allows to connect physical devices such as
barcode scanners, receipt printers, payment terminals, measurement
tools, etc. to an Odoo database using an IoT system.

The following IoT systems are supported:

- `IoT box <iot/iot_box>`{.interpreted-text role="doc"}: micro-computer,
  plug-and-play device (i.e., the Odoo IoT program is pre-installed);
- `Windows virtual IoT <iot/windows_iot>`{.interpreted-text role="doc"}:
  Odoo IoT program for Windows that can be installed on a Windows
  computer.

:::: note
::: title
Note
:::

\- `MRP (Material Requirement Planning)`{.interpreted-text role="abbr"}
devices, including cameras and measurement tools, are not compatible
with Windows virtual IoT. - Multiple IoT systems can be used at the same
time. - It is also possible to create a Windows Virtual Machine on a
MacOS/Linux computer. However, this option is not supported by Odoo, and
no troubleshooting assistance will be provided.
::::

## IoT box subscription {#iot/iot/iot-subscription}

An IoT box subscription is required for production use of IoT systems.
If you have issues related to your subscription, contact the database\'s
account manager or Odoo partner for assistance.

:::: tip
::: title
Tip
:::

If the subscription is linked to an [Odoo.com](https://www.odoo.com)
portal user, check the information on the portal\'s subscription page.
::::

::: seealso
\- [Odoo\'s compatible IoT
devices](https://www.odoo.com/app/iot-hardware) - [Odoo Tutorials:
Internet of Things (IoT)
Tutorials](https://www.odoo.com/slides/internet-of-things-iot-175) -
[IoT system FAQ](https://www.odoo.com/app/iot-faq) - [Magic Sheet - Odoo
Internet of Things
\[PDF\]](https://drive.google.com/file/d/18D0VqlGvW6kUg-xKmyELrQqJ6J3bHKGy/view)
:::

::::::::: cards
::: {.card target="iot/iot_box" large=""}
IoT box

Set up an IoT box.
:::

::: {.card target="iot/windows_iot" large=""}
Windows virtual IoT

Set up Windows virtual IoT.
:::

::: {.card target="iot/connect"}
IoT system connection to Odoo

Connect the IoT system to your Odoo database and troubleshoot potential
connection issues.
:::

::: {.card target="iot/devices"}
Devices

Connect devices such as printers, screens, measurement tools, etc., to
the IoT system.
:::

::: {.card target="iot/iot_advanced/https_certificate_iot"}
HTTPS certificate

Verify your IoT system and database meet the eligibility requirements
for HTTPS certificate generation and address any related issues.
:::

::: {.card target="iot/iot_advanced/updating_iot"}
IoT system updates

Update your IoT system\'s image, core code, and handlers to benefit from
the latest IoT fixes and features or reset the IoT system if needed.
:::
:::::::::

::: {.toctree titlesonly=""}
iot/iot_box iot/windows_iot iot/connect iot/iot_advanced iot/devices
:::




--- SOURCE: general/users/2fa.md ---

# Two-factor authentication

*Two-factor authentication (2FA)* is a way to improve security, and
prevent unauthorized persons from accessing user accounts.

Practically, `2FA (two-factor authentication)`{.interpreted-text
role="abbr"} means storing a secret inside an *authenticator*, usually
on a mobile phone, and exchanging a code from the authenticator when
trying to log in.

This means an unauthorized user would need to guess the account password
*and* have access to the authenticator, which is a more difficult
proposition.

## Requirements

:::: important
::: title
Important
:::

These lists are just examples. They are **not** endorsements of any
specific software.
::::

Phone-based authenticators are the easiest and most commonly used.
Examples include:

- [Authy](https://authy.com/)
- [FreeOTP](https://freeotp.github.io/)
- [Google
  Authenticator](https://support.google.com/accounts/answer/1066447?hl=en)
- [LastPass Authenticator](https://lastpass.com/auth/)
- [Microsoft
  Authenticator](https://www.microsoft.com/en-gb/account/authenticator?cmp=h66ftb_42hbak)

Password managers are another option. Common examples include:

- [1Password](https://support.1password.com/one-time-passwords/)
- [Bitwarden](https://bitwarden.com/help/article/authenticator-keys/),

:::: note
::: title
Note
:::

The remainder of this document uses Google Authenticator as an example,
as it is one of the most commonly used. This is **not** an endorsement
of the product.
::::

## Two-factor authentication setup

After selecting an authenticator, log in to Odoo, then click the profile
avatar in the upper-right corner, and select
`My Profile`{.interpreted-text role="guilabel"} from the resulting
drop-down menu.

Click the `Account Security`{.interpreted-text role="guilabel"} tab,
then slide the `Two-Factor Authentication`{.interpreted-text
role="guilabel"} toggle to *active*.

<figure class="align-center">
<img src="2fa/account-security.png" />
</figure>

This generates a `Security Control`{.interpreted-text role="guilabel"}
pop-up window that requires password confirmation to continue. Enter the
appropriate password, then click `Confirm Password`{.interpreted-text
role="guilabel"}. Next, a
`Two-Factor Authentication Activation`{.interpreted-text
role="guilabel"} pop-up window appears, with a
`QR (Quick Response)`{.interpreted-text role="abbr"} code.

<figure class="align-center">
<img src="2fa/qr-code.png" />
</figure>

Using the desired authenticator application, scan the
`QR (Quick Response)`{.interpreted-text role="abbr"} code when prompted.

:::: tip
::: title
Tip
:::

If scanning the screen is not possible (e.g. the setup is being
completed on the *same* device as the authenticator application),
clicking the provided `Cannot scan it?`{.interpreted-text
role="guilabel"} link, or copying the secret to manually set up the
authenticator, is an alternative.

<figure class="align-center">
<img src="2fa/secret-visible.png" />
</figure>

<figure class="align-center">
<img src="2fa/input-secret.png" />
</figure>
::::

Afterwards, the authenticator should display a *verification code*.

<figure class="align-center">
<img src="2fa/authenticator.png" />
</figure>

Enter the code into the `Verification Code`{.interpreted-text
role="guilabel"} field, then click `Activate`{.interpreted-text
role="guilabel"}.

<figure class="align-center">
<img src="2fa/2fa-enabled.png" />
</figure>

## Logging in

To confirm `2FA (two-factor authentication)`{.interpreted-text
role="abbr"} setup is complete, log out of Odoo.

On the login page, input the username and password, then click
`Log in`{.interpreted-text role="guilabel"}. On the
`Two-factor Authentication`{.interpreted-text role="guilabel"} page,
input the code provided by the chosen authenticator in the
`Authentication Code`{.interpreted-text role="guilabel"} field, then
click `Log in`{.interpreted-text role="guilabel"}.

![The login page with 2fa enabled.](2fa/2fa-login.png){.align-center}

:::: danger
::: title
Danger
:::

If a user loses access to their authenticator, an administrator **must**
deactivate `2FA (two-factor authentication)`{.interpreted-text
role="abbr"} on the account before the user can log in.
::::

## Enforce two-factor authentication

To enforce the use of
`2FA (two-factor authentication)`{.interpreted-text role="abbr"} for all
users, first navigate to `Main Odoo Dashboard -->
Apps`{.interpreted-text role="menuselection"}. Remove the
`Apps`{.interpreted-text role="guilabel"} filter from the
`Search...`{.interpreted-text role="guilabel"} bar, then search for [2FA
by mail]{.title-ref}.

Click `Install`{.interpreted-text role="guilabel"} on the Kanban card
for the `2FA by mail`{.interpreted-text role="guilabel"} module.

![The 2FA by mail module in the Apps directory.](2fa/2FA-by-mail.png){.align-center}

After installation is complete, go to
`Settings app: Permissions`{.interpreted-text role="guilabel"}. Tick the
checkbox labeled, `Enforce two-factor authentication`{.interpreted-text
role="guilabel"}. Then, use the radio buttons to choose whether to apply
this setting to `Employees only`{.interpreted-text role="guilabel"}, or
`All users`{.interpreted-text role="guilabel"}.

:::: note
::: title
Note
:::

Selecting `All users`{.interpreted-text role="guilabel"} applies the
setting to portal users, in addition to employees.
::::

![The enforce two factor setting in the Settings application.](2fa/enforce-settings.png){.align-center}

Click `Save`{.interpreted-text role="guilabel"} to commit any unsaved
changes.




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

## Users {#access-rights/users}

The access rights for
`individual users <users/add-individual>`{.interpreted-text role="ref"}
are set when the user is added to the database, but they can be adjusted
at any point in the user\'s profile.

To make changes to a user\'s rights, click on the desired user to edit
their profile.

![Users menu in the Users & Companies section of the Settings app of Odoo.](access_rights/navigate-to-users-menu.png)

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

![The Sales apps drop-down menu to set the user\'s level of permissions.](access_rights/user-permissions-dropdown-menu.png)

## Create and modify groups {#access-rights/groups}

*Groups* are app-specific sets of permissions that are used to manage
common access rights for a large amount of users. Administrators can
modify the existing groups in Odoo, or create new ones to define rules
for models within an application.

To access groups, first activate Odoo\'s
`developer mode <developer-mode>`{.interpreted-text role="ref"}, then go
to `Settings app --> Users & Companies --> Groups`{.interpreted-text
role="menuselection"}.

![Groups menu in the Users & Companies section of the Settings app of Odoo.](access_rights/click-users-and-companies.png)

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
`fa-times`{.interpreted-text role="icon"} `(cancel)`{.interpreted-text
role="guilabel"} icon to remove a row.

![Tabs in the Groups form to modify the settings of the group.](access_rights/groups-form.png)

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
  drop-down, then enter a name for the access right in the
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
  advisable to choose a name that identifies its purpose.

  For example, the access that purchase managers have to the
  `Contact`{.interpreted-text role="guilabel"} model could be named
  [res.partner.purchase.manager]{.title-ref}. This consists of the
  technical name of the model, followed by a name identifying the group
  of users in question.

  ![Name of access rights to a model.](access_rights/name-field.png)

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
`fa-bug`{.interpreted-text role="icon"} `(debug)`{.interpreted-text
role="guilabel"} icon, located in the top banner.

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




--- SOURCE: general/users/facebook.md ---

# Facebook sign-in authentication

The *Facebook* OAuth sign-in function allows Odoo users to sign in to
their database with their Facebook account.

:::: danger
::: title
Danger
:::

Databases housed on Odoo.com should **not** use OAuth login for the
owner or administrator of the database, as it would unlink the database
from their Odoo.com account. If OAuth is setup for that user, the
database can no longer be duplicated, renamed, or otherwise managed from
the Odoo.com portal.
::::

## Meta for Developers setup

Go to [Meta for Developers](https://developers.facebook.com/) and log
in. Click `My
Apps`{.interpreted-text role="guilabel"}. On the
`Apps`{.interpreted-text role="guilabel"} page, click
`Create App`{.interpreted-text role="guilabel"}.

On the `Use cases`{.interpreted-text role="guilabel"} page, select
`Authenticate and request data from users with
Facebook Login`{.interpreted-text role="guilabel"}, then click
`Next`{.interpreted-text role="guilabel"}.

In the `Add an app name`{.interpreted-text role="guilabel"} field, enter
[Odoo Login OAuth]{.title-ref}, or a similar title.

:::: note
::: title
Note
:::

The `App contact email`{.interpreted-text role="guilabel"} automatically
defaults to the email address associated with the Meta account. If this
email address is not regularly monitored, it may be wise to use another
email address.
::::

Click `Next`{.interpreted-text role="guilabel"}. Review the
`Publishing requirements`{.interpreted-text role="guilabel"}, the `Meta
Platform Terms`{.interpreted-text role="guilabel"}, and
`Developer Policies`{.interpreted-text role="guilabel"}. Then, click
`Create app`{.interpreted-text role="guilabel"}.

:::: important
::: title
Important
:::

Clicking `Create app`{.interpreted-text role="guilabel"} may require
password re-entry.
::::

### Customize app

After the new app is created, the `Dashboard`{.interpreted-text
role="guilabel"} page appears, with a list of steps to be completed
before the app can be published. From here, click
`Customize adding a Facebook
Login button`{.interpreted-text role="guilabel"}.

![The App Dashboard in the Meta for developers platform.](facebook/app-requirements.png){.align-center}

On the `Customize`{.interpreted-text role="guilabel"} page, click
`Settings`{.interpreted-text role="guilabel"}.

In the `Valid OAuth Redirect URIs`{.interpreted-text role="guilabel"}
field, enter [https://\<odoo base url\>/auth_oauth/signin]{.title-ref},
replacing [\<odoo base url\>]{.title-ref} with the URL of the applicable
database.

::: example
If a database has the URL [https://example.odoo.com]{.title-ref}, the
URL [https://example.odoo.com/auth_oauth/signin]{.title-ref} would be
entered in the `Valid OAuth
Redirect URIs`{.interpreted-text role="guilabel"} field.
:::

Click `Save changes`{.interpreted-text role="guilabel"} when finished.

### Configure settings

At the far left of the page, click
`App settings --> Basic`{.interpreted-text role="menuselection"}. This
page contains additional settings that are required before the app can
be submitted for approval.

In the `Privacy Policy URL`{.interpreted-text role="guilabel"} field,
enter [https://www.odoo.com/privacy]{.title-ref}.

:::: note
::: title
Note
:::

<https://www.odoo.com/privacy> is the default privacy policy for
databases hosted on Odoo.com.
::::

Click the `App Icon`{.interpreted-text role="guilabel"} field to open a
file upload window. From here, select and upload an app icon.

In the `User data deletion`{.interpreted-text role="guilabel"} field,
enter
[https://www.odoo.com/documentation/17.0/administration/odoo_accounts.html]{.title-ref}.

:::: note
::: title
Note
:::

This document provides instructions on how a user can delete their Odoo
account.
::::

Lastly, click the `Category`{.interpreted-text role="guilabel"} field,
and select `Business and pages`{.interpreted-text role="guilabel"} from
the drop-down menu.

Click `Save changes`{.interpreted-text role="guilabel"}.

![An exampled of the Basic Settings page in the Meta for developers platform.](facebook/app-id.png){.align-center}

### Capture app ID {#users/app-id}

After the app is created, and approved, select and copy the
`App ID`{.interpreted-text role="guilabel"}. Paste this information on a
clipboard or notepad file, as it is needed in a later step to complete
the setup.

### Publish

On the left side of the page, click `Publish`{.interpreted-text
role="guilabel"}. Depending on the status of the connected Facebook
account, additional verification and testing steps may be required, and
are listed on this page.

After reviewing the information, click `Publish`{.interpreted-text
role="guilabel"}.

::: seealso
Additional information regarding Meta App Development, including further
details on building, testing, and use cases, can be found in the [Meta
for developers
documentation](https://developers.facebook.com/docs/development).
:::

## Odoo setup

First, activate
`Developer mode <developer-mode/activation>`{.interpreted-text
role="ref"}.

Navigate to the `Settings app`{.interpreted-text role="menuselection"},
and scroll down to the `Integrations`{.interpreted-text role="guilabel"}
section. There, tick the checkbox labeled,
`OAuth Authentication`{.interpreted-text role="guilabel"}. Click
`Save`{.interpreted-text role="guilabel"}.

![The enable OAuth setting in the Settings app.](facebook/enable-oauth.png){.align-center}

Then, sign in to the database once the login screen loads.

After successfully logging in, navigate to
`Settings app --> Users & Companies -->
OAuth Providers`{.interpreted-text role="menuselection"}. Click
`Facebook Graph`{.interpreted-text role="guilabel"}.

In the `Client ID`{.interpreted-text role="guilabel"} field, enter the
`App ID <users/app-id>`{.interpreted-text role="ref"} from the previous
section, then tick the `Allowed`{.interpreted-text role="guilabel"}
checkbox.

![The Facebook Graph record in Odoo.](facebook/facebook-graph.png){.align-center}




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

# LDAP authentication

To configure
`LDAP (Lightweight Directory Access Protocol)`{.interpreted-text
role="abbr"} authentication in Odoo:

1.  Open the Settings app, scroll down to the
    `Integrations`{.interpreted-text role="guilabel"} section, and
    enable `LDAP Authentication`{.interpreted-text role="guilabel"}.
2.  Click `Save`{.interpreted-text role="guilabel"}, then go back to the
    `Integrations`{.interpreted-text role="guilabel"} section and click
    `LDAP Server`{.interpreted-text role="guilabel"}.
3.  In the `Set up your LDAP Server`{.interpreted-text role="guilabel"}
    list, click `New`{.interpreted-text role="guilabel"}, then select
    the required company in the dropdown list.
4.  In the `Server information`{.interpreted-text role="guilabel"}
    section, enter the server\'s IP address and port in the
    `LDAP server address`{.interpreted-text role="guilabel"} and
    `LDAP Server port`{.interpreted-text role="guilabel"} fields,
    respectively.
5.  Enable `Use TLS`{.interpreted-text role="guilabel"} to request
    secure TLS/SSL encryption when connecting to the LDAP server,
    providing the server has StartTLS enabled.
6.  In the `Login information`{.interpreted-text role="guilabel"}
    section, enter the ID and password of the account used to query the
    server in the `LDAP binddn`{.interpreted-text role="guilabel"} and
    `LDAP password`{.interpreted-text role="guilabel"} fields,
    respectively. If the fields are left empty, the server will perform
    the query anonymously.
7.  In the `Process parameter`{.interpreted-text role="guilabel"}
    section, enter:
    - the LDAP server\'s name in the `LDAP base`{.interpreted-text
      role="guilabel"} field using LDAP format (e.g.,
      `dc=example,dc=com`);
    - `uid=%s` in the `LDAP filter`{.interpreted-text role="guilabel"}
      field.
8.  In the `User information`{.interpreted-text role="guilabel"}
    section:
    - Enable `Create user`{.interpreted-text role="guilabel"} to create
      a user profile in Odoo the first time someone logs in using LDAP;
    - Select the `User template`{.interpreted-text role="guilabel"} to
      be used to create the new user profiles. If no template is
      selected, the administrator\'s profile is used.

:::: note
::: title
Note
:::

When using Microsoft Active Directory (AD) for LDAP authentication, if
users experience login issues despite using valid credentials, create a
new system parameter to disable referral chasing in the LDAP client:

1.  `Activate the developer mode. <developer-mode>`{.interpreted-text
    role="ref"}
2.  Go to
    `Settings --> Technical --> System Parameters`{.interpreted-text
    role="menuselection"} and click `New`{.interpreted-text
    role="guilabel"}.
3.  Fill in the fields:
    - `Key`{.interpreted-text role="guilabel"}:
      `auth_ldap.disable_chase_ref`
    - `Value`{.interpreted-text role="guilabel"}: `True`
::::




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

## Provide portal access to customers {#portal/access}

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
role="menuselection"}, and click on `New`{.interpreted-text
role="guilabel"}.

![View of the settings page emphasizing the manage users field in Odoo.](users/manage-users.png)

Fill in the form with all the required information. Under the
`Access Rights
<users/access_rights>`{.interpreted-text role="doc"} tab, choose the
group within each application the user can have access to.

The list of applications shown is based on the applications installed on
the database.

![View of a user\'s form emphasizing the access rights tab in Odoo.](users/new-user.png)

After filling out all the necessary fields on the page,
`fa-cloud-upload`{.interpreted-text role="icon"} `(Save
manually)`{.interpreted-text role="guilabel"}. An invitation email is
automatically sent to the user, using the email in the
`Email Address`{.interpreted-text role="guilabel"} field. The user must
click on the link included in the email to accept the invitation, and to
create a database login.

![View of a user\'s form with a notification that the invitation email has been sent in Odoo.](users/invitation-email.png)

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

`User Type`{.interpreted-text role="guilabel"} can be chosen on the
`Manage Users`{.interpreted-text role="guilabel"} page by clicking on
the search bar, and then
`setting a filter <search/preconfigured-filters>`{.interpreted-text
role="ref"} for either `Internal
User`{.interpreted-text role="guilabel"} or
`Portal User`{.interpreted-text role="guilabel"}.

Odoo databases have three types of users:
`Internal User`{.interpreted-text role="guilabel"},
`Portal`{.interpreted-text role="guilabel"}, and
`Public`{.interpreted-text role="guilabel"}. Users are considered
*internal database* users. Portal users are *external users*, who only
have access to the database portal to view records. Public users are
those visiting websites, via the website\'s frontend. See the
documentation on `users/portal`{.interpreted-text role="doc"}.

The `Portal`{.interpreted-text role="guilabel"} user option does **not**
allow the administrator to choose access rights. These users have
specific access rights pre-set (such as, record rules and restricted
menus), and usually do not belong to the usual Odoo groups.

## User devices

For security purposes, when a user logs into the database, the various
login information, such as the IP address, is stored in the user\'s
profile. It is best practice to check this periodically, to ensure all
access is from the user, and no one else has accessed the database.

To check the logged-in devices, click the user icon in the upper-right
corner, and click `My Profile`{.interpreted-text role="guilabel"}. This
opens the user\'s profile in the **Settings** app. Click the
`Devices`{.interpreted-text role="guilabel"} tab to view a Kanban list
of all devices the user has logged into the database with. Any device
currently logged into the system displays a green circle next to the
device name on the Kanban card.

![The Kanban view of all user devices.](users/devices.png)

Click on a card to view the details for the device. Each card displays
the `User`{.interpreted-text role="guilabel"} name, the
`Name`{.interpreted-text role="guilabel"} of the device, the
`Last IP Address`{.interpreted-text role="guilabel"} used as well as the
`Linked IP Address`{.interpreted-text role="guilabel"}. It also shows
the `First Activity`{.interpreted-text role="guilabel"} and `Last
Activity`{.interpreted-text role="guilabel"}, which shows when the
device first logged into the database, and the last time it was active
on the database.

If a device is legitimate and should be retained, click
`Save`{.interpreted-text role="guilabel"}.

If the device is legitimate but should **not** be retained, and does not
pose a security risk, click `Delete`{.interpreted-text role="guilabel"}.

![The device details for one device.](users/individual-device.png)

### Revoke devices

If a listed device is **not** a legitimate user device, and could be a
potential security risk, remove the device and revoke access by clicking
the `Revoke`{.interpreted-text role="guilabel"} button.

A `Security Control`{.interpreted-text role="guilabel"} pop-up window
loads, asking to [Please confirm your identity by entering your
password]{.title-ref}. Enter the user\'s password, then click
`Confirm Password`{.interpreted-text role="guilabel"}.

The device disappears from the `Devices`{.interpreted-text
role="guilabel"} tab and can no longer be used to log into the database.

> ![The security pop-up window asking to verify the account with a password.](users/security.png)

## Deactivate users {#users/deactivate}

To deactivate (i.e. archive) a user, navigate to
`Settings app --> Users section -->
Manage Users`{.interpreted-text role="menuselection"}. Then, tick the
checkbox to the left of the users to be deactivated.

After selecting the appropriate user to be archived, click the
`fa-cog`{.interpreted-text role="icon"} `(Actions)`{.interpreted-text
role="guilabel"} icon, and select `Archive`{.interpreted-text
role="guilabel"} from the resulting drop-down menu. Then, click
`OK`{.interpreted-text role="guilabel"} from the
`Confirmation`{.interpreted-text role="guilabel"} pop-up window that
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

![Too many users on a database error message.](users/add-more-users.png)

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

![Minimum Password Length highlighted in the Permissions section of General Settings.](users/minimum-password-length.png)

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

![Enabling Password Reset in Odoo Settings.](users/password-reset-login.png)

On the login page, click `Reset Password`{.interpreted-text
role="guilabel"} to initiate the password reset process, and have a
reset-token sent to the email on file.

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

![Example of an email with a password reset link for an Odoo account.](users/password-reset-email.png)

### Change user password {#users/change-password}

Go to `Settings app --> Users & Companies --> Users`{.interpreted-text
role="menuselection"}, and select a user to access its form. Click on
the `fa-cog`{.interpreted-text role="icon"}
`(Actions)`{.interpreted-text role="guilabel"} icon, and select
`Change Password`{.interpreted-text role="guilabel"} from the resulting
drop-down menu. Enter a new password in the
`New Password`{.interpreted-text role="guilabel"} column of the
`Change Password`{.interpreted-text role="guilabel"} pop-up window that
appears, and confirm the change by clicking
`Change Password`{.interpreted-text role="guilabel"}.

![Change a user\'s password on Odoo.](users/change-password.png)

:::: note
::: title
Note
:::

This operation only modifies the password of the users locally, and does
**not** affect their Odoo account.

If the Odoo password needs to be changed, use the
`send the password reset
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
users. To configure a multi-company environment for a user, navigate to
the desired user by going to:
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

![View of a user\'s form emphasizing the multi companies field in Odoo.](users/multi-companies.png)

::: seealso
`companies`{.interpreted-text role="doc"}
:::

::: {.toctree titlesonly=""}
users/language users/2fa users/access_rights users/portal users/facebook
users/google users/azure users/ldap
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

2.  Select the button to which the rule should be applied.

3.  Click `fa-plus`{.interpreted-text role="icon"}
    `Add an approval step`{.interpreted-text role="guilabel"} in the
    `fa-server`{.interpreted-text role="icon"}
    `Properties`{.interpreted-text role="guilabel"} tab.

4.  Specify which users are responsible for approving the action by
    using one of the following fields or both:

    > - `Approvers`{.interpreted-text role="guilabel"} to specify one or
    >   several users;
    >
    > - `Approver Group`{.interpreted-text role="guilabel"} to specify
    >   one user group.
    >
    >   :::: note
    >   ::: title
    >   Note
    >   :::
    >
    >   An activity is created for all users set as
    >   `Approvers`{.interpreted-text role="guilabel"} when their
    >   approval is requested.
    >   ::::

5.  (*optional*) Select the `Users to Notify`{.interpreted-text
    role="guilabel"} via an internal note when the action is approved or
    rejected.

6.  (*optional*) Add a `Description`{.interpreted-text role="guilabel"}
    to be displayed on the button.

:::: tip
::: title
Tip
:::

You can specify under which condition(s) an approval step should be
applied by clicking the `fa-filter`{.interpreted-text role="icon"}
(`filter`{.interpreted-text role="guilabel"}) icon next to the
`Approvers`{.interpreted-text role="guilabel"} field.
::::

To add another approval step, click `fa-plus`{.interpreted-text
role="icon"} `Add an approval step`{.interpreted-text role="guilabel"}.
When there are multiple steps, you can:

- Enable `Exclusive Approval`{.interpreted-text role="guilabel"} on any
  step so that a user who approves a step cannot approve another step
  for the same record.
- Change the `Approval Order`{.interpreted-text role="guilabel"} of the
  steps by selecting a number, [1]{.title-ref} being the first step,
  [2]{.title-ref} the second step, and so on. A user responsible for a
  higher step can approve/reject previous step(s) unless
  `Exclusive Approval`{.interpreted-text role="guilabel"} is selected.

Click the `fa-trash`{.interpreted-text role="icon"}
(`trash`{.interpreted-text role="guilabel"}) icon next to the
`Approvers`{.interpreted-text role="guilabel"} field to remove an
approval step.

:::: tip
::: title
Tip
:::

You can create `user groups <access-rights/groups>`{.interpreted-text
role="ref"} specifically for approvals.
::::

## Use {#approval-rules/use}

Once an approval rule has been defined for a button, a **user avatar**
icon is displayed next to the button\'s label for each approval step.
Clicking an icon reveals the step(s).

![Confirm button with two approval steps](approval_rules/approval-button.png)

:::: note
::: title
Note
:::

If an unauthorized user clicks the button, an error message is displayed
and an activity is created for the users specified in the
`Approvers`{.interpreted-text role="guilabel"} field, if any.
::::

Authorized users can:

- Perform the action directly by clicking the button if it is the
  last/only approval step.
- Approve the action and let another user perform it - or move it to the
  next approval step - by clicking the **user avatar** icon next to the
  button\'s label, then clicking the `fa-check`{.interpreted-text
  role="icon"} (`approve`{.interpreted-text role="guilabel"}).
- Reject the action by clicking the **user avatar** icon next to the
  button\'s label and then the `fa-times`{.interpreted-text role="icon"}
  (`reject`{.interpreted-text role="guilabel"}) button.
- (only for users selected under the `Approvers`{.interpreted-text
  role="guilabel"} field) Delegate their approval rights to one or
  several users for **all records** by:
  - Clicking the `oi-view-kanban`{.interpreted-text role="icon"}
    (`kanban view`{.interpreted-text role="guilabel"}) icon and then
    `Delegate`{.interpreted-text role="guilabel"}.

  - Selecting one or several `Approvers`{.interpreted-text
    role="guilabel"}, `Until`{.interpreted-text role="guilabel"} when
    they will have approval rights (forever if left empty), and,
    optionally, the user(s) who should be notified via an internal note
    using the `Notify to`{.interpreted-text role="guilabel"} field.

    ![Delegate to dialog](approval_rules/delegate-dialog.png)

:::: tip
::: title
Tip
:::

\- A user who approves/rejects an action can revoke their decision by
clicking the **user avatar** icon next to the button\'s label and then
the `fa-undo`{.interpreted-text role="icon"} (`revoke`{.interpreted-text
role="guilabel"}) button. They can also revoke the decision of other
users for steps with a lower `Approval Order`{.interpreted-text
role="guilabel"} unless `Exclusive Approval`{.interpreted-text
role="guilabel"} is enabled. - Approvals are tracked in the record\'s
chatter. An approval entry is also created every time a Studio
approval-related action is performed. To access approval entries,
`activate the
developer mode </applications/general/developer_mode>`{.interpreted-text
role="doc"} and go to `Settings -->
Technical --> Studio Approval Entries`{.interpreted-text
role="menuselection"}.
::::




--- SOURCE: studio/automated_actions/webhooks.md ---

# Webhooks

:::: warning
::: title
Warning
:::

It is *highly recommended* to consult with a developer, solution
architect, or another technical role when deciding to use webhooks and
throughout the implementation process. If not properly configured,
webhooks may disrupt the Odoo database and can take time to revert.
::::

Webhooks, which can be created in **Odoo Studio**, allow you to automate
an action in your Odoo database when a specific event occurs in another,
external system.

In practice, this works as follows: when the event occurs in the
external system, a data file (the \"payload\") is sent to the Odoo
webhook\'s URL via a [POST]{.title-ref} API request, and a predefined
action is performed in your Odoo database.

Unlike scheduled actions, which run at predefined intervals, or manual
API requests, which need to be explicitly invoked, webhooks enable
real-time, event-driven communication and automation. For example, you
can set up a webhook to have your Odoo inventory data updated
automatically when a sales order is confirmed in an external
point-of-sale system.

Setting up a webhook in Odoo requires no coding when connecting two Odoo
databases, but
`testing a webhook <studio/webhooks/test-webhook>`{.interpreted-text
role="ref"} requires an external tool.
`Custom target records or actions <studio/webhooks/webhook-example>`{.interpreted-text
role="ref"} may require programming skills.

:::: note
::: title
Note
:::

This article covers creating a webhook that *receives* data from an
external source. However, it is also possible to create an automated
action that `sends data to an external webhook
<studio/automated-actions/action-webhook>`{.interpreted-text role="ref"}
when a change occurs in your Odoo database.
::::

## Create a webhook in Odoo {#studio/webhooks/create-webhook}

:::: important
::: title
Important
:::

Before implementing a webhook in a live database, configure and test it
using a `duplicate
database <odoo-online/duplicate>`{.interpreted-text role="ref"} to
ensure the webhook performs as intended.
::::

:::: tip
::: title
Tip
:::

`Activating developer mode <developer-mode>`{.interpreted-text
role="ref"} before creating up a webhook gives greater flexibility in
selecting the `model <../models_modules_apps>`{.interpreted-text
role="doc"} the automation rule targets. It also allows you to find the
technical name of the model and fields, which may be needed to configure
the payload.

To find a model\'s technical name, with developer mode activated, hover
over the model name and then click `fa-arrow-right`{.interpreted-text
role="icon"} `(Internal link)`{.interpreted-text role="guilabel"}. The
technical name can be found in the `Model`{.interpreted-text
role="guilabel"} field. For example, a sales order webhook uses the
*Sales Order* model, but the technical name [sale.order]{.title-ref} is
used in the payload.
::::

To create a webhook in **Studio**, proceed as follows:

1.  `Open Studio <studio/access>`{.interpreted-text role="ref"} and
    click `Webhooks`{.interpreted-text role="guilabel"}, then
    `New`{.interpreted-text role="guilabel"}.

2.  Give the webhook a clear, meaningful name that identifies its
    purpose.

3.  If needed, and provided developer mode is activated, select the
    appropriate `Model`{.interpreted-text role="guilabel"} from the
    dropdown. If developer mode is not activated, the automation rule
    targets the current model by default.

4.  The webhook\'s URL is automatically generated, but can be changed if
    needed by clicking `Rotate Secret`{.interpreted-text
    role="guilabel"}. This is the URL that should be used when
    implementing the webhook in the external system that will send
    updates to the database.

    :::: warning
    ::: title
    Warning
    :::

    The URL is **confidential** and should be treated with care. Sharing
    it online or without caution can provide unintended access to the
    Odoo database. If the URL is updated after the initial
    implementation, make sure to update it in the external system.
    ::::

5.  If desired, enable `Log Calls`{.interpreted-text role="guilabel"} to
    track the history of API requests made to the webhook\'s URL, e.g.,
    for troubleshooting purposes.

6.  If the system sending the webhook is not Odoo, adjust the
    `Target Record`{.interpreted-text role="guilabel"} code to look for
    the JSON record included in the payload when the API request is made
    to the webhook\'s URL. If the system sending the webhook is an Odoo
    database, ensure that the [id]{.title-ref} and [model]{.title-ref}
    appear in the payload.

    If the webhook is used to create records in the Odoo database, use
    [model.browse(i)]{.title-ref} or [model.search(i)]{.title-ref}
    instead of the default `Target Record`{.interpreted-text
    role="guilabel"} format.

7.  Click `Add an action`{.interpreted-text role="guilabel"} in the
    `Actions To Do`{.interpreted-text role="guilabel"} tab to define the
    `actions
    <studio/automated-actions/action>`{.interpreted-text role="ref"} to
    be executed.

8.  Before implementing the webhook in the external system, `test
    <studio/webhooks/test-webhook>`{.interpreted-text role="ref"} it to
    ensure it works as intended.

:::: tip
::: title
Tip
:::

\- Webhooks can also be created via the `Automations`{.interpreted-text
role="guilabel"} menu in **Studio** by selecting the trigger
`On webhook`{.interpreted-text role="guilabel"}. - To access the history
of API requests if `Log Calls`{.interpreted-text role="guilabel"} has
been enabled, click the `Logs`{.interpreted-text role="guilabel"} smart
button at the top of the `Automation rules`{.interpreted-text
role="guilabel"} form. - If the purpose of the webhook is anything other
than to update an existing record, e.g., to create a new record, the
`Execute Code`{.interpreted-text role="guilabel"} action must be chosen.
::::

## Test a webhook {#studio/webhooks/test-webhook}

Testing a webhook requires a test payload and an external tool or
system, like [Postman](https://www.postman.com/), to send the payload
via a [POST]{.title-ref} API request. This section presents the steps to
test a webhook in Postman.

:::: tip
::: title
Tip
:::

\- See the
`webhook use cases section <studio/webhooks/webhook-examples>`{.interpreted-text
role="ref"} for step-by-step explanations of how to test webhooks using
test payloads. - To get specific help with testing a webhook with
Postman, contact their support team.
::::

1.  In Postman, create a new HTTP request and set its method to
    `POST`{.interpreted-text role="guilabel"}.
2.  Copy the webhook\'s URL from your Odoo database using the
    `fa-link`{.interpreted-text role="icon"} `(link)`{.interpreted-text
    role="guilabel"} icon and paste it into the URL field in Postman.
3.  Click the `Body`{.interpreted-text role="guilabel"} tab and select
    `raw`{.interpreted-text role="guilabel"}.
4.  Set the file type to `JSON`{.interpreted-text role="guilabel"}, then
    copy the code from the test payload and paste it into the code
    editor.
5.  Click `Send`{.interpreted-text role="guilabel"}.

::: {#studio/webhooks/test-webhook-response}
In the `Response`{.interpreted-text role="guilabel"} viewer at the
bottom of the screen in Postman, details, including a HTTP response
code, indicate whether or not the webhook is functioning correctly.
:::

- A [200 OK]{.title-ref} or [status: ok]{.title-ref} message indicates
  that the webhook is functioning properly on Odoo\'s side. From here,
  implementation can begin with the other system to automatically send
  the API requests to the Odoo webhook\'s URL.
- If any other response is returned, the number associated with it helps
  to identify the problem. For example, a [500 Internal Server
  Error]{.title-ref} message means that Odoo could not interpret the
  call properly. In this case, ensure the fields found in the JSON file
  are properly mapped in the webhook\'s configuration and in the system
  sending the test call.

:::: tip
::: title
Tip
:::

Turning on call logging in the webhook\'s configuration in Odoo provides
error logs if the webhook is not functioning as intended.
::::

## Implement a webhook in an external system

When the webhook has been successfully created in Odoo and tested,
implement it in the system that sends data to the Odoo database, making
sure the [POST]{.title-ref} API requests are sent to the webhook\'s URL.

## Webhook use cases {#studio/webhooks/webhook-examples}

Below are two examples of how to use webhooks in Odoo. A test payload is
provided for each example, and can be found in the section on testing
the webhook. [Postman](https://www.postman.com/) is used to send the
test payload.

### Update a sales order\'s currency

This webhook updates a sales order in the **Sales** app to
[USD]{.title-ref} when the external system sends a [POST]{.title-ref}
API request to the webhook\'s URL that includes that sales order number
(which is identified by the payload\'s [id]{.title-ref} record).

This could be useful for subsidiaries outside the United States with a
mother company located inside the United States or during mergers when
consolidating data into one Odoo database.

#### Create the webhook

To create this webhook, proceed as follows:

1.  Open the **Sales** app, then
    `open Studio <studio/access>`{.interpreted-text role="ref"} and
    click `Webhooks`{.interpreted-text role="guilabel"}. The *Sales
    Order* model is selected by default.
2.  Click `New`{.interpreted-text role="guilabel"}. The
    `Trigger`{.interpreted-text role="guilabel"} is set to
    `On webhook`{.interpreted-text role="guilabel"} by default.
3.  Set the `Target Record`{.interpreted-text role="guilabel"} to
    [model.env\[payload.get(\'model\')\].browse(int(payload.get(\'id\')))]{.title-ref},
    where:
    - [payload.get(\'model\')]{.title-ref} retrieves the value
      associated with the [model]{.title-ref} key in the payload, i.e.,
      [sale.order]{.title-ref}, which is the technical name of the
      *Sales Order* model.
    - [payload.get(\'id\')]{.title-ref} retrieves the value associated
      with the [id]{.title-ref} key in the payload, i.e., the number of
      the target sales order in your Odoo database with the
      [S]{.title-ref} and leading zeros removed.
    - [int]{.title-ref} converts the retrieved id to an integer (i.e., a
      whole number) because the method [browse()]{.title-ref} can only
      be used with an integer.
4.  Click `Add an action`{.interpreted-text role="guilabel"}.
5.  In the `Type`{.interpreted-text role="guilabel"} section, click
    `Update Record`{.interpreted-text role="guilabel"}.
6.  In the `Action details`{.interpreted-text role="guilabel"} section,
    select `Update`{.interpreted-text role="guilabel"}, choose the field
    `Currency`{.interpreted-text role="guilabel"}, and select
    `USD`{.interpreted-text role="guilabel"}.
7.  Click `Save & Close`{.interpreted-text role="guilabel"}.

#### Test the webhook

To test this webhook, proceed as follows:

1.  With [Postman](https://www.postman.com/) open, create a new HTTP
    request and set its method to `POST`{.interpreted-text
    role="guilabel"}.

2.  Copy the URL of the Odoo webhook using the
    `fa-link`{.interpreted-text role="icon"} `(link)`{.interpreted-text
    role="guilabel"} icon and paste it into the URL field in Postman.

3.  Click the `Body`{.interpreted-text role="guilabel"} tab and select
    `raw`{.interpreted-text role="guilabel"}.

4.  Set the file type to `JSON`{.interpreted-text role="guilabel"}, then
    copy this code, i.e., the payload, and paste it into the code
    editor:

    ``` json
    {
        "model": "sale.order",
        "id": "SALES ORDER NUMBER"
    }
    ```

5.  In your Odoo database, choose a sales order to test the webhook on.
    In the pasted code, replace [SALES ORDER NUMBER]{.title-ref} with
    the sales order\'s number without the [S]{.title-ref} or any zeros
    before the number. For example, a sales order with the number
    [S00007]{.title-ref} should be entered as [7]{.title-ref} in
    Postman.

6.  Click `Send`{.interpreted-text role="guilabel"}.

7.  Consult the
    `Response viewer <studio/webhooks/test-webhook-response>`{.interpreted-text
    role="ref"} in Postman to determine whether or not the webhook is
    functioning properly. If a message other than [200 OK]{.title-ref}
    or [status: ok]{.title-ref} is returned, the number associated with
    the message helps to identify the problem.

### Create a new contact {#studio/webhooks/webhook-example}

This webhook uses custom code to create a new contact in an Odoo
database when the external system sends a [POST]{.title-ref} API request
to the webhook\'s URL that includes the contact\'s information. This
could be helpful for automatically creating new vendors or customers.

#### Create the webhook

To create this webhook, proceed as follows:

1.  Open the **Contacts** app, then
    `open Studio <studio/access>`{.interpreted-text role="ref"} and
    click `Webhooks`{.interpreted-text role="guilabel"}. The *Contact*
    model is selected by default.

2.  Click `New`{.interpreted-text role="guilabel"}. The
    `Trigger`{.interpreted-text role="guilabel"} is set to
    `On webhook`{.interpreted-text role="guilabel"} by default.

3.  Set the `Target Record`{.interpreted-text role="guilabel"} to
    [model.browse(\[2\])]{.title-ref}. This is essentially a placeholder
    as the code in the automated action tells the webhook what needs to
    be retrieved from the payload and in which model the record needs to
    be created.

4.  Click `Add an action`{.interpreted-text role="guilabel"}.

5.  In the `Type`{.interpreted-text role="guilabel"} section, click
    `Execute Code`{.interpreted-text role="guilabel"}.

6.  Copy this code and paste it into the code editor in the
    `Code`{.interpreted-text role="guilabel"} tab of the
    `Action details`{.interpreted-text role="guilabel"} section:

    ``` python
    # variables to retrieve and hold data from the payload
    contact_name = payload.get('name')
    contact_email = payload.get('email')
    contact_phone = payload.get('phone')

    # a Python function to turn the variables into a contact in Odoo
    if contact_name and contact_email:
        new_partner = env['res.partner'].create({
            'name': contact_name,
            'email': contact_email,
            'phone': contact_phone,
            'company_type':'person',
            'customer_rank': 1,
        })
    # an error message for missing required data in the payload
    else:
        raise ValueError("Missing required fields: 'name' and 'email'")
    ```

7.  Click `Save & Close`{.interpreted-text role="guilabel"}.

#### Test the webhook

To test this webhook, proceed as follows:

1.  In [Postman](https://www.postman.com/), create a new HTTP request
    and set its method to `POST`{.interpreted-text role="guilabel"}.

2.  Copy the URL of the Odoo webhook using the
    `fa-link`{.interpreted-text role="icon"} `(link)`{.interpreted-text
    role="guilabel"} icon and paste it into the URL field in Postman.

3.  Click the `Body`{.interpreted-text role="guilabel"} tab and select
    `raw`{.interpreted-text role="guilabel"}.

4.  Set the file type to `JSON`{.interpreted-text role="guilabel"}, then
    copy this code, i.e., the payload, and paste it into the code
    editor:

    ``` json
    {
        "name": "CONTACT NAME",
        "email": "CONTACTEMAIL@EMAIL.COM",
        "phone": "CONTACT PHONE NUMBER"
    }
    ```

5.  In the pasted code, replace the [CONTACT NAME]{.title-ref},
    [CONTACTEMAIL@EMAIL.COM]{.title-ref}, and [CONTACT PHONE
    NUMBER]{.title-ref} with a new contact\'s information.

6.  Click `Send`{.interpreted-text role="guilabel"}.

7.  Consult the
    `Response viewer <studio/webhooks/test-webhook-response>`{.interpreted-text
    role="ref"} in Postman to determine whether or not the webhook is
    functioning properly. If a message other than [200 OK]{.title-ref}
    or [status: ok]{.title-ref} is returned, the number associated with
    the message helps to identify the problem.




--- SOURCE: studio/automated_actions.md ---

show-content

:   

# Automation rules

Automation rules allow the execution of one or more predefined actions
in response to a specific trigger, e.g., create an activity when a field
is set to a specific value, or archive a record 7 days after its last
update.

When creating an automation rule,
`domain filters <studio/automated-actions/conditions>`{.interpreted-text
role="ref"} allow you to add conditions that must be met for the
automation rule to run, e.g., the opportunity must be assigned to a
specific salesperson, or the state of the record must not be
`Draft`{.interpreted-text role="guilabel"}.

To create an automation rule with **Odoo Studio**, proceed as follows:

1.  `Open Studio <studio/access>`{.interpreted-text role="ref"} and
    click `Automations`{.interpreted-text role="guilabel"}, then
    `New`{.interpreted-text role="guilabel"}.
2.  Give the automation rule a clear, meaningful name that identifies
    its purpose.
3.  Select the
    `trigger <studio/automated-actions/trigger>`{.interpreted-text
    role="ref"} and, if necessary, fill in the fields that appear on the
    screen based on the chosen trigger.
4.  Click `Add an action`{.interpreted-text role="guilabel"}, then
    select the `Type`{.interpreted-text role="guilabel"} of
    `action <studio/automated-actions/action>`{.interpreted-text
    role="ref"} and fill in the fields that appear on the screen based
    on your selected action.
5.  Click `Save & Close`{.interpreted-text role="guilabel"} or
    `Save & New`{.interpreted-text role="guilabel"}.

::: example
To ensure follow-up on less satisfied clients, this automation rule
creates an activity 3 months after a sales order is created for clients
with a satisfaction percentage lower than 30%.

![Example of an automation rule on the Subscription model](automated_actions/create-activity-conditions.png)
:::

:::: tip
::: title
Tip
:::

\- Use the `Notes`{.interpreted-text role="guilabel"} tab to document
the purpose and functioning of automation rules. This makes rules easier
to maintain and facilitates collaboration between users. - To modify the
`model <models_modules_apps>`{.interpreted-text role="doc"} targeted by
the automation rule, switch models before clicking
`Automations`{.interpreted-text role="guilabel"} in Studio, or
`activate developer mode
<developer-mode>`{.interpreted-text role="ref"}, create or edit an
automation rule, and select the `Model`{.interpreted-text
role="guilabel"} in the `Automation Rules`{.interpreted-text
role="guilabel"} form. - Automation rules can be created from any kanban
stage by clicking the `fa-cog`{.interpreted-text role="icon"}
`(Settings)`{.interpreted-text role="guilabel"} icon that appears when
hovering over the kanban stage name, then selecting
`Automations`{.interpreted-text role="guilabel"}. In this case, the
`Trigger`{.interpreted-text role="guilabel"} is set to
`Stage is set to`{.interpreted-text role="guilabel"} by default, but it
can be changed if necessary.

![Create automations from a kanban stage](automated_actions/automations-kanban.png)
::::

## Trigger {#studio/automated-actions/trigger}

The `Trigger`{.interpreted-text role="guilabel"} is used to define what
kind of event needs to occur for the automation rule to run. The
available triggers depend on the
`model <models_modules_apps>`{.interpreted-text role="doc"}. Five
trigger categories are available overall:

- `studio/automated-actions/trigger-values-updated`{.interpreted-text
  role="ref"}
- `studio/automated-actions/trigger-email-events`{.interpreted-text
  role="ref"}
- `studio/automated-actions/trigger-timing-conditions`{.interpreted-text
  role="ref"}
- `studio/automated-actions/trigger-custom`{.interpreted-text
  role="ref"}
- `studio/automated-actions/trigger-external`{.interpreted-text
  role="ref"}

### Adding conditions {#studio/automated-actions/conditions}

Domain filters allow you to determine the records an automation rule
should target or exclude. Efficient filtering enhances overall
performance as it avoids unnecessary processing on records that are not
impacted by the rule.

:::: tip
::: title
Tip
:::

`Activate developer mode <developer-mode>`{.interpreted-text role="ref"}
before creating an automation rule to have the most flexibility in
adding domain filters.
::::

Depending on the trigger chosen, it is possible to define one or more
conditions a record must meet *before* and/or *after* a trigger occurs.

- The `Before Update Domain`{.interpreted-text role="guilabel"} defines
  the conditions a record must meet *before* the trigger event occurs,
  e.g., the record must have [Type = Customer Invoice]{.title-ref} and
  [Status = Posted]{.title-ref}.

  With `developer mode activated <developer-mode>`{.interpreted-text
  role="ref"}, click `Edit Domain`{.interpreted-text role="guilabel"},
  if available, then `New Rule`{.interpreted-text role="guilabel"}.

- `Extra Conditions`{.interpreted-text role="guilabel"}, or in some
  cases `Apply on`{.interpreted-text role="guilabel"} filters, define
  the conditions a record must meet *after* the trigger event occurs,
  e.g., the customer invoice must have [Payment Status = Partially
  Paid]{.title-ref}.

  With `developer mode activated <developer-mode>`{.interpreted-text
  role="ref"} if needed, click `Add conditions`{.interpreted-text
  role="guilabel"} or `Edit Domain`{.interpreted-text role="guilabel"},
  as relevant, then `New Rule`{.interpreted-text role="guilabel"}.

When a `trigger <studio/automated-actions/trigger>`{.interpreted-text
role="ref"} occurs, e.g., the payment status of a posted customer
invoice is updated, the automation rule checks the defined conditions
and only executes the
`action <studio/automated-actions/action>`{.interpreted-text role="ref"}
if the record matches those conditions.

::: example
If the automated action should be executed when an email address is set
for the first time (in contrast to modifying an email address) on an
existing contact that is an individual rather than a company, use [Email
is not set]{.title-ref} and [Is a Company is not set]{.title-ref} as the
`Before Update
Domain`{.interpreted-text role="guilabel"} and [Email is
set]{.title-ref} as the `Apply on`{.interpreted-text role="guilabel"}
domain.

![Example of a trigger with a Before Update Domain](automated_actions/before-update-domain.png)
:::

:::: note
::: title
Note
:::

The `Before Update Domain`{.interpreted-text role="guilabel"} is not
checked upon the creation of a record.
::::

### Values Updated {#studio/automated-actions/trigger-values-updated}

Trigger automated actions when specific changes happen in the database.
The triggers available in this category depend on the model and are
based on common changes, such as adding a specific tag (e.g., to a task)
or setting a field\'s value (e.g., setting the `User`{.interpreted-text
role="guilabel"} field).

Select the trigger, then select a value if required.

### Email Events {#studio/automated-actions/trigger-email-events}

Trigger automated actions upon receiving or sending emails.

### Timing Conditions {#studio/automated-actions/trigger-timing-conditions}

Trigger automated actions at a point in time relative to a date field or
to the creation or update of a record. The following triggers are
available:

- `Based on date field`{.interpreted-text role="guilabel"}: The action
  is triggered a defined period of time before or after the date of the
  selected date field.
- `After creation`{.interpreted-text role="guilabel"}: The action is
  triggered a defined period of time after a record is created and
  saved.
- `After last update`{.interpreted-text role="guilabel"}: The action is
  triggered a defined period of time after an existing record is edited
  and saved.

You can then define:

- a `Delay`{.interpreted-text role="guilabel"}: Specify the number of
  minutes, hours, days, or months. To have an action executed before the
  trigger date, specify a negative number. If you selected the `Based
  on date field`{.interpreted-text role="guilabel"} trigger, you must
  also select the date field to be used to determine the delay.

  :::: note
  ::: title
  Note
  :::

  By default, the scheduler checks for time-triggered automation rules
  every 240 minutes, or 4 hours. This frequency is generally sufficient
  for delays such as 3 months after the order date or 7 days after the
  last update.

  For delays of less than the equivalent of 2400 minutes, or 40 hours,
  the system recalculates the frequency of this check to ensure that
  more granular delays, e.g., 1 hour before the event start date and
  time, or 30 minutes after creation, can be respected as closely as
  possible.

  An on-screen message indicates the possible delay after the scheduled
  triggering of the rule.

  ![Message about possible delay after scheduled execution](automated_actions/trigger-delay-message.png)

  To view or manually edit the frequency of the scheduler, with
  `developer mode activated
  <developer-mode>`{.interpreted-text role="ref"}, go to
  `Settings --> Technical --> Scheduled Actions`{.interpreted-text
  role="menuselection"} to see all scheduled actions for your database.

  Enter [Automation]{.title-ref} in the search bar, then, in the list of
  results, click `Automation
  Rules: check and execute`{.interpreted-text role="guilabel"}. If
  desired, update the value of the `Execute Every`{.interpreted-text
  role="guilabel"} field. Click `Run Manually`{.interpreted-text
  role="guilabel"} at any time to manually trigger this scheduled
  action.
  ::::

- `Extra Conditions`{.interpreted-text role="guilabel"}: Click
  `Add condition`{.interpreted-text role="guilabel"}, then specify the
  conditions to be met for the automation rule to run. Click
  `New Rule`{.interpreted-text role="guilabel"} to add another
  condition.

The action is executed when the delay is reached and the conditions are
met.

::: example
To send a reminder email 30 minutes *before* the start of a calendar
event, select `Start (Calendar Event)`{.interpreted-text
role="guilabel"} as the date field for the `Trigger`{.interpreted-text
role="guilabel"} and set the `Delay`{.interpreted-text role="guilabel"}
to [-30]{.title-ref} `Minutes`{.interpreted-text role="guilabel"}.

![Example of a Based on date field trigger](automated_actions/timing-conditions-trigger.png)
:::

### Custom {#studio/automated-actions/trigger-custom}

Trigger automated actions:

- `On save`{.interpreted-text role="guilabel"}: when a record is saved.
- `On deletion`{.interpreted-text role="guilabel"}: when a record is
  deleted.
- `On UI change`{.interpreted-text role="guilabel"}: when a field\'s
  value is changed on the `Form view
  <studio/views/general/form>`{.interpreted-text role="ref"}, even
  before the record is saved.

For the `On save`{.interpreted-text role="guilabel"} and
`On UI change`{.interpreted-text role="guilabel"} triggers, you **must**
then select the field(s) to be used to trigger the automation rule in
the `When updating`{.interpreted-text role="guilabel"} field.

:::: warning
::: title
Warning
:::

If no field is selected in the `When updating`{.interpreted-text
role="guilabel"} field, the automated action may be executed multiple
times per record.
::::

Optionally, you can also define additional conditions to be met to
trigger the automation rule in the `Apply on`{.interpreted-text
role="guilabel"} field.

::: example
To trigger an automated action *upon* the creation of a record, e.g.,
when a new contact is created, select the
`On save <studio/automated-actions/trigger-custom>`{.interpreted-text
role="ref"} trigger and use [ID is not set]{.title-ref} as the
`Before Update Domain`{.interpreted-text role="guilabel"} and [ID is
set]{.title-ref} as the `Apply on`{.interpreted-text role="guilabel"}
domain. Make sure the correct field is selected in the `When
updating`{.interpreted-text role="guilabel"} field.

When a new contact is saved, it is automatically assigned a database ID,
thereby triggering the automation rule.

![Example of a triggering an action upon creation of a record](automated_actions/on-save-on-creation.png)
:::

:::: note
::: title
Note
:::

The `On UI change`{.interpreted-text role="guilabel"} trigger can only
be used with the `Execute Code
<studio/automated-actions/action-execute-code>`{.interpreted-text
role="ref"} action and only works when a modification is made manually.
The action is not executed if the field is changed through another
automation rule.
::::

### External {#studio/automated-actions/trigger-external}

Trigger automated actions based on a specific event in an external
system or application using a
`webhook <automated_actions/webhooks>`{.interpreted-text role="doc"}.

After the webhook is configured in Odoo, where the webhook\'s URL is
generated and the target record defined, it needs to be implemented in
the external system.

:::: warning
::: title
Warning
:::

It is *highly recommended* to consult with a developer, solution
architect, or another technical role when deciding to use webhooks and
throughout the implementation process. If not properly configured,
webhooks may disrupt the Odoo database and can take time to revert.
::::

![Example of a Based on date field trigger](automated_actions/webhook-update-record.png)

:::: note
::: title
Note
:::

It is also possible to set up an automated action that
`sends data to a external system's
webhook <studio/automated-actions/action-webhook>`{.interpreted-text
role="ref"} when an event occurs in your Odoo database.
::::

::: seealso
`Webhook documentation <automated_actions/webhooks>`{.interpreted-text
role="doc"}
:::

## Actions {#studio/automated-actions/action}

Once you have defined the automation rule\'s
`trigger <studio/automated-actions/trigger>`{.interpreted-text
role="ref"}, click `Add an action`{.interpreted-text role="guilabel"} in
the `Actions To Do`{.interpreted-text role="guilabel"} tab to define the
action to be executed.

:::: tip
::: title
Tip
:::

You can define multiple actions for the same automation rule. By
default, actions are executed in the order in which they were defined.

This means, for example, that if you define an
`Update record`{.interpreted-text role="guilabel"} action and then a
`Send email`{.interpreted-text role="guilabel"} action where the email
references the field that was updated, the email uses the updated
values. However, if the `Send email`{.interpreted-text role="guilabel"}
action is defined before the `Update record`{.interpreted-text
role="guilabel"} action, the email uses the values set *before* the
record is updated.

To change the order of defined actions, click the
`oi-draggable`{.interpreted-text role="icon"}
`(drag handle)`{.interpreted-text role="guilabel"} icon beside an action
and drag it to the desired position.
::::

### Update Record {#studio/automated-actions/action-update-record}

This action updates one of the record\'s (related) fields. Click the
`Update`{.interpreted-text role="guilabel"} field and, in the list that
opens, select or search for the field to be updated. If needed, click
the `oi-chevron-right`{.interpreted-text role="icon"}
`(right arrow)`{.interpreted-text role="guilabel"} next to the field
name to access the list of related fields.

If you selected a
`many2many field <studio/fields/relational-fields-many2many>`{.interpreted-text
role="ref"}, choose whether the field must be updated by
`Adding`{.interpreted-text role="guilabel"},
`Removing`{.interpreted-text role="guilabel"}, or
`Setting it to`{.interpreted-text role="guilabel"} the selected value or
by `Clearing it`{.interpreted-text role="guilabel"}.

::: example
If you want the automated action to remove a tag from the customer
record, set the `Update`{.interpreted-text role="guilabel"} field to
`Customer > Tags`{.interpreted-text role="guilabel"}, select
`by Removing`{.interpreted-text role="guilabel"}, then select the tag.

![Example of an Update Record action](automated_actions/update-record-tags.png)
:::

:::: tip
::: title
Tip
:::

Alternatively, you can also set a record\'s field dynamically using
Python code. To do so, select `Compute`{.interpreted-text
role="guilabel"} instead of `Update`{.interpreted-text role="guilabel"},
then enter the code to be used for computing the field\'s value. For
example, if you want the automation rule to compute a custom
`datetime field <studio/fields/simple-fields-date-time>`{.interpreted-text
role="ref"} when a task\'s priority is set to [High]{.title-ref} (by
starring the task), you can define the trigger
`Priority is set to`{.interpreted-text role="guilabel"} to
[High]{.title-ref} and define the `Update Record`{.interpreted-text
role="guilabel"} action as follows:

![Compute a custom datetime field using a Python expression](automated_actions/update-record-compute.png)
::::

### Create Activity {#studio/automated-actions/action-create-activity}

This action is used to schedule a new activity linked to the record.
Select an `Activity
Type`{.interpreted-text role="guilabel"}, enter a
`Title`{.interpreted-text role="guilabel"} and description, then specify
when you want the activity to be scheduled in the
`Due Date In`{.interpreted-text role="guilabel"} field, and select a
`User type`{.interpreted-text role="guilabel"}:

- To always assign the activity to the same user, select
  `Specific User`{.interpreted-text role="guilabel"}, then add the user
  in the `Responsible`{.interpreted-text role="guilabel"} field;
- To target a user linked to the record dynamically, select
  `Dynamic User (based on
  record)`{.interpreted-text role="guilabel"} and change the
  `User Field`{.interpreted-text role="guilabel"} if necessary.

::: example
After a lead is turned into an opportunity, you want the automated
action to set up a call for the user responsible for the lead. To do so,
set the `Activity Type`{.interpreted-text role="guilabel"} to
`Call`{.interpreted-text role="guilabel"} and the
`User Type`{.interpreted-text role="guilabel"} to
`Dynamic User (based on record)`{.interpreted-text role="guilabel"}.

![Example of a Create Activity action](automated_actions/create-activity-action.png)
:::

### Send Email and Send SMS {#studio/automated-actions/action-send-email-sms}

These actions are used to send an email or a text message to a contact
linked to a specific record. To do so, select or create an
`Email Template`{.interpreted-text role="guilabel"} or an
`SMS Template`{.interpreted-text role="guilabel"}, then, in the
`Send Email As`{.interpreted-text role="guilabel"} or
`Send SMS As`{.interpreted-text role="guilabel"} field, choose how you
want to send the email or text message:

- `Email`{.interpreted-text role="guilabel"}: to send the message as an
  email to the recipients of the `Email
  Template`{.interpreted-text role="guilabel"}.
- `Message`{.interpreted-text role="guilabel"}: to post the message on
  the record and notify the record\'s followers.
- `Note`{.interpreted-text role="guilabel"}: to send the message as an
  internal note visible to internal users in the chatter.
- `SMS (without note)`{.interpreted-text role="guilabel"}: to send the
  message as a text message to the recipients of the
  `SMS template`{.interpreted-text role="guilabel"}.
- `SMS (with note)`{.interpreted-text role="guilabel"}: to send the
  message as a text message to the recipients of the
  `SMS template`{.interpreted-text role="guilabel"} and post it as an
  internal note in the chatter.
- `Note only`{.interpreted-text role="guilabel"}: to only post the
  message as an internal note in the chatter.

### Send WhatsApp {#studio/automated-actions/action-send-whatsapp}

:::: important
::: title
Important
:::

To automate the sending of WhatsApp messages, one or more
`WhatsApp templates <productivity/whatsapp/templates>`{.interpreted-text
role="ref"} must be created.
::::

This action is used to send a WhatsApp message to a contact linked to a
specific record. To do so, select the appropriate
`WhatsApp Template`{.interpreted-text role="guilabel"} from the dropdown
menu.

### Add Followers and Remove Followers {#studio/automated-actions/action-add-remove-followers}

This action is used to subscribe/unsubscribe existing contacts to/from
the record.

### Create Record {#studio/automated-actions/action-create-record}

This action is used to create a new record on any model.

Select the required model in the `Record to Create`{.interpreted-text
role="guilabel"} field; it contains the current model by default.
Specify a `Name`{.interpreted-text role="guilabel"} for the record, and
then, if you want to create the record on another model, select a field
in the `Link Field`{.interpreted-text role="guilabel"} field to link the
record that triggered the creation of the new record.

:::: note
::: title
Note
:::

The dropdown list related to the `Link Field`{.interpreted-text
role="guilabel"} field only contains `one2many fields
<studio/fields/relational-fields-one2many>`{.interpreted-text
role="ref"} existing on the current model that are linked to a
`many2one field <studio/fields/relational-fields-many2one>`{.interpreted-text
role="ref"} on the target model.
::::

:::: tip
::: title
Tip
:::

You can create another automation rule with
`studio/automated-actions/action-update-record`{.interpreted-text
role="ref"} actions to update the fields of the new record if necessary.
For example, you can use a `Create Record`{.interpreted-text
role="guilabel"} action to create a new project task and then assign it
to a specific user using an `Update Record`{.interpreted-text
role="guilabel"} action.
::::

### Execute Code {#studio/automated-actions/action-execute-code}

:::: important
::: title
Important
:::

For automation rules that require the execution of `custom code
<studio/automated-actions/action-execute-code>`{.interpreted-text
role="ref"}, note that maintenance of custom code is not included in the
*Standard* or *Custom* pricing plans and incurs `additional fees
<charges_standard>`{.interpreted-text role="ref"}.
::::

This action is used to execute Python code. You can write your code into
the `Code`{.interpreted-text role="guilabel"} tab using the following
variables:

- \`env\`: environment on which the action is triggered
- \`model\`: model of the record on which the action is triggered; is a
  void recordset
- \`record\`: record on which the action is triggered; may be void
- \`records\`: recordset of all records on which the action is triggered
  in multi-mode; this may be left empty
- [time]{.title-ref}, [datetime]{.title-ref}, [dateutil]{.title-ref},
  \`timezone\`: useful Python libraries
- \`float_compare\`: utility function to compare floats based on
  specific precision
- \`log(message, level=\'info\')\`: logging function to record debug
  information in ir.logging table
- \`\_logger.info(message)\`: logger to emit messages in server logs
- \`UserError\`: exception class for raising user-facing warning
  messages
- \`Command\`: x2many commands namespace
- \`action = {\...}\`: to return an action

:::: tip
::: title
Tip
:::

The available variables are described both in the
`Code`{.interpreted-text role="guilabel"} and `Help`{.interpreted-text
role="guilabel"} tabs.
::::

::: seealso
`Odoo's ORM capabilities <../../developer/reference/backend/orm>`{.interpreted-text
role="doc"}
:::

### Send Webhook Notification {#studio/automated-actions/action-webhook}

This action is used to send a [POST]{.title-ref} API request with the
values of the selected `Fields`{.interpreted-text role="guilabel"} to
the webhook URL specified in the `URL`{.interpreted-text
role="guilabel"} field.

The `Sample Payload`{.interpreted-text role="guilabel"} provides a
preview of the data included in the request using a random record\'s
data or dummy data if no record is available.

:::: note
::: title
Note
:::

It is also possible to set up an automated action that
`uses a webhook to receive data from
an external system <automated_actions/webhooks>`{.interpreted-text
role="doc"} when a predefined event occurs in that system.
::::

### Execute Existing Actions {#studio/automated-actions/action-existing-actions}

The action is used to trigger multiple actions (linked to the current
model) at the same time. To do so, click on
`Add a line`{.interpreted-text role="guilabel"}, then, in the
`Add: Child Actions`{.interpreted-text role="guilabel"} pop-up, select
an existing action or click `New`{.interpreted-text role="guilabel"} to
create a new one.

::: {.toctree titlesonly=""}
automated_actions/webhooks
:::




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

Non-default widgets, when available, are presented as bullet points or
sub-headings below.
::::

### Text ([char]{.title-ref}) {#studio/fields/simple-fields-text}

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
  <studio/fields/simple-fields-image>`{.interpreted-text role="ref"}
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
![Examples of Text fields with different widgets](fields/text-examples.png)
:::

### Multiline Text ([text]{.title-ref}) {#studio/fields/simple-fields-multiline-text}

The `Multiline Text`{.interpreted-text role="guilabel"} field is used
for longer text containing any type of character. Two text lines are
displayed on the UI when filling out the field.

- `Copy to Clipboard`{.interpreted-text role="guilabel"}: users can copy
  the value by clicking a button.

::: example
![Examples of Multiline Text fields with different widgets](fields/multiline-text-examples.png)
:::

### Integer ([integer]{.title-ref}) {#studio/fields/simple-fields-integer}

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
![Examples of Integer fields with different widgets](fields/integer-examples.png)
:::

### Decimal ([float]{.title-ref}) {#studio/fields/simple-fields-decimal}

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
  <studio/fields/simple-fields-monetary>`{.interpreted-text role="ref"}.
  It is recommended to use the latter as it offers more functionalities.
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
![Examples of Decimal fields with different widgets](fields/decimal-examples.png)
:::

### Monetary ([monetary]{.title-ref}) {#studio/fields/simple-fields-monetary}

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
![Example of a Monetary field along with its Currency field](fields/monetary-example.png)
:::

### Html ([html]{.title-ref}) {#studio/fields/simple-fields-html}

The `Html`{.interpreted-text role="guilabel"} field is used to add text
that can be edited using the Odoo HTML editor.

- `Multiline Text`{.interpreted-text role="guilabel"}: disables the Odoo
  HTML editor to allow editing raw HTML.

::: example
![Examples of Html fields with different widgets](fields/html-example.png)
:::

### Date ([date]{.title-ref}) {#studio/fields/simple-fields-date}

The `Date`{.interpreted-text role="guilabel"} field is used to select a
date on a calendar.

- `Remaining Days`{.interpreted-text role="guilabel"}: the remaining
  number of days before the selected date is displayed (e.g., *In 5
  days*), based on the current date. This field should be set to
  `Read only`{.interpreted-text role="guilabel"}.

::: example
![Examples of Date fields with different widgets](fields/date-examples.png)
:::

### Date & Time ([datetime]{.title-ref}) {#studio/fields/simple-fields-date-time}

The `Date & Time`{.interpreted-text role="guilabel"} field is used to
select a date on a calendar and a time on a clock. The user\'s current
time is automatically used if no time is set.

:::: tip
::: title
Tip
:::

As well as
`general properties <studio/fields/properties>`{.interpreted-text
role="ref"}, some
`specific properties <studio/fields/properties-date-datetime>`{.interpreted-text
role="ref"} are available for `Date & Time`{.interpreted-text
role="guilabel"} fields that have the `Date & Time`{.interpreted-text
role="guilabel"} or `Date Range`{.interpreted-text role="guilabel"}
widget set.
::::

#### Date Range ([daterange]{.title-ref})

The `Date Range`{.interpreted-text role="guilabel"} widget is used to
display a period of time defined by a start date and an end date in a
single line. A date range can have a mandatory start and end date, e.g.,
for a multi-day event, or allow an optional start or end date, e.g., for
a field service intervention or a project task.

Adding a date range requires two fields: a
`Date & Time`{.interpreted-text role="guilabel"} field with the
`Date Range`{.interpreted-text role="guilabel"} widget set and another
field that is selected as the start date *or* end date. This underlying
field can be an existing
`Date <studio/fields/simple-fields-date>`{.interpreted-text role="ref"}
or `Date & Time`{.interpreted-text role="guilabel"} field, or one
created specifically for this purpose.

To add a date range:

1.  Identify an existing `Date`{.interpreted-text role="guilabel"} or
    `Date & Time`{.interpreted-text role="guilabel"} field that can be
    used as the underlying start/end date field, or add a new one. If
    the date range:

    - has a mandatory start date and end date, this field can be either
      the start date or end date; the outcome is the same.
    - allows an optional start or end date, this field is the start date
      or end date, respectively.

    :::: tip
    ::: title
    Tip
    :::

    To avoid displaying the same information twice, the underlying
    start/end date field can be made invisible by enabling
    `Invisible`{.interpreted-text role="guilabel"} or removed from the
    view by clicking `Remove from view`{.interpreted-text
    role="guilabel"}.
    ::::

2.  Add a `Date & Time`{.interpreted-text role="guilabel"} field and set
    the `Widget`{.interpreted-text role="guilabel"} field to
    `Date Range`{.interpreted-text role="guilabel"}.

3.  Enter an appropriate `Label`{.interpreted-text role="guilabel"}.

4.  Select the underlying start/end date field from the
    `Start date field`{.interpreted-text role="guilabel"} or
    `End date field`{.interpreted-text role="guilabel"} dropdown, as
    relevant.

5.  If the date range should have a mandatory start and end date, enable
    `Always range`{.interpreted-text role="guilabel"}.

6.  Update any other
    `general properties <studio/fields/properties>`{.interpreted-text
    role="ref"} or specific
    `properties for Date & Time fields <studio/fields/properties-date-datetime>`{.interpreted-text
    role="ref"} as needed, then click `Close`{.interpreted-text
    role="guilabel"} in the upper right corner of the screen.

::: example
![Examples of Date & Time fields with different widgets](fields/date-time-examples.png)
:::

#### Remaining Days ([remaining_days]{.title-ref})

The `Remaining Days`{.interpreted-text role="guilabel"} widget displays
the remaining number of days before the selected date (e.g., *In 5
days*), based on the current date and time. This field should be set to
`Read
only`{.interpreted-text role="guilabel"}.

### Checkbox ([boolean]{.title-ref}) {#studio/fields/simple-fields-checkbox}

The `Checkbox`{.interpreted-text role="guilabel"} field is used when a
value should only be true or false, indicated by checking or unchecking
a checkbox.

- `Button`{.interpreted-text role="guilabel"}: displays a radio button.
  The widget works without switching to the edit mode.
- `Toggle`{.interpreted-text role="guilabel"}: displays a toggle button.
  The widget works without switching to the edit mode.

::: example
![Examples of Checkbox fields with different widgets](fields/checkbox-examples.png)
:::

### Selection ([selection]{.title-ref}) {#studio/fields/simple-fields-selection}

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
  `Priority field <studio/fields/simple-fields-priority>`{.interpreted-text
  role="ref"}, although, for the latter, four priority values are
  already predefined.

- `Radio`{.interpreted-text role="guilabel"}: displays all selectable
  values at the same time as radio buttons.

  :::: tip
  ::: title
  Tip
  :::

  By default, radio buttons are organized vertically. Enable
  `Display horizontally`{.interpreted-text role="guilabel"} to switch
  the way they are displayed.
  ::::

- `Status Bar`{.interpreted-text role="guilabel"}: displays all
  selectable values at the same time as an arrow progress bar.

  :::: tip
  ::: title
  Tip
  :::

  By default, values on the status bar are selectable. Disable
  `Clickable`{.interpreted-text role="guilabel"} to prevent the value
  being edited on the UI.
  ::::

::: example
![Examples of Selection fields with different widgets](fields/selection-examples.png)
:::

### Priority ([selection]{.title-ref}) {#studio/fields/simple-fields-priority}

The `Priority`{.interpreted-text role="guilabel"} field is used to
display a three-star rating system, which can be used to indicate
importance or satisfaction level. This field type is a `Selection field
<studio/fields/simple-fields-selection>`{.interpreted-text role="ref"}
with the `Priority`{.interpreted-text role="guilabel"} widget selected
by default and four priority values predefined. Consequently, the
`Badge`{.interpreted-text role="guilabel"}, `Badges`{.interpreted-text
role="guilabel"}, `Radio`{.interpreted-text role="guilabel"}, and
`Selection`{.interpreted-text role="guilabel"} widgets have the same
effects as described under
`Selection <studio/fields/simple-fields-selection>`{.interpreted-text
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
![Example of a Priority field](fields/priority-example.png)
:::

### File ([binary]{.title-ref}) {#studio/fields/simple-fields-file}

The `File`{.interpreted-text role="guilabel"} field is used to upload
any type of file, or sign a form (`Sign`{.interpreted-text
role="guilabel"} widget).

- `Image`{.interpreted-text role="guilabel"}: users can upload an image
  file, which is then displayed in `Form view
  <studio/views/general/form>`{.interpreted-text role="ref"}. This has
  the same effect as using the `Image field
  <studio/fields/simple-fields-image>`{.interpreted-text role="ref"}.
- `PDF Viewer`{.interpreted-text role="guilabel"}: users can upload a
  PDF file, which can be then browsed from the
  `Form view <studio/views/general/form>`{.interpreted-text role="ref"}.
- `Sign`{.interpreted-text role="guilabel"}: users can electronically
  sign the form. This has the same effect as selecting the
  `Sign field <studio/fields/simple-fields-sign>`{.interpreted-text
  role="ref"}.

::: example
![Examples of File fields with different widgets](fields/file-examples.png)
:::

### Image ([binary]{.title-ref}) {#studio/fields/simple-fields-image}

The `Image`{.interpreted-text role="guilabel"} field is used to upload
an image and display it in `Form view
<studio/views/general/form>`{.interpreted-text role="ref"}. This field
type is a `File field
<studio/fields/simple-fields-file>`{.interpreted-text role="ref"} with
the `Image`{.interpreted-text role="guilabel"} widget selected by
default. Consequently, the `File`{.interpreted-text role="guilabel"},
`PDF Viewer`{.interpreted-text role="guilabel"}, and
`Sign`{.interpreted-text role="guilabel"} widgets have the same effects
as described under
`File <studio/fields/simple-fields-file>`{.interpreted-text role="ref"}.

:::: tip
::: title
Tip
:::

To change the display size of uploaded images, select
`Small`{.interpreted-text role="guilabel"}, `Medium`{.interpreted-text
role="guilabel"}, or `Large`{.interpreted-text role="guilabel"} under
the `Size`{.interpreted-text role="guilabel"} option.
::::

### Sign ([binary]{.title-ref}) {#studio/fields/simple-fields-sign}

The `Sign`{.interpreted-text role="guilabel"} field is used to sign the
form electronically. This field type is a `File
field <studio/fields/simple-fields-file>`{.interpreted-text role="ref"}
with the `Sign`{.interpreted-text role="guilabel"} widget selected by
default. Consequently, the `File`{.interpreted-text role="guilabel"},
`Image`{.interpreted-text role="guilabel"}, and
`PDF Viewer`{.interpreted-text role="guilabel"} widgets have the same
effects as described under
`File <studio/fields/simple-fields-file>`{.interpreted-text role="ref"}.

:::: tip
::: title
Tip
:::

To give users the `Auto`{.interpreted-text role="guilabel"} option when
having to draw their signature, select one of the available
`Auto-complete with`{.interpreted-text role="guilabel"} fields
(`Text <studio/fields/simple-fields-text>`{.interpreted-text
role="ref"},
`Many2One <studio/fields/relational-fields-many2one>`{.interpreted-text
role="ref"}, and `Related Field
<studio/fields/relational-fields-related-field>`{.interpreted-text
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

### Many2One ([many2one]{.title-ref}) {#studio/fields/relational-fields-many2one}

The `Many2One`{.interpreted-text role="guilabel"} field is used to link
another record (from another model) to the record being edited. The
record\'s name from the other model is then displayed on the record
being edited.

::: example
On the *Sales Order* model, the `Customer`{.interpreted-text
role="guilabel"} field is a `Many2One`{.interpreted-text
role="guilabel"} field pointing at the *Contact* model. This allows
**many** sales orders to be linked to **one** contact (customer).

![Diagram showing a many2one relationship](fields/many2one-diagram.png)
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

### One2Many ([one2many]{.title-ref}) {#studio/fields/relational-fields-one2many}

The `One2Many`{.interpreted-text role="guilabel"} field is used to
display the existing relations between a record on the current model and
multiple records from another model.

::: example
You could add a `One2Many`{.interpreted-text role="guilabel"} field on
the *Contact* model to look at **one** customer\'s **many** sales
orders.

![Diagram showing a one2many relationship](fields/one2many-diagram.png)
:::

:::: note
::: title
Note
:::

To use a `One2Many`{.interpreted-text role="guilabel"} field, the two
models must have been linked already using a
`Many2One field <studio/fields/relational-fields-many2one>`{.interpreted-text
role="ref"}. One2Many relations do not exist independently: a
reverse-search of existing Many2One relations is performed.
::::

### Lines ([one2many]{.title-ref}) {#studio/fields/relational-fields-lines}

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
![Example of a Lines field](fields/lines-example.png)
:::

### Many2Many ([many2many]{.title-ref}) {#studio/fields/relational-fields-many2many}

The `Many2Many`{.interpreted-text role="guilabel"} field is used to link
multiple records from another model to multiple records on the current
model. Many2Many fields can use `Disable creation`{.interpreted-text
role="guilabel"}, `Disable opening`{.interpreted-text role="guilabel"},
`Domain`{.interpreted-text role="guilabel"}, just like `Many2One fields
<studio/fields/relational-fields-many2one>`{.interpreted-text
role="ref"}.

::: example
On the *Task* model, the `Assignees`{.interpreted-text role="guilabel"}
field is a `Many2Many`{.interpreted-text role="guilabel"} field pointing
at the *Contact* model. This allows a single user to be assigned to
**many** tasks and **many** users to be assigned to a single task.

![Diagram showing many2many relationships](fields/many2many-diagram.png)
:::

- `Checkboxes`{.interpreted-text role="guilabel"}: users can select
  several values using checkboxes.
- `Tags`{.interpreted-text role="guilabel"}: users can select several
  values appearing in rounded shapes, also known as *tags*. This has the
  same effect as selecting the `Tags field
  <studio/fields/relational-fields-tags>`{.interpreted-text role="ref"}.

### Tags ([many2many]{.title-ref}) {#studio/fields/relational-fields-tags}

The `Tags`{.interpreted-text role="guilabel"} field is used to display
several values from another model appearing in rounded shapes, also
known as *tags*. This field type is a `Many2Many field
<studio/fields/relational-fields-many2many>`{.interpreted-text
role="ref"} with the `Tags`{.interpreted-text role="guilabel"} widget
selected by default. Consequently, the `Checkboxes`{.interpreted-text
role="guilabel"} and `Many2Many`{.interpreted-text role="guilabel"}
widgets have the same effects as described under
`Many2Many <studio/fields/relational-fields-many2many>`{.interpreted-text
role="ref"}.

:::: tip
::: title
Tip
:::

To display tags with different background colors, tick
`Use colors`{.interpreted-text role="guilabel"}.
::::

::: example
![Example of a Tags field](fields/tags-example.png)
:::

### Related Field ([related]{.title-ref}) {#studio/fields/relational-fields-related-field}

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

### General properties

- `Invisible`{.interpreted-text role="guilabel"}: Enable this property
  when it is not necessary for users to view a field on the UI. This
  helps declutter the UI by only showing the essential fields depending
  on a specific situation.

  The `Invisible`{.interpreted-text role="guilabel"} attribute also
  applies inside Studio. To view hidden fields in Studio, click on a
  view\'s `View`{.interpreted-text role="guilabel"} tab and enable
  `Show Invisible Elements`{.interpreted-text role="guilabel"}.

- `Required`{.interpreted-text role="guilabel"}: Enable this property if
  a field should always be completed by the user before being able to
  proceed.

- `Readonly`{.interpreted-text role="guilabel"}: Enable this property if
  users should not be able to modify a field.

::::: note
::: title
Note
:::

You can choose to enable `Invisible`{.interpreted-text role="guilabel"},
`Required`{.interpreted-text role="guilabel"} and
`Readonly`{.interpreted-text role="guilabel"} for specific records only
by clicking on `Conditional`{.interpreted-text role="guilabel"} and
creating a filter.

::: example
On the *Form* view of the *Contact* model, the `Title`{.interpreted-text
role="guilabel"} field only appears when `Individual`{.interpreted-text
role="guilabel"} is selected, as that field would not be helpful for a
`Company`{.interpreted-text role="guilabel"} contact.
:::
:::::

- `Label`{.interpreted-text role="guilabel"}: the field\'s name on the
  UI. This is not the name used in the PostgreSQL database. To view and
  change the latter, activate the
  `developer mode <developer-mode>`{.interpreted-text role="ref"} and
  edit the `Technical Name`{.interpreted-text role="guilabel"}.
- `Help Tooltip`{.interpreted-text role="guilabel"}: To explain the
  purpose of a field, add a description. The text is displayed inside a
  tooltip box when hovering with your mouse over the question mark
  beside the field\'s label.
- `Widget`{.interpreted-text role="guilabel"}: To change the default
  appearance or functionality of a field, select one of the available
  widgets.
- `Placeholder`{.interpreted-text role="guilabel"}: To provide an
  example of how a field should be completed, add placeholder text. The
  text appears in light gray until a value is entered.
- `Default value`{.interpreted-text role="guilabel"}: To display a
  default value in a field when a record is created, add a value.
- `Allow visibility to groups`{.interpreted-text role="guilabel"}: To
  limit which users can view the field, select one or more user access
  `groups <access-rights/groups>`{.interpreted-text role="ref"}.
- `Forbid visibility to groups`{.interpreted-text role="guilabel"}: To
  prevent certain users from seeing the field, select one or more user
  access `groups <access-rights/groups>`{.interpreted-text role="ref"}.

### Properties for Date & Time fields {#studio/fields/properties-date-datetime}

For `Date & Time`{.interpreted-text role="guilabel"} fields that have
the `Date & Time`{.interpreted-text role="guilabel"} or
`Date Range`{.interpreted-text role="guilabel"} widget set, some
specific properties are available:

- `Minimal precision`{.interpreted-text role="guilabel"}: Determine the
  smallest date unit that must be selected in the date selector. The
  possible values are `Day`{.interpreted-text role="guilabel"},
  `Month`{.interpreted-text role="guilabel"}, `Year`{.interpreted-text
  role="guilabel"} or `Decade`{.interpreted-text role="guilabel"}. If no
  value is selected, the user must select a day in the date selector.
- `Maximal precision`{.interpreted-text role="guilabel"}: Determine the
  largest date unit that can be used to navigate the date selector. The
  possible values are `Day`{.interpreted-text role="guilabel"},
  `Month`{.interpreted-text role="guilabel"}, `Year`{.interpreted-text
  role="guilabel"} or `Decade`{.interpreted-text role="guilabel"}. If no
  value is selected, the user can navigate the date selector by decade.
- `Warning for future dates`{.interpreted-text role="guilabel"}: Enable
  this property to display a warning icon if a future date is selected.
- `Condensed display`{.interpreted-text role="guilabel"}: Enable this
  property to show days, months and hours with no leading zeros, e.g.,
  [4/2/2025 8:05:00]{.title-ref} instead of [04/02/2025
  08:05:00]{.title-ref}.
- `Show time`{.interpreted-text role="guilabel"}: This property is
  enabled by default for `Date & Time`{.interpreted-text
  role="guilabel"} fields. On a read-only field, disable the property to
  show only the date. This can keep a list view less cluttered, for
  example.
- `Show seconds`{.interpreted-text role="guilabel"}: This property is
  enabled by default for `Date & Time`{.interpreted-text
  role="guilabel"} fields. Disable the property to show only hours and
  minutes.
- `Time interval`{.interpreted-text role="guilabel"}: Enter a value to
  determine the minute intervals shown in the time selector. For
  example, enter 15 to allow quarter-hour intervals. The default value
  is set to 5 minutes.
- `Earliest accepted date`{.interpreted-text role="guilabel"}: Enter the
  earliest date that can be selected in the date selector in ISO-format,
  i.e., [YYYY-MM-DD]{.title-ref}. If the current date is always the
  earliest accepted date, enter [today]{.title-ref}. On the date
  selector, dates prior to the earliest accepted date are grayed out.
- `Latest accepted date`{.interpreted-text role="guilabel"}: Enter the
  latest date that can be selected in the date selector in ISO-format,
  i.e., [YYYY-MM-DD]{.title-ref}. If the current date is always the
  latest accepted date, enter [today]{.title-ref}. On the date selector,
  dates later than the latest accepted date are grayed out.




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
`Many2One field <studio/fields/relational-fields-many2one>`{.interpreted-text
role="ref"} linked to the *Contact* model and two of its
`Related Fields <studio/fields/relational-fields-related-field>`{.interpreted-text
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
`Many2One field <studio/fields/relational-fields-many2one>`{.interpreted-text
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
`Date field <studio/fields/simple-fields-date>`{.interpreted-text
role="ref"} and activates the `Calendar view
<studio/views/timeline/calendar>`{.interpreted-text role="ref"}.

### Date range & Gantt {#studio/models-modules-apps/suggested-features/date-range-gantt}

Selecting `Date range & Gantt`{.interpreted-text role="guilabel"} adds
to the `Form view <studio/views/general/form>`{.interpreted-text
role="ref"} two
`Date fields <studio/fields/simple-fields-date>`{.interpreted-text
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
<studio/fields/simple-fields-priority>`{.interpreted-text role="ref"}
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
<studio/fields/relational-fields-tags>`{.interpreted-text role="ref"},
creating a *Tag* model with preconfigured access rights in the process.

### Picture {#studio/models-modules-apps/suggested-features/picture}

Selecting `Picture`{.interpreted-text role="guilabel"} adds to the
top-right of the `Form view
<studio/views/general/form>`{.interpreted-text role="ref"} an
`Image field <studio/fields/simple-fields-image>`{.interpreted-text
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
field <studio/fields/relational-fields-lines>`{.interpreted-text
role="ref"} inside a `Tab`{.interpreted-text role="guilabel"} component.

### Notes {#studio/models-modules-apps/suggested-features/notes}

Selecting `Notes`{.interpreted-text role="guilabel"} adds to the
`Form view <studio/views/general/form>`{.interpreted-text role="ref"} an
`Html
field <studio/fields/simple-fields-html>`{.interpreted-text role="ref"}
using the full width of the form.

### Monetary value {#studio/models-modules-apps/suggested-features/monetary-value}

Selecting `Monetary value`{.interpreted-text role="guilabel"} adds to
the `studio/views/general/form`{.interpreted-text role="ref"} and
`studio/views/multiple-records/list`{.interpreted-text role="ref"} views
a `Monetary field
<studio/fields/simple-fields-monetary>`{.interpreted-text role="ref"}.
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
<studio/fields/relational-fields-many2one>`{.interpreted-text
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
[studio_customization]{.title-ref} is added to your database. You can
export this module as a ZIP file using the
`Studio Export`{.interpreted-text role="guilabel"} function. The module
can then be imported into another Odoo database. This may be useful, for
example, when setting up a new module or for training purposes.

:::: note
::: title
Note
:::

Exporting and importing customizations in this way, rather than using
the `standard Odoo
export and import <../essentials/export_import_data>`{.interpreted-text
role="doc"} functions, means data is imported in a logical way. For
example, if the module contains customers and sales orders, the
customers are created first, since these are required for the sales
orders to be created.
::::

### Export customizations {#studio/export-import/export}

To export customizations, click the `oi-studio`{.interpreted-text
role="icon"} `(Toggle Studio)`{.interpreted-text role="guilabel"} button
on the main Odoo dashboard, then `Export`{.interpreted-text
role="guilabel"}, then either:

- download all Studio customizations by clicking the
  `Export`{.interpreted-text role="guilabel"} button; or
- choose what data to export by clicking
  `Configure data and demo data to export
  <studio/export-import/export/configure>`{.interpreted-text
  role="ref"}.

#### Configure data to export {#studio/export-import/export/configure}

To select specific models to export, click `New`{.interpreted-text
role="guilabel"} on the `Studio Export`{.interpreted-text
role="guilabel"} screen, then start typing the name of the relevant
model or select it from the list.

:::: tip
::: title
Tip
:::

Click `Preset`{.interpreted-text role="guilabel"} to see a list of all
models in your database with records that have been modified using
Studio and all custom models created using Studio. To configure one of
these models for export, click on the model to open it and make the
required changes.
::::

Tick the following options as relevant:

- `Demo`{.interpreted-text role="guilabel"}: if the exported records
  should be considered as demo data when imported.
- `Attachments`{.interpreted-text role="guilabel"}: if attachments
  related to exported records should be included in the export.
- `Updatable`{.interpreted-text role="guilabel"}: if the exported
  records should be able to be updated during a module update.

If necessary, edit the `Domain`{.interpreted-text role="guilabel"} to
determine which of the model\'s records should be exported. To do so,
click the `Edit Domain`{.interpreted-text role="guilabel"} button or
`fa-caret-right`{.interpreted-text role="icon"}
`(Modify filter)`{.interpreted-text role="guilabel"} then
`Edit Domain`{.interpreted-text role="guilabel"}, as appropriate.
Proceed to make any required changes.

After configuring a model for export, click
`Studio Export`{.interpreted-text role="guilabel"} to return to the main
screen. To download a ZIP file with the customizations for all the
listed models, click `Export`{.interpreted-text role="guilabel"}.

:::: note
::: title
Note
:::

It is not necessary to select one or more models as all listed models
will be included in the export. To remove a model from the export,
select it and click the `fa-cog`{.interpreted-text role="icon"}
`Actions`{.interpreted-text role="guilabel"} button then
`fa-trash-o`{.interpreted-text role="icon"} `Delete`{.interpreted-text
role="guilabel"}.
::::

In the `Studio Export`{.interpreted-text role="guilabel"} window:

- leave the checkboxes unticked to export only the customizations done
  with Studio.
- tick `Include Data`{.interpreted-text role="guilabel"} to include data
  from the selected models in the export.
- tick `Include Demo Data`{.interpreted-text role="guilabel"} to include
  data from the selected models that is flagged as demo data. Ticking
  this option also ticks `Include Data`{.interpreted-text
  role="guilabel"}.

Click the `Export`{.interpreted-text role="guilabel"} button to download
the ZIP file.

![Choosing to export both data and demo data](models_modules_apps/studio-export.png)

### Import customizations {#studio/export-import/import}

:::: warning
::: title
Warning
:::

Before importing, make sure the destination database is on the same Odoo
version and contains the same apps and modules as the source database.
Studio does not add the underlying modules as dependencies of the
exported module.
::::

To import and install Studio customizations in another Odoo database:

1.  Connect to the destination database.
2.  Click the `oi-studio`{.interpreted-text role="icon"}
    `(Toggle Studio)`{.interpreted-text role="guilabel"} button on the
    main Odoo dashboard, then `Import`{.interpreted-text
    role="guilabel"}.
3.  Upload the exported ZIP file. If demo data should be imported, tick
    `Load demo data`{.interpreted-text role="guilabel"}.
4.  Click `Install`{.interpreted-text role="guilabel"}.




--- SOURCE: studio/pdf_reports.md ---

# PDF reports

With Studio, you can
`edit existing PDF reports <studio/pdf-reports/edit>`{.interpreted-text
role="ref"} (e.g., invoices, quotations, etc.) or
`create new ones <studio/pdf-reports/edit>`{.interpreted-text
role="ref"}.

## Default layout {#studio/pdf-reports/default-layout}

The default layout of reports is managed outside Studio. Go to
`Settings`{.interpreted-text role="menuselection"}, then, in the
`Companies`{.interpreted-text role="guilabel"} section of the main page,
click `Configure Document Layout`{.interpreted-text role="guilabel"}.
Layout settings are company-specific but apply to all reports.

:::: tip
::: title
Tip
:::

You can see how the different settings affect the report layout in the
report preview on the right side of the
`Configure your document layout`{.interpreted-text role="guilabel"}
window. When creating or editing a report, you can see a preview of the
report by clicking `Print preview`{.interpreted-text role="guilabel"} on
the left side of the screen.
::::

Use the following settings:

::: {#studio/pdf-reports/default-layout-layout}
- `Layout`{.interpreted-text role="guilabel"}: Seven layouts are
  available:

  :::::::::: tabs
  ::: tab
  Light

  ![Light report layout sample](pdf_reports/layout-light.png)
  :::

  ::: tab
  Boxed

  ![Boxed report layout sample](pdf_reports/layout-boxed.png)
  :::

  ::: tab
  Bold

  ![Bold report layout sample](pdf_reports/layout-bold.png)
  :::

  ::: tab
  Striped

  ![Striped report layout sample](pdf_reports/layout-striped.png)
  :::

  ::: tab
  Bubble

  ![Bubble report layout sample](pdf_reports/layout-bubble.png)
  :::

  ::: tab
  Wave

  ![Wave report layout sample](pdf_reports/layout-wave.png)
  :::

  ::: tab
  Folder

  ![Folder report layout sample](pdf_reports/layout-folder.png)
  :::
  ::::::::::
:::

::: {#studio/pdf-reports/default-layout-background}
- `Background`{.interpreted-text role="guilabel"}: The following
  backgrounds are available:
  - `Blank`{.interpreted-text role="guilabel"}: Nothing is displayed.
  - `Demo logo`{.interpreted-text role="guilabel"}: A demo logo is
    displayed in the background.
  - `Custom`{.interpreted-text role="guilabel"}: Upload a custom
    background image.
:::

::: {#studio/pdf-reports/default-layout-font}
- `Text`{.interpreted-text role="guilabel"}: Eight fonts are available:
  Lato, Roboto, Open Sans, Montserrat, Oswald, Raleway, Tajawal (which
  supports Arabic and Latin scripts), and Fira Mono. Go to the [Google
  Fonts website](https://fonts.google.com/) to preview them.
:::

::: {#studio/pdf-reports/default-layout-logo}
- `Company logo`{.interpreted-text role="guilabel"}: Click the
  `Edit`{.interpreted-text role="guilabel"} button to upload or change
  the logo. This adds the logo to the company's record on the *Company*
  model, which you can access by going to `Settings`{.interpreted-text
  role="menuselection"} and then clicking
  `Update Info`{.interpreted-text role="guilabel"} in the
  `Companies`{.interpreted-text role="guilabel"} section.
:::

::: {#studio/pdf-reports/default-layout-colors}
- `Colors`{.interpreted-text role="guilabel"}: Change the primary and
  secondary colors used to structure reports. The default colors are
  automatically generated based on the colors of the logo.
:::

::: {#studio/pdf-reports/default-layout-address}
- `Address`{.interpreted-text role="guilabel"}: The company name and
  address are displayed in the header of `external
  reports <studio/pdf-reports/header-footer>`{.interpreted-text
  role="ref"}. You can add multiple lines of text.
:::

::: {#studio/pdf-reports/default-layout-tagline}
- `Tagline`{.interpreted-text role="guilabel"}: This is displayed in the
  header of `external reports
  <studio/pdf-reports/header-footer>`{.interpreted-text role="ref"}
  using the Light, Striped, Bubble, Wave and Folder layouts and in the
  footer of external reports using the Boxed and Bold layouts. You can
  add multiple lines of text.
:::

::: {#studio/pdf-reports/default-layout-footer}
- `Footer`{.interpreted-text role="guilabel"}: This text is used in the
  footer of `external reports
  <studio/pdf-reports/header-footer>`{.interpreted-text role="ref"}. You
  can add multiple lines of text. You can also edit the footer using the
  `report editor <studio/pdf-reports/edit>`{.interpreted-text
  role="ref"}.
:::

::: {#studio/pdf-reports/default-layout-paper}
- `Paper format`{.interpreted-text role="guilabel"}: This defines the
  default paper size of reports. You can select `A4`{.interpreted-text
  role="guilabel"} (21 cm x 29.7 cm) and `US Letter`{.interpreted-text
  role="guilabel"} (21.59 cm x 27.54 cm). This can also be defined for
  individual reports in the `Paper format`{.interpreted-text
  role="guilabel"} field in
  `Studio <studio/pdf-reports/edit-options>`{.interpreted-text
  role="ref"}.

  :::: note
  ::: title
  Note
  :::

  Other paper formats may be available depending on which apps or
  modules you have installed, for example, label sheets for the
  Inventory app or event badges for the Events app.
  ::::
:::

## Creating new PDF reports {#studio/pdf-reports/create}

To create a new report for a
`model </applications/studio/models_modules_apps>`{.interpreted-text
role="doc"}, (e.g., sales orders) access the model, click the
`oi-studio`{.interpreted-text role="icon"}
(`Toggle Studio`{.interpreted-text role="guilabel"}) button, then click
`Reports`{.interpreted-text role="guilabel"}. Click
`New`{.interpreted-text role="guilabel"} and, in the popup window that
opens, select the type of report. This is solely used to determine what
is displayed in the header and footer:

::: {#studio/pdf-reports/header-footer}
- `External`{.interpreted-text role="guilabel"}:
  - The header displays the company\'s
    `logo <studio/pdf-reports/default-layout-logo>`{.interpreted-text
    role="ref"} and its
    `name and address <studio/pdf-reports/default-layout-address>`{.interpreted-text
    role="ref"}. For reports using the Light, Striped, Bubble, Wave and
    Folder layouts, the
    `tagline <studio/pdf-reports/default-layout-tagline>`{.interpreted-text
    role="ref"} also appears in the header.
  - The footer displays the values set in the
    `Footer <studio/pdf-reports/default-layout-footer>`{.interpreted-text
    role="ref"} field and the page number. For reports using the Boxed
    and Bold layouts, the
    `tagline <studio/pdf-reports/default-layout-tagline>`{.interpreted-text
    role="ref"} also appears in the footer.
- `Internal`{.interpreted-text role="guilabel"}: The header displays the
  user\'s current date and time, the company\'s
  `name and address <studio/pdf-reports/default-layout-address>`{.interpreted-text
  role="ref"} and the page number. There is no footer.
- `Blank`{.interpreted-text role="guilabel"}: There is neither a header
  nor a footer. Click in the upper left corner of the page to edit the
  report.
:::

Once you have created the report, you can start
`editing it <studio/pdf-reports/edit>`{.interpreted-text role="ref"}.

## Editing PDF reports {#studio/pdf-reports/edit}

To access the reports available for a model, access the model, click the
`oi-studio`{.interpreted-text role="icon"}
(`Toggle Studio`{.interpreted-text role="guilabel"}) button, then click
`Reports`{.interpreted-text role="guilabel"}. Select an existing report
to open it.

Alternatively, you can also open Studio, click
`Reports`{.interpreted-text role="guilabel"}, and search for a specific
report or model.

:::: important
::: title
Important
:::

It is strongly recommended to **duplicate** the standard report and make
changes in the duplicated version. To duplicate a report, hover the
mouse pointer on the top right corner of the report, click the
`fa-ellipsis-vertical`{.interpreted-text role="icon"}
(`vertical ellipsis`{.interpreted-text role="guilabel"}) icon, and then
select `Duplicate`{.interpreted-text role="guilabel"}.

![Duplicating a PDF report](pdf_reports/duplicate-report.png)
::::

### Options {#studio/pdf-reports/edit-options}

Once you have selected or created a report, you can use the options in
the left part of the screen to:

- Change the `Report name`{.interpreted-text role="guilabel"}: The new
  name is applied everywhere (in Studio, in the
  `Print`{.interpreted-text role="guilabel"} menu under the
  `fa-cog`{.interpreted-text role="icon"} (`gear`{.interpreted-text
  role="guilabel"}) icon in the form view, and in the PDF file name).
- Modify the `Paper format`{.interpreted-text role="guilabel"}: If no
  value is selected, the format defined in the
  `default layout <studio/pdf-reports/default-layout-paper>`{.interpreted-text
  role="ref"} is used.
- `Show in print menu`{.interpreted-text role="guilabel"}: to add the
  report to the `Print`{.interpreted-text role="guilabel"} menu in the
  form view.
- `Reload from attachment`{.interpreted-text role="guilabel"}: to save
  the report as an attachment on the record the first time it is
  generated and reload the original version of the report any subsequent
  time. This is legally required for invoices and is mainly used in this
  case.
- `Limit visibility to groups`{.interpreted-text role="guilabel"}: to
  limit the availability of the PDF report to specific
  `user groups <../general/users/access_rights>`{.interpreted-text
  role="doc"}.
- `Edit sources`{.interpreted-text role="guilabel"}: to modify the
  report directly in the `XML file
  <studio/pdf-reports/XML-editing>`{.interpreted-text role="ref"}.
- `Reset report`{.interpreted-text role="guilabel"}: to discard all
  changes made to the report and reset it to its standard version.
- `Print preview`{.interpreted-text role="guilabel"}: to generate and
  download a report preview.

### Report editor {#studio/pdf-reports/report-editor}

The report editor allows you to modify the content and formatting of the
report.

:::: tip
::: title
Tip
:::

\- You can `Undo`{.interpreted-text role="guilabel"} or
`Redo`{.interpreted-text role="guilabel"} changes using the related
buttons or the shortcuts [CTRL]{.title-ref} + [Z]{.title-ref} and
[CTRL]{.title-ref} + [Y]{.title-ref}.

- Changes are saved automatically when you leave the report or manually
  using the `Save`{.interpreted-text role="guilabel"} button.
- You can reset the report to its standard version by clicking the
  `Reset report`{.interpreted-text role="guilabel"} button in the left
  part of the screen.
::::

:::: important
::: title
Important
:::

Editing the header and footer of a report impacts all standard and
custom reports.
::::

#### Conditional blocks

The dashed rectangles represent **conditional blocks** (*if/else*
statements). These are used to show/hide content based on specific
conditions. Click on the block to view the conditions.

![View conditions applied to a block.](pdf_reports/conditional-block-if.png)

Select a value to preview its corresponding output and edit it if
necessary.

![Preview the output of another condition.](pdf_reports/conditional-block-else.png)

:::: note
::: title
Note
:::

Conditions can only be edited in the
`XML <studio/pdf-reports/XML-editing>`{.interpreted-text role="ref"}.
::::

#### Other content

There are two types of text content in reports:

- Static text, i.e., the text that is not highlighted in blue, which can
  be modified directly in the editor.
- Dynamic text, i.e., the text that is highlighted in blue, which is
  replaced by `field </applications/studio/fields>`{.interpreted-text
  role="doc"} values when the report is generated, e.g., the sales order
  number or the quotation date.

You can add content (e.g., fields, lists, tables, images, banners, etc.)
to the report using commands. Type [/]{.title-ref} to open the
`powerbox <essentials/html_editor/commands>`{.interpreted-text
role="ref"}, then type the command\'s name or select it from the list.

To add static text to the report, type the text where you want it.

For more advanced changes, you can `edit the report in the XML directly
<studio/pdf-reports/XML-editing>`{.interpreted-text role="ref"}.

##### Add a field {#studio/pdf-reports/add-field}

To add a field, type [/]{.title-ref} and select the
`Field`{.interpreted-text role="guilabel"} command. In the list that
opens, select or search for the field; click the right arrow next to the
field name to access the list of related fields if needed. Then, specify
the default value that will be shown if the field is not completed in
the record and press [Enter]{.title-ref}.

![Select a related field.](pdf_reports/powerbox-field.png)

##### Add or edit a table {#studio/pdf-reports/add-edit-table}

There are two types of tables in reports:

- `Static tables <studio/pdf-reports/static-table>`{.interpreted-text
  role="ref"}, which are used to display static text or fields. For this
  type of table, you define the number of columns and rows when adding
  the table.

- `Dynamic tables <studio/pdf-reports/dynamic-table>`{.interpreted-text
  role="ref"}, which are used to display data from
  `relational fields <studio/fields/relational-fields>`{.interpreted-text
  role="ref"}. For this type of table, you only define the number of
  columns when adding the table. The number of rows in the generated
  report will be determined by the number of records in the related
  model that are linked with the current model.

  ::: example
  In a sales order report, a dynamic table is used to show the order
  lines related to the sales order. If the sales order contains 10 order
  lines, the table in the generated report has 10 rows; if it contains
  two order lines, the table has two rows.
  :::

###### Add or edit a static table {#studio/pdf-reports/static-table}

To add a static table, type [/]{.title-ref} and select the
`Table`{.interpreted-text role="guilabel"} command. Determine the number
of columns and rows for the table. Once the table has been added, you
can start editing it.

You can insert, move and delete columns and rows using the table tools.
Position the cursor on top of the column or to the left of the row then
click the purple rectangle and select an option.

![List of available options for editing table structure.](pdf_reports/table-tools.png)

To resize a column, drag the column border to the desired position;
reset all columns to their standard size by selecting
`Reset Size`{.interpreted-text role="guilabel"} from the table tools.

Add the
`field of your choice <studio/pdf-reports/add-field>`{.interpreted-text
role="ref"} in a cell or add static text by typing.

:::: tip
::: title
Tip
:::

To add text in a structured way without using a table, you can use
columns. Add columns by typing [/]{.title-ref} and selecting the
appropriate command: `2 columns`{.interpreted-text role="guilabel"},
`3 columns`{.interpreted-text role="guilabel"} or
`4 columns`{.interpreted-text role="guilabel"}.
::::

###### Add or edit a dynamic table {#studio/pdf-reports/dynamic-table}

> :::: note
> ::: title
> Note
> :::
>
> \- Only relations of type [one2many]{.title-ref} or
> [many2many]{.title-ref} can be displayed as dynamic tables. - An
> existing dynamic table in a standard report has a more complex
> structure than a dynamic table you add yourself. For such tables, it
> is possible to insert or delete columns; it is not possible to move
> columns or to insert, move or delete rows.
> ::::

To add a dynamic table, type [/]{.title-ref} and select the
`Dynamic Table`{.interpreted-text role="guilabel"} command. In the list
that opens, select or search for the relation the table will be based on
and press [Enter]{.title-ref}. Once the table has been added, you can
start editing it.

You can insert, move and delete columns using the table tools, as for a
`static table <studio/pdf-reports/static-table>`{.interpreted-text
role="ref"}. It is also possible to insert static rows that will appear
above or below the generated rows.

To add a field to a cell, delete any placeholder text then add the
`field of your choice
<studio/pdf-reports/add-field>`{.interpreted-text role="ref"}. The
dialog box that opens shows the source object for the field (e.g., the
*Order Lines* model) and the list of available fields.

![List of available fields for the sale order lines model.](pdf_reports/available-fields.png)

Replace the `Column name`{.interpreted-text role="guilabel"} label by
the label of your choice.

:::: note
::: title
Note
:::

The default row automatically iterates over the field\'s content,
generating a row on the report for each field value (e.g., one row per
order line).
::::

##### Formatting

To format text in the report, select it, then format it using the
options in the
`text editor </applications/essentials/html_editor>`{.interpreted-text
role="doc"}.

> ![Format text using the text editor.](pdf_reports/text-editor.png)

### Editing the report\'s XML {#studio/pdf-reports/XML-editing}

:::: warning
::: title
Warning
:::

Modifying the XML directly may result in report issues during `upgrades
<../../../administration/upgrade>`{.interpreted-text role="doc"}. If
this happens, simply copy your changes from the old database into your
upgraded database.
::::

To edit the report\'s XML, click `Edit sources`{.interpreted-text
role="guilabel"} in the left pane.

#### Examples

::: spoiler
Modify the widget of a field

To change how data is presented in your report, you can modify a
field\'s default
`widget </applications/studio/fields>`{.interpreted-text role="doc"}
manually. In the example below, the order date shows the date and time
by default, while the unit price defaults to a precision of two decimal
places.

``` {.xml emphasize-lines="2,3"}
<div class="oe_structure">
 <span t-field="doc.date_order"/>
 <span t-field="doc.price_unit"/>
</div>
```

By using [t-options]{.title-ref}, in this case the [widget]{.title-ref}
option, these fields can be modified to show only the date and a
precision of four decimal places, respectively:

``` {.xml emphasize-lines="2,3"}
<div class="oe_structure">
 <span t-field="doc.date_order" t-options="{'widget': 'date'}"/>
 <span t-field="doc.price_unit" t-options="{'widget': 'float', 'precision': 4}"/>
</div>
```
:::

::: spoiler
Conditional blocks

If you want to show/hide content based on specific conditions, you can
manually add [if/else]{.title-ref} control statements in the report XML.

For example, if you want to hide a custom data table if there are no
tags, you can use the [t-if]{.title-ref} attribute to define the
condition, which is then evaluated as [True]{.title-ref} or
[False]{.title-ref}. The table will not be displayed if there are no
tags in the quotation.

``` {.xml emphasize-lines="2"}
<!-- table root element -->
<table class="table" t-if="len(doc.tag_ids) > 0">
    <!-- thead = table header, the row with column titles -->
    <thead>
        <!-- table row element -->
        <tr>
            <!-- table header element -->
            <th>ID</th>
            <th>Name</th>
        </tr>
    </thead>
    <!-- table body, the main content -->
    <tbody>
        <!-- we create a row for each subrecord with t-foreach -->
        <tr t-foreach="doc.tag_ids" t-as="tag">
            <!-- for each line, we output the name and price as table cells -->
            <td t-out="tag.id"/>
            <td t-out="tag.name"/>
        </tr>
    </tbody>
</table>
```

If you want to display another block in case the [t-if]{.title-ref}
statement is evaluated as [False]{.title-ref}, you can specify it using
the [t-else]{.title-ref} statement. The [t-else]{.title-ref} block must
directly follow the [t-if]{.title-ref} block in the document structure.
There is no need to specify any condition in the [t-else]{.title-ref}
attribute. As an example, let\'s show a quick message explaining that
there are no tags on the quotation:

``` {.xml emphasize-lines="22"}
<!-- table root element -->
<table class="table" t-if="len(doc.tag_ids) > 0">
    <!-- thead = table header, the row with column titles -->
    <thead>
        <!-- table row element -->
        <tr>
            <!-- table header element -->
            <th>ID</th>
            <th>Name</th>
        </tr>
    </thead>
    <!-- table body, the main content -->
    <tbody>
        <!-- we create a row for each subrecord with t-foreach -->
        <tr t-foreach="doc.tag_ids" t-as="tag">
            <!-- for each line, we output the name and price as table cells -->
            <td t-out="tag.id"/>
            <td t-out="tag.name"/>
        </tr>
    </tbody>
</table>
<div class="text-muted" t-else="">No tag present on this document.</div>
```

By using the [t-if/t-else]{.title-ref} notation, the report editor
recognizes that these sections are mutually exclusive and should be
displayed as conditional blocks:

![Output preview if there are tags.](pdf_reports/XML-condition-if.png)

You can switch conditions using the editor to preview their output:

![Output preview if there are no tags.](pdf_reports/XML-condition-else.png)

If you wish to have multiple options, you can also use
[t-elif]{.title-ref} directives to add intermediary conditions. For
example, this is how the title of sales order reports changes based on
the condition of the underlying document.

``` xml
<h2 class="mt-4">
    <span t-if="env.context.get('proforma', False) or is_pro_forma">Pro-Forma Invoice # </span>
    <span t-elif="doc.state in ['draft','sent']">Quotation # </span>
    <span t-else="">Order # </span>
    <span t-field="doc.name">SO0000</span>
</h2>
```

The title *Pro-Forma Invoice* is used depending on some contextual
conditions. If these conditions are not met and the state of the
document is either [draft]{.title-ref} or [sent]{.title-ref}, then
*Quotation* is used. If none of those conditions are met, the report\'s
title is *Order*.
:::

::::: spoiler
Images

Working with images in a report can be challenging, as precise control
over image size and behavior is not always obvious. You can insert image
fields using the report editor (by using the
`Field command <studio/pdf-reports/add-field>`{.interpreted-text
role="ref"}), but inserting them in XML using the [t-field]{.title-ref}
directive and accompanying [t-options]{.title-ref} attributes provides
better sizing and positioning control.

For example, the following code outputs the field
[image_128]{.title-ref} of the line\'s product as a 64px-wide image
(with an automatic height based on the image\'s aspect ratio).

``` xml
<span t-field="line.product_id.image_128" t-options-widget="image" t-options-width="64px"/>
```

The following options are available for image widgets:

- \`width\`: width of the image, usually in pixels or CSS length units
  (e.g., [rem]{.title-ref}) (leave empty for auto-width).
- \`height\`: height of the image, usually in pixels or CSS length units
  (e.g., [rem]{.title-ref}) (leave empty for auto-height).
- \`class\`: CSS classes applied on the [img]{.title-ref} tag;
  [Bootstrap classes](https://getbootstrap.com/docs/5.1/content/tables)
  are available.
- \`alt\`: alternative text of the image
- \`style\`: style attribute; it allows you to override styles more
  freely than with [Bootstrap
  classes](https://getbootstrap.com/docs/5.1/content/tables).

These attributes must contain strings, i.e., text enclosed within quotes
within quotes, e.g., [t-options-width=\"\'64px\'\"]{.title-ref} (or,
alternatively, a valid Python expression).

:::: note
::: title
Note
:::

The image widget cannot be used on an [img]{.title-ref} tag. Instead,
set the [t-field]{.title-ref} directive on a [span]{.title-ref} (for
inline content) or [div]{.title-ref} (for block content) node.
::::

For example, let\'s add a column with the product image in the quotation
table:

``` {.xml emphasize-lines="4,14-20"}
<table class="table table-sm o_main_table table-borderless mt-4">
    <thead style="display: table-row-group">
        <tr>
            <th>Image</th>
            <th name="th_description" class="text-start">Description</th>
            <th>Product Category</th>
            <th name="th_quantity" class="text-end">Quantity</th>
            <th name="th_priceunit" class="text-end">Unit Price</th>
[...]
        <t t-foreach="lines_to_report" t-as="line">
            <t t-set="current_subtotal" t-value="current_subtotal + line.price_subtotal"/>
            <tr t-att-class="'bg-200 fw-bold o_line_section' if line.display_type == 'line_section' else 'fst-italic o_line_note' if line.display_type == 'line_note' else ''">
                <t t-if="not line.display_type">
                   <td>
                       <span t-field="line.product_template_id.image_128"
                             t-options-widget="'image'"
                             t-options-width="'64px'"
                             t-options-class="'rounded-3 shadow img-thumbnail'"
                           />
                   </td>
                    <td name="td_name"><span t-field="line.name">Bacon Burger</span></td>
                    <td t-out="line.product_id.categ_id.display_name"/>
```

The [t-options-width]{.title-ref} attribute restricts the image width to
64 pixels, and the Bootstrap classes used in
[t-options-class]{.title-ref} create a thumbnail-like border with
rounded corners and a shadow.

![Add a column with the product image in the quotation table.](pdf_reports/XML-images.png)
:::::




--- SOURCE: studio/views.md ---

# Views

Views are the interface that allows displaying the data contained in a
`model
<models_modules_apps>`{.interpreted-text role="doc"}. One model can have
several views, which are simply different ways to show the same data. In
Studio, views are organized into four categories: `general
<studio/views/general>`{.interpreted-text role="ref"},
`multiple records <studio/views/multiple-records>`{.interpreted-text
role="ref"}, `timeline
<studio/views/timeline>`{.interpreted-text role="ref"}, and
`reporting <studio/views/reporting>`{.interpreted-text role="ref"}.

:::::: tip
::: title
Tip
:::

\- To change the default view of a model,
`access Studio <studio/access>`{.interpreted-text role="ref"}, go to
`Views`{.interpreted-text role="guilabel"}, click the
`fa-ellipsis-v`{.interpreted-text role="icon"}
(`ellipsis`{.interpreted-text role="guilabel"}) icon next to the desired
view, and click `Set as Default`{.interpreted-text role="guilabel"}. -
You can modify views using the built-in XML editor: Activate the
`Developer mode
<developer-mode>`{.interpreted-text role="ref"}, go to the view you want
to edit, select the `View`{.interpreted-text role="guilabel"} tab, and
click `</> XML`{.interpreted-text role="guilabel"}.

:::: important
::: title
Important
:::

If you are editing a view using the XML editor, avoid making changes
directly to standard and inherited views, as these would be reset and
lost during updates or module upgrades. Always make sure you select the
right Studio inherited views: When you modify a view in Studio by
dragging and dropping a new field, for example, a specific Studio
inherited view and its corresponding XPath, which defines the modified
part of the view, are automatically generated.
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

The `Form`{.interpreted-text role="guilabel"}
`fa-address-card`{.interpreted-text role="icon"} view is used when
creating and editing records, such as contacts, sales orders, products,
etc.

- To structure a form, drag and drop the
  `Tabs and Columns`{.interpreted-text role="guilabel"} element found
  under the `+ Add`{.interpreted-text role="guilabel"} tab.
- To prevent users from creating, editing, or deleting records, untick
  `Can Create`{.interpreted-text role="guilabel"},
  `Can Edit`{.interpreted-text role="guilabel"}, or
  `Can Delete`{.interpreted-text role="guilabel"}.
- To add a button, click `Add a button`{.interpreted-text
  role="guilabel"} at the top of the form, enter a
  `Label`{.interpreted-text role="guilabel"}, and select the button\'s
  action:
  - `Run a Server Action`{.interpreted-text role="guilabel"}: select the
    `server action <reference/actions/server>`{.interpreted-text
    role="ref"} to be executed from the dropdown list;
  - `Call a method`{.interpreted-text role="guilabel"}: specify an
    existing Python method already defined in Odoo.
- To change a button\'s label or style, click the button and edit its
  `Label`{.interpreted-text role="guilabel"} or
  `Class`{.interpreted-text role="guilabel"} (either
  [btn-primary]{.title-ref} or [btn-secondary]{.title-ref}) in the
  `Properties`{.interpreted-text role="guilabel"} tab.
- To add a smart button, click the `fa-plus-square`{.interpreted-text
  role="icon"} (`plus`{.interpreted-text role="guilabel"}) icon in the
  top-right corner of the form. Enter a `Label`{.interpreted-text
  role="guilabel"}, choose an `Icon`{.interpreted-text role="guilabel"},
  and select a
  `related field <studio/fields/relational-fields-related-field>`{.interpreted-text
  role="ref"}.

::: example
![Sales order model\'s Form view](views/form-sales-order.png)
:::

### Activity {#studio/views/general/activity}

The `Activity`{.interpreted-text role="guilabel"}
`fa-clock-o`{.interpreted-text role="icon"} view is used to schedule and
have an overview of activities (emails, calls, etc.) linked to records.

:::: note
::: title
Note
:::

This view can only be modified within Studio by editing the XML code.
::::

::: example
![Lead/Opportunity model\'s Activity view](views/activity-lead-opportunity.png)
:::

### Search {#studio/views/general/search}

The `Search`{.interpreted-text role="guilabel"}
`oi-search`{.interpreted-text role="icon"} view is added on top of other
views to filter, group, and search records.

- To add custom `Filters`{.interpreted-text role="guilabel"} and
  structure them using `Separators`{.interpreted-text role="guilabel"},
  go to the `+ Add`{.interpreted-text role="guilabel"} tab and drag and
  drop them under `Filters`{.interpreted-text role="guilabel"}.
- To add an existing field under the search dropdown menu, go to the
  `+ Add`{.interpreted-text role="guilabel"} tab and drag and drop it
  under `Autocompletion Fields`{.interpreted-text role="guilabel"}.

::: example
![Project model\'s Search view on the Kanban view](views/search-project-kanban.png)
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

The `Kanban`{.interpreted-text role="guilabel"}
`oi-view-kanban`{.interpreted-text role="icon"} view is often used to
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
- To set a default grouping for records, select a field under
  `Default Group By`{.interpreted-text role="guilabel"}.

::: example
![Project model\'s Kanban view](views/kanban-project.png)
:::

### List {#studio/views/multiple-records/list}

The `List`{.interpreted-text role="guilabel"}
`oi-view-list`{.interpreted-text role="icon"} view is used to overview
many records at once, look for records, and edit simple records.

- To prevent users from creating, editing, or deleting records, untick
  `Can Create`{.interpreted-text role="guilabel"},
  `Can Edit`{.interpreted-text role="guilabel"}, or
  `Can Delete`{.interpreted-text role="guilabel"}.

- To create and edit records directly within the view, select either
  `Add record at the
  bottom`{.interpreted-text role="guilabel"},
  `Add record on top`{.interpreted-text role="guilabel"} or
  `Open form view`{.interpreted-text role="guilabel"} under
  `When Creating Record`{.interpreted-text role="guilabel"}.

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

- To set a default grouping for records, select a field under
  `Default Group By`{.interpreted-text role="guilabel"}.

- To add a button, click `Add a button`{.interpreted-text
  role="guilabel"} at the top of the list, enter a
  `Label`{.interpreted-text role="guilabel"}, and select the button\'s
  action:

  - `Run a Server Action`{.interpreted-text role="guilabel"}: select the
    `server action <reference/actions/server>`{.interpreted-text
    role="ref"} to be executed from the dropdown list;
  - `Call a method`{.interpreted-text role="guilabel"}: specify an
    existing Python method already defined in Odoo.

:::: tip
::: title
Tip
:::

To add a `oi-draggable`{.interpreted-text role="icon"}
(`drag handle`{.interpreted-text role="guilabel"}) icon to reorder
records manually, add an
`Integer field <studio/fields/simple-fields-integer>`{.interpreted-text
role="ref"} with the `Handle`{.interpreted-text role="guilabel"} widget.

![Drag handle icon enabling to sort records manually in List view](views/list-drag-handle.png)
::::

::: example
![Sales order model\'s List view](views/list-sales-order.png)
:::

### Map {#studio/views/multiple-records/map}

The `Map`{.interpreted-text role="guilabel"}
`fa-map-marker`{.interpreted-text role="icon"} view is used to display
records on a map. For example, it is used in the Field Service app to
plan an itinerary between different tasks.

:::: note
::: title
Note
:::

A
`Many2One field <studio/fields/relational-fields-many2one>`{.interpreted-text
role="ref"} linked to the *Contact* model is required to activate the
view, as the contact address is used to position records on the map.
::::

- To select which kind of contact should be used on the map, select it
  under `Contact
  Field`{.interpreted-text role="guilabel"}.
- To hide the name or the address of the record, tick
  `Hide Name`{.interpreted-text role="guilabel"} or `Hide
  Address`{.interpreted-text role="guilabel"}.
- To add information from other fields, select them under
  `Additional Fields`{.interpreted-text role="guilabel"}.
- To have a route suggested between the different records, tick
  `Enable Routing`{.interpreted-text role="guilabel"} and select which
  field should be used to sort records for the routing.

::: example
![Task model\'s Map view](views/map-task.png)
:::

## Timeline views {#studio/views/timeline}

:::: note
::: title
Note
:::

\- When you first activate one of the timeline views, you need to select
which `Date
<studio/fields/simple-fields-date>`{.interpreted-text role="ref"} or
`Date & Time
<studio/fields/simple-fields-date-time>`{.interpreted-text role="ref"}
fields on your model should be used to define when the records start and
stop in order to display them on the view. You can modify the
`Start Date Field`{.interpreted-text role="guilabel"} and
`Stop Date Field`{.interpreted-text role="guilabel"} after activating
the view. - The settings described below are found under the view\'s
`View`{.interpreted-text role="guilabel"} tab unless specified
otherwise.
::::

### Calendar {#studio/views/timeline/calendar}

The `Calendar`{.interpreted-text role="guilabel"}
`fa-calendar`{.interpreted-text role="icon"} view is used to overview
and manage records inside a calendar.

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
  <studio/fields/simple-fields-checkbox>`{.interpreted-text role="ref"}
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

You can also use a `Delay Field`{.interpreted-text role="guilabel"} to
display the duration of the event in hours by selecting a
`Decimal <studio/fields/simple-fields-decimal>`{.interpreted-text
role="ref"} or `Integer
<studio/fields/simple-fields-integer>`{.interpreted-text role="ref"}
field on the model which specifies the duration of the event. However,
if you set an `End Date Field`{.interpreted-text role="guilabel"}, the
`Delay Field`{.interpreted-text role="guilabel"} will not be taken into
account.
::::

::: example
![Calendar Event model\'s Calendar view](views/calendar-event.png)
:::

### Cohort {#studio/views/timeline/cohort}

The `Cohort`{.interpreted-text role="guilabel"}
`oi-view-cohort`{.interpreted-text role="icon"} view is used to examine
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
![Subscription model\'s Cohort view](views/cohort-subscription.png)
:::

### Gantt {#studio/views/timeline/gantt}

The `Gantt`{.interpreted-text role="guilabel"}
`fa-tasks`{.interpreted-text role="icon"} view is used to forecast and
examine the overall progress of records. Records are represented by a
bar under a time scale.

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
![Planning Shift model\'s Gantt view](views/gantt-planning.png)
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

The `Pivot`{.interpreted-text role="guilabel"}
`oi-view-pivot`{.interpreted-text role="icon"} view is used to explore
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
![Purchase Report model\'s Pivot view](views/pivot-purchase-report.png)
:::

### Graph {#studio/views/reporting/graph}

The `Graph`{.interpreted-text role="guilabel"}
`fa-area-chart`{.interpreted-text role="icon"} view is used to showcase
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
![Sales Analysis Report model\'s Bar chart on Graph view](views/graph-sales-report.png)
:::


