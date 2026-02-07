# ODOO DOCUMENTATION SUMMARY - CATEGORY: ODOO16DOCS_APP_WEBSITE_MARKETING



--- SOURCE: marketing/email_marketing/analyze_metrics.md ---

# Analyze metrics

To properly understand the success or failure of an email marketing
campaign, it is necessary to monitor several key metrics. The insights
gained from these metrics can then be used to optimize future campaigns.
Odoo\'s **Email Marketing** application tracks several `key metrics
<email-marketing/key-metrics>`{.interpreted-text role="ref"}, which can
be interpreted to improve future campaigns.

## View metrics

After a mass mail has been sent, the results for that particular mailing
are displayed in multiple locations.

To access the metrics for an individual mailing, navigate to
`Email Marketing app
--> Mailings`{.interpreted-text role="menuselection"}. Locate the
specific mailing in the list view, and use the column headings to view
the results for that mailing. Click on one of the mailings in the list
to open the record. At the top of the record, detailed metrics are
displayed as smart buttons.

![The smart buttons on a mass mailing, displaying the results of the message.](analyze_metrics/metric-smart-buttons.png){.align-center}

Below is a non-comprehensive selection of percentage-based metrics that
are key for analyzing the success of an email marketing campaign.

:::: tip
::: title
Tip
:::

Click on any smart button to see the recipient records for that
respective metric.
::::

### Opened rate {#email-marketing/key-metrics}

The `Opened`{.interpreted-text role="guilabel"} rate measures the
percentage of emails opened by recipients against the total number of
sent emails.

A high open rate may indicate the subject line was timely, compelling,
and successfully prompted the recipients to view the message.

A low open rate may indicate the subject line failed to capture the
recipients\' interest. It could also indicate the email ended up in a
spam or junk folder, due to having a poor sender reputation, or failing
to `configure the proper DNS records
<../../general/email_communication/email_domain>`{.interpreted-text
role="doc"}.

### Replied rate

The `Replied`{.interpreted-text role="guilabel"} rate measures the
percentage of recipients who responded to the email directly against the
total number of sent emails.

A high replied rate may indicate the email resonated with recipients,
prompting them to take action or provide feedback.

A low replied rate may suggest that the message lacked relevance or did
not contain a clear call-to-action.

### Clicked rate

The `Clicked`{.interpreted-text role="guilabel"} rate, represents the
*Click Through Rate (CTR)*, which measures the percentage of recipients
who clicked on a link within the email against the total number of sent
emails.

A high `CTR (Click through rate)`{.interpreted-text role="abbr"} may
indicate the email content was relevant and appropriately targeted.
Recipients were motivated to click the links provided, and likely found
the content engaging.

A low `CTR (Click through rate)`{.interpreted-text role="abbr"} may
indicate issues with either the targeting, or the content itself. If
there were any calls to action, recipients may have been unmotivated, or
the message itself may have been directed toward the wrong audience.

### Received rate

The *Received* rate measures the percentage of emails successfully
delivered against the total number of sent emails.

A high received rate can indicate the mailing list used is up-to-date
and the sender authentication is trusted by email providers.

A low received rate may indicate issues with either the mailing list
used for the mailing, or with the sender authentication. View the
`email-marketing/deliverability-issues`{.interpreted-text role="ref"}
section for more information.

### Bounced rate

The *Bounced* rate measures the percentage of emails unsuccessfully
delivered, against the total number of sent emails.

A high bounce rate could indicate issues with either the mailing list
used for the mailing, or with the sender authentication.

A low bounce rate may indicate the mailing list used is up-to-date and
the sender authentication is trusted by email providers. View the
`email-marketing/deliverability-issues`{.interpreted-text role="ref"}
section for more information.

## Deliverability issues {#email-marketing/deliverability-issues}

The following defines possible reasons for a high bounce rate or low
received rate:

- Using a mailing list that contains outdated contact information, or
  malformed email addresses, is likely to result in a high bounce rate
  and/or a low received rate.
- Mailings sent using a *From* email address that differs from the
  sender\'s domain are likely to bounce with certain email providers,
  due to failing `DMARC authentication
  <../../general/email_communication/email_domain>`{.interpreted-text
  role="doc"}.
- Failing to `configure the proper DNS records
  <../../general/email_communication/email_domain>`{.interpreted-text
  role="doc"} can also result in a high bounce rate.

::: seealso
\- `Mailing campaigns <../email_marketing>`{.interpreted-text
role="doc"} -
`Manage unsubscriptions <unsubscriptions>`{.interpreted-text role="doc"}
:::




--- SOURCE: marketing/email_marketing/mailing_lists.md ---

# Mailing lists

Mailing lists are important for a number of reasons. Mailing lists can
provide valuable leads for sales teams, communicate with focus groups
participants, contact consumers directly for useful feedback, and more.

## Create mailing lists

To create a mailing list in the *Email Marketing* application, navigate
to `Mailing
lists --> Mailing lists --> Create`{.interpreted-text
role="menuselection"}. Clicking `Create`{.interpreted-text
role="guilabel"} reveals a pop-up window.

![View of the mailing list pop-up in the Odoo Email Marketing application.](mailing_lists/new-mailing-list-popup.png){.align-center}

In the pop-up, name the mailing list and designate if the mailing list
should be public with the `Is Public`{.interpreted-text role="guilabel"}
checkbox.

The `Is Public`{.interpreted-text role="guilabel"} option allows the
mailing list to be accessible by recipients in the unsubscription page,
making it possible for them to update their subscription preferences.

After those options have been configured, click
`Create`{.interpreted-text role="guilabel"} to create the mailing list,
which Odoo automatically adds to the `Mailing Lists`{.interpreted-text
role="guilabel"} page.

## Add contacts to a mailing list

After a mailing list has been created (and added to the
`Mailing Lists`{.interpreted-text role="guilabel"} dashboard), click on
the desired mailing list to add contacts to the list.

Clicking the desired mailing list reveals a separate
`Mailing List Contacts`{.interpreted-text role="guilabel"} page, in
which contacts can be added to this specific list by clicking
`Create`{.interpreted-text role="guilabel"}, and adding contact
information directly on a separate contact detail form.

Or, while in the `Email Marketing`{.interpreted-text
role="menuselection"} application, navigate to `Mailing
Lists --> Mailing List Contacts`{.interpreted-text
role="menuselection"}. Doing so reveals a separate page with all the
mailing list contacts in the database.

From here, click `Create`{.interpreted-text role="guilabel"}, and add a
contact with the same previous steps. Or, click the
`Import`{.interpreted-text role="guilabel"} icon (to the right of the
`Create`{.interpreted-text role="guilabel"} button) to import contacts
into the database.

Once contacts are in the database, click into the desired contact\'s
detail form, and add the preferred mailing list in the
`Mailing List`{.interpreted-text role="guilabel"} tab (at the bottom of
the contact detail form), by clicking `Add a line`{.interpreted-text
role="guilabel"}, and selecting the desired mailing list. Multiple
mailing lists can be added to a single contact\'s detail form.

![View of a contact detail form with mailing list tab in Odoo Email Marketing.](mailing_lists/contact-form-mailing-list-tab.png){.align-center}

### Create new mailing list from contact detail form

To create a mailing list from a contact detail form, click
`Add a line`{.interpreted-text role="guilabel"}, and type in the name of
a new mailing list in the empty field that appears. Then, select either
`Create`{.interpreted-text role="guilabel"} or
`Create and Edit...`{.interpreted-text role="guilabel"}.

![View of the new mailing list drop-down on contact form in Odoo Email Marketing.](mailing_lists/new-list-dropdown-create-options.png){.align-center}

The `Create`{.interpreted-text role="guilabel"} option quickly creates
the mailing list to the contact detail form, and the list can be
configured at a later date. The `Create and Edit...`{.interpreted-text
role="guilabel"} option creates the mailing list, and reveals a pop-up
window, in which the new mailing list can be configured right away.

![View of the create and edit mailing list pop-up in Odoo Email Marketing.](mailing_lists/create-and-edit-mailing-list-popup.png){.align-center}

## Link a mailing list to website (Newsletter blocks)

When a mailing list is created in the database, Odoo provides the option
to directly link the mailing list on the Odoo-built website (created via
Odoo\'s `Website`{.interpreted-text role="guilabel"} application).

To link a mailing list to a website, navigate to the front-end of the
website, and enter `Edit`{.interpreted-text role="guilabel"} mode by
clicking `Edit`{.interpreted-text role="guilabel"} in the upper-right
corner. When clicked, Odoo reveals a right-sidebar, filled with
drag-and-drop *Building Blocks* that are packed with various features,
options, and design elements.

Then, to add a *subscription field* for a specific mailing list onto a
website, drag-and-drop any of the `Newsletter`{.interpreted-text
role="guilabel"} options (`Newsletter Block`{.interpreted-text
role="guilabel"}, `Newsletter Popup`{.interpreted-text role="guilabel"},
or `Newsletter`{.interpreted-text role="guilabel"}).

:::: tip
::: title
Tip
:::

To quickly locate the `Newsletter`{.interpreted-text role="guilabel"}
building block options (while in `Edit`{.interpreted-text
role="guilabel"} mode on the front-end of the website), type
[Newsletter]{.title-ref} into the search bar, located in the right
sidebar, under the `Blocks`{.interpreted-text role="guilabel"} tab, and
Odoo reveals the three different `Newsletter`{.interpreted-text
role="guilabel"} block options.

![View of how to quickly search for Newsletter blocks in the Odoo Website application.](mailing_lists/newsletter-block-search.png){.align-center}
::::

When a `Newsletter`{.interpreted-text role="guilabel"} block is dragged
onto the body of the website, Odoo reveals a pop-up window, in which the
desired mailing list is selected from a drop-down menu (and linked) to
this block on the website.

![View of the add mailing list subscription pop-up on an Odoo Website.](mailing_lists/add-mailing-list-popup-website.png){.align-center}

- `Newsletter Block`{.interpreted-text role="guilabel"} - Adds a block
  onto the webpage, providing visitors with the option to add their
  email address to this mailing list, and subscribe to future
  communications.

  Here\'s an example of a `Newsletter Block`{.interpreted-text
  role="guilabel"}.

  ![View of a sample newsletter block in the Odoo Website application.](mailing_lists/newsletter-block-sample.png)

- `Newsletter Popup`{.interpreted-text role="guilabel"} - Tells Odoo to
  reveal a subscription pop-up window to occur at a certain part of the
  webpage. When the visitor scrolls to this predetermined point, a
  pop-up subscription window appears, asking for their email address to
  subscribe to the mailing list. The pop-up window can be edited further
  to fit any business needs.

  Here\'s an example of a `Newsletter Popup`{.interpreted-text
  role="guilabel"}.

  ![View of a sample newsletter pop-up sample on an Odoo Website.](mailing_lists/newsletter-popup-sample.png)

- `Newsletter`{.interpreted-text role="guilabel"} - Provides visitors
  with a simple field to add their email address to the mailing list,
  and subscribe to future mailings in the footer (or anywhere else on
  the page).

  Here\'s an example of a `Newsletter`{.interpreted-text
  role="guilabel"} dynamic block.

  ![View of a Newsletter dynamic block on an Odoo Website.](mailing_lists/newsletter-footer-block-sample.png)

::: seealso
\- `/applications/marketing/email_marketing`{.interpreted-text
role="doc"} -
`/applications/marketing/email_marketing/unsubscriptions`{.interpreted-text
role="doc"}
:::




--- SOURCE: marketing/email_marketing/unsubscriptions.md ---

# Manage unsubscriptions (Blacklist)

Providing recipients with the power to unsubscribe from mailing lists is
not only a smart business practice, it\'s often a legal requirement. By
allowing recipients to unsubscribe from a mailing list establishes a
sense of trust with an audience, and helps companies appear genuine (and
not spammy).

## Enable the Blacklist feature

First, the *Blacklist* feature must be enabled. To do that, navigate to
`Email
Marketing app --> Configuration --> Settings`{.interpreted-text
role="menuselection"}, enable to `Blacklist Options when
Unsubscribing`{.interpreted-text role="guilabel"}, and click
`Save`{.interpreted-text role="guilabel"}.

![View of the blacklist feature in the Settings page of the Odoo Email Marketing app.](unsubscriptions/blacklist-feature.png){.align-center}

With that feature activated, an *Unsubscribe* link appears in mailings.
If a recipient clicks that link, Odoo reveals a
`Unsubscriptions`{.interpreted-text role="guilabel"} page, where they
can directly manage their subscriptions.

:::: note
::: title
Note
:::

With a test mailing, clicking the `Unsubscribe`{.interpreted-text
role="guilabel"} link reveals an error page (*error 403 - Access
Denied*). To make sure the link is working properly, create the mailing,
and only send it to a personal email.
::::

## Blacklist

In addition to having the option to *Unsubscribe* from specific mailing
lists, the recipient can also *Blacklist* themselves, meaning they will
not receive *any* more emails.

:::: note
::: title
Note
:::

The mailing list has to be configured as *Public* in order to be visible
for users.
::::

To view a complete collection of blacklisted email addresses, navigate
to `Email
Marketing app --> Configuration --> Blacklisted Email Addresses`{.interpreted-text
role="menuselection"}.

![View of the blacklisted email addresses page in Odoo Email Marketing.](unsubscriptions/blacklisted-email-addresses.png){.align-center}

When a blacklisted record is selected from this page, Odoo reveals a
separate page with that blacklisted recipient\'s contact information.

![View of a blacklisted contact detail form in Odoo Email Marketing.](unsubscriptions/blacklisted-contact-form.png){.align-center}

In the `Chatter`{.interpreted-text role="guilabel"} of this page,
there\'s a time-stamped message, informing the user when that recipient
blacklisted themselves (via a `Mail Blacklist created`{.interpreted-text
role="guilabel"} log note).

## Unblacklist contacts

To *Unblacklist* contacts, click the `Unblacklist`{.interpreted-text
role="guilabel"} button in the upper-left corner to remove the contact
from the blacklist, allowing them to receive mailings once again.

When `Unblacklist`{.interpreted-text role="guilabel"} is clicked, a
pop-up appears. In this pop-up, the specific email address is listed,
and there\'s a `Reason`{.interpreted-text role="guilabel"} field, in
which a reason can be entered, explaining why this particular contact
was removed from the blacklist.

![View of the unblacklist pop-up window in the Odoo Email Marketing application.](unsubscriptions/unblacklist-popup.png){.align-center}

After filling in the fields, click `Confirm`{.interpreted-text
role="guilabel"} to officially remove that particular contact from the
blacklist.

::: seealso
\- `/applications/marketing/email_marketing`{.interpreted-text
role="doc"} -
`/applications/marketing/email_marketing/mailing_lists`{.interpreted-text
role="doc"}
:::




--- SOURCE: marketing/email_marketing.md ---

show-content

:   

show-toc

:   

# Email marketing

Emails are an effective, fully-customizable form of communication that
are able to reach any target audience - large or small. The success of
an email is easily measurable, especially when a creative call-to-action
is involved.

Odoo *Email Marketing* provides professional-grade email design tools,
templates, and features, designed to simplify the otherwise complex
process required to create engaging emails, build successful campaigns,
and track their overall effectiveness in a single application.

::: seealso
\-
`/applications/marketing/email_marketing/mailing_lists`{.interpreted-text
role="doc"} -
`/applications/marketing/email_marketing/unsubscriptions`{.interpreted-text
role="doc"} -
`/applications/marketing/email_marketing/analyze_metrics`{.interpreted-text
role="doc"}
:::

## Email marketing dashboard

To get started, click on the `Email Marketing`{.interpreted-text
role="menuselection"} app icon, located on the main Odoo dashboard,
which leads to the main `Email Marketing`{.interpreted-text
role="guilabel"} dashboard (in the default kanban view).

To see all the mailings in the database, remove the default
`My Mailings`{.interpreted-text role="guilabel"} filter from the search
bar.

![View of the main dashboard of the Odoo Email Marketing application.](email_marketing/dashboard.png){.align-center}

:::: note
::: title
Note
:::

In the search bar, by default, the filter:
`My Mailings`{.interpreted-text role="guilabel"} is present. That means
the only information being seen (at that time) on the
`Email Marketing`{.interpreted-text role="guilabel"} dashboard are
emails that the current user has created, sent, or is responsible for.

This filter can be removed by clicking the `X`{.interpreted-text
role="guilabel"} next to `My Mailings`{.interpreted-text
role="guilabel"} in the search bar. Doing so, reveals all the
information for every email in the database.
::::

### Default kanban view and stages

The four kanban columns each represent the various stages of emails that
have been built or sent within the *Email Marketing* application.

The stages are: `Draft`{.interpreted-text role="guilabel"},
`In Queue`{.interpreted-text role="guilabel"},
`Sending`{.interpreted-text role="guilabel"}, `Sent`{.interpreted-text
role="guilabel"}.

- `Draft`{.interpreted-text role="guilabel"}: means the email is still
  being written/created.
- `In Queue`{.interpreted-text role="guilabel"}: means the email is
  scheduled, and sent at a later date.
- `Sending`{.interpreted-text role="guilabel"}: means the email is
  currently being sent to its recipients.
- `Sent`{.interpreted-text role="guilabel"}: means the email has already
  been sent to its recipients.

In each stage, there are drag-and-drop cards representing the email
campaigns that have been created, and the stage they are in represents
the current status of that mailing.

Each mailing block on the `Email Marketing`{.interpreted-text
role="guilabel"} dashboard provides key information related to that
specific email.

When the cursor hovers over the upper-right corner of an email campaign
card, three vertical dots (`⋮`{.interpreted-text role="guilabel"})
appear. When clicked, a mini drop-down menu reveals the option to
color-code the email `Delete`{.interpreted-text role="guilabel"} the
email altogether, or `Archive`{.interpreted-text role="guilabel"} the
message for potential future use.

![View of the three-dot drop-down menu on the Odoo Email Marketing dashboard.](email_marketing/three-dot-dropdown.png){.align-center}

In the upper-right corner of the main
`Email Marketing`{.interpreted-text role="guilabel"} dashboard, there
are other view options to choose from: `List`{.interpreted-text
role="guilabel"} and `Graph`{.interpreted-text role="guilabel"}.

### List view

The `List`{.interpreted-text role="guilabel"} view (represented by the
`☰ (three vertical lines)`{.interpreted-text role="guilabel"} icon)
provides the same key information, but in a classic list format.

![How the List view appears in the Odoo Email Marketing application.](email_marketing/list-view.png){.align-center}

### Graph view

The `Graph`{.interpreted-text role="guilabel"} view (represented by the
`📊 (bar graph)`{.interpreted-text role="guilabel"} icon) provides the
same key information, but in a variety of customizable graph (and chart)
layouts.

![How the Graph view appears in the Odoo Email Marketing application.](email_marketing/graph-view.png){.align-center}

In the upper-left corner, there is a `Measures`{.interpreted-text
role="guilabel"} menu, providing even more filter options to further
customize the graph views.

Those `Measures`{.interpreted-text role="guilabel"} options are:
`A/B Testing percentage`{.interpreted-text role="guilabel"},
`Color Index`{.interpreted-text role="guilabel"}, and
`Count`{.interpreted-text role="guilabel"} (which is selected, by
default).

### Filters, Group By, and Favorites search options

Regardless of the view chosen for the
`Email Marketing`{.interpreted-text role="guilabel"} dashboard, the
`Filters`{.interpreted-text role="guilabel"},
`Group by`{.interpreted-text role="guilabel"}, and
`Favorites`{.interpreted-text role="guilabel"} options are always
available.

These options provide various ways to specify and organize the
information seen on the `Email Marketing`{.interpreted-text
role="guilabel"} dashboard.

:::::: tabs
::: tab
Filters

This drop-down menu provides different ways to filter email campaigns on
the dashboard. The options are: `My Mailings`{.interpreted-text
role="guilabel"}, `Sent Date`{.interpreted-text role="guilabel"},
`Archived`{.interpreted-text role="guilabel"}, and
`Add Custom Filter`{.interpreted-text role="guilabel"}. If
`Add Custom Filter`{.interpreted-text role="guilabel"} is selected, Odoo
reveals an additional drop-down menu, with three customizable fields to
fill in, in order to retrieve results that fit more specific criteria.

![View of filters drop-down menu options on the Odoo Email Marketing dashboard.](email_marketing/filters-dropdown.png)
:::

::: tab
Group By

This drop-down menu provides additional ways to organize the data on the
dashboard by grouping them in specific ways. Using this drop-down menu,
the data can be grouped by the messages\' `Status`{.interpreted-text
role="guilabel"}, or who it was `Sent By`{.interpreted-text
role="guilabel"}.

There is also the option to group the data by
`Sent Period`{.interpreted-text role="guilabel"}, which has its own
sub-menu of options to choose from. The `Sent Period`{.interpreted-text
role="guilabel"} options are `Year`{.interpreted-text role="guilabel"},
`Quarter`{.interpreted-text role="guilabel"}, `Month`{.interpreted-text
role="guilabel"}, `Week`{.interpreted-text role="guilabel"}, and
`Day`{.interpreted-text role="guilabel"}.

If none of the above `Group By`{.interpreted-text role="guilabel"}
options deliver the desired results, click
`Add Custom Group`{.interpreted-text role="guilabel"} at the bottom of
the drop-down menu. Doing so reveals a new field, wherein custom
criteria can be selected and applied, thus delivering any grouping of
data that may be desired.

![View of the Group By drop-down menu on the Odoo Email Marketing application.](email_marketing/group-by-dropdown.png)
:::

::: tab
Favorites

This drop-down menu provides different ways to incorporate past search
filters and other record-related options to customize the dashboard. The
options are: `Save current
search`{.interpreted-text role="guilabel"},
`Import records`{.interpreted-text role="guilabel"},
`Add to my dashboard`{.interpreted-text role="guilabel"}, and `Add to
Google Spreadsheet`{.interpreted-text role="guilabel"}.

![View of the Favorites drop-down menu on the Odoo Email Marketing application.](email_marketing/favorites-dropdown.png)
:::
::::::

## Settings

To view (and modify) the *Email Marketing* settings, navigate to
`Email Marketing
application --> Configuration --> Settings`{.interpreted-text
role="menuselection"}.

![View of the Settings page in the Odoo Email Marketing application.](email_marketing/settings-page.png){.align-center}

On this `Settings`{.interpreted-text role="guilabel"} page, there are
three features available. The features are:
`Mailing Campaigns`{.interpreted-text role="guilabel"},
`Blacklist Option when Unsubscribing`{.interpreted-text
role="guilabel"}, and `Dedicated Server`{.interpreted-text
role="guilabel"}.

- `Mailing Campaigns`{.interpreted-text role="guilabel"}: enables the
  option to manage mass mailing campaigns.
- `Blacklist Option when Unsubscribing`{.interpreted-text
  role="guilabel"}: allows recipients to blacklist themselves from
  future mailings during the unsubscribing process.
- `Dedicated Server`{.interpreted-text role="guilabel"}: provides the
  option to utilize a separate, dedicated server for mailings. When
  enabled, Odoo reveals a new field (and link), in which the specific
  server configurations must be entered, in order for it to connect
  properly to Odoo.

## Create an email

To create an email, open the `Email Marketing`{.interpreted-text
role="menuselection"} application, and click the
`Create`{.interpreted-text role="guilabel"} button in the upper-left
corner.

Clicking `Create`{.interpreted-text role="guilabel"} reveals a blank
email detail form.

![View of a blank email detail form in Odoo Email Marketing application.](email_marketing/blank-email-detail-form.png){.align-center}

First, enter a `Subject`{.interpreted-text role="guilabel"} to the
email. The `Subject`{.interpreted-text role="guilabel"} is visible in
the recipients\' inbox, allowing them to get quickly see what the
message is about.

:::: note
::: title
Note
:::

The `Subject`{.interpreted-text role="guilabel"} field is mandatory. An
email can not be sent without a `Subject`{.interpreted-text
role="guilabel"}.
::::

:::: tip
::: title
Tip
:::

The `☺ (smiley face)`{.interpreted-text role="guilabel"} icon at the end
of the `Subject`{.interpreted-text role="guilabel"} field (and
`Preview Text`{.interpreted-text role="guilabel"} field) represents
emojis. Click that `☺ (smiley face)`{.interpreted-text role="guilabel"}
icon to reveal a menu of emojis that can be used in either field.
::::

Next, there is the option to enter some `Preview Text`{.interpreted-text
role="guilabel"}. This text is a catchy preview sentence that encourages
recipients to open the message. In most inboxes, this is displayed next
to the subject.

:::: tip
::: title
Tip
:::

Keep the `Preview Text`{.interpreted-text role="guilabel"} empty to show
the first characters of the email content, instead.
::::

### Recipients

After that, it\'s time to choose the recipients of this email, which can
be completed in the `Recipients`{.interpreted-text role="guilabel"}
field.

![View of recipients drop-down menu in the Odoo Email Marketing application.](email_marketing/recipients-dropdown.png){.align-center}

The default option is `Mailing List`{.interpreted-text role="guilabel"}.
If `Mailing List`{.interpreted-text role="guilabel"} option is selected,
a specific `Mailing List`{.interpreted-text role="guilabel"} needs to be
chosen from the adjacent `Select mailing
lists`{.interpreted-text role="guilabel"} field drop-down menu.

Then, Odoo will only send this email to contacts on that specific
mailing list.

::: seealso
`/applications/marketing/email_marketing/mailing_lists`{.interpreted-text
role="doc"}
:::

When the `Recipients`{.interpreted-text role="guilabel"} field is
clicked, a drop-down menu of other options is revealed. Each option
provides different ways Odoo can create a target audience for the email.

Those options (excluding the default `Mailing List`{.interpreted-text
role="guilabel"}) provide the option to create a more specified
recipient filter, in an equation-like format.

The `Recipients`{.interpreted-text role="guilabel"} field options are as
follows:

- `Applicant`{.interpreted-text role="guilabel"}: filter focuses on
  specific job applicants in the database.
- `Contact`{.interpreted-text role="guilabel"}: filter focuses on
  specific contacts in the database.
- `Event Registration`{.interpreted-text role="guilabel"}: filter
  focuses on people in the database who purchased event registrations.
- `Event Track`{.interpreted-text role="guilabel"}: filter focuses on
  people in the database who hosted a specific talk (track) at an event.
- `Lead/Opportunity`{.interpreted-text role="guilabel"}: filter focuses
  on leads or opportunities in the database.
- `Mailing Contact`{.interpreted-text role="guilabel"}: filter focuses
  on specific mailing contacts in the database.
- `Sales Order`{.interpreted-text role="guilabel"}: filter focuses on a
  specific sales orders in the database.

If the specified recipient fields don\'t automatically reveal
themselves, simply click the `Add Filter`{.interpreted-text
role="guilabel"} button beneath the `Recipients`{.interpreted-text
role="guilabel"} field, and Odoo reveals the necessary equation fields
to further drill down the target recipients for this mailing.

### Add a recipient filter

To add a more specified recipient filter, select any recipient option
(other than `Mailing
List`{.interpreted-text role="guilabel"}), and clicking
`Add Filter`{.interpreted-text role="guilabel"}, if needed, to reveal
three fields, formatted like an equation.

To reveal the sub-menu options, click each field, and make the desired
selections, until the preferred configuration has been achieved. The
number of `Records`{.interpreted-text role="guilabel"} that match the
rule(s) are indicated to the right of the `Recipients`{.interpreted-text
role="guilabel"} field, in green.

![View of how recipient filters can be customized in Odoo Email Marketing.](email_marketing/add-filter-button.png){.align-center}

:::: note
::: title
Note
:::

Some sub-menu options in the first rule field allow for a second choice
to provide even more specificity.
::::

To the right of each rule, are `× (Delete node)`{.interpreted-text
role="guilabel"}, `＋ (Add node)`{.interpreted-text role="guilabel"},
and `⋯ (Add branch)`{.interpreted-text role="guilabel"} icons.

The `× (Delete node)`{.interpreted-text role="guilabel"} icon deletes a
specific node (line) of the rule. The `＋
(Add node)`{.interpreted-text role="guilabel"} icon adds a node (line)
to the rule. And, the `⋯ (Add branch)`{.interpreted-text
role="guilabel"} icon adds a branch to the node. A branch means two
additional, indented sub-nodes are added to the rule, providing even
more specificity to the line above it.

### Mail body tab

At the bottom of the email form are two tabs:
`Mail Body`{.interpreted-text role="guilabel"} and
`Settings`{.interpreted-text role="guilabel"}. Let\'s focus on
`Mail Body`{.interpreted-text role="guilabel"} tab first.

In the `Mail Body`{.interpreted-text role="guilabel"} tab, there are a
number of pre-configured message templates to choose from. Select the
desired template, and modify every element of its design details with
Odoo\'s drag-and-drop building blocks, located on the right sidebar.
Each building block provides unique features and professional design
elements.

![View of the building blocks used to create mailings in Odoo Email Marketing application.](email_marketing/mail-blocks.png){.align-center}

:::: tip
::: title
Tip
:::

To build an email from scratch, select the
`Plain Text`{.interpreted-text role="guilabel"} template, and Odoo
provides a blank email canvas, which can be customized in a number of
ways - either by using the front-end rich text editor that accepts slash
(`/`{.interpreted-text role="guilabel"}) commands, or with the XML code
editor when
`Developer Mode (debug mode) <developer-mode>`{.interpreted-text
role="ref"} is engaged, and the `</>`{.interpreted-text role="guilabel"}
icon is clicked.
::::

### Settings tab

To the right of the `Mail Body`{.interpreted-text role="guilabel"} tab
is the `Settings`{.interpreted-text role="guilabel"} tab.

:::: note
::: title
Note
:::

The options available in the `Settings`{.interpreted-text
role="guilabel"} tab will be different, depending on if the
`Mailing Campaigns`{.interpreted-text role="guilabel"} feature is
activated in the `Settings`{.interpreted-text role="guilabel"} page of
the `Email Marketing`{.interpreted-text role="menuselection"}
application (`Email Marketing --> Configuration
--> Settings`{.interpreted-text role="menuselection"}).
::::

Without the `Mailing Campaigns`{.interpreted-text role="guilabel"}
feature activated, the `Settings`{.interpreted-text role="guilabel"} tab
on the email detail form looks like this:

![View of settings tab in Odoo Email Marketing app, without settings activated.](email_marketing/settings-without-features.png){.align-center}

- `Responsible`{.interpreted-text role="guilabel"}: choose an employee
  (in the database) to be responsible for this particular email.
- `Send From`{.interpreted-text role="guilabel"}: designate an email
  alias that\'ll display as the sender of this particular email.
- `Reply To`{.interpreted-text role="guilabel"}: designate an email
  alias to whom all the replies to this particular email will be sent.
- `Attachments`{.interpreted-text role="guilabel"}: if any specific
  documents are required (or helpful) for this event invite, they can be
  sent along with this email, by clicking
  `ATTACH A FILE`{.interpreted-text role="guilabel"}, and adding the
  appropriate document(s).

When the `Mailing Campaigns`{.interpreted-text role="guilabel"} feature
*is* activated, additional `Marketing`{.interpreted-text
role="guilabel"} options appear in the `Settings`{.interpreted-text
role="guilabel"} tab, which look like this:

![View of settings tab in Odoo Email Marketing when settings are activated.](email_marketing/settings-tab-with-settings.png){.align-center}

The additional features are: `Mailing Campaign`{.interpreted-text
role="guilabel"}, `Allow A/B Testing`{.interpreted-text
role="guilabel"}, and `A/B Testing percentage`{.interpreted-text
role="guilabel"}.

## Mailing campaigns

The `Mailing Campaign`{.interpreted-text role="guilabel"} field provides
the option to add this particular email to a previously-made email
campaign in the database. Click the empty field to reveal a drop-down
menu containing all previously-made mailing campaigns in the database.

![View of a mailing campaign drop-down menu in Odoo Email Marketing application.](email_marketing/mailing-campaign-dropdown.png){.align-center}

If the desired campaign isn\'t available in the initial drop-down menu,
select `Search
More`{.interpreted-text role="guilabel"} to reveal a complete list of
all mailing campaigns in the database. Or, type the name of the desired
mailing campaign in the `Mailing Campaign`{.interpreted-text
role="guilabel"} field, until Odoo reveals the desired campaign in the
drop-down menu. Then, select the desired campaign.

### Create new mailing campaign (from Settings tab)

To create a new campaign from this `Mailing Campaign`{.interpreted-text
role="guilabel"} field, start typing the name of this new campaign, and
select `Create [Campaign Name]`{.interpreted-text role="guilabel"} or
`Create and Edit...`{.interpreted-text role="guilabel"}.

Click `Create`{.interpreted-text role="guilabel"} to add this new
mailing campaign to the database, and modify its settings in the future.
And click `Create and Edit...`{.interpreted-text role="guilabel"} to add
this new mailing campaign to the database, and Odoo reveals a pop-up
window.

![View of the email mailing campaign pop-up window in Odoo Email Marketing application.](email_marketing/mailing-campaign-popup.png){.align-center}

Here, the new mailing campaign can be further customized. Adjust the
`Campaign Name`{.interpreted-text role="guilabel"}, assign a
`Responsible`{.interpreted-text role="guilabel"}, and add
`Tags`{.interpreted-text role="guilabel"}.

The top row of the `Create: Mailing Campaign`{.interpreted-text
role="guilabel"} pop-up window is filled with analytical smart buttons.
Each of which displays various metrics related to the campaign. When
clicked, Odoo reveals a separate, more detailed page with even more
in-depth statistics.

The option to instantly a new communication from this pop-up window is
available in the upper-left corner. The adjustable status bar is located
in the upper-right.

When all modifications are ready to be finalized, click
`Save`{.interpreted-text role="guilabel"}. To delete the entire
campaign, click `Discard`{.interpreted-text role="guilabel"}.

### Create new mailing campaign (from Campaigns page)

When the `Mailing Campaigns`{.interpreted-text role="guilabel"} feature
is activated, a new `Campaigns`{.interpreted-text role="guilabel"}
option appears in the header of the *Email Marketing* application.
Campaigns can also be created on this `Campaigns`{.interpreted-text
role="guilabel"} page in the *Email Marketing* app.

To do that, navigate to
`Email Marketing app --> Campaigns --> Create`{.interpreted-text
role="menuselection"}. When that\'s clicked, a pop-up window appears, in
which the `Campaign Name`{.interpreted-text role="guilabel"},
`Responsible`{.interpreted-text role="guilabel"}, and
`Tags`{.interpreted-text role="guilabel"} can be added directly on the
`Campaigns`{.interpreted-text role="guilabel"} dashboard.

![View of the campaign pop-up window in Odoo Email Marketing.](email_marketing/campaigns-page-popup.png){.align-center}

Click `Add`{.interpreted-text role="guilabel"} to add the campaign to
the database, and freely edit it later on. Or, click
`Edit`{.interpreted-text role="guilabel"} and Odoo reveals the campaign
template form on a separate page, providing the opportunity to further
edit the campaign, send communications related to the campaign, and
analyze various metrics related to the campaign, via the smart buttons
at the top of the form.

## A/B testing

Back in the `Settings`{.interpreted-text role="guilabel"} tab of the
mailing, if the `Allow A/B Testing`{.interpreted-text role="guilabel"}
box is checked, recipients are only be mailed to once. This allows
different mailings to be sent to randomly selected recipients. This
tests the overall effectiveness of the mailing, and eliminates the need
for duplicate messages.

The `A/B Testing percentage`{.interpreted-text role="guilabel"} field
represents the percentage of contacts in the database that this message
will be mailed to, as a part of the `A/B Testing`{.interpreted-text
role="guilabel"}. Enter a number between [1-100]{.title-ref}. The
recipients are randomly chosen.

## Send, schedule, or test

After finalizing the mailing, Odoo provides the following options in the
upper-left corner of the email template page. Those options are:
`Send`{.interpreted-text role="guilabel"}, `Schedule`{.interpreted-text
role="guilabel"}, and `Test`{.interpreted-text role="guilabel"}.

While in `Edit`{.interpreted-text role="guilabel"} mode, there are also
buttons to `Save`{.interpreted-text role="guilabel"} or
`Discard`{.interpreted-text role="guilabel"} the mailing, as well.

- `Send`{.interpreted-text role="guilabel"} - Click to have Odoo send
  the email to the desired recipients. When Odoo has sent the mailing,
  the status changes to *Sent*.
- `Schedule`{.interpreted-text role="guilabel"} - Click to reveal a
  pop-up window, in which a future date-time is chosen. Odoo sends the
  mailing to the desired recipients at that specified date-time. When a
  date-time is chosen, the status of the mailing changes to *In Queue*.
- `Test`{.interpreted-text role="guilabel"} - Click to reveal a pop-up
  window, in which Odoo allows a sample email to be sent for testing
  purposes. Enter the desired recipient\'s email address in the
  `Recipients`{.interpreted-text role="guilabel"} field, and click
  `Send Sample Mail`{.interpreted-text role="guilabel"}.
- `Save`{.interpreted-text role="guilabel"} - Click to save the mailing
  as a draft, which can be edited (and sent) at a later date. When
  clicked, the status of the mailing stays as `Draft`{.interpreted-text
  role="guilabel"}.
- `Discard`{.interpreted-text role="guilabel"} - Click to discard any
  changes that have been made since the last save.

:::: tip
::: title
Tip
:::

When `Save`{.interpreted-text role="guilabel"} or
`Discard`{.interpreted-text role="guilabel"} is selected (while in
`Edit`{.interpreted-text role="guilabel"} mode), those options are
replaced with an `Edit`{.interpreted-text role="guilabel"} button and a
`Create`{.interpreted-text role="guilabel"} button. Click
`Edit`{.interpreted-text role="guilabel"} to re-enter
`Edit`{.interpreted-text role="guilabel"} mode. Click
`Create`{.interpreted-text role="guilabel"} to start creating a new
mailing.
::::

:::: note
::: title
Note
:::

By default, there\'s a daily limit applied for **all emails** sent
throughout *all* applications. So, if there are remaining emails to be
sent after a limit has been reached, those mailings *will not* be sent
automatically the next day. The sending needs to be forced, by opening
the email and clicking `Retry`{.interpreted-text role="guilabel"}.
::::

::: {.toctree titlesonly=""}
email_marketing/mailing_lists email_marketing/unsubscriptions
email_marketing/analyze_metrics
:::




--- SOURCE: marketing/events/event_booths.md ---

# Event booths

Create event booths, sell their availability, and manage reservations
with the Odoo **Events** application.

## Configuration

To create, sell, and manage booths for events, the *Booth Management*
feature **must** be activated.

Navigate to
`Events app --> Configuration --> Settings`{.interpreted-text
role="menuselection"}, and in the `Events`{.interpreted-text
role="guilabel"} section, tick the `Booth Management`{.interpreted-text
role="guilabel"} checkbox. Then, click `Save`{.interpreted-text
role="guilabel"}.

![The Booth Management setting in the Odoo Events
application.](event_booths/booth-management-setting.png)

:::: important
::: title
Important
:::

When the `Booth Management`{.interpreted-text role="guilabel"} setting
is activated, a new *Product Type* becomes available on all product
forms: *Event Booth*.

Every created booth **must** be assigned a *Booth Category* on its
respective booth form, and every booth category **must** have an *Event
Booth* product assigned to it.
::::

## Booth categories

With the *Booth Management* setting activated in the **Events** app, the
*Booth Categories* option appears in the
`Configuration`{.interpreted-text role="guilabel"} menu.

To access the `Booth Category`{.interpreted-text role="guilabel"}
dashboard, go to `Events app -->
Configuration --> Booth Categories`{.interpreted-text
role="menuselection"}, which reveals a list of all created booth
categories.

![The Booth Category page in the Odoo Events application.](event_booths/booth-category-page.png){.align-center}

On the `Booth Category`{.interpreted-text role="guilabel"} page, the
following information for each booth category is listed:

- `Name`{.interpreted-text role="guilabel"}: the name of the booth
  category.
- `Create Sponsor`{.interpreted-text role="guilabel"}: If ticked,
  booking this booth category creates a sponsor for the user.
- `Product`{.interpreted-text role="guilabel"}: the *Event Booth*
  product associated with that specific booth category.
- `Price`{.interpreted-text role="guilabel"}: the price of a booth in
  that booth category.

When the `oi-settings-adjust`{.interpreted-text role="icon"}
`(settings)`{.interpreted-text role="guilabel"} icon, located to the
far-right of the column titles, is clicked, a drop-down menu of
additional column options appears. From the resulting drop-down menu,
tick the checkbox beside `Sponsor Level`{.interpreted-text
role="guilabel"} and/or `Sponsor Type`{.interpreted-text
role="guilabel"} to reveal those columns on the
`Booth Category`{.interpreted-text role="guilabel"} page.

To edit an existing booth category, select it from the list, and make
any desired modifications.

### Create booth category

To create a booth category from the `Booth Category`{.interpreted-text
role="guilabel"} page, click the `New`{.interpreted-text
role="guilabel"} button in the upper-left corner to reveal a blank booth
category form.

![A typical booth category form in the Odoo Events application.](event_booths/booth-category-form.png){.align-center}

Enter a name for the booth category in the top
`Booth Category`{.interpreted-text role="guilabel"} field. This is a
**required** field.

To add a corresponding image to the booth category (e.g. a sample photo
of the booth), click the `fa-pencil`{.interpreted-text role="icon"}
`(pencil)`{.interpreted-text role="guilabel"} icon that appears when the
cursor hovers over the camera placeholder in the upper-right corner of
the booth category form. Then, upload the desired image to the booth
category form, if needed.

In the `Booth Details`{.interpreted-text role="guilabel"} section, users
**must** assign a `Product`{.interpreted-text role="guilabel"} to the
category, and it **must** have *Event Booth* set as the *Product Type*
on the product form.

Regardless of the listed price on the *Event Booth* product chosen, a
custom `Price`{.interpreted-text role="guilabel"} can be applied for
this booth category in that field.

In the `Sponsorship`{.interpreted-text role="guilabel"} section, tick
the `Create Sponsor`{.interpreted-text role="guilabel"} checkbox option,
if the user should be created as an official *Sponsor* of the event,
whenever a booth belonging to this category is booked.

When the `Create Sponsor`{.interpreted-text role="guilabel"} checkbox is
ticked, two additional fields appear beneath it:
`Sponsor Level`{.interpreted-text role="guilabel"} and
`Sponsor Type`{.interpreted-text role="guilabel"}.

:::: note
::: title
Note
:::

`Sponsor Level`{.interpreted-text role="guilabel"} and
`Sponsor Type`{.interpreted-text role="guilabel"} establish different
distinctions of sponsors.

For example, if a sponsor has been attached to a company for multiple
years, they would be granted a higher level (e.g. *Gold* level), which
provides them with immediate credibility and status. Whereas,
conversely, a relatively new sponsor would be granted a lower level
(e.g. *Bronze* level), which coincides with its own credibility and
status.
::::

Select a desired level of sponsorship from the
`Sponsor Level`{.interpreted-text role="guilabel"} drop-down field.

:::: tip
::: title
Tip
:::

To modify any existing `Sponsor Level`{.interpreted-text
role="guilabel"}, select it from the drop-down field, then click the
`fa-arrow-right`{.interpreted-text role="icon"}
`(right arrow)`{.interpreted-text role="guilabel"} that appears at the
end of the line. Doing so opens a separate page, wherein the
`Sponsor Level`{.interpreted-text role="guilabel"} name and
`Ribbon Style`{.interpreted-text role="guilabel"} can be changed, if
necessary.
::::

Users can also create a new `Sponsor Level`{.interpreted-text
role="guilabel"}, by typing in the name of the new level, and clicking
`Create and edit...`{.interpreted-text role="guilabel"} from the
resulting drop-down menu.

Doing so reveals a `Create Sponsor Level`{.interpreted-text
role="guilabel"} pop-up window.

![The Create Sponsor Level pop-up window that appears in the Odoo Events application.](event_booths/create-sponsor-level-popup.png){.align-center}

:::: note
::: title
Note
:::

Clicking `Create`{.interpreted-text role="guilabel"} from the resulting
drop-down menu in this instance, creates the sponsor level, but does
**not** immediately prompt the user to further configure it, via a
`Create Sponsor Level`{.interpreted-text role="guilabel"} pop-up window.
::::

From the `Create Sponsor Level`{.interpreted-text role="guilabel"}
pop-up window, confirm the newly-created
`Sponsor Level`{.interpreted-text role="guilabel"}, and decide what kind
of `Ribbon Style`{.interpreted-text role="guilabel"} should be applied,
if any.

The `Ribbon Style`{.interpreted-text role="guilabel"} options available
in that drop-down field are: `No Ribbon`{.interpreted-text
role="guilabel"}, `Gold`{.interpreted-text role="guilabel"},
`Silver`{.interpreted-text role="guilabel"}, and
`Bronze`{.interpreted-text role="guilabel"}.

If one is selected, that `Ribbon Style`{.interpreted-text
role="guilabel"} appears with the sponsor\'s name on the event website.

In the `Sponsor Type`{.interpreted-text role="guilabel"} field, choose
one of the following options from the drop-down menu:
`Footer Logo Only`{.interpreted-text role="guilabel"},
`Exhibitor`{.interpreted-text role="guilabel"}, or
`Online Exhibitor`{.interpreted-text role="guilabel"}.

- `Footer Logo Only`{.interpreted-text role="guilabel"}: the sponsor is
  only featured on the footer of the event website.
- `Exhibitor`{.interpreted-text role="guilabel"}: the sponsor is
  scheduled to be an exhibitor at the event.
- `Online Exhibitor`{.interpreted-text role="guilabel"}: the sponsor is
  scheduled to be an online exhibitor for a virtual event.

On the booth category form, beneath those sections
(`Booth Details`{.interpreted-text role="guilabel"} and
`Sponsorship`{.interpreted-text role="guilabel"}), there is the
`Description`{.interpreted-text role="guilabel"} tab. In this tab, enter
any vital information related to the booth category that would be
important for any potential booth-buyer to know about (e.g., the square
footage, available amenities, size of display screen, etc.).

## Add booth to an event

To add a booth to an event, navigate to an existing event form, via
`Events
app --> Events`{.interpreted-text role="menuselection"}, and select the
desired event from the `Events`{.interpreted-text role="guilabel"}
dashboard. Or, click `New`{.interpreted-text role="guilabel"} to open a
blank event form.

From the event form, click the `Booths`{.interpreted-text
role="guilabel"} smart button at the top of the page to reveal the
`Booths`{.interpreted-text role="guilabel"} page for that event.

The `Booths`{.interpreted-text role="guilabel"} page is displayed in a
Kanban view, by default, with two different stages:
`Available`{.interpreted-text role="guilabel"} and
`Unavailable`{.interpreted-text role="guilabel"}.

![Typical event booths page, accessible via the smart button on an event form.](event_booths/booths-page-event.png){.align-center}

:::: note
::: title
Note
:::

The `Booths`{.interpreted-text role="guilabel"} page of an event is also
viewable in a `oi-view-list`{.interpreted-text role="icon"}
`List`{.interpreted-text role="guilabel"} view,
`fa-area-chart`{.interpreted-text role="icon"} `Graph`{.interpreted-text
role="guilabel"} view, and `oi-view-pivot`{.interpreted-text
role="icon"} `Pivot`{.interpreted-text role="guilabel"} view. All of
which are accessible, via their icons, in the upper-right corner of the
`Booths`{.interpreted-text role="guilabel"} page.
::::

The booths present in the `Available`{.interpreted-text role="guilabel"}
stage are still available for purchase. The booths present in the
`Unavailable`{.interpreted-text role="guilabel"} stage have already been
purchased, and are no longer available.

To modify any existing booth, click the desired booth from the
`Booths`{.interpreted-text role="guilabel"} page, and make any necessary
changes from the booth form. Or, create a new one, by clicking the
`New`{.interpreted-text role="guilabel"} button in the upper-left corner
of the `Booths`{.interpreted-text role="guilabel"} page to reveal a
blank booth form.

### Booth form

The booth form in Odoo **Events** lets users customize and configure
event booths.

![Typical booth form in the Odoo Events application.](event_booths/booth-form.png){.align-center}

Start by typing in a `Name`{.interpreted-text role="guilabel"} for the
booth. This is a **required** field.

Then, apply a `Booth Category`{.interpreted-text role="guilabel"} to the
booth. This is a **required** field.

:::: tip
::: title
Tip
:::

A new `Booth Category`{.interpreted-text role="guilabel"} can be created
from this field, by typing in the name of the new category, and clicking
`Create and edit...`{.interpreted-text role="guilabel"} from the
resulting drop-down menu. Doing so reveals a
`Create Booth Category`{.interpreted-text role="guilabel"} pop-up
window, with all the standard fields found on a common booth category
form.

Clicking `Create`{.interpreted-text role="guilabel"} from the resulting
drop-down menu that appears after typing in a new name creates the
category, but does **not** reveal the
`Create Booth Category`{.interpreted-text role="guilabel"} pop-up
window. The category would have to be modified later, via the *Booth
Categories* page
(`Events app --> Configuration --> Booth Categories`{.interpreted-text
role="menuselection"}).
::::

Upon selecting a `Booth Category`{.interpreted-text role="guilabel"},
two additional, non-modifiable fields appear:
`Product`{.interpreted-text role="guilabel"} and
`Price`{.interpreted-text role="guilabel"}. Both fields represent their
respective selections for that specific booth category.

When a person purchases a booth rental through the event website, the
subsequent renter-related fields on the form auto-populate, based on the
information provided by the purchaser during the online transaction. The
booth also automatically changes its status from
`Available`{.interpreted-text role="guilabel"} to
`Unavailable`{.interpreted-text role="guilabel"}.

However, if the rental of a booth is conducted in any other way (e.g.,
in person, via sales order, etc.), the `Renter`{.interpreted-text
role="guilabel"}, `Renter Name`{.interpreted-text role="guilabel"},
`Renter Email`{.interpreted-text role="guilabel"}, `Renter
Phone`{.interpreted-text role="guilabel"}, and
`Renter Mobile`{.interpreted-text role="guilabel"} fields can be entered
manually.

The status of the booth (`Available`{.interpreted-text role="guilabel"}
or `Unavailable`{.interpreted-text role="guilabel"}) can also be changed
manually, either by clicking the appropriate status from the status bar
present on the booth form, or by dragging-and-dropping the desired booth
into the appropriate stage, via the *Booths* page, while in Kanban view.

## Sell event booths

With event booths configured on the event form, Odoo presents them on
the event website, via the *Get A Booth* event subheader link.

To access the *Get A Booth* page on the event website, open the
`Events app`{.interpreted-text role="menuselection"}, and select the
desired event from the `Events`{.interpreted-text role="guilabel"}
dashboard. From the event form, click the
`Go to Website`{.interpreted-text role="guilabel"} smart button to be
taken to the Odoo-built event website.

If the event subheader menu (with the `Get A Booth`{.interpreted-text
role="guilabel"} option) is *not* showing up on the event website, there
are two ways to make it appear.

While on the event website, enter the edit mode by clicking the
`Edit`{.interpreted-text role="guilabel"} button in the upper-right
corner. Then, click into the `Customize`{.interpreted-text
role="guilabel"} tab of the resulting sidebar of web design tools.

In the `Customize`{.interpreted-text role="guilabel"} tab, click the
toggle switch for `Sub-Menu (Specific)`{.interpreted-text
role="guilabel"}, and click `Save`{.interpreted-text role="guilabel"}.
Doing so reveals the event subheader menu with various options.

Alternatively, enter
`Debug mode <../../general/developer_mode>`{.interpreted-text
role="doc"}, and open the specific event form in the **Events**
application.

On the event form, with *Debug mode* on, an array of subheader menu
options appears. Tick the checkbox for
`Website Submenu`{.interpreted-text role="guilabel"}, in order for the
submenu to appear on the event website. Doing so also ticks every other
submenu-related checkbox automatically.

At this point, choose which options to keep on the event subheader menu.
In this case, make sure the `Booth Register`{.interpreted-text
role="guilabel"} checkbox is ticked.

On the event website, click the `Get A Booth`{.interpreted-text
role="guilabel"} event subheader menu option. Doing so reveals the
`Get A Booth`{.interpreted-text role="guilabel"} page, showcasing all
the configured event booths that were created.

![Typical Get A Booth page on the event website via the Odoo Events app.](event_booths/get-a-booth-page.png){.align-center}

From here, the visitor can select their desired booth option. Next, they
would click the `Book my Booths`{.interpreted-text role="guilabel"}
button, located at the bottom of the `Get A Booth`{.interpreted-text
role="guilabel"} page.

Doing so reveals a `Sponsor Details`{.interpreted-text role="guilabel"}
page, wherein they fill out either *Sponsor Details* or *Contact
Details*, depending on how the booth was configured on the event form.
The fields present on this form vary, depending on whether it is meant
for a basic contact or an event sponsor.

:::: note
::: title
Note
:::

If the selected booth has the *Create Sponsor* checkbox ticked, this
page reads as *Sponsor Details*.
::::

The information provided on this page is used to auto-populate the
renter-related information on the booth form.

Once the necessary information has been entered, the booth purchaser
then clicks the `Book
my Booths`{.interpreted-text role="guilabel"} button at the bottom of
the page, and completes the typical checkout process.

Upon successful payment confirmation, that selected booth automatically
moves to the *Unavailable* stage on the event-specific *Booths* page in
the **Events** application (accessible via the *Booths* smart button on
the event form).

Also, the provided *Sponsor* information (if applicable), and *Sales
Order* information, are accessible from the specific event form, via
their respective smart buttons that appear at the top of the form.

:::: note
::: title
Note
:::

Click the *Sponsors* smart button on an event form to view and modify
any information about the sponsor, if necessary.
::::




--- SOURCE: marketing/events/event_essentials.md ---

# Event essentials

Odoo Events provides event coordinators with an arsenal of planning,
communications, and reporting tools to create immersive and engaging
experiences for customers. Namely, staff can create and publish events
on their website, sell tickets online, scan tickets with Odoo barcode,
send out automated emails, and generate rich reporting data once the
event accepts registrations.

## Kanban concepts and organization

To get started, click on the `Events`{.interpreted-text role="guilabel"}
application on the home dashboard, which then leads to the kanban view
populated with a variety of pipeline stages. Key information is listed
on each event card, such as the date/time of the event, along with the
number of expected (and confirmed) attendees.

To create a new stage, click `Add a Column`{.interpreted-text
role="guilabel"} and provide a befitting title to reflect the purpose of
that stage.

To reorganize the stages, just drag-and-drop them until they are in the
correct order. Stages can also be "folded" in the kanban for a cleaner
presentation, via the `Settings`{.interpreted-text role="guilabel"} menu
to the right of each stage\'s title, which is represented by a gear
icon.

:::: note
::: title
Note
:::

The gear icon, by default, is hidden and will appear next to the
`+`{.interpreted-text role="guilabel"} icon when moused over.
::::

When clicked, a drop-down menu of settings will appear.

![Overview of events setting with the kanban view in Odoo Events.](event_essentials/events-dashboard.png){.align-center}

## Create a new event {#events/create-event}

To create an event, click `Create`{.interpreted-text role="guilabel"}
from the Events dashboard. Odoo will then direct the page to a blank
event template form.

From the event form, fill out the necessary fields, either by choosing
from existing data in the Odoo database or by creating and editing new
field data. Key information to enter for the event includes:

- `Event Name`{.interpreted-text role="guilabel"}: give the event a
  title.
- `Date`{.interpreted-text role="guilabel"}: when the event is scheduled
  to take place (expressed in your local timezone on the form view).
- `Display Timezone`{.interpreted-text role="guilabel"}: indicates the
  timezone in which the event dates/times will be displayed on the
  website.
- `Template`{.interpreted-text role="guilabel"}: choose from a pre-built
  event template or build a custom one and connect it here.
- `Tags`{.interpreted-text role="guilabel"}: add tags to indicate
  briefly what the event is for (e.g. [tradeshow]{.title-ref}). Tags
  help better organize event cards in the kanban and are useful when
  using search filters during reporting periods.
- `Organizer`{.interpreted-text role="guilabel"}: detail the
  organizer(s) for the event. This field is usually the company that
  owns the Odoo database, or a vendor.
- `Responsible`{.interpreted-text role="guilabel"}: name the point
  person who is responsible for organizing the event.
- `Website`{.interpreted-text role="guilabel"}: indicate which Odoo
  website(s) the event event should be published to.
- `Venue`{.interpreted-text role="guilabel"}: list the venue details
  here if it\'s a new record, or choose from an existing location.
- `Limit Registrations`{.interpreted-text role="guilabel"}: when
  enabled, this setting caps the attendee registrations to a specified
  amount
- `Autoconfirmation`{.interpreted-text role="guilabel"}: when enabled,
  this setting skips the confirmation request that gets sent by email to
  event registrants, and automatically confirms their registration.

Once the fields in the event form are set, move on to the
`Tickets`{.interpreted-text role="guilabel"} and
`Communication`{.interpreted-text role="guilabel"} tabs, and optionally
the `Questions`{.interpreted-text role="guilabel"} tab if registrations
should require additional information.

### Add and sell event tickets

Under the `Tickets`{.interpreted-text role="guilabel"} tab, add line
items for each type of ticket the event plans to offer. Here, determine
the ticket price, start/end dates for registrations, as well as the
maximum number of tickets that can be sold.

If selling tickets isn\'t necessary for the event, a simple
`Registration`{.interpreted-text role="guilabel"} button will be
displayed on the event\'s page by default.

![View of the ticket tab in Odoo Events.](event_essentials/events-tickets-tab.png){.align-center}

### Send automated emails, text, and social posts to event attendees

Under the `Communication`{.interpreted-text role="guilabel"} tab,
configure personalized email, SMS, or social post messages to keep in
touch with event attendees. For each communication, click
`Add a line`{.interpreted-text role="guilabel"} in the
`Communication`{.interpreted-text role="guilabel"} tab form, and then
choose (or create) a communications template using the drop-down menu
under the `Template`{.interpreted-text role="guilabel"} column.

Next, define the `Interval`{.interpreted-text role="guilabel"} and
`Unit`{.interpreted-text role="guilabel"} of time for how often the
communication should be sent; use these time fields to specify the
frequency of `Hours`{.interpreted-text role="guilabel"},
`Days`{.interpreted-text role="guilabel"}, `Weeks`{.interpreted-text
role="guilabel"}, or `Months`{.interpreted-text role="guilabel"}
communications should be sent. There is also the option to send
communications [Immediately]{.title-ref} after a specified
`Trigger`{.interpreted-text role="guilabel"} is activated.

In the last column, determine the `Trigger`{.interpreted-text
role="guilabel"} which controls how and when the communication is sent.
For this action, choose between: `Before the event`{.interpreted-text
role="guilabel"}, `After each
registration`{.interpreted-text role="guilabel"}, or
`After the event`{.interpreted-text role="guilabel"}.

![View of the communication tab in Odoo Events.](event_essentials/events-communication-tab.png){.align-center}

### Attach a questionnaire to event registrations

Implementing a questionnaire during event sign up is an effective way to
gauge the wants, needs, and interests of the event\'s attendees ahead of
time. Questionnaires also act as informative analytics tools for
reporting periods before (or after) events take place.

To create a questionnaire, from the `Events`{.interpreted-text
role="guilabel"} application, navigate to
`Configuration --> Settings`{.interpreted-text role="menuselection"} and
then enable the `Questions`{.interpreted-text role="guilabel"} setting.

With the setting enabled, questions and answers can now be added (and
recorded) under the the `Questions`{.interpreted-text role="guilabel"}
tab back on the event form. For each question, specify if it should only
be asked once with the `Ask once per order`{.interpreted-text
role="guilabel"} checkbox, or if the question requires a
`Mandatory Answer`{.interpreted-text role="guilabel"}, which will make
the question required for registration.

::: example
If the `Once per order`{.interpreted-text role="guilabel"} checkbox is
enabled, then a single registration for 3 event attendees will show the
questionnaire only once.
:::

There are two `Question Types`{.interpreted-text role="guilabel"} to
choose from: `Selection`{.interpreted-text role="guilabel"} and `Text
Input`{.interpreted-text role="guilabel"}. The
`Selection`{.interpreted-text role="guilabel"} type, allows attendees to
select an answer from pre-configured options, which are entered in the
`Answers`{.interpreted-text role="guilabel"} tab below. The
`Text Input`{.interpreted-text role="guilabel"} type allows attendees to
write in their own answer to the question in a text box.

![View of an event form, open the questions tab, and add a question.](event_essentials/events-questions-tab.png){.align-center}

### Log internal notes or add ticket instructions

In the `Notes`{.interpreted-text role="guilabel"} tab, there is the
option to add a `Note`{.interpreted-text role="guilabel"} and/or `Ticket
instructions`{.interpreted-text role="guilabel"}.

Under `Note`{.interpreted-text role="guilabel"}, internal notes can be
left (such as: to-do lists, contact information, etc.) for event staff
to reference. In the `Ticket instructions`{.interpreted-text
role="guilabel"} field, helpful information for staff and attendees can
be shared (like, directions to the venue, opening/closing times, etc.)

:::: tip
::: title
Tip
:::

Type [/]{.title-ref} in either text field (`Note`{.interpreted-text
role="guilabel"} or `Ticket instructions`{.interpreted-text
role="guilabel"}) to reveal a sub-menu of `Structure`{.interpreted-text
role="guilabel"} options. These options provide various formatting
options to ensure vital internal information is organized for event
staff to review.
::::

![View of the Notes tab in Odoo Events.](event_essentials/events-notes-tab.png){.align-center}

## Invite attendees to the event

To invite people to an event, click the `Invite`{.interpreted-text
role="guilabel"} button located in the top left corner of the event
form.

Inside the invite template form, are options to sent email or SMS
invites. Each message can be fully customized, and recipients can be
added.

Adding a `Subject`{.interpreted-text role="guilabel"} line for the
invite message is required, but the `Preview
Text`{.interpreted-text role="guilabel"} field is optional. The
`Preview Text`{.interpreted-text role="guilabel"} is a catchy preview
sentence meant to encourage recipients to open the email.

:::: note
::: title
Note
:::

In most cases, the `Preview Text`{.interpreted-text role="guilabel"} is
displayed next to the subject. Keep this field empty to ensure the first
characters of the email content appear, instead.
::::

### Select invitees and configure recipient filters

In the middle of the invitation form, find and click the
`Recipients`{.interpreted-text role="guilabel"} field, to reveal a
drop-down menu of recipient options. These choices represent where Odoo
will find the desired recipients\' information.

Once an option from this menu is selected (e.g.
`Applicant`{.interpreted-text role="guilabel"},
`Contact`{.interpreted-text role="guilabel"},
`Event Registration`{.interpreted-text role="guilabel"},
`Lead/Opportunity`{.interpreted-text role="guilabel"}, etc.), Odoo will
send the invitation to all recipients who match that initial rule.
Additional rules can be added to narrow down the target recipients, by
clicking `Add Filter`{.interpreted-text role="guilabel"}.

![View of the add filter button beneath the recipients field in Odoo Events.](event_essentials/add-filter-button.png){.align-center}

Clicking `Add Filter`{.interpreted-text role="guilabel"} reveals three
fields, formatted like an equation. To reveal the sub-menu options,
click each field, and make the desired selections, until the preferred
configuration has been acheived. The number of
`Records`{.interpreted-text role="guilabel"} that match the rule(s) are
indicated to the right of the `Recipients`{.interpreted-text
role="guilabel"} field, in green.

:::: note
::: title
Note
:::

Some sub-menu options in the first rule field allow for a second choice
to provide even more specificity.
::::

To the right of each rule, are `x`{.interpreted-text role="guilabel"},
`+`{.interpreted-text role="guilabel"}, and `...`{.interpreted-text
role="guilabel"} icons. The `x`{.interpreted-text role="guilabel"} icon
deletes a specific node (line) of the rule. The `+`{.interpreted-text
role="guilabel"} icon adds a node (line) to the rule. And, the
`...`{.interpreted-text role="guilabel"} icon adds a branch to the node.
A branch means two additional, indented sub-nodes are added to the rule,
providing even more specificity to the line above it.

### Build a custom event invite

In the `Mail Body`{.interpreted-text role="guilabel"} tab, there are a
number of pre-configured message templates to choose from. Select the
desired template, and modify every element of its design details with
Odoo\'s drag-and-drop web builder, located on the right sidebar.

![View of the drag and drop building blocks used to customize event invite emails.](event_essentials/event-email-builder-block.gif){.align-center}

:::: tip
::: title
Tip
:::

To build an email event invite from scratch, select the
`Plain Text`{.interpreted-text role="guilabel"} template, and Odoo will
provide a blank email canvas, which can be customized either by using
the frontend rich text editor that accepts slash ([/]{.title-ref})
commands, or the XML code editor when `developer
mode <developer-mode>`{.interpreted-text role="ref"} is engaged and the
`</>`{.interpreted-text role="guilabel"} icon is pressed.
::::

:::: note
::: title
Note
:::

The `Mail Body`{.interpreted-text role="guilabel"} tab (and template
options), are only available if the event invite
`Mailing Type`{.interpreted-text role="guilabel"} is designated as an
`Email`{.interpreted-text role="guilabel"}. If `SMS`{.interpreted-text
role="guilabel"} is the `Mailing Type`{.interpreted-text
role="guilabel"}, a `SMS Content`{.interpreted-text role="guilabel"} tab
(consisting of a blank text space), is available, instead.
::::

### Modify event invite settings

The options under the `Settings`{.interpreted-text role="guilabel"} tab
are different, depending on the specified
`Mailing Type`{.interpreted-text role="guilabel"}.

If the `Email`{.interpreted-text role="guilabel"} option is selected as
the `Mailing Type`{.interpreted-text role="guilabel"}, an employee can
be designated as the `Responsible`{.interpreted-text role="guilabel"},
meaning that person is the one responsible for this particular invite
message. `Send From`{.interpreted-text role="guilabel"} and
`Reply To`{.interpreted-text role="guilabel"} email aliases can be
designated here, as well.

Also, if any specific documents are required (or helpful) for this event
invite, they can be sent along with this email, by clicking
`ATTACH A FILE`{.interpreted-text role="guilabel"}, and adding the
appropriate document(s).

If the `SMS`{.interpreted-text role="guilabel"} option is selected as
the `Mailing Type`{.interpreted-text role="guilabel"}, a
`Responsible`{.interpreted-text role="guilabel"} can be designated, and
the option to `Include an opt-out link`{.interpreted-text
role="guilabel"} is available.

### Send event invitations to recipients

If the selected `Mailing Type`{.interpreted-text role="guilabel"} is
`Email`{.interpreted-text role="guilabel"}, there are three options to
send the invite: `Send`{.interpreted-text role="guilabel"},
`Schedule`{.interpreted-text role="guilabel"}, and
`Test`{.interpreted-text role="guilabel"}.

The `Send`{.interpreted-text role="guilabel"} option sends the invite
right away. The `Schedule`{.interpreted-text role="guilabel"} option
reveals a pop-up, in which a scheduled date/time can be selected for the
email to be sent. The `Test`{.interpreted-text role="guilabel"} option
reveals a `Test Mailing`{.interpreted-text role="guilabel"} pop-up,
where specific recipient email addresses can be entered for Odoo to send
them the current version of the mailing for review before officially
sending it out to prospective event attendees.

If the selected `Mailing Type`{.interpreted-text role="guilabel"} is
`SMS`{.interpreted-text role="guilabel"}, there are four options to send
the invite: `Put in Queue`{.interpreted-text role="guilabel"},
`Send Now`{.interpreted-text role="guilabel"},
`Schedule`{.interpreted-text role="guilabel"}, and
`Test`{.interpreted-text role="guilabel"}.

The `Put in Queue`{.interpreted-text role="guilabel"} option schedules
an SMS message to all recipients (that match the designated rules, if
any) in the near future. Clicking `Put in Queue`{.interpreted-text
role="guilabel"} reveals a pop-up, requiring confirmation. When
confirmed, a blue banner appears on the event invite template form,
indicating that the SMS will be sent later that day.

:::: note
::: title
Note
:::

The `Send Now`{.interpreted-text role="guilabel"},
`Schedule`{.interpreted-text role="guilabel"}, and
`Test`{.interpreted-text role="guilabel"} options all function the same
way for both `Mailing Type`{.interpreted-text role="guilabel"} options.
::::

## Publish events

Until an event is published, it will remain hidden from public view on
the website and registering for it will not be possible. To publish an
event, navigate to it either from the backend of Odoo through the
`Events`{.interpreted-text role="guilabel"} application, or access the
hidden event page through the frontend as either a priveliged user or
administrator.

If navigating from the backend, go to the event form, and click the
`Go to Website`{.interpreted-text role="guilabel"} smart button to reach
the event page on the website (on the frontend). If starting from the
frontend, simply navigate to the event page that needs to be published.

No matter the route, an event page can only be published from the
frontend. In the upper right corner of the event page on the website,
toggle the switch from the red `Unpublished`{.interpreted-text
role="guilabel"} status to the green `Published`{.interpreted-text
role="guilabel"} status. Doing so instantly makes the event page
accessible to the public on the website.

![View of a website page and the option to publish the event in Odoo Events.](event_essentials/events-frontend-publish.png){.align-center}




--- SOURCE: marketing/events/event_tracks.md ---

# Event tracks

In Odoo, *Tracks* is a term used for talks, lectures, demonstrations,
presentations, etc. that occur at an event.

With the **Events** application, create, schedule, and manage tracks for
any event.

There is also the option to allow attendees to propose talks (tracks)
for an event, which can then be approved or denied.

## Configuration

Navigate to
`Events app --> Configuration --> Settings`{.interpreted-text
role="menuselection"}, and tick the
`Schedule & Tracks`{.interpreted-text role="guilabel"} checkbox.

When that checkbox is ticked, two additional setting options appear:
`Live Broadcast`{.interpreted-text role="guilabel"} and
`Event Gamification`{.interpreted-text role="guilabel"}.

![The Schedule and Tracks setting in the Odoo Events app, along with corresponding options.](event_tracks/track-settings.png){.align-center}

The `Live Broadcast`{.interpreted-text role="guilabel"} option provides
the ability to air tracks online, through a YouTube integration.

The `Event Gamification`{.interpreted-text role="guilabel"} option
provides the ability to share a quiz with attendees once the track is
over.

:::: note
::: title
Note
:::

With the `Event Gamification`{.interpreted-text role="guilabel"} setting
enabled, an `Add Quiz`{.interpreted-text role="guilabel"} button appears
on track forms.
::::

Once all desired settings have been enabled, click
`Save`{.interpreted-text role="guilabel"}.

## Event Tracks page

To access, modify, and/or create tracks for an event, navigate to a
preconfigured event, or
`create a new one <events/create-event>`{.interpreted-text role="ref"}.

On the desired event form, click the `Tracks`{.interpreted-text
role="guilabel"} smart button at the top of the form.

:::: tip
::: title
Tip
:::

If the `Tracks`{.interpreted-text role="guilabel"} smart button is not
readily available, click the `More`{.interpreted-text role="guilabel"}
`fa-sort-desc`{.interpreted-text role="icon"} drop-down menu to reveal
hidden smart buttons. Then, click `Tracks`{.interpreted-text
role="guilabel"} from the resulting drop-down menu.
::::

Clicking the `Tracks`{.interpreted-text role="guilabel"} smart button
reveals the `Event Tracks`{.interpreted-text role="guilabel"} page, with
all the tracks (both scheduled and proposed) for the event, if there are
any.

![Typical event tracks page for an event in the Odoo Events application.](event_tracks/event-tracks-page.png){.align-center}

The tracks are presented in a default `oi-view-kanban`{.interpreted-text
role="icon"} `(Kanban)`{.interpreted-text role="guilabel"} view, but
there is the option to view these tracks in a
`oi-view-list`{.interpreted-text role="icon"} `(List)`{.interpreted-text
role="guilabel"}, `oi-view-cohort`{.interpreted-text role="icon"}
`(Gantt)`{.interpreted-text role="guilabel"} chart,
`fa-calendar-check-o`{.interpreted-text role="icon"}
`(Calendar)`{.interpreted-text role="guilabel"},
`fa-area-chart`{.interpreted-text role="icon"}
`(Graph)`{.interpreted-text role="guilabel"}, or
`fa-clock-o`{.interpreted-text role="icon"}
`(Activity)`{.interpreted-text role="guilabel"} view. All of which are
accessible in the upper-right corner.

In the default `oi-view-kanban`{.interpreted-text role="icon"}
`(Kanban)`{.interpreted-text role="guilabel"} view, the tracks are
categorized into different stages. The default stages are:
`Proposal`{.interpreted-text role="guilabel"},
`Confirmed`{.interpreted-text role="guilabel"},
`Announced`{.interpreted-text role="guilabel"},
`Published`{.interpreted-text role="guilabel"},
`Refused`{.interpreted-text role="guilabel"} (collapsed stage), and
`Cancelled`{.interpreted-text role="guilabel"} (collapsed stage). All of
which can be edited, if needed.

:::: tip
::: title
Tip
:::

To edit a stage, hover over the stage name, click the
`fa-cog`{.interpreted-text role="icon"} `(gear)`{.interpreted-text
role="guilabel"} icon, and select `Edit Stage`{.interpreted-text
role="guilabel"} from the resulting drop-down menu.
::::

Clicking into a track from the `Event Tracks`{.interpreted-text
role="guilabel"} page reveals the track form for that particular track.

### Create event track

From the `Event Tracks`{.interpreted-text role="guilabel"} page, click
`New`{.interpreted-text role="guilabel"} in the upper-left corner to
reveal a blank event track form to create an event track.

![Typical event track form in the Odoo Events application.](event_tracks/event-track-form.png){.align-center}

Start by giving the track a `Title`{.interpreted-text role="guilabel"}.
This field is **required** by Odoo.

If desired, add an accompanying image to the track, via the
`fa-pencil`{.interpreted-text role="icon"} `(pencil)`{.interpreted-text
role="guilabel"} icon that appears when the cursor hovers over the
`fa-camera`{.interpreted-text role="icon"} `(camera)`{.interpreted-text
role="guilabel"} icon. When clicked, upload the desired image for the
track. This image appears on the event website, on this specific
track\'s page.

Enter a `Track Date`{.interpreted-text role="guilabel"} and time for the
track, and designate a `Location`{.interpreted-text role="guilabel"}
where the talk is planning to be held.

:::: tip
::: title
Tip
:::

To access a complete list of locations for event tracks, which can be
modified at any time, navigate to
`Events app --> Configuration --> Track Locations`{.interpreted-text
role="menuselection"}.
::::

Add a `Duration`{.interpreted-text role="guilabel"} to the track (in
hours).

If the *Live Broadcast* setting is enabled, the option to add a
corresponding link in the `YouTube Video Link`{.interpreted-text
role="guilabel"} field is available.

If the `Always Wishlisted`{.interpreted-text role="guilabel"} checkbox
is ticked, the talk is automatically set as a favorite for each
registered event attendee.

Assign someone to be in charge of managing this track in the
`Responsible`{.interpreted-text role="guilabel"} field. By default, the
person who created the track is assigned.

Ensure the track is applied to the correct event in the
`Event`{.interpreted-text role="guilabel"} field. By default, this field
is auto-populated with the event related to the *Event Tracks* page the
track was created from.

Choose to add existing `Tags`{.interpreted-text role="guilabel"}, or
create new ones, to further organize the track. These tags, and their
corresponding categories, are utilized on the event specific website.

Beneath that general information section, there are three tabs: `Speaker
<events/track-speaker-tab>`{.interpreted-text role="ref"},
`Description <events/track-description-tab>`{.interpreted-text
role="ref"}, and
`Interactivity <events/track-interactivity-tab>`{.interpreted-text
role="ref"}.

#### Speaker tab {#events/track-speaker-tab}

The `Speaker`{.interpreted-text role="guilabel"} tab on an event track
form has fields related to the specific speaker/host of the track.

![The Speaker tab on an event track form in the Odoo Events application.](event_tracks/speaker-tab.png){.align-center}

##### Contact details

In the `Contact Details`{.interpreted-text role="guilabel"} section, use
the `Contact`{.interpreted-text role="guilabel"} drop-down field to
select an existing contact from the database as the main point of
contact for the talk.

If this contact is not in the database, type in the name of the contact,
and click `Create
[contact name]`{.interpreted-text role="guilabel"}, to create and edit
the contact form later, or click `Create and edit...`{.interpreted-text
role="guilabel"} to be taken to that new contact\'s contact form, where
the rest of their pertinent information can be entered.

The `Contact Email`{.interpreted-text role="guilabel"} and
`Contact Phone`{.interpreted-text role="guilabel"} fields are populated
with the information found on that chosen contact\'s contact form. These
fields are not modifiable once the `Contact`{.interpreted-text
role="guilabel"} is selected.

##### Speaker bio

In the `Speaker Bio`{.interpreted-text role="guilabel"} section, enter
information related to the speaker. Portions of this section may
auto-populate, based on the `Contact`{.interpreted-text role="guilabel"}
selected in the `Contact
Details`{.interpreted-text role="guilabel"} section. If not, enter
information in the necessary fields.

:::: note
::: title
Note
:::

This information appears on the event website, on the specific track
page.
::::

Enter a `Name`{.interpreted-text role="guilabel"},
`Email`{.interpreted-text role="guilabel"}, and
`Phone`{.interpreted-text role="guilabel"} number for the speaker.

If desired, add an image to appear alongside the speaker biography on
the event website, via the `fa-pencil`{.interpreted-text role="icon"}
`(pencil)`{.interpreted-text role="guilabel"} icon that appears when the
cursor hovers over the `fa-camera`{.interpreted-text role="icon"}
`(camera)`{.interpreted-text role="guilabel"} icon. When clicked, upload
the desired image for the speaker.

Enter a `Job Position`{.interpreted-text role="guilabel"} for the
designated speaker, and the `Company Name`{.interpreted-text
role="guilabel"} associated with the speaker.

In the `Biography`{.interpreted-text role="guilabel"} field, enter a
custom biography with any speaker-related information.

#### Description tab {#events/track-description-tab}

The `Description`{.interpreted-text role="guilabel"} tab of an event
track form is a blank text field, in which a description of the track
can be entered. The information entered here appears on the specific
track page on the event website.

#### Interactivity tab {#events/track-interactivity-tab}

The `Interactivity`{.interpreted-text role="guilabel"} tab on an event
track form only has a single option at first:
`Magic Button`{.interpreted-text role="guilabel"}.

![The Interactivity tab on an event track form in the Odoo Events application.](event_tracks/interactivity-tab.png){.align-center}

When the `Magic Button`{.interpreted-text role="guilabel"} checkbox is
ticked, Odoo displays a *call-to-action* button to attendees on the
track sidebar, while the track is taking place.

With that checkbox ticked, three more options appear, all of which are
related to the `Magic Button`{.interpreted-text role="guilabel"}:

- `Button Title`{.interpreted-text role="guilabel"}: Enter a title to
  appear on the button for attendees.
- `Button Target URL`{.interpreted-text role="guilabel"}: Enter a URL
  that leads attendees to a specific page.
- `Button appears`{.interpreted-text role="guilabel"}: Enter a number in
  the field, and the button appears that number of
  `minutes after track starts`{.interpreted-text role="guilabel"}.

:::: note
::: title
Note
:::

The magic button **only** appears if there is more than one published
track.
::::

#### Add Quiz button {#events/track-add-quiz}

The `Add Quiz`{.interpreted-text role="guilabel"} button **only**
appears on event track forms if the *Event Gamification* setting is
enabled.

To add a quiz to the event track, click the `Add Quiz`{.interpreted-text
role="guilabel"} button to reveal a separate page, where an event track
quiz can be configured.

![The Add Quiz page in the Odoo Events application for an event track.](event_tracks/add-quiz.png){.align-center}

Enter a title for the quiz in the blank field at the top of the page.

If participants can try the quiz multiple times, tick the
`Allow multiple tries`{.interpreted-text role="guilabel"} checkbox.

The `Event`{.interpreted-text role="guilabel"} and
`Event Track`{.interpreted-text role="guilabel"} fields are
non-modifiable, and show the corresponding event and track the quiz is
associated with.

To add questions to the quiz, click `Add a line`{.interpreted-text
role="guilabel"} beneath the `Question`{.interpreted-text
role="guilabel"} column to reveal a `Create Questions`{.interpreted-text
role="guilabel"} pop-up window.

![The Create Questions pop-up window on an event-specific track quiz in the Odoo Events app.](event_tracks/create-questions.png){.align-center}

:::: note
::: title
Note
:::

**All** track quiz questions are multiple choice.
::::

From the pop-up window, enter the question in the blank field at the
top. Then, click `Add
a line`{.interpreted-text role="guilabel"}, and a new line appears, in
which an answer option can be entered.

Once an answer option has been entered, designate whether it is the
`Correct`{.interpreted-text role="guilabel"} response, by ticking the
checkbox in the `Correct`{.interpreted-text role="guilabel"} column. If
it is incorrect, leave the checkbox unticked.

There is also the option to add a point value to each answer option in
the `Points`{.interpreted-text role="guilabel"} column.

If there are any additional comments that should accompany an answer
option, type them into the `Extra Comment`{.interpreted-text
role="guilabel"} field.

:::: note
::: title
Note
:::

The `Points`{.interpreted-text role="guilabel"} and
`Extra Comment`{.interpreted-text role="guilabel"} fields are optional.
::::

Repeat this process for all answer options.

To remove an answer option, click the `fa-trash-o`{.interpreted-text
role="icon"} `(trash can)`{.interpreted-text role="guilabel"} icon on
the far-right of the desired answer line.

Once all answer options are complete, click
`Save & Close`{.interpreted-text role="guilabel"} to save the question,
close the pop-up window, and return to the track quiz form. Or, click
`Save & New`{.interpreted-text role="guilabel"} to save this question,
and instantly start creating another question on a new
`Create Questions`{.interpreted-text role="guilabel"} pop-up form.

## Publish event track

Once all desired configurations are complete on an event track form,
click the desired stage it should be in from the status bar in the
upper-right corner (e.g. `Confirmed`{.interpreted-text role="guilabel"},
`Announced`{.interpreted-text role="guilabel"}, etc.).

:::: note
::: title
Note
:::

The stage of a track can also be changed from the *Event Tracks* page,
where the desired track card can be dragged-and-dropped into the
appropriate Kanban stage.
::::

If an event track has *not* been published yet, and it is moved to the
`Published`{.interpreted-text role="guilabel"} stage, Odoo automatically
publishes the track on the event website.

An event track can also be published by opening the desired event track
form, and clicking the `Go to Website`{.interpreted-text
role="guilabel"} smart button. Then, toggle the
`fa-toggle-off`{.interpreted-text role="icon"}
`Unpublished`{.interpreted-text role="guilabel"} switch at the top of
the page to `fa-toggle-on`{.interpreted-text role="icon"}
`Published`{.interpreted-text role="guilabel"}; thus turning it from red
to green, and making it accessible for attendees.

::: seealso
`track_manage_talks`{.interpreted-text role="doc"}
:::




--- SOURCE: marketing/events/sell_tickets.md ---

# Sell tickets

Create custom ticket tiers (with various price points) for potential
attendees to choose from, directly on the event template form, under the
`Tickets`{.interpreted-text role="guilabel"} tab. Odoo simplifies the
ticket-purchasing process by providing plenty of payment method options.

## Configuration

First, in order to enable the creation (and selling of) event tickets,
go to `Configuration --> Settings`{.interpreted-text
role="menuselection"}, then enable the `Tickets`{.interpreted-text
role="guilabel"} and `Online Ticketing`{.interpreted-text
role="guilabel"} features.

The `Tickets`{.interpreted-text role="guilabel"} feature allows tickets
to be sold for an event.

The `Online Tickets`{.interpreted-text role="guilabel"} feature allows
for the sale of tickets to occur through the website.

:::: note
::: title
Note
:::

If these options are *not* enabled, a default
`Register`{.interpreted-text role="guilabel"} button will be available
for free registrations.
::::

![View of the settings page for Odoo Events.](sell_tickets/events-settings-tickets.png){.align-center}

## Sell tickets through sales orders

In the `Sales`{.interpreted-text role="guilabel"} application, choose a
previously-created Event Registration (as if it were a product), and add
it as a product line. Upon adding the registration, a pop-up appears,
which allows for the selection of a specific event (and ticket tier).
That specific event ticket is then attached to the sales order.

![View of a sales order and option to choose the specific event in Odoo Events.](sell_tickets/events-through-sales-order.png){.align-center}

Events with tickets sold online or through sales orders have a
`Sales Smart Button`{.interpreted-text role="guilabel"} shortcut,
located at the top of the event template form (in the
`Events`{.interpreted-text role="guilabel"} application).

Clicking the `Sales Smart Button`{.interpreted-text role="guilabel"}
reveals a page with all the sales orders related to that event.

![View of an event\'s form and the sales smart button in Odoo Events.](sell_tickets/events-sales-smartbutton.png){.align-center}

![View of an event form highlighting the column product under the tickets tab in Odoo
Events.](sell_tickets/events-tickets-registration-product.png){.align-center}

## Sell tickets through the website

With tickets purchased through the website, the process is similar to
creating a `Sales
Order`{.interpreted-text role="guilabel"} with a specific
`Registration`{.interpreted-text role="guilabel"} product. Here, tickets
are added to a virtual cart, and the transaction can be completed as
usual - utilizing any of the pre-configured payment methods options that
have been set up on the website.

The completed purchase is automatically produced in a
`Sales Order`{.interpreted-text role="guilabel"}, which can be easily
accessed in the back end of the database.

![View of website transaction for Odoo Events.](sell_tickets/events-online-ticket-purchase.png){.align-center}




--- SOURCE: marketing/events/track_manage_talks.md ---

# Track and manage talks

With Odoo Events, it\'s possible to provide attendees with the power to
propose presenters to speak at events.

## Configuration

First, go to `Events --> Configuration --> Settings`{.interpreted-text
role="menuselection"} and enable `Schedule &
Tracks`{.interpreted-text role="guilabel"}.

When that feature is enabled, two more options become available: *Live
Broadcast* and *Event Gamification*.

`Live Broadcast`{.interpreted-text role="guilabel"} allows for the
airing of tracks online through a YouTube integration.

`Event Gamification`{.interpreted-text role="guilabel"} allows for the
sharing of a quiz with your attendees, once a track (talk) is over.

:::: tip
::: title
Tip
:::

`Event Gamification`{.interpreted-text role="guilabel"} isn\'t necessary
for tracks to appear on the event page on the website, but it can
enhance the engagement and overall enjoyablity of the event for
attendees.
::::

## Talks, talk proposals, and agenda

Once those two features are enabled, the following links are
automatically added to the sub-header menu, located on the event page on
the website: `Talks`{.interpreted-text role="guilabel"},
`Talk Proposals`{.interpreted-text role="guilabel"}, and
`Agenda`{.interpreted-text role="guilabel"}. Any attendee can freely
access these menu items and their corresponding content.

The `Talks`{.interpreted-text role="guilabel"} link takes the attendee
to a page full of all the talks for that event.

The `Talks Proposals`{.interpreted-text role="guilabel"} link takes the
attendee to a form page, where they can propose talks for the event.

The `Agenda`{.interpreted-text role="guilabel"} link takes the attendee
to a page with all the talks for the event, but in a calendar/time-slot
format.

![View of the published website and the talks, talk proposals, and agenda in Odoo Events](track_manage_talks/events-talk-proposal-header.png){.align-center}

## Manage talk proposals

When attendees fill out and submit a talk proposal form on the website,
a new `Proposal`{.interpreted-text role="guilabel"} is instantly created
in the back end for the event.

:::: note
::: title
Note
:::

All talks (Proposals, Confirmed, Announced, etc.) are accessible via the
`Tracks`{.interpreted-text role="guilabel"} smart button on the event
form.
::::

![View of the talks\' proposals page emphasizing the column proposal in Odoo Events.](track_manage_talks/events-tracks-kanban.png){.align-center}

If a proposal is accepted, move the `Event Track`{.interpreted-text
role="guilabel"} to the appropriate stage in the Kanban view (e.g.
[Confirmed]{.title-ref}, etc.). Then, go to that particular event\'s
template form, and click the `Go to Website`{.interpreted-text
role="guilabel"} smart button to reach that specific talk\'s page on the
website.

In the upper right corner, toggle the switch from
`Unpublished`{.interpreted-text role="guilabel"} to
`Published`{.interpreted-text role="guilabel"}, and the talk is
instantly accessible on the website.

:::: note
::: title
Note
:::

Without publishing a talk, attendees will never be able to access it.
::::

![View of the website page to publish a proposed talk for Odoo Events.](track_manage_talks/events-tracks-publish.png){.align-center}

### Attendees list and attendance

Once attendees have registered for a specific event, they are added to
the `Attendee List`{.interpreted-text role="guilabel"} for that event,
which is accessible via the `Attendees`{.interpreted-text
role="guilabel"} smart button on the event template form, or
`Reporting --> Attendees`{.interpreted-text role="menuselection"} and
sorted by event.

:::: note
::: title
Note
:::

When an attendee arrives at the event, they will be marked as attending
(`Confirmed
Attendance`{.interpreted-text role="guilabel"}), and the status of that
attendee will change to `Attended.`{.interpreted-text role="guilabel"}
::::

![Overview of events with the kanban view in Odoo Events.](track_manage_talks/events-attendees-smartbutton.png){.align-center}

When analyzing an `Attendees list`{.interpreted-text role="guilabel"},
Odoo provides different ways to view the information. Each view option
presents the same information, but in a slightly different layout. To
change the view, click on the icons in the upper right hand of the
screen.

![Various view options on the attendees list page.](track_manage_talks/events-attendees-view-options.png){.align-center}

In the `Kanban`{.interpreted-text role="guilabel"} view, it can be
confirmed whether the attendees have already paid or remain unpaid.

The `List`{.interpreted-text role="guilabel"} view provides information
in a more traditional list formation.

The `Calendar`{.interpreted-text role="guilabel"} view provides a clear
schedule visualization of which attendees are arriving on specific dates
of the event.

The `Graph`{.interpreted-text role="guilabel"} view provides graphical
representations of that event\'s attendees, along with numerous filters
and customizable measures for deeper analysis.

The `Cohort`{.interpreted-text role="guilabel"} view lays out attendee
data to better analyze the number of registration dates.

:::: note
::: title
Note
:::

Tickets sold through sales orders validate attendees as soon as the
quotation is confirmed.
::::

### Manage registrations

Upon selecting an attendee, Odoo reveals that specific attendee\'s
detail form.

From here, event badges can be sent manually, by selecting
`Send By Email`{.interpreted-text role="guilabel"}. The
`Attendee`{.interpreted-text role="guilabel"} can also be marked as
`Attended`{.interpreted-text role="guilabel"}, or the registration can
be canceled altogether via the `Cancel Registration`{.interpreted-text
role="guilabel"} button.

![View of an attendee form emphasizing the send by email and cancel registration in Odoo
Events.](track_manage_talks/events-send-email-button.png){.align-center}

### Lead Generation Rules

With Odoo, leads can be generated from events.

To create and configure a `Lead Generation Rule`{.interpreted-text
role="guilabel"} related to events, navigate to
`Events app --> Configuration --> Lead Generation`{.interpreted-text
role="menuselection"}.

On the `Lead Generation Rule`{.interpreted-text role="guilabel"} page,
every configured `Lead Generation Rule`{.interpreted-text
role="guilabel"} can be found, along with pertinent data related to
those rules.

![How the Lead Generation Rule page looks in Odoo Events.](track_manage_talks/events-lead-generation-rule-page.png){.align-center}

To create a new `Lead Generation Rule`{.interpreted-text
role="guilabel"}, click `Create`{.interpreted-text role="guilabel"}, and
fill out the `Lead Generation Rule`{.interpreted-text role="guilabel"}
form.

![How the Lead Generation Rule template looks in Odoo Events.](track_manage_talks/events-lead-generation-rule-template.png){.align-center}

After naming the rule, configure *how* the lead should be created
(either `Per Attendee`{.interpreted-text role="guilabel"} or
`Per Order`{.interpreted-text role="guilabel"}), and *when* they should
be created, (when `Attendees are created`{.interpreted-text
role="guilabel"}, when `Attendees are confirmed`{.interpreted-text
role="guilabel"}, or when `Attendees attended`{.interpreted-text
role="guilabel"} the event).

In the `For any of these Events`{.interpreted-text role="guilabel"}
section, there are fields to attach this rule to any specific event
categories, company, and/or event. To add even more specificity to the
rule, a domain filter rule can be configured to ensure the rule only
applies to a specific target audience of attendees (found in the
`If the Attendees meet these Conditions`{.interpreted-text
role="guilabel"} section).

Lastly, in the `Lead Default Values`{.interpreted-text role="guilabel"}
section, designate a `Lead Type`{.interpreted-text role="guilabel"},
then assign it to a specific `Sales Team`{.interpreted-text
role="guilabel"} (and/or `Salesperson`{.interpreted-text
role="guilabel"}), and attach tags to the rule, if necessary.




--- SOURCE: marketing/events.md ---

nosearch

:   

# Events

::: seealso
\- [Odoo Tutorials: Events](https://www.odoo.com/slides/surveys-63)
:::

::: toctree
events/event_essentials events/sell_tickets events/track_manage_talks
events/event_tracks events/event_booths
:::




--- SOURCE: marketing/marketing_automation/advanced/understanding_metrics.md ---

# Campaign metrics

*Campaign metrics* are detailed statistics and analytics within a
marketing campaign, measuring its success and effectiveness. Triggered
marketing activities populate relevant activity blocks with real-time
metrics, in the campaign detail form.

## Activity analytics

In the `Workflow`{.interpreted-text role="guilabel"} section of a
campaign detail form in the *Marketing Automation* app, where the
various campaign activities are located, a collection of useful data can
be found on every individual activity block, like number of
communications `Sent`{.interpreted-text role="guilabel"}, percentage of
messages that have been `Clicked`{.interpreted-text role="guilabel"},
and more.

![An activity block in the workflow section with useful analytical data in Odoo.](understanding_metrics/activity-analytics-block-sample.png){.align-center}

To the left of the activity block, the configured `trigger time
<../getting_started/workflow_activities>`{.interpreted-text role="doc"}
is displayed as a duration (either `Hours`{.interpreted-text
role="guilabel"}, `Days`{.interpreted-text role="guilabel"},
`Weeks`{.interpreted-text role="guilabel"}, or
`Months`{.interpreted-text role="guilabel"}) if it corresponds to period
after the workflow begins.

:::: note
::: title
Note
:::

If the trigger time is dependent on another activity or triggering
action (e.g. `Mail:
Replied`{.interpreted-text role="guilabel"}, etc.) the time is
displayed, along with the necessary action for that activity to be
activated (e.g. [Replied after 2 Hours]{.title-ref}).

![Time trigger display when dependent on another activity in Odoo Marketing Automation.](understanding_metrics/replied-after-activity-time-trigger.png){.align-center}
::::

In the activity block, an icon represents each activity type. An
`✉️ (envelope)`{.interpreted-text role="guilabel"} icon means the
activity is an email. Three tiny, interlocking
`⚙️ (gear)`{.interpreted-text role="guilabel"} icons means the activity
is an internal action. And, a small, basic
`📱 (mobile)`{.interpreted-text role="guilabel"} icon means the activity
is an SMS.

:::: tip
::: title
Tip
:::

The activity type name is also displayed in smaller font below the
activity title.
::::

Beside the activity icon, at the top of the activity block, is the title
of the activity. To the right of the activity title, there are
`Edit`{.interpreted-text role="guilabel"} and `Delete`{.interpreted-text
role="guilabel"} buttons.

Click `Edit`{.interpreted-text role="guilabel"} to open the
`Open: Activities`{.interpreted-text role="guilabel"} pop-up form for
that specific activity, in which that activity can be modified. Click
the `Delete`{.interpreted-text role="guilabel"} button to completely
delete that specific activity from the workflow.

::: seealso
`/applications/marketing/marketing_automation/getting_started/workflow_activities`{.interpreted-text
role="doc"}
:::

### Activity graph tab

In every activity block, the `Graph (pie chart icon)`{.interpreted-text
role="guilabel"} tab is open by default, displaying related metrics as a
simple line graph. The success metrics are represented in
[green]{.title-ref} and the rejected metrics are represented in
[red]{.title-ref}.

Numerical representations of both `Success`{.interpreted-text
role="guilabel"} and `Rejected`{.interpreted-text role="guilabel"}
activities are shown to the right of the line graph.

:::: tip
::: title
Tip
:::

Hovering over any point in the line graph of the activity block reveals
a notated breakdown of data for that specific date.

![Hovering over any point in line graph reveals notated breakdown of data in Odoo.](understanding_metrics/graph-breakdown-data.png){.align-center}
::::

Beneath the graph in the activity block, for *Email* or *SMS* activity
types, a line of accessible data figures provide a bird\'s eye view of
the campaign activity, including: `Sent`{.interpreted-text
role="guilabel"} (numerical), `Clicked`{.interpreted-text
role="guilabel"} (percentage), `Replied`{.interpreted-text
role="guilabel"} (percentage), and `Bounced`{.interpreted-text
role="guilabel"} (percentage).

:::: tip
::: title
Tip
:::

Clicking any of those stats on the `DETAILS`{.interpreted-text
role="guilabel"} line, beneath the line graph, reveals a separate page
containing every specific record for that particular data point.
::::

### Activity filter tab

Next to the `Graph`{.interpreted-text role="guilabel"} tab on the
activity block, there\'s the option to open a `Filter`{.interpreted-text
role="guilabel"} tab (represented by a `filter/funnel`{.interpreted-text
role="guilabel"} icon).

![What a campaign activity filter tab looks like in Odoo Marketing Automation.](understanding_metrics/activity-filter-tab.png){.align-center}

Clicking the `Filter`{.interpreted-text role="guilabel"} tab on an
activity block, reveals what the specific filters are for that
particular campaign activity, and how many records in the database match
that specific criteria.

:::: tip
::: title
Tip
:::

Clicking the `records`{.interpreted-text role="guilabel"} link beneath
the displayed filter reveals a separate pop-up window containing a list
of all the records that match that specific campaign activity rule(s).
::::

## Link tracker

Odoo tracks all URLs used in marketing campaigns. To access and analyze
those URLs, navigate to
`Marketing Automation app --> Reporting --> Link Tracker`{.interpreted-text
role="menuselection"}. Doing so reveals a
`Link Statistics`{.interpreted-text role="guilabel"} page, wherein all
campaign-related URLs can be analyzed.

![What a campaign activity filter tab looks like in Odoo Marketing Automation.](understanding_metrics/campaign-link-tracker.png){.align-center}

The default view on the `Link Statistics`{.interpreted-text
role="guilabel"} page is the `Bar Chart`{.interpreted-text
role="guilabel"} view, but there are different view options available in
the upper-left corner. There is the option to view the statistics as a
`Line Chart`{.interpreted-text role="guilabel"} or
`Pie Chart`{.interpreted-text role="guilabel"}.

Beside that, there is also the option to view the statistics as
`Stacked`{.interpreted-text role="guilabel"}, and the data can be put
into `Descending`{.interpreted-text role="guilabel"} or
`Ascending`{.interpreted-text role="guilabel"} order.

To the far-left of the view options, there is the
`Measures`{.interpreted-text role="guilabel"} drop-down menu. When
clicked, the options to view the `Number of Clicks`{.interpreted-text
role="guilabel"} or total `Count`{.interpreted-text role="guilabel"} are
available. And, to the right of the `Measures`{.interpreted-text
role="guilabel"} drop-down menu, there\'s the ability to add any data to
a spreadsheet by clicking the `Insert in Spreadsheet`{.interpreted-text
role="guilabel"} button.

Also, in the upper-right corner of the
`Link Statistics`{.interpreted-text role="guilabel"} page, to the
far-right of the search bar, there are additional view options to choose
from: the default `Graph`{.interpreted-text role="guilabel"} view, the
`Pivot`{.interpreted-text role="guilabel"} table view, and the
`List`{.interpreted-text role="guilabel"} view.

## Traces

Odoo tracks all activities used in every marketing campaign. The data
related to these activities can be accessed and analyzed in the
`Traces`{.interpreted-text role="guilabel"} page, which can be found by
navigating to
`Marketing Automation app --> Reporting --> Traces`{.interpreted-text
role="menuselection"}.

![The Traces page in the Odoo Marketing Automation application.](understanding_metrics/traces-page-marketing-automation.png){.align-center}

The default view on the `Traces`{.interpreted-text role="guilabel"} page
is the `Bar Chart`{.interpreted-text role="guilabel"} view, but there
are different view options available in the upper-left corner. There is
the option to view the statistics as a `Line Chart`{.interpreted-text
role="guilabel"} or `Pie Chart`{.interpreted-text role="guilabel"}.

At the top of the graph, there\'s a color key, informing the user which
activities have been `Processed`{.interpreted-text role="guilabel"},
`Scheduled`{.interpreted-text role="guilabel"}, and
`Rejected`{.interpreted-text role="guilabel"}. There\'s also an outline
indicator to inform users of the `Sum`{.interpreted-text
role="guilabel"} of certain activities, as well.

Beside the various view option in the upper-left corner of the
`Traces`{.interpreted-text role="guilabel"} page, there is also the
option to view the statistics as `Stacked`{.interpreted-text
role="guilabel"}, and the data can be put into
`Descending`{.interpreted-text role="guilabel"} or
`Ascending`{.interpreted-text role="guilabel"} order.

To the far-left of the view options, there is the
`Measures`{.interpreted-text role="guilabel"} drop-down menu. When
clicked, the options to view the `Document ID`{.interpreted-text
role="guilabel"} or total `Count`{.interpreted-text role="guilabel"} are
available. And, to the right of the `Measures`{.interpreted-text
role="guilabel"} drop-down menu, there\'s the ability to add any data to
a spreadsheet by clicking the `Insert in Spreadsheet`{.interpreted-text
role="guilabel"} button.

Also, in the upper-right corner of the
`Link Statistics`{.interpreted-text role="guilabel"} page, to the
far-right of the search bar, there are additional view options to choose
from: the default `Graph`{.interpreted-text role="guilabel"} view, the
`Pivot`{.interpreted-text role="guilabel"} table view, and the
`List`{.interpreted-text role="guilabel"} view.

## Participants

Odoo tracks all participants related to every marketing campaign. The
data related to these participants can be accessed and analyzed in the
`Participants`{.interpreted-text role="guilabel"} page, which can be
found by navigating to
`Marketing Automation app --> Reporting --> Participants`{.interpreted-text
role="menuselection"}.

![The Participants page in the Odoo Marketing Automation application.](understanding_metrics/participants-page-marketing-automation.png){.align-center}

The default view on the `Participants`{.interpreted-text
role="guilabel"} page is the `Pie Chart`{.interpreted-text
role="guilabel"} view, but there are different view options available in
the upper-left corner. There is the option to view the statistics as a
`Line Chart`{.interpreted-text role="guilabel"} or
`Bar Chart`{.interpreted-text role="guilabel"}.

At the top of the graph, there\'s a color key that describes the type of
participants found in the graph.

To the far-left of the view options, there is the
`Measures`{.interpreted-text role="guilabel"} drop-down menu. When
clicked, the options to view the `Record ID`{.interpreted-text
role="guilabel"} or total `Count`{.interpreted-text role="guilabel"} are
available. And, to the right of the `Measures`{.interpreted-text
role="guilabel"} drop-down menu, there\'s the ability to add any data to
a spreadsheet by clicking the `Insert in Spreadsheet`{.interpreted-text
role="guilabel"} button.

Also, in the upper-right corner of the
`Link Statistics`{.interpreted-text role="guilabel"} page, to the
far-right of the search bar, there are additional view options to choose
from: the default `Graph`{.interpreted-text role="guilabel"} view, the
`Pivot`{.interpreted-text role="guilabel"} table view, and the
`List`{.interpreted-text role="guilabel"} view.




--- SOURCE: marketing/marketing_automation/advanced.md ---

nosearch

:   

# Advanced

::: {.toctree titlesonly=""}
advanced/understanding_metrics
:::




--- SOURCE: marketing/marketing_automation/getting_started/first_campaign.md ---

# Marketing automation campaigns

The Odoo *Marketing Automation* app automates a variety of marketing
tasks by combining specific rules and filters to generate timed actions.
Instead of manually having to build each stage of a campaign (like a
series of timed massmails), the *Marketing Automation* app allows
marketers to build the entire campaign, and all of its stages, in one
place\-\--on one dashboard.

## Campaign configuration

To create a new automated marketing campaign, navigate to
`Marketing Automation app
--> New`{.interpreted-text role="menuselection"} to reveal a blank
campaign form.

![A blank marketing automation campaign form in Odoo Marketing Automation application.](first_campaign/blank-marketing-campaign-form.png){.align-center}

After entering a name for the marketing campaign, configure the target
audience in the remaining fields.

A target audience can be configured by entering specific criteria for
Odoo to use when determining to whom this marketing automation campaign
should be sent.

In the `Target`{.interpreted-text role="guilabel"} field, use the
drop-down menu to choose which model the target audience filters should
be based on (e.g. `Contact`{.interpreted-text role="guilabel"},
`Lead/Opportunity`{.interpreted-text role="guilabel"},
`Sales Order`{.interpreted-text role="guilabel"}, etc.).

Select `Search More...`{.interpreted-text role="guilabel"} from the
drop-down menu to reveal a `Search: Target`{.interpreted-text
role="guilabel"} pop-up window containing all of the available targeting
options.

Once a `Target`{.interpreted-text role="guilabel"} is selected, there\'s
a `Unicity based on`{.interpreted-text role="guilabel"} field. This
field is used to avoid duplicates based on the model chosen in the
`Target`{.interpreted-text role="guilabel"} field.

::: example
If `Customers`{.interpreted-text role="guilabel"} is chosen as the
`Target`{.interpreted-text role="guilabel"}, select
`Email`{.interpreted-text role="guilabel"} in the
`Unicity based on`{.interpreted-text role="guilabel"} field so Odoo only
processes one record for each customer email address.
:::

Select `Search More...`{.interpreted-text role="guilabel"} from the
`Unicity based on`{.interpreted-text role="guilabel"} drop-down menu to
reveal all available options in a pop-up window.

Last on the campaign form is the `Filter`{.interpreted-text
role="guilabel"} field. This is where more specific targeting options
can be layered into the campaign to further narrow the number and type
of recipients that receive the marketing automation material.

If left alone, the `Filter`{.interpreted-text role="guilabel"} field
reads: `Match all records`{.interpreted-text role="guilabel"}. That
means Odoo uses the `Target`{.interpreted-text role="guilabel"} and
`Unicity based on`{.interpreted-text role="guilabel"} fields to
determine who the recipients will be. The number of recipients is
represented beneath as `record(s)`{.interpreted-text role="guilabel"}.

### Campaign filter rules

To add a more specific filter to a marketing automation campaign, click
the `Add
condition`{.interpreted-text role="guilabel"} button in the
`Filter`{.interpreted-text role="guilabel"} field. Doing so reveals a
series of other configurable filter rule fields.

In the rule fields, customizable equations can be configured for Odoo to
use when filtering who to include or exclude in this specific marketing
campaign.

![How the filter rule equation fields look in Odoo Marketing Automation campaigns.](first_campaign/filter-node-equation-fields.png){.align-center}

:::: note
::: title
Note
:::

`Records`{.interpreted-text role="guilabel"} refer to contacts in the
system that fit the specified criteria for a campaign.
::::

Also, once `Add condition`{.interpreted-text role="guilabel"} is
clicked, the ability to `Save as Favorite Filter`{.interpreted-text
role="guilabel"} becomes available on the campaign form.

There is also the option to match records with `all`{.interpreted-text
role="guilabel"} or `any`{.interpreted-text role="guilabel"} of the
rules configured in the `Filter`{.interpreted-text role="guilabel"}
field.

To choose either of those options, click `all`{.interpreted-text
role="guilabel"} from the middle of the sentence
\"`Match records with all of the following rules`{.interpreted-text
role="guilabel"}\" to reveal a drop-down menu with those options.

![Match records with all or any of the rules in Filter field for marketing campaigns.](first_campaign/match-all-any-rules-drop-down.png){.align-center}

When the first field of the rule equation is clicked, a nested drop-down
menu of options appears on the screen where specific criteria is chosen
based on needs of the campaign.

The remaining fields on the rule equation further define the criteria,
which is used to determine which records in the database to include or
exclude in the execution of the campaign.

To add another rule, either click the `➕ (plus sign)`{.interpreted-text
role="guilabel"} icon to the right of the filtering rule, or click
`New Rule`{.interpreted-text role="guilabel"} beneath the rule equation
fields. When either are clicked, a new series of rule fields appears.

To add a branch of multiple rules at the same time, click the
`branch`{.interpreted-text role="guilabel"} icon, located to the right
of the `➕ (plus sign)`{.interpreted-text role="guilabel"} icon. When
clicked, two additional sub-rule equation fields appear beneath the
initial rule.

![Sample of how the rule branches look in the filter section of a marketing campaign.](first_campaign/rule-branch-filter-sample.png){.align-center}

There is also the option to have the filter apply to
`any`{.interpreted-text role="guilabel"} or `all`{.interpreted-text
role="guilabel"} of the configured branch rules.

For further information on marketing automation campaign filter
configuration, refer to `this
documentation page <target_audience>`{.interpreted-text role="doc"}.

::: seealso
\- `workflow_activities`{.interpreted-text role="doc"} -
`testing_running`{.interpreted-text role="doc"}
:::




--- SOURCE: marketing/marketing_automation/getting_started/target_audience.md ---

# Target an audience

Delivering marketing campaigns to the right audience is paramount when
trying to grow a business. The Odoo *Marketing Automation* application
helps marketers to do just that by providing detailed filtering tools,
which can be as simple (or as complex) as necessary, to reach the right
customers at the right time.

## Configure target filters

When configuring the target filters on a marketing campaign, there are
some options that have an `> (arrow)`{.interpreted-text role="guilabel"}
icon beside them. The `> (arrow)`{.interpreted-text role="guilabel"}
icon signifies that the particular filter has more refined parameters
within it that can be customized.

![The drop-down filter menu in the Marketing Automation application.](target_audience/marketing-filters.png){.align-center}

Filters can be extended by adding *branches* and *nodes*. A *node* adds
another filtering parameter to a group of targeting conditions (e.g. a
new line), and a *branch* creates a narrowly refined cluster of
parameters, allowing filters to be grouped with `ANY`{.interpreted-text
role="guilabel"} or `ALL`{.interpreted-text role="guilabel"} statements.

Every time a new branch is created, there are two options:

- Either the records can match `ALL`{.interpreted-text role="guilabel"}
  criteria for the upcoming rules (creating an AND statement where *all*
  criteria must match).
- Or, the records can match `ANY`{.interpreted-text role="guilabel"}
  criteria for the upcoming rules (creating an OR statement where *only
  one* of the criteria must match).

To change between these two options, simply click the drop-down arrow
icon in the green box and select `ANY`{.interpreted-text
role="guilabel"} or `ALL`{.interpreted-text role="guilabel"}.

To add a node, click on the `➕ (plus sign)`{.interpreted-text
role="guilabel"} icon, and to add another branch click on the
`⋯ (ellipses)`{.interpreted-text role="guilabel"} icon. To exclude a
node or a branch, click on `✖ (delete)`{.interpreted-text
role="guilabel"} icon to delete it.

![The drop-down filter menu in the Marketing Automation application.](target_audience/marketing-filter-nodes.png){.align-center}

## Use cases

The following scenarios outline different combinations of filters a
marketing campaign might commonly use.

### Scenario #1: Narrow target down to new opportunities in the pipeline

While in *Edit mode* on a campaign template form (by clicking the
`Edit`{.interpreted-text role="guilabel"} button), select the
`Target`{.interpreted-text role="guilabel"} field, and click
`Search More`{.interpreted-text role="guilabel"} from the drop-down
menu. Then, search for `Lead/Opportunity`{.interpreted-text
role="guilabel"}, and select it.

Next, click `Add Filter`{.interpreted-text role="guilabel"} in the
`Filter`{.interpreted-text role="guilabel"} field. Then, click on the
default `ID`{.interpreted-text role="guilabel"} filter option in the
first portion of the filter equation. Doing so reveals a drop-down menu
full of filter options. From this drop-down, scroll down (or search for)
`Type`{.interpreted-text role="guilabel"}.

Keep the second portion of the filter equation on the default
`🟰 (equal sign)`{.interpreted-text role="guilabel"} icon.

Next, change the third (and final) portion of the filter equation from
`Lead`{.interpreted-text role="guilabel"} to
`Opportunity`{.interpreted-text role="guilabel"}. The number of
`Records`{.interpreted-text role="guilabel"} that fit this specific
filter equation changes as the equation is customized.

Add another node to this filter by clicking the
`➕ (plus sign)`{.interpreted-text role="guilabel"} icon to the right of
the equation.

With \"new\" opportunities being the target of this filter, the second
node will focus on *only* locating opportunities that are in the
`New`{.interpreted-text role="guilabel"} stage of the pipeline. To do
that, select the default `ID`{.interpreted-text role="guilabel"} from
the first portion of the second filter equation, and scroll down (or
search for) `Stage`{.interpreted-text role="guilabel"} from the field
drop-down menu.

Once again, leave the second portion of the filter equation on
`🟰 (equal sign)`{.interpreted-text role="guilabel"} icon.

Lastly, highlight the default value in the third (and final) portion of
the second filter equation, and type in [New]{.title-ref}. With that in
place, Odoo only targets opportunities that are in the \"New\" stage of
the pipeline.

![A standard scenario using filters in the Odoo Marketing Automation app.](target_audience/filters-opportunities.png){.align-center}

### Scenario #2: Narrow down target to event attendees who purchased a specific ticket

While in *Edit mode* on a campaign template form (by clicking the
`Edit`{.interpreted-text role="guilabel"} button), select the
`Target`{.interpreted-text role="guilabel"} field, and click
`Search More`{.interpreted-text role="guilabel"} from the drop-down
menu. Then, scroll down (or search for) `Event`{.interpreted-text
role="guilabel"}, and select it.

Next, click `Add Filter`{.interpreted-text role="guilabel"} in the
`Filter`{.interpreted-text role="guilabel"} field. Click on the default
`ID`{.interpreted-text role="guilabel"} filter option in the first
portion of the filter equation. Doing so reveals a drop-down menu full
of filter options. From this drop-down, scroll down (or search for)
`Event`{.interpreted-text role="guilabel"}.

Click the default `🟰 (equal sign)`{.interpreted-text role="guilabel"}
icon in the second portion of the filter equation. This reveals a
drop-down menu. From this drop-down menu, select
`contains`{.interpreted-text role="guilabel"}.

In the third (and final) empty portion of the filter equation, type in
the name of the event(s) that Odoo should consider for this campaign
filter.

Then, add another node to this filter by clicking the
`➕ (plus sign)`{.interpreted-text role="guilabel"} icon to the right of
the equation.

The second node will focus on targeting this campaign to attendees who
purchase a specific type of ticket to the aforementioned event(s)
mentioned in the first filter equation.

To do that, select the default `ID`{.interpreted-text role="guilabel"}
from the first portion of the second filter equation, and scroll down
(or search for) `Event Ticket`{.interpreted-text role="guilabel"} from
the field drop-down menu. Then, in that same drop-down menu, select
`Name`{.interpreted-text role="guilabel"}.

Once again, click the default `🟰 (equal sign)`{.interpreted-text
role="guilabel"} icon in the second portion of the filter equation, and
select `contains`{.interpreted-text role="guilabel"}.

Lastly, in the third (and final) portion of the second filter equation,
which is blank, type in the name of the ticket type that should be used
for the filter. In this case, `Standard`{.interpreted-text
role="guilabel"} is the name of the event ticket type for this sample
filter.

![An event ticket filter in the Odoo Marketing Automation application.](target_audience/filters-event-ticket.png){.align-center}




--- SOURCE: marketing/marketing_automation/getting_started/testing_running.md ---

# Testing/running campaigns

The Odoo *Marketing Automation* app allows users to test marketing
campaigns (and mailings) before officially running them to check for
errors and correct any mistakes before it reaches its target audience.

## Test campaigns

To test a marketing campaign, open the
`Marketing Automation app`{.interpreted-text role="menuselection"}, and
select the desired campaign to test, which reveals the campaign\'s
detail form.

On the campaign detail form, make sure the campaign already has
activities configured in the workflow (or build a campaign by following
the directions on `this documentation
</applications/marketing/marketing_automation/getting_started/workflow_activities>`{.interpreted-text
role="doc"}).

:::: note
::: title
Note
:::

Testing marketing automation campaigns is meant to be performed in the
production version of the database. Duplicate (or trial) databases have
limited email sending capabilities.
::::

To start a test, click the `Launch a Test`{.interpreted-text
role="guilabel"} button at the top of the campaign form, to the right of
the `Start`{.interpreted-text role="guilabel"} button.

![Launch a test button on a campaign detail form in Odoo Marketing Automation.](testing_running/launch-test.png){.align-center}

When clicked, a `Launch a test`{.interpreted-text role="guilabel"}
pop-up window appears.

![Launch a test pop-up window that appears in Odoo Markting Automation.](testing_running/launch-test-popup-window.png){.align-center}

In the `Launch a test`{.interpreted-text role="guilabel"} pop-up window,
click the `Pick or create a/an Contact to
generate a Test Participant`{.interpreted-text role="guilabel"} field to
reveal a drop-down menu of contacts. From this drop-down menu, select an
existing contact (or create a new one) to run the test on.

:::: note
::: title
Note
:::

Only one contact can be selected from the
`Launch a test`{.interpreted-text role="guilabel"} pop-up window.
::::

To create a new contact directly from the
`Launch a test`{.interpreted-text role="guilabel"} pop-up window, start
typing the name of the new contact in the blank field, and click
`Create and edit...`{.interpreted-text role="guilabel"}.

![Typing in a new contact directly from the launch a test pop-up window in Odoo.](testing_running/new-contact-from-launch-test-popup.png){.align-center}

Doing so reveals a blank `Create Record`{.interpreted-text
role="guilabel"} pop-up form, in which the necessary contact information
(`Email`{.interpreted-text role="guilabel"}, `Mobile`{.interpreted-text
role="guilabel"}, etc.) *must* be entered, in order for the test to
work. When the necessary information is entered, click
`Save & Close`{.interpreted-text role="guilabel"}.

![A blank contact form from a launch test pop-up window in Odoo Marketing Automation.](testing_running/blank-contact-form.png){.align-center}

When all the necessary fields have been entered, click
`Save & Close`{.interpreted-text role="guilabel"} to return to the
`Launch a test`{.interpreted-text role="guilabel"} pop-up window.

Once a contact is selected, click `Launch`{.interpreted-text
role="guilabel"} to reveal the campaign test page.

![Test screen in Odoo Marketing Automation.](testing_running/test-screen.png){.align-center}

On the campaign test page, the name of the `Record`{.interpreted-text
role="guilabel"} being tested is visible, along with the precise time
this test workflow was started in the
`Workflow Started On`{.interpreted-text role="guilabel"} field. Beneath
that, in the `Workflow`{.interpreted-text role="guilabel"} section is
the first activity (or activities) in the workflow that\'s being tested.

To start a test, click the `Run`{.interpreted-text role="guilabel"}
button, represented by a `▶️ (play button)`{.interpreted-text
role="guilabel"} icon beside the first activity in the workflow. When
clicked, the page reloads, and Odoo shows the various results (and
analytics) connected to that specific activity as they occur, in
real-time.

:::: note
::: title
Note
:::

If a child activity is scheduled beneath a parent activity, that child
activity will be revealed slightly indented in the workflow, once that
parent activity has been run, via the `▶️
(play button)`{.interpreted-text role="guilabel"} icon.
::::

![Workflow test progress in Odoo Marketing Automation.](testing_running/workflow-test-progress.png){.align-center}

Once all the workflow activities are completed, the test ends, and the
status bar (in the upper-right corner) moves to the
`Completed`{.interpreted-text role="guilabel"} stage.

To stop a test before all the workflow activities are completed, click
the `Stop`{.interpreted-text role="guilabel"} button in the upper-left
corner of the campaign test page.

## Run campaigns

To run a campaign, navigate to
`Marketing Automation app`{.interpreted-text role="menuselection"}, and
select the desired campaign to run.

On the campaign detail form, with all the desired activities ready in
the `Workflow`{.interpreted-text role="guilabel"} section, click
`Start`{.interpreted-text role="guilabel"} in the upper-left corner to
officially run the campaign to the configured target audience specified
on the campaign detail form.

Clicking `Start`{.interpreted-text role="guilabel"} launches the
campaign, and the status bar of the campaign switches to
`Running`{.interpreted-text role="guilabel"}, which is located in the
upper-right corner of the campaign detail form.

![The status of a marketing campaign changing to running in the upper-right corner.](testing_running/campaign-running-status.png){.align-center}

:::: note
::: title
Note
:::

If some participants are already running on a campaign, and was stopped
for any reason, clicking the `Start`{.interpreted-text role="guilabel"}
button again prompts a pop-up warning. This warning advises the user to
click an `Update`{.interpreted-text role="guilabel"} button to apply any
modifications made to the campaign.

![The workflow has been modified warning pop-up window of a marketing campaign form.](testing_running/workflow-modification-warning.png){.align-center}

Be aware that participants that had already gone through an entire
campaign in its original state **can** be reintroduced into the
newly-modified campaign, and new traces could be created for them.
::::

Then, as the mailings and actions are triggered in the
`Workflow`{.interpreted-text role="guilabel"}, the various stats and
data related to each activity appear in each activity block. There is
also a series of stat-related smart buttons that appear at the top of
the campaign detail form, as well.

These analytical smart buttons will *also* populate with real-time data
as the campaign progresses: `Templates`{.interpreted-text
role="guilabel"}, `Clicks`{.interpreted-text role="guilabel"},
`Tests`{.interpreted-text role="guilabel"},
`Participants`{.interpreted-text role="guilabel"}.

![The row of smart buttons that appear in a currently running marketing campaign in Odoo.](testing_running/campaign-smart-buttons.png){.align-center}

## Stop campaigns

To stop a campaign that\'s currently running, navigate to the
`Marketing Automation
app`{.interpreted-text role="menuselection"}, and select the desired
campaign to stop. On the campaign detail form, click the
`Stop`{.interpreted-text role="guilabel"} button in the upper-left
corner.

![The stop button on a typical campaign detail form in Odoo Marketing Automation application.](testing_running/stop-button-campaign-form.png){.align-center}

When clicked, the campaign is officially stopped, and the status changes
to `Stopped`{.interpreted-text role="guilabel"} in the upper-right
corner of the campaign detail form.

![Marketing campaign\'s stopped status on a campaign detail form in Odoo Marketing Automation.](testing_running/campaign-stopped-status-bar.png){.align-center}

::: seealso
\- `first_campaign`{.interpreted-text role="doc"} -
`target_audience`{.interpreted-text role="doc"} -
`workflow_activities`{.interpreted-text role="doc"}
:::




--- SOURCE: marketing/marketing_automation/getting_started/workflow_activities.md ---

# Campaign workflow activities

When creating a marketing campaign in the *Marketing Automation* app,
users can plan marketing activities that can be triggered when certain
actions or inactions occur. These can be activities such as, automated
emails, SMS, or internal server actions.

## Add workflow activities

To add workflow activities to a marketing campaign, navigate to the
bottom of a pre-existing or new campaign detail form, beneath the target
audience configuration fields, and click `Add new
activity`{.interpreted-text role="guilabel"}.

Doing so reveals a `Create Activities`{.interpreted-text
role="guilabel"} pop-up window. This pop-up window is a blank activity
template, where specific parameters can be set for that particular
activity.

![A workflow activity template pop-up window in Odoo Marketing Automation.](workflow_activities/activity-template.png){.align-center}

First, enter a name for the activity in the
`Activity Name`{.interpreted-text role="guilabel"} field. Then, proceed
to configure the following options.

Once ready, either click: `Save & Close`{.interpreted-text
role="guilabel"} to save the activity and close the pop-up form,
`Save & New`{.interpreted-text role="guilabel"} to save the activity and
instantly create an additional activity on a fresh
`Create Activities`{.interpreted-text role="guilabel"} pop-up form, or
`Discard`{.interpreted-text role="guilabel"} to delete the activity.

### Activity types

Then, select the `Activity Type`{.interpreted-text role="guilabel"}.
Choose between `Email`{.interpreted-text role="guilabel"}, `Server
Action`{.interpreted-text role="guilabel"} (an internal action within
the database), or `SMS`{.interpreted-text role="guilabel"}.

The field below the `Activity Type`{.interpreted-text role="guilabel"}
changes, depending on the chosen `Activity
Type`{.interpreted-text role="guilabel"}.

#### Email activity

If `Email`{.interpreted-text role="guilabel"} is the
`Activity Type`{.interpreted-text role="guilabel"}, the option to choose
a premade/pre-configured `Mail Template`{.interpreted-text
role="guilabel"} becomes available. A mail template can also be created
on-the-fly, as well.

To create a new template directly from the
`Mail Template`{.interpreted-text role="guilabel"} field, start typing
the title of the new template into the blank field beside
`Mail Template`{.interpreted-text role="guilabel"}, and select
`Create and edit...`{.interpreted-text role="guilabel"} to reveal a
`Create Marketing Template`{.interpreted-text role="guilabel"} pop-up
window.

![The create and edit email drop-down option on create activities pop-up window.](workflow_activities/email-activity-create-edit.png){.align-center}

In that pop-up window, proceed to create and configure the new email
template.

![The create marketing template email pop-up window in Odoo Marketing Automation.](workflow_activities/create-marketing-template-popup-window.png){.align-center}

#### Server action activity

If `Server Action`{.interpreted-text role="guilabel"} is the
`Activity Type`{.interpreted-text role="guilabel"}, the option to choose
a specific `Server Action`{.interpreted-text role="guilabel"} (e.g.
Message for sales person, Create Leads on Website clicks, etc.) becomes
available.

The option to create a new server action directly from the
`Server Action`{.interpreted-text role="guilabel"} is also available. To
do that, type in the name of the new action, then click
`Create and Edit...`{.interpreted-text role="guilabel"} from the
drop-down menu.

![The create and edit option in the server action field on campaign detail form.](workflow_activities/server-action-create-edit-option.png){.align-center}

Or, as an alternative, click the empty `Server Action`{.interpreted-text
role="guilabel"} field to reveal a drop-down menu, and select
`Search More...`{.interpreted-text role="guilabel"} to reveal a
`Search: Server Action`{.interpreted-text role="guilabel"} pop-up
window, containing all the pre-configured server action options to
choose from.

To create a new server action from this pop-up window, and click
`New`{.interpreted-text role="guilabel"}.

![The new button found on a server action pop-up in Odoo marketing automation application.](workflow_activities/search-server-action-new-button.png){.align-center}

Either option reveals a blank `Create Server Action`{.interpreted-text
role="guilabel"} pop-up, wherein a custom server action can be created
and configured.

#### SMS activity

If `SMS`{.interpreted-text role="guilabel"} is the
`Activity Type`{.interpreted-text role="guilabel"}, the option to choose
a premade/pre-configured `SMS Template`{.interpreted-text
role="guilabel"} becomes available. A SMS template can also be created
on-the-fly directly from this field.

To create a new template directly from the
`SMS Template`{.interpreted-text role="guilabel"} field, start typing
the title of the new template into the blank field beside
`SMS Template`{.interpreted-text role="guilabel"}, and select
`Create and edit...`{.interpreted-text role="guilabel"} from the
drop-down menu.

![The create and edit email drop-down option on create activities pop-up window.](workflow_activities/create-edit-sms-option.png){.align-center}

Doing so reveals a `Create Marketing Template`{.interpreted-text
role="guilabel"} pop-up window. In that pop-up window, proceed to create
and configure the new SMS template.

![The create marketing template pop-up window to create a SMS template on-the-fly.](workflow_activities/sms-marketing-template-popup.png){.align-center}

### Trigger

The `Trigger`{.interpreted-text role="guilabel"} field on the
`Create Activities`{.interpreted-text role="guilabel"} pop-up form
allows users to choose when the designated workflow activity should be
triggered.

Start by selecting a number in the top field. In the next
`Trigger`{.interpreted-text role="guilabel"} field, designate if it
should be `Hours`{.interpreted-text role="guilabel"},
`Days`{.interpreted-text role="guilabel"}, `Weeks`{.interpreted-text
role="guilabel"}, or `Months`{.interpreted-text role="guilabel"}. Then,
click the final field, where it reads
`beginning of the workflow`{.interpreted-text role="guilabel"} be
default to reveal a a drop-down menu of other trigger options.

![A list of the trigger options available on the workflow activities pop-up form.](workflow_activities/trigger-options-drop-down-menu.png){.align-center}

The trigger options are as follows:

- `beginning of the workflow`{.interpreted-text role="guilabel"}: the
  activity will be triggered at the previously-configured time after the
  beginning of the entire workflow.
- `another activity`{.interpreted-text role="guilabel"}: the activity
  will be triggered at the previously-configured time after another
  specific activity in the workflow.
- `Mail:opened`{.interpreted-text role="guilabel"}: the activity will be
  triggered at the previously-configured time if the sent mail in the
  workflow has been opened by the recipient.
- `Mail:not opened`{.interpreted-text role="guilabel"}: the activity
  will be triggered at the previously-configured time if the sent mail
  in the workflow has not been opened by the recipient.
- `Mail: replied`{.interpreted-text role="guilabel"}: the activity will
  be triggered at the previously-configured time if the sent mail in the
  workflow has been replied to by the recipient.
- `Mail: not replied`{.interpreted-text role="guilabel"}: the activity
  will be triggered at the previously-configured time if the sent mail
  in the workflow has not been replied to by the recipient.
- `Mail: clicked`{.interpreted-text role="guilabel"}: the activity will
  be triggered at the previously-configured time if the sent mail in the
  workflow has been clicked by the recipient, after it\'s been opened.
- `Mail: not clicked`{.interpreted-text role="guilabel"}: the activity
  will be triggered at the previously-configured time if the sent mail
  in the workflow has not been clicked by the recipient, after it\'s
  been opened.
- `Mail: bounced`{.interpreted-text role="guilabel"}: the activity will
  be triggered at the previously-configured time if the sent mail in the
  workflow has been bounced back for any reason.
- `SMS: clicked`{.interpreted-text role="guilabel"}: the activity will
  be triggered at the previously-configured time if the sent SMS in the
  workflow has been clicked by the recipient, after it\'s been opened.
- `SMS: not clicked`{.interpreted-text role="guilabel"}: the activity
  will be triggered at the previously-configured time if the sent SMS in
  the workflow has not been clicked by the recipient, after it\'s been
  opened.
- `SMS: bounced`{.interpreted-text role="guilabel"}: the activity will
  be triggered at the previously-configured time if the sent SMS in the
  workflow has been bounced back for any reason.

### Expiry duration

Next, on the `Create Activities`{.interpreted-text role="guilabel"}
pop-up form is the `Expiry Duration`{.interpreted-text role="guilabel"}
option.

The `Expiry Duration`{.interpreted-text role="guilabel"} checkbox
provides the option to configure the activity to stop the actions after
a specific amount of time (after the scheduled date).

When selected, a `Cancel after`{.interpreted-text role="guilabel"} field
appears, in which the number of `Hours,
Days, Weeks, or Months`{.interpreted-text role="guilabel"} can be
configured for the actions to cease after the initial date.

![A list of the expiry duration options available on the workflow activities pop-up form.](workflow_activities/expiry-duration-field-options.png){.align-center}

### Activity and applied filters

Moving down into the `Domain`{.interpreted-text role="guilabel"} section
of the `Create Activities`{.interpreted-text role="guilabel"} pop-up
form, there is the `Activity Filter`{.interpreted-text role="guilabel"}
and `Applied Filter`{.interpreted-text role="guilabel"} fields.

The `Activity Filter`{.interpreted-text role="guilabel"} field provides
the option to configure a recipient filter domain that applies to this
activity *and* its child activities. In works in the same fashion as a
typical target audience filter.

To add an activity filter, click `Add condition`{.interpreted-text
role="guilabel"} in the `Activity Filter`{.interpreted-text
role="guilabel"} field and proceed to configure a custom activity filter
equation rule(s).

![How to add an activity filter to a workflow activity in Odoo Marketing Automation.](workflow_activities/activity-filter-option.png){.align-center}

This option is not a required field. If left alone, the activity applies
to all records related to the target audience of the overall campaign.

::: seealso
\- `target_audience`{.interpreted-text role="doc"}
:::

The `Applied Filter`{.interpreted-text role="guilabel"} field is
non-configurable. It\'s simply a summary of when the activity will be
performed, *only* if it satisfies the specified domain (e.g. the rules
configured in the `Activity Filter`{.interpreted-text role="guilabel"}
field).

:::: note
::: title
Note
:::

After the activity\'s settings are fully configured, click
`Save & Close`{.interpreted-text role="guilabel"} to save the activity
and return to the marketing automation campaign form,
`Save & New`{.interpreted-text role="guilabel"} to save the activity and
immediately create another one in a fresh
`Create Activities`{.interpreted-text role="guilabel"} pop-up window, or
`Discard`{.interpreted-text role="guilabel"} to delete the activity and
return to the marketing automation campaign form.
::::

## Workflow activity

Once an activity is created and saved, it appears as an activity card in
the `Workflow`{.interpreted-text role="guilabel"} section, located at
the bottom of the marketing automation campaign form. The analytics
related to each activity is displayed as a line graph.

![Typical workflow activity in Odoo Marketing Automation.](workflow_activities/workflow-activity.png){.align-center}

The configured `Trigger`{.interpreted-text role="guilabel"} time for
that activity can be found to the left of the
`Workflow Activity`{.interpreted-text role="guilabel"} card in the
`Workflow`{.interpreted-text role="guilabel"} section.

Once the activity has been triggered, a figure representing the number
of `Success`{.interpreted-text role="guilabel"} or
`Rejected`{.interpreted-text role="guilabel"} activities will be
displayed to the right of the graph.

:::: tip
::: title
Tip
:::

If the `Activity Type`{.interpreted-text role="guilabel"} of the
activity is set to `Email`{.interpreted-text role="guilabel"} or
`SMS`{.interpreted-text role="guilabel"}, there are more in-depth
analytics beneath the activity graph data, detailing how many messages
have been `Sent`{.interpreted-text role="guilabel"}, and what percentage
of those have been `Clicked`{.interpreted-text role="guilabel"},
`Replied`{.interpreted-text role="guilabel"} to, or
`Bounced`{.interpreted-text role="guilabel"}.
::::

## Child activities

There is also the option to add a *child activity* by clicking
`Add child activity`{.interpreted-text role="guilabel"}, located at the
bottom of each activity block in the `Workflow`{.interpreted-text
role="guilabel"} section of a marketing campaign form.

Child activities are sub-activities that are connected to and triggered
by the activity above it, which is known as its *parent activity*. A
child activity is easy to recognize, as its slightly indented beneath
its parent activity.

![A typical child activity indented beneath its parent activity.](workflow_activities/indented-child-activity.png){.align-center}

Odoo provides a number of triggering options to launch a child
activity - all of which depend on the trigger configurations related to
its parent activity. Under the desired parent activity, hover over
`Add child activity`{.interpreted-text role="guilabel"}, to reveal a
menu of child activity trigger options.

![The various child activity trigger options in the workflow section of a campaign.](workflow_activities/child-activity-trigger-options.png){.align-center}

Select any of the following child activity triggers:

- `Add Another Activity`{.interpreted-text role="guilabel"}: instantly
  adds another activity.
- `Opened`{.interpreted-text role="guilabel"}: the next activity will be
  triggered if the recipient opens the mailing.
- `Not Opened`{.interpreted-text role="guilabel"}: the next activity
  will be triggered if the recipient does not open the mailing.
- `Replied`{.interpreted-text role="guilabel"}: the next activity will
  be triggered if the recipient replies to the mailing.
- `Not Replied`{.interpreted-text role="guilabel"}: the next activity
  will be triggered if the recipient does not reply to the mailing.
- `Clicked`{.interpreted-text role="guilabel"}: the next activity will
  be triggered if the recipient clicks on a link included in the
  mailing.
- `Not Clicked`{.interpreted-text role="guilabel"}: the next activity
  will be triggered if the recipient does not click on a link included
  in the mailing.
- `Bounced`{.interpreted-text role="guilabel"}: the next activity will
  be triggered if the mailing is bounced (not sent).

Once a trigger is selected, the user can configure the child activity
the same way they would for a regular workflow activity.

::: seealso
\- `testing_running`{.interpreted-text role="doc"}
:::




--- SOURCE: marketing/marketing_automation/getting_started.md ---

nosearch

:   

# Getting Started

::: {.toctree titlesonly=""}
getting_started/first_campaign getting_started/target_audience
getting_started/workflow_activities getting_started/testing_running
:::




--- SOURCE: marketing/marketing_automation.md ---

nosearch

:   

show-content

:   

hide-page-toc

:   

show-toc

:   

# Marketing Automation

::: seealso
\- [Odoo Tutorials: Marketing](https://www.odoo.com/slides/marketing-27)
:::

::: {.toctree titlesonly=""}
marketing_automation/getting_started marketing_automation/advanced
:::




--- SOURCE: marketing/sms_marketing/essentials/mailing_lists_blacklists.md ---

# Mailing lists and blacklists

Creating or importing mailing lists in Odoo is very useful when curating
content to specific groups of people that already share similar
demographics or interests. Mailing lists are also a great way to get
started if a company is migrating from another system, and already has a
established audience.

Moreover, providing an audience with the option to \'unsubscribe\' from
mailings, helps businesses maintain good customer relations, by giving
recipients the power to control what they are (and aren\'t) sent.

## Mailing lists

In the `SMS Marketing`{.interpreted-text role="guilabel"} app, there\'s
an option on the header menu called `Mailing
Lists`{.interpreted-text role="guilabel"}. When clicked, a sub-menu is
revealed with options for `Mailing Lists`{.interpreted-text
role="guilabel"} and `Mailing List Contacts`{.interpreted-text
role="guilabel"}.

Click `Mailing Lists --> Mailing Lists`{.interpreted-text
role="menuselection"} to see an overview of all mailing lists in the
database.

![View of the main SMS mailing list page on the Odoo SMS Marketing application.](mailing_lists_blacklists/mailing-list-main-page.png){.align-center}

To edit any existing list, select the desired list from the
`Mailing Lists`{.interpreted-text role="guilabel"} page, and proceed to
modify it in a number of ways.

To create a new mailing list, click `Create`{.interpreted-text
role="guilabel"} in the upper left corner of the
`Mailing Lists`{.interpreted-text role="guilabel"} page. Doing so, will
reveal a blank mailing list template form.

![View of the mailing list pop-up window in Odoo SMS Marketing.](mailing_lists_blacklists/sms-mailing-list-popup.png){.align-center}

First, choose a name for the `Mailing List`{.interpreted-text
role="guilabel"}, and activate the option `Is
Public`{.interpreted-text role="guilabel"}, to make the mailing list
accessible to recipients on the `Subscription Management
page`{.interpreted-text role="guilabel"}. Doing so allows users to
update their subscription preferences at any time.

:::: note
::: title
Note
:::

Checking the `Is Public`{.interpreted-text role="guilabel"} box is not
required, but is recommended to maintain good customer relations.
::::

When those fields are filled in, click `Create`{.interpreted-text
role="guilabel"} to finalize the form. Then on the main
`Mailing Lists`{.interpreted-text role="guilabel"} dashboard, the new
mailing list that was just created will be accessible.

To edit or customize the mailing list further, select the mailing list
from the main `Mailing Lists`{.interpreted-text role="guilabel"} page to
reveal the mailing list detail form.

Along the top of the mailing list detail form, there are various
analytical smart buttons displaying statistics for different metrics
related to the mailing list (e.g. `Recipients`{.interpreted-text
role="guilabel"}, `Mailings`{.interpreted-text role="guilabel"}, etc.).

To review or edit any of those elements, click the desired smart button
to reveal a separate page with in-depth data associated with the mailing
list.

To make changes to the mailing list itself, click the
`Edit`{.interpreted-text role="guilabel"} button in the upper-left
corner of the mailing list detail form.

![View of the mailing list template form in Odoo SMS Marketing.](mailing_lists_blacklists/sms-mailing-list.png){.align-center}

:::: note
::: title
Note
:::

Don\'t forget to hit the `Save`{.interpreted-text role="guilabel"}
button once changes have been made.
::::

## Mailing lists contacts

Access contacts information from one or more mailing lists navigate to
`Mailing Lists
--> Mailing List Contacts`{.interpreted-text role="menuselection"} to
reveal a dashboard with with all the contacts associated with one or
more of the configured mailing lists in the database.

![View of the mailing lists contact page in the Odoo SMS Marketing application.](mailing_lists_blacklists/mailing-list-contacts-page.png){.align-center}

:::: note
::: title
Note
:::

By default, Odoo reveals the `Mailing List Contacts`{.interpreted-text
role="guilabel"} page with the `Exclude
Blacklisted Phone`{.interpreted-text role="guilabel"} filter in the
search bar. Therefore only showing contact information for recipients
who still want to receive communications and mailings.
::::

### Communication history in the Chatter

An accessible record of every sent mailing(s) is kept on each
recipient\'s *chatter* section, located beneath a recipient\'s contact
form (in the *Contacts* application).

Database users can reference the chatter to easily keep track of
communications, and see a history of interactions with contacts and
prospects.

For example, sales representatives can use the chatter to quickly find
out which `SMS (Short
Message Service)`{.interpreted-text role="abbr"} mailing promotions a
certain customer has received (or not received).

![View of what the chatter looks like in the Odoo Contacts app.](mailing_lists_blacklists/sms-marketing-chatter.png){.align-center}

## Blacklist

Odoo *SMS Marketing* has a `Blacklist`{.interpreted-text
role="guilabel"} feature that provides recipients with the power to add
their phone number to a list of people who no longer want to receieve
communications or mailings.

This is also known as the unsubscribe process: customers will
automatically be added onto a *blacklist*, if they click
`Unsubscribe`{.interpreted-text role="guilabel"}, via their
`Subscription Management`{.interpreted-text role="guilabel"} page.
Customers can also be added manually to the blacklist, if necessary.

To see a complete collection of blacklisted numbers, navigate to the
`SMS Marketing
app --> Configuration --> Blacklisted Phone Numbers`{.interpreted-text
role="menuselection"} to reveal a dashboard containing every blacklisted
phone number in the database.

![SMS Blacklist menu in the application.](mailing_lists_blacklists/sms-blacklist-menu.png){.align-center}

To manually add a number to a blacklist, click the
`Create`{.interpreted-text role="guilabel"} button in the upper-left
corner of the dashboard and enter the phone number on the next page\'s
form. There\'s also a checkbox to indicate whether that particular phone
numnber is `Active`{.interpreted-text role="guilabel"} (or not).

![SMS Blacklist menu in the application.](mailing_lists_blacklists/sms-blacklist-create.png){.align-center}

Once the form is completed, click `Save`{.interpreted-text
role="guilabel"} to add it to the `Blacklisted Phone
Numbers`{.interpreted-text role="guilabel"} list. To remove any number
from the blacklist, select the desired number on the dashboard, and
then, on the phone number\'s form, click `Unblacklist`{.interpreted-text
role="guilabel"}.

### Importing blacklists

During a software/platform migration, it is possible to import an
already existing blacklist of contacts. This would include customers,
who have already asked to be blacklisted\` on `SMS
(Short Message Service)`{.interpreted-text role="abbr"} mailings.

To do that, navigate to
`SMS Marketing app --> Configuration --> Blacklisted Phone
Numbers`{.interpreted-text role="menuselection"}, and then select the
`Favorites`{.interpreted-text role="guilabel"} drop-down menu (beneath
the search bar), and click `Import records`{.interpreted-text
role="guilabel"}.

![View of how to import a blacklist in Odoo SMS Marketing.](mailing_lists_blacklists/import-blacklist.png){.align-center}




--- SOURCE: marketing/sms_marketing/essentials/sms_campaign_settings.md ---

# SMS campaign settings

Utilizing `SMS (Short Message Service)`{.interpreted-text role="abbr"}
campaigns with Odoo *SMS Marketing* isn\'t just an effective
advertisement strategy, it\'s also a great way to remind people about
upcoming events, issued invoices, and so much more.

But, before `SMS (Short Message Service)`{.interpreted-text role="abbr"}
campaigns can be created (and sent), a few specific settings and
features must be enabled first.

## SMS campaign setting

To enable `SMS (Short Message Service)`{.interpreted-text role="abbr"}
campaigns in Odoo, make sure the *Mailing Campaigns* feature is
activated by going to
`Email Marketing --> Configuration --> Settings`{.interpreted-text
role="menuselection"}, and then enable
`Mailing Campaigns`{.interpreted-text role="guilabel"} and
`Save`{.interpreted-text role="guilabel"} the changes.

![View of the mailing campaigns setting in Odoo.](sms_campaign_settings/sms-mailing-campaigns.png){.align-center}

:::: note
::: title
Note
:::

Activating the *Mailing Campaigns* feature in the *General Settings*
also enables the *A/B Test* feature.
::::

Once the setting is enabled, navigate back to the
`SMS Marketing`{.interpreted-text role="menuselection"} app, and notice
the `Campaigns`{.interpreted-text role="guilabel"} header menu is now
available for use. Similarly, the `A/B Test`{.interpreted-text
role="guilabel"} tab is now also available on every
`SMS (Short Message Service)`{.interpreted-text role="abbr"} template
form.

## A/B tests

`A/B Tests`{.interpreted-text role="guilabel"} allows any
`SMS (Short Message Service)`{.interpreted-text role="abbr"} mailings to
be tested against other versions within the same campaign, in order to
compare which version is the most successful in producing engagement
and/or conversion outcomes.

On an `SMS (Short Message Service)`{.interpreted-text role="abbr"}
template form, under the `A/B Tests`{.interpreted-text role="guilabel"}
tab, initially, there\'s only a single checkbox labeled:
`Allow A/B Testing.`{.interpreted-text role="guilabel"}

When clicked, a series of other options appear.

![The A/B Test tab is located on an Odoo SMS Marketing app campaign form.](sms_campaign_settings/ab-tests-sms.png){.align-center}

In the first field, enter a desired percentage of recipients to conduct
the A/B Test on.

Beneath the percentage field is the `Winner Selection`{.interpreted-text
role="guilabel"} field. This is what Odoo will use to determine the
successful result of an A/B Test. In other words, this tells Odoo how to
pick a winning A/B test.

The following sections are available: `Manual`{.interpreted-text
role="guilabel"}, `Highest Click Rate`{.interpreted-text
role="guilabel"}, `Leads`{.interpreted-text role="guilabel"},
`Quotations`{.interpreted-text role="guilabel"}, or
`Revenues`{.interpreted-text role="guilabel"}.

Finally, the `Send Final On`{.interpreted-text role="guilabel"} field is
listed. This represents the date-time that Odoo uses as a deadline to
determine the winning mailing variation. Then, Odoo sends that winning
mailing variation to the remaining recipients, who weren\'t involved in
the test, at that prior date and time.

:::: tip
::: title
Tip
:::

Quickly create different versions of the mailing to add to the A/B Test
by clicking the `Create an Alternate Version`{.interpreted-text
role="guilabel"} button.
::::

:::: note
::: title
Note
:::

Remember, the winning mailing variation is based on the criteria
selected in the `Winner Selection`{.interpreted-text role="guilabel"}
field.
::::

## Campaigns page

To create, edit, or analyze any campaign, click
`Campaigns`{.interpreted-text role="menuselection"} in the header menu
of the `SMS Marketing`{.interpreted-text role="guilabel"} app. On the
`Campaigns`{.interpreted-text role="guilabel"} page, each campaign
displays various information related to the mailings associated with
that campaign (e.g. number of emails, social posts, SMSs, and push
notifications).

![Dasbhoard view of different Campaigns in the Odoo SMS Marketing app, separated by stage.](sms_campaign_settings/campaigns-page.png){.align-center}

## Campaign templates

Click `Create`{.interpreted-text role="guilabel"} to create a new
campaign, and Odoo reveals a blank campaign template form to fill out.
Alternatively, select any previously-made campaign in order to
duplicate, review, or edit its campaign template form.

![View of an SMS campaign template in Odoo SMS marketing.](sms_campaign_settings/sms-campaign-template.png){.align-center}

With each campaign, the options to `Send New Mailing`{.interpreted-text
role="guilabel"}, `Send SMS`{.interpreted-text role="guilabel"},
`Send Social Post`{.interpreted-text role="guilabel"}, and
`Push Notifications`{.interpreted-text role="guilabel"} are available
above the template form.

Whenever one of those communication options is added to the campaign,
Odoo will create a new corresponding tab on the template form, where
those types of messages can be reviewed or edited, along with various
data sets related to each specific mailing.

At the top of the template, there are various analytical smart buttons.
When clicked, Odoo reveals in-depth metrics related to that specific
topic (e.g. `Engagement`{.interpreted-text role="guilabel"},
`Opportunities`{.interpreted-text role="guilabel"}, etc.) on a separate
page.

Beneath the smart buttons, are fields for
`Campaign Name`{.interpreted-text role="guilabel"} and
`Responsible`{.interpreted-text role="guilabel"}. Odoo also allows for
various `Tags`{.interpreted-text role="guilabel"} to be added, as well
(if necessary).

## Sending SMSs through the Contacts app

Sending `SMS (Short Message Service)`{.interpreted-text role="abbr"}
mailings directly through a contact\'s form is available by default.

In order to send an `SMS (Short Message Service)`{.interpreted-text
role="abbr"} in this fashion, navigate to the
`Contacts`{.interpreted-text role="menuselection"} app, select the
desired contact in the database, and click on the
`SMS`{.interpreted-text role="guilabel"} icon on the contact form (next
to the `Phone Number`{.interpreted-text role="guilabel"} field).

![The SMS icon is located on an individual\'s contact form in Odoo Contacts.](sms_campaign_settings/sms-contact-form.png){.align-center}

To send a message to multiple contacts at once, navigate to the main
`Contacts`{.interpreted-text role="menuselection"} app main dashboard,
choose the `List View`{.interpreted-text role="guilabel"}, and select
all the desired contacts to whom the message should be sent. Then, under
`Action`{.interpreted-text role="guilabel"}, select
`Send SMS`{.interpreted-text role="guilabel"}.

![Select a number of contacts, click action, and select send multiple SMSs.](sms_campaign_settings/sms-contacts-action-send-message.png){.align-center}

## Set up SMS templates for future use

In order to set up `SMS Templates`{.interpreted-text role="guilabel"}
for future use, activate `developer mode
<developer-mode>`{.interpreted-text role="ref"}, by navigating to the
main Odoo dashboard that is full of apps, and select the
`Settings app`{.interpreted-text role="menuselection"}. Then, scroll
down to the `Developer Tools`{.interpreted-text role="guilabel"}
section, and click `Activate the Developer Mode`{.interpreted-text
role="guilabel"}.

Once *developer mode* is activated, the main Odoo dashboard appears once
more, with a now-visible bug icon, which is located at the top-right
corner of the dashboard; this bug icon indicates that developer mode is
currently active.

Next return to the `Settings app`{.interpreted-text
role="menuselection"} and, in the now-visible header menus at the top,
choose `Technical --> SMS Templates`{.interpreted-text
role="menuselection"} to begin setting up `SMS (Short Message
Service)`{.interpreted-text role="abbr"} templates for future marketing
campaigns.

![Select the SMS Template option in the Technical dropdown on the Settings app.](sms_campaign_settings/sms-template-setting.png){.align-center}

Inside of the `SMS Templates`{.interpreted-text role="guilabel"}
dashboard, Odoo reveals an entire page of `SMS (Short
Message Service)`{.interpreted-text role="abbr"} templates. The default
`List`{.interpreted-text role="guilabel"} view showcases each
template\'s name, and to which recipients it applies.

On this page, `SMS (Short Message Service)`{.interpreted-text
role="abbr"} templates can be edited or created from scratch.

![The SMS Templates page in Odoo is available after enabling developer mode in the General
Settings](sms_campaign_settings/sms-template.png){.align-center}




--- SOURCE: marketing/sms_marketing/essentials/sms_essentials.md ---

# SMS essentials

Utilizing `SMS (Short Message Service)`{.interpreted-text role="abbr"}
outreach in communication strategies can help companies expand their
market reach, especially in some countries, where emails might not be
very common, or even used at all.

Odoo\'s *SMS Marketing* application can also help boost conversion rates
around valuable actions, such as event registrations, free trials,
purchases, etc., since text and mobile-based marketing channels
typically yield higher `CTOR (click-to-open rate)`{.interpreted-text
role="abbr"} and `CTR (click-through
rate)`{.interpreted-text role="abbr"} outcomes.

## SMS marketing dashboard

When the application is opened, Odoo displays the main
`SMS Marketing`{.interpreted-text role="guilabel"} dashboard, which
showcases the various SMS mailings that have been created, along with
pertinent information and data related to that specific message.

The `Kanban`{.interpreted-text role="guilabel"} view is the default Odoo
uses when the application is opened, which provides an organized display
of the SMS mailings that have been created, and what their current
status is at the moment.

:::: note
::: title
Note
:::

An `SMS (Short Message Service)`{.interpreted-text role="abbr"} mailing
can have one of the following statuses: `Draft`{.interpreted-text
role="guilabel"}, `In Queue`{.interpreted-text role="guilabel"},
`Sending`{.interpreted-text role="guilabel"}, or
`Sent`{.interpreted-text role="guilabel"}.
::::

In the upper right corner of the main `SMS Marketing`{.interpreted-text
role="guilabel"} dashboard, there are a few different view options to
choose from. Each one provides a unique take on the same SMS
information.

The `List`{.interpreted-text role="guilabel"} view provides the same
useful data related to SMS mailings, but in a more traditional list
layout.

The `Calendar`{.interpreted-text role="guilabel"} view provides a simple
calendar, making it easy to see when SMS mailings are going to be sent
(or have been sent). If a future date is clicked, Odoo reveals a blank
SMS template that, when completed, will be scheduled to be sent on that
specific future date.

Lastly, the `Graph`{.interpreted-text role="guilabel"} view visualizes
that same SMS-related data in series of graphs and charts. Odoo also
provides various ways to sort and group the data for more detailed
analysis.

## Create SMS messages

To start, click `Create`{.interpreted-text role="guilabel"} on the main
`SMS Marketing`{.interpreted-text role="guilabel"} dashboard, and Odoo
reveals a blank SMS template form, which can be configured in a number
of different ways.

![Creating an SMS marketing template.](sms_essentials/sms-create.png){.align-center}

First, give the mailing a `Subject`{.interpreted-text role="guilabel"},
which describes what the mailing is about.

Next, in the `Recipients`{.interpreted-text role="guilabel"} field,
choose to whom this `SMS (Short Message Service)`{.interpreted-text
role="abbr"} will be sent. By default, Odoo has
`Mailing List`{.interpreted-text role="guilabel"} selected. If this is
the desired `Recipients`{.interpreted-text role="guilabel"} field
option, specify which mailing list Odoo should send this `SMS
(Short Message Service)`{.interpreted-text role="abbr"} to in the
`Select Mailing List`{.interpreted-text role="guilabel"} field.

:::: note
::: title
Note
:::

To create (or edit) a mailing list, go to
`Mailing Lists --> Mailing List`{.interpreted-text
role="menuselection"}. There, Odoo displays all previously created
mailing lists, along with various types of data related to that specific
list (e.g. number of contacts, mailings, recipients, etc.).

To learn more about mailing lists and contacts, check out
`mailing_lists_blacklists`{.interpreted-text role="doc"}.
::::

![View of the mailing list page in the SMS marketing application.](sms_essentials/sms-mailing-list.png){.align-center}

To reveal all the possible options in the `Recipients`{.interpreted-text
role="guilabel"} field, click the field to see all the choices Odoo
makes available.

When another field (other than `Mailing List`{.interpreted-text
role="guilabel"}) is selected, the option to specify that chosen field
even further becomes available --- either with a default recipient
filter equation that appears automatically (which can be customized to
fit any business need), or, if no default recipient filter equation is
present, an `Add Filter`{.interpreted-text role="guilabel"} button will
appear.

Clicking the `Add Filter`{.interpreted-text role="guilabel"} button,
reveals fully customizable domain rule fields, which can be configured
similar to an equation. You can create multiple recipient rules, if
necessary.

Then, Odoo will only send the
`SMS (Short Message Service)`{.interpreted-text role="abbr"} to
recipients who fit into whatever criteria is configured in those fields.
Multiple rules can be added.

::: example
If `Contact`{.interpreted-text role="guilabel"} is chosen, all of the
*Contacts* records in the Odoo database (vendors, customers, etc.) will
receive the `SMS (Short Message Service)`{.interpreted-text
role="abbr"}, by default --- unless more specific recipient rules are
entered.

For instance, the message below will only be sent to contacts in the
database that are located in the United States (e.g.
[Country]{.title-ref} \> [Country Name]{.title-ref} equals [United
States]{.title-ref}), and they haven\'t blacklisted themselves from any
mailings (e.g. [Blacklist]{.title-ref} \> [is]{.title-ref} \> [not
set]{.title-ref}).

![Contact recipients on SMS marketing.](sms_essentials/contact-recipient.png){.align-center}
:::

### Writing SMS messages

Enter the content of the `SMS (Short Message Service)`{.interpreted-text
role="abbr"} in the text field, found in the
`SMS Content`{.interpreted-text role="guilabel"} tab. Links and emojis
can also be included. Beneath the text field, Odoo displays how many
characters are used in the message, along with how many
`SMS (Short Message
Service)`{.interpreted-text role="abbr"} mailings it will take to
deliver the complete message.

:::: tip
::: title
Tip
:::

To check the price of sending an
`SMS (Short Message Service)`{.interpreted-text role="abbr"} for a
country, click on the `Information`{.interpreted-text role="guilabel"}
icon.
::::

![SMS price check icon.](sms_essentials/sms-price-check.png){.align-center}

:::: note
::: title
Note
:::

Credits must be purchased from Odoo in order to take advantage of the
*SMS Marketing* app; `SMS (Short Message Service)`{.interpreted-text
role="abbr"} messages will not be sent without credits.
::::

::: seealso
[Odoo SMS - FAQ](https://iap-services.odoo.com/iap/sms/pricing)
:::

### Track links used in SMS messages

When links are used in `SMS (Short Message Service)`{.interpreted-text
role="abbr"} messages, Odoo automatically generates link trackers to
gather analytical data and metrics related to those specific links,
which can be found by going to
`Configuration --> Link Tracker`{.interpreted-text
role="menuselection"}.

![SMS Link Tracker page.](sms_essentials/sms-link-tracker.png){.align-center}

## Adjust SMS settings

Under the `Settings`{.interpreted-text role="guilabel"} tab of the SMS
template, there is an option to `Include
opt-out link`{.interpreted-text role="guilabel"}. If activated, the
recipient is able to unsubscribe from the mailing list, thus avoiding
all future mailings.

An employee can be designated as the `Responsible`{.interpreted-text
role="guilabel"} in the `Tracking`{.interpreted-text role="guilabel"}
section of the `Settings`{.interpreted-text role="guilabel"} tab, as
well.

![SMS Settings tab.](sms_essentials/sms-settings-tab.png){.align-center}

## Send SMS messages

Once a mailing is created, choose when Odoo should deliver the message
from the following options:

- `Send`{.interpreted-text role="guilabel"}: sends the message
  immediately. Consider using this option if the recipient list is
  highly refined, or in cases that involve fast approaching deadlines,
  such as a \"flash sale.\"
- `Schedule`{.interpreted-text role="guilabel"}: choose a day (and time)
  for Odoo to send the mailing. This is typically the best option for
  mailings related to a specific event. Such a method can also be used
  to promote a limited-time offer, or to help plan a company\'s content
  strategy in advance.
- `Test`{.interpreted-text role="guilabel"}: allows for an
  `SMS (Short Message Service)`{.interpreted-text role="abbr"} to be
  sent to one or multiple numbers for test purposes. Remember to use a
  comma between phone numbers if multiple numbers are used as
  recipients.

## Visualize reports

On the `Reporting`{.interpreted-text role="guilabel"} page (accessible
via the `Reporting`{.interpreted-text role="menuselection"} option in
the header menu), there are options to apply different combinations of
`Filters`{.interpreted-text role="guilabel"} and
`Measures`{.interpreted-text role="guilabel"} to view metrics in a
number of different layouts (e.g. `Graph`{.interpreted-text
role="guilabel"}, `List`{.interpreted-text role="guilabel"}, and
`Cohort`{.interpreted-text role="guilabel"} views.)

Each `Reporting`{.interpreted-text role="guilabel"} metric view option
allows for more extensive performance analysis of
`SMS (Short Message Service)`{.interpreted-text role="abbr"} mailings.

For example, while in the default `Graph`{.interpreted-text
role="guilabel"} view, `SMS (Short Message Service)`{.interpreted-text
role="abbr"} data is visualized as different graphs and charts, which
can be sorted and grouped in various ways (e.g.
`Measures`{.interpreted-text role="guilabel"} drop down menu).

![Reporting page in SMS Marketing.](sms_essentials/sms-reporting-page.png){.align-center}

:::: tip
::: title
Tip
:::

SMS messages can be sent using automated actions in Odoo. Odoo *Studio*
is required to use automated actions.

To install Odoo *Studio*, go to `Apps application`{.interpreted-text
role="menuselection"}. Then, using the `Search...`{.interpreted-text
role="guilabel"} bar, and search for [studio]{.title-ref}.

If it is not already installed, click `Install`{.interpreted-text
role="guilabel"}.

Adding the *Studio* application upgrades the subscription status to
*Custom*, which increases the cost. Consult
[support](https://www.odoo.com/contactus), or reach out to the
database\'s customer success manager, with any questions on upgrading.

To use automated actions, navigate in
`developer mode <developer-mode>`{.interpreted-text role="ref"}, to
`Settings app --> Technical menu --> Automation section --> Automated Actions`{.interpreted-text
role="menuselection"}. Then, click `New`{.interpreted-text
role="guilabel"} to create a new action.

Enter an `Action Name`{.interpreted-text role="guilabel"}, and select a
`Model`{.interpreted-text role="guilabel"} to implement this action on.

Ensure the `Active`{.interpreted-text role="guilabel"} toggle is set to
*on*, represented by a full-green switch, in order for the automated
action to run.

Set the `Trigger`{.interpreted-text role="guilabel"} to either
`On Creation`{.interpreted-text role="guilabel"},
`On Update`{.interpreted-text role="guilabel"},
`On Creation & Update`{.interpreted-text role="guilabel"},
`On Deletion`{.interpreted-text role="guilabel"}, `Based on Form
Modification`{.interpreted-text role="guilabel"}, or
`Based on Timed Condition`{.interpreted-text role="guilabel"}.

Based on the selection for the `Trigger`{.interpreted-text
role="guilabel"}, additional fields may populate.

Under the `Apply on`{.interpreted-text role="guilabel"} field, a record
filter using a domain can be created. Ensure a model has been selected
before setting any domains on the `Apply on`{.interpreted-text
role="guilabel"} field. Click `Edit Domain`{.interpreted-text
role="guilabel"} to set record parameters.

Under `Action To Do`{.interpreted-text role="guilabel"} drop-down field,
select `Send SMS Text Message`{.interpreted-text role="guilabel"}. Next,
set the `SMS Template`{.interpreted-text role="guilabel"}, and choose
whether the SMS message should be logged as a note, by ticking the
checkbox next to `Log as Note`{.interpreted-text role="guilabel"}.

![Automated action template with action to do, SMS template and log as note highlighted.](sms_essentials/automated-action-sms.png){.align-center}

To implement the automated action, save it; either by navigating away,
or manually saving it (using the `☁️ (cloud)`{.interpreted-text
role="guilabel"} icon).
::::

::: seealso
\- `sms_campaign_settings`{.interpreted-text role="doc"} -
`mailing_lists_blacklists`{.interpreted-text role="doc"} -
`../../../essentials/in_app_purchase`{.interpreted-text role="doc"}
:::




--- SOURCE: marketing/sms_marketing/essentials.md ---

nosearch

:   

# Essentials

::: {.toctree titlesonly=""}
essentials/sms_essentials essentials/sms_campaign_settings
essentials/mailing_lists_blacklists
:::




--- SOURCE: marketing/sms_marketing/pricing/pricing_and_faq.md ---

# SMS Pricing and FAQ {#pricing/pricing_and_faq}

## What do I need to send SMSs?

SMS Text Messaging is an In-App Purchase (IAP) service that *requires
prepaid credits* to work.

## How many types of SMSs are there?

There are 2 types: GSM7 and UNICODE.

**GSM7** is the standard format, with a limit of 160 characters per
message, that includes the following characters:

![GSM7 characters available in Odoo SMS Marketing.](pricing_and_faq/faq1.png){.align-center}

**UNICODE** is the format applied if a special character, that *is not*
in the GSM7 list, is used. Limit per SMS: 70 characters.

:::: note
::: title
Note
:::

For GSM7 SMS the size limit is 160 characters, and for Unicode is 70.
*Above these limits, the content is divided into a multi-part message*
and the limit of characters is lowered to 153 for GSM7 and to 67 for
Unicode. Then, in real-time, the system displays the number of SMS
mailings the message represents.
::::

## How much does it cost to send an SMS?

The price of an SMS depends on the destination and the length (number of
characters) of the message. To see the **price per country, please
consult**: [Odoo SMS -
FAQ](https://iap-services.odoo.com/iap/sms/pricing#sms_faq_01).

The number of SMSs a message represents will always be available in the
database.

![Number of GSM7 characters that fit in an SMS message in Odoo SMS Marketing.](pricing_and_faq/faq2.png){.align-center}

## How to buy credits

Go to `Settings --> Buy Credits`{.interpreted-text
role="menuselection"}.

![Buying credits for SMS Marketing in Odoo settings.](pricing_and_faq/faq3.png){.align-center}

Or go to `Settings --> View my Services`{.interpreted-text
role="menuselection"}.

![Using Odoo IAP to recharge credits for SMS Marketing in Odoo settings.](pricing_and_faq/faq4.png){.align-center}

:::: tip
::: title
Tip
:::

If Odoo Online (Saas) is being used, along with the Enterprise version,
free trial credits are available to test the feature.
::::

## More common questions

1.  | **Is there an expiration time for my credits?**
    | No, credits do not expire.

2.  | **Can I send an SMS to a phone number (which is not a mobile
      phone) because I see the icon in front of the field "phone"?**
    | Only if that phone number supports SMS (e.g. SIP phones).

3.  | **Do I receive an invoice to buy my credits?**
    | Yes.

4.  | **Can the recipient answer me?**
    | No, it is not possible to reply to the SMS.

5.  | **What happens if I send multiple SMSs at once, but I don\'t have
      enough credits to send them all?**
    | Multiple SMS communications at once at are counted as a single
      transaction, so no SMSs will be sent until there are enough
      credits to send them all.

6.  | **Do I have a history of the sent SMSs?**
    | A history of sent SMSs, along with all pertinent information
      related to its sent contacts (and the message itself), can be
      found in the `Sent`{.interpreted-text role="guilabel"} column of
      the main `SMS  Marketing`{.interpreted-text role="guilabel"}
      dashboard (while in `Kanban`{.interpreted-text role="guilabel"}
      view).

    > For more detailed information, select a desired SMS from the main
    > dashboard (in `Kanban`{.interpreted-text role="guilabel"} view),
    > and click on either link in the blue banner above the SMS detail
    > form to learn more.

7.  | **Can I send as many SMSs I want at once?**
    | Yes, if you have enough credits.

8.  | **If an SMS is sent to a number that doesn\'t exist in the list of
      recipients, will credits be lost?**
    | No, not if the phone number is incorrectly formatted (e.g. too
      many digits). However, if the SMS is sent to the wrong person (or
      to a fake number), the credit for that SMS will be lost.

9.  | **What happens if I send my SMS to a paying number (e.g.: a
      contest to win a ticket for a festival)?**
    | The SMS will not be delivered to that kind of number, so no
      charges will be made.

10. | **Can I identify the numbers that do not exist when I send several
      SMSs?**
    | Only the ones that have an invalid format.

11. | **How does the GDPR regulation affect this service?**
    | Please find our [Privacy Policy
      here](https://iap.odoo.com/privacy#sms).

12. | **Can I use my own SMS provider?**
    | Yes, but it is not possible out-of-the-box. Odoo experts can help
      customize a database to allow for the use of a personal SMS
      provider. Please check our success packs
      [here](https://www.odoo.com/pricing-packs).




--- SOURCE: marketing/sms_marketing/pricing.md ---

nosearch

:   

# Pricing and FAQ

::: {.toctree titlesonly=""}
pricing/pricing_and_faq
:::




--- SOURCE: marketing/sms_marketing.md ---

nosearch

:   

show-content

:   

hide-page-toc

:   

show-toc

:   

# SMS Marketing

::: seealso
\- [Odoo Tutorials: Marketing](https://www.odoo.com/slides/marketing-27)
:::

::: {.toctree titlesonly=""}
sms_marketing/essentials sms_marketing/pricing
:::




--- SOURCE: marketing/social_marketing/essentials/social_campaigns.md ---

# Social marketing campaigns

Social marketing campaigns help companies connect directly with the
marketplace. These campaigns are helpful when introducing a new product
to customers, explaining the value of a product or service, or when
advertising an upcoming event or product release.

The most effective social marketing campaigns typically involve multiple
channels to maximize content distribution, and Odoo\'s *Social
Marketing* application acts as a singular control center to monitor,
plan, post, track, and analyze all of the various content and content
channels within a single dashboard.

## Campaigns page

To access a complete overview of all social marketing campaigns, open
the `Social
Marketing`{.interpreted-text role="menuselection"} application, and
click `Campaigns`{.interpreted-text role="menuselection"} from the
header menu. Doing so reveals a separate page with every campaign in a
default kanban view.

![View of the campaigns page in the Odoo Social Marketing application.](social_campaigns/campaigns-page.png){.align-center}

Each *stage* in the kanban view can be edited, by clicking the
`gear icon`{.interpreted-text role="guilabel"} to the left of the
`+ (plus sign)`{.interpreted-text role="guilabel"} - located to the
right of the stage title.

:::: note
::: title
Note
:::

The **gear icon** *only* appears when the cursor hovers to the left of
the **+ (plus sign)**. When the gear icon is clicked, a drop-down menu
reveals the options: `Fold`{.interpreted-text role="guilabel"},
`Edit Stage`{.interpreted-text role="guilabel"}, and
`Delete`{.interpreted-text role="guilabel"}.
::::

![View of the campaigns page in the Odoo Social Marketing application.](social_campaigns/campaign-stage-dropdown.png){.align-center}

Clicking `Fold`{.interpreted-text role="guilabel"} minimizes that
specific stage\'s column. The stage column can be restored by clicking
the folded version of it on the main `Campaigns`{.interpreted-text
role="guilabel"} dashboard in the default kanban view.

Selecting `Edit Stage`{.interpreted-text role="guilabel"} reveals a
pop-up window, in which the name and the sequence of the stage can be
modified. If changes are made, be sure to click `Save`{.interpreted-text
role="guilabel"}.

Clicking `Delete`{.interpreted-text role="guilabel"} removes the stage
entirely.

:::: note
::: title
Note
:::

To add a new stage to the pipeline, side-scroll to the right on the
`Campaigns`{.interpreted-text role="guilabel"} dashboard, click
`Add a Column`{.interpreted-text role="guilabel"}, enter in the desired
information, and click `Add`{.interpreted-text role="guilabel"}.
::::

:::: tip
::: title
Tip
:::

The same social marketing campaign information on the
`Campaigns`{.interpreted-text role="guilabel"} dashboard can also be
viewed as a list, by selecting the `List`{.interpreted-text
role="guilabel"} option, located under the search bar, in the
upper-right corner.
::::

## Create social marketing campaigns

First, open the `Social Marketing`{.interpreted-text
role="menuselection"} application, and select
`Campaigns`{.interpreted-text role="guilabel"} from the header menu.

On the `Campaigns`{.interpreted-text role="guilabel"} dashboard, a new
campaign can be created by clicking the quick add
`+ (plus sign)`{.interpreted-text role="guilabel"} located in the
top-right corner of each stage in the pipeline, visible in the kanban
view. Campaigns can also be created by clicking
`Create`{.interpreted-text role="guilabel"} in the upper-left corner of
the `Campaigns`{.interpreted-text role="guilabel"} dashboard.

Both options reveal a new campaign detail window directly on the
`Campaigns`{.interpreted-text role="guilabel"} dashboard when clicked.

![View of the quick add option for campaigns in Odoo Social Marketing.](social_campaigns/quick-add-campaign.png){.align-center}

Here, the `Campaign Name`{.interpreted-text role="guilabel"},
`Responsible`{.interpreted-text role="guilabel"}, and
`Tags`{.interpreted-text role="guilabel"} can be entered. When all
modifications are complete, click `Add`{.interpreted-text
role="guilabel"} to add the campaign to the database.

## Edit social marketing campaigns

In order to edit a campaign in greater detail, and create/send various
forms of communications related to it, the template page for that
campaign must be accessed and modified, accordingly. There are multiple
ways to access a template page for a campaign.

- After entering the pertinent information in the
  `Quick Add`{.interpreted-text role="guilabel"} campaign drop-down,
  click `Edit`{.interpreted-text role="guilabel"}.
- Simply select the desired campaign from the
  `Campaigns`{.interpreted-text role="guilabel"} dashboard in list or
  kanban view.
- On the `Campaigns`{.interpreted-text role="guilabel"} dashboard in the
  kanban view, select the `⋮ (three dots)`{.interpreted-text
  role="guilabel"} drop-down menu on the desired campaign, and select
  `Edit`{.interpreted-text role="guilabel"}.

Any of the above routes will reveal the *Campaign Template* page for
that specific campaign.

## Social marketing campaign templates

On a *Campaign Template* page, numerous elements can be
customized/modified, and various forms of communications can be created,
modified, and sent or scheduled. Below is a sample of a completed
campaign template.

![View of a sample campaign template page in Odoo Social Marketing.](social_campaigns/create-campaign.png){.align-center}

:::: important
::: title
Important
:::

In order for the `Send New Mailing`{.interpreted-text role="guilabel"}
option to appear on campaign templates, make sure the *Mailing
Campaigns* feature is enabled in the *Email Marketing* app. To do that,
navigate to
`Email Marketing --> Configuration --> Settings`{.interpreted-text
role="menuselection"}, activate `Mailing
Campaigns`{.interpreted-text role="guilabel"}, and click
`Save`{.interpreted-text role="guilabel"}.
::::

:::: note
::: title
Note
:::

In order for the `Send SMS`{.interpreted-text role="guilabel"} option to
appear, the Odoo *SMS Marketing* application must be installed on the
database.
::::

## Add content and communications to campaigns

If the proper settings and applications are installed (as instructed
above), there are four forms of communication/content options that can
be added to campaigns. Each of these options are displayed as buttons in
the upper-left corner of the campaign template page.

- `Send New Mailing`{.interpreted-text role="guilabel"}: reveals a blank
  email template on a separate page, in which the message can be fully
  customized in a variety of ways.
- `Send SMS`{.interpreted-text role="guilabel"}: reveals a blank SMS
  template on a separate page, in which a SMS communication can be
  created and configured.
- `Send Social Post`{.interpreted-text role="guilabel"}: reveals a blank
  social post template on a separate page, in which a post can be
  created, and applied to social media accounts that are already
  connected to the database.
- `Push Notification`{.interpreted-text role="guilabel"}: reveals a
  similar blank social post template on a separate page, however, the
  `Push Notification`{.interpreted-text role="guilabel"} options are
  already pre-selected in the `Post
  on`{.interpreted-text role="guilabel"} field.

Whichever form of communication is created, once it\'s completed, Odoo
returns to the `Campaign Template`{.interpreted-text role="guilabel"}
page, showcasing that new content in its corresponding tab (e.g.
`Mailings`{.interpreted-text role="guilabel"}, `SMS`{.interpreted-text
role="guilabel"}, `Social Media`{.interpreted-text role="guilabel"},
and/or `Push
Notifications`{.interpreted-text role="guilabel"}).

As content and communications are added to a campaign, tabs for those
specific mediums appear, along with a variety of analytical smart
buttons (e.g. `Revenues`{.interpreted-text role="guilabel"},
`Quotations`{.interpreted-text role="guilabel"},
`Leads`{.interpreted-text role="guilabel"}, etc.).

These smart buttons, located at the top of the template, display
different metrics related to the campaign, and its various
communications and content. Clicking any smart button reveals a separate
page dedicated to that particular element of the campaign, allowing for
quicker, more organized analysis.

:::: note
::: title
Note
:::

The Odoo *Social Marketing* app is integrated with other Odoo
applications, such as *Sales*, *Invoicing*, *CRM*, and *Website*.
::::

::: seealso
`/applications/marketing/social_marketing/essentials/social_essentials`{.interpreted-text
role="doc"}
:::




--- SOURCE: marketing/social_marketing/essentials/social_essentials.md ---

# Social marketing essentials

Odoo\'s *Social Marketing* application helps content marketers create
and schedule posts, manage various social media accounts, analyze
content effectiveness, and engage directly with social media followers
in one, centralized location.

## Social media accounts

In order to create social posts and analyze content with Odoo *Social
Marketing*, social media accounts **must** be added as a *stream* on the
application\'s main dashboard.

:::: note
::: title
Note
:::

Be aware that personal profiles **cannot** be added as a stream. The
main use of Odoo *Social Marketing* is to manage and analyze business
accounts on social media platforms.
::::

:::: warning
::: title
Warning
:::

Odoo *Social Marketing* has some limitations in regards to social media
accounts. For example, Odoo **cannot** handle a large quantity of
various pages (e.g. \~40 pages) under the same company. The same
limitations are present in a multi-company environment because of how
the API is constructed.
::::

:::: warning
::: title
Warning
:::

In multi-company environments, if every company doesn\'t activate a page
at once, it will result in a permission error.

For example, if Company 1 is the only company selected from the main
Odoo dashboard, and activates *Facebook Page 1* and *Facebook Page 2*,
then those pages will be accesible on the *Social Marketing* dashboard.

However, if on that same database, the user adds Company 2 from the
company drop-down menu in the header, and attempts to add those same
streams, it results in a permission error.

![View of the permission error that appears when incorrectly attempting to add stream.](social_essentials/permission-error.png){.align-center}
::::

### Social media streams

To add a social media business account as a stream, navigate to
`Social Marketing
app`{.interpreted-text role="menuselection"} and select the
`Add A Stream`{.interpreted-text role="guilabel"} button located in the
upper-left corner. Doing so reveals an `Add a Stream`{.interpreted-text
role="guilabel"} pop-up window.

![View of the pop-up window that appears when Add a Stream is selected in Odoo.](social_essentials/add-stream-social-popup.png){.align-center}

In the `Add a Stream`{.interpreted-text role="guilabel"} pop-up window,
choose to `Link a new account`{.interpreted-text role="guilabel"} for a
business from any of the following popular social media platforms:
`Facebook`{.interpreted-text role="guilabel"},
`Instagram`{.interpreted-text role="guilabel"},
`LinkedIn`{.interpreted-text role="guilabel"},
`Twitter`{.interpreted-text role="guilabel"}, and
`YouTube`{.interpreted-text role="guilabel"}.

After clicking the desired social media outlet from the
`Add a Stream`{.interpreted-text role="guilabel"} pop-up window, Odoo
navigates directly to that specific social media outlet\'s authorization
page, where permission must be granted, in order for Odoo to add that
particular social media account as a stream to the *Social Marketing*
application.

![Sample of a populated social marketing dashboard with social media streams and content.](social_essentials/social-marketing-dashboard.png){.align-center}

Once permission is granted, Odoo navigates back to the
`Feed`{.interpreted-text role="guilabel"} on the main
`Social Marketing`{.interpreted-text role="guilabel"} dashboard, and a
new column, with that account\'s posts, is added. Accounts/streams can
be added at any time.

:::: important
::: title
Important
:::

A `Facebook`{.interpreted-text role="guilabel"} page can be added as
long as the `Facebook`{.interpreted-text role="guilabel"} account that
grants permission is the administrator for the page. It should also be
noted that different pages can be added for different streams.
::::

:::: note
::: title
Note
:::

`Instagram`{.interpreted-text role="guilabel"} accounts are added
through a `Facebook`{.interpreted-text role="guilabel"} login because it
uses the same API. This means, an `Instagram`{.interpreted-text
role="guilabel"} account needs to be linked to a
`Facebook`{.interpreted-text role="guilabel"} account in order for it to
show up as a stream in Odoo.
::::

### Posts

Clicking on a post from a social media stream reveals a pop-up window,
showcasing the content of that specific post, along with all the
engagement data related to it (e.g. likes, comments, etc.).

![Sample of a social media post\'s pop-up window in Odoo Social Marketing application.](social_essentials/social-post-popup.png){.align-center}

If desired, the user can leave a new comment of the post from the
post\'s pop-up window, by typing one in the
`Write a comment...`{.interpreted-text role="guilabel"} field, and
clicking `Enter`{.interpreted-text role="guilabel"} to post that
comment.

### Create leads from comments

Odoo *Social Marketing* also provides the ability to create leads
directly from social media comments.

To create a lead from a comment left on a social media post, click on
the desired post from the dashboard to reveal that post\'s specific
pop-up window. Then, scroll to the desired comment, and click the
`three vertical dots`{.interpreted-text role="guilabel"} icon to the
right of that comment.

Doing so reveals a drop-down menu with the option:
`Create Lead`{.interpreted-text role="guilabel"}.

![The drop-down menu beside a comment revealing the option to create a lead.](social_essentials/create-lead-drop-down.png){.align-center}

Upon clicking `Create Lead`{.interpreted-text role="guilabel"} from the
comment\'s drop-down menu, a `Conver Post to
Lead`{.interpreted-text role="guilabel"} pop-up window appears.

![The convert post to lead pop-up window that appears in Odoo Social Marketing.](social_essentials/convert-post-to-lead-popup.png){.align-center}

In this pop-up window, select to either:
`Create a new customer`{.interpreted-text role="guilabel"}, `Link to an
existing customer`{.interpreted-text role="guilabel"}, or
`Do not link to a customer`{.interpreted-text role="guilabel"}.

:::: note
::: title
Note
:::

If `Link to an existing customer`{.interpreted-text role="guilabel"} is
selected, a new `Customer`{.interpreted-text role="guilabel"} field
appears beneath those options, wherein a customer can be chosen to be
linked to this lead.
::::

Once the desired selection has been made, click the
`Convert`{.interpreted-text role="guilabel"} button at the bottom of the
`Convert Post to Lead`{.interpreted-text role="guilabel"} pop-up window.
Doing so reveals a fresh lead detail form, where the necessary
information can be entered and processed.

![New lead detail form generated from a social media comment in Odoo Social Marketing.](social_essentials/new-lead-detail-form-comments.png){.align-center}

### Insights

When a social media account stream is added to the *Social Marketing*
dashboard, each stream also displays and links that specific social
media platform\'s KPIs (if the platform has them).

To get redirected to the statistics and metrics related to any social
media account\'s KPIs, click on the `Insights`{.interpreted-text
role="guilabel"} link, located at the top of each stream.

![Visual of how the Insights link appears on the dashboard of the Social Marketing app.](social_essentials/social-marketing-insights-link.png){.align-center}

:::: note
::: title
Note
:::

In a multi-company environment, if not *all* pages are selected,
de-authentication happens.

For example, if the companies have 3 *Facebook* pages, but only grant
access to 1, and try to grant access to another at a later date, they
will be de-authenticated, and access to the initial page\'s
insights/analytics will be lost.

So, be sure to add *all* pages for *all* companies in a multi-company
environment to avoid this issue. If a page gets de-autenticated, simply
remove the stream, and re-establish it.
::::

## Create and post social media content

Odoo *Social Marketing* offers the ability to create and post content
for social media accounts directly through the application.

To create content for social media accounts, navigated to the
`Social Marketing app`{.interpreted-text role="menuselection"}, and
click `New Post`{.interpreted-text role="guilabel"} located in the
upper-right corner of the *Social Marketing* dashboard.

![New Post button on the main dashboard of the Odoo Social Marketing application.](social_essentials/new-post-button-social-marketing-dashboard.png){.align-center}

Or, navigate to `Social Marketing app --> Posts`{.interpreted-text
role="menuselection"} and click the `New`{.interpreted-text
role="guilabel"} button.

![New button on the Social Posts page in the Odoo Social Marketing application.](social_essentials/new-button-social-posts-page.png){.align-center}

Either route reveals a blank social media post detail form that can be
customized and configured in a number of different ways.

![Blank social media post detail page in Odoo Social Marketing.](social_essentials/blank-post-detail-page.png){.align-center}

### Post detail form

The social media post detail form in Odoo *Social Marketing* has many
different configurable options available.

#### Company

If working in a multi-company environment, the first field in the
`Your Post`{.interpreted-text role="guilabel"} section of the social
media post detail form is `Company`{.interpreted-text role="guilabel"}.
In this field, select the company that should be connected to this
specific social media post.

#### Post on

If working in a single-company environment, the first field in the
`Your Post`{.interpreted-text role="guilabel"} section of the social
media post detail form is `Post on`{.interpreted-text role="guilabel"}.
In this field, determine which social media outlets (streams) this post
is intended to be posted on, and/or which website\'s visitors this post
should be sent to, via push notification, by checking the box beside the
desired option(s).

Odoo automatically provides every available social media account that\'s
been linked to the database as an option in this section. If a social
media account hasn\'t been added as a stream to the *Social Marketing*
application, it will **not** appear as an option on the post template.

Multiple social media outlets (streams) and websites can be selected in
the `Post on`{.interpreted-text role="guilabel"} field. At least **one**
option in the `Post on`{.interpreted-text role="guilabel"} field *must*
be selected.

:::: important
::: title
Important
:::

In order for the `Push Notification`{.interpreted-text role="guilabel"}
option to appear on the social media post detail form in Odoo *Social
Marketing*, make sure the *Enable Web Push Notifications* feature is
enabled in the *Website* app.

To do that, navigate to
`Website app --> Configuration --> Settings`{.interpreted-text
role="menuselection"}, activate
`Enable Web Push Notifications`{.interpreted-text role="guilabel"}, fill
out the corresponding fields, and click `Save`{.interpreted-text
role="guilabel"}.
::::

#### Message

Next, there\'s the `Message`{.interpreted-text role="guilabel"} field.
This is where the main content of the post is created.

In the `Message`{.interpreted-text role="guilabel"} field, type in the
desired message for the social post. After typing, click away from the
`Message`{.interpreted-text role="guilabel"} field to reveal visual
samples of how the post will look on all the previously selected social
media accounts (and/or websites, as push notifications).

![Sample social media post with visual samples of how it will appear on social media outlets.](social_essentials/visual-samples-social-media-outlets-preview.png){.align-center}

:::: tip
::: title
Tip
:::

Emojis can also be added directly to the text in the
`Message`{.interpreted-text role="guilabel"} field. Just click the
`🙂 (smiley face)`{.interpreted-text role="guilabel"} icon, located on
the line of the `Message`{.interpreted-text role="guilabel"} field to
the far right. Clicking this icon reveals a drop-down menu containing
numerous emojis to choose from.
::::

:::: note
::: title
Note
:::

If `Twitter`{.interpreted-text role="guilabel"} is chosen in the
`Post on`{.interpreted-text role="guilabel"} field, a character counter
appears beneath the `Message`{.interpreted-text role="guilabel"} field.
::::

#### Attach Images

If images are to be used in the post, click the
`Attach Images`{.interpreted-text role="guilabel"} button, in the
`Attach Images`{.interpreted-text role="guilabel"} field, located
beneath the `Message`{.interpreted-text role="guilabel"} field. When
clicked, Odoo reveals a pop-up window. In this pop-up window, select the
desired image from the hard drive, and upload it.

After successfully uploading and attaching the desired image, Odoo
reveals a new preview of the social media post, complete with the
newly-added image, on the right side of the detail form.

![Visualized samples of post with newly-attached images in Odoo Social Marketing.](social_essentials/attach-images-visual-social-post-sample.png){.align-center}

#### Campaign

Next, there is the `Campaign`{.interpreted-text role="guilabel"} field.
This non-required field provides the options to attach this post to a
specific marketing campaign.

To add this post to a pre-existing campaign, click the empty
`Campaign`{.interpreted-text role="guilabel"} field to reveal a
drop-down menu, containing all the existing campaigns in the database.
Select the desired campaign from this drop-down menu to add this post to
that campaign.

To create a new campaign directly from the social media post detail
form, start typing the name of the new campaign in the blank
`Campaign`{.interpreted-text role="guilabel"} field, and select either
`Create`{.interpreted-text role="guilabel"} or
`Create and edit...`{.interpreted-text role="guilabel"}.

![Drop-down menu options of Create or Create and edit in the Campaign field.](social_essentials/campaign-drop-down-menu-options.png){.align-center}

Clicking `Create`{.interpreted-text role="guilabel"} creates the
campaign, which can be edited/customized later.

Clicking `Create and edit...`{.interpreted-text role="guilabel"} creates
the campaign, and reveals a `Create
Campaign`{.interpreted-text role="guilabel"} pop-up form, wherein the
`Campaign Identifier`{.interpreted-text role="guilabel"},
`Responsible`{.interpreted-text role="guilabel"}, and
`Tags`{.interpreted-text role="guilabel"} can be instantly configured.

![Create campaign pop-up window that appears on a social media post detail form.](social_essentials/create-campaign-popup.png){.align-center}

When all the desired settings have been entered, click
`Save & Close`{.interpreted-text role="guilabel"} to save the campaign
and return to the social media post detail form.

#### When

Then, in the `When`{.interpreted-text role="guilabel"} field, choose
either `Send Now`{.interpreted-text role="guilabel"} to have Odoo
publish the post immediately, or `Schedule later`{.interpreted-text
role="guilabel"} to have Odoo publish the post at a later date and time.

If `Schedule later`{.interpreted-text role="guilabel"} is selected, a
new `Scheduled Date`{.interpreted-text role="guilabel"} field appears.
Clicking the empty field reveals a pop-up calendar, in which a future
date and time can be designated.

![Schedule date pop-up window that appears on social media post detail form in Odoo.](social_essentials/schedule-post-calendar-popup.png){.align-center}

After selecting a desired date and time, click `Apply`{.interpreted-text
role="guilabel"}. Then, Odoo will promptly publish the post at that
specific date and time on the pre-detemined social media account(s).

:::: note
::: title
Note
:::

If scheduling a post, the `Post`{.interpreted-text role="guilabel"}
button at the top of the social media post detail form changes to
`Schedule`{.interpreted-text role="guilabel"}. Be sure to click
`Schedule`{.interpreted-text role="guilabel"} after completing the
social media post detail form.

Doing so, locks in that specific date/time for Odoo to send the post,
and it changes the status of the post to `Scheduled`{.interpreted-text
role="guilabel"}.
::::

#### Push Notification Options

If one (or multiple) `[Push Notification]`{.interpreted-text
role="guilabel"} options are chosen in the `Post on`{.interpreted-text
role="guilabel"} field, a specific
`Push Notification Options`{.interpreted-text role="guilabel"} section
appears at the bottom of the social media post detail form.

![Push notification options section on a social media post detail form.](social_essentials/push-notification-options-section.png){.align-center}

It should be noted that *none* of these fields are required.

The first field in this section is
`Notification Title`{.interpreted-text role="guilabel"}. In this field,
there is the option to add a custom title to the push notification that
will be sent.

To designate a specific page on the website that should trigger this
push notification, enter that page\'s URL in the
`Target URL`{.interpreted-text role="guilabel"} field. Then, once a
visitor reaches that specific page, Odoo will display the push
notification.

Below that field is the option to add a custom
`Icon Image`{.interpreted-text role="guilabel"} to the push
notification. This is an icon that appears beside the push notification.

To upload a new image, click the `✏️ (pencil) icon`{.interpreted-text
role="guilabel"} when hovering over the `Icon
Image`{.interpreted-text role="guilabel"} camera icon. Doing so reveals
a pop-up window, in which the desired icon image can be located on the
hard drive, and subsequently uploaded.

Once that\'s complete, Odoo automatically updates the visual preview of
how the icon appears on the push notification.

:::: note
::: title
Note
:::

Next, if the post is scheduled to be posted later, there is the option
to ensure the post is sent in the visitor\'s timezone, by enabling the
`Local Time`{.interpreted-text role="guilabel"} option. If enabled, Odoo
will send it at the appropriate, pre-determined time, taking the
visitor\'s location into consideration.

![The Local Time option in the Push Notification Options section of features.](social_essentials/push-notification-local-time.png){.align-center}
::::

Then, there is the `Match all records`{.interpreted-text
role="guilabel"} field. This field provides the ability to target a
specific group of recipients in the database, based on certain criteria,
and can be applied to match `all`{.interpreted-text role="guilabel"} or
`any`{.interpreted-text role="guilabel"} of the rules.

To utilize this field, click the `+ Add condition`{.interpreted-text
role="guilabel"} button, which reveals an equation-like rule field.

In this equation-like rule field, specifiy the specific criteria Odoo
should take into account when sending this post to a particular target
audience.

![Push notification conditions set up to match a specific amount of records in the database.](social_essentials/push-notification-condition.png){.align-center}

To add an additional rule, click the
`➕ (plus sign) icon`{.interpreted-text role="guilabel"} to the
far-right of the rule.

To add a branch (series of additional rules based on the previous rule,
to further specify a target audience), click the unique
`branch icon`{.interpreted-text role="guilabel"}, located to the right
of the `➕ (plus
sign) icon`{.interpreted-text role="guilabel"}.

Lastly, click the `🗑️ (trash can) icon`{.interpreted-text
role="guilabel"} to delete any rule.

The size of the specified target audience of recipients is represented
by the number of `Records`{.interpreted-text role="guilabel"} displayed
beneath the rules.

## Posts page

To see a complete overview of posts, go to Odoo
`Social Marketing app --> Posts`{.interpreted-text
role="menuselection"}. Here, on the `Social Posts`{.interpreted-text
role="guilabel"} page, every post that has been created and posted with
Odoo can be seen and accessed.

There are four different view options for the
`Social Posts`{.interpreted-text role="guilabel"} page data: *kanban*,
*calendar*, *list*, and *pivot*.

The view options are located in the upper right corner of the
`Posts`{.interpreted-text role="guilabel"} page, beneath the search bar.

::::::: tabs
::: tab
Kanban view

By default, Odoo displays the posts in a kanban view. The information on
this page can be sorted even further, via the left sidebar, where all
connected social accounts and posts can be quickly seen, accessed, and
analyzed.

The kanban view is represented by an
`inverted bar graph icon`{.interpreted-text role="guilabel"} in the
upper-right corner.

![Kanban view of the posts page in the Odoo Social Marketing application.](social_essentials/posts-page-kanban.png){.align-center}
:::

::: tab
Calendar view

The calendar view option displays a visual representation of posts in a
calendar format of when posts were published, or are scheduled to be
published. This option provides a clear overview of any planned day,
week, or month, and Odoo displays all drafted, scheduled, and published
posts.

Clicking on a date reveals a blank social media post detail form, in
which a social media post can be created, and Odoo will post it on that
specific date/time.

The calendar view is represented by a `calendar icon`{.interpreted-text
role="guilabel"} in the upper-right corner.

![Example of the calendar view in Odoo Social Marketing.](social_essentials/calendar-view.png){.align-center}
:::

::: tab
List view

The list view option is similar to the kanban option, but instead of
individual blocks, all post information is displayed in a clear, list
layout. Each line of the list displays the
`Social Accounts`{.interpreted-text role="guilabel"},
`Message`{.interpreted-text role="guilabel"}, and
`Status`{.interpreted-text role="guilabel"} of every post.

There is also a helpful left sidebar that organizes all posts by
`Status`{.interpreted-text role="guilabel"} and lists all connected
`Social Accounts`{.interpreted-text role="guilabel"}, as well.

The list view is represented by four vertical lines in the upper-right
corner.

![View of the list option on the posts page in Odoo Social Marketing.](social_essentials/list-view.png){.align-center}
:::

::: tab
Pivot view

The pivot view option provides a fully customizable grid table, where
different measures of data can be added and analyzed.

![View of the pivot option on the posts page in Odoo Social Marketing.](social_essentials/pivot-view.png){.align-center}

The pivot view option provides numerous analytical options, allowing for
in-depth, detailed analysis of various posts and metrics.

Click on any `➕ (plus sign) icon`{.interpreted-text role="guilabel"}
next to a line in the pivot table to reveal more metric options to add
to the grid.

While in the pivot view, the option to
`Insert in Spreadsheet`{.interpreted-text role="guilabel"} is available,
located to the right of the `Measures`{.interpreted-text
role="guilabel"} drop-down menu, in the upper-left corner of the
`Social Posts`{.interpreted-text role="guilabel"} page.

Next to the `Insert in Spreadsheet`{.interpreted-text role="guilabel"}
are three options, specific to the pivot view.

From left to right, those options are:

- `Flip Axis`{.interpreted-text role="guilabel"}, which switches the *X*
  and *Y* axis in the grid table.
- `Expand All`{.interpreted-text role="guilabel"}, which expands each
  line in the grid, revealing more detailed information related to it.
- `Download`{.interpreted-text role="guilabel"}, which, when clicked,
  instantly downloads the pivot table as a spreadsheet.
:::
:::::::

## Visitors

To see a complete overview of all the people who have visited the
website(s) connected to the database, navigate to
`Social Marketing app --> Visitors`{.interpreted-text
role="menuselection"}.

![View of the Visitors page in the Odoo Social Marketing application.](social_essentials/visitors.png){.align-center}

Here, Odoo provides a detailed layout of all the visitors\' pertinent
information in a default kanban view. If visitors already have contact
information in the database, the option to send them an
`Email`{.interpreted-text role="guilabel"} and/or an
`SMS`{.interpreted-text role="guilabel"} is available.

This same visitor data can also be viewed as a list or a graph. Those
view options are located in the upper-right corner of the
`Visitors`{.interpreted-text role="guilabel"} page.

## Social media page

Another way to quickly link social media accounts to Odoo *Social
Marketing* can be done on the `Social Media`{.interpreted-text
role="guilabel"} page. To access the `Social Media`{.interpreted-text
role="guilabel"} page, navigate to
`Social Marketing app --> Configuration --> Social Media`{.interpreted-text
role="menuselection"}.

On the `Social Media`{.interpreted-text role="guilabel"} page there is a
collection of all social media options, each complete with a
`Link account`{.interpreted-text role="guilabel"} button:
`Facebook`{.interpreted-text role="guilabel"},
`Instagram`{.interpreted-text role="guilabel"},
`LinkedIn`{.interpreted-text role="guilabel"},
`Twitter`{.interpreted-text role="guilabel"},
`YouTube`{.interpreted-text role="guilabel"}, and
`Push Notifications`{.interpreted-text role="guilabel"}.

![View of the social media page in the Odoo Social Marketing application.](social_essentials/social-media-page.png){.align-center}

## Social accounts page

To see a list of all social accounts and websites linked to the
database, go to
`Social Marketing app --> Configuration --> Social Accounts`{.interpreted-text
role="menuselection"}. This `Social
Accounts`{.interpreted-text role="guilabel"} display the
`Name`{.interpreted-text role="guilabel"}, the
`Handle/Short Name`{.interpreted-text role="guilabel"}, the `Social
Media`{.interpreted-text role="guilabel"} platform, who it was
`Created by`{.interpreted-text role="guilabel"}, and the
`Company`{.interpreted-text role="guilabel"} to which it is associated.

![View of the social accounts page in the Odoo Social Marketing application.](social_essentials/social-accounts-page.png){.align-center}

To edit/modify any of the social accounts on this page, simply select
the desired account from the list on this page, and proceed to make any
adjustments necessary.

## Social streams page

To view a separate page with all the social media streams that have been
added to the main *Social Marketing* dashboard, navigate to
`Social Marketing app --> Configuration --> Social
Streams`{.interpreted-text role="menuselection"}.

![View of the social accounts page in the Odoo Social Marketing application.](social_essentials/social-streams-page.png){.align-center}

Here, the social stream information is organized in a list with the
`Social Media`{.interpreted-text role="guilabel"}, the
`Title`{.interpreted-text role="guilabel"} of the stream, the
`Type`{.interpreted-text role="guilabel"} of the stream (e.g.
`Posts`{.interpreted-text role="guilabel"}, `Keyword`{.interpreted-text
role="guilabel"}, etc.), who it was `Created by`{.interpreted-text
role="guilabel"}, and the `Company`{.interpreted-text role="guilabel"}
to which it is associated.

To modify any stream\'s information, simply click the desired stream
from the list, and proceed to make any necessary adjustments.

::: seealso
`/applications/marketing/social_marketing/essentials/social_campaigns`{.interpreted-text
role="doc"}
:::




--- SOURCE: marketing/social_marketing/essentials.md ---

nosearch

:   

# Essentials

::: {.toctree titlesonly=""}
essentials/social_essentials essentials/social_campaigns
:::




--- SOURCE: marketing/social_marketing.md ---

nosearch

:   

show-content

:   

hide-page-toc

:   

show-toc

:   

# Social Marketing

::: seealso
\- [Odoo Tutorials: Marketing](https://www.odoo.com/slides/marketing-27)
:::

::: {.toctree titlesonly=""}
social_marketing/essentials
:::




--- SOURCE: marketing/surveys/create.md ---

# Survey essentials

Companies often use surveys to collect valuable information from their
customers and employees, which in turn, allows them to make more
informed business decisions.

In Odoo, surveys are used to collect customer feedback, evaluate the
success of a recent event, measure the satisfaction of customers (or
employees), and gain more insight into shifting market sentiments.

## Getting started

To begin, open the `Surveys`{.interpreted-text role="guilabel"}
application and click `Create`{.interpreted-text role="guilabel"}. Odoo
then redirects the page to a blank survey template form.

On the survey form, add a `Survey Title`{.interpreted-text
role="guilabel"} and then add a cover image to the survey by hovering
over the photo icon and clicking on the
`Edit (pencil)`{.interpreted-text role="guilabel"} icon. When the file
explorer window opens, choose an image from the local files.

Below the `Survey Title`{.interpreted-text role="guilabel"} are various
tabs in which the survey questions and format can be created and
customized. These tabs are labeled as follows:

- `Questions`{.interpreted-text role="guilabel"}: the list of questions
  to be asked in the survey
- `Description`{.interpreted-text role="guilabel"}: contextual
  information to aid in understanding the survey
- `Options`{.interpreted-text role="guilabel"}: choices for survey
  respondents to answer the questions

![Various tabs that can be found on the survey template page.](create/questions-description-options.png){.align-center}

## Questions tab

Add questions and sections to the survey in the
`Questions`{.interpreted-text role="guilabel"} tab. A section divides
the survey into parts in order to visually group similar questions
together. To make a section, click `Add a section`{.interpreted-text
role="guilabel"} and type in a section name. Then, add questions or drag
and drop questions into the divided sections.

Clicking `Add a question`{.interpreted-text role="guilabel"} opens the
`Create Sections and Questions`{.interpreted-text role="guilabel"}
pop-up to create and customize the survey question.

![The survey question pop-up window.](create/survey-question-pop-up.png){.align-center}

### Create questions

In the `Create Sections and Questions`{.interpreted-text
role="guilabel"} pop-up, type the question in the
`Question`{.interpreted-text role="guilabel"} field. Then, choose the
`Question Type`{.interpreted-text role="guilabel"}. A preview of how the
question type looks is shown in the preview window.

Choose from the following `Question Types`{.interpreted-text
role="guilabel"}:

- `Multiple Lines Text Box`{.interpreted-text role="guilabel"}
- `Single Line Text Box`{.interpreted-text role="guilabel"}
- `Numerical Value`{.interpreted-text role="guilabel"}
- `Date`{.interpreted-text role="guilabel"}
- `Datetime`{.interpreted-text role="guilabel"}
- `Multiple choice: only one answer`{.interpreted-text role="guilabel"}
- `Multiple choice: multiple answers allowed`{.interpreted-text
  role="guilabel"}
- `Matrix`{.interpreted-text role="guilabel"}

:::: note
::: title
Note
:::

Different features appear in the `Answers`{.interpreted-text
role="guilabel"} and `Options`{.interpreted-text role="guilabel"} tabs,
depending on the `Question Type`{.interpreted-text role="guilabel"}
chosen. However, the `Description`{.interpreted-text role="guilabel"}
tab always remains the same, regardless of what question is chosen.
::::

#### Create sections and questions

Once a `Question Type`{.interpreted-text role="guilabel"} has been
selected, there are three possible tabs where information can be
customized for the question. These include the
`Answers`{.interpreted-text role="guilabel"} (if applicable),
`Description`{.interpreted-text role="guilabel"}, and
`Options`{.interpreted-text role="guilabel"} tabs.

Each tab offers a variety of different features depending on what
`Question Type`{.interpreted-text role="guilabel"} was chosen.

For example, in the `Options`{.interpreted-text role="guilabel"} tab,
the following options may appear:

- `Mandatory Answer`{.interpreted-text role="guilabel"}: the question
  must be answered.
- `Matrix Type`{.interpreted-text role="guilabel"}: for matrix-type
  questions, select if one choice or multiple choices can be selected
  per row.
- `Number of columns`{.interpreted-text role="guilabel"}: select how
  many columns are displayed.
- `Images on answers`{.interpreted-text role="guilabel"}: allow images
  on the answer options.
- `Conditional Display`{.interpreted-text role="guilabel"}: determine if
  the question is displayed based on the participant\'s answer to a
  previous question.
- `Show Comments Field`{.interpreted-text role="guilabel"}: allow the
  participant to type a comment in a text box.
- `Question Time Limit`{.interpreted-text role="guilabel"}: for live
  session surveys, set a time limit for the question.

##### Conditional Display

`Conditional Display`{.interpreted-text role="guilabel"} means the
question is only displayed if the specified conditional answer has been
selected in a previous question.

When the box next to `Conditional Display`{.interpreted-text
role="guilabel"} is selected, the `Triggering
Question`{.interpreted-text role="guilabel"} field appears. Select a
question from the survey.

Then, a `Triggering Answer`{.interpreted-text role="guilabel"} field
appears. Here, select which answer will trigger this
`Conditional Display`{.interpreted-text role="guilabel"} question.

## Options tab

Back on the main survey template form, under the
`Options`{.interpreted-text role="guilabel"} tab, there are different
sections of settings that can be modified.

The sections include:

- `Questions`{.interpreted-text role="guilabel"}: focuses on the overall
  presentation of the survey
- `Scoring`{.interpreted-text role="guilabel"}: decides how the survey
  is scored
- `Candidates`{.interpreted-text role="guilabel"}: manages access to the
  survey
- `Live Session`{.interpreted-text role="guilabel"}: enables the survey
  into a real-time group activity.

### Questions

First, select the `Layout`{.interpreted-text role="guilabel"} of the
survey. The following options can be chosen:

- `One page with all the questions`{.interpreted-text role="guilabel"}
- `One page per section`{.interpreted-text role="guilabel"}
- `One page per question`{.interpreted-text role="guilabel"}

If either the `One page per section`{.interpreted-text role="guilabel"}
or `One page per question`{.interpreted-text role="guilabel"} options
are chosen, then the `Back Button`{.interpreted-text role="guilabel"}
option appears. If selected, the `Back Button`{.interpreted-text
role="guilabel"} option allows the participant to go back to a question
during the survey.

Under the `Layout`{.interpreted-text role="guilabel"} options is the
`Progression Mode`{.interpreted-text role="guilabel"} setting, which
indicates how the participant\'s progress during the survey is
displayed. It is shown as either a `Percentage`{.interpreted-text
role="guilabel"} or a `Number`{.interpreted-text role="guilabel"}.

Next, there is an option available to add a
`Survey Time Limit`{.interpreted-text role="guilabel"}. To implement
this option, simply check the box, and enter the amount of time (in
minutes) participants have to complete the survey.

After the `Survey Time Limit`{.interpreted-text role="guilabel"} option
is a section labeled `Selection`{.interpreted-text role="guilabel"}.
Here, questions can be `Randomized per section`{.interpreted-text
role="guilabel"}, in other words, the number of random questions can be
configured by section. This mode is ignored in a live session.

::: seealso
`time_random`{.interpreted-text role="doc"}
:::

### Scoring

The following options are available when deciding how a
`Scoring`{.interpreted-text role="guilabel"} method:

- `No scoring`{.interpreted-text role="guilabel"}
- `Scoring with answers at the end`{.interpreted-text role="guilabel"}
- `Scoring without answers at the end`{.interpreted-text
  role="guilabel"}

If either the `Scoring with answers at the end`{.interpreted-text
role="guilabel"} or `Scoring without answers at
the end`{.interpreted-text role="guilabel"} options are selected, a
`Success %`{.interpreted-text role="guilabel"} field appears. Set the
percentage of correct answers needed to pass the survey.

Next, there is the option to make the survey a certification. To do so,
check the box next to the option labeled
`Is a Certification`{.interpreted-text role="guilabel"}, and two
additional fields appear. Select a color theme in the
`Certification Template`{.interpreted-text role="guilabel"} field and
then choose an `Email
Template`{.interpreted-text role="guilabel"}. When a participant passes
the certification with the required score, an email from Odoo will
automatically be sent to that person using the selected email template.

If the `Give Badge`{.interpreted-text role="guilabel"} feature is
enabled and the `Certification Badge`{.interpreted-text role="guilabel"}
is set, the survey participant also receives a badge upon passing the
certification.

::: seealso
`scoring`{.interpreted-text role="doc"}
:::

### Candidates

To determine access to the survey, the `Access Mode`{.interpreted-text
role="guilabel"} has two options to choose between:
`Anyone with the link`{.interpreted-text role="guilabel"} and
`Invited people only`{.interpreted-text role="guilabel"}.

Below the `Appraisal Managers Only`{.interpreted-text role="guilabel"}
checkbox is the `Login Required`{.interpreted-text role="guilabel"}
option to require a login to participate in the survey. If this option
is activated, an `Attempts
Limit`{.interpreted-text role="guilabel"} field also populates, in which
the number of survey attempts is defined for the participant.

### Live Session

The `Live Session`{.interpreted-text role="guilabel"} section is
dedicated to users who are conducting surveys in real-time, wherein they
directly engage with and collect answers from a live audience.

Customize the `Session Code`{.interpreted-text role="guilabel"} here;
this code is needed for participants to access the live session survey.
Reward participants for quick answers by selecting the checkbox labeled
`Reward quick answers`{.interpreted-text role="guilabel"}. By checking
it, attendees will get more points if they answer quickly.

## Description tab

Back on the main survey template page is the
`Description`{.interpreted-text role="guilabel"} tab, where a custom
description of the survey can be added. This is displayed beneath the
title on the survey\'s homepage, which is on the front end of the
website made through the Odoo `Website`{.interpreted-text
role="guilabel"} app.

## Test and share the survey

Once the survey is created and saved, run a test to check for possible
errors before finally sending it out to the participants by clicking
`Test`{.interpreted-text role="guilabel"} in the upper left corner of
the survey template page.

When activated, Odoo redirects the page to a test version of the survey
on the front end of the website. This page displays how the survey will
look to participants. Proceed to run through the survey, like a normal
participant, to check for errors.

To return to the survey template form in the backend, simply click the
`This is a test
survey. Edit Survey`{.interpreted-text role="guilabel"} link in the blue
banner along the top of the page. Once Odoo redirects the page to the
survey template in the backend, make any further changes, as needed,
before officially sending the survey out to participants.

When the survey is ready to be shared with the audience, click the
`Start Survey`{.interpreted-text role="guilabel"} button in the
upper-left corner of the survey template form. Then, click
`Share`{.interpreted-text role="guilabel"}.

In the pop-up window, add the survey recipients in the
`Recipients`{.interpreted-text role="guilabel"} field (for existing
contacts in the Odoo database) or the
`Additional emails`{.interpreted-text role="guilabel"} field (for
contacts that do not want to be listed in the Odoo database). Finally,
click `Send`{.interpreted-text role="guilabel"}.

As answers are received, check them by clicking the
`Answers`{.interpreted-text role="guilabel"} smart button on the survey
template form, or the `See Results`{.interpreted-text role="guilabel"}
button in the upper left corner. To end the survey, click the
`Close`{.interpreted-text role="guilabel"} button on the survey template
form.




--- SOURCE: marketing/surveys/scoring.md ---

# Scoring surveys

To measure a survey participant\'s performance, knowledge, or overall
satisfaction, Odoo ascribes points to survey answers. At the end of the
survey, these points are summed up, resulting in the participant\'s
final score.

To add points to questions, open the `Surveys`{.interpreted-text
role="guilabel"} application, choose the desired survey form, and then
click on the `Options`{.interpreted-text role="guilabel"} tab. Under the
:guilabel;\`Scoring\` section, choose between
`Scoring with answers at the end`{.interpreted-text role="guilabel"} or
`Scoring without answers at the
end`{.interpreted-text role="guilabel"}.

- `Scoring with answers at the end`{.interpreted-text role="guilabel"}
  shows the survey participant their answers after completing the
  survey, and displays which questions they got right or wrong. On
  questions where there was an incorrect answer, the correct answer will
  be highlighted.
- `Scoring without answers at the end`{.interpreted-text
  role="guilabel"} does not show the survey participant their answer
  choices after completing the survey, only their final score.

To indicate correct answers, click on the
`Questions tab`{.interpreted-text role="guilabel"} and choose a
question. In the question form, check the
`Is a correct answer`{.interpreted-text role="guilabel"} box for the
choice that is the correct answer and attach a score value.

Back on the `Options`{.interpreted-text role="guilabel"} tab of the
survey, set the `Success %`{.interpreted-text role="guilabel"}. The
percentage entered determines what percentage of correct answers is
needed to pass the survey.

Further on the `Options`{.interpreted-text role="guilabel"} tab of the
survey, survey administrators can also choose to make the survey a
certification. A certification indicates that the survey asks questions
to test the participants\' knowledge level on a subject.

When enabling the `Is a certification`{.interpreted-text
role="guilabel"} option, choose a `Certification email
template`{.interpreted-text role="guilabel"}. The certification will
automatically be emailed using this email template to users who pass the
survey with a final score that is greater than or equal to the set
`Success %`{.interpreted-text role="guilabel"}.

In the `Candidates`{.interpreted-text role="guilabel"} section,
participants can be required to log in to take the survey. If the
`Login Required`{.interpreted-text role="guilabel"} setting is enabled,
two new options appear: the `Attempts Limit`{.interpreted-text
role="guilabel"} checkbox, which limits the number of times a
participant can attempt the survey, and the option to
`Give Badge`{.interpreted-text role="guilabel"}, located beneath the
`Certification`{.interpreted-text role="guilabel"} options in the
`Scoring`{.interpreted-text role="guilabel"} section.

![Setting the Required Score (percentage), login required, and certification template.](scoring/required-score-login.png){.align-center}

Badges are displayed on the eLearning portion of a given user\'s portal,
and are a way to set milestones and reward participants for passing
surveys or gaining points. Besides the awardee, website visitors who
access the `Courses`{.interpreted-text role="guilabel"} page will also
be able to see the granted badges.

![Example of how a badge looks on the eLearning portion of the website.](scoring/frontend-badges.png){.align-center}

::: seealso
`time_random`{.interpreted-text role="doc"}
:::




--- SOURCE: marketing/surveys/time_random.md ---

# Timed and randomized questions

When creating a survey in Odoo, there are options to set a time limit on
the survey and randomize the questions.

## Time limit

During a timed survey, participants must finish the survey within a
specified period of time. A common use case for implementing a time
limit is that it greatly reduces the chance of participants looking up
responses via external resources (e.g. web search), and reduces the
survey to a \"closed book\" testing environment.

Find the `Survey Time Limit`{.interpreted-text role="guilabel"} setting
in the `Options`{.interpreted-text role="guilabel"} tab of the survey
form, under the `Questions`{.interpreted-text role="guilabel"} section.

![Time limit field in the options tab of a survey template form.](time_random/time-limit.png){.align-center}

When the `Survey Time Limit`{.interpreted-text role="guilabel"} option
is checked, a timer will be displayed on every page of the survey,
letting participants keep track of the time remaining while the survey
is active.

:::: note
::: title
Note
:::

Participants that do not submit their survey by the preconfigured time
limit will *not* have their answers saved.
::::

## Randomized selection

When a survey is randomized, Odoo shuffles the questions and reveals
them in a random order every time a participant begins the
questionnaire. Using randomization as a survey method discourages
participants from looking at each other\'s responses, and helps control
for individual testing.

To randomize a survey, click the `Options`{.interpreted-text
role="guilabel"} tab on the survey form. In the
`Questions`{.interpreted-text role="guilabel"} section, select
`Randomized per section`{.interpreted-text role="guilabel"} for the
`Selection`{.interpreted-text role="guilabel"} field. After enabling,
navigate to the `Questions`{.interpreted-text role="guilabel"} tab and
look in the `Random questions count`{.interpreted-text role="guilabel"}
column. From there, determine how many questions (per section) Odoo
should select and display during the shuffling of questions.

![Randomized question count in the questions tab of a survey.](time_random/random-questions.png){.align-center}

::: seealso
`scoring`{.interpreted-text role="doc"}
:::




--- SOURCE: marketing/surveys.md ---

nosearch

:   

# Surveys

::: seealso
\- [Odoo Tutorials: Surveys](https://www.odoo.com/slides/surveys-62)
:::

::: {.toctree titlesonly=""}
surveys/create surveys/scoring surveys/time_random
:::


