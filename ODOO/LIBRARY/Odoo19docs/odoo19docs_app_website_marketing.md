# ODOO DOCUMENTATION SUMMARY - CATEGORY: ODOO19DOCS_APP_WEBSITE_MARKETING



--- SOURCE: marketing/email_marketing/analyze_metrics.md ---

# Analyze metrics

In order to properly understand the success or failure of an email
marketing campaign, it is necessary to monitor several key metrics. The
insights gained from these metrics can then be used to optimize future
campaigns. Odoo\'s **Email Marketing** application tracks several
`key metrics
<email-marketing/view-metrics>`{.interpreted-text role="ref"}, that can
be interpreted through `reports
<email_marketing/create_reports>`{.interpreted-text role="ref"} to
improve future campaigns.

## View metrics {#email-marketing/view-metrics}

After a mass mail has been sent, the results for that particular mailing
are displayed in multiple locations.

To access the metrics for an individual mailing, navigate to
`Email Marketing app
--> Mailings`{.interpreted-text role="menuselection"}. Locate the
specific mailing in the list view, and use the column headings to view
the results for that mailing. Click on one of the mailings in the list
to open the record.

At the top of the record, detailed metrics are displayed as smart
buttons.

![The smart buttons on a mass mailing, displaying the results of the message.](analyze_metrics/metric-smart-buttons.png){.align-center}

### Opened rate

The percentage of emails opened by recipients, against the total number
of sent emails.

In cases where a reply is expected, such as cold outreach emails, high
open rate may indicate the subject line was timely, compelling, and
successfully prompted the recipients to view the message.

In cases where a reply is not expected, such as promotional emails, it
may indicate an issue with the email, such as incorrect product links or
coupon codes.

In cases where a reply is expected, a low open rate may indicate the
subject line failed to capture the recipients\' interest or the message
ended up in a spam or junk folder. It could also indicate the email
ended up in a spam or junk folder.

:::: note
::: title
Note
:::

Emails that consistently land in recipient spam folders could be due to
having a poor sender reputation (i.e. high unsubscribe rate, high
percentage of past emails marked as spam, etc.), or failing to
`configure the proper DNS records
<../../general/email_communication/email_domain>`{.interpreted-text
role="doc"}.
::::

### Replied rate

The percentage of recipients who responded to the email, against the
total number of sent emails.

A high replied rate may indicate the email resonated with recipients,
prompting them to take action or provide feedback.

A low replied rate may suggest the message lacked relevance or did not
contain a clear call-to-action.

### Clicked rate

This represents the *Clicked through rate (CTR)*, which measures the
percentage of recipients who clicked on a link within the email, against
the total number of sent emails.

A high `CTR (Click through rate)`{.interpreted-text role="abbr"} may
indicate the email content was relevant and appropriately targeted.
Recipients were motivated to click the links provided, and likely found
the content engaging.

A low `CTR (Click through rate)`{.interpreted-text role="abbr"} may
indicate issues with either the targeting, or the content itself.
Recipients may have been unmotivated by the calls-to-action, if there
were any, or the message itself may have been directed toward the wrong
audience.

### Received rate

This rate measures the percentage of emails that were **successfully**
delivered, against the total number of sent emails.

A high received rate can indicate the mailing list used is up-to-date,
and the sender authentication is trusted by email providers.

A low received rate may indicate issues, either with the mailing list
used for the mailing, or with the sender authentication. View the
`email-marketing/deliverability-issues`{.interpreted-text role="ref"}
section for more information.

### Bounced rate

This rate measures the percentage of emails that were **unsuccessfully**
delivered, and did not enter a recipient\'s inbox, against the total
number of sent emails.

A high bounce rate could indicate issues, either with the mailing list
used for the mailing, or with the sender authentication.

A low bounce rate may indicate that the mailing list used is up-to-date,
and the sender authentication is trusted by email providers. View the
`email-marketing/deliverability-issues`{.interpreted-text role="ref"}
section for more information.

:::: tip
::: title
Tip
:::

Click on the respective smart buttons to see all the corresponding
recipient records that are attributed to each metric. When these
filtered records are in view, multiple types of reports can be run for
further analysis.
::::

## Create metrics reports {#email_marketing/create_reports}

Individual metrics can be analyzed by creating a report. To begin, click
on the smart button of the desired metric.

Next, click the `fa-caret-down`{.interpreted-text role="icon"}
`(down arrow)`{.interpreted-text role="guilabel"} to the right of the
search bar to see a drop-down menu of filtering and grouping parameters.

`Filters`{.interpreted-text role="guilabel"}, located in the left column
of the search options, can be used to keep only the results that fit the
filter. For example, selecting the *Bounced* filter only shows emails
that could not be delivered.

`Group By`{.interpreted-text role="guilabel"}, found in the middle
column, is used to organize the results into groups, and can be used
with or without filters.

:::: note
::: title
Note
:::

Setting multiple `Group By`{.interpreted-text role="guilabel"} options
creates nested groups, according to which option is selected first. For
example, selecting `Sent Period`{.interpreted-text role="guilabel"},
followed by `Add Custom Group --> Responsible`{.interpreted-text
role="guilabel"}, in the `Group By`{.interpreted-text role="guilabel"}
column, sorts all results *first* by the sent period, *then* by the team
member responsible. This is a useful metric for analyzing who on the
team is sending in volume or quantity over a set time period.

This can be verified by looking at the direction, and order, of the
selections in the group tile that appears in the search bar after the
selections are made.
::::

::: example
A monthly newsletter has been sent out, and 6.9% of the sent emails were
bounced.

![The metrics smart buttons of the newsletter.](analyze_metrics/newsletter-metrics.png){.align-center}

To see what these bounced recipients have in common, the records are
grouped using a custom group targeting `Mailing Lists`{.interpreted-text
role="guilabel"}, which groups all records by the mailing lists they are
on. The records are then filtered using a custom filter with the rule
[Created on \>= 07/01/2024 00:00:00]{.title-ref}, to filter by when the
mailing list was last checked. This filter only includes recipients that
have been created on, or after, July 1st, 2024, in the report.

![The custom filter creation form.](analyze_metrics/metrics-filter.png){.align-center}

Using these configurations, it is evident that all the recipients with
bounced emails were added after the list was last checked. Looking
closer at the domains, it is evident that each recipient has a malformed
email domain (i.e: \@yaoo.com instead of \@yahoo.com), likely due to a
manual entry error while updating the database.

![A list of bounced email addresses with malformed email domains.](analyze_metrics/malformed-addresses.png){.align-center}
:::

::: seealso
View `../../essentials/search`{.interpreted-text role="doc"} for more
information about making custom groups and filters.
:::

## Mass mailing analysis {#email-marketing/deliverability-issues}

It is also possible to analyze the success between mailing campaigns by
creating a *Mass Mailing Analysis* report. To begin, navigate to
`Email Marketing app --> Reporting --> Mass
Mailing Analysis`{.interpreted-text role="menuselection"}.

A dashboard appears displaying a bar chart containing each mailing
campaign. By default, `Sent`{.interpreted-text role="guilabel"} is
selected, displaying the number of sent records on the y-axis. To change
the measure, click the `Measures`{.interpreted-text role="guilabel"}
button, and select the desired measure from the drop-down menu.

::: example
The following chart displays the number of opened emails from two
different mass mailings.

In this view, it can be seen that the first mass mailing led to a higher
opened rate than the second. Because a lower opened rate can sometimes
be attributed to a subject line that failed to capture readers\'
attention, the subject line of each mass mailing can be a good place to
begin looking.

![A bar chart displaying the different opened rate between two mass mailing campaigns.](analyze_metrics/mma-opened.png){.align-center}

Comparing the two subject lines, it is clear the newsletter\'s subject
line was less engaging, which may have led to the lower opened rate,
when compared to the other mass mailing.

![alt text](analyze_metrics/mailing-comparison.png){.align-center}
:::

## Deliverability issues

The following define possible reasons for a high bounce rate or low
received rate:

- Using a mailing list that contains outdated contact information, or
  malformed email addresses are likely to result in a high bounce rate
  and/or a low received rate.
- Mailings sent using a *From* email address that differs from the
  sender\'s domain are likely to bounce with certain email providers due
  to failing `DMARC authentication
  <email-domain-dmarc>`{.interpreted-text role="ref"}.
- Failing to `configure the proper DNS records
  <../../general/email_communication/email_domain>`{.interpreted-text
  role="doc"} can also result in a high bounce rate.

::: seealso
\-
`Mailing campaigns <email_marketing/mailing-campaigns>`{.interpreted-text
role="ref"} -
`Manage unsubscriptions <unsubscriptions>`{.interpreted-text role="doc"}
:::




--- SOURCE: marketing/email_marketing/lost_leads_email.md ---

# Lost leads reactivation email

In Odoo, lost leads are removed from the active *CRM* pipeline, but can
still be targeted with the *Email Marketing* application for strategic
campaign purposes, such as lost leads reactivation.

A lost leads reactivation email looks at the leads that were lost during
a specific period of time, and uses custom filters and lost reasons to
exclude undesirable leads from the mailing list.

Once a lost leads reactivation email is complete, it can be sent as is,
modified and sent to different groups for A/B testing, or saved as a
template for later.

::: example
A warehouse has leftover merchandise from a limited run of items from
last year. To help clear out the excess inventory, the warehouse manager
creates a lost leads email to reach out to old opportunities that were
lost, and inform them that the limited merchandise is back in stock.

The warehouse manager uses the following filters for a lost leads email:

- `Blacklist`{.interpreted-text role="guilabel"} *is* [not
  set]{.title-ref}
- `Created on`{.interpreted-text role="guilabel"} *\>=* [01/01/2024
  00:00:01]{.title-ref}
- `Stage`{.interpreted-text role="guilabel"} *is not in*
  [New]{.title-ref}, [Qualified]{.title-ref}, or [Won]{.title-ref}
- `Lost Reason`{.interpreted-text role="guilabel"} *is in* [Not enough
  stock]{.title-ref}
- and either `Active`{.interpreted-text role="guilabel"} *is*
  [set]{.title-ref} or [not set]{.title-ref}

![A lost leads reactivation filter list excluding lost reasons like Too Expensive.](lost_leads_email/example.png){.align-center}
:::

:::: tip
::: title
Tip
:::

As filters are added and removed, pay attention to the
`# record(s)`{.interpreted-text role="guilabel"} value below the
filtering section. This value indicates the total number of records that
match the current criteria.

To view a list of all matching records, click the
`# record(s)`{.interpreted-text role="guilabel"} text.

![The # record(s) text is located below the list of Recipient filters.](lost_leads_email/records.png){.align-center}
::::

## Minimum requirements

In order to create and deliver a lost leads reactivation email campaign,
the *CRM* and *Email Marketing* applications **must** be
`installed <general/install>`{.interpreted-text role="ref"} and
configured.

Here are the minimum necessary filters that pertain to a lost leads
reactivation mailing campaign:

- The `Recipients <email_marketing/recipients_field>`{.interpreted-text
  role="ref"} field **must** be set to the *Lead/Opportunity* model.
- A `Blacklist <email_marketing/blacklist_filter>`{.interpreted-text
  role="ref"} filter to exclude unsubscribed recipients.
- A `Created on <email_marketing/created_on_filter>`{.interpreted-text
  role="ref"} to target leads that were lost during a specific period of
  time.
- `Stage <email_marketing/stage_filter>`{.interpreted-text role="ref"}
  filter(s) to exclude leads that were already won, or are still active
  in new stages of the sales pipeline (i.e. *New*, *Qualified*, etc.).
  These values will be different per organization; however, it\'s
  minimally viable to exclude all the leads in the *Won* stage.
- One or more
  `Lost Reason <email_marketing/lost_reason_filter>`{.interpreted-text
  role="ref"} filters to exclude undesired leads, such as duplicate,
  spam, or irrelevant records.
- A pair of `Active <email_marketing/active_filter>`{.interpreted-text
  role="ref"} filters to target *both* active and inactive leads.

## Add the necessary filters

First, navigate to the `Email Marketing`{.interpreted-text
role="menuselection"} app, and on the `Mailings`{.interpreted-text
role="guilabel"} page, click the `New`{.interpreted-text
role="guilabel"} button in the top-left corner.

::: {#email_marketing/recipients_field}
On the new `Mailings`{.interpreted-text role="guilabel"} form, enter an
appropriate `Subject`{.interpreted-text role="guilabel"} line for the
email in the corresponding field. Then, in the
`Recipients`{.interpreted-text role="guilabel"} field, choose the
`Lead/Opportunity`{.interpreted-text role="guilabel"} model from the
drop-down menu.
:::

::: {#email_marketing/blacklist_filter}
In the rules section, located beneath the `Recipients`{.interpreted-text
role="guilabel"} field, click the modify filter
(`▶ (triangle pointing right)`{.interpreted-text role="guilabel"}) icon
to expand the filter rules. Leave the default
`Blacklist`{.interpreted-text role="guilabel"} rule in place.
:::

### Created on {#email_marketing/created_on_filter}

Begin by clicking `New Rule`{.interpreted-text role="guilabel"} beneath
the default `Blacklist`{.interpreted-text role="guilabel"} rule. Then,
click the first field of the new rule that appears, and select the
`Created on`{.interpreted-text role="guilabel"} parameter from the
drop-down menu. With that in place, a specific time period during which
the targeted leads were lost can be designated (e.g. 30 days prior, 90
days prior, previous year, etc.).

Then, in the second field, select
`<= (less than or equal to)`{.interpreted-text role="guilabel"},
`>= (greater
than or equal to)`{.interpreted-text role="guilabel"}, or
`is between`{.interpreted-text role="guilabel"} as a date operator, in
order to frame the time selection chosen in the third field.

In the third field, use the calendar popover window to select dates, and
click `Apply`{.interpreted-text role="guilabel"} to lock in the time
range.

![A custom filter rule setting the time period to be anything before today\'s date.](lost_leads_email/created-on.png){.align-center}

:::: important
::: title
Important
:::

When there is more than one rule applied, make sure the statement at the
top of the `Recipients`{.interpreted-text role="guilabel"} filter list
reads: `Match all of the following rules`{.interpreted-text
role="guilabel"}. If it does not, click on the statement, and select
`all`{.interpreted-text role="guilabel"} from the drop-down menu (as
opposed to `any`{.interpreted-text role="guilabel"}).

![The statement at the top of the filters list, with the drop-down menu open.](lost_leads_email/match-all.png){.align-center}
::::

### Stage {#email_marketing/stage_filter}

Now, add the `Stage`{.interpreted-text role="guilabel"} filter to
exclude leads that are in the *New*, *Qualified*, and *Won* stages of
the sales pipeline.

:::: note
::: title
Note
:::

This step assumes that the *New*, *Qualified*, and *Won* stages exist in
the CRM pipeline; however, stage names may differ from business to
business. Refer to the database\'s actual stage names in the *CRM*
app\'s pipeline to complete this step, accordingly.
::::

Begin again by clicking `New Rule`{.interpreted-text role="guilabel"}
and select `Stage`{.interpreted-text role="guilabel"} from the first
field\'s drop-down menu. In the second field, select the
`is not in`{.interpreted-text role="guilabel"} operator, and in the
third field, select the `New`{.interpreted-text role="guilabel"},
`Qualified`{.interpreted-text role="guilabel"} and
`Won`{.interpreted-text role="guilabel"} stages to define the rule\'s
parameters.

When the rule is added in this way, the logic in the third field renders
as `OR` ([\|]{.title-ref}) statements.

![Include multiple Stages in the filtering rule, using the \"is in\" operator.](lost_leads_email/stage-is-in.png){.align-center}

:::: tip
::: title
Tip
:::

Another way to add *Stage* rules, is to do so on a one-rule-per-row
basis using the `contains`{.interpreted-text role="guilabel"} or
`does not contain`{.interpreted-text role="guilabel"} operators, and
manually typing out the defining characters in each stage name. This
method, however, only allows for one selection at a time, which can be
useful for quickly turning on/off filters in the
`Search...`{.interpreted-text role="guilabel"} bar.

![Three filter rules requiring that the Stage does not contain New, Qualified, or Won.](lost_leads_email/stages.png){.align-center}
::::

### Lost Reason {#email_marketing/lost_reason_filter}

Next, add one or more `Lost Reason`{.interpreted-text role="guilabel"}
rules to exclude leads that should **not** be targeted for specific
`lost reasons <../../sales/crm/pipeline/lost_opportunities>`{.interpreted-text
role="doc"}.

To do that, create another `New Rule`{.interpreted-text
role="guilabel"}, once again. Then, in the rule\'s first field, select
`Lost Reason`{.interpreted-text role="guilabel"} from the drop-down
menu. For the operator, choose either `is not
in`{.interpreted-text role="guilabel"} or
`does not contain`{.interpreted-text role="guilabel"} from the drop-down
menu. With either selection, use the third field to enter a lost reason
(or multiple lost reasons, depending on your operator choice) to include
in the rule.

If choosing the `does not contain`{.interpreted-text role="guilabel"}
operator, then repeat the preceding steps to add more lost reasons, as
needed, where each lost reason occupies one rule row at a time.

For more information, refer to the section below outlining how to
`select appropriate lost
reasons <email_marketing/select_lost_reasons>`{.interpreted-text
role="ref"}.

![A list of filter rules that exclude all lost reasons other than the desired reason.](lost_leads_email/reasons.png){.align-center}

### Active {#email_marketing/active_filter}

Finally, add a pair of `Active`{.interpreted-text role="guilabel"}
filters to include both active and inactive leads for the campaign.

:::: important
::: title
Important
:::

Adding both active *and* inactive lead records is necessary to capture
the full scope of lost leads in the database. Doing one without the
other greatly impacts the number of targetable records for the email
campaign, and does **not** include a complete or accurate lost leads
audience.
::::

First, click the `(Add Branch)`{.interpreted-text role="guilabel"} icon
on the most recently created rule (e.g. `Lost Reason`{.interpreted-text
role="guilabel"}), which is the middle of three icons located to the
right of the rule row. Doing so adds a pair of
`any of`{.interpreted-text role="guilabel"} rules. Then, in the top
rule\'s first field of the newly-created branch, select the
`Active`{.interpreted-text role="guilabel"} parameter from the drop-down
menu. The rule then automatically fills out to read:
`Active`{.interpreted-text role="guilabel"} *is* [set]{.title-ref}.

For the first field of the bottom rule of the branch, select
`Active`{.interpreted-text role="guilabel"} from the drop-down menu
again. However, this time, select `is not`{.interpreted-text
role="guilabel"} from the operator drop-down menu in the second field.
The rule should then read: `Active`{.interpreted-text role="guilabel"}
*is not* [set]{.title-ref}.

![A pair of Match Any Of filter rules that include both active and inactive leads.](lost_leads_email/active.png){.align-center}

## Add body content

Now, with the domain section of the email campaign complete, create the
body content of the email using any of the premade stylized templates,
or choose between the `Plain Text`{.interpreted-text role="guilabel"} or
`Start From Scratch`{.interpreted-text role="guilabel"} options for more
granular control. For more information, refer to the *Email Marketing*
`documentation on how to create an email <email_marketing/create_email>`{.interpreted-text
role="ref"}.

:::: tip
::: title
Tip
:::

To save the set of filters for later use, click
`Save as Favorite Filter 💾 (floppy
disk)`{.interpreted-text role="guilabel"}, enter a name (such as [Lost
Leads]{.title-ref}), and click `Add`{.interpreted-text role="guilabel"}.

![The Save as Favorite Filter pop-up can save the lost leads criteria for later.](lost_leads_email/favorite-filter.png){.align-center}
::::

## Send or schedule

Once all the components of the email campaign are complete, either:

- click the purple `Send`{.interpreted-text role="guilabel"} button at
  the top-left of the form to immediately send the email; or
- click the gray `Schedule`{.interpreted-text role="guilabel"} button,
  located to the right of the `Send`{.interpreted-text role="guilabel"}
  button, to send the email at a future date and time.

:::: tip
::: title
Tip
:::

Consider using *A/B Testing* to send an alternate version of the email
to a percentage of the target leads. This can help determine what
subject lines and body content produce the best click-through rates,
before sending a final version to the remaining leads.

To do so, open the `A/B Tests`{.interpreted-text role="guilabel"} tab on
the mailing form and check the box next to
`Allow A/B Testing`{.interpreted-text role="guilabel"}. Then, adjust the
parameters as needed, and click `Create
an Alternative Version`{.interpreted-text role="guilabel"}.

![The A/B Tests tab with the Allow A/B Testing box checked to create an alternate version.](lost_leads_email/ab-testing.png){.align-center}
::::

## Select appropriate lost reasons {#email_marketing/select_lost_reasons}

When a lead is marked as lost, Odoo recommends selecting a *Lost Reason*
to indicate why the opportunity did not result in a sale. Doing so keeps
the pipeline organized and reporting data accurate, and generates
potential to follow up with the lead in the future.

If an existing *Lost Reason* is not applicable, users with the necessary
permissions can create new ones, which means the lost reasons in a
database can vary from organization to organization, and from pipeline
to pipeline.

For more information on *Lost Reasons*, including the creation of them,
refer to `../../sales/crm/pipeline/lost_opportunities`{.interpreted-text
role="doc"}.

By default, Odoo includes a few common *Lost Reasons*, such as:

- *Too expensive*
- *We don\'t have people/skills*
- *Not enough stock*

When determining which reasons to include in a lost leads reactivation
email, consider what the email is advertising, in order pinpoint one or
more relevant lost reasons. Then, add a rule stating,
`Lost Reason`{.interpreted-text role="guilabel"} *does not contain*
[\_\_\_\_\_]{.title-ref} for every reason in the database, **except**
for the relevant one(s).

::: example
If the email advertises a selection of previously-limited merchandise
that is now back in stock, it makes sense to target leads with the lost
reason: *not enough stock*.

![A list of filter rules that exclude all lost reasons except for Out of Stock.](lost_leads_email/out-of-stock.png){.align-center}

If the email advertises a price reduction, it makes sense to target
leads with the lost reason: *too expensive*.

![A list of filter rules that exclude all lost reasons except for Too Expensive.](lost_leads_email/too-expensive.png){.align-center}
:::

## Analyze the results

After sending a lost leads reactivation email, marketing teams can use
the smart buttons along the top of the email to analyze the results, and
determine follow-up actions.

Clicking on any of the smart buttons opens a list of records matching
that button\'s specific criteria.

![The Mailing page of a sent email showing the smart buttons along the top of the page.](lost_leads_email/smart-buttons.png){.align-center}

The smart buttons include:

- `Sent`{.interpreted-text role="guilabel"}: total number of emails
  sent.
- `Opened`{.interpreted-text role="guilabel"}: percentage of recipients
  that opened the email.
- `Replied`{.interpreted-text role="guilabel"}: percentage of recipients
  that replied to the email.
- `Clicked`{.interpreted-text role="guilabel"}: click-through rate (%)
  of recipients that clicked on a link in the email.
- `Leads/Opportunities`{.interpreted-text role="guilabel"}: number of
  leads (or opportunities) that have been created in the *CRM* pipeline,
  as a result of the email campaign.
- `Quotations`{.interpreted-text role="guilabel"}: number of quotations
  that have been created in the *Sales* application, as a result of the
  email.
- `Invoiced`{.interpreted-text role="guilabel"}: total revenues
  generated, as a result of the email campaign, via invoices sent to,
  and paid by, customers. These values are recorded in either the
  *Invoicing* or *Accounting* application, depending on which app is
  installed in the database.
- `Received`{.interpreted-text role="guilabel"}: percentage of
  recipients that received the email.
- `Bounced`{.interpreted-text role="guilabel"}: percentage of emails
  that bounced (`not delivered`{.interpreted-text role="dfn"}).
- `Ignored`{.interpreted-text role="guilabel"}: the number of recipients
  that received the email, but have not interacted with it in a
  meaningful way (i.e. opened, clicked, etc.).

## Email nurturing

*Email nurturing* (sometimes referred to as *lead nurturing*) is the
process of sending a series of timely and relevant \"nudge\" emails to
connect with a lead, build a deeper relationship, and ultimately convert
the lead into a sale.

The point of nurturing is to keep the email campaign \"visible\" or at
the top of a lead\'s inbox, until they are ready to buy.

There are many approaches to effective lead nurturing, but they often
involve:

- Sending an initial email (such as, a lost leads reactivation email).
- Sending a follow-up email each week (or according to specific
  triggers) for the duration of the campaign.
- Continuously analyzing results to learn what approaches have resulted
  in sales.
- Continuously adjusting the approach to remain \"visible\" at the top
  of the lead\'s inbox, and hopefully, get a meaningful response from
  the lead.

As a campaign progresses, a marketing team may send different follow-up
emails depending on how a lead responded the previous week.

::: example
A marketing team wants to advertise a restocking of limited-run
merchandise to all leads with a lost reason of *not enough stock*. They
develop the following three-week long lead nurturing campaign.

- **Week 1:** the marketing team sends an initial email, with the
  subject line: *"Limited run merchandise is back in stock! Act now!"*
- **Week 2:** the marketing team sends two different emails, depending
  on how a lead responded.
  - If a lead ignored the Week 1 email: *"Stock is almost out, did you
    get yours?"*
  - If a lead clicked on the Week 1 email: *\"You still have time to add
    this to your collection\"*
- **Week 3:** the marketing team sends a final email to all leads who
  have not been converted stating: *"20% off, don\'t miss your last
  chance to get these items before they\'re gone!"*

Throughout the campaign, the marketing team continuously refers to the
smart buttons along the top of the mailing page to see what percentages
of leads are opening, clicking on, or ignoring the emails. They also
regularly analyze reports on how many opportunities, quotations, and
invoices have been generated by the campaign.
:::

::: seealso
\- `../email_marketing`{.interpreted-text role="doc"} -
`unsubscriptions`{.interpreted-text role="doc"} -
`../marketing_automation`{.interpreted-text role="doc"}
:::




--- SOURCE: marketing/email_marketing/mailing_lists.md ---

# Mailing lists

Mailing lists in Odoo are used for both pre and post sales
communications in the *Email Marketing* application. They provide sales
teams with qualified lead lists, focus group participants, or current
customers that fulfill specific criteria.

Mailing lists can be generated in Odoo, and exported as a downloadable
file, or into the *Knowledge*, *Dashboards*, or *Spreadsheets*
applications, or imported via copy/paste or file upload.

## Create mailing lists

To create a mailing list in the *Email Marketing* application, navigate
to `Email
Marketing app --> Mailing Lists --> Mailing Lists --> New`{.interpreted-text
role="menuselection"}.

Clicking `New`{.interpreted-text role="guilabel"} reveals a blank
mailing list form.

![View of the mailing list form in the Odoo Email Marketing application.](mailing_lists/new-mailing-list-form.png){.align-center}

On the form, type a name in the `Mailing List`{.interpreted-text
role="guilabel"} field at the top.

If the mailing list should be accessible by recipients from the
subscription management page, allowing them to update their preferences,
tick the box next to `Show In Preferences`{.interpreted-text
role="guilabel"}.

In the upper-left corner of the mailing list form, there are two
buttons: `Send Mailing`{.interpreted-text role="guilabel"} and
`Send SMS`{.interpreted-text role="guilabel"}.

:::: important
::: title
Important
:::

The `Send SMS`{.interpreted-text role="guilabel"} button **only**
appears if the *SMS Marketing* application is installed.
::::

Clicking `Send Mailing`{.interpreted-text role="guilabel"} reveals a
separate page with a blank email template form, which can be filled out
by following steps explained in the `Email Marketing doc
<../email_marketing>`{.interpreted-text role="doc"}.

Clicking `Send SMS`{.interpreted-text role="guilabel"} reveals a
separate page with a blank SMS template form, which can be filled out by
following steps explained in the `SMS Marketing doc
<../sms_marketing>`{.interpreted-text role="doc"}.

At the top of the mailing list form is a series of smart buttons that
display a variety of metrics related to the specific mailing list. When
any of the smart buttons are clicked, a separate page is revealed,
showcasing detailed analytics related to that particular statistic.

The smart buttons available on a mailing list form are:

- `Recipients`{.interpreted-text role="guilabel"}: how many people are
  subscribed to the mailing list
- `Mailings`{.interpreted-text role="guilabel"}: how many mailings have
  been sent using this mailing list
- `% Bounce`{.interpreted-text role="guilabel"}: percentage of mailings
  related to this mailing list that have been bounced back
- `% Opt-out`{.interpreted-text role="guilabel"}: percentage of
  recipients that have opted-out of mailings from this mailing list
- `% Blacklist`{.interpreted-text role="guilabel"}: percentage of
  recipients that have blacklisted themselves from the mailing list
  altogether

Once all the configurations on the mailing list form are complete, Odoo
automatically adds the new mailing list to the
`Mailing List`{.interpreted-text role="guilabel"} page in the *Email
Marketing* app
(`Email Marketing app --> Mailing Lists --> Mailing Lists`{.interpreted-text
role="menuselection"}).

## Add contacts to mailing list {#marketing/mailing-list/contacts}

In Odoo *Email Marketing*, there are a few different ways to add
contacts to a mailing list.

From the `Mailing Lists`{.interpreted-text role="guilabel"} page
(`Email Marketing --> Mailing Lists -->
Mailing Lists`{.interpreted-text role="menuselection"}), click the
`Total Contacts`{.interpreted-text role="guilabel"} link on the line of
the desired mailing list to which contacts should be added.

Doing so reveals a separate `Mailing List Contacts`{.interpreted-text
role="guilabel"} page for that specific mailing list, where contacts can
be created or imported, and then added to the specific mailing list.

This same page can also be accessed by clicking the desired mailing list
from the `Mailing
Lists`{.interpreted-text role="guilabel"} page, and then clicking the
`Recipients`{.interpreted-text role="guilabel"} smart button on the
mailing list form.

Doing so *also* reveals a separate
`Mailing List Contacts`{.interpreted-text role="guilabel"} page for that
specific mailing list, where contacts can be created or imported, and
then added to the specific mailing list.

Contacts can also be directly imported to a specific mailing list from
the `Mailing Lists`{.interpreted-text role="guilabel"} page, by clicking
`Import Contacts`{.interpreted-text role="guilabel"} to the far-right of
the desired mailing list.

![The import contacts button of a mailing list line in Odoo Email Marketing.](mailing_lists/import-contacts-button.png){.align-center}

Doing so reveals an `Import Mailing Contacts`{.interpreted-text
role="guilabel"} pop-up form.

![The import mailing contacts pop-up form that appears in Odoo Email Marketing.](mailing_lists/import-mailing-contacts-popup.png){.align-center}

Here, the desired mailing list is auto-populated in the
`Import contacts in`{.interpreted-text role="guilabel"} field. Beneath
that, write or paste email addresses in the
`Contact List`{.interpreted-text role="guilabel"} field.

The option to import a country, company name, and more is available, via
the `Upload a
file`{.interpreted-text role="guilabel"} link at the bottom of the
pop-up form.

When all contacts and configurations are complete, click
`Import`{.interpreted-text role="guilabel"}.

To add contacts to a specific mailing list from a master list of all
mailing list contacts in the database, navigate to
`Email Marketing app --> Mailing Lists --> Mailing List
Contacts`{.interpreted-text role="menuselection"}. Doing so reveals the
`Mailing List Contacts`{.interpreted-text role="guilabel"} page,
featuring a list of all contacts associated with every mailing list.

![The Mailing List page in the Odoo Email Marketing application.](mailing_lists/mailing-list-page.png){.align-center}

The default `Exclude Blacklisted Emails`{.interpreted-text
role="guilabel"} filter appears in the search bar.

From the `Mailing List Contacts`{.interpreted-text role="guilabel"}
page, contacts can be created and/or imported, and then added to a
mailing list.

To add an existing contact to a mailing list, select the desired contact
from the list on the `Mailing List Contacts`{.interpreted-text
role="guilabel"} page to reveal their contact form.

At the bottom of their contact form, click
`Add a line`{.interpreted-text role="guilabel"} under the
`Mailing List`{.interpreted-text role="guilabel"} column, locate the
desired mailing list from the drop-down menu, and select it.

![The Add a line for mailing lists on a standard contact form in Odoo Email Marketing.](mailing_lists/contact-form-mailing-list-add.png){.align-center}

:::: tip
::: title
Tip
:::

A mailing list can be created directly from a contact form, by typing
the name of the new mailing list in the `Mailing List`{.interpreted-text
role="guilabel"} field. Then, after a new mailing list name has been
entered, two options appear on the drop-down menu beneath the new
mailing list name.

From this drop-down menu, select `Create`{.interpreted-text
role="guilabel"} to create the mailing list and edit it later, or select
`Create and edit...`{.interpreted-text role="guilabel"} to create and
edit the new mailing list right away.
::::

To remove a contact from a mailing list that the contact has been added
to, enable the `Opt Out`{.interpreted-text role="guilabel"} checkbox. If
the `Opt Out`{.interpreted-text role="guilabel"} checkbox is ticked, the
ability to add a `Reason`{.interpreted-text role="guilabel"} why the
contact opted-out is also available.

When/if a contact *has* opted-out of a mailing list, the date they
activated their opt-out appears in the
`Unsubscription Date`{.interpreted-text role="guilabel"} column on their
contact form.

Lastly, the initial `Subscription Date`{.interpreted-text
role="guilabel"} can be seen, as well. This field is auto-populated with
the date and time their subscription to the mailing list has been saved.

Multiple mailing lists can be added to a single contact form.

To delete any mailing list from a contact form, simply click the
`🗑️ (trash can)`{.interpreted-text role="guilabel"} icon.

## Link mailing list to website

When a mailing list is created in the database, Odoo provides the option
to directly link the mailing list to the Odoo-built website (created via
the Odoo *Website* application).

To link a mailing list to a website, navigate to the front-end of the
website, which can be accomplished in a variety of ways throughout the
database. The most direct way to get to the front-end of the website is
to simply open the `Website`{.interpreted-text role="menuselection"}
application from the main Odoo dashboard.

Doing so reveals the designated homepage of the Odoo-built website for
the database.

From the front-end of the website, click the `Edit`{.interpreted-text
role="guilabel"} button in the upper-right corner. When clicked, Odoo
reveals a right-sidebar, filled with drag-and-drop *building blocks*,
packed with various features, options, and design elements.

Next, in the search bar of the right-sidebar, search for
[Newsletter]{.title-ref}. The `Newsletter`{.interpreted-text
role="guilabel"} selection of building blocks is used to add
subscription fields for any mailing list onto the website.

![View of how to quickly search for Newsletter blocks in the Odoo Website application.](mailing_lists/newsletter-block-search.png){.align-center}

Doing so reveals the following building block options:
`Newsletter Block`{.interpreted-text role="guilabel"},
`Newsletter Popup`{.interpreted-text role="guilabel"}, and
`Newsletter`{.interpreted-text role="guilabel"}. Any of these options
can be used to add subscription fields for a mailing list onto the
website.

The `Newsletter Block`{.interpreted-text role="guilabel"} option places
a customizable block onto the body of the website where a visitor to
enter their email and click a button to subscribe to a designated
mailing list.

![Sample of how a newsletter block appears on an Odoo Website.](mailing_lists/newsletter-block-sample.png){.align-center}

The `Newsletter Popup`{.interpreted-text role="guilabel"} option reveals
a customizable pop-up window that appears when a visitor scrolls to the
specific section of the webpage on which the building block is placed.
When the visitor reaches the designated section, a pop-up window
appears, in which a visitor can enter their email address, click a
button, and subscribe to that predetermined mailing list.

![Sample of how a newsletter popup block appears on an Odoo Website.](mailing_lists/newsletter-popup-sample.png){.align-center}

The `Newsletter`{.interpreted-text role="guilabel"} option provides the
same functionality as the other options. However, it only consists of a
field for the visitor to enter their email address, and a button to
subscribe to the mailing list.

It is covertly designed in this fashion to be cleanly implemented into
the content of the webpage and/or footer.

![Sample of how a newsletter block appears on an Odoo Website.](mailing_lists/newsletter-sample.png){.align-center}

Once the desired newsletter building block is chosen, drag-and-drop it
onto the body of the website. Then, select the newly-placed newsletter
building block to reveal its configuration options on the right-sidebar.

From there, open the `Newsletter`{.interpreted-text role="guilabel"}
drop-down menu, and select the specific mailing list that should be
applied to the block.

![The newsletter drop-down menu in the customize sidebar that appears in Odoo Website.](mailing_lists/newsletter-dropdown-customize-sidebar.png){.align-center}

Once the desired configurations and customizations are complete, be sure
to click the `Save`{.interpreted-text role="guilabel"} button in the
upper-right corner.

Now, when a visitor enters their email address, and clicks the button to
subscribe, they are instantly subscribed to that pre-configured mailing
list. They are also added as a contact for that mailing list in Odoo
*Email Marketing*.

::: seealso
\- `../email_marketing`{.interpreted-text role="doc"} -
`unsubscriptions`{.interpreted-text role="doc"}
:::




--- SOURCE: marketing/email_marketing/unsubscriptions.md ---

# Manage unsubscriptions (blacklist)

Providing recipients with the power to unsubscribe from mailing lists is
not only a smart business practice, it\'s often a legal requirement.
Allowing recipients to unsubscribe from a mailing list establishes a
sense of trust and control with an audience. It also helps companies
appear more genuine, and less *spammy*.

## Unsubscribe and blacklist

In addition to having the option to unsubscribe from specific mailing
lists, the recipient can also *blacklist* themselves during the
unsubscription process, meaning they will not receive *any* more
marketing emails from the Odoo database.

In order to provide recipients with the ability to blacklist themselves,
a specific feature **must** be enabled in the *Email Marketing*
application.

Navigate to
`Email Marketing app --> Configuration --> Settings`{.interpreted-text
role="menuselection"}, and tick the checkbox next to the
`Blacklist Option when Unsubscribing`{.interpreted-text role="guilabel"}
feature. Then, click `Save`{.interpreted-text role="guilabel"} in the
upper-left corner of the `Settings`{.interpreted-text role="guilabel"}
page.

![View of the blacklist feature in the Settings page of the Odoo Email Marketing app.](unsubscriptions/blacklist-feature.png){.align-center}

### Unsubscribe

By default, an *Unsubscribe* link appears at the bottom of all mailing
templates.

:::: warning
::: title
Warning
:::

The *Unsubscribe* link does **not** appear by default if the *Start From
Scratch* template is used to create a mailing. The user **must**
manually add the specific unsubscribe link
[/unsubscribe_from_list]{.title-ref} in the body of the email, or use a
block from the *Footers* section of the email builder, which includes
the unsubscribe link.
::::

If a recipient clicks the *Unsubscribe* link in a mailing, Odoo
instantly unsubscribes them from the mailing list, presents them with a
`Mailing Subscriptions`{.interpreted-text role="guilabel"} page where
they can directly manage their subscriptions, and informs them that
they\'ve been `Successfully
Unsubscribed`{.interpreted-text role="guilabel"}.

![The Mailng Subscriptions page that appears when \'Unsubscribe\' link in mailing is clicked.](unsubscriptions/mailing-subscriptions-page.png){.align-center}

Beneath that, Odoo asks the former subscriber to
`Please let us know why you updated your
subscription`{.interpreted-text role="guilabel"}, and the user can
proceed to choose the appropriate opt-out reason from a series of
options presented to them.

:::: note
::: title
Note
:::

The opt-out answer options can be created and modified by navigating to
`Email
Marketing app --> Configuration --> Optout Reasons`{.interpreted-text
role="menuselection"}.
::::

Once they\'ve chosen the appropriate opt-out reason from the options
presented to them, they can click the `Send`{.interpreted-text
role="guilabel"} button. Odoo then logs their reasoning for
unsubscribing in the *Email Marketing* app for future analysis.

### Blacklist

For a recipient to remove (i.e. blacklist) themselves from **all**
marketing emails during the unsubscription process, on the
`Mailing Subscriptions`{.interpreted-text role="guilabel"} page, they
must click `Exclude Me`{.interpreted-text role="guilabel"}.

Upon clicking `Exclude Me`{.interpreted-text role="guilabel"}, Odoo
informs the recipient they have been successfully blacklisted, with a
message reading: `✔️ Email added to our blocklist`{.interpreted-text
role="guilabel"}.

![The blocklist question on the Mailing Subscriptions page that recipients see.](unsubscriptions/mailing-subscriptions-blocklist-question.png){.align-center}

Beneath that, Odoo asks the former subscriber to
`Please let us know why you want to be
added to our blocklist`{.interpreted-text role="guilabel"}, and the user
can proceed to choose the appropriate reason from a series of options
presented to them.

Once they\'ve chosen the appropriate reason from the options presented
to them, they can click the `Send`{.interpreted-text role="guilabel"}
button. Odoo then logs their reasoning for blacklisting themselves in
the *Email Marketing* app for future analysis.

## Blacklisted email addresses

To view a complete list of all blacklisted email addresses, navigate to
`Email
Marketing app --> Configuration --> Blacklisted Email Addresses`{.interpreted-text
role="menuselection"}.

![View of the blacklisted email addresses page in Odoo Email Marketing.](unsubscriptions/blacklisted-email-addresses.png){.align-center}

When a blacklisted record is selected from this list, Odoo reveals a
separate page with the recipient\'s contact information, along with the
provided `Reason`{.interpreted-text role="guilabel"} why they chose to
blacklist themselves.

![View of a blacklisted contact detail form in Odoo Email Marketing.](unsubscriptions/blacklisted-contact-form.png){.align-center}

In the *chatter* of the blacklisted record page, there\'s a time-stamped
message, informing the user when the recipient blacklisted themselves
(via a `Mail Blacklist created`{.interpreted-text role="guilabel"} log
note).

:::: note
::: title
Note
:::

Blacklisted emails are excluded from all marketing mailings, however,
these emails can still receive transactional emails, such as order
confirmations, shipping notifications, etc.
::::

## Unblacklist contacts

To *Unblacklist* contacts, click the `Unblacklist`{.interpreted-text
role="guilabel"} button in the upper-left corner of a blacklisted
record\'s page to remove the contact from the blacklist, allowing them
to receive mailings once again.

When `Unblacklist`{.interpreted-text role="guilabel"} is clicked, an
`Are you sure you want to unblacklist this
Email Address?`{.interpreted-text role="guilabel"} pop-up window
appears.

In this pop-up window, the email address of the selected blacklisted
record is shown, and there\'s a `Reason`{.interpreted-text
role="guilabel"} field, in which a reason can be entered, explaining why
this particular contact was removed from the blacklist.

![View of the unblacklist pop-up window in the Odoo Email Marketing application.](unsubscriptions/unblacklist-popup.png){.align-center}

After filling in the fields, click `Confirm`{.interpreted-text
role="guilabel"} to officially remove that particular contact from the
blacklist.

::: seealso
\- `../email_marketing`{.interpreted-text role="doc"} -
`mailing_lists`{.interpreted-text role="doc"}
:::




--- SOURCE: marketing/email_marketing.md ---

show-content

:   

# Email Marketing

The Odoo *Email Marketing* app provides drag-and-drop design tools,
pre-built templates, and other interactive features to create engaging
email campaigns. The *Email Marketing* app also provides detailed
reporting metrics to track the campaigns\' overall effectiveness.

::: seealso
\- [Odoo Tutorial: Email
Marketing](https://www.odoo.com/slides/slide/email-marketing-essentials-989?fullscreen=1) -
[Magic Sheet - Email Marketing strategy
\[PDF\]](https://drive.google.com/drive/folders/1TqZfYCF-56yhUSDVyfFjkmB23RWaRBP7)
:::

::::::: cards
::: {.card target="email_marketing/mailing_lists"}
Mailing lists

Silo contacts into specific mailing lists.
:::

::: {.card target="email_marketing/unsubscriptions"}
Manage unsubscriptions (Blacklist)

Allow recipients to unsubscribe and blacklist from future mailings.
:::

::: {.card target="email_marketing/lost_leads_email"}
Lost leads reactivation email

Target lost leads with Email Marketing.
:::

::: {.card target="email_marketing/analyze_metrics"}
Analyze Metrics

Analyzing campaign metrics.
:::
:::::::

## Email marketing dashboard

After installing the application, click the
`Email Marketing`{.interpreted-text role="menuselection"} app icon from
the main Odoo dashboard. Doing so reveals the main
`Mailings`{.interpreted-text role="guilabel"} dashboard in the default
list view.

![View of the main dashboard of the Odoo Email Marketing application.](email_marketing/mailings-dashboard.png){.align-center}

In the search bar, the default filter of `My Mailings`{.interpreted-text
role="guilabel"} is present to show all the mailings related to the
current user. To remove that filter, click the
`✖️ (remove)`{.interpreted-text role="guilabel"} icon next to the filter
in the search bar. Doing so reveals all the mailings in the database.

The information on the `Mailings`{.interpreted-text role="guilabel"}
dashboard has four different view options, located in the upper-right
corner as individual icons.

The view options, from left-to-right, are:

- `List <email_marketing/list-view>`{.interpreted-text role="ref"}
  (default view)
- `Kanban <email_marketing/kanban-view>`{.interpreted-text role="ref"}
- `Calendar <email_marketing/calendar-view>`{.interpreted-text
  role="ref"}
- `Graph <email_marketing/graph-view>`{.interpreted-text role="ref"}

### List view {#email_marketing/list-view}

The list view, represented by the
`☰ (horizontal lines)`{.interpreted-text role="guilabel"} icon in the
upper-right corner, is the default view of the
`Mailings`{.interpreted-text role="guilabel"} dashboard in the
`Email Marketing`{.interpreted-text role="guilabel"} app.

While in list view, there are columns dedicated to different aspects of
information related to the listed emails. Those columns are as follows:

- `Date`{.interpreted-text role="guilabel"}: the date the email was
  sent.
- `Subject`{.interpreted-text role="guilabel"}: the subject of the
  email.
- `Responsible`{.interpreted-text role="guilabel"}: the user who created
  the email, or the user who has been assigned to the email.
- `Sent`{.interpreted-text role="guilabel"}: how many times the email
  has been sent.
- `Delivered (%)`{.interpreted-text role="guilabel"}: percentage of sent
  emails that have been successfully delivered.
- `Opened (%)`{.interpreted-text role="guilabel"}: percentage of sent
  emails that have been opened by the recipients.
- `Clicked (%)`{.interpreted-text role="guilabel"}: percentage of sent
  emails that have been clicked by the recipients.
- `Replied (%)`{.interpreted-text role="guilabel"}: percentage of sent
  emails that have been replied to by the recipients.
- `Status`{.interpreted-text role="guilabel"}: the status of the email
  (`Draft`{.interpreted-text role="guilabel"},
  `In Queue`{.interpreted-text role="guilabel"}, or
  `Sent`{.interpreted-text role="guilabel"}).

To add or remove columns, click the
`Additional Options (two horizontal lines with dots)`{.interpreted-text
role="guilabel"} icon, located to the far-right of the column titles in
list view. Doing so reveals a drop-down menu of additional column
options.

### Kanban view {#email_marketing/kanban-view}

The Kanban view, represented by the
`(inverted bar graph)`{.interpreted-text role="guilabel"} icon, can be
accessed in the upper-right corner of the `Mailings`{.interpreted-text
role="guilabel"} dashboard in the `Email Marketing`{.interpreted-text
role="guilabel"} app.

![Kanban view of the main dashboard of the Odoo Email Marketing application.](email_marketing/kanban-view.png){.align-center}

While in Kanban view, the email information is displayed in the various
stages.

The stages are: `Draft`{.interpreted-text role="guilabel"},
`In Queue`{.interpreted-text role="guilabel"},
`Sending`{.interpreted-text role="guilabel"}, and
`Sent`{.interpreted-text role="guilabel"}.

- `Draft`{.interpreted-text role="guilabel"}: the email is still being
  written/created.
- `In Queue`{.interpreted-text role="guilabel"}: the email is scheduled
  to be sent at a later date.
- `Sending`{.interpreted-text role="guilabel"}: the email is currently
  being sent to its recipients.
- `Sent`{.interpreted-text role="guilabel"}: the email has already been
  sent to its recipients.

In each stage, there are drag-and-drop cards representing the emails
that have been created/sent, and the stage they are in represents the
current status of that mailing.

Each card on the `Mailings`{.interpreted-text role="guilabel"} dashboard
provides key information related to that specific email.

When the cursor hovers over the upper-right corner of an email campaign
card, a `⋮ (three
vertical dots)`{.interpreted-text role="guilabel"} icon appears. When
clicked, a mini drop-down menu reveals the option to color-code the
email, `Delete`{.interpreted-text role="guilabel"} the email, or
`Archive`{.interpreted-text role="guilabel"} the message for potential
future use.

![View of the three-dot drop-down menu on the Odoo Email Marketing dashboard.](email_marketing/three-dot-dropdown.png){.align-center}

### Calendar view {#email_marketing/calendar-view}

The calendar view, represented by a `📆 (calendar)`{.interpreted-text
role="guilabel"} icon, can be accessed in the upper-right corner of the
`Mailings`{.interpreted-text role="guilabel"} dashboard in the
`Email Marketing`{.interpreted-text role="guilabel"} app.

While in calendar view, a monthly calendar (by default), shows when the
mailings have been sent or are scheduled to be sent.

![Calendar view of the mailings dashboard in the Email Marketing application.](email_marketing/calendar-view.png){.align-center}

The current date is represented by a `🔴 (red circle)`{.interpreted-text
role="guilabel"} icon over the date on the calendar.

To the right of the calendar, the options to filter the results by
`Responsible`{.interpreted-text role="guilabel"} and/or
`Status`{.interpreted-text role="guilabel"} are available, via
checkboxes.

:::: tip
::: title
Tip
:::

To hide the right sidebar, click the `(panel-right)`{.interpreted-text
role="guilabel"} icon, located above the sidebar.
::::

In the top-left corner, above the calendar, the option to change the
time period being displayed is available via a drop-down menu, which
shows `Month`{.interpreted-text role="guilabel"}, by default. When
clicked, the drop-down menu that appears reveals the options:
`Day`{.interpreted-text role="guilabel"}, `Week`{.interpreted-text
role="guilabel"}, `Month`{.interpreted-text role="guilabel"} (default),
`Year`{.interpreted-text role="guilabel"}, and
`Show weekends`{.interpreted-text role="guilabel"} (selected by
default).

Clicking any of those options changes the calendar display to reflect
that desired amount of time.

Clicking either `⬅️ (left arrow)`{.interpreted-text role="guilabel"}
icon or `➡️ (right arrow)`{.interpreted-text role="guilabel"} icon
changes the calendar to a previous or future time, depending on what is
clicked, based on the chosen amount of time being represented.

To jump back to the current date, click the `Today`{.interpreted-text
role="guilabel"} button.

### Graph view {#email_marketing/graph-view}

The graph view, represented by a `(line graph)`{.interpreted-text
role="guilabel"} icon, can be accessed in the upper-right corner of the
`Mailings`{.interpreted-text role="guilabel"} dashboard in the
`Email Marketing`{.interpreted-text role="guilabel"} app.

While in graph view, the status of the emails on the
`Mailings`{.interpreted-text role="guilabel"} page is represented in a
bar graph, but other graph view options can be implemented, if needed.

![How the Graph view appears in the Odoo Email Marketing application.](email_marketing/graph-view.png){.align-center}

In the upper-left corner, above the graph, there is a
`Measures`{.interpreted-text role="guilabel"} drop-down menu. When
clicked, different filter options become available to further customize
the graph views.

Those `Measures`{.interpreted-text role="guilabel"} options are:
`A/B Testing percentage`{.interpreted-text role="guilabel"} and
`Count`{.interpreted-text role="guilabel"} (default).

To the right of the `Measures`{.interpreted-text role="guilabel"}
drop-down menu is an `Insert in Spreadsheet`{.interpreted-text
role="guilabel"} button, if the *Documents* application is installed.
When clicked, a pop-up window appears, in which the ability to add the
graph to a spreadsheet or dashboard becomes available.

Beside the `Measures`{.interpreted-text role="guilabel"} drop-down menu
and `Insert in Spreadsheet`{.interpreted-text role="guilabel"} button
are different graph view options. From left-to-right, those graph view
options are: `(bar
chart)`{.interpreted-text role="guilabel"} (default),
`(line chart)`{.interpreted-text role="guilabel"}, and
`(pie chart)`{.interpreted-text role="guilabel"}.

:::: note
::: title
Note
:::

Each graph view option provides its own series of additional view
options, which appear to the right of the selected graph view option.
::::

### Search options

Regardless of the view chosen for the `Mailings`{.interpreted-text
role="guilabel"} dashboard in the `Email
Marketing`{.interpreted-text role="guilabel"} app, the
`Filters`{.interpreted-text role="guilabel"},
`Group by`{.interpreted-text role="guilabel"}, and
`Favorites`{.interpreted-text role="guilabel"} options are always
available to further customize the information being displayed.

To access those options, click the `(downward arrow)`{.interpreted-text
role="guilabel"} icon, located to the right of the search bar. Doing so
reveals a drop-down mega menu featuring those filtering and grouping
options.

![The drop-down mega menu of search options the Odoo Email Marketing application.](email_marketing/search-mega-menu.png){.align-center}

These options provide various ways to specify and organize the
information seen on the `Mailings`{.interpreted-text role="guilabel"}
dashboard.

:::::: tabs
::: tab
Filters

This section of the drop-down mega menu provides different ways to
filter email results being shown on the `Mailings`{.interpreted-text
role="guilabel"} dashboard in the `Email Marketing`{.interpreted-text
role="guilabel"} app.

![View of filters drop-down menu options on the Odoo Email Marketing dashboard.](email_marketing/filters-dropdown.png){.align-center}

The options are: `My Mailings`{.interpreted-text role="guilabel"},
`Sent Date`{.interpreted-text role="guilabel"},
`A/B Tests`{.interpreted-text role="guilabel"},
`A/B Tests to review`{.interpreted-text role="guilabel"},
`Archived`{.interpreted-text role="guilabel"}, and
`Add Custom Filter`{.interpreted-text role="guilabel"}.

If `Add Custom Filter`{.interpreted-text role="guilabel"} is selected,
Odoo reveals a pop-up window, with three customizable fields to fill in,
in order to create custom filter rules for Odoo to use to retrieve
results that fit more specific criteria.

![Add custom filter pop-up window that appears in Odoo Email Marketing app.](email_marketing/add-custom-filter-popup.png){.align-center}
:::

::: tab
Group By

This section of the drop-down mega menu provides different ways to group
email results being shown on the `Mailings`{.interpreted-text
role="guilabel"} dashboard in the `Email Marketing`{.interpreted-text
role="guilabel"} app.

![View of the Group By drop-down menu on the Odoo Email Marketing application.](email_marketing/group-by-dropdown.png){.align-center}

Using this section, the data can be grouped by the messages\'
`Status`{.interpreted-text role="guilabel"}, or who it was
`Sent By`{.interpreted-text role="guilabel"}.

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
the `Group By`{.interpreted-text role="guilabel"} section. Doing so
reveals a drop-down menu, wherein custom criteria can be selected and
applied, thus delivering any grouping of data that may be desired.
:::

::: tab
Favorites

This section provides the opportunity to save custom filters and/or
groupings for future use. To utilize this section, click the
`Save current search`{.interpreted-text role="guilabel"} field, which
reveals additional fields.

![View of the Favorites drop-down menu on the Odoo Email Marketing application.](email_marketing/favorites-dropdown.png){.align-center}

Give the favorited filter/grouping a title on the blank line above the
checkboxes for `Default filter`{.interpreted-text role="guilabel"} and
`Shared`{.interpreted-text role="guilabel"}.

Ticking the box for `Default filter`{.interpreted-text role="guilabel"}
makes this favorited filter/grouping the default option. Ticking the box
for `Shared`{.interpreted-text role="guilabel"} allows other users to
see and use this favorited filter/grouping.

When all desired options are configured, click `Save`{.interpreted-text
role="guilabel"} to save the filter/grouping in the
`Favorites`{.interpreted-text role="guilabel"} section of the mega
drop-down menu.
:::
::::::

## Settings

To view and modify the *Email Marketing* settings, navigate to
`Email Marketing app
--> Configuration --> Settings`{.interpreted-text role="menuselection"}.

![View of the Configuration menu with Settings page in the Odoo Email Marketing application.](email_marketing/configuration-settings.png){.align-center}

On the `Settings`{.interpreted-text role="guilabel"} page, there are
four features available.

![View of the Settings page in the Odoo Email Marketing application.](email_marketing/settings.png){.align-center}

The features are:

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
- `24H Stat Mailing Reports`{.interpreted-text role="guilabel"}: allows
  users to check how well mailings have performed a day after it has
  been sent.

## Create an email {#email_marketing/create_email}

To create an email, open the `Email Marketing`{.interpreted-text
role="menuselection"} application, and click the `New`{.interpreted-text
role="guilabel"} button in the upper-left corner of the
`Mailings`{.interpreted-text role="guilabel"} dashboard page.

Clicking `New`{.interpreted-text role="guilabel"} reveals a blank email
form.

![View of a blank email detail form in Odoo Email Marketing application.](email_marketing/blank-email-detail-form.png){.align-center}

On the email form, there are fields for the
`Subject <email_marketing/subject>`{.interpreted-text role="ref"} and
`Recipients <email_marketing/recipients>`{.interpreted-text role="ref"}
of the email.

Beneath that, there are three tabs:
`Mail Body <email_marketing/mail_body>`{.interpreted-text role="ref"},
`A/B Tests
<email_marketing/ab_tests>`{.interpreted-text role="ref"}, and
`Settings <email_marketing/settings_tab>`{.interpreted-text role="ref"}.

### Subject {#email_marketing/subject}

First, enter a `Subject`{.interpreted-text role="guilabel"} to the
email. The `Subject`{.interpreted-text role="guilabel"} is visible in
the recipients\' inbox, allowing them to quickly see what the message is
about.

:::: note
::: title
Note
:::

The `Subject`{.interpreted-text role="guilabel"} field is mandatory. An
email can **not** be sent without a `Subject`{.interpreted-text
role="guilabel"}.
::::

The `(smiley face with a plus sign)`{.interpreted-text role="guilabel"}
icon at the end of the `Subject`{.interpreted-text role="guilabel"}
field represents emojis that can be added to the
`Subject`{.interpreted-text role="guilabel"} field. Clicking that icon
reveals a pop-up menu of emojis that can be used.

Beside the `(smiley face with a plus sign)`{.interpreted-text
role="guilabel"} icon at the end of the `Subject`{.interpreted-text
role="guilabel"} field is an empty `(star)`{.interpreted-text
role="guilabel"} icon. When clicked, the `(star)`{.interpreted-text
role="guilabel"} icon turns gold, and the email is saved as a template
in the `Mail Body`{.interpreted-text role="guilabel"} tab, which can be
used again in the future.

### Recipients {#email_marketing/recipients}

Beneath the `Subject`{.interpreted-text role="guilabel"} field on the
email form is the `Recipients`{.interpreted-text role="guilabel"} field.
In this field, select the recipients of the email. By default, the
`Mailing List`{.interpreted-text role="guilabel"} option is selected,
but clicking the field reveals a drop-down menu of other recipient
options.

With the default `Mailing List`{.interpreted-text role="guilabel"}
option selected, a specific mailing list **must** be chosen from the
adjacent `Select mailing lists`{.interpreted-text role="guilabel"} field
drop-down menu.

:::: tip
::: title
Tip
:::

More than one mailing list can be chosen from the
`Select mailing lists`{.interpreted-text role="guilabel"} field.
::::

Odoo then sends the email to contacts on that specific mailing list(s).

::: seealso
`email_marketing/mailing_lists`{.interpreted-text role="doc"}
:::

When the `Recipients`{.interpreted-text role="guilabel"} field is
clicked, a drop-down menu of other options is revealed. Each option
provides different ways Odoo can create a target audience for the email.

![View of recipients drop-down menu in the Odoo Email Marketing application.](email_marketing/recipients-dropdown.png){.align-center}

Those options (excluding the default `Mailing List`{.interpreted-text
role="guilabel"}) provide the option to create a more specified
recipient filter, in an equation-like format, which appears beneath the
`Recipients`{.interpreted-text role="guilabel"} field.

The `Recipients`{.interpreted-text role="guilabel"} field options, other
than the default `Mailing List`{.interpreted-text role="guilabel"}
option, are as follows:

- `Contact`{.interpreted-text role="guilabel"}: ties specifically to the
  *Contacts* app, and includes all the contacts entered in the database.
- `Event Registration`{.interpreted-text role="guilabel"}: ties
  specifically to the *Events* app, and provides opportunities to
  interact with event registrants, in order to communicate important
  information about the event(s), or nurture other valuable actions,
  such as post-event surveys, purchases, etc.
- `Lead/Opportunity`{.interpreted-text role="guilabel"}: ties
  specifically to records in the *CRM* application, which opens up a
  number of opportunities to influence sales or purchase decisions.
- `Mailing Contact`{.interpreted-text role="guilabel"}: ties
  specifically to the *Email Marketing* app, and focuses on specific
  mailing contacts that have been entered in that specific application,
  and are related to a specific mailing list. These contacts are also
  unique because they do *not* have their own contact card in the
  *Contacts* application. This list can be accessed by navigating to
  `Email Marketing app --> Mailing Lists --> Mailing List Contacts`{.interpreted-text
  role="menuselection"}.
- `Sales Order`{.interpreted-text role="guilabel"}: ties specifically to
  the *Sales* app, and focuses on a specific sales orders in the
  database.

#### Add recipient filter

To add a more specific recipient filter to any
`Recipient`{.interpreted-text role="guilabel"} option, select any
recipient option (other than `Mailing List`{.interpreted-text
role="guilabel"}), and click the `Modify filter (right-facing
arrow)`{.interpreted-text role="guilabel"} icon beneath the
`Recipient`{.interpreted-text role="guilabel"} field to reveal three
subsequent filter rule fields, formatted like an equation.

It is highly recommended that users implement detailed targeting
criteria for the `Recipients`{.interpreted-text role="guilabel"} field.
Typically, a single line of targeting logic is not sufficient enough for
an email campaign.

While the `Mailing List`{.interpreted-text role="guilabel"} option is
adequate for the `Recipients`{.interpreted-text role="guilabel"} field,
the `Lead/Opportunity`{.interpreted-text role="guilabel"} and
`Event Registration`{.interpreted-text role="guilabel"} options provide
far more detailed targeting criteria, which can be added on top of those
seed sources.

::: example
For example, with the `Lead/Opportunity`{.interpreted-text
role="guilabel"} option chosen in the `Recipients`{.interpreted-text
role="guilabel"} field, users can add various custom criteria related to
`Created on`{.interpreted-text role="guilabel"} dates,
`Stages`{.interpreted-text role="guilabel"}, `Tags`{.interpreted-text
role="guilabel"}, `Lost Reasons`{.interpreted-text role="guilabel"},
`Sales Teams`{.interpreted-text role="guilabel"},
`Active`{.interpreted-text role="guilabel"} statuses,
`Country`{.interpreted-text role="guilabel"}, and so much more.

![View of how recipient filters can be customized in Odoo Email Marketing.](email_marketing/detailed-filter-records.png){.align-center}
:::

To reveal the sub-menu options within the filter rule fields, click each
field, and make the desired selections, until the preferred
configuration has been achieved.

The number of `records`{.interpreted-text role="guilabel"} in the
database that match the configured rule(s) are indicated beneath the
configured filter rule(s), in green.

![View of how recipient filters can be customized in Odoo Email Marketing.](email_marketing/filter-records.png){.align-center}

:::: note
::: title
Note
:::

Some sub-menu options in the first rule field allow for a second choice
to provide even more specificity.
::::

To the right of each rule, there are three additional options,
represented by `➕ (plus
sign)`{.interpreted-text role="guilabel"}, `(sitemap)`{.interpreted-text
role="guilabel"}, and `🗑️ (trash)`{.interpreted-text role="guilabel"}
icons.

- The `➕ (plus sign)`{.interpreted-text role="guilabel"} icon adds a
  new node (line) to the overall targeting logic.
- The `(sitemap)`{.interpreted-text role="guilabel"} icon adds a branch
  to the node. A branch contains two additional, indented sub-nodes that
  are related to that specific rule, providing even more specificity to
  the parent line above it.
- The `🗑️ (trash)`{.interpreted-text role="guilabel"} icon deletes a
  specific node (line) in the array of logic.

### Mail Body tab {#email_marketing/mail_body}

In the `Mail Body`{.interpreted-text role="guilabel"} tab, there are a
number of pre-configured message templates to choose from.

![View of the templates in the Mail Body tab in Odoo Email Marketing application.](email_marketing/mail-body-templates.png){.align-center}

Select the desired template, and proceed to modify every element of its
design details with Odoo\'s drag-and-drop building blocks, which appear
on the right sidebar when a template is chosen.

![View of the building blocks in the Mail Body tab in Odoo Email Marketing application.](email_marketing/template-building-blocks.png){.align-center}

The features on the sidebar used to create and customize emails are
separated into three sections: `Blocks`{.interpreted-text
role="guilabel"}, `Customize`{.interpreted-text role="guilabel"}, and
`Design`{.interpreted-text role="guilabel"}.

Each building block provides unique features and professional design
elements. To use a building block, drag-and-drop the desired block
element onto the body of the email being built. Once dropped, various
aspects of the building block can be customized.

:::: tip
::: title
Tip
:::

To build an email from the ground up, without any building block
elements, select the `Plain Text`{.interpreted-text role="guilabel"}
template. When selected, Odoo provides a completely blank email canvas,
which can be customized in a number of way using the front-end rich text
editor that accepts forward slash [/]{.title-ref} commands.

When [/]{.title-ref} is typed into the blank body of the email, while
using a `Plain Text`{.interpreted-text role="guilabel"} template, a
drop-down menu of various design elements appears, which can be used to
create the desired email design.

![View of the rich text editor drop-down in the Odoo Email Marketing application.](email_marketing/template-blank-slash.png){.align-center}
::::

### A/B Tests tab {#email_marketing/ab_tests}

Initially, when the `A/B Tests`{.interpreted-text role="guilabel"} tab
is opened on an email form, the only option available is
`Allow A/B Testing`{.interpreted-text role="guilabel"}. This is **not**
a required option.

If this option is enabled, recipients are only mailed *once* for the
entirety of the campaign.

This allows the user to send different versions of the same mailing to
randomly selected recipients to gauge the effectiveness of various
designs, formats, layouts, content, and so on \-- without any duplicate
messages being sent.

When the checkbox beside `Allow A/B Testing`{.interpreted-text
role="guilabel"} is ticked, an `on (%)`{.interpreted-text
role="guilabel"} field appears, in which the user determines the
percentage of the pre-configured recipients that are going to be sent
this current version of the mailing as part of the test.

:::: note
::: title
Note
:::

The default figure in the `on (%)`{.interpreted-text role="guilabel"}
field is [10]{.title-ref}, but that figure can be changed at any time.
::::

Beneath that, two additional fields appear:

The `Winner Selection`{.interpreted-text role="guilabel"} field provides
a drop-down menu of options, wherein the user decides what criteria
should be used to determine the \"winning\" version of the email tests
that are sent.

The options in the `Winner Selection`{.interpreted-text role="guilabel"}
field are as follows:

- `Manual`{.interpreted-text role="guilabel"}: allows the user to
  determine the \"winning\" version of the mailing. This option removes
  the `Send Final On`{.interpreted-text role="guilabel"} field.
- `Highest Open Rate`{.interpreted-text role="guilabel"} (default): the
  mailing with the highest open rate is determined to be the \"winning\"
  version.
- `Highest Click Rate`{.interpreted-text role="guilabel"}: the mailing
  with the highest click rate is determined to be the \"winning\"
  version.
- `Highest Reply Rate`{.interpreted-text role="guilabel"}: the mailing
  with the highest reply rate is determined to be the \"winning\"
  version.
- `Leads`{.interpreted-text role="guilabel"}: the mailing with the most
  leads generated is determined to be the \"winning\" version.
- `Quotations`{.interpreted-text role="guilabel"}: the mailing with the
  most quotations generated is determined to be the \"winning\" version.
- `Revenues`{.interpreted-text role="guilabel"}: the mailing with the
  most revenue generated is determined to be the \"winning\" version.

The `Send Final On`{.interpreted-text role="guilabel"} field allows
users to choose a date that is used to know *when* Odoo should determine
the \"winning\" email, and subsequently, send that version of the email
to the remaining recipients.

![View of the A/B Tests tab in Odoo Email Marketing application.](email_marketing/ab-test-tab.png){.align-center}

To the right of those fields is a
`Create an Alternative Version`{.interpreted-text role="guilabel"}
button. When clicked, Odoo presents a new `Mail Body`{.interpreted-text
role="guilabel"} tab for the user to create an alternate version of the
email to test.

### Settings tab {#email_marketing/settings_tab}

The options present in the `Settings`{.interpreted-text role="guilabel"}
tab of the mail form are divided into two sections:
`Email Content`{.interpreted-text role="guilabel"} and
`Tracking`{.interpreted-text role="guilabel"}.

:::: note
::: title
Note
:::

The options available in the `Settings`{.interpreted-text
role="guilabel"} tab vary depending on if the *Mailing Campaigns*
feature is activated in `Email Marketing --> Configuration -->
Settings`{.interpreted-text role="menuselection"}. See
`email_marketing/mailing-campaigns`{.interpreted-text role="ref"} for
more information.
::::

Without the *Mailing Campaigns* feature activated, the
`Settings`{.interpreted-text role="guilabel"} tab on the email form only
contains the `Preview Text`{.interpreted-text role="guilabel"},
`Send From`{.interpreted-text role="guilabel"},
`Reply To`{.interpreted-text role="guilabel"},
`Attachments`{.interpreted-text role="guilabel"}, and
`Responsible`{.interpreted-text role="guilabel"} fields.

![View of settings tab in Odoo Email Marketing app, without campaign setting activated.](email_marketing/settings-without-features.png){.align-center}

#### Email content

- `Preview Text`{.interpreted-text role="guilabel"}: allows the user to
  enter a preview sentence to encourage recipients to open the email. In
  most inboxes, this is displayed next to the subject. If left empty,
  the first characters of the email content appear, instead. The ability
  to add an emoji in this field is available, as well, via the
  `(smiley face with a plus sign)`{.interpreted-text role="guilabel"}
  icon.
- `Send From`{.interpreted-text role="guilabel"}: designate an email
  alias that displays as the sender of this particular email.
- `Reply To`{.interpreted-text role="guilabel"}: designate an email
  alias to whom all the replies of this particular email are sent.
- `Attach a file`{.interpreted-text role="guilabel"}: if any specific
  files are required (or helpful) for this email, click the
  `Attachments`{.interpreted-text role="guilabel"} button, and upload
  the desired file(s) to the email.

#### Tracking

- `Responsible`{.interpreted-text role="guilabel"}: designate a user in
  the database to be responsible for this particular email.

:::: note
::: title
Note
:::

If the *Mailing Campaign* feature *is* activated, an additional
`Campaign`{.interpreted-text role="guilabel"} field appears in the
`Tracking`{.interpreted-text role="guilabel"} section of the
`Settings`{.interpreted-text role="guilabel"} tab.

![View of settings tab in Odoo Email Marketing when campaign setting is activated.](email_marketing/settings-tab-with-campaign.png){.align-center}

The additional `Campaign`{.interpreted-text role="guilabel"} field
allows users to attach this particular email to a mailing campaign, if
desired.

If the desired campaign is not available in the initial drop-down menu,
select `Search
More`{.interpreted-text role="guilabel"} to reveal a complete list of
all mailing campaigns in the database.

Or, type the name of the desired mailing campaign in the
`Campaign`{.interpreted-text role="guilabel"} field, until Odoo reveals
the desired campaign in the drop-down menu. Then, select the desired
campaign.
::::

## Send, schedule, test

Once the mailing is finalized, the following options can be utilized,
via buttons located in the upper-left corner of the email form:
`Send <email_marketing/send>`{.interpreted-text role="ref"}, `Schedule
<email_marketing/schedule>`{.interpreted-text role="ref"}, and
`Test <email_marketing/test>`{.interpreted-text role="ref"}.

### Send {#email_marketing/send}

The `Send`{.interpreted-text role="guilabel"} button reveals a
`Ready to unleash emails?`{.interpreted-text role="guilabel"} pop-up
window.

![View of pop-up window that appears when the send button on an email form is clicked.](email_marketing/send-popup.png){.align-center}

When the `Send to all`{.interpreted-text role="guilabel"} button is
clicked, Odoo sends the email to the desired recipients. Once Odoo has
sent the mailing, the status changes to `Sent`{.interpreted-text
role="guilabel"}.

### Schedule {#email_marketing/schedule}

The `Schedule`{.interpreted-text role="guilabel"} button reveals a
`When do you want to send your mailing?`{.interpreted-text
role="guilabel"} pop-up window.

![View of pop-up window that appears when the schedule button on an email form is clicked.](email_marketing/schedule-popup.png){.align-center}

In this pop-up window, click the `Send on`{.interpreted-text
role="guilabel"} field to reveal a calendar pop-up window.

![View of pop-up window that appears when the schedule button on an email form is clicked.](email_marketing/schedule-popup-calendar.png){.align-center}

From the calendar pop-up window, select the future date and time for
Odoo to send this email. Then, click `✔️ Apply`{.interpreted-text
role="guilabel"}. When a date and time are chosen, click the
`Schedule`{.interpreted-text role="guilabel"} button, and the status of
the mailing changes to `In Queue`{.interpreted-text role="guilabel"}.

### Test {#email_marketing/test}

The `Test`{.interpreted-text role="guilabel"} button reveals a
`Test Mailing`{.interpreted-text role="guilabel"} pop-up window.

![View of pop-up window that appears when the test button on an email form is clicked.](email_marketing/test-popup.png){.align-center}

From this pop-up window, enter the email addresses of the contacts to
whom Odoo should send this test email in the
`Recipients`{.interpreted-text role="guilabel"} field. Multiple contacts
can be added in this field, if desired.

Once all the desired email addresses have been entered in the
`Recipients`{.interpreted-text role="guilabel"} field, click the
`Send Test`{.interpreted-text role="guilabel"} button.

:::: warning
::: title
Warning
:::

By default, there\'s a daily limit applied for **all emails** sent
throughout **all applications**. So, if there are remaining emails to be
sent after a limit has been reached, those mailings are **not** sent
automatically the next day. The sending needs to be forced, by opening
the email and clicking `Retry`{.interpreted-text role="guilabel"}.
::::

## Mailing campaigns {#email_marketing/mailing-campaigns}

The *Email Marketing* application provides users with the ability to
build mailing campaigns.

In order to create and customize mailing campaigns, the *Mailing
Campaigns* feature **must** be activated in the *Settings* page of the
*Email Marketing* application. To do that, navigate to
`Email Marketing app --> Configuration --> Settings`{.interpreted-text
role="menuselection"}, tick the box beside
`Mailing Campaigns`{.interpreted-text role="guilabel"}, and click the
`Save`{.interpreted-text role="guilabel"} button.

![View of the campaign feature setting in Odoo Email Marketing.](email_marketing/campaigns-feature.png){.align-center}

Once the `Mailing Campaigns`{.interpreted-text role="guilabel"} feature
is activated, a new `Campaigns`{.interpreted-text role="guilabel"} menu
option appears in the header.

When that is clicked, Odoo reveals a separate
`Campaigns`{.interpreted-text role="guilabel"} page, displaying all the
mailing campaigns in the database, and the current stage they are in,
showcased in a default Kanban view.

![View of the campaign page in Odoo Email Marketing.](email_marketing/campaigns-page.png){.align-center}

:::: note
::: title
Note
:::

This information can also be viewed in a list, by clicking the
`☰ (horizontal lines)`{.interpreted-text role="guilabel"} icon in the
upper-right corner.
::::

Clicking any campaign from the `Campaigns`{.interpreted-text
role="guilabel"} page reveals that campaign\'s form.

There are two different ways to create and customize campaigns in the
*Email Marketing* application, either directly from the
`Campaigns page <email_marketing/campaign-page>`{.interpreted-text
role="ref"} or through the
`Settings tab <email_marketing/campaign-settings>`{.interpreted-text
role="ref"} on an email form.

### Create mailing campaign (from campaigns page) {#email_marketing/campaign-page}

When the *Mailing Campaigns* feature is activated, a new *Campaigns*
option appears in the header of the *Email Marketing* application.
Campaigns can be created directly on the *Campaigns* page in the *Email
Marketing* app.

To do that, navigate to
`Email Marketing app --> Campaigns --> New`{.interpreted-text
role="menuselection"}.

#### Kanban view

When the `New`{.interpreted-text role="guilabel"} button is clicked in
the default Kanban view on the `Campaigns`{.interpreted-text
role="guilabel"} page, a Kanban card appears in the
`New`{.interpreted-text role="guilabel"} stage.

![View of the campaign pop-up kanban in Odoo Email Marketing.](email_marketing/campaigns-kanban-popup.png){.align-center}

New campaign cards can also be made by clicking the
`➕ (plus sign)`{.interpreted-text role="guilabel"} at the top of any
Kanban stage on the `Campaigns`{.interpreted-text role="guilabel"} page.

When the new campaign Kanban card appears, the options to enter a
`Campaign Name`{.interpreted-text role="guilabel"}, a
`Responsible`{.interpreted-text role="guilabel"}, and
`Tags`{.interpreted-text role="guilabel"} become readily available.

To add the campaign to the Kanban stage, click the
`Add`{.interpreted-text role="guilabel"} button.

To delete the campaign, click the `🗑️ (trash can)`{.interpreted-text
role="guilabel"} icon.

To further customize the campaign, click the `Edit`{.interpreted-text
role="guilabel"} button, which reveals the campaign form for additional
modifications.

:::: note
::: title
Note
:::

A `Campaign Name`{.interpreted-text role="guilabel"} **must** be entered
in the Kanban card, in order for the `Edit`{.interpreted-text
role="guilabel"} button to reveal the campaign form for further
modifications.
::::

#### List view

To enter the list view on the `Campaigns`{.interpreted-text
role="guilabel"} page, click the
`☰ (horizontal lines)`{.interpreted-text role="guilabel"} icon in the
upper-right corner. Doing so reveals all campaign information in a list
format.

![View of the campaign page in list view in Odoo Email Marketing.](email_marketing/campaign-page-list-view.png){.align-center}

To create a campaign from the `Campaigns`{.interpreted-text
role="guilabel"} page while in list view, click the
`New`{.interpreted-text role="guilabel"} button. Doing so reveals a
blank campaign form.

![View of the blank campaign form in Odoo Email Marketing.](email_marketing/blank-campaign-form.png){.align-center}

From this campaign form, a `Campaign Name`{.interpreted-text
role="guilabel"}, a `Responsible`{.interpreted-text role="guilabel"},
and `Tags`{.interpreted-text role="guilabel"} can be added.

At the top of the form, various metric-related smart buttons can be seen
that showcase specific analytics related to the campaign. Those smart
buttons are: `Revenues`{.interpreted-text role="guilabel"},
`Quotations`{.interpreted-text role="guilabel"},
`Opportunities`{.interpreted-text role="guilabel"}, and
`Clicks`{.interpreted-text role="guilabel"}.

:::: note
::: title
Note
:::

Once a `Campaign Name`{.interpreted-text role="guilabel"} is entered and
saved, additional buttons appear at the top of the campaign form.

Those additional buttons are: `Send Mailing`{.interpreted-text
role="guilabel"} and `Send SMS`{.interpreted-text role="guilabel"}.
::::

### Campaign form

On the campaign form (after clicking `Edit`{.interpreted-text
role="guilabel"} from the Kanban card, or selecting an existing campaign
from the `Campaigns`{.interpreted-text role="guilabel"} page) there are
additional options and metrics available.

![View of the campaign form in Odoo Email Marketing.](email_marketing/campaign-form.png){.align-center}

At the top of the form, various smart buttons can be seen that showcase
specific analytics related to the campaign. Those smart buttons are:
`Revenues`{.interpreted-text role="guilabel"},
`Quotations`{.interpreted-text role="guilabel"},
`Opportunities`{.interpreted-text role="guilabel"}, and
`Clicks`{.interpreted-text role="guilabel"}.

There are also buttons to `Send Mailing`{.interpreted-text
role="guilabel"}, `Send SMS`{.interpreted-text role="guilabel"},
`Add Post`{.interpreted-text role="guilabel"}, and
`Add Push`{.interpreted-text role="guilabel"} (push notification).

:::: note
::: title
Note
:::

If the `Send Mailing`{.interpreted-text role="guilabel"} and
`Send SMS`{.interpreted-text role="guilabel"} buttons are not readily
available, enter a `Campaign Name`{.interpreted-text role="guilabel"},
then save (either manually or automatically). Doing so reveals those
buttons.
::::

The status of the campaign can be viewed in the upper-right corner of
the campaign form, as well.

### Create mailing campaign (from settings tab) {#email_marketing/campaign-settings}

To create a new campaign from the `Settings`{.interpreted-text
role="guilabel"} tab of a mailing form, click the
`Campaign`{.interpreted-text role="guilabel"} field, and start typing
the name of the new campaign. Then, select either
`Create "[Campaign Name]"`{.interpreted-text role="guilabel"} or
`Create and edit...`{.interpreted-text role="guilabel"} from the
drop-down menu that appears.

![View of the mailing campaign creation in the Settings tab of an email form.](email_marketing/mailing-campaign-settings.png){.align-center}

Select `Create`{.interpreted-text role="guilabel"} to add this new
mailing campaign to the database, and modify its settings in the future.

Select `Create and Edit...`{.interpreted-text role="guilabel"} to add
this new mailing campaign to the database, and reveal a
`Create Campaign`{.interpreted-text role="guilabel"} pop-up window.

![View of the email mailing campaign pop-up window in Odoo Email Marketing application.](email_marketing/mailing-campaign-popup.png){.align-center}

Here, the new mailing campaign can be further customized. Users can
adjust the `Campaign
Name`{.interpreted-text role="guilabel"}, assign a
`Responsible`{.interpreted-text role="guilabel"}, and add
`Tags`{.interpreted-text role="guilabel"}.

Buttons to `Add Post`{.interpreted-text role="guilabel"} or
`Send Push`{.interpreted-text role="guilabel"} (push notifications) are
also available.

There is also a status located in the upper-right corner of the
`Create Campaign`{.interpreted-text role="guilabel"} pop-up window.

When all modifications are ready to be finalized, click
`Save & Close`{.interpreted-text role="guilabel"}. To delete the entire
campaign, click `Discard`{.interpreted-text role="guilabel"}.

::: seealso
\- `email_marketing/mailing_lists`{.interpreted-text role="doc"} -
`email_marketing/unsubscriptions`{.interpreted-text role="doc"} -
`email_marketing/lost_leads_email`{.interpreted-text role="doc"} -
`email_marketing/analyze_metrics`{.interpreted-text role="doc"}
:::

::: {.toctree titlesonly=""}
email_marketing/mailing_lists email_marketing/unsubscriptions
email_marketing/lost_leads_email email_marketing/analyze_metrics
:::




--- SOURCE: marketing/events/create_events.md ---

# Create events

With the *Events* application, event organizers can create and configure
in-person or online-only events in Odoo. Each new event contains a
number of customizable options that are geared around specific event
logistics, as needed per event, such as ticket sales and registration
desk, booths, tracks, sponsors, rooms, and more.

Events can be manually created from scratch or built off of pre-made
templates. Once launched, the *Events* application then integrates with
the *Website* app for the front-end promotion and registration of the
event for attendees, the *Sales* app for the purchasing ability of paid
tickets, as well the *CRM* application through customizable lead
generation rules.

## New event {#events/new-event}

To create a new event, begin by navigating to the
`Events app`{.interpreted-text role="menuselection"} to land on the
default `Events`{.interpreted-text role="guilabel"} dashboard, in the
`oi-view-kanban`{.interpreted-text role="icon"}
`Kanban`{.interpreted-text role="guilabel"} view. From there, or
alternatively from the `oi-view-list`{.interpreted-text role="icon"}
`List`{.interpreted-text role="guilabel"} or
`fa-tasks`{.interpreted-text role="icon"} `Gantt`{.interpreted-text
role="guilabel"} views, click the `New`{.interpreted-text
role="guilabel"} button in the upper-left corner of the dashboard to
open up a new event form.

![Typical event template in the Odoo Events application.](create_events/blank-event-template.png){.align-center}

:::: note
::: title
Note
:::

If certain fields do not readily appear on the event form, that means an
additional application needs to be installed, or the database is not
operating in a multi-company environment.

For example, the `Twitter Wall`{.interpreted-text role="guilabel"} field
**only** appears if the *Social Marketing* app is installed, and the
`Company`{.interpreted-text role="guilabel"} field **only** appears if
the database is working in a multi-company environment.

These are just *additional* elements that can be used for an event. They
are **not** required to create, host, and manage an event with Odoo
*Events*.
::::

## Event form

At the top of the event form are a series of smart buttons related to
various event metrics, which will autopopulate with pertinent data once
attendees begin to register, booths and sponsors sign on for the event,
the event takes place, and so on.

Primarily, these smart buttons are used as logistical portals to perform
specific actions for the event. The numeric displays are primarily for
quick reference points.

While those visual metrics are useful, they can still be clicked, and
used to navigate to specific event-related pages to modify and/or
perform any desired actions.

Beneath the smart buttons is the event form, which contains various
fields and clickable tabs that serve to configure the initial, necessary
details of the event.

The following are fields found on an event form:

- `Event Name`{.interpreted-text role="guilabel"}: the title of the
  event. This field is **required**.

  :::: note
  ::: title
  Note
  :::

  To the right of the entered `Event Name`{.interpreted-text
  role="guilabel"}, there is a language tooltip, represented by an
  abbreviated language indicator (e.g. [EN]{.title-ref}). When clicked,
  a `Translate: name`{.interpreted-text role="guilabel"} pop-up window
  appears, displaying various pre-configured language translation
  options available in the database.
  ::::

- `Date`{.interpreted-text role="guilabel"}: when the event is scheduled
  to take place (expressed in your local timezone). This field is
  auto-populated, but modifiable, and is **required**.

- `Display Timezone`{.interpreted-text role="guilabel"}: the timezone in
  which the event dates/times will be displayed on the website. This
  field is auto-populated, but modifiable, and is **required**.

- `Language`{.interpreted-text role="guilabel"}: designate a specific
  language for all event communications to be translated into, if
  necessary. This field is blank, by default, so if event-related
  communications are being sent to recipients who speak a different
  language, be sure to configure this field properly.

- `Twitter Wall`{.interpreted-text role="guilabel"}: creates a separate
  page on the event website to feature specific social posts on X
  (formerly Twitter) that contain pre-determined desired elements.

  :::: tip
  ::: title
  Tip
  :::

  To create and customize a `Twitter Wall`{.interpreted-text
  role="guilabel"}, type the name of the desired wall into the field,
  and select `Create and edit...`{.interpreted-text role="guilabel"}
  from the resulting drop-down menu.

  Doing so reveals `Create Twitter Wall`{.interpreted-text
  role="guilabel"} pop-up window.

  ![The Twitter Wall pop-up window in the Odoo Events application.](create_events/twitter-wall-popup.png){.align-center}

  From this window, enter a `Wall Name`{.interpreted-text
  role="guilabel"}. Then, select a certain word or hashtag for Odoo to
  search for on X, like [#WoodWorkingExpo24]{.title-ref}, for example.

  Next, determine the `Type of tweets`{.interpreted-text
  role="guilabel"} Odoo should showcase with that predetermined
  criteria. The choices in this field are: `Recent`{.interpreted-text
  role="guilabel"}, `Popular`{.interpreted-text role="guilabel"}, or
  `Mixed`{.interpreted-text role="guilabel"}.

  Users also have the option to add a brief
  `Description`{.interpreted-text role="guilabel"} to the wall, as well.

  Lastly, the greyed-out, non-modifiable `Website URL`{.interpreted-text
  role="guilabel"} field will autopopulate with the full URL needed to
  access the document through the event website.

  An image can also be added to the wall by clicking the
  `fa-pencil`{.interpreted-text role="icon"}
  `(pencil)`{.interpreted-text role="guilabel"} icon that appears when
  the cursor hovers over the `(camera)`{.interpreted-text
  role="guilabel"} placeholder image in the upper-right corner of the
  pop-up window.

  Then, from the resulting file explorer window, select the desired
  image to be added to the wall.

  This `Twitter Wall`{.interpreted-text role="guilabel"} field **only**
  appears on the event form if the *Social Marketing* app is installed,
  and an X account has been added as a stream on the application. To
  learn more, check out the
  `Social Marketing <../social_marketing>`{.interpreted-text role="doc"}
  documentation.
  ::::

- `Template`{.interpreted-text role="guilabel"}: choose a pre-configured
  event template from the resulting drop-down menu.

  Or, create a new one directly from this field, by typing in the name
  of the new template, and selecting either:

  - `Create`{.interpreted-text role="guilabel"} (which creates the
    template, and can be edited later) or
  - `Create and edit...`{.interpreted-text role="guilabel"} (which
    creates the template, and reveals a separate template page to
    configure the template in greater detail).

- `Tags`{.interpreted-text role="guilabel"}: add any corresponding tags
  to briefly describe the event (e.g. [Online]{.title-ref},
  [Conference]{.title-ref}, etc.). Multiple tags can be added per event.

  :::: tip
  ::: title
  Tip
  :::

  Tags can be displayed on events that are listed on the website by
  enabling the *Show on Website* checkbox from
  `Events app --> Configuration --> Event Tag Categories`{.interpreted-text
  role="menuselection"}.
  ::::

- `Organizer`{.interpreted-text role="guilabel"}: designate the
  organizer of the event (a company, contact, or employee).

- `Responsible`{.interpreted-text role="guilabel"}: designate a user in
  the database to be responsible for this event.

- `Company`{.interpreted-text role="guilabel"}: designate which company
  in the database to which this event is related. This field **only**
  appears if working in a multi-company environment. This field is
  auto-populated, but modifiable, and is **required**.

- `Website`{.interpreted-text role="guilabel"}: choose to restrict the
  publishing of this event to a specific website created in Odoo. If
  this field is left blank, the event can be published on *all* websites
  in the database. To learn more, refer to the `Multiple websites
  <../../websites/website/configuration/multi_website>`{.interpreted-text
  role="doc"} documentation.

- `Venue`{.interpreted-text role="guilabel"}: enter event venue details.
  This field pulls pertinent information from the *Contacts*
  application. Alternatively, `Venue`{.interpreted-text role="guilabel"}
  information can be manually added in this field, as well. At the very
  least, there **must** be a venue name, address, city, zip code/region,
  and country entered.

- `Exhibition Map`{.interpreted-text role="guilabel"}: if desired, click
  the `Upload your file`{.interpreted-text role="guilabel"} button to
  upload an image of the event venue map.

- `Limit Registrations`{.interpreted-text role="guilabel"}: if this
  checkbox is ticked, a limit to the amount of registrations is added to
  the event, and that desired limit amount **must** be entered in the
  blank field before `Attendees`{.interpreted-text role="guilabel"}.

- `Badge Dimension`{.interpreted-text role="guilabel"}: select a desired
  paper format dimension for event badges. The options are:
  `A4 foldable`{.interpreted-text role="guilabel"},
  `A6`{.interpreted-text role="guilabel"}, or
  `4 per sheet`{.interpreted-text role="guilabel"}.

- `Badge Background`{.interpreted-text role="guilabel"}: if desired,
  click the `Upload your file`{.interpreted-text role="guilabel"} button
  to upload a custom background image for event badges.

When the above fields in the event form have been adequately filled in,
move on to the four tabs at the bottom of the event form for further
customization.

Those tabs are: `Tickets <events/event-tickets>`{.interpreted-text
role="ref"}, `Communication
<events/event-communication>`{.interpreted-text role="ref"},
`Questions <events/event-questions>`{.interpreted-text role="ref"}, and
`Notes
<events/event-notes>`{.interpreted-text role="ref"}.

### Tickets tab {#events/event-tickets}

Create custom tickets (and ticket tiers) for events in the
`Tickets`{.interpreted-text role="guilabel"} tab of an event form.

![A typical tickets tab on an event form in the Odoo Events application.](create_events/tickets-tab.png){.align-center}

To create a ticket, click `Add a line`{.interpreted-text
role="guilabel"} in the `Tickets`{.interpreted-text role="guilabel"}
tab. Then, enter a name for the ticket (e.g. [Basic Ticket]{.title-ref}
or [VIP]{.title-ref}) in the `Name`{.interpreted-text role="guilabel"}
field.

In the `Product`{.interpreted-text role="guilabel"} field, either select
the pre-configured `Event Registration`{.interpreted-text
role="guilabel"} product, or create a new one by typing in the name of
the new event registration product, and then select either
`Create`{.interpreted-text role="guilabel"} or
`Create and edit...`{.interpreted-text role="guilabel"} from the
resulting drop-down menu.

:::: important
::: title
Important
:::

Upon installing Odoo *Events*, a new product type, *Event Ticket*,
becomes available on product forms
(`Sales --> Products --> Products`{.interpreted-text
role="menuselection"}). In order for an event registration product to be
selectable in the *Tickets* tab, the event registration
`Product Type`{.interpreted-text role="guilabel"} **must** be set to
`Event Ticket`{.interpreted-text role="guilabel"}.
::::

:::: tip
::: title
Tip
:::

Existing event registration products can be modified directly from this
field, as well, by clicking the `oi-arrow-right`{.interpreted-text
role="icon"} `(right arrow)`{.interpreted-text role="guilabel"} icon,
located beside the event registration product. Doing so reveals that
product\'s form. If the *Inventory* application is installed, additional
choices are available to customize for the product.
::::

Next, set the registration cost of the ticket in the
`Price`{.interpreted-text role="guilabel"} field.

:::: note
::: title
Note
:::

The *Sales Price* defined on the event registration product\'s product
form sets the default cost of a ticket. Modifying the
`Price`{.interpreted-text role="guilabel"} of a ticket in the
`Tickets`{.interpreted-text role="guilabel"} tab, sets a new
registration cost of the ticket for that event.
::::

Next, determine a `Sales Start`{.interpreted-text role="guilabel"} and
`Sales End`{.interpreted-text role="guilabel"} date in their respective
fields. To do that, click into the blank field to reveal a calendar
popover. From there, select the desired date and time, then click
`fa-check`{.interpreted-text role="icon"} `Apply`{.interpreted-text
role="guilabel"}.

Then, if desired, designate a `Maximum`{.interpreted-text
role="guilabel"} amount of that specific ticket that can be sold.

The `Taken`{.interpreted-text role="guilabel"} column populates with the
number of tickets that are sold.

Optionally, in the `Color`{.interpreted-text role="guilabel"} column,
add a custom color to differentiate ticket badges. The selected color
displays on ticket badges when printed.

To delete any tickets from the `Tickets`{.interpreted-text
role="guilabel"} tab, click the `fa-trash-o`{.interpreted-text
role="icon"} `(trash can)`{.interpreted-text role="guilabel"} icon on
the corresponding line for the ticket that should be deleted.

:::: tip
::: title
Tip
:::

To add an optional `Description`{.interpreted-text role="guilabel"}
column to the `Tickets`{.interpreted-text role="guilabel"} tab, click
the `oi-settings-adjust`{.interpreted-text role="icon"}
`(additional options)`{.interpreted-text role="guilabel"} drop-down
menu, located to the far-right of the column titles.

Then, tick the checkbox beside `Description`{.interpreted-text
role="guilabel"} from the resulting drop-down menu.

When added, the option to add brief descriptions for each event ticket
appears, which can be used to inform attendees of any perks or amenities
that may coincide with specific ticket purchases.
::::

### Communication tab {#events/event-communication}

In the `Communication`{.interpreted-text role="guilabel"} tab of an
event form, create various marketing communications that can be
scheduled to be sent at specific intervals leading up to, and following,
the event.

![Typical communication tab on an event form in the Odoo Events application.](create_events/communication-tab.png){.align-center}

:::: note
::: title
Note
:::

By default, Odoo provides three separate pre-configured communications
on every new event form. One is an email sent after each registration to
confirm the purchase with the attendee. The other two are email event
reminders that are scheduled to be sent at different time intervals
leading up to the event to remind the recipient of the upcoming event.
::::

To add a communication in the `Communication`{.interpreted-text
role="guilabel"} tab, click `Add a line`{.interpreted-text
role="guilabel"}. Then, select the desired type of communication in the
`Send`{.interpreted-text role="guilabel"} field. The options are:
`Mail`{.interpreted-text role="guilabel"}, `SMS`{.interpreted-text
role="guilabel"}, `Social Post`{.interpreted-text role="guilabel"}, or
`WhatsApp`{.interpreted-text role="guilabel"}.

There is no limit to the number of communications that can be added in
the `Communication`{.interpreted-text role="guilabel"} tab of an event
form.

To delete a communication from the `Communication`{.interpreted-text
role="guilabel"} tab, click the `fa-trash-o`{.interpreted-text
role="icon"} `(trash can)`{.interpreted-text role="guilabel"} icon on
the corresponding communication line. Doing so removes the communication
from the event entirely.

:::: important
::: title
Important
:::

The `Social Post`{.interpreted-text role="guilabel"} option **only**
appears if the *Social Marketing* application is installed. The
`WhatsApp`{.interpreted-text role="guilabel"} option **only** appears if
the *WhatsApp Integration* module is installed.

`WhatsApp <../../productivity/whatsapp>`{.interpreted-text role="doc"}
templates **cannot** be edited during active configuration. A separate
approval from *Meta* is required.
::::

#### Mail

Select an existing email template from the `Template`{.interpreted-text
role="guilabel"} drop-down menu.

Next, define the `Interval`{.interpreted-text role="guilabel"},
`Unit`{.interpreted-text role="guilabel"}, and
`Trigger`{.interpreted-text role="guilabel"} from their respective
drop-down fields, letting Odoo know when the communication should be
sent.

The `Unit`{.interpreted-text role="guilabel"} options are:
`Immediately`{.interpreted-text role="guilabel"},
`Hours`{.interpreted-text role="guilabel"}, `Days`{.interpreted-text
role="guilabel"}, `Weeks`{.interpreted-text role="guilabel"}, and
`Months`{.interpreted-text role="guilabel"}.

Then, select an option from the `Trigger`{.interpreted-text
role="guilabel"} drop-down menu. The options are:
`After each registration`{.interpreted-text role="guilabel"},
`Before the event`{.interpreted-text role="guilabel"}, and
`After the event`{.interpreted-text role="guilabel"}.

The `Sent`{.interpreted-text role="guilabel"} column populates with the
number of sent communications. And, beside the number are different
icons that appear, depending on the status of that particular
communication.

The status of *Running* is represented by a `fa-cogs`{.interpreted-text
role="icon"} `(three gears)`{.interpreted-text role="guilabel"} icon.
The status of *Sent* is represented by a `fa-check`{.interpreted-text
role="icon"} `(checkmark)`{.interpreted-text role="guilabel"} icon. And,
the status of *Scheduled* is represented by an
`fa-hourglass-half`{.interpreted-text role="icon"}
`(hourglass)`{.interpreted-text role="guilabel"} icon.

::: example
To send a confirmation email an hour after an attendee registers for an
event, configure the following communication:

- `Interval`{.interpreted-text role="guilabel"}: [1]{.title-ref}
- `Unit`{.interpreted-text role="guilabel"}: `Hours`{.interpreted-text
  role="guilabel"}
- `Trigger`{.interpreted-text role="guilabel"}:
  `After each registration`{.interpreted-text role="guilabel"}
:::

:::: note
::: title
Note
:::

Existing email templates can be modified directly from the
`Template`{.interpreted-text role="guilabel"} drop-down menu, if
necessary, by clicking the `oi-arrow-right`{.interpreted-text
role="icon"} `(right arrow)`{.interpreted-text role="guilabel"} icon
next to the template name. Doing so reveals a separate page where users
can edit the `Content`{.interpreted-text role="guilabel"},
`Email Configuration`{.interpreted-text role="guilabel"}, and
`Settings`{.interpreted-text role="guilabel"} of that particular email
template.

To view and manage all email templates, activate
`developer-mode`{.interpreted-text role="ref"} and navigate to
`Settings --> Technical --> Email: Email Templates`{.interpreted-text
role="menuselection"}. Modify with caution as email templates effect all
communications where the template is used.
::::

### Questions tab {#events/event-questions}

In the `Questions`{.interpreted-text role="guilabel"} tab of an event
form, users can create brief questionnaires for registrants to interact
with, and respond to, after they register for the event.

These questions can be focused on gathering basic information about the
attendee, learning about their preferences, expectations, and other
things of that nature. This information can also be used to create more
detailed reporting metrics, in addition to being utilized to create
specific lead generation rules.

![Typical questions tab on an event form in the Odoo Events application.](create_events/questions-tab.png){.align-center}

:::: note
::: title
Note
:::

By default, Odoo provides three questions in the
`Questions`{.interpreted-text role="guilabel"} tab for every event form.
The default questions require the registrant(s) to provide their
`Name`{.interpreted-text role="guilabel"} and `Email`{.interpreted-text
role="guilabel"}, and make it optional to include their
`Phone`{.interpreted-text role="guilabel"} number, as well.

The information gathered from the `Questions`{.interpreted-text
role="guilabel"} tab can be found on the `Attendees`{.interpreted-text
role="guilabel"} dashboard, accessible via the
`fa-users`{.interpreted-text role="icon"} `Attendees`{.interpreted-text
role="guilabel"} smart button. Odoo populates individual records that
contain basic information about the registrant(s), as well as their
preferences.
::::

To add a question in the `Questions`{.interpreted-text role="guilabel"}
tab, click `Add a line`{.interpreted-text role="guilabel"}. Doing so
reveals a `Create Question`{.interpreted-text role="guilabel"} pop-up
window. From here, users can create and configure their question.

![The Create Question pop-up window that appears in the Odoo Events application.](create_events/create-question-popup.png){.align-center}

First, enter the question in the field at the top of the form. Then,
decide if the question should require a
`Mandatory Answer`{.interpreted-text role="guilabel"} and/or if Odoo
should `Ask once per order`{.interpreted-text role="guilabel"}, by
ticking their respective boxes, if desired.

If the `Ask once per order`{.interpreted-text role="guilabel"} checkbox
is ticked, the question will only be asked once, and its value is
propogated to every attendee in the order (if multiple tickets are
purchased at once). If the checkbox is *not* ticked for this setting,
Odoo will present the question for every attendee that is connected to
that registration.

Next, select a `Question Type`{.interpreted-text role="guilabel"}
option:

- `Selection`{.interpreted-text role="guilabel"}: provide answer options
  to the question for registrants to choose from. Selectable answer
  options can be managed in the `Answers`{.interpreted-text
  role="guilabel"} column at the bottom of the pop-up window.
- `Text Input`{.interpreted-text role="guilabel"}: lets the users enter
  a custom response to the question in a text field.
- `Name`{.interpreted-text role="guilabel"}: provides registrants with a
  field for them to enter their name.
- `Email`{.interpreted-text role="guilabel"}: provides registrants with
  a field for them to enter their email address.
- `Phone`{.interpreted-text role="guilabel"}: provides registrants with
  a field for them to enter their phone number.
- `Company`{.interpreted-text role="guilabel"}: provides registrants
  with a field for them to enter a company they are associated with.

Once all the desired configurations have been entered, either click
`Save & Close`{.interpreted-text role="guilabel"} to save the question,
and return to the `Questions`{.interpreted-text role="guilabel"} tab on
the event form, or click `Save & New`{.interpreted-text role="guilabel"}
to save the question and immediately create a new question on a new
`Create Question`{.interpreted-text role="guilabel"} pop-up window.

As questions are added to the `Questions`{.interpreted-text
role="guilabel"} tab, the informative columns showcase the
configurations of each question.

The informative columns are the following:

- `Title`{.interpreted-text role="guilabel"}
- `Mandatory`{.interpreted-text role="guilabel"}
- `Once per Order`{.interpreted-text role="guilabel"}
- `Type`{.interpreted-text role="guilabel"}
- `Answers`{.interpreted-text role="guilabel"} (if applicable)

For `Selection`{.interpreted-text role="guilabel"} and
`Text Input`{.interpreted-text role="guilabel"} types, a
`fa-bar-chart`{.interpreted-text role="icon"} `Stats`{.interpreted-text
role="guilabel"} button appears on the right side of the question line.
When clicked, Odoo reveals a separate page, showcasing the response
metrics to that specific question.

To delete any question from the `Questions`{.interpreted-text
role="guilabel"} tab, click the `fa-trash-o`{.interpreted-text
role="icon"} `(trash can)`{.interpreted-text role="guilabel"} icon on
the corresponding question line.

There is no limit to the number of questions that can be added in the
`Questions`{.interpreted-text role="guilabel"} tab of an event form.

### Notes tab {#events/event-notes}

In the `Notes`{.interpreted-text role="guilabel"} tab of an event form,
users can leave detailed internal notes and/or event-related
instructions/information for attendees.

![Typical notes tab on an event form in the Odoo Events application.](create_events/notes-tab.png){.align-center}

In the `Note`{.interpreted-text role="guilabel"} field of the
`Notes`{.interpreted-text role="guilabel"} tab, users can leave internal
notes for other event employees, like \"to-do\" lists, contact
information, instructions, and so on.

In the `Ticket Instructions`{.interpreted-text role="guilabel"} field of
the `Notes`{.interpreted-text role="guilabel"} tab, users can leave
specific instructions for people attending the event that appear on the
attendees ticket.

## Publish events

Once all configurations and modifications are complete on the event
form, it is time to publish the event on the website. Doing so makes the
event visible to website visitors, and makes it possible for people to
register for the event.

To publish an event after all the customizations are complete, click the
`fa-globe`{.interpreted-text role="icon"}
`Go to Website`{.interpreted-text role="guilabel"} smart button at the
top of the event form. Doing so reveals the event\'s web page, which can
be customized like any other web page on the site, via the
`Edit`{.interpreted-text role="guilabel"} button.

To learn more about website design functionality and options, consult
the `Building block
<../../websites/website/web_design/building_blocks>`{.interpreted-text
role="doc"} documentation.

Once the event website is ready to be shared, click the red
`Unpublished`{.interpreted-text role="guilabel"} toggle switch in the
header menu, changing it to a green `Published`{.interpreted-text
role="guilabel"} switch. At this point, the event web page is published,
and viewable/accessible by all website visitors.

## Send event invites

To send event invites to potential attendees, navigate to the desired
event form, via `Events app --> Events`{.interpreted-text
role="menuselection"}, and click into the desired event. Following this,
click the `Invite`{.interpreted-text role="guilabel"} button in the
upper-left corner of the event form.

Doing so reveals a blank email form to fill out, as desired. To learn
more about how to create and customize emails like this, refer to the
`Create an email <email_marketing/create_email>`{.interpreted-text
role="ref"} documentation.

Proceed to create and customize an email message to send as an invite to
potential attendees. Remember to include a link to the registration page
on the event website, allowing interested recipients to quickly
register.

:::: tip
::: title
Tip
:::

Sending emails from Odoo is subject to a daily limit, which, by default,
is 200. To learn more about daily limits, visit the
`email-issues-outgoing-delivery-failure-messages-limit`{.interpreted-text
role="ref"} documentation.
::::

::: seealso
`track_manage_talks`{.interpreted-text role="doc"}
:::




--- SOURCE: marketing/events/event_booths.md ---

# Event booths

The Odoo *Events* application provides users with the ability to create
event booths, sell their availability, and manage their reservations.

## Configuration

In order to create, sell, and manage booths for events, the *Booth
Management* feature must be activated.

To do that, navigate to
`Events app --> Configuration --> Settings`{.interpreted-text
role="menuselection"}, and tick the `Booth Management`{.interpreted-text
role="guilabel"} checkbox. Then, click `Save`{.interpreted-text
role="guilabel"}.

![The Booth Management setting in the Odoo Events application.](event_booths/booth-management-setting.png){.align-center}

:::: important
::: title
Important
:::

When the `Booth Management`{.interpreted-text role="guilabel"} setting
is activated, a new `Product Type
<../../inventory_and_mrp/inventory/product_management/configure/type>`{.interpreted-text
role="doc"} becomes available on all product forms: *Event Booth*.

This is important because every created booth **must** be assigned a
*Booth Category* on their respective booth form, and every booth
category **must** have an *Event Booth* product assigned to it.
::::

## Booth categories

With the *Booth Management* setting activated in the *Events* app, the
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
- `Create Sponsor`{.interpreted-text role="guilabel"}: if checked,
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

To edit an existing booth category, select it from the list, and proceed
to make any desired modifications from the event category form.

### Create booth category

To create a booth category from the `Booth Category`{.interpreted-text
role="guilabel"} page, click the `New`{.interpreted-text
role="guilabel"} button in the upper-left corner to reveal a blank booth
category form.

![A typical booth category form in the Odoo Events application.](event_booths/booth-category-form.png){.align-center}

Start by entering a name for the booth category in the top
`Booth Category`{.interpreted-text role="guilabel"} field. This is a
**requried** field.

To add a corresponding image to the booth category (e.g. a sample photo
of how the booth looks), click the `fa-pencil`{.interpreted-text
role="icon"} `(pencil)`{.interpreted-text role="guilabel"} icon that
appears when the cursor hovers over the camera placeholder in the
upper-right corner of the booth category form. When clicked, proceed to
upload the desired image to the booth category form, if needed.

In the `Booth Details`{.interpreted-text role="guilabel"} section, users
**must** assign a `Product`{.interpreted-text role="guilabel"} to the
category, and it **must** have *Event Booth* set as the *Product Type*
on the product form.

And, regardless of the listed price on the *Event Booth* product chosen,
the user can input a custom `Price`{.interpreted-text role="guilabel"}
to be applied for this booth category in the field below.

In the `Sponsorship`{.interpreted-text role="guilabel"} section, there
is a `Create Sponsor`{.interpreted-text role="guilabel"} checkbox
option. With that checkbox ticked, whenever a booth belonging to this
category is booked, the user is created as an official *Sponsor* of the
event.

When the `Create Sponsor`{.interpreted-text role="guilabel"} checkbox is
ticked, two additional fields appear beneath it:
`Sponsor Level`{.interpreted-text role="guilabel"} and
`Sponsor Type`{.interpreted-text role="guilabel"}.

:::: note
::: title
Note
:::

`Sponsor Level`{.interpreted-text role="guilabel"} and
`Sponsor Type`{.interpreted-text role="guilabel"} are purely to
distinguish different distinctions of sponsors. For example, if a
sponsor has been attached to a company for multiple years, they would be
granted a higher level (e.g. *Gold* level), which provides them with
immediate credability and status. Whereas, conversely, a relatively new
sponsor would be granted a lower level (e.g. *Bronze* level), which
coincides with its own credability and status.
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

:::: note
::: title
Note
:::

Clicking `Create`{.interpreted-text role="guilabel"} from the resulting
drop-down menu in this instance creates the sponsor level, but doesn\'t
immediately prompt the user to further configure it, via a
`Create Sponsor Level`{.interpreted-text role="guilabel"} pop-up window.
::::

Doing so reveals a `Create Sponsor Level`{.interpreted-text
role="guilabel"} pop-up window.

![The Create Sponsor Level pop-up window that appears in the Odoo Events application.](event_booths/create-sponsor-level-popup.png){.align-center}

From this pop-up window, confirm the newly-created
`Sponsor Level`{.interpreted-text role="guilabel"}, and decide what kind
of `Ribbon Style`{.interpreted-text role="guilabel"} should be applied,
if any. The `Ribbon Style`{.interpreted-text role="guilabel"} options
available in that drop-down field are: `No Ribbon`{.interpreted-text
role="guilabel"}, `Gold`{.interpreted-text role="guilabel"},
`Silver`{.interpreted-text role="guilabel"}, and
`Bronze`{.interpreted-text role="guilabel"}.

If one is selected, that `Ribbon Style`{.interpreted-text
role="guilabel"} appears with the sponsor\'s name on the event website.

On the booth category form, beneath those sections
(`Booth Details`{.interpreted-text role="guilabel"} and
`Sponsorship`{.interpreted-text role="guilabel"}), there is the
`Description`{.interpreted-text role="guilabel"} tab. In this tab,
proceed to enter any vital information related to the booth category
that would be important for any potential booth-buyer to know about
(e.g., the square footage, any amenities, size of display screen, etc.).

## Add booth to an event

In order to add a booth to an event, navigate to an existing event form,
via `Events
app --> Events`{.interpreted-text role="menuselection"}, and select the
desired event from the `Events`{.interpreted-text role="guilabel"}
dashboard. Or, click `New`{.interpreted-text role="guilabel"} to open a
blank event form.

From the event form, to access the *Booths* for that specific event,
click the `Booths`{.interpreted-text role="guilabel"} smart button at
the top of the page.

The `Booths`{.interpreted-text role="guilabel"} page is displayed in a
Kanban view, by default, with two different stages:
`Available`{.interpreted-text role="guilabel"} and
`Unavailable`{.interpreted-text role="guilabel"}.

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
stage are still available for people to purchase for the event. The
booths present in the `Unavailable`{.interpreted-text role="guilabel"}
stage have already been purchased, and are no longer available.

To modify any existing booth, simply click the desired booth from the
`Booths`{.interpreted-text role="guilabel"} page, and proceed to make
any necessary changes from the booth form. Or, create a new one, by
clicking the `New`{.interpreted-text role="guilabel"} button in the
upper-left corner to reveal a blank booth form.

### Booth form

The booth form in Odoo *Events* lets users customize and configure event
booths in a number of different ways.

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

Simply clicking `Create`{.interpreted-text role="guilabel"} from the
resulting drop-down menu creates the category, but does not reveal the
`Create Booth Category`{.interpreted-text role="guilabel"} pop-up
window. The category would have to be modified later, via the *Booth
Categories* page (`Events app --> Configuration
--> Booth Categories`{.interpreted-text role="menuselection"}).
::::

Upon selecting a pre-existing `Booth Category`{.interpreted-text
role="guilabel"}, two additional, non-modifiable fields appear:
`Product`{.interpreted-text role="guilabel"} and
`Price`{.interpreted-text role="guilabel"}. Both fields represent their
respective selections for that specific booth category.

When a person purchases a booth rental through the event website, the
subsequent renter-related fields on the form auto-populate, based on the
information provided by the purchaser during the online transaction. The
booth also automatically changes its status from *Available* to
*Unavailable*.

However, if the rental of a booth is conducted in any other way (e.g.,
in person, via sales order, etc.), the `Renter`{.interpreted-text
role="guilabel"}, `Renter Name`{.interpreted-text role="guilabel"},
`Renter Email`{.interpreted-text role="guilabel"}, and
`Renter Phone`{.interpreted-text role="guilabel"} fields can be entered
in manually.

The status of the booth (`Available`{.interpreted-text role="guilabel"}
or `Unavailable`{.interpreted-text role="guilabel"}) can also be changed
manually, either by clicking the appropriate status from the status bar
present on the booth form, or by dragging-and-dropping the desired booth
into the appropriate stage, via the *Booths* page Kanban view.

## Sell event booths

With event booths configured on the event form, via the event-specific
*Booths* pages, Odoo presents them on the event website, via the *Get A
Booth* event subheader link.

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
role="doc"}, and open the specific event form in the the *Events*
application.

On the event form, with *Debug mode* on, an array of subheader menu
options appears. Tick the checkbox for
`Website Submenu`{.interpreted-text role="guilabel"}, in order for the
submenu to appear on the event website. Doing so also ticks every other
submenu-related checkbox automatically.

At this point, proceed to choose which options to keep on the event
subheader menu. In this case, make sure the
`Booth Register`{.interpreted-text role="guilabel"} checkbox is ticked.

From there, click the `Get A Booth`{.interpreted-text role="guilabel"}
event subheader menu option. Doing so reveals the
`Get A Booth`{.interpreted-text role="guilabel"} page, showcasing all
the configured event booths that were created on the event form.

![Typical Get A Booth page on the event website via the Odoo Events app.](event_booths/get-a-booth-page.png){.align-center}

From here, the visitor can select their desired booth option, then
`Location`{.interpreted-text role="guilabel"}. Next, they would click
the `Book my Booth(s)`{.interpreted-text role="guilabel"} button,
located at the bottom of the `Get A
Booth`{.interpreted-text role="guilabel"} page.

Doing so reveals a `Contact Details`{.interpreted-text role="guilabel"}
page, wherein they fill out either *Contact Details* or *Sponsor
Details*, depending on how the booth was configured on the event form.
The fields present on this form vary, depending on whether its meant for
a basic contact or an event sponsor.

:::: note
::: title
Note
:::

If the selected booth has the *Create Sponsor* checkbox ticked, this
page reads as *Sponsor Details*.
::::

The information provided on this details page is used to auto-populate
the renter-related information on the booth form on the event form in
the *Events* application.

Once the necessary information has been entered, the visitor then clicks
the `Go to
Payment`{.interpreted-text role="guilabel"} at the bottom of the page,
and proceeds to complete the typical checkout process.

Upon a successful payment confirmation, that selected booth
automatically moves to the *Unavailable* stage on the event-specific
*Booths* page in the *Events* application (accessible via the *Booths*
smart button on the event form).

Also, the provided *Sponsor* information (if applicable) and *Sales
Order* information are accessible from the specific event form, via
their respective smart buttons that appear at the top of the form.

:::: note
::: title
Note
:::

Click the *Sponsors* smart button to modify any information about the
sponsor, if necessary.
::::

::: seealso
\- `create_events`{.interpreted-text role="doc"} -
`sell_tickets`{.interpreted-text role="doc"}
:::




--- SOURCE: marketing/events/event_templates.md ---

# Event templates

The Odoo *Events* application provides the ability to customize and
configure event templates, which can be used to expedite the
event-creation process.

These templates can be created and personalized in the application, and
then selected from an event form, in order to quickly apply a series of
settings and elements to the new event, all of which can be further
modified, if needed.

## Event templates page

In the Odoo *Events* application, event templates can quickly be created
and modified.

To begin, navigate to
`Events app --> Configuration --> Event Templates`{.interpreted-text
role="menuselection"}. Doing so reveals the
`Event Templates`{.interpreted-text role="guilabel"} page. Here, find
all the existing event templates in the database.

![The Event Templates page in the Odoo Events application.](event_templates/event-templates-page.png){.align-center}

By default, Odoo provides three pre-configured event templates:
`Exhibition`{.interpreted-text role="guilabel"},
`Training`{.interpreted-text role="guilabel"}, and
`Sport`{.interpreted-text role="guilabel"}, which all have their own
unique customizations applied to them.

To change how these event templates appear on the *Template* drop-down
field on an event form, drag-and-drop them into any desired order, using
the `oi-draggable`{.interpreted-text role="icon"}
`(draggable)`{.interpreted-text role="guilabel"} icon, located to the
left of each event template line on the
`Event Templates`{.interpreted-text role="guilabel"} page.

::: seealso
To learn more about event forms, refer to the
`create_events`{.interpreted-text role="doc"} documentation.
:::

## Create event template

There are two ways to create and configure an event template in Odoo
*Events*.

1.  **On the dashboard**, by navigating to
    `Events app --> Configuration --> Event
    Templates`{.interpreted-text role="menuselection"} and clicking the
    `New`{.interpreted-text role="guilabel"} button in the upper-left
    corner. Doing so reveals a blank event template form that can be
    customized in a number of different ways.
2.  **On an event form itself**. Start by typing the name of a new event
    template in the *Template* field, and click
    `Create and edit...`{.interpreted-text role="guilabel"} from the
    resulting drop-down menu. Doing so reveals a *Create Template*
    pop-up window, featuring all the same configurable fields and
    elements found on a standard event template form.

:::: note
::: title
Note
:::

Clicking `Create "[template name]"`{.interpreted-text role="guilabel"}
from the resulting drop-down menu, via the *Template* field on an event
form creates the event template in the database, but does **not**
present the user with the *Create Template* pop-up window.

The event template would have to be modified, by selecting it on the
*Event Templates* page
(`Events app --> Configuration --> Event Templates`{.interpreted-text
role="menuselection"}).
::::

### Event template form

All the fields on a standard `Event Template`{.interpreted-text
role="guilabel"} form are *also* on the *Create Template* pop-up window,
accessible via the *Template* field on an event form.

![A standard event template form in the Odoo Events application.](event_templates/event-template-form.png){.align-center}

Start by providing the event template with a name in the
`Event Template`{.interpreted-text role="guilabel"} field, located at
the top of the form.

Beneath that field, there is a series of selectable checkboxes, all of
which are related to how the event menu will be displayed on the event
web page.

- `Website Submenu`{.interpreted-text role="guilabel"}: enables a
  submenu on the event\'s website. When this checkbox is ticked, every
  other checkbox in this series is automatically ticked, as well. Then,
  choose to untick (deselect) any of the checkbox options, as desired.

- `Tracks Menu Item`{.interpreted-text role="guilabel"}: adds a submenu
  item to navigate to a page displaying all planned tracks for the
  event.

- `Track Proposals Menu Item`{.interpreted-text role="guilabel"}: adds a
  submenu item to navigate to a page, in which visitors can fill out a
  form to propose a track (talk, lecture, presentation, etc.) to happen
  during the event.

- `Booth Menu Item`{.interpreted-text role="guilabel"}: adds a submenu
  item that takes visitors to a separate page, where an event booth can
  be purchased. Event booths can be customized and configured in the
  `Booths`{.interpreted-text role="guilabel"} tab of the event template
  form, from the *Booth Categories* page
  (`Events app --> Configuration --> Booth Categories`{.interpreted-text
  role="menuselection"}).

  :::: important
  ::: title
  Important
  :::

  First, users **must** create a booth product with the required *Event
  Booth* option set as the `Product Type`{.interpreted-text
  role="guilabel"} on the product form.
  ::::

- `Exhibitors Menu Item`{.interpreted-text role="guilabel"}: adds a
  submenu item that takes visitors to a separate page, showcasing all
  the exhibitors related to that specific event. Icons representing
  those exhibitors are also found on the footer of every event-specific
  web page, as well.

- `Community`{.interpreted-text role="guilabel"}: adds a submenu item
  allowing attendees to access pre-configured virtual community rooms to
  meet with other attendees, and discuss various topics related to the
  event. When this checkbox is ticked, the
  `Allow Room Creation`{.interpreted-text role="guilabel"} feature
  becomes available.

- `Allow Room Creation`{.interpreted-text role="guilabel"}: allow
  visitors to create community rooms of their own.

- `Register Button`{.interpreted-text role="guilabel"}: adds a button at
  the end of the event submenu that takes visitors to the event-specific
  registration page when clicked.

Once the desired checkboxes have been ticked, select an appropriate
`Timezone`{.interpreted-text role="guilabel"} for the event from the
available drop-down menu.

Then, for organizational purposes, there is the option to add
`Tags`{.interpreted-text role="guilabel"} to this event template.

There is also the option to `Limit Registrations`{.interpreted-text
role="guilabel"} to this specific event template by ticking that
checkbox. If ticked, proceed to enter the number of
`Attendees`{.interpreted-text role="guilabel"} this template should be
limited to.

Beneath those general information fields at the top of the event
template form, there are five tabs:

- `Tickets <events/event-tickets>`{.interpreted-text role="ref"}
- `Communication <events/event-communication>`{.interpreted-text
  role="ref"}
- `Booths <event_templates/event_template/booths>`{.interpreted-text
  role="ref"}
- `Questions <events/event-questions>`{.interpreted-text role="ref"}
- `Notes <events/event-notes>`{.interpreted-text role="ref"}

#### Booths tab {#event_templates/event_template/booths}

The `Booths`{.interpreted-text role="guilabel"} tab on an event template
form is the only tab that differentiates itself from a standard event
form, where the other tabs (`Tickets`{.interpreted-text
role="guilabel"}, `Communication`{.interpreted-text role="guilabel"},
`Questions`{.interpreted-text role="guilabel"}, and
`Notes`{.interpreted-text role="guilabel"}) are present and configured
using the same process. For more information about those tabs, refer to
the `create_events`{.interpreted-text role="doc"} documentation.

:::: important
::: title
Important
:::

To create a booth or booth category, an event booth product **must** be
created in the database first, with the *Product Type* set to *Event
Booth*. **Only** products with that specific configuration can be
selected in the required *Product* field of a booth or booth category
form.
::::

:::: note
::: title
Note
:::

Event booths can be created and customized in two ways in the Odoo
*Events* application. Either in the `Booths`{.interpreted-text
role="guilabel"} tab of an event template form, or by navigating to
`Events app --> Configuration --> Booth Categories`{.interpreted-text
role="menuselection"}, and click `New`{.interpreted-text
role="guilabel"}.
::::

To add a booth from the `Booths`{.interpreted-text role="guilabel"} tab
of an event template form, click `Add a
line`{.interpreted-text role="guilabel"}. Doing so reveals a blank
`Create Booths`{.interpreted-text role="guilabel"} pop-up window.

![A Create Booths pop-up window in the Odoo Events application.](event_templates/create-booths-popup.png){.align-center}

Start by providing a `Name`{.interpreted-text role="guilabel"} for this
booth in the corresponding field at the top of the pop-up window.

Then, select an appropriate `Booth Category`{.interpreted-text
role="guilabel"} from the drop-down field below. Booth categories can be
created and modified from the *Booth Categories* page in the *Events*
application, which is accessible by navigating to
`Events app --> Configuration --> Booth
Categories`{.interpreted-text role="menuselection"}.

:::: tip
::: title
Tip
:::

A `Booth Category`{.interpreted-text role="guilabel"} can be created
directly from this field on the `Create
Booths`{.interpreted-text role="guilabel"} pop-up window. To accomplish
that, type the name of the new booth category in the
`Booth Category`{.interpreted-text role="guilabel"} field, and select
either `Create`{.interpreted-text role="guilabel"} or `Create and
edit...`{.interpreted-text role="guilabel"} from the resulting drop-down
menu.

Clicking `Create`{.interpreted-text role="guilabel"} merely creates the
category, which can (and should be) customized at a later date. Clicking
`Create and edit...`{.interpreted-text role="guilabel"} reveals a new
`Create Booth
Category`{.interpreted-text role="guilabel"} pop-up window, from which
the category can be configured in a number of different ways.

![The Create Booth Category pop-up window in the Odoo Events application.](event_templates/create-booth-category-popup.png){.align-center}

From this pop-up window, proceed to name the
`Booth Category`{.interpreted-text role="guilabel"}, modify its
`Booth Details`{.interpreted-text role="guilabel"} settings, configure
its `Sponsorship`{.interpreted-text role="guilabel"} options (if
applicable), and leave an optional `Description`{.interpreted-text
role="guilabel"} to explain any pertinent details related to this
specific category of booths.

There is also the option to add a photo/visual representation of the
booth category, via the `(camera)`{.interpreted-text role="guilabel"}
icon in the upper-right corner.

When all desired configurations are complete, click the
`Save & Close`{.interpreted-text role="guilabel"} button.

The same configurations and options are available by navigating to
`Events app -->
Configuration --> Booth Categories`{.interpreted-text
role="menuselection"}, and clicking `New`{.interpreted-text
role="guilabel"}.
::::

Once the desired `Booth Category`{.interpreted-text role="guilabel"} is
selected, the remaining fields on the `Create Booths`{.interpreted-text
role="guilabel"} pop-up window (`Currency`{.interpreted-text
role="guilabel"}, `Product`{.interpreted-text role="guilabel"}, and
`Price`{.interpreted-text role="guilabel"}) autopopulate, based on
information configured for that selected `Booth
Category`{.interpreted-text role="guilabel"}.

:::: note
::: title
Note
:::

These fields **cannot** be modified from the
`Create Booths`{.interpreted-text role="guilabel"} pop-up window. They
can only be modified from the specific booth category form page.
::::

When all desired configurations are complete, click
`Save & Close`{.interpreted-text role="guilabel"} to save the booth, and
return to the event template form. Or, click
`Save & New`{.interpreted-text role="guilabel"} to save the booth, and
start creating another booth on a fresh
`Create Booths`{.interpreted-text role="guilabel"} pop-up window. Click
`Discard`{.interpreted-text role="guilabel"} to remove all changes, and
return to the event template form.

Once the booth has been saved, it appears in the
`Booths`{.interpreted-text role="guilabel"} tab on the event template
form.

## Use event templates

Once an event template is complete, it is accessible on all event forms
in the Odoo *Events* application.

To use an event template, navigate to the `Events app`{.interpreted-text
role="menuselection"} and click `New`{.interpreted-text role="guilabel"}
to open a new event form.

From the event form, click the `Template`{.interpreted-text
role="guilabel"} field to reveal all the existing event templates in the
database. They appear in the same order as they are listed in on the
*Event Templates* page
(`Events app --> Configuration --> Event Templates`{.interpreted-text
role="menuselection"}).

Select the desired event template from the `Template`{.interpreted-text
role="guilabel"} drop-down field on the event form. Pre-configured
settings automatically populate the event form, saving time during the
event creation process.

Any of these pre-configured settings related to the selected event
template chosen in the `Template`{.interpreted-text role="guilabel"}
field on an event form can be modified, as desired.

::: seealso
`create_events`{.interpreted-text role="doc"}
:::




--- SOURCE: marketing/events/event_tracks.md ---

# Event tracks

Odoo *Events* provides the ability to create, schedule, and manage
talks, lectures, demonstrations, presentations, etc., which known as
*Tracks* in Odoo.

The Odoo *Events* application also has an option to allow event
attendees to propose talks (tracks) for an event, which can then be
approved (or disapproved).

## Configuration

First, there are some settings that need to be enabled, in order to get
the most out of event tracks.

To do that, navigate to
`Events app --> Configuration --> Settings`{.interpreted-text
role="menuselection"}, and tick the checkbox beside the
`Schedule & Tracks`{.interpreted-text role="guilabel"} setting. Doing so
provides the ability to manage and publish an event schedule with
various tracks.

Also, when that setting checkbox is ticked, two additional setting
options appear beneath it: `Live Broadcast`{.interpreted-text
role="guilabel"} and `Event Gamification`{.interpreted-text
role="guilabel"}.

![The Schedule and Tracks setting in the Odoo Events app, along with corresponding options.](event_tracks/track-settings.png){.align-center}

The `Live Broadcast`{.interpreted-text role="guilabel"} option provides
the ability to air tracks online through a *YouTube* integration.

The `Event Gamification`{.interpreted-text role="guilabel"} options
provides the ability to share a quiz with track attendees once the track
is over, in order to test how much they learned.

:::: note
::: title
Note
:::

With the `Event Gamification`{.interpreted-text role="guilabel"} setting
enabled, an `Add Quiz`{.interpreted-text role="guilabel"} button appears
on track forms, providing the ability to
`quickly create a quiz <events/track-add-quiz>`{.interpreted-text
role="ref"} specific to the topic related to that particular track.
::::

Once all desired settings have been enabled, be sure to click the
`Save`{.interpreted-text role="guilabel"} button in the upper-left
corner of the `Settings`{.interpreted-text role="guilabel"} page.

## Event Tracks page

To access, modify, and/or create tracks for an event, first navigate to
a preconfigured event, or
`create a new one <create_events>`{.interpreted-text role="doc"} from
the *Events* application.

To do that, navigate to `Events app`{.interpreted-text
role="menuselection"}, and either select a pre-existing event from the
`Events`{.interpreted-text role="guilabel"} dashboard, or create a new
one by clicking `New`{.interpreted-text role="guilabel"}.

Once on the desired event form, click into the
`Tracks`{.interpreted-text role="guilabel"} smart button at the top of
the form.

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
reveals the `Event Tracks`{.interpreted-text role="guilabel"} page for
that particular event, which presents all the tracks (both scheduled and
proposed) for the event, if there are any.

![Typical event tracks page for an event in the Odoo Events application.](event_tracks/event-tracks-page.png){.align-center}

The tracks are presented in a default `oi-view-kanban`{.interpreted-text
role="icon"} `(Kanban)`{.interpreted-text role="guilabel"} view, but
there is also the option to view these tracks in a
`oi-view-list`{.interpreted-text role="icon"} `(List)`{.interpreted-text
role="guilabel"}, `oi-view-cohort`{.interpreted-text role="icon"}
`(Gantt)`{.interpreted-text role="guilabel"} chart,
`fa-calendar-check-o`{.interpreted-text role="icon"}
`(Calendar)`{.interpreted-text role="guilabel"},
`fa-area-chart`{.interpreted-text role="icon"}
`(Graph)`{.interpreted-text role="guilabel"}, or
`fa-clock-o`{.interpreted-text role="icon"}
`(Activity)`{.interpreted-text role="guilabel"} view. All of which are
accessible in the upper-right corner of the `Tracks`{.interpreted-text
role="guilabel"} page.

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
`fa-cog`{.interpreted-text role="icon"} `(Settings)`{.interpreted-text
role="guilabel"} icon, and select `Edit`{.interpreted-text
role="guilabel"} from the resulting drop-down menu.
::::

Clicking into a track from the `Event Tracks`{.interpreted-text
role="guilabel"} page reveals the track form for that particular track.

### Create event track

From the `Event Tracks`{.interpreted-text role="guilabel"} page, click
`New`{.interpreted-text role="guilabel"} in the upper-left corner to
reveal a blank event track form to create an event track.

![Typical event track form in the Odoo Events application.](event_tracks/event-track-form.png){.align-center}

Start by giving this track a `Title`{.interpreted-text role="guilabel"}.
This field is **required** by Odoo.

Then, if desired, add an accompanying image to the track via the
`fa-pencil`{.interpreted-text role="icon"} `(pencil)`{.interpreted-text
role="guilabel"} icon that appears when the cursor hovers over the
`fa-camera`{.interpreted-text role="icon"} `(camera)`{.interpreted-text
role="guilabel"} icon in the upper-right corner of the form. When
clicked, proceed to upload the desired image for the track. This image
appears on the front-end of the event website, on this specific tracks
webpage.

Next, enter a `Track Date`{.interpreted-text role="guilabel"} and time
for the track, and designate a `Location`{.interpreted-text
role="guilabel"} where the talk is planning to be held.

:::: tip
::: title
Tip
:::

To access a complete list of locations for event tracks, which can be
modified (and added to) at any time, navigate to
`Events app --> Configuration --> Track Locations`{.interpreted-text
role="menuselection"}.
::::

Then, add a `Duration`{.interpreted-text role="guilabel"} to the track
(in minutes).

If the *Live Broadcast* setting has been enabled in the *Events* app
settings, the option to add a corresponding link in the
`YouTube Video Link`{.interpreted-text role="guilabel"} field is
available.

If the `Always Wishlisted`{.interpreted-text role="guilabel"} checkbox
is ticked, the talk is automatically set as a favorite for each
registered event attendee.

Assign someone to be in charge of managing this track in the
`Responsible`{.interpreted-text role="guilabel"} field. By default, the
person who initially created the track is assigned.

Then, ensure the track is applied to the correct event in the
`Event`{.interpreted-text role="guilabel"} field. By default, this field
is auto-populated with the event related to the *Event Tracks* page the
track was originally created from.

Next, choose to add existing tags, or create new ones, to further
organize the track. These tags, and their corresponding tag categories
are utilized on the event specific website - mainly on the *Talks* web
page on the event website, via the drop-down filter menus.

Beneath that general information section, there are three tabs: `Speaker
<events/track-speaker-tab>`{.interpreted-text role="ref"},
`Description <events/track-description-tab>`{.interpreted-text
role="ref"}, and
`Interactivity <events/track-interactivity-tab>`{.interpreted-text
role="ref"}.

#### Speaker tab {#events/track-speaker-tab}

The `Speaker`{.interpreted-text role="guilabel"} tab on an event track
form is filled with various fields related to the specific speaker who
is planning to conduct/host the track.

![The Speaker tab on an event track form in the Odoo Events application.](event_tracks/speaker-tab.png){.align-center}

##### Contact Details section

In the `Contact Details`{.interpreted-text role="guilabel"} section,
proceed to use the `Contact`{.interpreted-text role="guilabel"}
drop-down field to select an existing contact from the database as the
main point of contact for the talk.

If this contact is not yet in the database, type in the name of the
contact, and click `Create`{.interpreted-text role="guilabel"} to create
and edit the contact form later, or click `Create and
edit...`{.interpreted-text role="guilabel"} to be taken to that new
contact\'s contact form, where the rest of their pertinent information
can be entered.

The `Contact Email`{.interpreted-text role="guilabel"} and
`Contact Phone`{.interpreted-text role="guilabel"} fields are greyed-out
and populated with the information found on that chosen contact\'s
contact form. These fields are not modifiable once the
`Contact`{.interpreted-text role="guilabel"} field is selected.

##### Speaker Bio section

In the `Speaker Bio`{.interpreted-text role="guilabel"} section, proceed
to enter information related to the specific speaker scheduled to
conduct/host the track. This section may auto-populate based on the
`Contact`{.interpreted-text role="guilabel"} selected in the
`Contact Details`{.interpreted-text role="guilabel"} section. If not,
enter information in the necessary fields.

:::: note
::: title
Note
:::

This information appears on the front-end of the event website, on the
specific track webpage, providing more information about the speaker to
the track attendees.
::::

Start by entering a `Name`{.interpreted-text role="guilabel"},
`Email`{.interpreted-text role="guilabel"}, and
`Phone`{.interpreted-text role="guilabel"} number for the speaker.

Next, if desired, add an image to appear alongside the speaker biogrpahy
on the event website, via the `fa-pencil`{.interpreted-text role="icon"}
`(pencil)`{.interpreted-text role="guilabel"} icon that appears when the
cursor hovers over the `fa-camera`{.interpreted-text role="icon"}
`(camera)`{.interpreted-text role="guilabel"} icon. When clicked,
proceed to upload the desired image for the speaker.

Then, enter a `Job Position`{.interpreted-text role="guilabel"} for the
designated speaker, followed by the `Company Name`{.interpreted-text
role="guilabel"} associated with the speaker.

In the `Biography`{.interpreted-text role="guilabel"} field, proceed to
enter in a custom biography with any speaker-related information.

#### Description tab {#events/track-description-tab}

The `Description`{.interpreted-text role="guilabel"} tab of an event
track form is a blank text field, in which a description of the track
can be entered. The information entered here appears on the specific
track page on the event website.

#### Interactivity tab {#events/track-interactivity-tab}

The `Interactivity`{.interpreted-text role="guilabel"} tab on an event
track form features a single option at first:
`Magic Button`{.interpreted-text role="guilabel"}.

![The Interactivity tab on an event track form in the Odoo Events application.](event_tracks/interactivity-tab.png){.align-center}

When the checkbox beside `Magic Button`{.interpreted-text
role="guilabel"} is ticked, Odoo displays a *call to action* button to
attendees on the track sidebar, while the track is taking place.

With that checkbox ticked, three more options appear, all of which are
related to the `Magic Button`{.interpreted-text role="guilabel"}:

- `Button Title`{.interpreted-text role="guilabel"}: enter a title to
  appear on the button for attendees.
- `Button Target URL`{.interpreted-text role="guilabel"}: enter a URL
  that leads attendees, who click the button, to a specific page.
- `Show Button`{.interpreted-text role="guilabel"}: enter a number in
  the field, and the button will appear that number of
  `minutes after Track start`{.interpreted-text role="guilabel"}.

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
enabled in the Odoo *Events* settings.

To add a quiz to the event track, click the `Add Quiz`{.interpreted-text
role="guilabel"} button. Doing so reveals a separate page where an event
track quiz can be created and configured.

![The Add Quiz page in the Odoo Events application for an event track.](event_tracks/add-quiz.png){.align-center}

Start by entering a title for the quiz in the blank field at the top of
the page. Then, if participants should be allowed to try the quiz
multiple times, tick the checkbox beside
`Allow multiple tries`{.interpreted-text role="guilabel"}.

The `Event`{.interpreted-text role="guilabel"} and
`Event Track`{.interpreted-text role="guilabel"} fields are
non-modifiable, and show the corresponding event and track this quiz is
associated with.

To add questions to the quiz, click `Add a line`{.interpreted-text
role="guilabel"} beneath the `Question`{.interpreted-text
role="guilabel"} column. Doing so reveals a
`Create Questions`{.interpreted-text role="guilabel"} pop-up window.

![The Create Questions pop-up window on an event-specific track quiz in the Odoo Events app.](event_tracks/create-questions.png){.align-center}

:::: note
::: title
Note
:::

**All** track quiz questions are multiple choice.
::::

From the pop-up window, enter the question in the blank field at the
top. Then, click `Add
a line`{.interpreted-text role="guilabel"} to add answer options. Upon
clicking `Add a line`{.interpreted-text role="guilabel"}, a new line
appears, in which an answer option can be entered.

Once an answer option has been entered, proceed to designate whether it
is the `Correct`{.interpreted-text role="guilabel"} response, by ticking
the checkbox in the `Correct`{.interpreted-text role="guilabel"} column.

Then, there is the option to add a point value in the
`Points`{.interpreted-text role="guilabel"} column.

And, if there are any additional comments that should accompany an
answer option, type them into the `Extra Comment`{.interpreted-text
role="guilabel"} field.

:::: note
::: title
Note
:::

The `Correct`{.interpreted-text role="guilabel"},
`Points`{.interpreted-text role="guilabel"}, and
`Extra Comment`{.interpreted-text role="guilabel"} fields are all
optional.
::::

Repeat this process for all the answer options.

To remove an answer option, click the `fa-trash-o`{.interpreted-text
role="icon"} `(trash can)`{.interpreted-text role="guilabel"} icon on
the far-right.

Once all desired answer options (and their configurations) are complete,
click `Save &
Close`{.interpreted-text role="guilabel"} to save the question, close
the pop-up window, and return to the track quiz form. Or, click
`Save & New`{.interpreted-text role="guilabel"} to save this question,
and instantly start creating another question on a new
`Create Questions`{.interpreted-text role="guilabel"} pop-up form.

To remove any question from the quiz, click the
`fa-trash-o`{.interpreted-text role="icon"}
`(trash can)`{.interpreted-text role="guilabel"} icon on the far-right
of the question line.

## Publish event track

Once all the desired configurations are complete on an event track form,
click the desired stage it should be in from the status bar in the
upper-right corner (e.g. `Confirmed`{.interpreted-text role="guilabel"},
`Announced`{.interpreted-text role="guilabel"}, etc.).

:::: note
::: title
Note
:::

The stage of a track can also be changed from the
`Event Tracks`{.interpreted-text role="guilabel"} page, where the
desired track card can be dragged-and-dropped into the appropriate
Kanban stage.
::::

If an event track has *not* been published yet, and it is moved to the
`Published`{.interpreted-text role="guilabel"} stage, Odoo automatically
publishes the track on the event website.

An event track can *also* be published by opening the desired event
track form, and clicking the `Go to Website`{.interpreted-text
role="guilabel"} smart button. Then, in order for the track page to be
viewable (and accessible) for event attendees, toggle the
`fa-toggle-off`{.interpreted-text role="icon"}
`Unpublished`{.interpreted-text role="guilabel"} switch at the top of
the page to `fa-toggle-on`{.interpreted-text role="icon"}
`Published`{.interpreted-text role="guilabel"}; thus turning it from red
to green, and making it accessible for attendees.

![The track-related event submenu options on an event website built with Odoo Events.](event_tracks/published-toggle.png){.align-center}

::: seealso
\- `create_events`{.interpreted-text role="doc"} -
`track_manage_talks`{.interpreted-text role="doc"}
:::




--- SOURCE: marketing/events/registration_desk.md ---

# Registration Desk

Use the *Registration Desk* feature in Odoo **Events** to grant access
to registered event attendees as they arrive, and store attendee-related
data in the reporting metrics.

## Registration Desk page

On a mobile device (on the Odoo app or in a browser), open the
`Events app`{.interpreted-text role="menuselection"}, and click the
`Registration Desk`{.interpreted-text role="guilabel"} to view the
`Registration Desk`{.interpreted-text role="guilabel"} page.

![The Registration Desk page in the Odoo Events application.](registration_desk/registration-desk-page.png){.align-center}

At the bottom of the `Registration Desk`{.interpreted-text
role="guilabel"} box, there are options to either `Scan
a badge`{.interpreted-text role="guilabel"} or
`Select Attendee`{.interpreted-text role="guilabel"}.

## Scan a badge

Scan the codes present on event attendee badges, by navigating to
`Events app -->
Registration Desk`{.interpreted-text role="menuselection"}, and
selecting the `Scan a badge`{.interpreted-text role="guilabel"} option.

:::: important
::: title
Important
:::

Odoo **must** be granted access to the camera being used for the
`Scan a badge`{.interpreted-text role="guilabel"} option to work.
::::

Once Odoo has access to the camera, a
`Barcode Scanner`{.interpreted-text role="guilabel"} pop-up window
appears, showing the camera\'s point-of-view. There is also a specified
view finder box present, whose size can be manually modified,
accordingly, using the `fa-crop`{.interpreted-text role="icon"}
`(crop)`{.interpreted-text role="guilabel"} icon.

![The Barcode Scanner window of the Registration Desk in the Odoo Events application.](registration_desk/barcode-scanner-window.png){.align-center}

When the badge code is in the middle of the view finder box, the code is
scanned, the `Barcode Scanner`{.interpreted-text role="guilabel"} pop-up
window disappears, and the attendee is granted access to the event. Once
the code is scanned, their attendance is logged in the Odoo **Events**
app.

If the barcode being scanned is invalid, an error pop-up message appears
in the upper-right corner.

## Select attendee

Manually grant access to event attendees, by navigating to
`Events app -->
Registration Desk`{.interpreted-text role="menuselection"}, and
selecting the `Select Attendee`{.interpreted-text role="guilabel"}
option.

Odoo reveals an `Attendees`{.interpreted-text role="guilabel"} page,
with all the attendees for every event in the database, in a default
`oi-view-kanban`{.interpreted-text role="icon"}
`Kanban`{.interpreted-text role="guilabel"} view.

![The Attendees page, via the Registration Desk, located in the Odoo Events application.](registration_desk/attendees-page.png){.align-center}

On the `Attendees`{.interpreted-text role="guilabel"} page, each
attendee card displays that person\'s name, which event they are
registered to attend, their associated company (if applicable), what
ticket tier they purchased (if applicable), along with two buttons: a
`fa-check`{.interpreted-text role="icon"}
`(checkmark)`{.interpreted-text role="guilabel"} and
`fa-undo`{.interpreted-text role="icon"}
`(counter-clockwise arrow)`{.interpreted-text role="guilabel"}.

To grant access to a person, marking them as attended, click the
`fa-check`{.interpreted-text role="icon"}
`(checkmark)`{.interpreted-text role="guilabel"} button on that
attendee\'s card.

Click the `fa-undo`{.interpreted-text role="icon"}
`(counter-clockwise arrow)`{.interpreted-text role="guilabel"} button on
an attendee\'s card to undo the previous action.

:::: tip
::: title
Tip
:::

It is recommended to use an event-specific filter on the
`Attendees`{.interpreted-text role="guilabel"} page, via the search bar
drop-down menu.

To do that, click the `fa-sort-desc`{.interpreted-text role="icon"}
`(down arrow)`{.interpreted-text role="guilabel"} beside the seach bar
to reveal a drop-down menu with `Filters`{.interpreted-text
role="guilabel"}, `Group By`{.interpreted-text role="guilabel"}, and
`Favorites`{.interpreted-text role="guilabel"} options.

For example, click the `Event`{.interpreted-text role="guilabel"}
option, in the `Group By`{.interpreted-text role="guilabel"} column.
Then, click away to remove the drop-down menu. Odoo reveals the
`Attendees`{.interpreted-text role="guilabel"} page with event-specific
columns, allowing users to locate specific event attendees.
::::

::: seealso
`../../essentials/search`{.interpreted-text role="doc"}
:::




--- SOURCE: marketing/events/revenues_report.md ---

# Revenues report

The Odoo **Events** application creates custom reports, based on
event-related data and analytics. These reports can either be focused on
*Attendees* or *Revenues*.

The following documentation focuses on the reporting options related to
event *Revenues*.

## Revenues reporting page

To access the *Attendees* reporting page, navigate to
`Events app --> Reporting -->
Revenues`{.interpreted-text role="menuselection"}.

![The default view of the Revenues reporting page in the Odoo Events application.](revenues_report/default-view.png){.align-center}

By default, the `Revenues`{.interpreted-text role="guilabel"} reporting
page appears as a graph (a `fa-line-chart`{.interpreted-text
role="icon"} `(Line Chart)`{.interpreted-text role="guilabel"} with
`fa-database`{.interpreted-text role="icon"}
`(Stacked)`{.interpreted-text role="guilabel"} data). The default
filters, `Non-free tickets`{.interpreted-text role="guilabel"} and
`Event Start Date: (current year)`{.interpreted-text role="guilabel"},
are present in the search bar.

:::: tip
::: title
Tip
:::

To learn more about the various graph views (and graph view options),
refer to the `Graph
views <reporting/using-graph>`{.interpreted-text role="ref"}
documentation.
::::

The `Revenues`{.interpreted-text role="guilabel"} reporting page can
also be viewed as a `pivot table
<reporting/views/pivot>`{.interpreted-text role="ref"}, by clicking the
`oi-view-pivot`{.interpreted-text role="icon"}
`(Pivot)`{.interpreted-text role="guilabel"} icon in the upper-right
corner.

### Measures

Choosing specific
`Measures <reporting/choosing-measures>`{.interpreted-text role="ref"}
is a quick way to customize reporting pages.

Regardless of the chosen view, the measures on the
`Revenues`{.interpreted-text role="guilabel"} reporting page are as
follows: `Revenues`{.interpreted-text role="guilabel"},
`Untaxed Revenues`{.interpreted-text role="guilabel"}, and
`Count`{.interpreted-text role="guilabel"}.

:::: note
::: title
Note
:::

In the default graph view of the `Revenues`{.interpreted-text
role="guilabel"} reporting page, only the `Revenues`{.interpreted-text
role="guilabel"} option is set in the `Measures`{.interpreted-text
role="guilabel"} drop-down menu.

In graph view, only one of the `Measures`{.interpreted-text
role="guilabel"} can be selected at a time.

When the pivot option is selected, all `Measures`{.interpreted-text
role="guilabel"} options are selected, by default.
::::

- `Revenues`{.interpreted-text role="guilabel"}: shows the revenues
  generated from events.
- `Untaxed Revenues`{.interpreted-text role="guilabel"}: shows the
  untaxed revenues generated from events.
- `Count`{.interpreted-text role="guilabel"}: shows the total amount of
  registrants who attended events.

### Filters and grouping options

To reveal a drop-down menu of filter and grouping options to create
custom reports, click the `fa-caret-down`{.interpreted-text role="icon"}
`(down arrow)`{.interpreted-text role="guilabel"} to the right of the
search bar.

Doing so opens a drop-down mega menu of options organized into columns:
`Filters
<search/preconfigured-filters>`{.interpreted-text role="ref"},
`Group By <search/group>`{.interpreted-text role="ref"}, and `Favorites
<search/favorites>`{.interpreted-text role="ref"}.

:::: note
::: title
Note
:::

If a time-related option has been selected from the
`Filters`{.interpreted-text role="guilabel"} column (e.g. the default
`Event Start Date: (year)`{.interpreted-text role="guilabel"} filter), a
`Comparison`{.interpreted-text role="guilabel"} column appears, with
comparison options for the corresponding time-related filter option
selected.

Only **one** selection can be made from the
`Comparison`{.interpreted-text role="guilabel"} column at a time.
::::

::: seealso
`../../essentials/search`{.interpreted-text role="doc"}
:::

#### Filter options

In the `Filters`{.interpreted-text role="guilabel"} column of the
drop-down mega menu, there are various event-related options that can be
utilized to create custom reports, based on a number of specific
criteria.

Multiple options in the `Filters`{.interpreted-text role="guilabel"}
column can be selected at once.

The `Filters`{.interpreted-text role="guilabel"} column has the
following options:

- `Non-free tickets`{.interpreted-text role="guilabel"}: event
  tickets/registrations that were **not** free.
- `Free`{.interpreted-text role="guilabel"}: event tickets/registrations
  that *were* free.
- `Pending payment`{.interpreted-text role="guilabel"}: event
  tickets/registrations that were purchased, but still have payment
  pending.
- `Sold`{.interpreted-text role="guilabel"}: event tickets/registrations
  that have been successfully sold (and paid for).
- `Registration Date`{.interpreted-text role="guilabel"}: Click the
  `fa-caret-down`{.interpreted-text role="icon"}
  `(down arrow)`{.interpreted-text role="guilabel"} icon to reveal a
  list of month, quarter, and year options. Select any number of these
  options to view a specific periods of time and see how many
  registrations happened during that time.
- `Upcoming/Running`{.interpreted-text role="guilabel"}: include
  revenue-related information for events that are either currently
  running or are going to happen in the future.
- `Past Events`{.interpreted-text role="guilabel"}: include
  revenue-related information for events that have already taken place.
- `Event Start Date`{.interpreted-text role="guilabel"}: Click the
  `fa-caret-down`{.interpreted-text role="icon"}
  `(down arrow)`{.interpreted-text role="guilabel"} icon to reveal a
  list of month, quarter, and year options. Select any number of these
  options to designate event start dates to use as filters for
  revenue-related event data.
- `Event End Date`{.interpreted-text role="guilabel"}: Click the
  `fa-caret-down`{.interpreted-text role="icon"}
  `(down arrow)`{.interpreted-text role="guilabel"} icon to reveal a
  list of month, quarter, and year options. Select any number of these
  options to designate event end dates to use as filters for
  revenue-related event data.
- `Published Events`{.interpreted-text role="guilabel"}: Select this
  option to show revenue-related data for published events.
- `Add Custom Filter`{.interpreted-text role="guilabel"}: Create a
  custom filter to analyze event-related revenue data. To learn more,
  refer to the documentation on
  `custom filters <search/custom-filters>`{.interpreted-text
  role="ref"}.

#### Group By options

In the `Group By`{.interpreted-text role="guilabel"} column of the
drop-down mega menu, there are various event-related options to create
custom groupings of data.

Multiple `Group By`{.interpreted-text role="guilabel"} options can be
selected at once.

The `Group By`{.interpreted-text role="guilabel"} column has the
following options:

- `Event Type`{.interpreted-text role="guilabel"}: Group data based on
  the type of event.
- `Event`{.interpreted-text role="guilabel"}: Organize data into
  individual groups, separated by events.
- `Product`{.interpreted-text role="guilabel"}: Group data based on the
  event registration product.
- `Ticket`{.interpreted-text role="guilabel"}: Group data based on the
  type of event ticket purchased by attendees.
- `Registration Status`{.interpreted-text role="guilabel"}: Group data
  based on the status of registrations.
- `Sale Order Status`{.interpreted-text role="guilabel"}: Group data
  based on the status of event-related sales orders.
- `Customer`{.interpreted-text role="guilabel"}: Group data based on
  customer records.
- `Add Custom Group`{.interpreted-text role="guilabel"}: Click the
  `fa-caret-down`{.interpreted-text role="icon"}
  `(down arrow)`{.interpreted-text role="guilabel"} icon to reveal a
  drop-down of grouping options. To select one, click on the desired
  option, and Odoo adds it to the `Group By`{.interpreted-text
  role="guilabel"} column. Multiple selections can be made.

## Sample report: event ticket analysis (graph)

The following is an example of how various filters and grouping options
can create a useful analytic graph report related to event revenues. In
this case, the configurations present data about sold or free tickets to
published events, with the metrics separated by ticket type and event.

![The event ticket analysis sample report with unique filters and groupings in place.](revenues_report/event-ticket-analysis.png){.align-center}

To create such a report, navigate to
`Events app --> Reporting --> Revenues`{.interpreted-text
role="menuselection"}. Stay in the default graph view, but remove the
default filters from the search bar.

Then, click the `fa-caret-down`{.interpreted-text role="icon"}
`(down arrow)`{.interpreted-text role="guilabel"} to the right of the
search bar, to reveal the drop-down mega menu of filter and grouping
options.

From here, select `Free`{.interpreted-text role="guilabel"} and
`Sold`{.interpreted-text role="guilabel"} from the
`Filters`{.interpreted-text role="guilabel"} column.

Then, since it is desired to **only** view data related to already
published events, select the `Published Events`{.interpreted-text
role="guilabel"} option in the `Filters`{.interpreted-text
role="guilabel"} column, as well.

Next, in the `Group By`{.interpreted-text role="guilabel"} column,
select the `Event`{.interpreted-text role="guilabel"} and
`Ticket`{.interpreted-text role="guilabel"} options, **in that
sequential order**. Doing so first groups the data by event, *then* by
ticket type, which provides a more useful array of data to analyze.

:::: important
::: title
Important
:::

The order in which the options are selected in the
`Group By`{.interpreted-text role="guilabel"} column directly affects
how the data is presented on the report.
::::

From there, additional configurations can be added for more detailed
data, if desired.

If no additional filters or groupings are added, Odoo presents a
graphical representation of data related to all *free* or *sold* tickets
for *published events*, grouped by *event*, and organized by *ticket*
type.

## Sample report: event type analysis (pivot table)

The following is an example of how various filters and grouping options
can create a useful analytic pivot table report related to event
revenues. In this case, the configurations present data about how much
revenue different event types have generated, in order to gauge which
events are the most profitable.

![The event type analysis sample report with unique filters and groupings in place.](revenues_report/event-type-analysis.png){.align-center}

First, navigate to
`Events app --> Reporting --> Revenues`{.interpreted-text
role="menuselection"}, and switch to the pivot table view, by clicking
the `oi-view-pivot`{.interpreted-text role="icon"}
`(Pivot)`{.interpreted-text role="guilabel"} icon in the upper-right
corner.

Keep the default filters (`Non-free tickets`{.interpreted-text
role="guilabel"} and `Event Start Date: (year)`{.interpreted-text
role="guilabel"}) in the search bar.

Next, open the `Measures`{.interpreted-text role="guilabel"} drop-down
menu, and deselect the option for `Count`{.interpreted-text
role="guilabel"}, because this report is only going to focus on
revenues.

Then, click `fa-plus-square`{.interpreted-text role="icon"}
`Total`{.interpreted-text role="guilabel"} above the column titles, and
select `Event Type`{.interpreted-text role="guilabel"} from the
resulting drop-down menu.

With these configurations in place, all the revenues generated from the
events (and their corresponding registrations) are displayed, organized
by the event type (presented as expandable columns).




--- SOURCE: marketing/events/sell_tickets.md ---

# Sell event tickets

Odoo *Events* provides users with the ability to create custom event
tickets (and ticket tiers), with various price points.

It *also* allows them to sell event tickets in two different ways: via
standard sales orders, and online through an integrated website.

Odoo also simplifies the ticket-purchasing process by providing plenty
of payment method options.

:::: tip
::: title
Tip
:::

To learn more about how to create custom tickets (and ticket tiers) for
events, check out the `create_events`{.interpreted-text role="doc"}
documentation.
::::

## Configuration

In order to sell event tickets in Odoo, some settings must first be
enabled.

First, navigate to
`Events app --> Configuration --> Settings`{.interpreted-text
role="menuselection"}. In the `Registration`{.interpreted-text
role="guilabel"} section, there are two different settings:
`Tickets`{.interpreted-text role="guilabel"} and
`Online Ticketing`{.interpreted-text role="guilabel"}.

The `Tickets`{.interpreted-text role="guilabel"} setting allows users to
sell event tickets with standard sales orders.

The `Online Ticketing`{.interpreted-text role="guilabel"} setting allows
users to sell event tickets online through their integrated Odoo
website.

To activate a setting, tick the checkbox beside the desired feature\'s
label, and click `Save`{.interpreted-text role="guilabel"} to finish
enabling it.

:::: note
::: title
Note
:::

If these options are *not* enabled, a default
`Register`{.interpreted-text role="guilabel"} button becomes available
for visitors to interact with and procure free registrations to the
event.
::::

![View of the settings page for Odoo Events.](sell_tickets/events-settings-tickets.png){.align-center}

With those settings enabled, Odoo automatically creates a new *Product
Type* called, *Event Ticket*, which is accessible on every product form.
Odoo also creates three event registration products (with the *Product
Type* set to *Event Ticket*) that can be used or modified for event
tickets.

:::: important
::: title
Important
:::

When creating a new event registration product, the *Product Type*
**must** be set to *Event Ticket* on the product form, in order for it
to be selected in the *Product* column under the *Tickets* tab on an
event form.

![View of an event form highlighting the column product under the tickets tab in Odoo.](sell_tickets/events-tickets-registration-product.png){.align-center}
::::

:::: note
::: title
Note
:::

Any event with paid tickets sold, features a
`fa-dollar`{.interpreted-text role="icon"} `Sales`{.interpreted-text
role="guilabel"} smart button at the top of the event form, where the
respective sales orders attributed to those ticket sales become
available.

![View of an event\'s form and the sales smart button in Odoo Events.](sell_tickets/events-sales-smartbutton.png){.align-center}

Clicking the `fa-dollar`{.interpreted-text role="icon"}
`Sales`{.interpreted-text role="guilabel"} smart button reveals a
separate page, showcasing all the sales orders (standard and/or online)
related to tickets that have been sold for that specific event.
::::

## Sell event tickets with the Sales app

To sell event tickets with sales orders, start by navigating to the
`Sales`{.interpreted-text role="menuselection"} app. Then, click
`New`{.interpreted-text role="guilabel"} to open a new quotation form.

After filling out the top portion of the form with the appropriate
customer information, click `Add a product`{.interpreted-text
role="guilabel"} in the `Order Lines`{.interpreted-text role="guilabel"}
tab. Then, in the `Product`{.interpreted-text role="guilabel"} column,
select (or create) an event registration product configured with its
`Product
Type`{.interpreted-text role="guilabel"} set to
`Event Ticket`{.interpreted-text role="guilabel"} on its product form.

Once an event registration product is selected, a
`Configure an event`{.interpreted-text role="guilabel"} pop-up window
appears.

![Standard \'Configure an event\' pop-up window that appears on an event ticket sales order.](sell_tickets/configure-event-popup.png){.align-center}

From the `Configure an event`{.interpreted-text role="guilabel"} pop-up
window, select to which event this ticket purchase is related to in the
`Event`{.interpreted-text role="guilabel"} field drop-down menu. Then,
in the `Event Ticket`{.interpreted-text role="guilabel"} drop-down menu,
select which ticket tier the customer wishes to purchase, if there are
multiple tiers configured for that event.

When all the desired configurations are complete, click
`Ok`{.interpreted-text role="guilabel"}. Doing so returns the user to
the sales order, with the event registration ticket product now present
in the `Order
Lines`{.interpreted-text role="guilabel"} tab. The user can proceed to
confirm and close the sale, per the usual process.

:::: tip
::: title
Tip
:::

To re-open the *Configure an event* pop-up window, hover over the event
registration product name in the `Order Lines`{.interpreted-text
role="guilabel"} tab, and click on the `fa-pencil`{.interpreted-text
role="icon"} `(pencil)`{.interpreted-text role="guilabel"} icon.
::::

## Sell event tickets through the Website app

When a visitor arrives on the register page of the event website, they
can click the `Register`{.interpreted-text role="guilabel"} button to
purchase a ticket to the event.

:::: note
::: title
Note
:::

If the visitor is *not* already on the register page of the event
website, clicking `Register`{.interpreted-text role="guilabel"} on the
event website\'s submenu redirects them to the proper register page.
From there, they can click the `Register`{.interpreted-text
role="guilabel"} button to begin the ticket purchasing process.
::::

If different ticket tiers are configured for the event, the visitor is
presented with a `Tickets`{.interpreted-text role="guilabel"} pop-up
window.

![The tickets pop-up window that appears on the event\'s website when \'Register\' is clicked.](sell_tickets/tickets-popup.png){.align-center}

From here, visitors select which ticket tier they would like to
purchase, along with a quantity, using the numerical drop-down menu
available to the right of their desired ticket. Once the desired
selections have been entered, the visitor then clicks the
`Register`{.interpreted-text role="guilabel"} button.

Then, an `Attendees`{.interpreted-text role="guilabel"} pop-up window
appears, containing all the questions that have been configured in the
*Questions* tab of the event form for this particular event.

![The attendees pop-up window that appears on the event\'s website when \'Ok\' is clicked.](sell_tickets/attendees-popup.png){.align-center}

If multiple tickets are being purchased at once, there are numbered
sections for each individual ticket registrant, each containing the same
questions. However, if any question has been configured with the *Ask
once per order* setting, that question is only asked once \-- and
**not** for every attendee making the reservation in the order.

With all necessary information entered, the visitor can then click the
`Go to Payment`{.interpreted-text role="guilabel"} button. Doing so
first takes the visitor to a `Billing`{.interpreted-text
role="guilabel"} confirmation page, followed by a
`Payment`{.interpreted-text role="guilabel"} confirmation page, where
they can utilize any configured payment method set up in the database to
complete the order.

Then, once the purchase is complete on the front-end of the website, the
subsequent sales order is instantly accessible in the back-end of the
database.

::: seealso
`create_events`{.interpreted-text role="doc"}
:::




--- SOURCE: marketing/events/track_manage_talks.md ---

# Talks, proposals, and agenda

With Odoo *Events*, users can utilize a fully-integrated event website,
where attendees can quickly access various tracks (talks, presentations,
etc.), view entire agendas, and propose talks for the event.

## Event website

To access an event website, navigate to the specific event form in the
Odoo *Events* app, and click the `Go to Website`{.interpreted-text
role="guilabel"} smart button. Or, while on the Odoo-built website for
the company, click the `Events`{.interpreted-text role="guilabel"}
header option, and select the desired event to view that event\'s
website.

On the event website, there is an event-specific subheader menu with
different options to choose from.

With the *Schedule & Tracks* setting enabled in the Odoo *Events* app,
the following links are automatically added to the subheader menu,
located on the event website: `Talks`{.interpreted-text
role="guilabel"}, `Talk Proposals`{.interpreted-text role="guilabel"},
and `Agenda`{.interpreted-text role="guilabel"}.

![The track-related event submenu options on an event website built with Odoo Events.](track_manage_talks/track-submenu-options.png){.align-center}

To enable the `Schedule & Tracks`{.interpreted-text role="guilabel"}
setting, navigate to `Events app -->
Configuration --> Settings`{.interpreted-text role="menuselection"},
tick the checkbox beside `Schedule & Tracks`{.interpreted-text
role="guilabel"}, and click `Save`{.interpreted-text role="guilabel"}.

### Talks page

The `Talks`{.interpreted-text role="guilabel"} link takes the attendee
to a page filled with all the planned tracks for the event.

![The Talks page on an event website built through the Odoo Events application.](track_manage_talks/talks-page.png){.align-center}

At the top of `Talks`{.interpreted-text role="guilabel"} page, there are
drop-down filter menus beside a `Search
a talk...`{.interpreted-text role="guilabel"} search bar.

The first drop-down filter menu (with the starting title:
`Favorites`{.interpreted-text role="guilabel"}) is the only drop-down
filter menu that appears by default. When clicked, the resulting menu
presents two options: `Favorites`{.interpreted-text role="guilabel"} and
`All Talks`{.interpreted-text role="guilabel"}.

Selecting `Favorites`{.interpreted-text role="guilabel"} shows *only*
the tracks that have been favorited by the attendee.

:::: note
::: title
Note
:::

If no tracks have been favorited, and the `Favorites`{.interpreted-text
role="guilabel"} filter is selected, Odoo presents all the event tracks.
::::

Selecting `All Talks`{.interpreted-text role="guilabel"} shows *all* the
tracks, regardless if they have been favorited or not.

The other drop-down filter menus that appear on this page are related to
any configured tags (and tag categories) created for event tracks in the
backend.

:::: tip
::: title
Tip
:::

To add tags and tag categories to track forms, open a desired event
track form, and start typing a new tag in the `Tags`{.interpreted-text
role="guilabel"} field. Then, click
`Create and edit...`{.interpreted-text role="guilabel"} from the
resulting drop-down menu.

Doing so reveals a `Create Tags`{.interpreted-text role="guilabel"}
pop-up form.

![The Create Tags pop-up form that coincides with drop-down filter menus on Talks page.](track_manage_talks/create-tags-popup.png){.align-center}

From here, users see the recently added tag in the
`Tag Name`{.interpreted-text role="guilabel"} field. Beneath that, there
is an option to add a specific `Color Index`{.interpreted-text
role="guilabel"} to the tag for added organization.

Lastly, there is the `Category`{.interpreted-text role="guilabel"}
field, where users can either select a pre-existing category for this
new tag, or create a new one.

All options in the `Category`{.interpreted-text role="guilabel"} field
for tags appear as their own drop-down filter menu on the
`Talks`{.interpreted-text role="guilabel"} page, located on the event
website.
::::

Beneath the drop-down filter menus at the top of the
`Talks`{.interpreted-text role="guilabel"} page, there is a list of
planned tracks for the specific event, organized by day.

If an attendee wishes to favorite a track, they can click the
`fa-bell-o`{.interpreted-text role="icon"} `(empty
bell)`{.interpreted-text role="guilabel"} icon, located to the right of
the track title. Attendees will know a track has been favorited when
they notice the icon has been changed to `fa-bell`{.interpreted-text
role="icon"} `(filled bell)`{.interpreted-text role="guilabel"} icon.

Favoriting a track this way places it on the list of
`Favorites`{.interpreted-text role="guilabel"}, which is accessible from
the default drop-down filter menu, located at the top of the
`Talks`{.interpreted-text role="guilabel"} page.

### Talk Proposals page

The `Talk Proposals`{.interpreted-text role="guilabel"} link takes
attendees to a page on the event website, wherein they can formerly
submit a proposal for a talk (`track`{.interpreted-text role="dfn"}) for
the event, via a custom online form.

![The Talk Proposals page on the event website built with the Odoo Events application.](track_manage_talks/talk-proposals-page.png){.align-center}

In addition to the form, an introduction to the page, along with any
other pertinent information related to the types of talks the event will
feature can be added, if needed.

The talk proposal form can be modified in a number of different ways,
via the web builder tools, accessible by clicking
`Edit`{.interpreted-text role="guilabel"} while on the specific page.

Then, proceed to edit any of the default fields, or add new forms with
the `Form`{.interpreted-text role="guilabel"} building block (located in
the `Blocks`{.interpreted-text role="guilabel"} section of the web
builder tools sidebar).

Once all the necessary information is entered into the form, the
attendees just need to click the `Submit Proposal`{.interpreted-text
role="guilabel"} button.

Then, that talk, and all the information entered on the form, can be
accessed on the `Event Tracks`{.interpreted-text role="guilabel"} page
for that specific event in the `Proposal`{.interpreted-text
role="guilabel"} stage, which is accessible via the
`Tracks`{.interpreted-text role="guilabel"} smart button on the event
form.

At that point, an internal user can review the proposed talk, and choose
to accept or deny the proposal.

If accepted, the internal user can then move the track to the next
appropriate stage in the Kanban pipeline on the
`Event Tracks`{.interpreted-text role="guilabel"} page for the event.
Then, they can open that track form, and click the
`Go to Website`{.interpreted-text role="guilabel"} smart button to
reveal that track\'s page on the event website.

From there, they can toggle the `Unpublished`{.interpreted-text
role="guilabel"} switch in the header to `Published`{.interpreted-text
role="guilabel"}, which allows all event attendees to view and access
the talk.

### Agenda page

The `Agenda`{.interpreted-text role="guilabel"} link takes attendees to
a page on the event website, showcasing an event calendar, depicting
when (and where) events are taking place for that specific event.

![The event Agenda page on the event website built with the Odoo Events application.](track_manage_talks/event-agenda-page.png){.align-center}

Clicking any track on the calendar takes the attendee to that specific
track\'s detail page on the event website.

If an attendee wishes to favorite a track, they can click the
`fa-bell-o`{.interpreted-text role="icon"} `(empty
bell)`{.interpreted-text role="guilabel"} icon, located to the right of
the track title. Attendees will know a track has been favorited when
they notice the icon has been changed to `fa-bell`{.interpreted-text
role="icon"} `(filled bell)`{.interpreted-text role="guilabel"} icon.




--- SOURCE: marketing/events.md ---

show-content

:   

# Events

Explore the various aspects of the Odoo **Events** detailed dashboard,
and useful settings, that can be utilized to generate and gather
valuable data about events (and their attendees), which can then be used
to improve decision-making and event-planning.

::: seealso
[Odoo Tutorials: Events](https://www.odoo.com/slides/surveys-63)
:::

::::::::::: cards
::: {.card target="events/create_events"}
Create events

Discover how to create events with Odoo.
:::

::: {.card target="events/sell_tickets"}
Sell event tickets

Learn how to create, configure, and sell event tickets.
:::

::: {.card target="events/track_manage_talks"}
Track and manage talks

See how to create, track, and manage event tracks with Odoo.
:::

::: {.card target="events/event_templates"}
Event templates

Expedite the event-creation process with event templates.
:::

::: {.card target="events/event_tracks"}
Event tracks

Learn how to create, track, and manage event tracks with Odoo.
:::

::: {.card target="events/event_booths"}
Event booths

Create, manage, and sell event booths.
:::

::: {.card target="events/registration_desk"}
Registration Desk

Instantly grant access to event attendees with Odoo\'s Registration Desk
feature.
:::

::: {.card target="events/revenues_report"}
Revenues report

Analyze the financial success of events with Odoo.
:::
:::::::::::

## Events dashboard

When the **Events** application is opened, Odoo reveals the main
`Events`{.interpreted-text role="guilabel"} dashboard, which can be
viewed in a number of different ways. Those different view options are
accessible from the `Events`{.interpreted-text role="guilabel"}
dashboard in the upper-right corner, via a series of view-related icon
buttons.

By default, the `Events`{.interpreted-text role="guilabel"} dashboard is
displayed in the `oi-view-kanban`{.interpreted-text role="icon"}
`Kanban`{.interpreted-text role="guilabel"} view, which is populated
with a variety of pipeline stages.

![Overview of events setting with the kanban view in Odoo Events.](events/kanban-dashboard.png){.align-center}

This view showcases all the events in the database in their respective
stages. By default, the stages are: `New`{.interpreted-text
role="guilabel"}, `Booked`{.interpreted-text role="guilabel"},
`Announced`{.interpreted-text role="guilabel"},
`Ended`{.interpreted-text role="guilabel"}, and
`Cancelled`{.interpreted-text role="guilabel"}.

:::: note
::: title
Note
:::

The `Ended`{.interpreted-text role="guilabel"} and
`Cancelled`{.interpreted-text role="guilabel"} stages are folded, by
default, and located to the right of the other stages.
::::

On each event card, find the scheduled date of the event, the name of
the event, the location, the number of expected
`Attendees`{.interpreted-text role="guilabel"}, any scheduled activities
related to the event, the status of the event, and the person
responsible for the event.

To quickly add a new event to a pipeline, click the
`fa-plus`{.interpreted-text role="icon"} `(plus)`{.interpreted-text
role="guilabel"} icon at the top of the stage to which the event should
be added to reveal a blank Kanban card to fill out.

![Typical blank kanban card to fill out in the Odoo Events application.](events/blank-kanban-card.png){.align-center}

In this blank Kanban card, enter the name of `Event`{.interpreted-text
role="guilabel"}, along with the start and end `Date`{.interpreted-text
role="guilabel"} and time.

Then, either click `Add`{.interpreted-text role="guilabel"} to add it to
the stage and edit it later, or click `Edit`{.interpreted-text
role="guilabel"} to add the event to stage and edit its configurations
on a separate page.

Each event card can be dragged-and-dropped into any stage on the Kanban
pipeline, providing easy organizational access.

## Settings

To access the event settings and feature options in Odoo **Events**,
navigate to
`Events app --> Configuration --> Settings`{.interpreted-text
role="menuselection"}. From here, tick the checkboxes beside the desired
settings and/or features, and click `Save`{.interpreted-text
role="guilabel"} to activate them.

### Events section

In the `Events`{.interpreted-text role="guilabel"} section of the
`Settings`{.interpreted-text role="guilabel"} page, there are selectable
features that can be enabled to add various elements to events created
with the Odoo **Events** application.

![The Events section on the Odoo Events settings page in the Odoo Events application.](events/settings-events-section.png){.align-center}

The `Schedule & Tracks`{.interpreted-text role="guilabel"} feature
allows users to manage and publish a schedule with tracks for events.
*Tracks* is a catch-all term that refers to talks, lectures,
demonstrations, presentations, and other similar elements that users may
choose to include as part of an event.

When the `Schedule & Tracks`{.interpreted-text role="guilabel"} feature
is enabled, two additional fields appear beneath it:
`Live Broadcast`{.interpreted-text role="guilabel"} and
`Event Gamification`{.interpreted-text role="guilabel"}.

The `Live Broadcast`{.interpreted-text role="guilabel"} feature lets
users air tracks online, via a *YouTube* integration.

The `Event Gamification`{.interpreted-text role="guilabel"} feature lets
users share a quiz after any event track, in order for attendees to
gauge how much they learned from the track they just saw/heard.
Companies can also benefit from this feature, in that the subsequent
responses and results of the quizzes can help determine where a
company\'s strengths and weaknesses are, when it comes to their
presentations.

Next, is the `Online Exhibitors`{.interpreted-text role="guilabel"}
feature. This feature allows users to display sponsors and exhibitors on
event pages, which can serve as a valuable incentive to encourage
partners and businesses to participate in the event.

The `Jitsi Server Domain`{.interpreted-text role="guilabel"} field
represents an external conferencing service that is integrated with
Odoo. It is what is used to create and host virtual conferences,
community rooms, and other similar elements for events.

The `Community Chat Rooms`{.interpreted-text role="guilabel"} feature
allows users to create virtual conference rooms for event attendees,
providing them with a centralized place to meet and discuss anything
related to the event.

Lastly, there is the `Booth Management`{.interpreted-text
role="guilabel"} feature. This feature provides users with the ability
to create and manage event booths and booth reservations. When enabled,
users can create different booth tiers, with individual price points,
and sell them to interested parties.

### Registration section

The `Registration`{.interpreted-text role="guilabel"} section of the
`Settings`{.interpreted-text role="guilabel"} page provides selectable
settings that are directly related to event registration.

![The Registration section in the Odoo Events settings page in the Odoo Events application.](events/settings-registration-section.png){.align-center}

The `Tickets`{.interpreted-text role="guilabel"} setting allows users to
sell event tickets, via standard sales orders.

The `Online Ticketing`{.interpreted-text role="guilabel"} setting
creates a selectable *Event Ticket* product type on product forms, which
provides users with the ability to sell event tickets online, via their
website/eCommerce store.

### Attendance section

In the `Attendance`{.interpreted-text role="guilabel"} section of the
`Settings`{.interpreted-text role="guilabel"} page, there is a
selectable setting that is directly related to how attendees can
attend/enter the event.

![The Attendance section in the Odoo Events Settings page in the Odoo Events application.](events/settings-attendance-section.png){.align-center}

The `Use Event Barcode`{.interpreted-text role="guilabel"} setting, when
activated, enables barcode (and QR code) scanning for attendees to enter
the event. This provides attendees with quick access, and helps Odoo
users easily track, manage, and analyze all event attendees.

The `Barcode Nomenclature`{.interpreted-text role="guilabel"} field,
beneath the `Use Event Barcode`{.interpreted-text role="guilabel"}
setting, is set to `Default Nomenclature`{.interpreted-text
role="guilabel"}, by default, but can be changed at any time.

## Create events

With Odoo **Events**, events can be manually created from scratch or
built off of pre-made templates.

Once launched, the **Events** application then integrates with the
**Website** app for the front-end promotion and registration of the
event for attendees, the **Sales** app for the purchasing ability of
paid tickets, and the **CRM** application through customizable lead
generation rules.

::: seealso
`events/create_events`{.interpreted-text role="doc"}
:::

## Sell event tickets

Create custom ticket tiers (with various price points) for potential
event attendees to choose from, directly on the event template form,
under the *Tickets* tab.

Odoo simplifies the ticket-purchasing process by providing plenty of
payment method options, as well.

::: seealso
`events/sell_tickets`{.interpreted-text role="doc"}
:::

## Track and manage talks

Discover how to access various event tracks (talks, presentations,
etc.), view entire agendas, and learn how attendees can propose talks
for the event.

::: seealso
`events/track_manage_talks`{.interpreted-text role="doc"}
:::

## Event templates

Learn the process to customize and configure event templates, which can
be used to expedite the event-creation process.

::: seealso
`events/event_templates`{.interpreted-text role="doc"}
:::

## Event booths

Explore the various ways to create, manage, and sell event booths with
the Odoo **Events** application.

::: seealso
`events/event_booths`{.interpreted-text role="doc"}
:::

## Event tracks

Find out how to create, manage, and schedule different experiences (aka
*Tracks*) for events with Odoo.

::: seealso
`events/event_tracks`{.interpreted-text role="doc"}
:::

## Registration desk

Grant access to event attendees quickly and easily with the Odoo
**Events** *Registration Desk* feature.

::: seealso
`events/registration_desk`{.interpreted-text role="doc"}
:::

## Revenues report

Gain invaluable insight into event-related revenues with customizable
reports and metrics.

::: seealso
`events/revenues_report`{.interpreted-text role="doc"}
:::

::: toctree
events/create_events events/sell_tickets events/track_manage_talks
events/event_templates events/event_booths events/event_tracks
events/registration_desk events/revenues_report
:::




--- SOURCE: marketing/marketing_automation/campaign_templates/double_optin.md ---

# Double Opt-in

A *double opt-in*, also referred to as a *confirmed opt-in*, may be
required in some countries for marketing communications, due to
anti-SPAM laws. Confirming consent has several other benefits, as well:
it validates email addresses, avoids spam/robo subscribers, keeps
mailing lists clean, and only includes engaged contacts in the mailing
list.

When the *Double Opt-in* campaign template is used, a new mailing list
titled, *Confirmed contacts* is created in the *Email Marketing* app,
and any new mailing list contacts that are added to the default
*Newsletter* mailing list are sent a confirmation email to double
opt-in. The contacts that click on the confirmation link in the email
are automatically added to the *Confirmed contacts* mailing list in
Odoo.

:::: important
::: title
Important
:::

When using the *Double Opt-in* campaign template, only the contacts in
the *Confirmed contacts mailing* list are considered to have confirmed
their consent.
::::

## Use the Double Opt-in campaign template {#marketing_automation/template/using-double-optin}

Open the `Marketing Automation`{.interpreted-text role="menuselection"}
app, and select the `Double Opt-in`{.interpreted-text role="guilabel"}
campaign template to create a new campaign for confirming consent.

:::: tip
::: title
Tip
:::

The campaign templates do **not** display, by default, when there are
existing *Marketing Automation* campaigns. To display the campaign
templates, type the name of a campaign (that does not exist in the
database) into the `Search...`{.interpreted-text role="guilabel"} bar,
then press `Enter`{.interpreted-text role="kbd"}.

For example, searching for [empty]{.title-ref} displays the campaign
template cards again, as long as there is not a campaign with the name
\"empty\" in the database.
::::

### Campaign configuration

Upon creation of the campaign, the campaign form loads with a new
preconfigured campaign.

The `Target`{.interpreted-text role="guilabel"} and
`Filter`{.interpreted-text role="guilabel"} configurations of the
campaign are as follows:

- `Name`{.interpreted-text role="guilabel"}: [Double Opt-in]{.title-ref}
- `Responsible`{.interpreted-text role="guilabel"}\*: The user who
  created the campaign.
- `Target`{.interpreted-text role="guilabel"}:
  `Mailing Contact`{.interpreted-text role="guilabel"}
- `Unicity based on`{.interpreted-text role="guilabel"}:
  `Email (Mailing Contact)`{.interpreted-text role="guilabel"}
- `Filter`{.interpreted-text role="guilabel"}:
  - `Email`{.interpreted-text role="guilabel"}
    `is set`{.interpreted-text role="guilabel"}
  - `Blacklist`{.interpreted-text role="guilabel"}
    `is not`{.interpreted-text role="guilabel"} `set`{.interpreted-text
    role="guilabel"}
  - `Mailing lists`{.interpreted-text role="guilabel"}
    `contains`{.interpreted-text role="guilabel"}
    [Newsletter]{.title-ref}

\* The `Responsible`{.interpreted-text role="guilabel"} field is only
visible with `developer-mode`{.interpreted-text role="ref"} activated.

:::: important
::: title
Important
:::

The `Target`{.interpreted-text role="guilabel"} model of the campaign
should **not** be modified. Changing the `Target`{.interpreted-text
role="guilabel"} model with activities in the
`Workflow`{.interpreted-text role="guilabel"} invalidates the existing
activities in the `Workflow`{.interpreted-text role="guilabel"}.

The *Double Opt-in* campaign template is intended to **only** use the
`Mailing Contact`{.interpreted-text role="guilabel"} model.
::::

The campaign loads two activities in the `Workflow`{.interpreted-text
role="guilabel"} section of the campaign: an email activity, with a
child server action activity that triggers *on click*.

By default, the [Confirmation]{.title-ref} email activity is set to
trigger `1 Hours`{.interpreted-text role="guilabel"} after the beginning
of the workflow. In other words, the email is sent 1 hour after a new
contact is added to the *Newsletter* mailing list.

The email activity uses the preconfigured *Confirmation* email template,
which contains a button for the contact to click to confirm their
consent.

To modify the email template, select the
`fa-envelope-o`{.interpreted-text role="icon"}
`Templates`{.interpreted-text role="guilabel"} smart button at the top
of the campaign form. Then, in the list of templates, select the
[Confirmation]{.title-ref} email template.

Be sure to personalize the contents of the email template; however, it
is recommended to keep the contents of double opt-in confirmation emails
short and to-the-point.

The default confirmation button, in the body of the template, links
directly to the database\'s website homepage. Click on the button to
edit the button text and URL.

:::: tip
::: title
Tip
:::

To provide a streamlined experience for the contact, consider
`creating a page on the
website <../../../websites/website/structure/pages>`{.interpreted-text
role="doc"} that expresses gratitude to the contact for confirming their
subscription to the mailing list. Add the link to that page in the URL
of the confirmation button.
::::

:::: important
::: title
Important
:::

The email template should only include a single call-to-action link for
confirmation, other than an unsubscribe link.

Any click on a link (or button) included in the confirmation email,
besides the unsubscribe button, triggers the *Add to list* server
action.

The child activity *Add to list* server action\'s *On click* trigger
cannot differentiate between multiple URLs in an email, besides the
[/unsubscribe_from_list]{.title-ref} unsubscribe button that is included
in any one of the footer blocks.
::::

The [Add to list]{.title-ref} server action activity triggers
immediately after a click in the parent [Confirmation]{.title-ref} email
activity is detected.

When triggered, the [Add to list]{.title-ref} activity executes the *Add
To Confirmed List* server action, automatically adding the contact to
the *Confirmed contacts* mailing list, if they are not already in the
mailing list.

To modify the server action, select the title of the activity to open
the `Open:
Activities`{.interpreted-text role="guilabel"} pop-up window and edit
the server action activities configuration.

:::: tip
::: title
Tip
:::

Consider setting an `Expiry Duration`{.interpreted-text role="guilabel"}
to prevent executing the activity after a specific amount of time.
::::

:::: important
::: title
Important
:::

It is not recommended to modify the preconfigured Python code in the
`Add To Confirmed
List`{.interpreted-text role="guilabel"} server action, as doing so may
trigger a change in the database\'s pricing plan.
::::

Once the campaign configuration is complete, consider
`launching a test <../testing_running>`{.interpreted-text role="doc"} to
verify the campaign executes as expected. If the campaign testing is
successful, `Start`{.interpreted-text role="guilabel"} the campaign to
begin sending double opt-in confirmation emails to *Newsletter* mailing
list contacts, and fill the *Confirmed contacts* mailing list with
engaged contacts.

## Double Opt-in use-case {#marketing_automation/template/double-optin-usecase}

::: example
To prepare for sending newsletter marketing emails on an Odoo database,
a mailing contact list must be procured. One way of collecting
subscribers is through a sign-up form on the website that adds contacts
to the *Newsletter* mailing list on the form submission.

![Newsletter sign-up form on Odoo website footer.](double_optin/newsletter-signup.png){.align-center}

Before sending any marketing emails,
`use the Double Opt-in campaign template
<marketing_automation/template/using-double-optin>`{.interpreted-text
role="ref"} in the *Marketing Automation* app to confirm marketing email
consent from the contacts in the *Newsletter* mailing list.

After launching the *Double Opt-in* campaign, view the contacts that
have double opt-in in the *Confirmed contacts* mailing list
(`Email Marketing app --> Mailing Lists -->
Mailing Lists`{.interpreted-text role="menuselection"}).

![Activity metrics on the campaign form.](double_optin/double-optin-metrics.png){.align-center}

Now, the *Confirmed contacts* mailing list is ready to be used for
sending newsletter marketing emails from an Odoo database.
:::

::: seealso
\- `../understanding_metrics`{.interpreted-text role="doc"} -
`../../email_marketing/mailing_lists`{.interpreted-text role="doc"} -
`../../email_marketing`{.interpreted-text role="doc"}
:::




--- SOURCE: marketing/marketing_automation/campaign_templates.md ---

nosearch

:   

# Campaign templates

::: {.toctree titlesonly=""}
campaign_templates/double_optin
:::




--- SOURCE: marketing/marketing_automation/target_audience.md ---

# Audience targeting

The `Target`{.interpreted-text role="guilabel"} and
`Filter`{.interpreted-text role="guilabel"} fields on the campaign form,
also referred to as the *domain*, contain the parameters used to define
the target audience for the campaign\'s reach (i.e., the unique contact
records in the database, and imported list, etc.).

- `Target`{.interpreted-text role="guilabel"}: specifies the type of
  records available for use in the campaign, such as
  `Lead/Opportunity`{.interpreted-text role="guilabel"},
  `Event Registration`{.interpreted-text role="guilabel"},
  `Contact`{.interpreted-text role="guilabel"}, The assigned records
  model determines the fields that are available throughout the
  campaign, including the fields available in the
  `Filter`{.interpreted-text role="guilabel"} section, and in dynamic
  placeholders.
- `Save as Favorite Filter`{.interpreted-text role="guilabel"}: saves
  the current `Filter`{.interpreted-text role="guilabel"} for future use
  with the current `Target`{.interpreted-text role="guilabel"} model,
  and can be managed from the `Marketing Automation
  app --> Configuration --> Favorite Filters`{.interpreted-text
  role="menuselection"} menu.
- `Unicity based on`{.interpreted-text role="guilabel"}: specifies the
  `Target`{.interpreted-text role="guilabel"} model field where
  duplicates should be avoided. Traditionally, the
  `Email`{.interpreted-text role="guilabel"} field is used, but any
  available field can be used.
- `Filter`{.interpreted-text role="guilabel"}: contains an interactive
  form with configurable logic to further refine the targeting
  parameters under the chosen `Target`{.interpreted-text
  role="guilabel"} model. See more details in the
  `marketing_automation/defining-filters`{.interpreted-text role="ref"}
  section.
- `Include archived`{.interpreted-text role="guilabel"}: allows or
  disallows the inclusion of archived records in the target audience.

:::: tip
::: title
Tip
:::

A `Responsible`{.interpreted-text role="guilabel"} user can be assigned
to the campaign by activating `developer-mode`{.interpreted-text
role="ref"}.
::::

:::: note
::: title
Note
:::

Each activity in a campaign\'s workflow can target a subset of the
target audience; see the `workflow_activities`{.interpreted-text
role="doc"} documentation for more information.
::::

## Defining filters {#marketing_automation/defining-filters}

The default campaign `Filter`{.interpreted-text role="guilabel"}
configuration is set to `Match all records`{.interpreted-text
role="guilabel"}, indicating that the campaign is targeting **all**
records of the `Target`{.interpreted-text role="guilabel"} model.

To refine the `Filter`{.interpreted-text role="guilabel"} rules of a
campaign, click the `➕ Add condition`{.interpreted-text
role="guilabel"} button to reveal a new row with configurable rule
parameters. See the `Search, filter, and group
records <search/custom-filters>`{.interpreted-text role="ref"}
documentation for more information on how to create filter rules.

![A new filter rule row on the campaign form Filters.](target_audience/domain-filters.png){.align-center}

At the bottom of the filter rules is a `# record(s)`{.interpreted-text
role="guilabel"} button, which indicates the total number of records
targeted by this domain. Select the `# record(s)`{.interpreted-text
role="guilabel"} button to open a `Selected records`{.interpreted-text
role="guilabel"} pop-up window, in which the targeted records can be
viewed.

:::: tip
::: title
Tip
:::

Activate `developer-mode`{.interpreted-text role="ref"} to reveal each
field\'s technical name and data type, as well as the
`# Code editor`{.interpreted-text role="guilabel"} text area below the
filter rules, to view and edit the domain manually.
::::

::: example
To target all leads and opportunities from the *CRM* app that are in the
*New* stage, and have an expected revenue greater than \$1,000, the
following should be entered:

- `Target`{.interpreted-text role="guilabel"}:
  [Lead/Opportunity]{.title-ref}
- `Unicity based on`{.interpreted-text role="guilabel"}: [Email
  (Lead/Opportunity)]{.title-ref}
- `Filter`{.interpreted-text role="guilabel"}: `Match`{.interpreted-text
  role="guilabel"} `all 🔽 (down arrow)`{.interpreted-text
  role="guilabel"} `of the
  following rules:`{.interpreted-text role="guilabel"}
  1.  `Stage`{.interpreted-text role="guilabel"}
      `is in`{.interpreted-text role="guilabel"} `New`{.interpreted-text
      role="guilabel"}
  2.  `Expected Revenue`{.interpreted-text role="guilabel"}
      `>`{.interpreted-text role="guilabel"} [1,000]{.title-ref}
  3.  `any 🔽 (down arrow)`{.interpreted-text role="guilabel"}
      `of:`{.interpreted-text role="guilabel"}
      - `Type`{.interpreted-text role="guilabel"} `=`{.interpreted-text
        role="guilabel"} `Lead`{.interpreted-text role="guilabel"}
      - `Type`{.interpreted-text role="guilabel"} `=`{.interpreted-text
        role="guilabel"} `Opportunity`{.interpreted-text
        role="guilabel"}

With the above configuration, the campaign targets
`157 record(s)`{.interpreted-text role="guilabel"}.

![A domain configuration in a Marketing Automation campaign.](target_audience/filter-scenario-one.png){.align-center}
:::

::: seealso
\-
`Domain developer documentation <reference/orm/domains>`{.interpreted-text
role="ref"} - `workflow_activities`{.interpreted-text role="doc"} -
`testing_running`{.interpreted-text role="doc"} -
`understanding_metrics`{.interpreted-text role="doc"}
:::




--- SOURCE: marketing/marketing_automation/testing_running.md ---

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
the directions on `workflow_activities`{.interpreted-text role="doc"}
documentation).

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
\- `Campaign configuration <../marketing_automation>`{.interpreted-text
role="doc"} - `target_audience`{.interpreted-text role="doc"} -
`workflow_activities`{.interpreted-text role="doc"}
:::




--- SOURCE: marketing/marketing_automation/understanding_metrics.md ---

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

To the left of the activity block, the configured
`trigger time <workflow_activities>`{.interpreted-text role="doc"} is
displayed as a duration (either `Hours`{.interpreted-text
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
`workflow_activities`{.interpreted-text role="doc"}
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




--- SOURCE: marketing/marketing_automation/workflow_activities.md ---

# Campaign workflow activities

A *workflow* is the overall *activity* structure of a marketing
automation campaign. There can only be a single workflow in each
campaign. However, a workflow can be made up of any number of
`activities <marketing_automation/activities>`{.interpreted-text
role="ref"} to meet the needs of the campaign.

<figure class="align-center">
<img src="workflow_activities/workflow-activities.png"
alt="A workflow in an Odoo Marketing Automation campaign." />
<figcaption>Workflow sequence of three activities; the last child
activity has a <code class="interpreted-text" role="ref">trigger type
&lt;marketing_automation/trigger-type&gt;</code> of <strong>Mail: not
opened</strong>.</figcaption>
</figure>

## Activities {#marketing_automation/activities}

Activities are the methods of communication or server actions, organized
in a workflow, that are executed within a campaign; they are the
building blocks of the campaign\'s workflow.

A new activity can be added to the workflow on a campaign form by
selecting an existing campaign or
`creating a new campaign <marketing_automation/campaigns>`{.interpreted-text
role="ref"} from the `Marketing
Automation app --> Campaigns`{.interpreted-text role="menuselection"}
dashboard, then clicking the `Add new activity`{.interpreted-text
role="guilabel"} button in the `Workflow`{.interpreted-text
role="guilabel"} section. Doing so opens the
`Create Activities`{.interpreted-text role="guilabel"} pop-up window.

First, define the name of the activity in the
`Activity Name`{.interpreted-text role="guilabel"} field, and select the
`type of activity <marketing_automation/activity-types>`{.interpreted-text
role="ref"} to be executed from the `Activity Type`{.interpreted-text
role="guilabel"} field.

Then, configure the activity\'s
`Trigger <marketing_automation/trigger>`{.interpreted-text role="ref"},
and optionally, the
`Expiry Duration <marketing_automation/expiry-duration>`{.interpreted-text
role="ref"} and the `DOMAIN
<marketing_automation/activity-domain>`{.interpreted-text role="ref"} of
the activity.

Once the activity is fully configured, click
`Save & Close`{.interpreted-text role="guilabel"} to add it to the
campaign\'s workflow, or click `Save & New`{.interpreted-text
role="guilabel"} to add the activity to the workflow and open a new
`Create Activities`{.interpreted-text role="guilabel"} pop-up window to
add another activity. Clicking `Discard`{.interpreted-text
role="guilabel"} closes the pop-up window without saving the activity.

![The create activities pop-up window.](workflow_activities/create-activities.png){.align-center}

### Activity types {#marketing_automation/activity-types}

There are three different types of activities available in the
*Marketing Automation* app:

- `Email <marketing_automation/email-activity-type>`{.interpreted-text
  role="ref"}: an email that is sent to the target audience.
- `Server action <marketing_automation/sa-activity-type>`{.interpreted-text
  role="ref"}: an internal action within the database that is executed.
- `SMS <marketing_automation/sms-activity-type>`{.interpreted-text
  role="ref"}: a text message that is sent to the target audience.

#### Email {#marketing_automation/email-activity-type}

If `Email`{.interpreted-text role="guilabel"} is selected as the
`Activity Type`{.interpreted-text role="guilabel"}, the option to
`Pick a
Template`{.interpreted-text role="guilabel"} in the
`Mail Template`{.interpreted-text role="guilabel"} field is available.

To create a new template directly from the
`Mail Template`{.interpreted-text role="guilabel"} field, start typing
the title of the new template, then select
`Create and edit...`{.interpreted-text role="guilabel"} to reveal a
`Create
Marketing Template`{.interpreted-text role="guilabel"} pop-up window.
Proceed to create and configure the new email template.

![The create and edit email drop-down option on create activities pop-up window.](workflow_activities/email-activity-type.png){.align-center}

Once the email template is configured, click
`Save & Close`{.interpreted-text role="guilabel"} to save the activity,
and return to the `Create Activities`{.interpreted-text role="guilabel"}
pop-up window, in order to continue to configure the
`trigger <marketing_automation/trigger>`{.interpreted-text role="ref"}.

:::: note
::: title
Note
:::

The title used for the `Mail Template`{.interpreted-text
role="guilabel"} **must** be unique from any other mail template titles
in the campaign, and it also serves as the subject of the email.
::::

::: seealso
`Creating and configuring email templates <../email_marketing>`{.interpreted-text
role="doc"}
:::

#### Server action {#marketing_automation/sa-activity-type}

If `Server Action`{.interpreted-text role="guilabel"} is selected as the
`Activity Type`{.interpreted-text role="guilabel"}, the option to
`Pick a Server Action`{.interpreted-text role="guilabel"} in the
`Server Action`{.interpreted-text role="guilabel"} field is available.
This field is a drop-down menu containing all the pre-configured server
actions for the campaign\'s `Target`{.interpreted-text role="guilabel"}
model. Optionally, `create a new server action
<marketing_automation/create-sa>`{.interpreted-text role="ref"}.

![The Server Action drop-down menu on create activities pop-up window.](workflow_activities/sa-activity-type.png){.align-center}

After selecting a pre-configured server action, no other activity type
configuration is needed. Click `Save & Close`{.interpreted-text
role="guilabel"} to save the activity, and return to the
`Create Activities`{.interpreted-text role="guilabel"} pop-up window, in
order to configure the
`trigger <marketing_automation/trigger>`{.interpreted-text role="ref"}.

:::: tip
::: title
Tip
:::

To view all server actions in the database, activate
`developer-mode`{.interpreted-text role="ref"}, and navigate to
`Settings app --> Technical --> Actions --> Server Actions`{.interpreted-text
role="menuselection"} dashboard.
::::

##### Create a new server action {#marketing_automation/create-sa}

The option to create a new server action is also available. To do so,
type in the `Server
Action`{.interpreted-text role="guilabel"} field a title for the new
action, then click `Create and edit...`{.interpreted-text
role="guilabel"}. Doing so reveals a blank
`Create Server Action`{.interpreted-text role="guilabel"} pop-up window,
wherein a custom server action can be created and configured.

![The Create Server Action pop-up window.](workflow_activities/create-sa.png){.align-center}

On the `Create Server Action`{.interpreted-text role="guilabel"} pop-up
window, select the `Type`{.interpreted-text role="guilabel"} of server
action. The configuration fields change, depending on the selected
`Type`{.interpreted-text role="guilabel"}:

- `Update Record`{.interpreted-text role="guilabel"}: update the values
  of a record.
- `Create Activity`{.interpreted-text role="guilabel"}: create an
  activity with the *Discuss* app.
- `Send Email`{.interpreted-text role="guilabel"}: post a message, a
  note, or send an email with the *Discuss* app.
- `Send SMS`{.interpreted-text role="guilabel"}: send an SMS, and log
  them on documents, with the *SMS* app.
- `Add Followers`{.interpreted-text role="guilabel"} or
  `Remove Followers`{.interpreted-text role="guilabel"}: add or remove
  followers on a record with the *Discuss* app.
- `Create Record`{.interpreted-text role="guilabel"}: create a new
  record with new values.
- `Execute Code`{.interpreted-text role="guilabel"}: execute a block of
  Python code.
- `Send Webhook Notification`{.interpreted-text role="guilabel"}: send a
  POST request to an external system.
- `Execute Existing Actions`{.interpreted-text role="guilabel"}: define
  an action that triggers several other server actions.

Once the server action is configured, click
`Save & Close`{.interpreted-text role="guilabel"} to save the activity,
and return to the `Create Activities`{.interpreted-text role="guilabel"}
pop-up window, in order to configure the `trigger
<marketing_automation/trigger>`{.interpreted-text role="ref"}.

:::: tip
::: title
Tip
:::

Some of the server action types have advanced configurations available
when `developer-mode`{.interpreted-text role="ref"} is activated, such
as specifying the `Allowed Groups`{.interpreted-text role="guilabel"}
that can execute this server action.
::::

#### SMS {#marketing_automation/sms-activity-type}

If `SMS`{.interpreted-text role="guilabel"} is selected as the
`Activity Type`{.interpreted-text role="guilabel"}, the option to
`Pick a
Template`{.interpreted-text role="guilabel"} in the
`SMS Template`{.interpreted-text role="guilabel"} field is available.

To create a new template directly from the
`SMS Template`{.interpreted-text role="guilabel"} field, start typing
the title of the new template, and select
`Create and edit...`{.interpreted-text role="guilabel"} to reveal a
`Create Marketing
Template`{.interpreted-text role="guilabel"} pop-up window. Proceed to
create and configure the new SMS template.

![The create and edit email drop-down option on create activities pop-up window.](workflow_activities/sms-activity-type.png){.align-center}

Once the SMS template is configured, click
`Save & Close`{.interpreted-text role="guilabel"} to save the activity,
and return to the `Create Activities`{.interpreted-text role="guilabel"}
pop-up window, in order to configure the `trigger
<marketing_automation/trigger>`{.interpreted-text role="ref"}.

::: seealso
`Creating and configuring SMS templates <../sms_marketing>`{.interpreted-text
role="doc"}
:::

### Trigger {#marketing_automation/trigger}

Once an
`activity type <marketing_automation/activity-types>`{.interpreted-text
role="ref"} is configured, the next step in the
`Create Activities`{.interpreted-text role="guilabel"} pop-up window is
to define when the activity should be executed. This is done in the
`Trigger`{.interpreted-text role="guilabel"} field group.

![The trigger field group on Create Activities pop-up window.](workflow_activities/trigger.png){.align-center}

To set an execution delay for the activity from when the `trigger type
<marketing_automation/trigger-type>`{.interpreted-text role="ref"}
occurs, type a whole number in the *interval number* input (e.g.
[2]{.title-ref} is valid, [0]{.title-ref} is also valid, and
[1.5]{.title-ref} is not).

Next, select the unit of time for the interval number in the *interval
type* drop-down menu, the options are: `Hours`{.interpreted-text
role="guilabel"}, `Days`{.interpreted-text role="guilabel"},
`Weeks`{.interpreted-text role="guilabel"}, and
`Months`{.interpreted-text role="guilabel"}.

::: example
If the interval number is set to [0]{.title-ref} and the interval type
is set to `Hours`{.interpreted-text role="guilabel"}, the activity will
be executed immediately after the trigger type occurs (at the next
scheduled run of the
`Mail: Email Queue Manager cron <email-issues-outgoing-execution-time>`{.interpreted-text
role="ref"}).
:::

#### Trigger type {#marketing_automation/trigger-type}

To define the event occurrence that sets the activity into motion,
select a *trigger type* from the drop-down menu:

- `beginning of workflow`{.interpreted-text role="guilabel"}: the
  activity is executed when the campaign is started.

All other trigger types reveal a drop-down menu
`Activity`{.interpreted-text role="guilabel"} field containing all of
the other activities in the campaign. Selecting one of these types
converts this activity into a
`child activity <marketing_automation/child-activities>`{.interpreted-text
role="ref"} to be executed directly after the selected
`Activity`{.interpreted-text role="guilabel"}:

- `another activity`{.interpreted-text role="guilabel"}: to be executed
  after another activity in the campaign.
- `Mail: opened`{.interpreted-text role="guilabel"}: the activity\'s
  email was opened by the participant.
- `Mail: not opened`{.interpreted-text role="guilabel"}: the activity\'s
  email was **not** opened by the participant.
- `Mail: replied`{.interpreted-text role="guilabel"}: the activity\'s
  email was replied to by the participant.
- `Mail: not replied`{.interpreted-text role="guilabel"}: the
  activity\'s email was **not** replied to by the participant.
- `Mail: clicked`{.interpreted-text role="guilabel"}: a link in the
  activity\'s email was clicked by the participant.
- `Mail: not clicked`{.interpreted-text role="guilabel"}: a link in the
  activity\'s email was **not** clicked by the participant.
- `Mail: bounced`{.interpreted-text role="guilabel"}: the activity\'s
  email has bounced.
- `SMS: clicked`{.interpreted-text role="guilabel"}: a link in the
  activity\'s SMS was clicked by the participant.
- `SMS: not clicked`{.interpreted-text role="guilabel"}: a link in the
  activity\'s SMS was **not** clicked by the participant.
- `SMS: bounced`{.interpreted-text role="guilabel"}: the activity\'s SMS
  has bounced.

::: example
If the trigger type is set to `Mail: clicked`{.interpreted-text
role="guilabel"}, this activity is converted to a
`child activity <marketing_automation/child-activities>`{.interpreted-text
role="ref"} and will execute **after** a participant clicks on a link
from the parent activity defined in the `Activity`{.interpreted-text
role="guilabel"} field.
:::

### Expiry duration {#marketing_automation/expiry-duration}

Optionally, an `Expiry Duration`{.interpreted-text role="guilabel"} can
be defined in the `Create Activities`{.interpreted-text role="guilabel"}
pop-up window to cancel the execution of this activity after a specific
amount of time. Selecting this checkbox reveals the
`Cancel after`{.interpreted-text role="guilabel"} field with *interval*
and *interval type* inputs.

Type a whole number in the interval number input (e.g. [2]{.title-ref}
is valid, [0]{.title-ref} is also valid, and [1.5]{.title-ref} is not).
Then, select the unit of time for the interval number in the interval
type drop-down menu, the options are: `Hours`{.interpreted-text
role="guilabel"}, `Days`{.interpreted-text role="guilabel"},
`Weeks`{.interpreted-text role="guilabel"}, and
`Months`{.interpreted-text role="guilabel"}.

::: example
If the interval number is set to [2]{.title-ref} and the interval type
is set to `Days`{.interpreted-text role="guilabel"}, the activity will
be cancelled if it has not been executed within 2 days of the trigger
type.
:::

### Activity domain {#marketing_automation/activity-domain}

The `DOMAIN`{.interpreted-text role="guilabel"} section of the
`Create Activities`{.interpreted-text role="guilabel"} pop-up window
contains fields to further filter the target audience of the activity.

The `Activity Filter`{.interpreted-text role="guilabel"} field focuses
this activity, **and** its `child activities
<marketing_automation/child-activities>`{.interpreted-text role="ref"},
even further on a specific group of the campaign\'s filter. The process
is the same as
`defining filters <marketing_automation/defining-filters>`{.interpreted-text
role="ref"} for the campaign, and the fields that are available to
filter are also specific to the `Target`{.interpreted-text
role="guilabel"} of the campaign.

The `# record(s)`{.interpreted-text role="guilabel"} beside the
`Activity Filter`{.interpreted-text role="guilabel"} field indicates how
many records are currently being targeted by this
`Activity Filter`{.interpreted-text role="guilabel"}.

The `Applied Filter`{.interpreted-text role="guilabel"} displays the
combined filters from the `Activity Filter`{.interpreted-text
role="guilabel"} and the inherited campaign
`Filter <target_audience>`{.interpreted-text role="doc"}. This field is
read-only.

The `# record(s)`{.interpreted-text role="guilabel"} beside the
`Applied Filter`{.interpreted-text role="guilabel"} field indicates how
many records, in total, are currently being targeted by the activity.

## Child activities {#marketing_automation/child-activities}

Activities that are connected to, and triggered by, another activity are
known as, *child activities*.

The activity that triggers a child activity is known as its *parent
activity*.

A child activity can be added to a campaign\'s workflow by hovering over
the `➕ Add child
activity`{.interpreted-text role="guilabel"} button, located beneath the
desired parent activity.

The child activity\'s
`trigger types <marketing_automation/trigger-type>`{.interpreted-text
role="ref"} are specific to the parent
`activity type <marketing_automation/activity-types>`{.interpreted-text
role="ref"} (*Email*, *SMS*, or *Server Action*), and are as follows:

:::::: tabs
::: tab
Email

![The trigger types for child activities of an email activity.](workflow_activities/email-trigger-types.png){.align-center}

Each trigger the child activity on the following conditions of the
parent activity:

- `Add Another Activity`{.interpreted-text role="guilabel"}: to be
  executed after the parent activity.
- `Opened`{.interpreted-text role="guilabel"}: the email was opened by
  the participant.
- `Not Opened`{.interpreted-text role="guilabel"}: the email was **not**
  opened by the participant.
- `Replied`{.interpreted-text role="guilabel"}: the email was replied to
  by the participant.
- `Not Replied`{.interpreted-text role="guilabel"}: the email was
  **not** replied to by the participant.
- `Clicked`{.interpreted-text role="guilabel"}: a link in the email was
  clicked by the participant.
- `Not Clicked`{.interpreted-text role="guilabel"}: a link in the email
  was **not** clicked by the participant.
- `Bounced`{.interpreted-text role="guilabel"}: the email has bounced.
:::

::: tab
Server Action

![The trigger types for child activities of a server action activity.](workflow_activities/sa-trigger-types.png){.align-center}

Triggers the child activity on the following condition of the parent
activity:

- `Add Another Activity`{.interpreted-text role="guilabel"}: to be
  executed after the parent activity.
:::

::: tab
SMS

![The trigger types for child activities of an SMS activity.](workflow_activities/sms-trigger-types.png){.align-center}

Each trigger the child activity on the following conditions of the
parent activity:

- `Add Another Activity`{.interpreted-text role="guilabel"}: to be
  executed after the parent activity.
- `Clicked`{.interpreted-text role="guilabel"}: a link in the SMS was
  clicked by the participant.
- `Not Clicked`{.interpreted-text role="guilabel"}: a link in the SMS
  was **not** clicked by the participant.
- `Bounced`{.interpreted-text role="guilabel"}: the SMS has bounced.
:::
::::::

Once a trigger type is selected, the
`Create Activities`{.interpreted-text role="guilabel"} pop-up window
opens to configure the child activity. The process is the same as
`creating a new activity
<marketing_automation/activities>`{.interpreted-text role="ref"}, with
the exception that the `Trigger`{.interpreted-text role="guilabel"}
field is pre-filled with the selected trigger type, and the
`Activity`{.interpreted-text role="guilabel"} field has the parent
activity selected.

::: seealso
\- `testing_running`{.interpreted-text role="doc"} -
`understanding_metrics`{.interpreted-text role="doc"} -
`target_audience`{.interpreted-text role="doc"}
:::




--- SOURCE: marketing/marketing_automation.md ---

show-content

:   

# Marketing Automation

Use the Odoo **Marketing Automation** application to create dynamic
campaigns with actions that automatically occur within a defined
duration, such as sending a series of timed mass emails or engaging with
leads based on their interactions with marketing campaigns.

While the application is designed to be user-friendly for creating,
launching, and reviewing marketing campaigns, it also provides advanced
features to automate repetitive tasks throughout the database.

Get started by creating a
`new campaign from scratch <marketing_automation/campaigns>`{.interpreted-text
role="ref"} or start with a
`campaign template <marketing_automation/campaign-templates>`{.interpreted-text
role="ref"}.

::: seealso
\- [Odoo Tutorials:
Marketing](https://www.odoo.com/slides/marketing-27) - [Magic Sheet -
Marketing Automation
\[PDF\]](https://drive.google.com/drive/folders/1MMMGcYIG1tm160jC2JaXVc_D5b6x3cJd)
:::

::::::: cards
::: {.card target="marketing_automation/target_audience"}
Audience targeting

Configure the target audience for a campaign.
:::

::: {.card target="marketing_automation/workflow_activities"}
Workflow activities

Define the activities that occur within a campaign.
:::

::: {.card target="marketing_automation/testing_running"}
Testing/running campaigns

Launch a test or run a campaign.
:::

::: {.card target="marketing_automation/understanding_metrics"}
Campaign metrics

Review the metrics of a campaign.
:::
:::::::

## Configuration

To begin, make sure the **Marketing Automation** application is
`installed <general/install>`{.interpreted-text role="ref"}.

:::: important
::: title
Important
:::

Installing the **Marketing Automation** application also installs the
`Email Marketing
<email_marketing>`{.interpreted-text role="doc"} app, as most features
of Odoo **Marketing Automation** are dependent on that specific
application.

Additionally, install the `CRM <../sales/crm>`{.interpreted-text
role="doc"} and `SMS Marketing <sms_marketing>`{.interpreted-text
role="doc"} applications to access *all* of the features available in
**Marketing Automation**.

The following documentation assumes that all three of these dependent
applications are installed on the database.
::::

## Campaigns {#marketing_automation/campaigns}

A *campaign* refers to a workflow of activities that are automatically
executed to a target audience, based on predefined filters, triggers,
and durations of activities.

A new campaign can be created from scratch or from a `template
<marketing_automation/campaign-templates>`{.interpreted-text
role="ref"}.

To create a campaign, navigate to the
`Marketing Automation`{.interpreted-text role="menuselection"}
application and click the `New`{.interpreted-text role="guilabel"}
button to reveal a new campaign form.

### Campaign templates {#marketing_automation/campaign-templates}

Odoo provides six campaign templates to help users get started. The
campaign template cards **only** display when there are no existing
campaigns in the database. Once a campaign has been created, the
template cards on the *Campaigns* dashboard are replaced with a Kanban
view of the existing campaigns.

To get started with a template, navigate to the
`Marketing Automation`{.interpreted-text role="menuselection"}
application, from the main Odoo dashboard, to open the
`Campaigns`{.interpreted-text role="guilabel"} dashboard, which displays
six
`campaign template <marketing_automation/campaign_templates>`{.interpreted-text
role="doc"} cards:

- | `fa-tag`{.interpreted-text role="icon"}
    `Tag Hot Contacts`{.interpreted-text role="guilabel"}
  | `Send a welcome email to contacts and tag them if they click it.`{.interpreted-text
    role="guilabel"}

- | `fa-hand-peace-o`{.interpreted-text role="icon"}
    `Welcome Flow`{.interpreted-text role="guilabel"}
  | `Send a welcome email to new subscribers, remove the address that bounced.`{.interpreted-text
    role="guilabel"}

- | `fa-check-square`{.interpreted-text role="icon"}
    `Double Opt-in  <marketing_automation/campaign_templates/double_optin>`{.interpreted-text
    role="doc"}
  | `Send an email to new recipients to confirm their consent.`{.interpreted-text
    role="guilabel"}

- | `fa-search`{.interpreted-text role="icon"}
    `Commercial prospection`{.interpreted-text role="guilabel"}
  | `Send a free catalog and follow-up according to reactions.`{.interpreted-text
    role="guilabel"}

- | `fa-phone`{.interpreted-text role="icon"}
    `Schedule Calls`{.interpreted-text role="guilabel"}
  | `If a lead is created for existing contact, schedule a call with their salesperson.`{.interpreted-text
    role="guilabel"}

- | `fa-star`{.interpreted-text role="icon"}
    `Prioritize Hot leads`{.interpreted-text role="guilabel"}
  | `Send an email to new leads and assign them a high priority if they open it.`{.interpreted-text
    role="guilabel"}

![Six campaign template cards on the Campaigns dashboard of the Marketing Automation app.](marketing_automation/campaigns-dashboard.png)

These templates are designed to be used as starting points for creating
new campaigns. Click one of the template cards to open the campaign
form.

:::: tip
::: title
Tip
:::

To display the campaign template cards again after a campaign has been
created, type the name of a campaign that does **not** exist in the
database into the search bar, then press `Enter`{.interpreted-text
role="kbd"}.

For example, searching for [empty]{.title-ref} displays the campaign
template cards again, as long as there is not a campaign with the name
\"empty\" in the database.
::::

## Targets and filters

On the campaign form, the `Target`{.interpreted-text role="guilabel"}
and `Filter`{.interpreted-text role="guilabel"} section, also referred
to as the domain, contains the fields used to define the target audience
for the campaign\'s reach (i.e., the unique contact records in the
database).

The target audience specifies the type of records available for use in
the campaign, such as *Lead/Opportunity*, *Event Registration*,
*Contact*, and more.

### Records

The contacts in the system that fit the specified criteria for a
campaign are referred to as *records*.

The number of records that are displayed next to the campaign
`Filter`{.interpreted-text role="guilabel"} represent the total number
of records the campaign is targeting.

### Participants

The records that are engaged by the campaign are referred to as
*participants*.

The number of participants engaged in a test run are shown in the
*Tests* smart button, which displays on the top of the campaign form
after a test has been run.

The number of participants engaged in a running, or stopped, campaign
are shown in the *Participants* smart button at the top of the campaign
form.

::: seealso
`Audience targeting <marketing_automation/target_audience>`{.interpreted-text
role="doc"}
:::

## Workflow

A *workflow* consists of an activity, many activities, or a sequence of
activities organized in a campaign. A campaign\'s workflow is defined in
the `Workflow`{.interpreted-text role="guilabel"} section of the
campaign form.

### Activities

*Activities* are the methods of communication or server actions,
organized in a workflow, that are executed within a campaign. Once
running, each activity displays the number of participants that are
engaged by the activity as *Success* and *Rejected* counts.

To create one of the following activities, click
`Add new activity`{.interpreted-text role="guilabel"} in the
`Workflow`{.interpreted-text role="guilabel"} section of the campaign
form:

- `Email <marketing_automation/email-activity-type>`{.interpreted-text
  role="ref"}: an email that is sent to the target audience.
- `Server action <marketing_automation/sa-activity-type>`{.interpreted-text
  role="ref"}: an internal action within the database that is executed.
- `SMS <marketing_automation/sms-activity-type>`{.interpreted-text
  role="ref"}: a text message that is sent to the target audience.

::: seealso
`marketing_automation/workflow_activities`{.interpreted-text role="doc"}
:::

## Testing and running

Once a campaign has been created, it can be tested to ensure the
workflow is functioning as expected, to check for errors, and correct
any mistakes before it reaches its target audience.

After testing, the campaign can be launched to start engaging the target
audience. The campaign can also be launched *without* testing, if the
user is confident in the workflow.

::: seealso
`marketing_automation/testing_running`{.interpreted-text role="doc"}
:::

## Reporting

A range of reporting metrics are available to measure the success of
each campaign. Navigate to
`Marketing Automation app --> Reporting`{.interpreted-text
role="menuselection"} to access the following menu options:

- `Link Tracker`{.interpreted-text role="guilabel"}: displays the
  metrics of links to track the number of clicks.
- `Traces`{.interpreted-text role="guilabel"}: displays the results of
  all activities from all campaigns.
- `Participants`{.interpreted-text role="guilabel"}: displays an
  overview of the participants of all campaigns.

Additionally, each activity within the workflow of a campaign displays
its engagement metrics.

::: seealso
`marketing_automation/understanding_metrics`{.interpreted-text
role="doc"}
:::

::: {.toctree titlesonly=""}
marketing_automation/target_audience
marketing_automation/workflow_activities
marketing_automation/testing_running
marketing_automation/understanding_metrics
marketing_automation/campaign_templates
:::




--- SOURCE: marketing/sms_marketing/create_sms.md ---

# Create SMS messages

To start, click `Create`{.interpreted-text role="guilabel"} on the main
`SMS Marketing`{.interpreted-text role="guilabel"} dashboard, and Odoo
reveals a blank SMS template form, which can be configured in a number
of different ways.

![Creating an SMS marketing template.](create_sms/sms-create.png){.align-center}

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

![View of the mailing list page in the SMS marketing application.](create_sms/sms-mailing-list.png){.align-center}

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

![Contact recipients on SMS marketing.](create_sms/contact-recipient.png){.align-center}
:::

## Writing SMS messages

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

![SMS price check icon.](create_sms/sms-price-check.png){.align-center}

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

## Track links used in SMS messages

When links are used in `SMS (Short Message Service)`{.interpreted-text
role="abbr"} messages, Odoo automatically generates link trackers to
gather analytical data and metrics related to those specific links,
which can be found by going to
`Configuration --> Link Tracker`{.interpreted-text
role="menuselection"}.

![SMS Link Tracker page.](create_sms/sms-link-tracker.png){.align-center}

### Adjust SMS settings

Under the `Settings`{.interpreted-text role="guilabel"} tab of the SMS
template, there is an option to `Include
opt-out link`{.interpreted-text role="guilabel"}. If activated, the
recipient is able to unsubscribe from the mailing list, thus avoiding
all future mailings.

An employee can be designated as the `Responsible`{.interpreted-text
role="guilabel"} in the `Tracking`{.interpreted-text role="guilabel"}
section of the `Settings`{.interpreted-text role="guilabel"} tab, as
well.

![SMS Settings tab.](create_sms/sms-settings-tab.png){.align-center}

### Send SMS messages

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




--- SOURCE: marketing/sms_marketing/mailing_lists_blacklists.md ---

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




--- SOURCE: marketing/sms_marketing/marketing_campaigns.md ---

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

![View of the mailing campaigns setting in Odoo.](marketing_campaigns/sms-mailing-campaigns.png){.align-center}

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

![The A/B Test tab is located on an Odoo SMS Marketing app campaign form.](marketing_campaigns/ab-tests-sms.png){.align-center}

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

![Dasbhoard view of different Campaigns in the Odoo SMS Marketing app, separated by stage.](marketing_campaigns/campaigns-page.png){.align-center}

## Campaign templates

Click `Create`{.interpreted-text role="guilabel"} to create a new
campaign, and Odoo reveals a blank campaign template form to fill out.
Alternatively, select any previously-made campaign in order to
duplicate, review, or edit its campaign template form.

![View of an SMS campaign template in Odoo SMS marketing.](marketing_campaigns/sms-campaign-template.png){.align-center}

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

![The SMS icon is located on an individual\'s contact form in Odoo Contacts.](marketing_campaigns/sms-contact-form.png){.align-center}

To send a message to multiple contacts at once, navigate to the main
`Contacts`{.interpreted-text role="menuselection"} app main dashboard,
choose the `List View`{.interpreted-text role="guilabel"}, and select
all the desired contacts to whom the message should be sent. Then, under
`Action`{.interpreted-text role="guilabel"}, select
`Send SMS`{.interpreted-text role="guilabel"}.

![Select a number of contacts, click action, and select send multiple SMSs.](marketing_campaigns/sms-contacts-action-send-message.png){.align-center}

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

![Select the SMS Template option in the Technical dropdown on the Settings app.](marketing_campaigns/sms-template-setting.png){.align-center}

Inside of the `SMS Templates`{.interpreted-text role="guilabel"}
dashboard, Odoo reveals an entire page of `SMS (Short
Message Service)`{.interpreted-text role="abbr"} templates. The default
`List`{.interpreted-text role="guilabel"} view showcases each
template\'s name, and to which recipients it applies.

On this page, `SMS (Short Message Service)`{.interpreted-text
role="abbr"} templates can be edited or created from scratch.

![The SMS Templates page in Odoo is available after enabling developer mode in the General
Settings](marketing_campaigns/sms-template.png){.align-center}




--- SOURCE: marketing/sms_marketing/pricing_and_faq.md ---

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




--- SOURCE: marketing/sms_marketing/sms_analysis.md ---

# SMS analysis

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

![Reporting page in SMS Marketing.](sms_analysis/sms-reporting-page.png){.align-center}

:::: tip
::: title
Tip
:::

SMS messages can be sent using automation rules in Odoo. Odoo *Studio*
is required to use automation rules.

To install Odoo *Studio*, go to the `Apps application`{.interpreted-text
role="menuselection"}. Then, using the `Search...`{.interpreted-text
role="guilabel"} bar, search for [studio]{.title-ref}.

If it is not already installed, click `Install`{.interpreted-text
role="guilabel"}.

Adding the *Studio* application upgrades the subscription status to
*Custom*, which increases the cost. Consult
[support](https://www.odoo.com/contactus), or reach out to the
database\'s customer success manager, with any questions on making the
change.

To use automation rules, navigate in
`developer mode <developer-mode>`{.interpreted-text role="ref"}, to
`Settings app --> Technical menu --> Automation section --> Automation Rules`{.interpreted-text
role="menuselection"}. Then, click `New`{.interpreted-text
role="guilabel"} to create a new rule.

Enter a name for the automation rule, and select a
`Model`{.interpreted-text role="guilabel"} to implement this rule on.

Based on the selection for the `Trigger`{.interpreted-text
role="guilabel"}, additional fields will populate below. Set the
`Trigger`{.interpreted-text role="guilabel"} to one of the following
options:

`Values Updated`{.interpreted-text role="guilabel"}

- `User is set`{.interpreted-text role="guilabel"}
- `State is set to`{.interpreted-text role="guilabel"}
- `On archived`{.interpreted-text role="guilabel"}
- `On unarchived`{.interpreted-text role="guilabel"}

`Timing Conditions`{.interpreted-text role="guilabel"}

- `Based on date field`{.interpreted-text role="guilabel"}
- `After creation`{.interpreted-text role="guilabel"}
- `After last update`{.interpreted-text role="guilabel"}

`Custom`{.interpreted-text role="guilabel"}

- `On save`{.interpreted-text role="guilabel"}
- `On deletion`{.interpreted-text role="guilabel"}
- `On UI change`{.interpreted-text role="guilabel"}

`External`{.interpreted-text role="guilabel"}

- `On webhook`{.interpreted-text role="guilabel"}

Other options may appear based on the `Model`{.interpreted-text
role="guilabel"} selected. For example if the
`Calendar Event`{.interpreted-text role="guilabel"} model is selected,
then the following options appear in addition to those above:

`Email Events`{.interpreted-text role="guilabel"}

- `On incoming message`{.interpreted-text role="guilabel"}
- `On outgoing message`{.interpreted-text role="guilabel"}

Under the `Before Update Domain`{.interpreted-text role="guilabel"}
field, set a condition to be met before updating the record. Click
`Edit Domain`{.interpreted-text role="guilabel"} to set record
parameters.

Under the `Actions To Do`{.interpreted-text role="guilabel"} tab, select
`Add an action`{.interpreted-text role="guilabel"}. Next, in the
resulting `Create Actions`{.interpreted-text role="guilabel"} pop-up
window, select `Send SMS`{.interpreted-text role="guilabel"}, and set
the `Allowed Groups`{.interpreted-text role="guilabel"}.
`Allowed Groups`{.interpreted-text role="guilabel"} are the access
rights groups that are allowed to execute this rule. Leave the field
empty to allow all groups. See this documentation:
`access-rights/groups`{.interpreted-text role="ref"}.

Next, set the `SMS Template`{.interpreted-text role="guilabel"} and
choose whether the SMS message should be logged as a note, by making a
selection in the drop-down menu: `Send SMS as`{.interpreted-text
role="guilabel"}. Click `Save and Close`{.interpreted-text
role="guilabel"} to save the changes to this new action.

![Automation rule template with rule to do, SMS template and log as note highlighted.](sms_analysis/automation-rule-sms.png){.align-center}

Add any necessary notes under the `Notes`{.interpreted-text
role="guilabel"} tab. Finally, navigate away from the completed
automation rule, or manually save (by clicking the
`☁️ (cloud)`{.interpreted-text role="guilabel"} icon), to implement the
change.
::::




--- SOURCE: marketing/sms_marketing/twilio.md ---

# SMS via Twilio

## What is Twilio

Twilio is a third-party provider that enables you to send SMS messages
to your clients. Odoo provides an easy way to use this service within
your Odoo apps.

### Why would I need it?

Although Odoo already comes with an out-of-the-box (IAP) solution for
SMS messages, it might not work in some countries with stricter legal
requirements. Currently, Odoo registers itself when possible to avoid
extra setup for its customers, however in some countries that is not
enough and the client itself must do it. This can be done through
Twilio.

## Setup your Twilio account

By creating a Twilio account, you will be able to create a virtual phone
number from which you will be able to send SMS messages. These cost
credits that are to be bought on Twilio, not Odoo.

1.  Go to [Twilio](https://www.twilio.com)
2.  Sign up and create a Twilio account
3.  Within your Twilio account, you can create multiple accounts (e.g.
    one for testing, one for each sub-company, etc.)
4.  Create a new account
    1.  Enter the name, and select `Twilio`{.interpreted-text
        role="guilabel"} for the type
    2.  Select your `Billing Country`{.interpreted-text role="guilabel"}
        and click `Create new account`{.interpreted-text
        role="guilabel"}
    3.  Select the different options that match your needs
        - For the `Twilio product`{.interpreted-text role="guilabel"},
          select `SMS`{.interpreted-text role="guilabel"}
        - For `How to build with Twilio`{.interpreted-text
          role="guilabel"}, select
          `With no code at all`{.interpreted-text role="guilabel"}
        - For your `goal`{.interpreted-text role="guilabel"}, select
          `3rd party integrations`{.interpreted-text role="guilabel"}
    4.  Click on `Get Started with Twilio`{.interpreted-text
        role="guilabel"}
5.  You account is now created, and you should arrive on your
    `Dashboard`{.interpreted-text role="guilabel"}
6.  Go to `Phone Numbers --> Manage --> Buy a number`{.interpreted-text
    role="menuselection"}
7.  Buy a number (it is a paying service, but you should have received
    some credits to start with)
8.  Go back to bottom of the `Dashboard`{.interpreted-text
    role="guilabel"} page
9.  Copy the `Account SID`{.interpreted-text role="guilabel"} and
    `Auth Token`{.interpreted-text role="guilabel"}

:::: important
::: title
Important
:::

In case of a testing account, you will only be able to send SMS to
phones that you have verified within [Twilio\'s
console](https://console.twilio.com).
::::

:::: note
::: title
Note
:::

Sending SMS to some countries (such as the US or Canada) might require a
registration. This can only be done by you, and not by Odoo. Please
check out [Twilio\'s Help Center](https://help.twilio.com).
::::

## Setup Odoo to use Twilio

1.  `Install <general/install>`{.interpreted-text role="ref"} the
    `Twilio SMS`{.interpreted-text role="guilabel"} module
    ([sms_twilio]{.title-ref})
2.  In Odoo, go to
    `Settings --> General Settings --> Contacts --> Send SMS`{.interpreted-text
    role="menuselection"}, select `Send via Twilio`{.interpreted-text
    role="guilabel"} option, and save your change.
3.  Go back to that option, and click
    `Configure Twilio Account`{.interpreted-text role="guilabel"}
4.  Paste the copied credentials accordingly
5.  Click on `Reload numbers`{.interpreted-text role="guilabel"}
6.  Your newly bought phone number should appear in the list
7.  You can use the `Test Number`{.interpreted-text role="guilabel"}
    field to send an SMS

You can have multiple numbers (for instance once per country, or one per
campaign), in that case, you can reorder the numbers. By default, when
sending an SMS to a client, Odoo will select the number whose country is
the same as the client. If none matches, Odoo will use the first number
available from the list respecting the order you have chosen.




--- SOURCE: marketing/sms_marketing.md ---

show-content

:   

# SMS Marketing

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

::: seealso
[Odoo Tutorials: Marketing](https://www.odoo.com/slides/marketing-27)
:::

::::::::: cards
::: {.card target="sms_marketing/create_sms"}
Create SMS messages

Explore how to create, configure, send, and schedule SMS messages.
:::

::: {.card target="sms_marketing/sms_analysis"}
SMS analysis

Examine detailed reporting metrics related to every aspect of sent SMS
messages.
:::

::: {.card target="sms_marketing/marketing_campaigns"}
SMS marketing campaigns

Discover how to create and customize SMS marketing campaigns for any
occasion with Odoo.
:::

::: {.card target="sms_marketing/mailing_lists_blacklists"}
Mailing lists and blacklists

Set up custom mailing lists and blacklists to ensure all SMS messages
reach the right recipients.
:::

::: {.card target="sms_marketing/pricing_and_faq"}
Pricing and FAQ

Find out more about Odoo\'s SMS pricing, and check out some of the most
frequently asked questions.
:::

::: {.card target="sms_marketing/twilio"}
Twilio

In some countries with stricter regulations, the out-of-the-box solution
proposed by Odoo may not work. In this case, you can use our Twilio
integration to send SMS worldwide.
:::
:::::::::

## SMS marketing dashboard

When the application is opened, Odoo displays the main
`SMS Marketing`{.interpreted-text role="guilabel"} dashboard, which
showcases the various SMS mailings that have been created, along with
pertinent information and data related to that specific message.

The `oi-view-kanban`{.interpreted-text role="icon"}
`Kanban`{.interpreted-text role="guilabel"} view is the default Odoo
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

The `oi-view-list`{.interpreted-text role="icon"}
`List`{.interpreted-text role="guilabel"} view provides the same useful
data related to SMS mailings, but in a more traditional list layout.

The `fa-calendar`{.interpreted-text role="icon"}
`Calendar`{.interpreted-text role="guilabel"} view shows when SMS
mailings are scheduled or have been sent. Clicking a future date opens a
blank SMS template to be scheduled for that date.

Lastly, the `fa-area-chart`{.interpreted-text role="icon"}
`Graph`{.interpreted-text role="guilabel"} view visualizes that same
SMS-related data in series of graphs and charts. Odoo also provides
various ways to sort and group the data for more detailed analysis.

::: {.toctree titlesonly=""}
sms_marketing/create_sms sms_marketing/sms_analysis
sms_marketing/marketing_campaigns sms_marketing/mailing_lists_blacklists
sms_marketing/pricing_and_faq sms_marketing/twilio
:::




--- SOURCE: marketing/social_marketing/social_campaigns.md ---

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




--- SOURCE: marketing/social_marketing/social_posts.md ---

# Social posts

The Odoo *Social Marketing* application provides various ways to create
posts for any type of social media outlet.

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

![Kanban view of the posts page in the Odoo Social Marketing application.](social_posts/posts-page-kanban.png){.align-center}
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

![Example of the calendar view in Odoo Social Marketing.](social_posts/calendar-view.png){.align-center}
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

![View of the list option on the posts page in Odoo Social Marketing.](social_posts/list-view.png){.align-center}
:::

::: tab
Pivot view

The pivot view option provides a fully customizable grid table, where
different measures of data can be added and analyzed.

![View of the pivot option on the posts page in Odoo Social Marketing.](social_posts/pivot-view.png){.align-center}

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

### Posts

Clicking on a post from a social media stream reveals a pop-up window,
showcasing the content of that specific post, along with all the
engagement data related to it (e.g. likes, comments, etc.).

![Sample of a social media post\'s pop-up window in Odoo Social Marketing application.](social_posts/social-post-popup.png){.align-center}

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

![The drop-down menu beside a comment revealing the option to create a lead.](social_posts/create-lead-drop-down.png){.align-center}

Upon clicking `Create Lead`{.interpreted-text role="guilabel"} from the
comment\'s drop-down menu, a `Conver Post to
Lead`{.interpreted-text role="guilabel"} pop-up window appears.

![The convert post to lead pop-up window that appears in Odoo Social Marketing.](social_posts/convert-post-to-lead-popup.png){.align-center}

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

![New lead detail form generated from a social media comment in Odoo Social Marketing.](social_posts/new-lead-detail-form-comments.png){.align-center}

### Insights

When a social media account stream is added to the *Social Marketing*
dashboard, each stream also displays and links that specific social
media platform\'s KPIs (if the platform has them).

To get redirected to the statistics and metrics related to any social
media account\'s KPIs, click on the `Insights`{.interpreted-text
role="guilabel"} link, located at the top of each stream.

![Visual of how the Insights link appears on the dashboard of the Social Marketing app.](social_posts/social-marketing-insights-link.png){.align-center}

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

![New Post button on the main dashboard of the Odoo Social Marketing application.](social_posts/new-post-button-social-marketing-dashboard.png){.align-center}

Or, navigate to `Social Marketing app --> Posts`{.interpreted-text
role="menuselection"} and click the `New`{.interpreted-text
role="guilabel"} button.

![New button on the Social Posts page in the Odoo Social Marketing application.](social_posts/new-button-social-posts-page.png){.align-center}

Either route reveals a blank social media post detail form that can be
customized and configured in a number of different ways.

![Blank social media post detail page in Odoo Social Marketing.](social_posts/blank-post-detail-page.png){.align-center}

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

![Sample social media post with visual samples of how it will appear on social media outlets.](social_posts/visual-samples-social-media-outlets-preview.png){.align-center}

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

![Visualized samples of post with newly-attached images in Odoo Social Marketing.](social_posts/attach-images-visual-social-post-sample.png){.align-center}

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

![Drop-down menu options of Create or Create and edit in the Campaign field.](social_posts/campaign-drop-down-menu-options.png){.align-center}

Clicking `Create`{.interpreted-text role="guilabel"} creates the
campaign, which can be edited/customized later.

Clicking `Create and edit...`{.interpreted-text role="guilabel"} creates
the campaign, and reveals a `Create
Campaign`{.interpreted-text role="guilabel"} pop-up form, wherein the
`Campaign Identifier`{.interpreted-text role="guilabel"},
`Responsible`{.interpreted-text role="guilabel"}, and
`Tags`{.interpreted-text role="guilabel"} can be instantly configured.

![Create campaign pop-up window that appears on a social media post detail form.](social_posts/create-campaign-popup.png){.align-center}

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

![Schedule date pop-up window that appears on social media post detail form in Odoo.](social_posts/schedule-post-calendar-popup.png){.align-center}

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

![Push notification options section on a social media post detail form.](social_posts/push-notification-options-section.png){.align-center}

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

![The Local Time option in the Push Notification Options section of features.](social_posts/push-notification-local-time.png){.align-center}
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

![Push notification conditions set up to match a specific amount of records in the database.](social_posts/push-notification-condition.png){.align-center}

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

::: seealso
`social_campaigns`{.interpreted-text role="doc"}
:::




--- SOURCE: marketing/social_marketing.md ---

show-content

:   

# Social Marketing

Odoo\'s *Social Marketing* application helps content marketers create
and schedule posts, manage various social media accounts, analyze
content effectiveness, and engage directly with social media followers
in one, centralized location.

::: seealso
\- [Odoo Tutorials: Marketing](https://www.odoo.com/slides/marketing-27)
:::

::::: cards
::: {.card target="social_marketing/social_posts"}
Social posts

Discover everything there is to know about how to create and customize
social media posts using Odoo.
:::

::: {.card target="social_marketing/social_campaigns"}
Social campaigns

Learn about all the different campaign and marketing tools this
application has to offer.
:::
:::::

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

![View of the permission error that appears when incorrectly attempting to add stream.](social_marketing/permission-error.png){.align-center}
::::

## Social media streams

To add a social media business account as a stream, navigate to
`Social Marketing
app`{.interpreted-text role="menuselection"} and select the
`Add A Stream`{.interpreted-text role="guilabel"} button located in the
upper-left corner. Doing so reveals an `Add a Stream`{.interpreted-text
role="guilabel"} pop-up window.

![View of the pop-up window that appears when Add a Stream is selected in Odoo.](social_marketing/add-stream-social-popup.png){.align-center}

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

![Sample of a populated social marketing dashboard with social media streams and content.](social_marketing/social-marketing-dashboard.png){.align-center}

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

![View of the social media page in the Odoo Social Marketing application.](social_marketing/social-media-page.png){.align-center}

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

![View of the social accounts page in the Odoo Social Marketing application.](social_marketing/social-accounts-page.png){.align-center}

To edit/modify any of the social accounts on this page, simply select
the desired account from the list on this page, and proceed to make any
adjustments necessary.

## Social streams page

To view a separate page with all the social media streams that have been
added to the main *Social Marketing* dashboard, navigate to
`Social Marketing app --> Configuration --> Social
Streams`{.interpreted-text role="menuselection"}.

![View of the social accounts page in the Odoo Social Marketing application.](social_marketing/social-streams-page.png){.align-center}

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

## Visitors

To see a complete overview of all the people who have visited the
website(s) connected to the database, navigate to
`Social Marketing app --> Visitors`{.interpreted-text
role="menuselection"}.

![View of the Visitors page in the Odoo Social Marketing application.](social_marketing/visitors.png){.align-center}

Here, Odoo provides a detailed layout of all the visitors\' pertinent
information in a default kanban view. If visitors already have contact
information in the database, the option to send them an
`Email`{.interpreted-text role="guilabel"} and/or an
`SMS`{.interpreted-text role="guilabel"} is available.

This same visitor data can also be viewed as a list or a graph. Those
view options are located in the upper-right corner of the
`Visitors`{.interpreted-text role="guilabel"} page.

::: toctree
social_marketing/social_posts social_marketing/social_campaigns
:::




--- SOURCE: marketing/surveys/analysis.md ---

# Survey analysis

After surveys have been created and sent to participants, it is only a
matter of time before the responses start to come in. When they do, it
is important to know where and how to analyze them in the Odoo *Surveys*
application.

Fortunately, Odoo provides numerous ways to view survey responses,
allowing users to access and analyze survey responses as they are
submitted.

## See results

Upon opening the `Surveys`{.interpreted-text role="menuselection"}
application, the main dashboard reveals a list of all the surveys in the
database, along with pertinent information related to each one.

By default, every survey line showcases its number of
`Questions`{.interpreted-text role="guilabel"}, `Average
Duration`{.interpreted-text role="guilabel"}, and how many participants
have `Registered`{.interpreted-text role="guilabel"} or
`Completed`{.interpreted-text role="guilabel"} the survey.

There are also elements showing the percentage of how many participants
`Passed`{.interpreted-text role="guilabel"} (if a *Required Score (%)*
was configured), or how many participants became
`Certified`{.interpreted-text role="guilabel"} (if the *Is a
Certification* option was configured).

:::: note
::: title
Note
:::

To learn more about the different analytical elements found on the
`Surveys`{.interpreted-text role="guilabel"} dashboard, check out the
`Survey Essentials <../surveys/create>`{.interpreted-text role="doc"}
documentation.
::::

On the `Surveys`{.interpreted-text role="guilabel"} dashboard, to the
far-right of each survey line displayed in the default list view, there
is a `See results`{.interpreted-text role="guilabel"} button.

![The \'See Results\' button present on the main dashboard of the Odoo Surveys application.](analysis/see-results-button.png){.align-center}

When the `See results`{.interpreted-text role="guilabel"} button is
clicked, a new browser tab opens, revealing a separate page filled with
all of that particular survey\'s results and responses, with an
informative `Results Overview`{.interpreted-text role="guilabel"} and
some filtering drop-down menus at the top.

![Typical survey results page when \'See results\' is clicked from the Odoo Surveys dashboard.](analysis/results-page.png){.align-center}

At the top of the page, there is an `Edit Survey`{.interpreted-text
role="guilabel"} link, in the middle of a blue header banner. When
clicked, Odoo returns the user to the survey form for that particular
survey.

Beneath that, is the title of the survey, and its description, if one
was configured for it on its survey form.

To the right of the survey title, there are two drop-down menus with
various filtering options, which can be used to personalize and segment
the survey results in a number of different ways.

The first filter drop-down menu is set on the default
`All Surveys`{.interpreted-text role="guilabel"} option, meaning the
results below are showing results and responses from all the submitted
surveys, regardless if they have been fully completed or not.

When that drop-down menu is clicked open, another option,
`Completed surveys`{.interpreted-text role="guilabel"}, appears.

![The \'All surveys\' drop-down menu opened on the \'See results\' page of the Odoo Surveys app.](analysis/all-surveys-dropdown.png){.align-center}

With that drop-down menu open, the number corresponding to each filter
option appears to the right of each option.

To the right of that drop-down menu of filter options, is another
drop-down menu of filter options that can be used to further customize
the results showcased on this page.

That drop-down menu is set to the `Passed and Failed`{.interpreted-text
role="guilabel"} option, by default. This option shows the results and
responses from all participants who have passed or failed this
particular survey.

:::: note
::: title
Note
:::

This second drop-down menu of filter options **only** appears if the
survey being analyzed has a *Scoring* option configured, or if the *Is a
Certification* feature has been enabled.
::::

When that second drop-down menu of filter options is clicked open, two
additional options appear: `Passed only`{.interpreted-text
role="guilabel"} and `Failed only`{.interpreted-text role="guilabel"}.

![The \'Passed and Failed\' drop-down menu on the \'See results\' page of the Odoo Surveys app.](analysis/passed-failed-dropdown.png){.align-center}

Each option would filter the results below to only show responses from
participants who have passed the survey, or who have failed the survey,
respectively.

Directly beneath the survey title, there is a `Print`{.interpreted-text
role="guilabel"} button. When clicked, the entire results page can be
printed.

The `Results Overview`{.interpreted-text role="guilabel"} section is
below the survey title, filter option drop-down menus, and
`Print`{.interpreted-text role="guilabel"} button.

![The \'Results Overview\' section on the \'See results\' page in the Odoo Surveys application.](analysis/results-overview.png){.align-center}

This section of the results page provides a summarized collection of
useful survey-related data and metrics for quick analysis.

### Question analysis

Directly beneath the `Results Overview`{.interpreted-text
role="guilabel"} section is where the results and responses of the
survey are found.

:::: note
::: title
Note
:::

The various sections of the survey, if there were any, appear at the top
of their corresponding questions on the results page, as well, for added
organization.
::::

Every question that was a part of the survey is shown, along with an
in-depth breakdown, and visual representation, of how it was answered by
participants, beneath the `Results Overview`{.interpreted-text
role="guilabel"} section.

Each question is displayed above its corresponding results. To the left
of the question is an `👁️ (eye)`{.interpreted-text role="guilabel"}
icon. When clicked, Odoo hides the visual and data-related results and
responses. When clicked again, that question\'s visual and data-related
results re-appear.

To the far-right of the question, there are indicators to see how many
participants `Responded`{.interpreted-text role="guilabel"} and how many
`Skipped`{.interpreted-text role="guilabel"} the question.

![The Responded and Skipped indicators on the \'See results\' page in Odoo Surveys.](analysis/responded-skipped-indicators.png){.align-center}

If the question required the participant to enter in their own answer,
without any options to choose from, like entering a specific number or
date, for example, there is also an indicator to showcase how many users
answered the question `Correct`{.interpreted-text role="guilabel"}.

![Sample of a \'correct\' indicator on the \'See results\' page in the Odoo Surveys application.](analysis/correct-indicator.png){.align-center}

:::: note
::: title
Note
:::

Even if there is no configured *correct* response for question of this
nature, the `Correct`{.interpreted-text role="guilabel"} indicator still
appears, although, it displays a [0]{.title-ref}.

This would occur for opinion-based questions, like [When would be a good
time to hold another sale?]{.title-ref}
::::

If there is only one correct response to a multiple choice question,
those results and responses are represented by a
`Pie Graph`{.interpreted-text role="guilabel"}. The correct answer is
indicated by a `✔️
(checkmark)`{.interpreted-text role="guilabel"} icon next to the correct
answer option, in the legend above the graph.

![Typical pie graph results on the \'See results\' page in the Odoo Surveys application.](analysis/pie-graph-results.png){.align-center}

If there are multiple correct answer options (or no correct answers at
all) for a multiple choice question, those results and responses are
represented by a `Bar Graph`{.interpreted-text role="guilabel"}.

![Typical bar graph results on the \'See results\' page in the Odoo Surveys application.](analysis/bar-graph-results.png){.align-center}

Each multiple choice question has a `Graph`{.interpreted-text
role="guilabel"} tab and an `Data`{.interpreted-text role="guilabel"}
tab. The graph-related tab is shown by default.

The `Data`{.interpreted-text role="guilabel"} tab shows all the provided
`Answer`{.interpreted-text role="guilabel"} options for the question.
The `User Choice`{.interpreted-text role="guilabel"} (with percentages
and votes) along with the `Score`{.interpreted-text role="guilabel"} of
each option.

![Typical \'Data\' tab on the \'See results\' page in the Odoo Surveys application.](analysis/data-tab.png){.align-center}

Other question types, wherein there were no answer options for the
participant to choose from, there is a `Most Common`{.interpreted-text
role="guilabel"} tab and an `All Data`{.interpreted-text
role="guilabel"} tab.

The `Most Common`{.interpreted-text role="guilabel"} tab shows the
`User Responses`{.interpreted-text role="guilabel"}, the
`Occurrence`{.interpreted-text role="guilabel"}, and the
`Score`{.interpreted-text role="guilabel"} (if applicable).

![Typical \'Most Common\' tab on the \'See results\' page in the Odoo Surveys application.](analysis/most-common-tab.png){.align-center}

The `All Data`{.interpreted-text role="guilabel"} tab shows a list of
all the submitted responses to that particular question.

![Typical \'All Data\' tab on the \'See results\' page in the Odoo Surveys application.](analysis/all-data-tab.png){.align-center}

If a question is looking for participants to enter a numerical value as
a response, `Maximum`{.interpreted-text role="guilabel"},
`Minimum`{.interpreted-text role="guilabel"}, and
`Average`{.interpreted-text role="guilabel"} indicators appear to the
far-right of the results tabs.

![The Maximum, Minimum, and Average indicators on the \'See results\' page in Odoo Surveys.](analysis/max-min-avg-indicator.png){.align-center}

A `filter`{.interpreted-text role="guilabel"} icon is also present
either to the right of the `User Choice`{.interpreted-text
role="guilabel"} column in a `Data`{.interpreted-text role="guilabel"}
tab, or to the far-right of a `User Response`{.interpreted-text
role="guilabel"} line in an `All Data`{.interpreted-text
role="guilabel"} tab.

![Typical \'Filter\' icon on the \'See results\' page in the Odoo Surveys application.](analysis/filter-icon.png){.align-center}

When that `filter`{.interpreted-text role="guilabel"} icon is clicked,
Odoo returns the user to the top of the results page, with that chosen
filter applied, showing the results of each question for participants
who submitted that particular answer for that specific question.

![The applied filter on the \'See results\' page in the Odoo Surveys application.](analysis/applied-filter.png){.align-center}

Therefore, showcasing the remaining results for participants who
answered that specific question in the same way. To remove that filter,
and reveal all the results once again, click `Remove
all filters`{.interpreted-text role="guilabel"} or click the
`✖️ (X)`{.interpreted-text role="guilabel"} icon in the filter box at
the top of the results page.

## Participations

To view a consolidated list of participation results for a specific
survey, navigate to `Surveys app`{.interpreted-text
role="menuselection"}, select the desired survey from the list, and
click the `Participations`{.interpreted-text role="guilabel"} smart
button at the top of the survey form.

![The Participations smart button at the top of a survey form in Odoo Surveys.](analysis/participations-smart-button.png){.align-center}

Doing so reveals a separate `Participations`{.interpreted-text
role="guilabel"} page, showcasing the participants for that specific
survey, along with a collection of pertinent information related to each
one.

![The Participations page for a singular survey in the Odoo Surveys application.](analysis/participations-page-singular-survey.png){.align-center}

Here, users can view information related to individual participants who
took that specific survey. If they desire to see a more detailed
breakdown of their various answers and responses, they can click on any
participant, and Odoo reveals a separate page showing that
participant\'s survey details, along with their submitted answers.

![An individual participant\'s detail form in the Odoo Surveys application.](analysis/individual-participant-page.png){.align-center}

To view a consolidated list of all participants of every survey in the
database, navigate to `Surveys app --> Participations`{.interpreted-text
role="menuselection"}. Here, every survey in the database is shown in a
default nested list. Beside each survey title has the number of
participants in parenthesis.

![The Participations page for all surveys in the Odoo Surveys application.](analysis/participations-page-all-surveys.png){.align-center}

When a survey is un-nested from this list, by clicking the survey title,
the corresponding participants, along with their response-related data
for that survey, appear on the page.

The `Participations`{.interpreted-text role="guilabel"} page can also be
viewed in a Kanban layout, as well.

![The Participations page in the Kanban view in the Odoo Surveys application.](analysis/participations-page-kanban-view.png){.align-center}

::: seealso
\- `create`{.interpreted-text role="doc"} - `scoring`{.interpreted-text
role="doc"}
:::




--- SOURCE: marketing/surveys/create.md ---

# Create surveys

To create a survey in the Odoo *Surveys* application, navigate to
`Surveys app -->
New`{.interpreted-text role="menuselection"} to reveal a blank survey
form.

:::: note
::: title
Note
:::

The `New`{.interpreted-text role="guilabel"} button is **not** present
on the *Surveys* dashboard if in the *Activities* view.
::::

## Survey form

![How a blank survey form looks in the Odoo Surveys application.](create/blank-survey-form.png){.align-center}

At the top of the survey form are four radio buttons, each representing
a survey style. The radio button options are:

- `Survey`{.interpreted-text role="guilabel"}
- `Live Session`{.interpreted-text role="guilabel"}
- `Assessment`{.interpreted-text role="guilabel"}
- `Custom`{.interpreted-text role="guilabel"} (selected by default)

These options are here to streamline the survey-making process, by
providing users with automated settings and options that are ideally
specific to those types of surveys. Each of those survey type options
comes equipped with its own specific selection of options.

The `Custom`{.interpreted-text role="guilabel"} option, selected by
default, offers all the options from every potential survey type
(located in the `Options`{.interpreted-text role="guilabel"} tab).

Beneath those radio survey type options is a blank field in which a name
for the survey **must** be entered.

Below the survey name field, is the `Responsible`{.interpreted-text
role="guilabel"} field. Choose a user from the drop-down menu to be in
charge of the survey. By default, the user who initially created the
survey is selected as the default `Responsible`{.interpreted-text
role="guilabel"}.

To the right of those fields, and above the tabs, is the option to add a
background image, represented by a `📷 (camera)`{.interpreted-text
role="guilabel"} icon. When clicked, the option to upload an image
becomes available. This image would be used as the background image for
the entire survey. This is **not** a required option.

Below those fields and options are four tabs:
`Questions`{.interpreted-text role="guilabel"},
`Options`{.interpreted-text role="guilabel"},
`Description`{.interpreted-text role="guilabel"}, and
`End Message`{.interpreted-text role="guilabel"}.

### Questions tab

View, access, add, and/or delete questions and sections to the survey in
the `Questions`{.interpreted-text role="guilabel"} tab.

By default, two columns are present in the `Questions`{.interpreted-text
role="guilabel"} tab: `Title`{.interpreted-text role="guilabel"} (i.e.
the question) and `Question Type`{.interpreted-text role="guilabel"}.

If the `Randomized per Section`{.interpreted-text role="guilabel"}
option is enabled in the `Options`{.interpreted-text role="guilabel"}
tab of the survey form, a column titled,
`# Questions Randomly Picked`{.interpreted-text role="guilabel"} appears
in the `Questions`{.interpreted-text role="guilabel"} tab.

Indicate whether questions require a mandatory answer by clicking the
`(optional columns)`{.interpreted-text role="guilabel"} icon to the
far-right of the column titles. Then, select
`Mandatory Answer`{.interpreted-text role="guilabel"} from the drop-down
menu to reveal the `Mandatory Answer`{.interpreted-text role="guilabel"}
column in the `Questions`{.interpreted-text role="guilabel"} tab.

![The slider drop-down menu with the Mandatory Answer option selected in Odoo Surveys.](create/mandatory-answer-dropdown.png){.align-center}

#### Add a question

To add a question to a survey, click `Add a question`{.interpreted-text
role="guilabel"} in the `Questions`{.interpreted-text role="guilabel"}
tab, and proceed to fill out the
`Create Sections and Questions`{.interpreted-text role="guilabel"}
pop-up window that appears.

To learn how to create and customize questions, refer to the
`create questions <questions>`{.interpreted-text role="doc"}
documentation.

:::: important
::: title
Important
:::

There **must** be a survey title entered in order for the
`Create Sections and
Questions`{.interpreted-text role="guilabel"} pop-up window to appear.
If no title is entered for the survey, an error pop-up message appears
in the upper-right corner, instructing the user to enter a survey title.
::::

#### Add a section

A *section* divides the survey into organized parts, in order to
visually group similar questions together. To make a section, click
`Add a section`{.interpreted-text role="guilabel"} at the bottom of the
`Questions`{.interpreted-text role="guilabel"} tab, proceed to type in a
desired name for the section, then either press
`Enter`{.interpreted-text role="kbd"} or click away.

The section line appears in dark gray in the
`Questions`{.interpreted-text role="guilabel"} tab.

Then, drag-and-drop desired questions beneath a section, or
drag-and-drop a section title on top of (i.e. *before*) the desired
question(s) in the survey. Doing so populates the section with questions
that align with its theme.

If the `Randomized per Section`{.interpreted-text role="guilabel"}
option is enabled in the `Options`{.interpreted-text role="guilabel"}
tab of the survey form, the number [1]{.title-ref} appears, by default,
on the section line, beneath the `#
Questions Randomly Picked`{.interpreted-text role="guilabel"} column.

This indicates that [1]{.title-ref} question from that section will be
picked at random for each participant taking the survey, bypassing every
other, non-chosen question from that section. To change that number,
select that figure, and type in the desired number in its place. Then,
either press `Enter`{.interpreted-text role="kbd"}, or click away.

### Options tab

In the `Options`{.interpreted-text role="guilabel"} tab of the survey
form, there are many options to choose from, separated in four different
sections: `Questions`{.interpreted-text role="guilabel"},
`Time & Scoring`{.interpreted-text role="guilabel"},
`Participants`{.interpreted-text role="guilabel"}, and
`Live Session`{.interpreted-text role="guilabel"}.

The options available in this tab vary on the survey type chosen, via
the radio buttons at the top of the survey form:
`Survey`{.interpreted-text role="guilabel"},
`Live Session`{.interpreted-text role="guilabel"},
`Assessment`{.interpreted-text role="guilabel"}, or
`Custom`{.interpreted-text role="guilabel"}.

The `Custom`{.interpreted-text role="guilabel"} survey type showcases
all the possible options in the `Options`{.interpreted-text
role="guilabel"} tab. So, if any of the following options do **not**
appear in the `Options`{.interpreted-text role="guilabel"} tab, it is
likely because the selected survey type does not offer it.

#### Questions section

![The Questions section of the Options tab on a survey form in Odoo Surveys.](create/questions-section-options-tab.png){.align-center}

The first field in the `Questions`{.interpreted-text role="guilabel"}
section revolves around the `Pagination`{.interpreted-text
role="guilabel"}, or overall layout, of the survey.

Choose between `One page per question`{.interpreted-text
role="guilabel"}, `One page per section`{.interpreted-text
role="guilabel"}, or `One page with all the questions`{.interpreted-text
role="guilabel"} in the `Pagination`{.interpreted-text role="guilabel"}
field.

:::: note
::: title
Note
:::

If `One page with all the questions`{.interpreted-text role="guilabel"}
is selected, all the remaining options in the
`Questions`{.interpreted-text role="guilabel"} field, apart from
`Question Selection`{.interpreted-text role="guilabel"} is removed, as
they are no longer needed.
::::

Next, select one of the following options in the
`Display Progress as`{.interpreted-text role="guilabel"} field:

- `Percentage left`{.interpreted-text role="guilabel"}: displays the
  percentage of the survey remaining to participants.
- `Number`{.interpreted-text role="guilabel"}: display the number of
  questions answered along with the total number of questions to answer.

In the `Question Selection`{.interpreted-text role="guilabel"} field
choose to have the survey show `All questions`{.interpreted-text
role="guilabel"} or `Randomized per Section`{.interpreted-text
role="guilabel"}. If `Randomized per Section`{.interpreted-text
role="guilabel"} a new column appears in the
`Questions`{.interpreted-text role="guilabel"} tab, titled:
`# Questions Randomly Picked`{.interpreted-text role="guilabel"}.

In the `# Questions Randomly Picked`{.interpreted-text role="guilabel"}
column, designate how many questions, in that particular section, should
be chosen at random to the participant.

Lastly, there is the `Allow Roaming`{.interpreted-text role="guilabel"}
option. When enabled, participants are able to navigate back to previous
pages in the survey.

#### Time & Scoring section

![The Time and Scoring section of the Options tab on a survey form in Odoo Surveys.](create/time-scoring-section-options-tab.png){.align-center}

The first option in the `Time & Scoring`{.interpreted-text
role="guilabel"} section is the `Survey Time Limit`{.interpreted-text
role="guilabel"} option. If enabled, proceed to enter in an amount of
time (in `minutes`{.interpreted-text role="guilabel"}) to be set as the
time limit for the survey.

Next, in the `Scoring`{.interpreted-text role="guilabel"} section,
determine whether there should be: `No scoring`{.interpreted-text
role="guilabel"},
`Scoring with answers after each page`{.interpreted-text
role="guilabel"}, `Scoring with answers at the end`{.interpreted-text
role="guilabel"}, or `Scoring without answers`{.interpreted-text
role="guilabel"}.

If the `No scoring`{.interpreted-text role="guilabel"} option is
selected, no other options are available in this section. However, if
any *other* `Scoring`{.interpreted-text role="guilabel"} option is
selected, two additional fields appear:
`Required Score (%)`{.interpreted-text role="guilabel"} and
`Is a Certification`{.interpreted-text role="guilabel"}.

In the `Required Score (%)`{.interpreted-text role="guilabel"} field,
enter the minimum percentage participants **must** earn in order to pass
the survey. Scores below this threshold are considered fails. This
figure is also used to determine if a participant is \'certified\' or
not, if the `Is a Certification`{.interpreted-text role="guilabel"}
option is enabled.

If the `Is a Certification`{.interpreted-text role="guilabel"} option is
enabled, that makes the survey a *Certification*, which is represented
on the main *Surveys* app dashboard via a half-tropy image behind the
survey title, while in the default Kanban view. Or, via a full-trophy
icon, while in list view.

When the `Is a Certification`{.interpreted-text role="guilabel"} option
is enabled, three additional fields appear \-- one beside the option,
and two below.

In the field that appears beside the option, users can select (and
`Preview`{.interpreted-text role="guilabel"}) a certification template.

Beneath that, in the `Certified Email Template`{.interpreted-text
role="guilabel"} field, users can select a preconfigured email template,
or create one on-the-fly, to be sent to certified participants of the
survey upon completion.

Lastly, if the `Give Badge`{.interpreted-text role="guilabel"} field is
enabled, a preconfigured badge is then displayed on the contact page for
that certified survey participant.

#### Participants section

![The Participants section of the Options tab on a survey form in Odoo Surveys.](create/participants-section-options-tab.png){.align-center}

The first available option in the `Participants`{.interpreted-text
role="guilabel"} section is the `Access Mode`{.interpreted-text
role="guilabel"} field. This is where users can determine who has access
to the survey. Users can select either:
`Anyone with the link`{.interpreted-text role="guilabel"} or
`Invited people only`{.interpreted-text role="guilabel"}.

Next, there is the option to `Require Login`{.interpreted-text
role="guilabel"}. Enabling this feature means users **must** login
before being able to take the survey, even if they have a valid token.

Lastly, in there is the `Limit Attempts`{.interpreted-text
role="guilabel"} field. If enabled, an additional field appears beside
it, in which users can determine how many times users can attempt this
survey.

#### Live Session section

![The Live Session section of the Options tab on a survey form in Odoo Surveys.](create/live-session-section-options-tab.png){.align-center}

:::: note
::: title
Note
:::

The `Live Session`{.interpreted-text role="guilabel"} section in the
`Options`{.interpreted-text role="guilabel"} tab of the survey form
**only** pertains to *Live Session* surveys.
::::

The first option in the `Live Session`{.interpreted-text
role="guilabel"} section is the `Session Code`{.interpreted-text
role="guilabel"} field. In this field, enter a custom code, consisting
of letters, numbers, and/or symbols, to be used by participants in order
to access the live session survey.

Next, is the `Session Link`{.interpreted-text role="guilabel"} field,
which **cannot** be customized, but it *can* be sent out to potential
participants.

:::: note
::: title
Note
:::

If a `Session Code`{.interpreted-text role="guilabel"} has been entered,
the URL in the `Session Link`{.interpreted-text role="guilabel"} field
ends with that specific `Session Code`{.interpreted-text
role="guilabel"}.

If that complete `Session Link`{.interpreted-text role="guilabel"}
(ending in the custom `Session Code`{.interpreted-text role="guilabel"})
is used by participants to access the live session survey, that link
would *already* be entered for them. At that point, they\'d simply have
to wait until the host of the live session begins the survey, and then
they\'d be able to enter.

If the `Session Link`{.interpreted-text role="guilabel"} (ending in the
custom `Session Code`{.interpreted-text role="guilabel"}) is sent
**without** including the `Session Code`{.interpreted-text
role="guilabel"} ending, participants trying to access the live session,
via that link, will need to enter the custom
`Session Code`{.interpreted-text role="guilabel"} to gain access.

If the `Session Code`{.interpreted-text role="guilabel"} field is empty,
a slightly longer, more complicated URL populates the
`Session Link`{.interpreted-text role="guilabel"} field. When
participants attempt to access the live session via that link (without a
configured `Session Code`{.interpreted-text role="guilabel"}), all they
have to do is wait for the host of the live session to begin the survey,
and they\'d be able to participate.
::::

Lastly, in the `Live Session`{.interpreted-text role="guilabel"}
section, there is the option to `Reward quick
answers`{.interpreted-text role="guilabel"}. If that option is enabled,
participants who submit their answer quickly receive more points.

::: seealso
`live_session`{.interpreted-text role="doc"}
:::

### Description tab

In this non-required tab, users can enter a custom description about the
survey, along with any explanations or guidance that a survey
participant may need in order to properly participate (and complete) the
survey.

### End Message tab

In this non-required tab, users can enter a custom message that
participants see upon completing the survey.

## Survey form buttons

Once the survey has been configured properly, and questions have been
added, the user can utilize any of the available buttons in the
upper-left corner of the survey form.

![The various buttons on a survey form in Odoo Surveys.](create/survey-form-buttons.png){.align-center}

Those buttons are the following:

- `Share`{.interpreted-text role="guilabel"}: click to reveal a
  `Share a Survey`{.interpreted-text role="guilabel"} pop-up form that
  can be used to invite potential participants to the survey ---
  complete with a `Survey Link`{.interpreted-text role="guilabel"} that
  can be copied and sent to potential participants, and a
  `Send by Email`{.interpreted-text role="guilabel"} toggle switch.

  ![The \'Share a Survey\' pop-up window that appears in the Odoo Surveys application.](create/share-survey-popup.png){.align-center}

  When the `Send by Email`{.interpreted-text role="guilabel"} toggle is
  in the \'on\' position, indicated by a green switch, additional fields
  appear, in which `Recipients`{.interpreted-text role="guilabel"} and a
  `Subject`{.interpreted-text role="guilabel"} can be added to the
  email. Below that, a dynamic email template, complete with a `Start
  Certification`{.interpreted-text role="guilabel"} button appears,
  which can also be modified.

  ![The \'Share a Survey\' pop-up window in Odoo Surveys with the Send by Email toggled on.](create/share-survey-popup-email-toggle.png){.align-center}

  Once modifications are complete, click `Send`{.interpreted-text
  role="guilabel"} to send that email invite to all the email
  addresses/contacts listed in the `Recipients`{.interpreted-text
  role="guilabel"} field.

- `See results`{.interpreted-text role="guilabel"}: this button **only**
  appears if there has been at least one participant who has completed
  the survey. Clicking `See results`{.interpreted-text role="guilabel"}
  reveals a separate tab containing a visual analysis of the survey
  questions and responses. For more information, check out the
  `scoring surveys <scoring>`{.interpreted-text role="doc"}
  documentation.

- `Create Live Session`{.interpreted-text role="guilabel"}: clicking
  this button opens the *Session Manager* in a separate tab. It also
  allows participants to access the live session, but the actual survey
  does **not** begin until the user hosting the live session survey
  clicks the `Start`{.interpreted-text role="guilabel"} button on the
  *Session Manager* window.

  Additionally, when `Create Live Session`{.interpreted-text
  role="guilabel"} has been clicked, and the *Session Manager* tab has
  been opened, the `Create Live Session`{.interpreted-text
  role="guilabel"} button on the survey form is replaced with two new
  buttons: `Open Session Manager`{.interpreted-text role="guilabel"} and
  `Close Live Session`{.interpreted-text role="guilabel"}.

  Clicking `Open Session Manager`{.interpreted-text role="guilabel"}
  opens another separate tab to the *Session Manager*, and clicking
  `Close Live Session`{.interpreted-text role="guilabel"} closes, and
  subsequently ends, the live session.

- `Test`{.interpreted-text role="guilabel"}: clicking this button opens
  a new tab to a test version of the survey, in order for the user to
  check for errors or inconsistencies, from the point-of-view of a
  participant. Users can tell if they are in a test version of the
  survey if there is a blue banner at the top of the screen, reading:
  [This is a Test Survey \--\> Edit Survey]{.title-ref}.

  If the link in the blue banner is clicked, Odoo returns the user to
  the survey form.

- `Print`{.interpreted-text role="guilabel"}: clicking this button opens
  a new tab to a printable version of the survey that the user can
  proceed to print for their records.

- `Close`{.interpreted-text role="guilabel"}: clicking this button
  closes the survey (i.e. archives it), which is represented by a red
  `Archived`{.interpreted-text role="guilabel"} banner across the
  top-right corner of the survey form.

  When this button is clicked, and the survey is closed, a single button
  appears in the upper-right corner of the survey form, titled:
  `Reopen`{.interpreted-text role="guilabel"}. When
  `Reopen`{.interpreted-text role="guilabel"} is clicked the survey is
  reopened (i.e. unarchived), and the `Archived`{.interpreted-text
  role="guilabel"} banner is removed from the survey form.

::: seealso
\- `questions`{.interpreted-text role="doc"} -
`scoring`{.interpreted-text role="doc"}
:::




--- SOURCE: marketing/surveys/live_session.md ---

# Live Session surveys

With the Odoo *Surveys* application, users can enhance in-person
demonstrations and presentations with the *Live Session* feature.

*Live Session* surveys function the same way as a normal survey, but
with a host or moderator, who presents the questions to participants,
reveals their responses in real-time, and controls the tempo of the
survey.

In *Live Session* surveys, participants access the survey experience via
a custom URL, and sign in with an optional access code. When the survey
has begun, the host presents one question at a time.

Then, the audience of participants submit their answer, either via their
computer or mobile device, and once the responses have been gathered,
the host reveals all the participant\'s responses, in real time, with
each answer\'s results displayed as a bar graph.

![Rendered concept of how a Live Session question and answer result appears in Odoo Surveys.](live_session/live-session-concept-sample.png){.align-center}

## Create Live Session survey

To create a *Live Session* survey, begin by opening the *Surveys*
application. From the `Surveys`{.interpreted-text role="guilabel"}
dashboard, click the `New`{.interpreted-text role="guilabel"} button to
reveal a blank survey form.

Any of the survey type options (`Survey`{.interpreted-text
role="guilabel"}, `Live Session`{.interpreted-text role="guilabel"},
`Assessment`{.interpreted-text role="guilabel"}, or
`Custom`{.interpreted-text role="guilabel"}), presented as radio buttons
at the top of the survey, can be used to create a *Live Session*.

However, selecting the `Live Session`{.interpreted-text role="guilabel"}
survey type radio button streamlines the process because Odoo
auto-selects the optimal settings and options for a *Live Session*
survey when that option is selected.

:::: important
::: title
Important
:::

If the `Is a Certification`{.interpreted-text role="guilabel"} option is
enabled in the `Options`{.interpreted-text role="guilabel"} tab, the
survey **cannot** be used as a *Live Session* survey.
::::

With the desired survey radio button option selected, proceed to
`create a survey
<../surveys/create>`{.interpreted-text role="doc"} with
`questions and sections <../surveys/questions>`{.interpreted-text
role="doc"}.

While creating questions for the *Live Session* survey, open the
`Options`{.interpreted-text role="guilabel"} tab on the
`Create Sections and Questions`{.interpreted-text role="guilabel"}
pop-up form, in order to reveal the `Live
Sessions`{.interpreted-text role="guilabel"} section, which only has one
available feature: `Question Time Limit`{.interpreted-text
role="guilabel"}.

When the `Question Time Limit`{.interpreted-text role="guilabel"} option
is enabled, a new field appears beside it, wherein the user **must**
enter the desired amount of time (in seconds) the participant gets to
answer the question.

![The Live Session question time limit option for questions in the Odoo Surveys application.](live_session/question-time-limit-option.png){.align-center}

### Options tab

After the questions have been created for the *Live Session* survey,
open the `Options`{.interpreted-text role="guilabel"} tab of the survey
form to further configure the survey.

The `Options`{.interpreted-text role="guilabel"} tab is organized into
four sections: `Questions`{.interpreted-text role="guilabel"}, `Time
& Scoring`{.interpreted-text role="guilabel"},
`Participants`{.interpreted-text role="guilabel"}, and
`Live Session`{.interpreted-text role="guilabel"}.

#### Questions section

Regardless of the option selected for the `Pagination`{.interpreted-text
role="guilabel"} field, the *Live Session* survey *only* shows
`One page per question`{.interpreted-text role="guilabel"}, and will
default to that option when the `Create Live Session`{.interpreted-text
role="guilabel"} button is clicked, and a *Live Session* survey
officially begins.

:::: note
::: title
Note
:::

The `One page per question`{.interpreted-text role="guilabel"} option in
the `Pagination`{.interpreted-text role="guilabel"} field is selected by
default, and no other options appear in the
`Questions`{.interpreted-text role="guilabel"} section, when the
`Live Session`{.interpreted-text role="guilabel"} survey type radio
button is selected.
::::

The `Display Progress as`{.interpreted-text role="guilabel"} and
`Question Selection`{.interpreted-text role="guilabel"} options are
still viable and active options for *Live Session* surveys, if desired,
but they are **not** required.

However, the `Allow Roaming`{.interpreted-text role="guilabel"} feature
is **not** available during *Live Session* surveys whatsoever, as the
host/moderator controls the survey, and participants have no control
over what question they see, or when they see it.

#### Time & Scoring section

The `Survey Time Limit`{.interpreted-text role="guilabel"} option is
**not** applicable for *Live Session* surveys. This option does not even
appear in the `Time & Scoring`{.interpreted-text role="guilabel"}
section of the `Options`{.interpreted-text role="guilabel"} tab if the
`Live Session`{.interpreted-text role="guilabel"} survey type radio
button option is selected.

:::: note
::: title
Note
:::

While the `Survey Time Limit`{.interpreted-text role="guilabel"} option
is not applicable for *Live Session* surveys, each question *can* be
affixed with its own *Question Time Limit*, via the *Options* tab of the
question pop-up form. Those question-specific time limits *do* work with
*Live Session* surveys.
::::

If desired, any `Scoring`{.interpreted-text role="guilabel"} option, and
subsequent `Required Score (%)`{.interpreted-text role="guilabel"}
option are available to use with *Live Session* surveys.

However, if the `Is a Certification`{.interpreted-text role="guilabel"}
option is enabled, the survey **cannot** be used as a *Live Session*
survey. The `Is a Certification`{.interpreted-text role="guilabel"}
option does **not** appear in the `Time & Scoring`{.interpreted-text
role="guilabel"} section of the `Options`{.interpreted-text
role="guilabel"} tab if the `Live Session`{.interpreted-text
role="guilabel"} survey type radio button option is selected.

#### Participants section

The `Access Mode`{.interpreted-text role="guilabel"} field is set to the
`Anyone with the link`{.interpreted-text role="guilabel"} option when
the survey is used as a *Live Session*. The
`Anyone with the link`{.interpreted-text role="guilabel"} option
**cannot** be modified if the `Live Session`{.interpreted-text
role="guilabel"} survey type radio button option is selected.

The `Require Login`{.interpreted-text role="guilabel"} option is
available for *Live Session* surveys. However, if the
`Live Session`{.interpreted-text role="guilabel"} survey type radio
button option is selected, the usual `Limit
Attempts`{.interpreted-text role="guilabel"} field that appears when
`Require Login`{.interpreted-text role="guilabel"} is enabled does
**not** appear, as live session participants only get to attempt the
survey once, as the host leads them through it.

#### Live Session section

The `Session Code`{.interpreted-text role="guilabel"} field allows users
to create unique codes for participants to use, in order to gain access
to the *Live Session* survey. This code can consist of any combination
of letters, numbers, and/or symbols.

The `Session Code`{.interpreted-text role="guilabel"} field is **not**
required, however, it is encouraged because it adds a level of
exclusivity to the survey and, without a
`Session Code`{.interpreted-text role="guilabel"}, the URL that appears
in the following `Session Link`{.interpreted-text role="guilabel"} field
becomes far more complex.

:::: important
::: title
Important
:::

If a `Session Code`{.interpreted-text role="guilabel"} is **not**
entered, participants can access the survey, via the
`Session Link`{.interpreted-text role="guilabel"} without needing a
host, and the fundamental elements of the *Live Session* are lost, as
the survey is then just a normal questionnaire, without any real-time
results.
::::

With a `Session Code`{.interpreted-text role="guilabel"}, the URL in the
non-modifiable `Session Link`{.interpreted-text role="guilabel"} field
is simplified, and ends with the `Session Code`{.interpreted-text
role="guilabel"}, preceded by [/s/]{.title-ref}.

::: example
If [1212]{.title-ref} has been entered as the
`Session Code`{.interpreted-text role="guilabel"}, the URL in the
`Session
Link`{.interpreted-text role="guilabel"} field begins with the basic URL
of the database (e.g. [sample-database.odoo.com]{.title-ref}), followed
by: [/s/1212]{.title-ref}.

So, collectively, that sample `Session Link`{.interpreted-text
role="guilabel"} would be:
[sample-database.odoo.com/s/1212]{.title-ref}.
:::

:::: tip
::: title
Tip
:::

If a user sends out the `Session Link`{.interpreted-text
role="guilabel"} URL in its complete form - `Session
Code`{.interpreted-text role="guilabel"} and all - participants would
*not* need to enter in a code, as it would already be entered for them.
That complete link places the participant in a virtual waiting room,
where they simply need to wait for the host to officially start the
*Live Session* survey.

If a user sends out the `Session Link`{.interpreted-text
role="guilabel"} URL - *except* for the `Session Code`{.interpreted-text
role="guilabel"} at the end (i.e. the entire URL *through*
[\.../s/]{.title-ref}) - participants would be taken to a page, wherein
they would need to enter the specific `Session Code`{.interpreted-text
role="guilabel"} in order to access the *Live Session*.
::::

If any `Scoring`{.interpreted-text role="guilabel"} option has been
enabled, the opportunity to `Reward quick
answers`{.interpreted-text role="guilabel"} is also available with *Live
Session* surveys.

## Start Live Session surveys

Once all the questions and configurations are complete, users can click
the `Create Live
Session`{.interpreted-text role="guilabel"} button at the top of the
survey form. Doing so opens a new browser tab to the *Session Manager*.

When the `Create Live Session`{.interpreted-text role="guilabel"} button
has been clicked, and the *Live Session* has begun, a new
`Open Session Manager`{.interpreted-text role="guilabel"} button appears
on the survey form, which opens a new browser tab to the *Session
Manager*. If the *Live Session* has already begun, that button leads the
user to the question or section the *Live Session* is currently on.

Additionally, a `Close Live Session`{.interpreted-text role="guilabel"}
button appears on the survey form. When that button is clicked, the
*Live Session* survey closes.

The *Session Manager* is controlled by the host/moderator of the *Live
Session* survey, and is typically shown on a projection or screen, so
the participants can collectively view the questions and real-time
responses, as the host/moderator guides them through the *Live Session*.

:::: note
::: title
Note
:::

The participant can see and answer the questions from their computer or
mobile device, but the results and real-time responses can **only** be
seen on the *Session Manager*.
::::

Initially, the *Session Manager* shows the title of the *Live Session*
survey, the link needed to access it, and a
`Waiting for attendees...`{.interpreted-text role="guilabel"} counter,
which populates as participants enter the *Live Session* survey.

Once the desired amount of participants have entered the *Live Session*
survey, the host/moderator can click the `Start`{.interpreted-text
role="guilabel"} button on the right side of the *Session Manager*
window to begin the *Live Session*.

:::: note
::: title
Note
:::

If the survey begins with a section title on the survey form, that
section title appears in the *Session Manager*, and the participant\'s
view of the survey informs them to [Pay attention to the host screen
until the next question]{.title-ref}. This message appears whenever a
section title appears during a *Live Session*.
::::

When the first question appears on the survey, the *Session Manager*
shows the question above an empty bar graph, showing the potential
answer options on the x-axis. The participants see the question and
selectable answer options on their computer or mobile device.

As participants submit their answers, a progress bar, in the upper-left
corner of the *Session Manager*, fills in. This is how *Live Session*
hosts/moderators know when every participant has submitted their
responses.

Then, when the desired amount of participants have submitted their
responses, the host/moderator clicks the
`Show Results`{.interpreted-text role="guilabel"} button on the right
side of the *Session Manager* to reveal the collective real-time
responses on the bar graph.

Once the host/moderator feels like the participants have had enough time
to view the real-time results, via the populated bar graph, they can
click the `Show Correct Answer(s)`{.interpreted-text role="guilabel"}
button on the right side of the *Session Manager* window. Doing so
highlights the correct response, if one has been designated, in green.
All incorrect responses are highlighted in red.

When the host/moderator feels the participants have had enough time to
take in the correct and incorrect responses, via the bar graph on the
*Session Manager*, they can click the `Next`{.interpreted-text
role="guilabel"} button to move on to the next portion of the survey.

Repeat this process until the survey is complete.

::: seealso
\- `create`{.interpreted-text role="doc"} -
`questions`{.interpreted-text role="doc"} - `scoring`{.interpreted-text
role="doc"}
:::




--- SOURCE: marketing/surveys/questions.md ---

# Create questions

In Odoo *Surveys*, crafting and tailoring survey questions is crucial
for `creating and
customizing surveys <../surveys/create>`{.interpreted-text role="doc"}.

Fortunately, Odoo provides numerous ways to configure tailored questions
for any kind of survey.

To access a list of *all* the questions that have been created in the
database, navigate to
`Surveys app --> Questions & Answers --> Questions`{.interpreted-text
role="menuselection"}. There, users can view and modify any question
from any survey.

However, there is only one place in the Odoo *Surveys* application where
survey questions can be created. To do that, navigate to a survey form,
by going to `Surveys app --> New`{.interpreted-text
role="menuselection"}, or by selecting any pre-existing survey from the
`Surveys`{.interpreted-text role="guilabel"} page (`Surveys app
--> Surveys`{.interpreted-text role="menuselection"}).

## Questions tab

On a survey form, users can view, access, add, and/or delete questions
(and sections) in the `Questions`{.interpreted-text role="guilabel"}
tab.

By default, two columns are present in the `Questions`{.interpreted-text
role="guilabel"} tab: `Title`{.interpreted-text role="guilabel"} (i.e.
the question) and `Question Type`{.interpreted-text role="guilabel"}.

If the `Randomized per Section`{.interpreted-text role="guilabel"}
option is enabled in the `Options`{.interpreted-text role="guilabel"}
tab of the survey form, a column titled,
`# Questions Randomly Picked`{.interpreted-text role="guilabel"} appears
in the `Questions`{.interpreted-text role="guilabel"} tab.

To reveal the `Mandatory Answer`{.interpreted-text role="guilabel"}
column on the `Questions`{.interpreted-text role="guilabel"} tab, which
indicates if questions require a mandatory answer or not, click the
`(optional columns)`{.interpreted-text role="guilabel"} icon located to
the far-right of the column titles.

![The slider drop-down menu showing the Mandatory Answer option in Odoo Surveys.](questions/slider-dropdown-mandatory-answer.png){.align-center}

### Create sections

A *section* divides the survey into organized parts, in order to
visually group similar questions together. To make a section, click
`Add a section`{.interpreted-text role="guilabel"} at the bottom of the
`Questions`{.interpreted-text role="guilabel"} tab, proceed to type in a
desired name for the section, then either press
`Enter`{.interpreted-text role="kbd"} or click away.

The section line appears in dark gray in the
`Questions`{.interpreted-text role="guilabel"} tab.

Then, drag-and-drop desired questions beneath a section, or
drag-and-drop a section title on top of (i.e. *before*) the desired
question(s) in the survey, in order to populate the section with
specific questions that fit the theme of the section.

If the `Randomized per Section`{.interpreted-text role="guilabel"}
option is enabled in the `Options`{.interpreted-text role="guilabel"}
tab of the survey form, the number [1]{.title-ref} appears, by default,
on the section line, beneath the `#
Questions Randomly Picked`{.interpreted-text role="guilabel"} column.

This indicates that [1]{.title-ref} question from that section will be
picked at random for each participant taking the survey, bypassing every
other, non-chosen question from that section. To change that number,
select that figure, and type in the desired number in its place. Then,
either press `Enter`{.interpreted-text role="kbd"}, or click away.

## Create questions

To create questions for the survey, click
`Add a question`{.interpreted-text role="guilabel"} in the
`Questions`{.interpreted-text role="guilabel"} tab.

Clicking `Add a question`{.interpreted-text role="guilabel"} opens the
`Create Sections and Questions`{.interpreted-text role="guilabel"}
pop-up window, in which a survey question can be created.

:::: important
::: title
Important
:::

There **must** be a survey title entered in order for the
`Create Sections and
Questions`{.interpreted-text role="guilabel"} pop-up window to appear.
If no title is entered for the survey, an error pop-up message appears
in the upper-right corner, instructing the user to enter a survey title.
::::

When all desired configurations are complete click either
`Save & Close`{.interpreted-text role="guilabel"} to save the question
and return to the survey form, or `Save & New`{.interpreted-text
role="guilabel"} to save the question and create a new one right away in
a fresh `Create Sections and Questions`{.interpreted-text
role="guilabel"} pop-up window.

Click `Discard`{.interpreted-text role="guilabel"} to discard the
question entirely.

### Create Sections and Questions pop-up window

![The Create Sections and Questions pop-up form in Odoo Surveys.](questions/create-sections-questions-popup.png){.align-center}

In the `Create Sections and Questions`{.interpreted-text
role="guilabel"} pop-up window, start by typing the question into the
`Question`{.interpreted-text role="guilabel"} field, located at the top
of the pop-up window.

Then, choose the desired `Question Type`{.interpreted-text
role="guilabel"}. A preview of each `Question Type`{.interpreted-text
role="guilabel"} is to the right of the
`Question Type`{.interpreted-text role="guilabel"} field, when a
`Question Type`{.interpreted-text role="guilabel"} is selected.

Choose from the following `Question Types`{.interpreted-text
role="guilabel"}:

- `Multiple choice: only one answer`{.interpreted-text role="guilabel"}:
  a multiple choice question, where only one answer is permitted.
- `Multiple choice: multiple answers allowed`{.interpreted-text
  role="guilabel"}: a multiple choice question, where more than answer
  is permitted.
- `Multiple Lines Text Box`{.interpreted-text role="guilabel"}: an
  open-ended question, where participants can type in a multiple line
  response.
- `Single Line Text Box`{.interpreted-text role="guilabel"}: an
  open-ended question, where participants can type in a single line
  response.
- `Numerical Value`{.interpreted-text role="guilabel"}: a number-based
  question, where participants must enter a number as a response.
- `Date`{.interpreted-text role="guilabel"}: a date-based question,
  where participants must enter a date (year-month-day) as a response.
- `Datetime`{.interpreted-text role="guilabel"}: a date-based question,
  where participants must enter a date *and* time (year-month-day,
  hour-minute-second) as a response.
- `Matrix`{.interpreted-text role="guilabel"}: a multiple-choice,
  multiple question, in a table/chart layout, where participants are
  presented with different questions on each row, and different answer
  options on each column.

:::: note
::: title
Note
:::

Different features appear in the `Answers`{.interpreted-text
role="guilabel"} and `Options`{.interpreted-text role="guilabel"} tabs,
depending on the chosen `Question Type`{.interpreted-text
role="guilabel"}.

However, the `Description`{.interpreted-text role="guilabel"} tab
**always** remains the same, regardless of the question type chosen.
::::

Once a `Question Type`{.interpreted-text role="guilabel"} has been
selected, there are three possible tabs where information can be
customized for the question. These include the
`Answers`{.interpreted-text role="guilabel"} tab (if applicable for the
chosen `Question Type`{.interpreted-text role="guilabel"}), the
`Description`{.interpreted-text role="guilabel"} tab, and the
`Options`{.interpreted-text role="guilabel"} tab.

Each tab offers a variety of different features, depending on what
`Question Type`{.interpreted-text role="guilabel"} was chosen.

#### Answers tab

The `Answers`{.interpreted-text role="guilabel"} tab **only** appears if
the selected `Question Type`{.interpreted-text role="guilabel"} provides
answer options to the participant.

However, if a custom response is required to answer the selected
`Question Type`{.interpreted-text role="guilabel"}, like a
`Multiple Lines Text Box`{.interpreted-text role="guilabel"}, for
example. Or, if the answer to the `Question Type`{.interpreted-text
role="guilabel"} is a number, date, or datetime, the
`Answers`{.interpreted-text role="guilabel"} tab disappears completely.

If the `Single Line Text Box`{.interpreted-text role="guilabel"} is
selected as the `Question Type`{.interpreted-text role="guilabel"}, the
`Answers`{.interpreted-text role="guilabel"} tab remains, although it
only provides two checkbox options: `Input
must be an email`{.interpreted-text role="guilabel"} and
`Save as user nickname`{.interpreted-text role="guilabel"}.

![The Single Line Text box question type answers tab in Odoo Surveys.](questions/single-line-answer-tab.png){.align-center}

If the `Input must be an email`{.interpreted-text role="guilabel"}
option is enabled, a new field, `Save as user
email`{.interpreted-text role="guilabel"} appears. If that box is
ticked, Odoo saves the participant\'s answer to that specific question
as their email address.

If the `Save as user nickname`{.interpreted-text role="guilabel"} option
is enabled, Odoo saves the participant\'s answer as its nickname.

For all other applicable `Question Type`{.interpreted-text
role="guilabel"} options that provide answer options to the participant,
the `Answers`{.interpreted-text role="guilabel"} tab appears the same.

![The answer tab with a multiple choice answer option selected in Odoo Surveys.](questions/multiple-choice-answer-options.png){.align-center}

From here, users can add answer options by clicking
`Add a line`{.interpreted-text role="guilabel"}, and typing in the
various answer options for that question. Then, either press
`Enter`{.interpreted-text role="kbd"} to lock in that answer option and
immediately add another one. Or, click away to simply lock in that
answer option.

The entered answer options appear in the `Choices`{.interpreted-text
role="guilabel"} column of the `Answers`{.interpreted-text
role="guilabel"} tab.

If any *Scoring* option is enabled in the `Options`{.interpreted-text
role="guilabel"} tab of the survey form, the `Correct`{.interpreted-text
role="guilabel"} and `Score`{.interpreted-text role="guilabel"} columns
appear to the right of the `Choices`{.interpreted-text role="guilabel"}
column.

To mark an answer option as correct, tick the box beneath the
`Correct`{.interpreted-text role="guilabel"} column for the respective
question. If
`Multiple choice: multiple answers allowed`{.interpreted-text
role="guilabel"} is set as the `Question Type`{.interpreted-text
role="guilabel"}, multiple answers in the `Choices`{.interpreted-text
role="guilabel"} column can be marked as `Correct`{.interpreted-text
role="guilabel"}.

In the `Score`{.interpreted-text role="guilabel"} column, designate how
many points (if any) should be rewarded to the participant for entering
that specific answer. It is possible to enter a negative amount as the
`Score`{.interpreted-text role="guilabel"} to take points away for an
incorrect response.

The option to upload a corresponding image to accompany the answer
options is available on the question line, beneath the
`Image`{.interpreted-text role="guilabel"} column, by clicking
`Upload your file`{.interpreted-text role="guilabel"}, and uploading the
desired image.

To delete any answer option, click the
`🗑️ (trash can)`{.interpreted-text role="guilabel"} icon to the
far-right of the question line.

An exception to that is if the `Matrix`{.interpreted-text
role="guilabel"} option is selected as the `Question
Type`{.interpreted-text role="guilabel"}. If that\'s chosen, the
`Answers`{.interpreted-text role="guilabel"} tab remains, but below the
typical `Choices`{.interpreted-text role="guilabel"} section, there is a
`Rows`{.interpreted-text role="guilabel"} section. That\'s because the
`Matrix`{.interpreted-text role="guilabel"} option provides an answer
table for participants to fill out.

![The answer tab with a matrix question type selected in Odoo Surveys.](questions/matrix-answer-tab.png){.align-center}

#### Description tab

In the `Description`{.interpreted-text role="guilabel"} tab of the
`Create Sections and Questions`{.interpreted-text role="guilabel"}
pop-up window is used to provide any kind of guidelines, instructions,
or any other type of supplemental material deemed necessary to help
participants answer/understand the question.

Entering a description is **not** required.

#### Options tab

In the `Options`{.interpreted-text role="guilabel"} tab of the
`Create Sections and Questions`{.interpreted-text role="guilabel"}
pop-up window, there are four available sections:
`Answers`{.interpreted-text role="guilabel"},
`Constraints`{.interpreted-text role="guilabel"}, `Conditional
Display`{.interpreted-text role="guilabel"}, and
`Live Sessions`{.interpreted-text role="guilabel"}.

##### Answers section

:::: note
::: title
Note
:::

Fields in the `Answers`{.interpreted-text role="guilabel"} section in
the `Options`{.interpreted-text role="guilabel"} tab of the `Create
Sections and Questions`{.interpreted-text role="guilabel"} pop-up window
vary, depending on the selected `Question Type`{.interpreted-text
role="guilabel"} and overall `Options`{.interpreted-text
role="guilabel"} configured on the survey form.
::::

###### Multiple Choice question types

If the selected `Question Type`{.interpreted-text role="guilabel"} is
either `Multiple choice: only one answer`{.interpreted-text
role="guilabel"} or
`Multiple choice: multiple answers allowed`{.interpreted-text
role="guilabel"}, there is a `Show Comments Field`{.interpreted-text
role="guilabel"} present in the `Answers`{.interpreted-text
role="guilabel"} section.

When enabled, two additional fields appear:
`Comment Message`{.interpreted-text role="guilabel"} and `Comment is an
answer`{.interpreted-text role="guilabel"}.

![The answers section of the options tab when a multiple choice question type is selected.](questions/multiple-choice-options-tab.png){.align-center}

In the `Comment Message`{.interpreted-text role="guilabel"} field, type
in a guiding message to help participants know what is expected of them
(e.g. [If other, please specify]{.title-ref}).

If the `Comment is an answer`{.interpreted-text role="guilabel"} option
is enabled, Odoo takes the participant\'s commented response as an
answer, and not just commentary on the question. This is best utilized
in surveys where there is no scoring option enabled.

###### Multiple Lines Text Box question type

If the selected `Question Type`{.interpreted-text role="guilabel"} is
`Multiple Lines Text Box`{.interpreted-text role="guilabel"}, a
`Placeholder`{.interpreted-text role="guilabel"} field appears in the
`Answers`{.interpreted-text role="guilabel"} section of the
`Options`{.interpreted-text role="guilabel"} tab.

![The placeholder field when a multiple lines text box option is chosen in Odoo Surveys.](questions/multiple-lines-placeholder.png){.align-center}

In the `Placeholder`{.interpreted-text role="guilabel"} field, enter a
guiding direction to help participants know what they should write in
the `Multiple Lines Text Box`{.interpreted-text role="guilabel"}
presented to them.

###### Single Line Text Box, Numerical Value, Date, Datetime question types

If the selected `Question Type`{.interpreted-text role="guilabel"} is
`Single Line Text Box`{.interpreted-text role="guilabel"}, `Numerical
Value`{.interpreted-text role="guilabel"}, `Date`{.interpreted-text
role="guilabel"}, or `Datetime`{.interpreted-text role="guilabel"}, two
options appear in the `Answers`{.interpreted-text role="guilabel"}
section of the `Options`{.interpreted-text role="guilabel"} tab:
`Validate Entry`{.interpreted-text role="guilabel"} and
`Placeholder`{.interpreted-text role="guilabel"}.

If the `Validate Entry`{.interpreted-text role="guilabel"} option is
enabled, two additional fields appear beneath:
`Min/Max Limits`{.interpreted-text role="guilabel"} and
`Validation Error`{.interpreted-text role="guilabel"}.

![The answers section of the option tab when a single line text box question type is chosen.](questions/single-line-validate-entry.png){.align-center}

In the `Min/Max Limits`{.interpreted-text role="guilabel"} field,
designate the minimum and maximum allowed quantities for that specific
question.

In the `Validation Error`{.interpreted-text role="guilabel"} field,
enter a custom message that Odoo displays when an answer is not valid.

In the `Placeholder`{.interpreted-text role="guilabel"} field, enter a
guiding direction to help participants know what they should write in
the `Multiple Lines Text Box`{.interpreted-text role="guilabel"}
presented to them.

##### Constraints section

The `Constraints`{.interpreted-text role="guilabel"} section in the
`Options`{.interpreted-text role="guilabel"} tab is the same, regardless
of the selected `Question Type`{.interpreted-text role="guilabel"}.

![The Constraints section in the options tab in Odoo Surveys.](questions/constraints-section.png){.align-center}

In the `Constraints`{.interpreted-text role="guilabel"} section, there
is one option available: `Mandatory Answer`{.interpreted-text
role="guilabel"}.

When `Mandatory Answer`{.interpreted-text role="guilabel"} is enabled,
that means that specific question requires an answer from the
participant before they can move on. Also, when
`Mandatory Answer`{.interpreted-text role="guilabel"} is enabled, that
reveals an additional field: `Error Message`{.interpreted-text
role="guilabel"}.

In the `Error Message`{.interpreted-text role="guilabel"} field, enter a
custom error message prompting the participant to provide an answer for
this question.

##### Conditional Display section

`Conditional Display`{.interpreted-text role="guilabel"} means the
question is **only** displayed if a specified conditional answer(s)
(i.e. `Triggering Answers`{.interpreted-text role="guilabel"}) has been
selected in a previous question(s).

:::: note
::: title
Note
:::

The `Conditional Display`{.interpreted-text role="guilabel"} section of
the `Options`{.interpreted-text role="guilabel"} tab is **not**
available when questions are randomly picked.
::::

There is only one field in the `Conditional Display`{.interpreted-text
role="guilabel"} section: `Triggering
Answers`{.interpreted-text role="guilabel"}.

![The Conditional Display section of the options tab in the Odoo Surveys application.](questions/conditional-display-section.png){.align-center}

In the `Triggering Answers`{.interpreted-text role="guilabel"} field,
select specific responses from previous questions that would trigger
this question. More than one answer can be selected. Leave the field
empty if the question should always be displayed.

##### Live Sessions section

The option in the `Live Sessions`{.interpreted-text role="guilabel"}
section of the `Options`{.interpreted-text role="guilabel"} tab are
**only** supported by *Live Session* surveys.

There is only one option available in the
`Live Sessions`{.interpreted-text role="guilabel"} section: `Question
Time Limit`{.interpreted-text role="guilabel"}.

![The Live Sessions section of the Option tab in the Odoo Surveys application.](questions/live-sessions-section.png){.align-center}

When the `Question Time Limit`{.interpreted-text role="guilabel"} option
is enabled, designate how much time (in `seconds`{.interpreted-text
role="guilabel"}) participants have to answer the question during a
*Live Session* survey.

:::: note
::: title
Note
:::

Survey text colors are directly linked to the colors used for the
`website theme
<../../websites/website/web_design/themes>`{.interpreted-text
role="doc"}.
::::




--- SOURCE: marketing/surveys/scoring.md ---

# Scoring surveys

To measure a survey participant\'s performance, knowledge, or overall
satisfaction, Odoo assigns points to survey answers. At the end of the
survey, these points are summed up, resulting in the participant\'s
final score.

To add points to questions, open the `Surveys`{.interpreted-text
role="guilabel"} application, choose the desired survey form, and then
click on the `Options`{.interpreted-text role="guilabel"} tab. Under the
`Scoring`{.interpreted-text role="guilabel"} section, choose between
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
two new options appear: the `Attempts
Limit`{.interpreted-text role="guilabel"} checkbox, which limits the
number of times a participant can attempt the survey, and the option to
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
`questions`{.interpreted-text role="doc"}
:::




--- SOURCE: marketing/surveys.md ---

show-content

:   

# Surveys

Companies gather valuable insights from customers and employees through
surveys, aiding informed decision-making.

With Odoo *Surveys*, users create various surveys, questionnaires,
certifications, assessments, and so much more. These can be used to
collect feedback, evaluate the success of a recent event, and measure
the satisfaction of customers and/or employees. This process yields
valuable insights into shifting market trends.

::: seealso
[Odoo Tutorials: Surveys](https://www.odoo.com/slides/surveys-62)
:::

:::::::: cards
::: {.card target="surveys/create"}
Create surveys

Discover how to create surveys with Odoo.
:::

::: {.card target="surveys/scoring"}
Scoring surveys

Learn how to create and analyze survey scores with Odoo.
:::

::: {.card target="surveys/questions"}
Create questions

See how to create, configure, and customize all types of survey
questions with Odoo.
:::

::: {.card target="surveys/live_session"}
Live Session surveys

Find out everything there is to know about Odoo\'s unique Live Session
surveys.
:::

::: {.card target="surveys/analysis"}
Survey analysis

Explore the various ways to analyze surveys using Odoo\'s in-depth
reporting pages.
:::
::::::::

## Dashboard

Upon opening the *Surveys* application, Odoo presents the main dashboard
of the *Surveys* application, otherwise known as the
`Surveys`{.interpreted-text role="guilabel"} page.

![The Odoo Surveys application dashboard in the default Kanban view.](surveys/surveys-dashboard.png){.align-center}

:::: tip
::: title
Tip
:::

The *Surveys* dashboard can be accessed at any time throughout the
application by clicking `Surveys`{.interpreted-text
role="menuselection"} from the header menu.
::::

In the upper-left corner, there is a `New`{.interpreted-text
role="guilabel"} button. When clicked, Odoo presents a blank survey form
that can be used to create a survey.

On the dashboard, all the surveys that have been created in the database
are displayed in a default Kanban view.

From left-to-right, after the survey name, the user who is responsible
for it, and the month it was created, each line on the *Surveys*
dashboard shows the following:

- Number of `Questions`{.interpreted-text role="guilabel"} in that
  particular survey

- `Average Duration`{.interpreted-text role="guilabel"} of the survey
  (how long it typically takes a participant to complete)

- Number of `Registered`{.interpreted-text role="guilabel"} participants
  for the survey

- Number of times that particular survey has been
  `Completed`{.interpreted-text role="guilabel"}

- Percentage and data bar showcasing how many people have
  `Passed`{.interpreted-text role="guilabel"} or become
  `Certified`{.interpreted-text role="guilabel"}

  :::: note
  ::: title
  Note
  :::

  The `Passed`{.interpreted-text role="guilabel"} percentage and bar
  **only** appears when a *Required Score* has been configured for that
  particular survey.

  The `Certified`{.interpreted-text role="guilabel"} percentage and bar
  **only** appears if that particular survey has the *Is a
  Certification* option enabled on the survey form.

  If neither `Passed`{.interpreted-text role="guilabel"} nor
  `Certified`{.interpreted-text role="guilabel"} appear on the line,
  that indicates the survey is without a *Required Score* and was not
  enabled with the *Is a Certification* option.
  ::::

- Number of `Courses`{.interpreted-text role="guilabel"} related to that
  survey, which **only** appears if more than one course has been
  created and attached to a single survey

:::: note
::: title
Note
:::

A half-trophy background image behind the survey name indicates that the
survey is a *Certification*.
::::

To the far-right of those data points on the survey lines, located on
the *Surveys* application dashboard, are a collection of buttons.

Those buttons are as follows:

- `Share`{.interpreted-text role="guilabel"}: click to reveal a
  `Share a Survey`{.interpreted-text role="guilabel"} pop-up form that
  can be used to invite potential participants to the survey - complete
  with a `Survey Link`{.interpreted-text role="guilabel"} that can be
  copied and sent to potential participants, and a
  `Send by Email`{.interpreted-text role="guilabel"} toggle switch.

  When the `Send by Email`{.interpreted-text role="guilabel"} toggle is
  active (green switch), additional fields appear, in which
  `Recipients`{.interpreted-text role="guilabel"},
  `Additional Emails`{.interpreted-text role="guilabel"}, and a
  `Subject`{.interpreted-text role="guilabel"} can be added to the
  email.

  Below that, a dynamic email template, complete with a
  `Start Certification`{.interpreted-text role="guilabel"} button
  appears, which can be modified, as well, if needed.

  `Attachments`{.interpreted-text role="guilabel"} can be added to the
  email, as well as an `Answer deadline`{.interpreted-text
  role="guilabel"} can be set, if needed.

  Once modifications are complete, click `Send`{.interpreted-text
  role="guilabel"} to send that email invite to all the email
  addresses/contacts listed in the `Recipients`{.interpreted-text
  role="guilabel"} field.

  ![The \'Share a Survey\' pop-up window in Odoo Surveys with the Send by Email toggled on.](surveys/share-survey-popup-email-toggle.png){.align-center}

  :::: tip
  ::: title
  Tip
  :::

  The default `Mail Template`{.interpreted-text role="guilabel"} for
  survey invites can be edited by navigating to
  `Settings --> Technical --> Email Templates`{.interpreted-text
  role="menuselection"} and searching for [Survey: Invite]{.title-ref}.
  ::::

  :::: note
  ::: title
  Note
  :::

  The `Send by Email`{.interpreted-text role="guilabel"} toggle switch
  is **not** present when the survey line has zero questions.

  The `Survey Link`{.interpreted-text role="guilabel"} only appears when
  the survey\'s *Access Mode* is set to *Anyone with the link*.

  The `Additional Emails`{.interpreted-text role="guilabel"} field only
  appears when the survey\'s *Require Login* field is **not** active.
  ::::

- `Test`{.interpreted-text role="guilabel"}: click to take a test
  version of the survey in a new tab, from the point-of-view of a survey
  participant, in order to check for any errors or inconsistencies.

- `See results`{.interpreted-text role="guilabel"}: click to reveal a
  new tab showcasing detailed metrics and graphical representations of
  all survey participants, questions, and responses for deeper analysis.

- `Start Live Session`{.interpreted-text role="guilabel"}: click to
  initiate a *Live session* survey, and reveal a session manager window
  in a new tab. This button is **not** present for surveys that have
  enabled the *Is a Certification* option on the survey form.

- `End Live Session`{.interpreted-text role="guilabel"}: click to end a
  *Live session* survey that has been officially started. This button
  option **only** appears on survey lines that have previously initiated
  a live session.

Above the buttons that are located to the far-right of the survey lines,
a `⋮ (three
dots)`{.interpreted-text role="guilabel"} icon appears when the cursor
hovers over that particular line. When the `⋮ (three
dots)`{.interpreted-text role="guilabel"} icon is clicked, a drop-down
menu with some configuration-related options appear:

The options are:

- `Edit Survey`{.interpreted-text role="guilabel"}: when clicked, Odoo
  reveals the survey form for that particular survey, which can then be
  modified in a number of different ways.
- `Share`{.interpreted-text role="guilabel"}: when clicked, Odoo reveals
  the `Share a Survey`{.interpreted-text role="guilabel"} pop-up form
  that can be used to invite potential participants to the survey.
- `Delete`{.interpreted-text role="guilabel"}: when clicked, Odoo
  presents a pop-up window, wherein the user **must** confirm they want
  to delete the survey entirely, which they can do by clicking the
  `Delete`{.interpreted-text role="guilabel"} button at the bottom of
  the pop-up window.
- `Color`{.interpreted-text role="guilabel"}: users can opt to choose a
  color to add to the survey line on the dashboard for added
  organizational purposes, if needed.

![The three-dot drop-down menu of options that appears on the Odoo Surveys dashboard.](surveys/three-dot-dropdown.png){.align-center}

Beneath the buttons that are located to the far-right of the survey
lines, there is an *Activities* button, represented by a
`🕘 (clock)`{.interpreted-text role="guilabel"} icon. When clicked, a
mini pop-up window appears, from which activities related to that
particular survey can be scheduled and customized.

![The Schedule Activities drop-down menu that appears on the Odoo Surveys dashboard.](surveys/schedule-activities-dropdown.png){.align-center}

### List view

The *Surveys* dashboard is shown in the Kanban view, by default, but
there is also a list view option available in the upper-right corner,
represented by a `≣ (bars)`{.interpreted-text role="guilabel"} icon.

When the `≣ (bars)`{.interpreted-text role="guilabel"} icon is clicked,
the survey related data is displayed in a list view.

![The list view option located on the Odoo Surveys application dashboard.](surveys/list-view.png){.align-center}

The columns shown on the *Surveys* app dashboard, while in list view,
are as follows:

- `Survey Title`{.interpreted-text role="guilabel"}
- `Responsible`{.interpreted-text role="guilabel"}
- `Average Duration`{.interpreted-text role="guilabel"}
- `Registered`{.interpreted-text role="guilabel"}
- `Success Ratio (%)`{.interpreted-text role="guilabel"}
- `Avg Score (%)`{.interpreted-text role="guilabel"}

:::: tip
::: title
Tip
:::

Additional columns can be added to the *Surveys* application dashboard,
while in list view, by clicking the *additional options* drop-down menu,
located to the far-right of the column titles, represented by a
`(slider with two dots)`{.interpreted-text role="guilabel"} icon.
::::

### Activities view

To have the *Surveys* application dashboard display nothing but the
activities associated to the surveys in the database, click the
`🕘 (clock)`{.interpreted-text role="guilabel"} icon to the far-right of
the other view options, located in the upper-right corner.

![The activities view option located on the Odoo Surveys dashboard.](surveys/activities-view.png){.align-center}

Doing so reveals a table with rows and columns. The rows show the
different surveys in the database, and the columns depict the various
activity types.

:::: note
::: title
Note
:::

A new survey cannot be created in this view, as it is solely for the
purpose of creating and viewing scheduled activities.
::::

## Create surveys

Learn about all the different options and configurations that can be
utilized when creating a survey in Odoo.

::: seealso
`surveys/create`{.interpreted-text role="doc"}
:::

## Scoring surveys

Discover how to measure a survey participant\'s performance, or overall
satisfaction, with Odoo\'s detailed (and fully customizable) survey
scoring options.

::: seealso
`surveys/scoring`{.interpreted-text role="doc"}
:::

## Create questions

With Odoo *Surveys*, there are many question types and options to choose
from, providing the ability to create any kind of unique survey,
questionnarire, and/or certification.

::: seealso
`surveys/questions`{.interpreted-text role="doc"}
:::

## Live Session surveys

The *Live Session* survey option available in Odoo can enhance in-person
demonstrations and presentations, where participants\' real-time
responses can be used to dictate where the conversation goes next.

::: seealso
`surveys/live_session`{.interpreted-text role="doc"}
:::

## Survey analysis

Once the surveys start to come in, it is time to analyze the responses
from your participants. Fortuantely, the in-depth reporting pages and
options available in Odoo *Surveys* provide countless ways to examine
everything related to surveys, and their submitted responses.

::: seealso
`surveys/analysis`{.interpreted-text role="doc"}
:::

::: {.toctree titlesonly=""}
surveys/create surveys/scoring surveys/questions surveys/live_session
surveys/analysis
:::


