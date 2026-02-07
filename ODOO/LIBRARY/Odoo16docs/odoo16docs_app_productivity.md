# ODOO DOCUMENTATION SUMMARY - CATEGORY: ODOO16DOCS_APP_PRODUCTIVITY



--- SOURCE: productivity/calendar/google.md ---

# Google Calendar synchronization

Synchronize Google Calendar with Odoo to see and manage meetings from
both platforms (updates go in both directions). This integration helps
organize schedules, so a meeting is never missed.

::: seealso
\- `/applications/general/users/google`{.interpreted-text role="doc"} -
`/applications/general/email_communication/google_oauth`{.interpreted-text
role="doc"}
:::

## Setup in Google

### Select (or create) a project

Create a new Google API project and enable the Google Calendar API.
First, go to the [Google API
Console](https://console.developers.google.com) and log into the Google
account.

:::: note
::: title
Note
:::

If this is the first time visiting this page, Google will prompt the
user to enter a country and agree to the Terms of Service. Select a
country from the drop-down list and agree to the
`ToS (Terms of Service)`{.interpreted-text role="abbr"}.
::::

Next, click `Select a project`{.interpreted-text role="guilabel"} and
select (or create) an API project to configure OAuth in, and store
credentials. Click `New Project`{.interpreted-text role="guilabel"}.

![Create a new API project to store credentials.](google/new-api-project.png){.align-center}

:::: tip
::: title
Tip
:::

Give the API Project a clear name, like \"Odoo Sync\", so it can be
easily identified.
::::

### Enable Google calendar API

Now, click on `Enabled APIs and Services`{.interpreted-text
role="guilabel"} in the left menu. Select `Enabled APIs
and Services`{.interpreted-text role="guilabel"} again if the
`Search bar`{.interpreted-text role="guilabel"} doesn\'t appear.

![Enable APIs and Services on the API Project.](google/enable-apis-services.png){.align-center}

After that, search for [Google Calendar API]{.title-ref} using the
search bar and select `Google
Calendar API`{.interpreted-text role="guilabel"} from the search
results. Click `Enable`{.interpreted-text role="guilabel"}.

![Enable the Google Calendar API.](google/enable-google-cal-api.png){.align-center}

### OAuth consent screen

Now that the API project has been created, OAuth should be configured.
To do that, click on `OAuth consent`{.interpreted-text role="guilabel"}
in the left menu and then select the `User Type`{.interpreted-text
role="guilabel"}.

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

In the second step, `OAuth Consent Screen`{.interpreted-text
role="guilabel"}, type [Odoo]{.title-ref} in the
`App name`{.interpreted-text role="guilabel"} field, select the email
address for the `User support email`{.interpreted-text role="guilabel"}
field, and type the email address for the
`Developer contact information`{.interpreted-text role="guilabel"}
section. Then, click `Save and
Continue`{.interpreted-text role="guilabel"}.

Skip the third step, `Scopes`{.interpreted-text role="menuselection"},
by clicking `Save and Continue`{.interpreted-text role="guilabel"}.

Next, if continuing in testing mode (External), add the email addresses
being configured under the `Test users`{.interpreted-text
role="guilabel"} step, by clicking on `Add Users`{.interpreted-text
role="guilabel"}, and then the `Save and
Continue`{.interpreted-text role="guilabel"} button. A summary of the
app registration appears.

Finally, scroll to the bottom, and click on
`Back to Dashboard`{.interpreted-text role="guilabel"}.

Now, the OAuth consent has been configured, and it\'s time to create
credentials.

### Create credentials

The *Client ID* and the *Client Secret* are both needed to connect
Google Calendar to Odoo. This is the last step in the Google console.
Begin by clicking `Credentials`{.interpreted-text role="guilabel"} in
the left menu. Then, click `Create Credentials`{.interpreted-text
role="guilabel"}, and select `OAuth client ID`{.interpreted-text
role="guilabel"}, Google will open a guide to create credentials.

Under `Create OAuth Client ID`{.interpreted-text role="menuselection"},
select `Website application`{.interpreted-text role="guilabel"} for the
`Application Type`{.interpreted-text role="guilabel"} field, and type
[My Odoo Database]{.title-ref} for the `Name`{.interpreted-text
role="guilabel"}.

- Under the `Authorized JavaScript Origins`{.interpreted-text
  role="guilabel"} section, click `+ Add URI`{.interpreted-text
  role="guilabel"} and type the company\'s Odoo full
  `URL (Uniform Resource Locator)`{.interpreted-text role="abbr"}
  address.
- Under the `Authorized redirect URIs`{.interpreted-text
  role="guilabel"} section, click `+ Add URI`{.interpreted-text
  role="guilabel"} and type the company\'s Odoo
  `URL (Uniform Resource Locator)`{.interpreted-text role="abbr"}
  address followed by [/google_account/authentication]{.title-ref}.
  Finally, click `Create`{.interpreted-text role="guilabel"}.

![Add the authorized JavaScript origins and the authorized redirect URIs.](google/uri.png){.align-center}

A `Client ID`{.interpreted-text role="guilabel"} and
`Client Secret`{.interpreted-text role="guilabel"} will appear, copy
these to a notepad.

## Setup in Odoo

Once the *Client ID* and the *Client Secret* are located, open the Odoo
database and go to
`Settings --> General Settings --> Integrations --> Google Calendar`{.interpreted-text
role="menuselection"}. Check the box next to
`Google Calendar`{.interpreted-text role="guilabel"}.

![The Google Calendar checkbox in General Settings.](google/settings-google-cal.png){.align-center}

Next, copy and paste the *Client ID* and the *Client Secret* from the
Google Calendar API credentials page into their respective fields below
the `Google Calendar`{.interpreted-text role="guilabel"} checkbox. Then,
click `Save`{.interpreted-text role="guilabel"}.

## Sync calendar in Odoo

Finally, open the `Calendar`{.interpreted-text role="menuselection"} app
in Odoo and click on the `Google`{.interpreted-text role="guilabel"}
sync button to sync Google Calendar with Odoo.

![Click the Google sync button in Odoo Calendar to sync Google Calendar with Odoo.](google/sync-google.png){.align-center}

:::: note
::: title
Note
:::

When syncing Google Calendar with Odoo for the first time, the page will
redirect to the Google Account. From there, select the
`Email Account`{.interpreted-text role="guilabel"} that should have
access, then select `Continue`{.interpreted-text role="guilabel"}
(should the app be unverifed), and finally select
`Continue`{.interpreted-text role="guilabel"} (to give permission for
the transfer of data)\`.
::::

![Give Odoo permission to access Google Calendar.](google/trust-odoo.png){.align-center}

Now, Odoo Calendar is successfully synced with Google Calendar!

:::: warning
::: title
Warning
:::

Odoo highly recommends testing the Google calendar synchronization on a
test database and a test email address (that is not used for any other
purpose) before attempting to sync the desired Google Calendar with the
user\'s production database.

Once a user synchronizes their Google calendar with the Odoo calendar:

- Creating an event in Odoo causes Google to send an invitation to all
  event attendees.
- Deleting an event in Odoo causes Google to send a cancellation to all
  event attendees.
- Adding a contact to an event causes Google to send an invitation to
  all event attendees.
- Removing a contact from an event causes Google to send a cancellation
  to all event attendees.

Events can be created in *Google Calendar* without sending a
notification by selecting `Don't Send`{.interpreted-text
role="guilabel"} when prompted to send invitation emails.
::::

## Troubleshoot sync

There may be times when the *Google Calendar* account does not sync
correctly with Odoo. Sync issues can be seen in the database logs.

In these cases, the account needs troubleshooting. A reset can be
performed using the `Reset Account`{.interpreted-text role="guilabel"}
button, which can be accessed by navigating to `Settings
app --> Manage Users`{.interpreted-text role="menuselection"}. Then,
select the user to modify the calendar, and click the
`Calendar`{.interpreted-text role="guilabel"} tab.

![Reset buttons highlighted on the calendar tab of the user.](google/google-reset.png){.align-center}

Next, click `Reset Account`{.interpreted-text role="guilabel"} under the
correct calendar.

### Reset options

The following reset options are available for troubleshooting Google
calendar sync with Odoo:

![Google calendar reset options in Odoo.](google/reset-calendar.png){.align-center}

`User's Existing Events`{.interpreted-text role="guilabel"}:

> - `Leave them untouched`{.interpreted-text role="guilabel"}: no
>   changes to the events.
> - `Delete from the current Google Calendar account`{.interpreted-text
>   role="guilabel"}: delete the events from *Google Calendar*.
> - `Delete from Odoo`{.interpreted-text role="guilabel"}: delete the
>   events from the Odoo calendar.
> - `Delete from both`{.interpreted-text role="guilabel"}: delete the
>   events from both *Google Calendar* and Odoo calendar.

`Next Synchronization`{.interpreted-text role="guilabel"}:

> - `Synchronize only new events`{.interpreted-text role="guilabel"}:
>   sync new events on *Google Calendar* and/or Odoo calendar.
> - `Synchronize all existing events`{.interpreted-text
>   role="guilabel"}: sync all events on *Google Calendar* and/or Odoo
>   calendar.

Click `Confirm`{.interpreted-text role="guilabel"} after making the
selection to modify the user\'s events and the calendar synchronization.

## Google OAuth FAQ

At times there can be misconfigurations that take place, and
troubleshooting is needed to resolve the issue. Below are the most
common errors that may occur when configuring the *Google Calendar* for
use with Odoo.

### Production vs. testing publishing status

Choosing `Production`{.interpreted-text role="guilabel"} as the
`Publishing Status`{.interpreted-text role="guilabel"} (instead of
`Testing`{.interpreted-text role="guilabel"}) displays the following
warning message:

[OAuth is limited to 100 sensitive scope logins until the OAuth consent
screen is verified. This may require a verification process that can
take several days.]{.title-ref}

To correct this warning, navigate to the [Google API
Platform](https://console.cloud.google.com/apis/credentials/consent). If
the `Publishing Status`{.interpreted-text role="guilabel"} is
`In Production`{.interpreted-text role="guilabel"}, click
`Back to Testing`{.interpreted-text role="guilabel"} to correct the
issue.

### No test users added

If no test users are added to the
`OAuth consent screen`{.interpreted-text role="guilabel"}, then an
`Error 403:
access_denied`{.interpreted-text role="guilabel"} populates.

![403 Access Denied Error.](google/403-error.png){.align-center}

To correct this error, return to the
`OAuth consent screen`{.interpreted-text role="guilabel"}, under `APIs &
Services`{.interpreted-text role="guilabel"}, and add test users to the
app. Add the email to be configured in Odoo.

### Application Type

When creating the credentials (OAuth *Client ID* and *Client Secret*),
if `Desktop App`{.interpreted-text role="guilabel"} is selected for the
`Application Type`{.interpreted-text role="guilabel"}, an
`Authorization Error`{.interpreted-text role="guilabel"} appears
(`Error 400:redirect_uri_mismatch`{.interpreted-text role="guilabel"}).

![Error 400 Redirect URI Mismatch.](google/error-400.png){.align-center}

To correct this error, delete the existing credentials, and create new
credentials, by selecting `Web Application`{.interpreted-text
role="guilabel"} for the `Application Type`{.interpreted-text
role="guilabel"}.

Then, under `Authorized redirect URIs`{.interpreted-text
role="guilabel"}, click `ADD URI`{.interpreted-text role="guilabel"},
and type:
[https://yourdbname.odoo.com/google_account/authentication]{.title-ref}
in the field, being sure to replace *yourdbname* in the URL with the
**real** Odoo database name.

:::: tip
::: title
Tip
:::

Ensure that the domain (used in the URI:
[https://yourdbname.odoo.com/google_account/authentication]{.title-ref})
is the exact same domain as configured in the [web.base.url]{.title-ref}
system parameter.

Access the [web.base.url]{.title-ref} by activating
`developer mode <developer-mode>`{.interpreted-text role="ref"}, and
navigating to
`Settings app --> Technical header menu --> Parameters section --> System
Parameters`{.interpreted-text role="menuselection"}.
::::




--- SOURCE: productivity/calendar/outlook.md ---

# Outlook Calendar synchronization

Synchronizing a user\'s *Outlook Calendar* with Odoo is useful for
keeping track of tasks and appointments across all related applications.

::: seealso
\- `../../general/users/azure`{.interpreted-text role="doc"} -
`../../general/email_communication/azure_oauth`{.interpreted-text
role="doc"}
:::

## Microsoft Azure setup

To sync the *Outlook Calendar* with Odoo\'s *Calendar*, a Microsoft
*Azure* account is required. Creating an account is free for users who
have never tried, or paid for, *Azure*. For more information, view the
account options on the [Azure
website](https://azure.microsoft.com/en-us/free/?WT.mc_id=A261C142F).

Refer to [Microsoft\'s
documentation](https://docs.microsoft.com/en-us/azure/active-directory/develop/quickstart-create-new-tenant)
on how to set up a Microsoft *Entra ID* (formally called Microsoft
*Azure Active Directory (Azure AD)*). This is an API console to manage
and register Microsoft applications.

Existing Microsoft *Entra ID* users should log in at the [Microsoft
Azure developer portal](https://portal.azure.com/#home). Next, select
`View`{.interpreted-text role="guilabel"} under the section labeled
`Manage Microsoft Entra ID`{.interpreted-text role="guilabel"}.

### Register application

After logging in with the Microsoft *Entra ID*, [register an
application](https://docs.microsoft.com/en-us/azure/active-directory/develop/quickstart-register-app).

To create an application, click `+ Add`{.interpreted-text
role="guilabel"} in the top menu. From the resulting drop-down menu,
select `App Registration`{.interpreted-text role="guilabel"}.

![Microsoft Azure management page with + Add and App Registration menu highlighted.](outlook/app-register.png){.align-center}

Enter a unique `Name`{.interpreted-text role="guilabel"} for the
connected application.

Choosing the appropriate `Supported account type`{.interpreted-text
role="guilabel"} is essential, or else the connected application will
not work. Users who wish to connect their *Outlook Calendar* to Odoo
should select the
`Accounts in any organizational directory (Any Microsoft Entra ID directory -
Multitenant) and personal Microsoft accounts (e.g. Skype, Xbox)`{.interpreted-text
role="guilabel"} option for `Supported
account types`{.interpreted-text role="guilabel"}.

When configuring the `Redirect URI`{.interpreted-text role="guilabel"},
choose the `Web`{.interpreted-text role="guilabel"} option from the
first drop-down menu. Then, enter the Odoo database URI (URL) followed
by [/microsoft_account/authentication]{.title-ref}.

::: example
Enter
[https://yourdbname.odoo.com/microsoft_account/authentication]{.title-ref}
for the `Redirect
URI`{.interpreted-text role="guilabel"}. Replace
[yourdbname.odoo.com]{.title-ref} with the
`URL (Uniform Resource Locator)`{.interpreted-text role="abbr"}.
:::

:::: tip
::: title
Tip
:::

Ensure the database\'s
`URL (Uniform Resource Locator)`{.interpreted-text role="abbr"} (domain)
used in the URI is the exact same domain as the one configured on the
[web.base.url]{.title-ref} system parameter.

Access the [web.base.url]{.title-ref} by activating
`developer mode <developer-mode>`{.interpreted-text role="ref"}, and
navigating to
`Settings app --> Technical header menu --> Parameters section --> System
Parameters`{.interpreted-text role="menuselection"}. Then, select it
from the `Key`{.interpreted-text role="guilabel"} list on the
`System Parameters`{.interpreted-text role="guilabel"} page.
::::

![The \"Supported account type\" and \"Redirect URI\" settings in the Microsoft Entra ID portal.](outlook/azure-register-application.png){.align-center}

For more information on the restrictions and limitations of URIs, check
Microsoft\'s [Redirect URI (reply URL) restrictions and
limitations](https://docs.microsoft.com/en-us/azure/active-directory/develop/reply-url)
page.

Finally, on the application registration page, click
`Register`{.interpreted-text role="guilabel"} button to complete the
application registration. The
`Application (client) ID`{.interpreted-text role="guilabel"} is
produced. Copy this value, as it is needed later, in the
`outlook_calendar/odoo_setup`{.interpreted-text role="ref"}.

![Application client ID highlighted in the essentials section of the newly created
application.](outlook/app-client-id.png){.align-center}

### Create client secret

The second credential needed to complete the synchronization of the
Microsoft *Outlook Calendar* is the *Client Secret*. The user **must**
add a client secret, as this allows Odoo to authenticate itself,
requiring no interaction from the user\'s side. *Certificates* are
optional.

To add a client secret, click `Certificates & secrets`{.interpreted-text
role="menuselection"} in the left menu. Then click
`+ New client secret`{.interpreted-text role="guilabel"} to create the
client secret.

![New client secret page with certificates and secrets menu and new client secret option
highlighted.](outlook/client-secret.png){.align-center}

Next, type a `Description`{.interpreted-text role="guilabel"}, and
select when the client secret `Expires`{.interpreted-text
role="guilabel"}. Available options include:
`90 days (3 months)`{.interpreted-text role="guilabel"},
`365 days (12 months)`{.interpreted-text role="guilabel"},
`545 days (18 months)`{.interpreted-text role="guilabel"},
`730 days (24 months)`{.interpreted-text role="guilabel"} or
`Custom`{.interpreted-text role="guilabel"}. The
`Custom`{.interpreted-text role="guilabel"} option allows the
administrator to set a `Start`{.interpreted-text role="guilabel"} and
`End`{.interpreted-text role="guilabel"} date.

Finally, click `Add`{.interpreted-text role="guilabel"} to
`Add a client secret`{.interpreted-text role="guilabel"}.

:::: tip
::: title
Tip
:::

Since resetting the synchronization can be tricky, Odoo recommends
setting the maximum allowed expiration date for the client secret (24
months or custom), so there is no need to re-synchronize soon.
::::

Copy the `Value`{.interpreted-text role="guilabel"} for use in the next
section.

:::: warning
::: title
Warning
:::

Client secret values cannot be viewed, except immediately after
creation. Be sure to save the secret when created *before* leaving the
page.
::::

## Configuration in Odoo {#outlook_calendar/odoo_setup}

In the Odoo database, go to
`Settings app --> Integrations section`{.interpreted-text
role="menuselection"}, and tick the checkbox beside the
`Outlook Calendar`{.interpreted-text role="guilabel"} setting. Remember
to click `Save`{.interpreted-text role="guilabel"} to implement the
changes.

![The \"Outlook Calendar\" setting activated in Odoo.](outlook/outlook-calendar-setting.png){.align-center}

From the Microsoft *Azure* portal, under the
`Overview`{.interpreted-text role="guilabel"} section of the
application, copy the `Application (Client) ID`{.interpreted-text
role="guilabel"}, if it has not already been copied, and paste it into
the `Client ID`{.interpreted-text role="guilabel"} field in Odoo.

![The \"Client ID\" in the Microsoft Azure portal.](outlook/client-id.png){.align-center}

Copy the previously-acquired `Value`{.interpreted-text role="guilabel"}
(Client Secret Value), and paste it into the
`Client Secret`{.interpreted-text role="guilabel"} field in Odoo.

![The \"Client Secret\" token to be copied from Microsoft to Odoo.](outlook/client-secret-value.png){.align-center}

Finally, on the Odoo `Settings --> General Settings`{.interpreted-text
role="menuselection"} page, click `Save`{.interpreted-text
role="guilabel"}.

## Sync with Outlook {#outlook/sync}

:::: warning
::: title
Warning
:::

Odoo highly recommends testing the Outlook calendar synchronization on a
test database and a test email address (that is not used for any other
purpose) before attempting to sync the desired Outlook Calendar with the
user\'s production database.

If the user has any past, present, or future events on their Odoo
calendar before syncing their Outlook calendar, Outlook will treat the
events pulled from Odoo\'s calendar during the sync as new events,
causing an email notification to be sent from Outlook to all the event
attendees.

To avoid unwanted emails being sent to all past, present, and future
event attendees, the user must add the events from the Odoo calendar to
the Outlook calendar before the first ever sync, delete the events from
Odoo, and then start the sync.

Even after synchronizing the Odoo Calendar with the Outlook calendar,
Outlook will still send a notification to all event participants every
time an event is edited (created, deleted, unarchived, or event
date/time changed), with no exceptions. This is a limitation that cannot
be fixed from Odoo\'s side.

In summary, once a user synchronizes their Outlook calendar with the
Odoo calendar:

- Creating an event in Odoo causes Outlook to send an invitation to all
  event attendees.
- Deleting an event in Odoo causes Outlook to send a cancellation to all
  event attendees.
- Unarchiving an event in Odoo causes Outlook to send an invitation to
  all event attendees.
- Archiving an event in Odoo causes Outlook to send a cancellation to
  all event attendees.
- Adding a contact to an event causes Outlook to send an invitation to
  all event attendees.
- Removing a contact from an event causes Outlook to send a cancellation
  to all event attendees.
::::

### Sync Odoo Calendar and Outlook

In the Odoo database, open to the *Calendar* module, and click the
`Outlook`{.interpreted-text role="guilabel"} sync button on the
right-side of the page, beneath the monthly calendar.

![The \"Outlook\" sync button in Odoo Calendar.](outlook/outlook-sync-button.png){.align-center}

The synchronization is a two-way process, meaning that events are
reconciled in both accounts (*Outlook* and Odoo). The page redirects to
a Microsoft login page, and the user is asked to log in to their
account, if they are not already. Finally, grant the required
permissions by clicking `Accept`{.interpreted-text role="guilabel"}.

![Authentication process on Microsoft Outlook OAuth page.](outlook/accept-terms.png){.align-center}

:::: note
::: title
Note
:::

All users that want to use the synchronization simply need to
`sync their calendar with
Outlook <outlook/sync>`{.interpreted-text role="ref"}. The configuration
of Microsoft\'s *Azure* account is only done once, as Microsoft *Entra
ID* tenants\' client IDs and client secrets are unique, and help the
user manage a specific instance of Microsoft cloud services for internal
and external users.
::::

::: seealso
\- `../../general/integrations/mail_plugins/outlook`{.interpreted-text
role="doc"} - `google`{.interpreted-text role="doc"}
:::

## Troubleshoot sync

There may be times when the *Microsoft Outlook Calendar* account does
not sync correctly with Odoo. Sync issues can be seen in the database
logs.

In these cases, the account needs troubleshooting. A reset can be
performed using the `Reset Account`{.interpreted-text role="guilabel"}
button, which can be accessed by navigating to `Settings
app --> Manage Users`{.interpreted-text role="menuselection"}. Then,
select the user to modify the calendar, and click on the
`Calendar`{.interpreted-text role="guilabel"} tab.

![Reset buttons highlighted on the calendar tab of the user.](outlook/outlook-reset.png){.align-center}

Next, click `Reset Account`{.interpreted-text role="guilabel"} under the
correct calendar.

### Reset options

The following reset options are available for troubleshooting *Microsoft
Outlook Calendar* sync with Odoo:

![Outlook calendar reset options in Odoo.](outlook/reset-calendar.png){.align-center}

`User's Existing Events`{.interpreted-text role="guilabel"}:

> - `Leave them untouched`{.interpreted-text role="guilabel"}: no
>   changes to the events.
> - `Delete from the current Microsoft Calendar account`{.interpreted-text
>   role="guilabel"}: delete the events from *Microsoft Outlook
>   Calendar*.
> - `Delete from Odoo`{.interpreted-text role="guilabel"}: delete the
>   events from the Odoo calendar.
> - `Delete from both`{.interpreted-text role="guilabel"}: delete the
>   events from both *Microsoft Outlook Calendar* and Odoo calendar.

`Next Synchronization`{.interpreted-text role="guilabel"}:

> - `Synchronize only new events`{.interpreted-text role="guilabel"}:
>   sync new events on *Microsoft Outlook Calendar* and/or Odoo
>   calendar.
> - `Synchronize all existing events`{.interpreted-text
>   role="guilabel"}: sync all events on *Microsoft Outlook Calendar*
>   and/or Odoo calendar.

Click `Confirm`{.interpreted-text role="guilabel"} after making the
selection to modify the user\'s events and the calendar synchronization.




--- SOURCE: productivity/calendar.md ---

nosearch

:   

# Calendar

::: {.toctree titlesonly=""}
calendar/outlook calendar/google
:::




--- SOURCE: productivity/discuss/ice_servers.md ---

# Configure ICE servers with Twilio

Odoo Discuss uses WebRTC API and peer-to-peer connections for voice and
video calls. If one of the call attendees is behind a symmetric NAT, you
need to configure an ICE server to establish a connection to the call
attendee. To set up an ICE server, first, create a Twilio account for
video calls, and then, connect that Twilio account to Odoo.

## Create a Twilio account

First, go to [Twilio](https://www.twilio.com) and click
`Sign up`{.interpreted-text role="guilabel"} to create a new Twilio
account. Next, enter your name and email address, create a password, and
accept Twilio\'s terms of service. Then, click
`Start your free trial`{.interpreted-text role="guilabel"}. Verify your
email address with Twilio, as per their instructions.

Next, enter your phone number into Twilio. Then, Twilio will send you an
SMS text message containing a verification code. Enter the verification
code into Twilio to verify your phone number.

After that, Twilio redirects to a welcome page. Use the following list
to answer Twilio\'s questions:

- For `Which Twilio product are you here to use?`{.interpreted-text
  role="guilabel"}, select `Video`{.interpreted-text role="guilabel"}.
- For `What do you plan to build with Twilio?`{.interpreted-text
  role="guilabel"}, select `Other`{.interpreted-text role="guilabel"}.
- For `How do you want to build with Twilio?`{.interpreted-text
  role="guilabel"}, select `With no code at all`{.interpreted-text
  role="guilabel"}.
- For `What is your goal today?`{.interpreted-text role="guilabel"},
  select `3rd party integrations`{.interpreted-text role="guilabel"}.

![The Twilio welcome page.](ice_servers/twilio-welcome.png){.align-center}

If necessary, change the billing country. Finally, click
`Get Started with Twilio`{.interpreted-text role="guilabel"}.

## Locate the Twilio Account SID and Auth Token

To locate the Account SID and Auth Token, go to the Twilio account
dashboard. Then, click `Develop`{.interpreted-text role="guilabel"} on
the sidebar. In the `Account Info`{.interpreted-text role="guilabel"}
section, locate the `Account SID`{.interpreted-text role="guilabel"} and
the `Auth Token`{.interpreted-text role="guilabel"}. Both of these are
needed to connect Twilio to Odoo.

![The Twilio Account SID and Auth Token can be found uner the Account Info section.](ice_servers/twilio-acct-info.png){.align-center}

## Connect Twilio to Odoo

Open the Odoo database and go to
`Settings --> General Settings --> Discuss`{.interpreted-text
role="menuselection"}. Check the box next to
`Use Twilio ICE servers`{.interpreted-text role="guilabel"} and enter
the Twilio account\'s `Account SID`{.interpreted-text role="guilabel"}
and `Auth Token`{.interpreted-text role="guilabel"}. Finally, click
`Save`{.interpreted-text role="guilabel"} to apply these changes.

![Enable the \"Use Twilio ICE servers\" option in Odoo General Settings.](ice_servers/connect-twilio-to-odoo.png){.align-center}

## Define a list of custom ICE servers

This step is not required for the Twilio configuration. However, if
Twilio is not configured or is not working at any given moment, Odoo
will fall back on the custom ICE servers list. The user must define the
list of custom ICE servers.

In `Settings --> General Settings --> Discuss`{.interpreted-text
role="menuselection"}, click the `ICE Servers`{.interpreted-text
role="guilabel"} button under `Custom ICE server list`{.interpreted-text
role="guilabel"}.

![The \"ICE Servers\" button in Odoo General Settings.](ice_servers/custom-ice-servers-list.png){.align-center}

Odoo will redirect to the `ICE servers`{.interpreted-text
role="guilabel"} page. Here you can define your own list of ICE servers.

![The \"ICE servers\" page in Odoo.](ice_servers/ice-servers-page.png){.align-center}

:::: note
::: title
Note
:::

For on-premise instances of Odoo, the package
[python3-gevent]{.title-ref} is necessary for the Discuss module to run
calls/video calls on Ubuntu (Linux) servers.
::::




--- SOURCE: productivity/discuss/team_communication.md ---

# Use channels for team communication

Use channels in the Odoo *Discuss* app to organize discussions between
individual teams, departments, projects, or any other group that
requires regular communication. With channels, employees can communicate
inside dedicated spaces within the Odoo database around specific topics,
updates, and latest developments having to do with the organization.

## Public and private channels

A *Public* channel can be seen by everyone, while a *Private* one is
only visible to users invited to it. To create a new channel, navigate
to the `Discuss`{.interpreted-text role="menuselection"} app, and then
click on the `➕ (plus)`{.interpreted-text role="guilabel"} icon next to
the `Channels`{.interpreted-text role="guilabel"} heading in the
left-side menu. After typing the name of the channel, two selectable
options will appear: The first is a channel with a hashtag
([\#]{.title-ref}) to indicate that it is a public channel; the second
option is a channel with a lock icon ([🔒]{.title-ref}) next to it, to
indicate that it is a private channel. Select the channel type that best
fits the communication needs.

![View of discuss\'s sidebar and a channel being created in Odoo Discuss.](team_communication/public-private-channel.png){.align-center}

:::: tip
::: title
Tip
:::

A public channel is best used when many employees need to access
information (such as company announcements), whereas a private channel
could be used whenever information should be limited to specific groups
(such as a specific department).
::::

### Configuration options

The channel\'s `Group Name`{.interpreted-text role="guilabel"},
`Description`{.interpreted-text role="guilabel"}, and
`Privacy`{.interpreted-text role="guilabel"} settings can be modified by
clicking on the channel\'s settings, represented by a
`⚙️ (gear)`{.interpreted-text role="guilabel"} icon in the left sidebar
menu, next to the channel\'s name.

![View of a channel\'s settings form in Odoo Discuss.](team_communication/channel-settings.png){.align-center}

#### Privacy and Members tabs

Changing `Who can follow the group's activities?`{.interpreted-text
role="guilabel"} controls which groups can have access to the channel.

:::: note
::: title
Note
:::

Allowing `Everyone`{.interpreted-text role="guilabel"} to follow a
private channel lets other users view and join it, as they would a
public one.
::::

When choosing `Invited people only`{.interpreted-text role="guilabel"},
specify in the `Members`{.interpreted-text role="guilabel"} tab which
members should be invited. Inviting members can also be done from the
*Discuss* app\'s main dashboard, by selecting the channel, clicking the
*add user* icon in the top-right corner of the dashboard, and finally
clicking `Invite to Channel`{.interpreted-text role="guilabel"} once all
the users have been added.

![View of Discuss\' option to invite members in Odoo Discuss.](team_communication/invite-channel.png){.align-center}

When the `Selected group of users`{.interpreted-text role="guilabel"}
option is selected, it reveals the ability to add an
`Authorized Group`{.interpreted-text role="guilabel"}, along with the
options to `Auto Subscribe Groups`{.interpreted-text role="guilabel"}
and `Auto Subscribe Departments`{.interpreted-text role="guilabel"}.

The option to `Auto Subscribe Groups`{.interpreted-text role="guilabel"}
automatically adds users of that particular user group as followers. In
other words, while `Authorized Groups`{.interpreted-text
role="guilabel"} limits which users can access the channel,
`Auto Subscribe Groups`{.interpreted-text role="guilabel"} automatically
adds users as members as long as they are part of a specific user group.
The same is true for `Auto Subscribe Departments`{.interpreted-text
role="guilabel"}.

## Quick search bar

Once at least 20 channels, direct messages, or live chat conversations
(if *Live Chat* module is installed on the database) are pinned in the
sidebar, a `Quick search…`{.interpreted-text role="guilabel"} bar is
displayed. This feature is a convenient way to filter conversations and
quickly find relevant communications.

![View of the Discuss\' sidebar emphasizing the quick search bar in Odoo Discuss.](team_communication/quick-search.png){.align-center}

### Finding channels

Click on the settings `⚙️ (gear)`{.interpreted-text role="guilabel"}
icon, located in the left sidebar, to the right of the
`CHANNELS`{.interpreted-text role="guilabel"} collapsible menu item.
Doing so will lead to a mosaic view containing all the public channels
available. Users can join or leave channels on this screen by clicking
the `JOIN`{.interpreted-text role="guilabel"} or
`LEAVE`{.interpreted-text role="guilabel"} buttons that appear in the
channel boxes.

There is also the ability to apply filtering criteria and save them for
later use. The `Search...`{.interpreted-text role="guilabel"} function
accepts wildcards by using the underscore character \[ [\_]{.title-ref}
\], and specific searches can be saved by using the
`Favorites --> Save Current Search`{.interpreted-text
role="menuselection"} drop-down menu.

![View of a channel being searched through filters in Odoo Discuss](team_communication/filter.png){.align-center}

## Linking channel in chatter

Channels can be linked in the chatter (log note) of a record in Odoo. To
do so, simply type: [\#]{.title-ref} and the channel name. Click or
press enter on the *channel* name. Upon logging the note a link to the
channel will appear. After clicking on the link a chat window with the
channel conversation will pop up in the lower right corner of the
screen.

Users are able to contribute to this group channel (either public or
member based) by typing messages in window and pressing *enter*.

![Channel linked in chatter with the channel open on the lower right quadrant.](team_communication/chatter-channel.png){.align-center}

::: seealso
\- `../discuss`{.interpreted-text role="doc"} -
`/applications/essentials/activities`{.interpreted-text role="doc"}
:::




--- SOURCE: productivity/discuss.md ---

show-content

:   

show-toc

:   

# Discuss

Odoo *Discuss* is an internal communication app that allows users to
connect through messages, notes, and file sharing, either through a
persistent chat window that works across applications, or through the
dedicated *Discuss* dashboard.

## Choose notifications preference {#discuss_app/notification_preferences}

Access user-specific preferences for the *Discuss* app by navigating to
`Settings app
--> Users --> User --> Preferences tab`{.interpreted-text
role="menuselection"}.

![View of the Preferences tab for Odoo Discuss.](discuss/preferences-user.png)

By default, the `Notification`{.interpreted-text role="guilabel"} field
is set as `Handle by Emails`{.interpreted-text role="guilabel"}. With
this setting enabled, a notification email will be sent by Odoo every
time a message is sent from the chatter, a note is sent with an
[@]{.title-ref} mention (from chatter), or a notification is sent for a
record that the user follows. Something that triggers a notification is
changing of the stage (if an emailis configured to be sent, for example
if the task is set to `Done`{.interpreted-text role="guilabel"}).

By choosing `Handle in Odoo`{.interpreted-text role="guilabel"}, the
above notifications are shown in the *Discuss* app\'s *inbox*. Messages
can have the following actions taken on them: respond with an emoji by
clicking `Add a Reaction`{.interpreted-text role="guilabel"}, or reply
to the message by clicking on `Reply`{.interpreted-text
role="guilabel"}. Additional actions may include starring the message by
clicking `Marked as Todo`{.interpreted-text role="guilabel"}, or pinning
the message by selecting `Pin`{.interpreted-text role="guilabel"} or
even mark the message as unread by selecting
`Marked as unread`{.interpreted-text role="guilabel"}.

![View of an inbox message and its action options in Odoo Discuss.](discuss/reactions-discuss.png)

Clicking `Mark as Todo`{.interpreted-text role="guilabel"} on a message
causes it to appear on the `Starred`{.interpreted-text role="guilabel"}
page, while clicking `Mark as Read`{.interpreted-text role="guilabel"}
moves the message to `History`{.interpreted-text role="guilabel"}.

![View of messages marked as todo in Odoo Discuss.](discuss/starred-messages.png)

## Start chatting

The first time a user logs in to their account, OdooBot sends a message
asking for permission to send desktop notifications for chats. If
accepted, the user will receive push notifications on their desktop for
the messages they receive, regardless of where the user is in Odoo.

![View of the messages under the messaging menu emphasizing the request for push
notifications for Odoo Discuss.](discuss/odoobot-push.png)

:::: tip
::: title
Tip
:::

To stop receiving desktop notifications, reset the notifications
settings of the browser.
::::

To start a chat, go to the `Discuss`{.interpreted-text
role="menuselection"} app and click on the `+ (plus)`{.interpreted-text
role="guilabel"} icon next to `Direct Messages`{.interpreted-text
role="guilabel"} or `Channels`{.interpreted-text role="guilabel"} in the
left menu of the dashboard.

![View of Discuss\'s panel emphasizing the titles channels and direct messages in Odoo
Discuss.](discuss/channels-direct-messages.png){height="400px"}

A company can also easily create
`public and private channels <discuss/team_communication>`{.interpreted-text
role="doc"}.

### Mentions in the chat and on the chatter

To mention a user within a chat or the chatter, type
[\@user-name]{.title-ref}; to refer to a channel, type
[#channel-name]{.title-ref}. The user mentioned will be notified in
their *inbox* or through an email, depending on their communication
settings.

![View of a couple of chat window messages for Odoo Discuss.](discuss/chat-windows.png)

:::: tip
::: title
Tip
:::

When a user is mentioned, the search list (list of names) suggests
values first based on the task\'s followers, and secondly on employees.
If the record being searched does not match with either a follower or
employee, the scope of the search becomes all partners.
::::

### User status

It is helpful to see what colleagues are up to and how quickly they can
respond to messages by checking their *status*. The status is shown on
the left side of a contact\'s name on the `Discuss`{.interpreted-text
role="guilabel"} sidebar, on the *messaging menu* and when listed in the
*chatter*.

- Green = online
- Orange = away
- White = offline
- Airplane = out of the office

![View of the contacts\' status for Odoo Discuss.](discuss/status.png){height="300px"}

::: seealso
\- `discuss/team_communication`{.interpreted-text role="doc"} -
`/applications/essentials/activities`{.interpreted-text role="doc"}
:::

::: {.toctree titlesonly=""}
discuss/team_communication discuss/ice_servers
:::




--- SOURCE: productivity/documents.md ---

# Documents

**Odoo Documents** allows you to store, view and manage files within
Odoo.

You can upload any type of file (max 64MB per file on Odoo Online), and
organize them in various workspaces.

::: seealso
\- [Odoo Documents: product page](https://www.odoo.com/app/documents) -
[Odoo Tutorials: Documents
basics](https://www.odoo.com/slides/slide/documents-basics-6841?fullscreen=1) -
[Odoo Tutorials: Using Documents with your Accounting
App](https://www.odoo.com/slides/slide/accounting-integration-and-workflow-actions-6853?fullscreen=1)
:::

## Configuration

By going to `Documents --> Configuration --> Settings`{.interpreted-text
role="menuselection"}, you can enable the centralization of files
attached to a specific area of your activity. For example, by ticking
`Human Resources`{.interpreted-text role="guilabel"}, your HR documents
are automatically available in the HR workspace, while documents related
to Payroll are automatically available in the Payroll sub-workspace .
You can change the default workspace by using the dropdown menu and edit
its properties by clicking the internal link button
(`➔`{.interpreted-text role="guilabel"}).

![Enable the centralization of files attached to a specific area of your activity.](documents/files-centralization.png){.align-center}

:::: note
::: title
Note
:::

\- If you enable the centralization of your accounting files and
documents, it is necessary to click on `Journals`{.interpreted-text
role="guilabel"} and define each journal independently to allow
automatic synchronization.

![Enable the centralization of files attached to your accounting.](documents/accounting-files-centralization.png){.align-center}

\- If you select a new workspace, existing documents aren\'t moved. Only
newly created documents will be found under the new workspace.
::::

## Workspaces

Workspaces are hierarchical folders having their own set of tags and
actions. Default workspaces exist, but you can create your own by going
to `Documents --> Configuration -->
Workspaces`{.interpreted-text role="menuselection"} and clicking on
`Create`{.interpreted-text role="guilabel"}.

:::: note
::: title
Note
:::

`Workspaces`{.interpreted-text role="guilabel"} and
`Sub-workspaces`{.interpreted-text role="guilabel"} can be created,
edited, or deleted by clicking on the gear icon `⚙`{.interpreted-text
role="guilabel"} on the left menu.
::::

![Create sub-workspaces from the left menu](documents/sub-workspaces-creation.png){.align-center}

## Tags

Tags are used within workspaces to add a level of differentiation
between documents. They are organized per category and filters can be
used to sort them.

:::: note
::: title
Note
:::

\- The tags of a parent workspace apply to the child workspaces
automatically. - Tags can be created and modified by going to
`Configuration --> Tags`{.interpreted-text role="menuselection"}. - Tags
can also be created, edited, or deleted, by clicking on the gear icon
`⚙`{.interpreted-text role="guilabel"}, on the left menu.
::::

## Documents management

When clicking on a specific document, the right panel displays different
options. On the top, additional options might be available:
`Download`{.interpreted-text role="guilabel"}, `Share`{.interpreted-text
role="guilabel"}, `Replace`{.interpreted-text role="guilabel"},
`Lock`{.interpreted-text role="guilabel"} or `Split`{.interpreted-text
role="guilabel"}. It is also possible to
`Open chatter`{.interpreted-text role="guilabel"} or
`Archive`{.interpreted-text role="guilabel"} the document.

![right panel options](documents/right-panel-options.png){.align-center}

Then, you can modify the name of your file by clicking on
`Document`{.interpreted-text role="guilabel"}. A
`Contact`{.interpreted-text role="guilabel"} or an
`Owner`{.interpreted-text role="guilabel"} can be assigned. The related
`Workspace`{.interpreted-text role="guilabel"} can be modified and it is
possible to access the related `Journal Entry`{.interpreted-text
role="guilabel"} or to add `Tags`{.interpreted-text role="guilabel"}.

:::: note
::: title
Note
:::

\- The `Contact`{.interpreted-text role="guilabel"} is the person
related to the document and assigned to it. He can only view the
document and not modify it. I.e.: an existing supplier in your database
is the contact for their bill. - The person who creates a document is,
by default `Owner`{.interpreted-text role="guilabel"} of it and has
complete rights to the document. It is possible to replace the owner of
a document. I.e.: an employee must be owner of a document to be able to
see it in \"My Profile\".
::::

Finally, different `Actions`{.interpreted-text role="guilabel"} are
available at the bottom of the right panel, depending on the workspace
where your document is stored.

## Workflow actions

Workflow actions help you streamline the management of your documents
and your overall business operations. These are automated actions that
can be created and customized for each workspace. For example, create
documents, process bills, sign, organize files, add tags to a file or
move it to another workspace with a single click etc. These workflow
actions appear on the right panel when it meets the criteria you set.

### Create workflow actions

To create workflow actions, go to
`Documents --> Configuration --> Actions`{.interpreted-text
role="menuselection"} and then click on `Create`{.interpreted-text
role="guilabel"}.

:::: note
::: title
Note
:::

An action applies to all `Child Workspaces`{.interpreted-text
role="guilabel"} under the `Parent Workspace`{.interpreted-text
role="guilabel"} you selected.
::::

### Set the conditions

You can `Create`{.interpreted-text role="guilabel"} a new
`Action`{.interpreted-text role="guilabel"} or edit an existing one. You
can define the `Action Name`{.interpreted-text role="guilabel"} and then
set the conditions that trigger the appearance of the action button
(`▶`{.interpreted-text role="guilabel"}) on the right-side panel when
selecting a file.

There are three basic types of conditions you can set:

1.  `Tags`{.interpreted-text role="guilabel"}: you can both use the
    `Contains`{.interpreted-text role="guilabel"} and
    `Does not contain`{.interpreted-text role="guilabel"} conditions,
    meaning the files *must have* or *mustn\'t have* the tags set here.
2.  `Contact`{.interpreted-text role="guilabel"}: the files must be
    associated with the contact set here.
3.  `Owner`{.interpreted-text role="guilabel"}: the files must be
    associated with the owner set here.

![Example of a workflow action\'s basic condition in Odoo Documents](documents/basic-condition-example.png){.align-center}

:::: tip
::: title
Tip
:::

If you don\'t set any conditions, the action button appears for all
files located inside the selected workspace.
::::

#### Advanced condition type: domain

:::: important
::: title
Important
:::

It is recommended to have some knowledge of Odoo development to properly
configure *Domain* filters.
::::

To access the *Domain* condition, the
`developer mode <developer-mode>`{.interpreted-text role="ref"} needs to
be activated. Once that\'s done, select the `Domain`{.interpreted-text
role="guilabel"} condition type, and click on
`Add Filter`{.interpreted-text role="guilabel"}.

![Activating the domain condition type in Odoo Documents](documents/activate-domain-condition.png){.align-center}

To create a rule, you typically select a `field`{.interpreted-text
role="guilabel"}, an `operator`{.interpreted-text role="guilabel"}, and
a `value`{.interpreted-text role="guilabel"}. For example, if you want
to add a workflow action to all the PDF files inside a workspace, set
the `field`{.interpreted-text role="guilabel"} to *Mime Type*, the
`operator`{.interpreted-text role="guilabel"} to *contains*, and the
`value`{.interpreted-text role="guilabel"} to *pdf*.

![Example of a workflow action\'s domain condition in Odoo Documents](documents/domain-condition-example.png){.align-center}

Click on `Add node`{.interpreted-text role="guilabel"} (plus-circle
icon) and `Add branch`{.interpreted-text role="guilabel"} (ellipsis
icon) to add conditions and sub-conditions. You can then specify if your
rule should match `ALL`{.interpreted-text role="guilabel"} or
`ANY`{.interpreted-text role="guilabel"} conditions. You can also edit
the rule directly using the `Code editor`{.interpreted-text
role="guilabel"}.

![Add a node or a branch to a workflow action\'s condition in Odoo Documents](documents/use-domain-condition.png){.align-center}

### Configure the actions

Select the `Actions`{.interpreted-text role="guilabel"} tab to set up
your action. You can simultaneously:

- **Set Contact**: add a contact to the file, or replace an existing
  contact with a new one.

- **Set Owner**: add an owner to the file, or replace an existing owner
  with a new one.

- **Move to Workspace**: move the file to any workspace.

- **Create**: create one of the following items attached to the file in
  your database:

  > - **Product template**: create a product you can edit directly.
  > - **Task**: create a Project task you can edit directly.
  > - **Signature request**: create a new Sign template to send out.
  > - **Sign directly**: create a Sign template to sign directly.
  > - **Vendor bill**: create a vendor bill using OCR and AI to scrape
  >   information from the file content.
  > - **Customer invoice**: create a customer invoice using OCR and AI
  >   to scrape information from the file.
  > - **Vendor credit note**: create a vendor credit note using OCR and
  >   AI to scrape information from the file.
  > - **Credit note**: create a customer credit note using OCR and AI to
  >   scrape information from the file.
  > - **Applicant**: create a new HR application you can edit directly.

- **Set Tags**: add, remove, and replace any number of tags.

- **Activities - Mark all as Done**: mark all activities linked to the
  file as done.

- **Activities - Schedule Activity**: create a new activity linked to
  the file as configured in the action. You can choose to set the
  activity on the document owner.

![Example of a workflow action Odoo Documents](documents/workflow-action-example.png){.align-center}

## Digitize documents with AI and optical character recognition (OCR)

Documents available in the Finance workspace can be digitized. Select
the document you want to digitize, click on
`Create Bill`{.interpreted-text role="guilabel"},
`Create Customer Invoice`{.interpreted-text role="guilabel"} or
`Create credit note`{.interpreted-text role="guilabel"}, and then click
on `Send for Digitization`{.interpreted-text role="guilabel"}.

::: seealso
`AI-powered document digitization <../finance/accounting/vendor_bills/invoice_digitization>`{.interpreted-text
role="doc"}
:::




--- SOURCE: productivity/knowledge/articles_editing.md ---

# Articles editing

## Add and style content

To start adding content, click anywhere on the page. Your cursor is
automatically set to write the article\'s first-level header. Once you
are done writing the title, press **enter** on your keyboard to move to
the next line.

![knowledge\'s user interface](articles_editing/ui.png){.align-center}

:::: tip
::: title
Tip
:::

Click `Untitled`{.interpreted-text role="guilabel"} on the left side of
the top bar to automatically match your h1
`(First-level header)`{.interpreted-text role="dfn"} title and the
article\'s name. To change the name of your article later, you must do
it manually. To do so, click the name on the top bar and proceed to the
modification.
::::

### Text editor

To stylize the text using the text editor, select the text to format.

Then, you can:

- Change the style by clicking `Normal`{.interpreted-text
  role="guilabel"}. Doing so opens a dropdown menu with multiple styles
  to choose from
  (`Normal, Code, Header 1 → Header 6, Quote`{.interpreted-text
  role="guilabel"});
- Format the text. Click `B`{.interpreted-text role="guilabel"} to put
  it in bold, `I`{.interpreted-text role="guilabel"} to put it in
  italic, `U`{.interpreted-text role="guilabel"} to underline, and
  `S`{.interpreted-text role="guilabel"} to strikethrough;
- Change the font color by clicking `A`{.interpreted-text
  role="guilabel"} or the background color by clicking the **pencil**
  icon:
  - To choose from a predefined theme color, click
    `Theme`{.interpreted-text role="guilabel"} and select the desired
    color.
  - To customize, click `Solid`{.interpreted-text role="guilabel"} and
    define a color using the wheel, by typing its hex code, or its RGBA
    values.
  - To use a gradient, click `Gradient`{.interpreted-text
    role="guilabel"}, choose a predefined gradient or click
    `Custom`{.interpreted-text role="guilabel"} to create a personalized
    gradient.
- To change the text\'s size, click the **size number** and select the
  desired size;
- Click the **lists** icons to turn the paragraph into an unordered
  list, an ordered list, or a checklist;
- Click the **chain** icon to insert or edit an URL link.

![Text editor\'s toolbox](articles_editing/style-and-colors.png){.align-center}

To format a whole paragraph, type [/]{.title-ref} anywhere in the text.
Doing so opens the **powerbox**, which allows:

- Changing a paragraph into lists (unordered, ordered, checklists).
- Changing a paragraph into a header (1 → 6), normal text,
  [code]{.title-ref}, or *quotes*.

### Cover pictures

You can customize your article by adding a cover picture and an icon.
Hover above the h1 title and click `Add Cover`{.interpreted-text
role="guilabel"}. A pop-up window opens to set a cover picture.

If your database and your Unsplash account are associated, the cover
picture is automatically selected based on the article\'s name. To
modify it, hover over the picture to make the buttons appear, click
`Change Cover`{.interpreted-text role="guilabel"}, and select another
image.

Retrieve images from different sources:

- Search the **Unsplash** database.
- Enter a picture\'s **URL**.
- **Upload** an image from a computer.

To remove the cover, hover over it to make the buttons appear and click
`Remove Cover`{.interpreted-text role="guilabel"}.

:::: note
::: title
Note
:::

\- To associate Unsplash with your database, please refer to
`/applications/general/integrations/unsplash`{.interpreted-text
role="doc"}. - The articles are responsive, and so are the cover
pictures. As a result, the images cannot be repositioned manually to fit
a particular screen, as they automatically resize depending on the
device.
::::

### Icons

To add an icon, hover above the h1 title and click
`Add Icon`{.interpreted-text role="guilabel"}. Doing this sets a random
emoji automatically. To change it, click it and select one from the
emoji window. To remove it, proceed equally and click the red-circled
`x`{.interpreted-text role="guilabel"}.

:::: note
::: title
Note
:::

\- The emoji is also displayed before the corresponding article in the
side panel hierarchic tree. - Click the emoji on the side panel to
change it without opening the related article.
::::

## Commands

To use a command, type [/]{.title-ref} and open the **powerbox**. Type
the command\'s name or select from multiple features to insert blocks,
images, files, etc. Some of them, such as [/Image]{.title-ref} or
[/Article]{.title-ref} are common to all the apps, but others are
inherent to the knowledge app and cannot be found or used in any other
application.

### List of commands

Commands are divided into multiple categories depending on their use.

::::::::: tabs
.. tab:: Structure

  --------------------------------------------------------------------------------------------
  Command                             Use
  ----------------------------------- --------------------------------------------------------
  `Bulleted list`{.interpreted-text   Create a bulleted list.
  role="guilabel"}                    

  `Numbered list`{.interpreted-text   Create a list with numbering.
  role="guilabel"}                    

  `Checklist`{.interpreted-text       Track tasks with a checklist.
  role="guilabel"}                    

  `Table`{.interpreted-text           Insert a table.
  role="guilabel"}                    

  `Separator`{.interpreted-text       Insert an horizontal rule separator.
  role="guilabel"}                    

  `Quote`{.interpreted-text           Add a blockquote section.
  role="guilabel"}                    

  `Code`{.interpreted-text            Add a code section.
  role="guilabel"}                    

  `2 columns`{.interpreted-text       Convert into 2 columns.
  role="guilabel"}                    

  `3 columns`{.interpreted-text       Convert into 3 columns.
  role="guilabel"}                    

  `4 columns`{.interpreted-text       Convert into 4 columns.
  role="guilabel"}                    
  --------------------------------------------------------------------------------------------

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

  `Switch direction`{.interpreted-text   Switch the text\'s direction.
  role="guilabel"}                       

  `Text`{.interpreted-text               Paragraph block.
  role="guilabel"}                       
  -----------------------------------------------------------------------------------------------

::: tab
Media
:::

  --------------------------------------------------------------------------------------
  Command                       Use
  ----------------------------- --------------------------------------------------------
  `Image`{.interpreted-text     Insert an image.
  role="guilabel"}              

  `Article`{.interpreted-text   Link an article.
  role="guilabel"}              
  --------------------------------------------------------------------------------------

::: tab
Navigation
:::

  ------------------------------------------------------------------------------------------
  Command                           Use
  --------------------------------- --------------------------------------------------------
  `Link`{.interpreted-text          Add a link.
  role="guilabel"}                  

  `Button`{.interpreted-text        Add a button.
  role="guilabel"}                  

  `Appointment`{.interpreted-text   Add a specific appointment.
  role="guilabel"}                  

  `Calendar`{.interpreted-text      Schedule an appointment.
  role="guilabel"}                  
  ------------------------------------------------------------------------------------------

::: tab
Widget
:::

  --------------------------------------------------------------------------------------
  Command                       Use
  ----------------------------- --------------------------------------------------------
  `3 Stars`{.interpreted-text   Insert a rating over 3 stars.
  role="guilabel"}              

  `5 Stars`{.interpreted-text   Insert a rating over 5 stars.
  role="guilabel"}              
  --------------------------------------------------------------------------------------

::: tab
Knowledge
:::

  -----------------------------------------------------------------------------------------------
  Command                                Use
  -------------------------------------- --------------------------------------------------------
  `Table of Content`{.interpreted-text   Add a table of content with the article\'s headings.
  role="guilabel"}                       

  `Index`{.interpreted-text              Show the first level of nested articles.
  role="guilabel"}                       

  `Outline`{.interpreted-text            Show all nested articles.
  role="guilabel"}                       

  `Item Kanban`{.interpreted-text        Insert a kanban view of article items.
  role="guilabel"}                       

  `Item List`{.interpreted-text          Insert a list view of article items.
  role="guilabel"}                       

  `File`{.interpreted-text               Embed a file that can be downloaded.
  role="guilabel"}                       

  `Template`{.interpreted-text           Add a template section that can be inserted in messages,
  role="guilabel"}                       terms & conditions, or description in other
                                         applications.
  -----------------------------------------------------------------------------------------------

::: tab
Basic Blocks
:::

  ----------------------------------------------------------------------------------------
  Command                         Use
  ------------------------------- --------------------------------------------------------
  `Signature`{.interpreted-text   Insert your signature.
  role="guilabel"}                

  ----------------------------------------------------------------------------------------
:::::::::

## Content from other apps

Knowledge allows to retrieve content views from other applications. To
do so, go to the targeted app and create the desired view. Then, click
`Favorite --> Insert view in article`{.interpreted-text
role="menuselection"} and select an article. The view is inserted at the
bottom of the selected article.

::: example
To retrieve the view below, we created it by going to
`Sales --> Graph icon -->
Pie Chart icon`{.interpreted-text role="menuselection"} and inserted it
by clicking `Favorite --> Insert view in article`{.interpreted-text
role="menuselection"} and selecting the *Sales Playbook* article.

![article view from the Sales app](articles_editing/inserted-view.png){.align-center}
:::

:::: important
::: title
Important
:::

Users who do **not** have access to the view will **not** be able to
access it in **Knowledge** even though they have access to the article
containing the view.
::::




--- SOURCE: productivity/knowledge/management.md ---

# Articles management

Managing articles effectively is key to maximizing the value of your
knowledge resources, whether working on a research project, studying for
an exam, or building a knowledge database for your business. Knowledge
allows you to fully manage your articles, from
`creation <management/create>`{.interpreted-text role="ref"} to
`removal <management/remove>`{.interpreted-text role="ref"}, through
`sharing
<management/share>`{.interpreted-text role="ref"} and
`structure <management/structure>`{.interpreted-text role="ref"}.

You can find most tools to manage articles by clicking the vertical
ellipsis button (`⋮`{.interpreted-text role="guilabel"}) at the right
side of the top bar. From there, you can move, lock, delete, or
duplicate an article.

![Menu with tools for the management of articles](management/toolbox.png)

## Creation, sharing, and removal of articles

### Creation {#management/create}

To create articles, click the `+ New`{.interpreted-text role="guilabel"}
button on the right side of the top bar or the `+`{.interpreted-text
role="guilabel"} button next to a category or another article.

:::: tip
::: title
Tip
:::

Create private articles quickly with the Alt/Option + C keyboard
shortcut.
::::

### Sharing {#management/share}

You can share articles with internal or external users. To do so, open
the share menu by clicking `Share`{.interpreted-text role="guilabel"} in
the top-right menu of articles.

#### Invite users

To share articles with specific users (internal or external, such as a
partner or a customer), click `Invite`{.interpreted-text
role="guilabel"}. This opens a pop-up window in which you can choose the
`Permission`{.interpreted-text role="guilabel"}
`(i.e, access rights) <management/categories>`{.interpreted-text
role="ref"} and enter the `Recipients`{.interpreted-text
role="guilabel"}\' name or email.

You can also restrict a specific user from accessing the article by
selecting `No access`{.interpreted-text role="guilabel"} permission.

![pop-up window to invite users to access a Knowledge article](management/invite.png)

#### Share online

To share articles **online**, activate the
`Share to web`{.interpreted-text role="guilabel"} button. Doing so
generates a URL link anyone can use to view the article.

Additionally, the share menu displays the default permission for
internal members along with all the users who have been granted specific
permission.

![Sharing menu with URL for online sharing and the list of members.](management/share-menu.png)

### Removal {#management/remove}

To remove an article, you can either **delete** it or **archive** it.

To delete an article, open it and click the vertical ellipsis button
`(⋮) -->
Delete`{.interpreted-text role="menuselection"}. The article is moved to
the trash for 30 days before being permanently deleted. To restore it,
click `Open the Trash`{.interpreted-text role="guilabel"}, select the
article, and click `Restore`{.interpreted-text role="guilabel"}.

To archive articles, click `Search`{.interpreted-text role="guilabel"},
select the article(s), and click
`Action --> Archive --> Archive`{.interpreted-text
role="menuselection"}. Archived articles are hidden from the search
menu. To retrieve an archived article, add a custom filter to display
them (`Search -->
Filters --> Add Custom Filter`{.interpreted-text role="menuselection"},
and set `Active`{.interpreted-text role="guilabel"} as
`is No`{.interpreted-text role="guilabel"}). Then, select the article(s)
and go to `Action --> Unarchive`{.interpreted-text
role="menuselection"}.

## Structure of articles {#management/structure}

Articles are organized into a hierarchical structure wherein the article
on top is a parent article, and those underneath are called nested
articles. This structure allows the grouping of related articles.

To establish this hierarchy, create new articles by clicking the
`+`{.interpreted-text role="guilabel"} button next to the parent-to-be
article, or move existing articles by either dragging and dropping them
under the parent-to-be or by clicking the vertical ellipsis button
(`⋮`{.interpreted-text role="guilabel"}), clicking `Move
To`{.interpreted-text role="guilabel"} on the toolbox and selecting the
article to use as a parent.

### Categories {#management/categories}

Additionally, articles are divided into four categories that can be
found on the left sidebar. These categories give articles default
**access rights**.

- `Favorites`{.interpreted-text role="guilabel"}: You can set any
  article you can access as a favorite. To do so, click the star-shaped
  icon (`★`{.interpreted-text role="guilabel"}) in the top-right menu of
  articles. Marking articles as **favorites** is user-specific and does
  not affect other users.
- `Workspace`{.interpreted-text role="guilabel"}: Articles displayed in
  that category are available to all internal users. These users have
  the right to read, modify or share these articles.
- `Shared`{.interpreted-text role="guilabel"}: Articles displayed in
  that category are those you shared with internal users, external
  users, or shared with you.
- `Private`{.interpreted-text role="guilabel"}: Articles displayed in
  that category are only available to you.

![Categories displayed in the left sidebar of Odoo Knowledge](management/left-sidebar-cat.png)




--- SOURCE: productivity/knowledge/properties.md ---

# Properties

Properties are fields containing data and that can be added to articles
by any user with **write** access. These fields are shared between all
the child articles and article items under the same parent.

:::: note
::: title
Note
:::

To be able to add properties, an article must be either a **child
article** or an **article item**.
::::

## Add property fields

Hover above the first-level header to make the buttons appear. Click
`⚙ Add
Properties --> Field Type`{.interpreted-text role="menuselection"},
select the type and add a default value if needed. To make the fields
appear in **kanban views**, check `View in Kanban`{.interpreted-text
role="guilabel"} as well. To validate and close the property creation
window, click anywhere.

![Dropdown of property fields types](properties/fields.png){.align-center}

The different types assess what the field content can be:

  ------------------------------------------------------------------------------------------
  Types                             Uses
  --------------------------------- --------------------------------------------------------
  `Text`{.interpreted-text          Allows adding any content with no restriction.
  role="guilabel"}                  

  `Checkbox`{.interpreted-text      Add a checkbox.
  role="guilabel"}                  

  `Integer`{.interpreted-text       Allows adding integer numbers.
  role="guilabel"}                  

  `Decimal`{.interpreted-text       Allows adding any number.
  role="guilabel"}                  

  `Date`{.interpreted-text          Allows selecting a date.
  role="guilabel"}                  

  `Date & Time`{.interpreted-text   Allows selecting a date and time.
  role="guilabel"}                  
  ------------------------------------------------------------------------------------------

Some **field types** need to be configured:

![property configuration form](properties/manyone.png){.align-center}

+-------------------------------+--------------------------------------------------------+
| Types                         | Uses                                                   |
+===============================+========================================================+
| `Selection`{.interpreted-text | Add a drop-down selection menu with restricted values  |
| role="guilabel"}              | that have been set at the property creation.           |
|                               |                                                        |
|                               | To set it up, click `Add a Value`{.interpreted-text    |
|                               | role="guilabel"} next to the                           |
|                               | `Values`{.interpreted-text role="guilabel"} field.     |
|                               | Enter predetermined values and press **enter** to      |
|                               | validate; you can enter as many values as needed.      |
|                               | Click anywhere to close the property creation window.  |
+-------------------------------+--------------------------------------------------------+
| `Tags`{.interpreted-text      | Allows creating and applying as many tags as needed.   |
| role="guilabel"}              |                                                        |
|                               | To set it up, enter your [new_tag]{.title-ref} in the  |
|                               | `Tags`{.interpreted-text role="guilabel"} field, and   |
|                               | press **enter** or click                               |
|                               | `Create "new_tag"`{.interpreted-text role="guilabel"}. |
|                               | Click anywhere to close the window. Then, add the tags |
|                               | into the property field. To do so, click the property  |
|                               | field and choose from the created tags; enter the      |
|                               | tags\' name and press **enter**; enter a new tag\'s    |
|                               | name and create a new one on the spot.                 |
+-------------------------------+--------------------------------------------------------+
| `Many2one`{.interpreted-text  | Choose from a list of records that result from a       |
| role="guilabel"}              | model\'s domain. You can only select one result.       |
|                               |                                                        |
|                               | To set it up, click `Search a Model`{.interpreted-text |
|                               | role="guilabel"} in the `Model`{.interpreted-text      |
|                               | role="guilabel"} field, select the model. Match all    |
|                               | records by clicking `## Record(s)`{.interpreted-text   |
|                               | role="guilabel"}, or filter the results by clicking    |
|                               | `+ Add Filter`{.interpreted-text role="guilabel"} and  |
|                               | show the records by clicking                           |
|                               | `## Record(s)`{.interpreted-text role="guilabel"}.     |
+-------------------------------+--------------------------------------------------------+
| `Many2many`{.interpreted-text | Choose from a list of records that result from a       |
| role="guilabel"}              | model\'s domain. You can select as many results as     |
|                               | needed.                                                |
|                               |                                                        |
|                               | To set it up, click `Search a Model`{.interpreted-text |
|                               | role="guilabel"} in the `Model`{.interpreted-text      |
|                               | role="guilabel"} field, select the model. Match all    |
|                               | records by clicking `## Record(s)`{.interpreted-text   |
|                               | role="guilabel"}, or filter the results by clicking    |
|                               | `+ Add Filter`{.interpreted-text role="guilabel"} and  |
|                               | show the records by clicking                           |
|                               | `## Record(s)`{.interpreted-text role="guilabel"}.     |
+-------------------------------+--------------------------------------------------------+

## Delete property fields

To remove a property, click the **pencil** icon next to the targeted
property, then click `Delete --> Delete`{.interpreted-text
role="menuselection"}.

:::: warning
::: title
Warning
:::

Once a property field is deleted, you cannot retrieve it.
::::

## Hide the property panel

To hide the property sidebar panel, click the gear
`(⚙)`{.interpreted-text role="guilabel"} button.




--- SOURCE: productivity/knowledge.md ---

show-content

:   

hide-page-toc

:   

show-toc

:   

# Knowledge

**Odoo Knowledge** is a multipurpose productivity app that allows
internal users to enrich their business knowledge base and provide
individually or collaboratively gathered information.

The pages on which they gather content are called *articles*. They are
mainly composed of a title and a body. The latter is an HTML field
containing text, images, links to other articles, records from other
models, templates, etc.

::: seealso
\- [Knowledge product page](https://www.odoo.com/app/knowledge)
:::

::: {.toctree titlesonly=""}
knowledge/articles_editing knowledge/management knowledge/properties
:::




--- SOURCE: productivity/sign/algeria.md ---

orphan

:   

# Odoo Sign legality in Algeria

`Odoo Sign <../sign>`{.interpreted-text role="doc"} is your trusted
partner for secure, efficient, and legally compliant electronic
signatures in Algeria.

## Legal framework for electronic signatures in Algeria

In Algeria, electronic signatures are regulated under the [Civil
Code](https://www.wipo.int/wipolex/en/legislation/details/14774) and the
Law 15 04 of Electronic Signature. The law establishes the legal basis
for acknowledging electronic records, contracts, and digital signatures.
The key points of the law include:

- **Legal recognition**: electronic signatures are legally equivalent to
  handwritten signatures if they meet certain criteria.
- **Reliability and security**: electronic signatures must be created
  with a secure method that can reliably identify the signatory and
  ensure the integrity of the signed document.
- **Qualified electronic signature**: digital signature generated using
  a digital certificate supplied by a qualified provider.

## How Odoo Sign complies with Algerian regulations

Odoo Sign ensures full compliance with the Electronic Signature Law of
Algeria by incorporating the following features:

- **Secure signature creation**: Odoo Sign utilizes advanced
  cryptographic techniques to ensure the authenticity and integrity of
  electronic signatures.
- **Third-party signature authenticator**: Odoo Online serves as an
  independent validation mechanism that adds an extra layer of security
  to the procurement process.
- **Audit trails**: detailed audit logs are maintained to provide
  evidence of the signing process, including timestamps, IP addresses,
  and identity verification.
- **Cryptographic traceability and immutability**: Odoo Sign ensures
  that any operation is logged securely. An audit log provides full
  transparency to all parties while preserving private data.
- **Multiple authentication means**: authentication by SMS, email, geoIP
  or handwritten electronic signature.

## Types of documents you can sign with Odoo Sign

Odoo Sign is versatile and can be used for a wide range of documents,
including but not limited to:

- **Contracts and agreements**: business contracts, employment
  agreements, and service contracts.
- **Financial documents**: loan agreements, investment documents, and
  financial reports.
- **HR documents**: employee onboarding forms, non-disclosure agreements
  (NDAs), and performance reviews.
- **Commercial transactions**: purchase orders, sales agreements, and
  supplier contracts.

## Potential exceptions

While Odoo Sign is broadly applicable, there are certain exceptions
where electronic signatures may not be suitable or legally recognized in
Algeria:

- **Wills and trusts**: documents related to inheritance, wills, and
  trusts often require handwritten signatures.
- **Real estate transactions**: some property transactions may still
  require notarized handwritten signatures.
- **Government forms**: specific government forms and applications may
  mandate physical signatures.

::: admonition
Disclaimer

The information provided on this page is for general informational
purposes only and does not constitute legal advice. While Odoo Sign
complies with the Electronic Signature Law of Algeria, users should
consult with legal professionals to ensure specific document types and
use cases meet all legal requirements. Compliance with additional
industry-specific regulations may also be necessary.
:::

*Last updated: June 21, 2024*




--- SOURCE: productivity/sign/angola.md ---

orphan

:   

# Odoo Sign legality in Angola

`Odoo Sign <../sign>`{.interpreted-text role="doc"} is your trusted
partner for secure, efficient, and legally compliant electronic
signatures in Angola.

## Legal framework for electronic signatures in Angola

In Angola, electronic signatures are regulated under the Presidential
Decree 312/2018 and Executive Order 74/2019. The law establishes the
legal basis for acknowledging electronic records, contracts, and digital
signatures. The key points of the law include:

- **Legal recognition**: electronic signatures are legally equivalent to
  handwritten signatures if they meet certain criteria.
- **Reliability and security**: electronic signatures must be created
  with a secure method that can reliably identify the signatory and
  ensure the integrity of the signed document.
- **Certified electronic signature**: digital signature generated using
  a digital certificate supplied by a qualified provider. In some cases,
  only the certified electronic signature has legal and juridical
  validity in Angola. In those cases, simple electronic signatures like
  the Odoo Signature only work as a proof of the agreement to celebrate
  the corresponding transaction, which will be submitted to the
  authority\'s criteria.

## How Odoo Sign complies with Angolan regulations

Odoo Sign ensures full compliance with the Electronic Signature Law of
Angola by incorporating the following features:

- **Secure signature creation**: Odoo Sign utilizes advanced
  cryptographic techniques to ensure the authenticity and integrity of
  electronic signatures.
- **Third-party signature authenticator**: Odoo Online serves as an
  independent validation mechanism that adds an extra layer of security
  to the procurement process.
- **Audit trails**: detailed audit logs are maintained to provide
  evidence of the signing process, including timestamps, IP addresses,
  and identity verification.
- **Cryptographic traceability and immutability**: Odoo Sign ensures
  that any operation is logged securely. An audit log provides full
  transparency to all parties while preserving private data.
- **Multiple authentication means**: authentication by SMS, email, geoIP
  or handwritten electronic signature.

## Types of documents you can sign with Odoo Sign

Odoo Sign is versatile and can be used for a wide range of documents,
including but not limited to:

- **Contracts and agreements**: business contracts, employment
  agreements, and service contracts.
- **Financial documents**: loan agreements, investment documents, and
  financial reports.
- **HR documents**: employee onboarding forms, non-disclosure agreements
  (NDAs), and performance reviews.
- **Commercial transactions**: purchase orders, sales agreements, and
  supplier contracts.

## Potential exceptions

While Odoo Sign is broadly applicable, there are certain exceptions
where electronic signatures may not be suitable or legally recognized in
Angola:

- **Wills and trusts**: documents related to inheritance, wills, and
  trusts often require handwritten signatures.
- **Real estate transactions**: some property transactions may still
  require notarized handwritten signatures.
- **Government forms**: specific government forms and applications may
  mandate physical signatures.

::: admonition
Disclaimer

The information provided on this page is for general informational
purposes only and does not constitute legal advice. While Odoo Sign
complies with the Electronic Signature Law of Angola, users should
consult with legal professionals to ensure specific document types and
use cases meet all legal requirements. Compliance with additional
industry-specific regulations may also be necessary.
:::

*Last updated: June 21, 2024*




--- SOURCE: productivity/sign/argentina.md ---

orphan

:   

# Odoo Sign legality in Argentina

`Odoo Sign <../sign>`{.interpreted-text role="doc"} is your trusted
partner for secure, efficient, and legally compliant electronic
signatures in Argentina.

## Legal framework for electronic signatures in Argentina

In Argentina, electronic signatures are regulated under the [Digital
Signature
Law](https://www.argentina.gob.ar/normativa/nacional/70749/actualizacion),
and the [Civil and Commercial
Code](https://www.wipo.int/wipolex/en/legislation/details/19085). The
law governs transactions performed through electronic means and the use
of electronic signatures. The key points of the law include:

- **Legal recognition**: electronic signatures are legally equivalent to
  handwritten signatures if they meet certain criteria.
- **Reliability and security**: electronic signatures must be created
  with a secure method that can reliably identify the signatory and
  ensure the integrity of the signed document.
- **Qualified digital signatures**: the law recognizes electronic
  signatures supported by digital certificates issued by accredited
  Certification Service Providers.

## How Odoo Sign complies with Argentinian regulations

Odoo Sign ensures full compliance with the Electronic Signature Law of
Argentina by incorporating the following features:

- **Secure signature creation**: Odoo Sign utilizes advanced
  cryptographic techniques to ensure the authenticity and integrity of
  electronic signatures.
- **Third-party signature authenticator**: Odoo Online serves as an
  independent validation mechanism that adds an extra layer of security
  to the procurement process.
- **Audit trails**: detailed audit logs are maintained to provide
  evidence of the signing process, including timestamps, IP addresses,
  and identity verification.
- **Cryptographic traceability and immutability**: Odoo Sign ensures
  that any operation is logged securely. An audit log provides full
  transparency to all parties while preserving private data.
- **Multiple authentication means**: authentication by SMS, email, geoIP
  or handwritten electronic signature.

## Types of documents you can sign with Odoo Sign

Odoo Sign is versatile and can be used for a wide range of documents,
including but not limited to:

- **Contracts and agreements**: business contracts, employment
  agreements, and service contracts.
- **Financial documents**: loan agreements, investment documents, and
  financial reports.
- **HR documents**: employee onboarding forms, non-disclosure agreements
  (NDAs), and performance reviews.
- **Commercial transactions**: purchase orders, sales agreements, and
  supplier contracts.

## Potential exceptions

While Odoo Sign is broadly applicable, there are certain exceptions
where electronic signatures may not be suitable or legally recognized in
Argentina:

- **Wills and trusts**: documents related to inheritance, wills, and
  trusts often require handwritten signatures.
- **Real estate transactions**: some property transactions may still
  require notarized handwritten signatures.
- **Government forms**: specific government forms and applications may
  mandate physical signatures.

::: admonition
Disclaimer

The information provided on this page is for general informational
purposes only and does not constitute legal advice. While Odoo Sign
complies with the Electronic Signature Law of Argentina, users should
consult with legal professionals to ensure specific document types and
use cases meet all legal requirements. Compliance with additional
industry-specific regulations may also be necessary.
:::

*Last updated: June 21, 2024*




--- SOURCE: productivity/sign/australia.md ---

orphan

:   

# Odoo Sign legality in Australia

`Odoo Sign <../sign>`{.interpreted-text role="doc"} is your trusted
partner for secure, efficient, and legally compliant electronic
signatures in Australia.

## Legal framework for electronic signatures in Australia

In Australia, electronic signatures are regulated under the [Electronic
Transactions Act
(ETA)](https://www.legislation.gov.au/C2004A00553/latest/text), the
[Electronic Transactions Regulations
(ETR)](https://www.legislation.wa.gov.au/legislation/prod/filestore.nsf/FileURL/mrdoc_23907.pdf/$FILE/Electronic%20Transactions%20Regulations%202012%20-%20%5B00-a0-04%5D.pdf?OpenElement)
and local regulations in each state. The law governs transactions
performed through electronic means and the use of electronic signatures.
The key points of the law include:

- **Legal recognition**: electronic signatures are legally equivalent to
  handwritten signatures if they meet certain criteria.
- **Reliability and security**: electronic signatures must be created
  with a secure method that can reliably identify the signatory and
  ensure the integrity of the signed document.

## How Odoo Sign complies with Australian regulations

Odoo Sign ensures full compliance with the Electronic Signature Law of
Australia by incorporating the following features:

- **Secure signature creation**: Odoo Sign utilizes advanced
  cryptographic techniques to ensure the authenticity and integrity of
  electronic signatures.
- **Third-party signature authenticator**: Odoo Online serves as an
  independent validation mechanism that adds an extra layer of security
  to the procurement process.
- **Audit trails**: detailed audit logs are maintained to provide
  evidence of the signing process, including timestamps, IP addresses,
  and identity verification.
- **Cryptographic traceability and immutability**: Odoo Sign ensures
  that any operation is logged securely. An audit log provides full
  transparency to all parties while preserving private data.
- **Multiple authentication means**: authentication by SMS, email, geoIP
  or handwritten electronic signature.

## Types of documents you can sign with Odoo Sign

Odoo Sign is versatile and can be used for a wide range of documents,
including but not limited to:

- **Contracts and agreements**: business contracts, employment
  agreements, and service contracts.
- **Financial documents**: loan agreements, investment documents, and
  financial reports.
- **HR documents**: employee onboarding forms, non-disclosure agreements
  (NDAs), and performance reviews.
- **Commercial transactions**: purchase orders, sales agreements, and
  supplier contracts.

## Potential exceptions

While Odoo Sign is broadly applicable, there are certain exceptions
where electronic signatures may not be suitable or legally recognized in
Australia:

- **Wills and trusts**: documents related to inheritance, wills, and
  trusts often require handwritten signatures.
- **Real estate transactions**: some property transactions may still
  require notarized handwritten signatures.
- **Government forms**: specific government forms and applications may
  mandate physical signatures.

::: admonition
Disclaimer

The information provided on this page is for general informational
purposes only and does not constitute legal advice. While Odoo Sign
complies with the Electronic Signature Law of Australia, users should
consult with legal professionals to ensure specific document types and
use cases meet all legal requirements. Compliance with additional
industry-specific regulations may also be necessary.
:::

*Last updated: June 19, 2024*




--- SOURCE: productivity/sign/azerbaijan.md ---

orphan

:   

# Odoo Sign legality in Azerbaijan

`Odoo Sign <../sign>`{.interpreted-text role="doc"} is your trusted
partner for secure, efficient, and legally compliant electronic
signatures in Azerbaijan.

## Legal framework for electronic signatures in Azerbaijan

In Azerbaijan, electronic signatures are regulated under the [Law on
Electronic Digital
Signature](https://cis-legislation.com/document.fwx?rgn=144357). The law
establishes the legal basis for acknowledging electronic records,
contracts, and digital signatures. The key points of the law include:

- **Legal recognition**: electronic signatures are legally equivalent to
  handwritten signatures if they meet certain criteria.
- **Reliability and security**: electronic signatures must be created
  with a secure method that can reliably identify the signatory and
  ensure the integrity of the signed document.
- **Digital signature certificate**: digital signature generated using a
  digital certificate supplied by a qualified provider.

## How Odoo Sign complies with Azerbaijani regulations

Odoo Sign ensures full compliance with the Electronic Signature Law of
Azerbaijan by incorporating the following features:

- **Secure signature creation**: Odoo Sign utilizes advanced
  cryptographic techniques to ensure the authenticity and integrity of
  electronic signatures.
- **Third-party signature authenticator**: Odoo Online serves as an
  independent validation mechanism that adds an extra layer of security
  to the procurement process.
- **Audit trails**: detailed audit logs are maintained to provide
  evidence of the signing process, including timestamps, IP addresses,
  and identity verification.
- **Cryptographic traceability and immutability**: Odoo Sign ensures
  that any operation is logged securely. An audit log provides full
  transparency to all parties while preserving private data.
- **Multiple authentication means**: authentication by SMS, email, geoIP
  or handwritten electronic signature.

## Types of documents you can sign with Odoo Sign

Odoo Sign is versatile and can be used for a wide range of documents,
including but not limited to:

- **Contracts and agreements**: business contracts, employment
  agreements, and service contracts.
- **Financial documents**: loan agreements, investment documents, and
  financial reports.
- **HR documents**: employee onboarding forms, non-disclosure agreements
  (NDAs), and performance reviews.
- **Commercial transactions**: purchase orders, sales agreements, and
  supplier contracts.

## Potential exceptions

While Odoo Sign is broadly applicable, there are certain exceptions
where electronic signatures may not be suitable or legally recognized in
Azerbaijan:

- **Wills and trusts**: documents related to inheritance, wills, and
  trusts often require handwritten signatures.
- **Real estate transactions**: some property transactions may still
  require notarized handwritten signatures.
- **Government forms**: specific government forms and applications may
  mandate physical signatures.

::: admonition
Disclaimer

The information provided on this page is for general informational
purposes only and does not constitute legal advice. While Odoo Sign
complies with the Electronic Signature Law of Azerbaijan, users should
consult with legal professionals to ensure specific document types and
use cases meet all legal requirements. Compliance with additional
industry-specific regulations may also be necessary.
:::

*Last updated: June 21, 2024*




--- SOURCE: productivity/sign/bangladesh.md ---

orphan

:   

# Odoo Sign legality in Bangladesh

`Odoo Sign <../sign>`{.interpreted-text role="doc"} is your trusted
partner for secure, efficient, and legally compliant electronic
signatures in Bangladesh.

## Legal framework for electronic signatures in Bangladesh

In Bangladesh, electronic signatures are regulated under the
[Information and Communication Technology
Act](https://samsn.ifj.org/wp-content/uploads/2015/07/Bangladesh-ICT-Act-2006.pdf).
The law recognizes the use of electronic documents and electronic
signatures for the execution of contracts and other transactions. The
key points of the law include:

- **Legal recognition**: electronic signatures are legally equivalent to
  handwritten signatures if they meet certain criteria.
- **Reliability and security**: electronic signatures must be created
  with a secure method that can reliably identify the signatory and
  ensure the integrity of the signed document.
- **Special cases**: some cases require a traditional signature. These
  requirements can vary on a case-by-case basis, particularly when
  dealing with public sector entities.

## How Odoo Sign complies with Bangladeshi regulations

Odoo Sign ensures full compliance with the Electronic Signature Law of
Bangladesh by incorporating the following features:

- **Secure signature creation**: Odoo Sign utilizes advanced
  cryptographic techniques to ensure the authenticity and integrity of
  electronic signatures.
- **Third-party signature authenticator**: Odoo Online serves as an
  independent validation mechanism that adds an extra layer of security
  to the procurement process.
- **Audit trails**: detailed audit logs are maintained to provide
  evidence of the signing process, including timestamps, IP addresses,
  and identity verification.
- **Cryptographic traceability and immutability**: Odoo Sign ensures
  that any operation is logged securely. An audit log provides full
  transparency to all parties while preserving private data.
- **Multiple authentication means**: authentication by SMS, email, geoIP
  or handwritten electronic signature.

## Types of documents you can sign with Odoo Sign

Odoo Sign is versatile and can be used for a wide range of documents,
including but not limited to:

- **Contracts and agreements**: business contracts, employment
  agreements, and service contracts.
- **Financial documents**: loan agreements, investment documents, and
  financial reports.
- **HR documents**: employee onboarding forms, non-disclosure agreements
  (NDAs), and performance reviews.
- **Commercial transactions**: purchase orders, sales agreements, and
  supplier contracts.

## Potential exceptions

While Odoo Sign is broadly applicable, there are certain exceptions
where electronic signatures may not be suitable or legally recognized in
Bangladesh:

- **Wills and trusts**: documents related to inheritance, wills, and
  trusts often require handwritten signatures.
- **Real estate transactions**: some property transactions may still
  require notarized handwritten signatures.
- **Government forms**: specific government forms and applications may
  mandate physical signatures.

::: admonition
Disclaimer

The information provided on this page is for general informational
purposes only and does not constitute legal advice. While Odoo Sign
complies with the Electronic Signature Law of Bangladesh, users should
consult with legal professionals to ensure specific document types and
use cases meet all legal requirements. Compliance with additional
industry-specific regulations may also be necessary.
:::

*Last updated: June 21, 2024*




--- SOURCE: productivity/sign/brazil.md ---

orphan

:   

# Odoo Sign legality in Brazil

`Odoo Sign <../sign>`{.interpreted-text role="doc"} is your trusted
partner for secure, efficient, and legally compliant electronic
signatures in Brazil.

## Legal framework for electronic signatures in Brazil

In Brazil, electronic signatures are regulated under the [Brazilian
Civil
Code](https://webfiles-sc1.blackbaud.com/files/support/helpfiles/npoconnect-qa/content/resources/attachments/brazil-law-civil-code-13.777-2018.pdf)
and the Provisional Executive Act 2.200-2 (EA 2200) regulations. The law
governs transactions performed through electronic means and the use of
electronic signatures. The key points of the law include:

- **Legal recognition**: electronic signatures are legally equivalent to
  handwritten signatures if they meet certain criteria.
- **Reliability and security**: electronic signatures must be created
  with a secure method that can reliably identify the signatory and
  ensure the integrity of the signed document.
- **Infraestrutura de Chaves Públicas Brasileira (ICP-Brazil)**: Brazil
  maintains its own public key infrastructure (PKI) for digital
  certificates called "Infraestrutura de Chaves Públicas Brasileira".
  These are digital signature certificates or "seals" that serve as
  proof of identity of an individual for a certain purpose that can be
  used in special cases to provide additional security. These
  certificates are issued by Certification Authorities and are required
  by law for the signature of specific acts.

## How Odoo Sign complies with Brazilian regulations

Odoo Sign ensures full compliance with the Electronic Signature Law of
Brazil by incorporating the following features:

- **Secure signature creation**: Odoo Sign utilizes advanced
  cryptographic techniques to ensure the authenticity and integrity of
  electronic signatures.
- **Third-party signature authenticator**: Odoo Online serves as an
  independent validation mechanism that adds an extra layer of security
  to the procurement process.
- **Audit trails**: detailed audit logs are maintained to provide
  evidence of the signing process, including timestamps, IP addresses,
  and identity verification.
- **Cryptographic traceability and immutability**: Odoo Sign ensures
  that any operation is logged securely. An audit log provides full
  transparency to all parties while preserving private data.
- **Multiple authentication means**: authentication by SMS, email, geoIP
  or handwritten electronic signature.

## Types of documents you can sign with Odoo Sign

Odoo Sign is versatile and can be used for a wide range of documents,
including but not limited to:

- **Contracts and agreements**: business contracts, employment
  agreements, and service contracts.
- **Financial documents**: loan agreements, investment documents, and
  financial reports.
- **HR documents**: employee onboarding forms, non-disclosure agreements
  (NDAs), and performance reviews.
- **Commercial transactions**: purchase orders, sales agreements, and
  supplier contracts.

## Potential exceptions

While Odoo Sign is broadly applicable, there are certain exceptions
where electronic signatures may not be suitable or legally recognized in
Brazil:

- **Wills and trusts**: documents related to inheritance, wills, and
  trusts often require handwritten signatures.
- **Real estate transactions**: some property transactions may still
  require notarized handwritten signatures.
- **Government forms**: specific government forms and applications may
  mandate physical signatures.

::: admonition
Disclaimer

The information provided on this page is for general informational
purposes only and does not constitute legal advice. While Odoo Sign
complies with the Electronic Signature Law of Brazil, users should
consult with legal professionals to ensure specific document types and
use cases meet all legal requirements. Compliance with additional
industry-specific regulations may also be necessary.
:::

*Last updated: June 19, 2024*




--- SOURCE: productivity/sign/canada.md ---

orphan

:   

# Odoo Sign legality in Canada

`Odoo Sign <../sign>`{.interpreted-text role="doc"} is your trusted
partner for secure, efficient, and legally compliant electronic
signatures in Canada.

## Legal framework for electronic signatures in Canada

In Canada, electronic signatures are regulated under the [Personal
Information Protection and Electronic Documents Act
(PIPEDA)](https://laws-lois.justice.gc.ca/pdf/p-8.6.pdf) and local
regulations. The law establishes electronic equivalents to paper-based
documents and signatures at the federal level. The key points of the law
include:

- **Legal recognition**: electronic signatures are legally equivalent to
  handwritten signatures if they meet certain criteria.
- **Reliability and security**: electronic signatures must be created
  with a secure method that can reliably identify the signatory and
  ensure the integrity of the signed document.
- **Secure electronic signature**: the law recognizes digital signature
  certificates or "seals" that serve as proof of identity of an
  individual for a certain purpose that can be used in special cases to
  provide additional security. These certificates are issued by
  Certification Authorities and are required by law for the signature of
  specific acts.

## How Odoo Sign complies with Canadian regulations

Odoo Sign ensures full compliance with the Electronic Signature Law of
Canada by incorporating the following features:

- **Secure signature creation**: Odoo Sign utilizes advanced
  cryptographic techniques to ensure the authenticity and integrity of
  electronic signatures.
- **Third-party signature authenticator**: Odoo Online serves as an
  independent validation mechanism that adds an extra layer of security
  to the procurement process.
- **Audit trails**: detailed audit logs are maintained to provide
  evidence of the signing process, including timestamps, IP addresses,
  and identity verification.
- **Cryptographic traceability and immutability**: Odoo Sign ensures
  that any operation is logged securely. An audit log provides full
  transparency to all parties while preserving private data.
- **Multiple authentication means**: authentication by SMS, email, geoIP
  or handwritten electronic signature.

## Types of documents you can sign with Odoo Sign

Odoo Sign is versatile and can be used for a wide range of documents,
including but not limited to:

- **Contracts and agreements**: business contracts, employment
  agreements, and service contracts.
- **Financial documents**: loan agreements, investment documents, and
  financial reports.
- **HR documents**: employee onboarding forms, non-disclosure agreements
  (NDAs), and performance reviews.
- **Commercial transactions**: purchase orders, sales agreements, and
  supplier contracts.

## Potential exceptions

While Odoo Sign is broadly applicable, there are certain exceptions
where electronic signatures may not be suitable or legally recognized in
Canada:

- **Wills and trusts**: documents related to inheritance, wills, and
  trusts often require handwritten signatures.
- **Real estate transactions**: some property transactions may still
  require notarized handwritten signatures.
- **Government forms**: specific government forms and applications may
  mandate physical signatures.

::: admonition
Disclaimer

The information provided on this page is for general informational
purposes only and does not constitute legal advice. While Odoo Sign
complies with the Electronic Signature Law of Canada, users should
consult with legal professionals to ensure specific document types and
use cases meet all legal requirements. Compliance with additional
industry-specific regulations may also be necessary.
:::

*Last updated: June 19, 2024*




--- SOURCE: productivity/sign/chile.md ---

orphan

:   

# Odoo Sign legality in Chile

`Odoo Sign <../sign>`{.interpreted-text role="doc"} is your trusted
partner for secure, efficient, and legally compliant electronic
signatures in Chile.

## Legal framework for electronic signatures in Chile

In Chile, electronic signatures are regulated under the [Law 19.799 on
electronic documents, electronic signature and certification services of
such signature](https://www.bcn.cl/leychile/navegar?idNorma=196640),
[Decree 181/2002](https://www.bcn.cl/leychile/navegar?idNorma=201668)
and [Law No. 21,180, on Digital Transformation of the
State](https://www.bcn.cl/leychile/navegar?idNorma=1138479&tipoVersion=0).
The law establishes the legal basis for acknowledging electronic
records, contracts, and signatures. The key points of the law include:

- **Legal recognition**: electronic signatures are legally equivalent to
  handwritten signatures if they meet certain criteria.
- **Reliability and security**: electronic signatures must be created
  with a secure method that can reliably identify the signatory and
  ensure the integrity of the signed document.
- **Certified electronic signatures**: special electronic signature that
  incorporates certificates issued by a recognized certification
  authority.

## How Odoo Sign complies with Chilean regulations

Odoo Sign ensures full compliance with the Electronic Signature Law of
Chile by incorporating the following features:

- **Secure signature creation**: Odoo Sign utilizes advanced
  cryptographic techniques to ensure the authenticity and integrity of
  electronic signatures.
- **Third-party signature authenticator**: Odoo Online serves as an
  independent validation mechanism that adds an extra layer of security
  to the procurement process.
- **Audit trails**: detailed audit logs are maintained to provide
  evidence of the signing process, including timestamps, IP addresses,
  and identity verification.
- **Cryptographic traceability and immutability**: Odoo Sign ensures
  that any operation is logged securely. An audit log provides full
  transparency to all parties while preserving private data.
- **Multiple authentication means**: authentication by SMS, email, geoIP
  or handwritten electronic signature.

## Types of documents you can sign with Odoo Sign

Odoo Sign is versatile and can be used for a wide range of documents,
including but not limited to:

- **Contracts and agreements**: business contracts, employment
  agreements, and service contracts.
- **Financial documents**: loan agreements, investment documents, and
  financial reports.
- **HR documents**: employee onboarding forms, non-disclosure agreements
  (NDAs), and performance reviews.
- **Commercial transactions**: purchase orders, sales agreements, and
  supplier contracts.

## Potential exceptions

While Odoo Sign is broadly applicable, there are certain exceptions
where electronic signatures may not be suitable or legally recognized in
Chile:

- **Wills and trusts**: documents related to inheritance, wills, and
  trusts often require handwritten signatures.
- **Real estate transactions**: some property transactions may still
  require notarized handwritten signatures.
- **Government forms**: specific government forms and applications may
  mandate physical signatures.

::: admonition
Disclaimer

The information provided on this page is for general informational
purposes only and does not constitute legal advice. While Odoo Sign
complies with the Electronic Signature Law of Chile, users should
consult with legal professionals to ensure specific document types and
use cases meet all legal requirements. Compliance with additional
industry-specific regulations may also be necessary.
:::

*Last updated: June 21, 2024*




--- SOURCE: productivity/sign/china.md ---

orphan

:   

# Odoo Sign legality in China

`Odoo Sign <../sign>`{.interpreted-text role="doc"} is your trusted
partner for secure, efficient, and legally compliant electronic
signatures in China.

## Legal framework for electronic signatures in China

In China, electronic signatures are regulated under the Electronic
Signature Law (ESL) of the People\'s Republic of China, enacted in 2005
and amended in 2015. The law provides the foundation for the use and
legal recognition of electronic signatures. The key points of the ESL
include:

- **Legal recognition**: electronic signatures are legally equivalent to
  handwritten signatures if they meet certain criteria.
- **Reliability and security**: electronic signatures must be created
  with a secure method that can reliably identify the signatory and
  ensure the integrity of the signed document.
- **Certification Authorities (CAs)**: the law recognizes electronic
  signatures supported by digital certificates issued by accredited
  Certification Authorities (CAs).

## How Odoo Sign complies with Chinese regulations

Odoo Sign ensures full compliance with the Electronic Signature Law of
China by incorporating the following features:

- **Secure signature creation**: Odoo Sign utilizes advanced
  cryptographic techniques to ensure the authenticity and integrity of
  electronic signatures.
- **Third-party signature authenticator**: Odoo Online serves as an
  independent validation mechanism that adds an extra layer of security
  to the procurement process.
- **Audit trails**: detailed audit logs are maintained to provide
  evidence of the signing process, including timestamps, IP addresses,
  and identity verification.
- **Cryptographic traceability and immutability**: Odoo Sign ensures
  that any operation is logged securely. An audit log provides full
  transparency to all parties while preserving private data.
- **Multiple authentication means**: authentication by SMS, email, geoIP
  or handwritten electronic signature.

## Types of documents you can sign with Odoo Sign

Odoo Sign is versatile and can be used for a wide range of documents,
including but not limited to:

- **Contracts and agreements**: business contracts, employment
  agreements, and service contracts.
- **Financial documents**: loan agreements, investment documents, and
  financial reports.
- **HR documents**: employee onboarding forms, non-disclosure agreements
  (NDAs), and performance reviews.
- **Commercial transactions**: purchase orders, sales agreements, and
  supplier contracts.

## Potential exceptions

While Odoo Sign is broadly applicable, there are certain exceptions
where electronic signatures may not be suitable or legally recognized in
China:

- **Wills and trusts**: documents related to inheritance, wills, and
  trusts often require handwritten signatures.
- **Real estate transactions**: some property transactions may still
  require notarized handwritten signatures.
- **Government forms**: specific government forms and applications may
  mandate physical signatures.

::: admonition
Disclaimer

The information provided on this page is for general informational
purposes only and does not constitute legal advice. While Odoo Sign
complies with the Electronic Signature Law of China, users should
consult with legal professionals to ensure specific document types and
use cases meet all legal requirements. Compliance with additional
industry-specific regulations may also be necessary.
:::

*Last updated: June 19, 2024*




--- SOURCE: productivity/sign/colombia.md ---

orphan

:   

# Odoo Sign legality in Colombia

`Odoo Sign <../sign>`{.interpreted-text role="doc"} is your trusted
partner for secure, efficient, and legally compliant electronic
signatures in Colombia.

## Legal framework for electronic signatures in Colombia

In Colombia, electronic signatures are regulated under the [Law 529 of
1999](https://www.funcionpublica.gov.co/eva/gestornormativo/norma.php?i=4276#:~:text=%E2%80%9CPor%20medio%20de%20la%20cual,y%20se%20dictan%20otras%20disposiciones.%E2%80%9D).
The law establishes the legal basis for acknowledging electronic
records, contracts, and signatures. The key points of the law include:

- **Legal recognition**: electronic signatures are legally equivalent to
  handwritten signatures if they meet certain criteria.
- **Reliability and security**: electronic signatures must be created
  with a secure method that can reliably identify the signatory and
  ensure the integrity of the signed document.
- **Certified electronic signatures**: special electronic signature that
  incorporates certificates issued by a recognized certification
  authority. In some cases, only the certified electronic signature has
  legal and juridical validity in Colombia. In those cases, simple
  electronic signatures like the Odoo Signature only work as a proof of
  the agreement to celebrate the corresponding transaction, which will
  be submitted to the authority\'s criteria.

## How Odoo Sign complies with Colombian regulations

Odoo Sign ensures full compliance with the Electronic Signature Law of
Colombia by incorporating the following features:

- **Secure signature creation**: Odoo Sign utilizes advanced
  cryptographic techniques to ensure the authenticity and integrity of
  electronic signatures.
- **Third-party signature authenticator**: Odoo Online serves as an
  independent validation mechanism that adds an extra layer of security
  to the procurement process.
- **Audit trails**: detailed audit logs are maintained to provide
  evidence of the signing process, including timestamps, IP addresses,
  and identity verification.
- **Cryptographic traceability and immutability**: Odoo Sign ensures
  that any operation is logged securely. An audit log provides full
  transparency to all parties while preserving private data.
- **Multiple authentication means**: authentication by SMS, email, geoIP
  or handwritten electronic signature.

## Types of documents you can sign with Odoo Sign

Odoo Sign is versatile and can be used for a wide range of documents,
including but not limited to:

- **Contracts and agreements**: business contracts, employment
  agreements, and service contracts.
- **Financial documents**: loan agreements, investment documents, and
  financial reports.
- **HR documents**: employee onboarding forms, non-disclosure agreements
  (NDAs), and performance reviews.
- **Commercial transactions**: purchase orders, sales agreements, and
  supplier contracts.

## Potential exceptions

While Odoo Sign is broadly applicable, there are certain exceptions
where electronic signatures may not be suitable or legally recognized in
Colombia:

- **Wills and trusts**: documents related to inheritance, wills, and
  trusts often require handwritten signatures.
- **Real estate transactions**: some property transactions may still
  require notarized handwritten signatures.
- **Government forms**: specific government forms and applications may
  mandate physical signatures.

::: admonition
Disclaimer

The information provided on this page is for general informational
purposes only and does not constitute legal advice. While Odoo Sign
complies with the Electronic Signature Law of Colombia, users should
consult with legal professionals to ensure specific document types and
use cases meet all legal requirements. Compliance with additional
industry-specific regulations may also be necessary.
:::

*Last updated: June 21, 2024*




--- SOURCE: productivity/sign/dominican_republic.md ---

orphan

:   

# Odoo Sign legality in the Dominican Republic

`Odoo Sign <../sign>`{.interpreted-text role="doc"} is your trusted
partner for secure, efficient, and legally compliant electronic
signatures in the Dominican Republic.

## Legal framework for electronic signatures in the Dominican Republic

In the Dominican Republic, electronic signatures are regulated under the
[Law 126-02 on Electronic Commerce, Documents and Digital
Signatures](https://dgii.gov.do/legislacion/leyesTributarias/Documents/Otras%20Leyes%20de%20Inter%C3%A9s/126-02.pdf).
The law establishes the legal basis for acknowledging electronic
records, contracts, and digital signatures. The key points of the law
include:

- **Legal recognition**: electronic signatures are legally equivalent to
  handwritten signatures if they meet certain criteria.
- **Reliability and security**: electronic signatures must be created
  with a secure method that can reliably identify the signatory and
  ensure the integrity of the signed document.
- **Certified electronic signature**: digital signature generated using
  a digital certificate supplied by a qualified provider.

## How Odoo Sign complies with Dominican regulations

Odoo Sign ensures full compliance with the Electronic Signature Law of
the Dominican Republic by incorporating the following features:

- **Secure signature creation**: Odoo Sign utilizes advanced
  cryptographic techniques to ensure the authenticity and integrity of
  electronic signatures.
- **Third-party signature authenticator**: Odoo Online serves as an
  independent validation mechanism that adds an extra layer of security
  to the procurement process.
- **Audit trails**: detailed audit logs are maintained to provide
  evidence of the signing process, including timestamps, IP addresses,
  and identity verification.
- **Cryptographic traceability and immutability**: Odoo Sign ensures
  that any operation is logged securely. An audit log provides full
  transparency to all parties while preserving private data.
- **Multiple authentication means**: authentication by SMS, email, geoIP
  or handwritten electronic signature.

## Types of documents you can sign with Odoo Sign

Odoo Sign is versatile and can be used for a wide range of documents,
including but not limited to:

- **Contracts and agreements**: business contracts, employment
  agreements, and service contracts.
- **Financial documents**: loan agreements, investment documents, and
  financial reports.
- **HR documents**: employee onboarding forms, non-disclosure agreements
  (NDAs), and performance reviews.
- **Commercial transactions**: purchase orders, sales agreements, and
  supplier contracts.

## Potential exceptions

While Odoo Sign is broadly applicable, there are certain exceptions
where electronic signatures may not be suitable or legally recognized in
the Dominican Republic:

- **Wills and trusts**: documents related to inheritance, wills, and
  trusts often require handwritten signatures.
- **Real estate transactions**: some property transactions may still
  require notarized handwritten signatures.
- **Government forms**: specific government forms and applications may
  mandate physical signatures.

::: admonition
Disclaimer

The information provided on this page is for general informational
purposes only and does not constitute legal advice. While Odoo Sign
complies with the Electronic Signature Law of the Dominican Republic,
users should consult with legal professionals to ensure specific
document types and use cases meet all legal requirements. Compliance
with additional industry-specific regulations may also be necessary.
:::

*Last updated: June 21, 2024*




--- SOURCE: productivity/sign/ecuador.md ---

orphan

:   

# Odoo Sign legality in Ecuador

`Odoo Sign <../sign>`{.interpreted-text role="doc"} is your trusted
partner for secure, efficient, and legally compliant electronic
signatures in Ecuador.

## Legal framework for electronic signatures in Ecuador

In Ecuador, electronic signatures are regulated under the [Law on
Electronic Commerce, Electronic Signatures and Data
Messages](https://www.wipo.int/wipolex/en/legislation/details/18942).
The law establishes the legal basis for acknowledging electronic
records, contracts, and digital signatures. The key points of the law
include:

- **Legal recognition**: electronic signatures are legally equivalent to
  handwritten signatures if they meet certain criteria.
- **Reliability and security**: electronic signatures must be created
  with a secure method that can reliably identify the signatory and
  ensure the integrity of the signed document.
- **Qualified electronic signature**: digital signature generated using
  a digital certificate supplied by a qualified provider.

## How Odoo Sign complies with Ecuadoran regulations

Odoo Sign ensures full compliance with the Electronic Signature Law of
Ecuador by incorporating the following features:

- **Secure signature creation**: Odoo Sign utilizes advanced
  cryptographic techniques to ensure the authenticity and integrity of
  electronic signatures.
- **Third-party signature authenticator**: Odoo Online serves as an
  independent validation mechanism that adds an extra layer of security
  to the procurement process.
- **Audit trails**: detailed audit logs are maintained to provide
  evidence of the signing process, including timestamps, IP addresses,
  and identity verification.
- **Cryptographic traceability and immutability**: Odoo Sign ensures
  that any operation is logged securely. An audit log provides full
  transparency to all parties while preserving private data.
- **Multiple authentication means**: authentication by SMS, email, geoIP
  or handwritten electronic signature.

## Types of documents you can sign with Odoo Sign

Odoo Sign is versatile and can be used for a wide range of documents,
including but not limited to:

- **Contracts and agreements**: business contracts, employment
  agreements, and service contracts.
- **Financial documents**: loan agreements, investment documents, and
  financial reports.
- **HR documents**: employee onboarding forms, non-disclosure agreements
  (NDAs), and performance reviews.
- **Commercial transactions**: purchase orders, sales agreements, and
  supplier contracts.

## Potential exceptions

While Odoo Sign is broadly applicable, there are certain exceptions
where electronic signatures may not be suitable or legally recognized in
Ecuador:

- **Wills and trusts**: documents related to inheritance, wills, and
  trusts often require handwritten signatures.
- **Real estate transactions**: some property transactions may still
  require notarized handwritten signatures.
- **Government forms**: specific government forms and applications may
  mandate physical signatures.

::: admonition
Disclaimer

The information provided on this page is for general informational
purposes only and does not constitute legal advice. While Odoo Sign
complies with the Electronic Signature Law of Ecuador, users should
consult with legal professionals to ensure specific document types and
use cases meet all legal requirements. Compliance with additional
industry-specific regulations may also be necessary.
:::

*Last updated: June 21, 2024*




--- SOURCE: productivity/sign/egypt.md ---

orphan

:   

# Odoo Sign legality in Egypt

`Odoo Sign <../sign>`{.interpreted-text role="doc"} is your trusted
partner for secure, efficient, and legally compliant electronic
signatures in Egypt.

## Legal framework for electronic signatures in Egypt

In Egypt, electronic signatures are regulated under the [E-Signature
Law](https://www.itida.gov.eg/English/Documents/4.pdf). The law governs
transactions performed through electronic means and the use of digital
signatures. The key points of the law include:

- **Legal recognition**: electronic signatures are legally equivalent to
  handwritten signatures if they meet certain criteria.
- **Reliability and security**: electronic signatures must be created
  with a secure method that can reliably identify the signatory and
  ensure the integrity of the signed document.
- **Qualified electronic signatures**: law recognizes special digital
  signatures certified by a qualified authority. In some cases, this
  type of signature is mandatory.

## How Odoo Sign complies with Egyptian regulations

Odoo Sign ensures full compliance with the Electronic Signature Law of
Egypt by incorporating the following features:

- **Secure signature creation**: Odoo Sign utilizes advanced
  cryptographic techniques to ensure the authenticity and integrity of
  electronic signatures.
- **Third-party signature authenticator**: Odoo Online serves as an
  independent validation mechanism that adds an extra layer of security
  to the procurement process.
- **Audit trails**: detailed audit logs are maintained to provide
  evidence of the signing process, including timestamps, IP addresses,
  and identity verification.
- **Cryptographic traceability and immutability**: Odoo Sign ensures
  that any operation is logged securely. An audit log provides full
  transparency to all parties while preserving private data.
- **Multiple authentication means**: authentication by SMS, email, geoIP
  or handwritten electronic signature.

## Types of documents you can sign with Odoo Sign

Odoo Sign is versatile and can be used for a wide range of documents,
including but not limited to:

- **Contracts and agreements**: business contracts, employment
  agreements, and service contracts.
- **Financial documents**: loan agreements, investment documents, and
  financial reports.
- **HR documents**: employee onboarding forms, non-disclosure agreements
  (NDAs), and performance reviews.
- **Commercial transactions**: purchase orders, sales agreements, and
  supplier contracts.

## Potential exceptions

While Odoo Sign is broadly applicable, there are certain exceptions
where electronic signatures may not be suitable or legally recognized in
Egypt:

- **Wills and trusts**: documents related to inheritance, wills, and
  trusts often require handwritten signatures.
- **Real estate transactions**: some property transactions may still
  require notarized handwritten signatures.
- **Government forms**: specific government forms and applications may
  mandate physical signatures.

::: admonition
Disclaimer

The information provided on this page is for general informational
purposes only and does not constitute legal advice. While Odoo Sign
complies with the Electronic Signature Law of Egypt, users should
consult with legal professionals to ensure specific document types and
use cases meet all legal requirements. Compliance with additional
industry-specific regulations may also be necessary.
:::

*Last updated: June 19, 2024*




--- SOURCE: productivity/sign/ethiopia.md ---

orphan

:   

# Odoo Sign legality in Ethiopia

`Odoo Sign <../sign>`{.interpreted-text role="doc"} is your trusted
partner for secure, efficient, and legally compliant electronic
signatures in Ethiopia.

## Legal framework for electronic signatures in Ethiopia

In Ethiopia, electronic signatures are regulated under the [Electronic
Signature Proclamation No.
1072/2018](http://laws.eag.gov.et/Upload/CassationDecisionsDocument/fce05041-f22e-4930-a225-95748dd53c3e.pdf).
The law establishes the legal basis for acknowledging electronic
records, contracts, and digital signatures. The key points of the law
include:

- **Legal recognition**: electronic signatures are legally equivalent to
  handwritten signatures if they meet certain criteria.
- **Reliability and security**: electronic signatures must be created
  with a secure method that can reliably identify the signatory and
  ensure the integrity of the signed document.
- **Certificate electronic signature**: digital signature generated
  using a digital certificate supplied by a qualified provider.

## How Odoo Sign complies with Ethiopian regulations

Odoo Sign ensures full compliance with the Electronic Signature Law of
Ethiopia by incorporating the following features:

- **Secure signature creation**: Odoo Sign utilizes advanced
  cryptographic techniques to ensure the authenticity and integrity of
  electronic signatures.
- **Third-party signature authenticator**: Odoo Online serves as an
  independent validation mechanism that adds an extra layer of security
  to the procurement process.
- **Audit trails**: detailed audit logs are maintained to provide
  evidence of the signing process, including timestamps, IP addresses,
  and identity verification.
- **Cryptographic traceability and immutability**: Odoo Sign ensures
  that any operation is logged securely. An audit log provides full
  transparency to all parties while preserving private data.
- **Multiple authentication means**: authentication by SMS, email, geoIP
  or handwritten electronic signature.

## Types of documents you can sign with Odoo Sign

Odoo Sign is versatile and can be used for a wide range of documents,
including but not limited to:

- **Contracts and agreements**: business contracts, employment
  agreements, and service contracts.
- **Financial documents**: loan agreements, investment documents, and
  financial reports.
- **HR documents**: employee onboarding forms, non-disclosure agreements
  (NDAs), and performance reviews.
- **Commercial transactions**: purchase orders, sales agreements, and
  supplier contracts.

## Potential exceptions

While Odoo Sign is broadly applicable, there are certain exceptions
where electronic signatures may not be suitable or legally recognized in
Ethiopia:

- **Wills and trusts**: documents related to inheritance, wills, and
  trusts often require handwritten signatures.
- **Real estate transactions**: some property transactions may still
  require notarized handwritten signatures.
- **Government forms**: specific government forms and applications may
  mandate physical signatures.

::: admonition
Disclaimer

The information provided on this page is for general informational
purposes only and does not constitute legal advice. While Odoo Sign
complies with the Electronic Signature Law of Ethiopia, users should
consult with legal professionals to ensure specific document types and
use cases meet all legal requirements. Compliance with additional
industry-specific regulations may also be necessary.
:::

*Last updated: June 21, 2024*




--- SOURCE: productivity/sign/germany.md ---

orphan

:   

# Odoo Sign legality in Germany

`Odoo Sign <../sign>`{.interpreted-text role="doc"} is your trusted
partner for secure, efficient, and legally compliant electronic
signatures in Germany.

## Legal framework for electronic signatures in Germany

In Germany, electronic signatures are regulated under [eIDAS Regulation
No.
910/2014](https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=uriserv%3AOJ.L_.2014.257.01.0073.01.ENG)
and the [Trust Services
Act](https://www.gesetze-im-internet.de/vdg/BJNR274510017.html). The law
establishes the legal basis for acknowledging electronic records,
contracts, and digital signatures. The key points of the law include:

- **Legal recognition**: electronic signatures are legally equivalent to
  handwritten signatures if they meet certain criteria.
- **Reliability and security**: electronic signatures must be created
  with a secure method that can reliably identify the signatory and
  ensure the integrity of the signed document.
- **Qualified signature**: there are certain use cases that require a
  qualified signature issued by a trust service provider.

## How Odoo Sign complies with German regulations

Odoo Sign ensures full compliance with the Electronic Signature Law of
Germany by incorporating the following features:

- **Secure signature creation**: Odoo Sign utilizes advanced
  cryptographic techniques to ensure the authenticity and integrity of
  electronic signatures.
- **Third-party signature authenticator**: Odoo Online serves as an
  independent validation mechanism that adds an extra layer of security
  to the procurement process.
- **Audit trails**: detailed audit logs are maintained to provide
  evidence of the signing process, including timestamps, IP addresses,
  and identity verification.
- **Cryptographic traceability and immutability**: Odoo Sign ensures
  that any operation is logged securely. An audit log provides full
  transparency to all parties while preserving private data.
- **Multiple authentication means**: authentication by SMS, email, geoIP
  or handwritten electronic signature.

## Types of documents you can sign with Odoo Sign

Odoo Sign is versatile and can be used for a wide range of documents,
including but not limited to:

- **Contracts and agreements**: business contracts, employment
  agreements, and service contracts.
- **Financial documents**: loan agreements, investment documents, and
  financial reports.
- **HR documents**: employee onboarding forms, non-disclosure agreements
  (NDAs), and performance reviews.
- **Commercial transactions**: purchase orders, sales agreements, and
  supplier contracts.

## Potential exceptions

While Odoo Sign is broadly applicable, there are certain exceptions
where electronic signatures may not be suitable or legally recognized in
Germany:

- **Wills and trusts**: documents related to inheritance, wills, and
  trusts often require handwritten signatures.
- **Real estate transactions**: some property transactions may still
  require notarized handwritten signatures.
- **Government forms**: specific government forms and applications may
  mandate physical signatures.

::: admonition
Disclaimer

The information provided on this page is for general informational
purposes only and does not constitute legal advice. While Odoo Sign
complies with the Electronic Signature Law of Germany, users should
consult with legal professionals to ensure specific document types and
use cases meet all legal requirements. Compliance with additional
industry-specific regulations may also be necessary.
:::

*Last updated: June 21, 2024*




--- SOURCE: productivity/sign/guatemala.md ---

orphan

:   

# Odoo Sign legality in Guatemala

`Odoo Sign <../sign>`{.interpreted-text role="doc"} is your trusted
partner for secure, efficient, and legally compliant electronic
signatures in Guatemala.

## Legal framework for electronic signatures in Guatemala

In Guatemala, electronic signatures are regulated under the [Electronic
Communications and Signatures
Law](https://www.rpsc.gob.gt/wp-content/uploads/2021/10/LEY-PARA-EL-RECONOCIMIENTO-DE-LAS-COMUNICACIONES-Y-FIRMAS-ELECTRONICAS-19-11-2020.pdf).
The law establishes the legal basis for acknowledging electronic
records, contracts, and digital signatures. The key points of the law
include:

- **Legal recognition**: electronic signatures are legally equivalent to
  handwritten signatures if they meet certain criteria.
- **Reliability and security**: electronic signatures must be created
  with a secure method that can reliably identify the signatory and
  ensure the integrity of the signed document.
- **Certification service providers**: digital signature generated using
  a digital certificate supplied by a qualified provider.

## How Odoo Sign complies with Guatemalan regulations

Odoo Sign ensures full compliance with the Electronic Signature Law of
Guatemala by incorporating the following features:

- **Secure signature creation**: Odoo Sign utilizes advanced
  cryptographic techniques to ensure the authenticity and integrity of
  electronic signatures.
- **Third-party signature authenticator**: Odoo Online serves as an
  independent validation mechanism that adds an extra layer of security
  to the procurement process.
- **Audit trails**: detailed audit logs are maintained to provide
  evidence of the signing process, including timestamps, IP addresses,
  and identity verification.
- **Cryptographic traceability and immutability**: Odoo Sign ensures
  that any operation is logged securely. An audit log provides full
  transparency to all parties while preserving private data.
- **Multiple authentication means**: authentication by SMS, email, geoIP
  or handwritten electronic signature.

## Types of documents you can sign with Odoo Sign

Odoo Sign is versatile and can be used for a wide range of documents,
including but not limited to:

- **Contracts and agreements**: business contracts, employment
  agreements, and service contracts.
- **Financial documents**: loan agreements, investment documents, and
  financial reports.
- **HR documents**: employee onboarding forms, non-disclosure agreements
  (NDAs), and performance reviews.
- **Commercial transactions**: purchase orders, sales agreements, and
  supplier contracts.

## Potential exceptions

While Odoo Sign is broadly applicable, there are certain exceptions
where electronic signatures may not be suitable or legally recognized in
Guatemala:

- **Wills and trusts**: documents related to inheritance, wills, and
  trusts often require handwritten signatures.
- **Real estate transactions**: some property transactions may still
  require notarized handwritten signatures.
- **Government forms**: specific government forms and applications may
  mandate physical signatures.

::: admonition
Disclaimer

The information provided on this page is for general informational
purposes only and does not constitute legal advice. While Odoo Sign
complies with the Electronic Signature Law of Guatemala, users should
consult with legal professionals to ensure specific document types and
use cases meet all legal requirements. Compliance with additional
industry-specific regulations may also be necessary.
:::

*Last updated: June 21, 2024*




--- SOURCE: productivity/sign/hong_kong.md ---

orphan

:   

# Odoo Sign legality in Hong Kong

`Odoo Sign <../sign>`{.interpreted-text role="doc"} is your trusted
partner for secure, efficient, and legally compliant electronic
signatures in Hong Kong.

## Legal framework for electronic signatures in Hong Kong

In Hong Kong, electronic signatures are regulated under the [Electronic
Transactions Ordinance](https://www.elegislation.gov.hk/hk/cap553). The
law establishes the legal basis for acknowledging electronic records,
contracts, and signatures. The key points of the law include:

- **Legal recognition**: electronic signatures are legally equivalent to
  handwritten signatures if they meet certain criteria.
- **Reliability and security**: electronic signatures must be created
  with a secure method that can reliably identify the signatory and
  ensure the integrity of the signed document.
- **Certified electronic signatures**: special electronic signature that
  incorporates certificates issued by a recognized certification
  authority.

## How Odoo Sign complies with Hong Kong regulations

Odoo Sign ensures full compliance with the Electronic Signature Law of
Hong Kong by incorporating the following features:

- **Secure signature creation**: Odoo Sign utilizes advanced
  cryptographic techniques to ensure the authenticity and integrity of
  electronic signatures.
- **Third-party signature authenticator**: Odoo Online serves as an
  independent validation mechanism that adds an extra layer of security
  to the procurement process.
- **Audit trails**: detailed audit logs are maintained to provide
  evidence of the signing process, including timestamps, IP addresses,
  and identity verification.
- **Cryptographic traceability and immutability**: Odoo Sign ensures
  that any operation is logged securely. An audit log provides full
  transparency to all parties while preserving private data.
- **Multiple authentication means**: authentication by SMS, email, geoIP
  or handwritten electronic signature.

## Types of documents you can sign with Odoo Sign

Odoo Sign is versatile and can be used for a wide range of documents,
including but not limited to:

- **Contracts and agreements**: business contracts, employment
  agreements, and service contracts.
- **Financial documents**: loan agreements, investment documents, and
  financial reports.
- **HR documents**: employee onboarding forms, non-disclosure agreements
  (NDAs), and performance reviews.
- **Commercial transactions**: purchase orders, sales agreements, and
  supplier contracts.

## Potential exceptions

While Odoo Sign is broadly applicable, there are certain exceptions
where electronic signatures may not be suitable or legally recognized in
Hong Kong:

- **Wills and trusts**: documents related to inheritance, wills, and
  trusts often require handwritten signatures.
- **Real estate transactions**: some property transactions may still
  require notarized handwritten signatures.
- **Government forms**: specific government forms and applications may
  mandate physical signatures.

::: admonition
Disclaimer

The information provided on this page is for general informational
purposes only and does not constitute legal advice. While Odoo Sign
complies with the Electronic Signature Law of Hong Kong, users should
consult with legal professionals to ensure specific document types and
use cases meet all legal requirements. Compliance with additional
industry-specific regulations may also be necessary.
:::

*Last updated: June 21, 2024*




--- SOURCE: productivity/sign/india.md ---

orphan

:   

# Odoo Sign legality in India

`Odoo Sign <../sign>`{.interpreted-text role="doc"} is your trusted
partner for secure, efficient, and legally compliant electronic
signatures in India.

## Legal framework for electronic signatures in India

In India, electronic signatures are regulated under the [Information
Technology Act
(ITA)](https://eprocure.gov.in/cppp/rulesandprocs/kbadqkdlcswfjdelrquehwuxcfmijmuixngudufgbuubgubfugbububjxcgfvsbdihbgfGhdfgFHytyhRtMjk4NzY=),
the [Indian Contract Act
(ICA)](https://www.indiacode.nic.in/bitstream/123456789/2187/2/A187209.pdf)
and the Electronic Signature or Electronic Authentication Technique and
Procedure Rules (ESEATPR). The law provides the foundation for the use
and legal recognition of electronic signatures. The key points of the
law include:

- **Legal recognition**: electronic signatures are legally equivalent to
  handwritten signatures if they meet certain criteria.
- **Reliability and security**: electronic signatures must be created
  with a secure method that can reliably identify the signatory and
  ensure the integrity of the signed document.
- **Digital signature certificates**: the law recognizes digital
  signature certificates that serve as proof of identity of an
  individual for a certain purpose that can be used in special cases to
  provide additional security.

## How Odoo Sign complies with Indian regulations

Odoo Sign ensures full compliance with the Electronic Signature Law of
India by incorporating the following features:

- **Secure signature creation**: Odoo Sign utilizes advanced
  cryptographic techniques to ensure the authenticity and integrity of
  electronic signatures.
- **Third-party signature authenticator**: Odoo Online serves as an
  independent validation mechanism that adds an extra layer of security
  to the procurement process.
- **Audit trails**: detailed audit logs are maintained to provide
  evidence of the signing process, including timestamps, IP addresses,
  and identity verification.
- **Cryptographic traceability and immutability**: Odoo Sign ensures
  that any operation is logged securely. An audit log provides full
  transparency to all parties while preserving private data.
- **Multiple authentication means**: authentication by SMS, email, geoIP
  or handwritten electronic signature.

## Types of documents you can sign with Odoo Sign

Odoo Sign is versatile and can be used for a wide range of documents,
including but not limited to:

- **Contracts and agreements**: business contracts, employment
  agreements, and service contracts.
- **Financial documents**: loan agreements, investment documents, and
  financial reports.
- **HR documents**: employee onboarding forms, non-disclosure agreements
  (NDAs), and performance reviews.
- **Commercial transactions**: purchase orders, sales agreements, and
  supplier contracts.

## Potential exceptions

While Odoo Sign is broadly applicable, there are certain exceptions
where electronic signatures may not be suitable or legally recognized in
India:

- **Wills and trusts**: documents related to inheritance, wills, and
  trusts often require handwritten signatures.
- **Real estate transactions**: some property transactions may still
  require notarized handwritten signatures.
- **Government forms**: specific government forms and applications may
  mandate physical signatures.

::: admonition
Disclaimer

The information provided on this page is for general informational
purposes only and does not constitute legal advice. While Odoo Sign
complies with the Electronic Signature Law of India, users should
consult with legal professionals to ensure specific document types and
use cases meet all legal requirements. Compliance with additional
industry-specific regulations may also be necessary.
:::

*Last updated: June 19, 2024*




--- SOURCE: productivity/sign/indonesia.md ---

orphan

:   

# Odoo Sign legality in Indonesia

`Odoo Sign <../sign>`{.interpreted-text role="doc"} is your trusted
partner for secure, efficient, and legally compliant electronic
signatures in Indonesia.

## Legal framework for electronic signatures in Indonesia

In Indonesia, electronic signatures are regulated under the [Law of the
Republic of Indonesia No. 11 of 2008 on Electronic Information and
Transactions](https://www.icnl.org/wp-content/uploads/Indonesia_elec.pdf),
Government Regulation No. 71 of 2019 on Organization of Electronic
system and Transactions, as well as the Minister of Communications and
Informatics (MoCI) Regulation No. 11 of 2018 on Administration of
Electronic Certification (\"MoCI Regulation 11 of 2018\"). The law
governs transactions performed through electronic means and the use of
electronic signatures. The key points of the law include:

- **Legal recognition**: electronic signatures are legally equivalent to
  handwritten signatures if they meet certain criteria.
- **Reliability and security**: electronic signatures must be created
  with a secure method that can reliably identify the signatory and
  ensure the integrity of the signed document.
- **Certified e-signatures**: the law recognizes digital signature
  certificates that serve as proof of identity of an individual for a
  certain purpose that can be used in special cases to provide
  additional security. These certificates are issued by Certification
  Authorities and are required by law for the signature of specific
  acts.

## How Odoo Sign complies with Indonesian regulations

Odoo Sign ensures full compliance with the Electronic Signature Law of
Indonesia by incorporating the following features:

- **Secure signature creation**: Odoo Sign utilizes advanced
  cryptographic techniques to ensure the authenticity and integrity of
  electronic signatures.
- **Third-party signature authenticator**: Odoo Online serves as an
  independent validation mechanism that adds an extra layer of security
  to the procurement process.
- **Audit trails**: detailed audit logs are maintained to provide
  evidence of the signing process, including timestamps, IP addresses,
  and identity verification.
- **Cryptographic traceability and immutability**: Odoo Sign ensures
  that any operation is logged securely. An audit log provides full
  transparency to all parties while preserving private data.
- **Multiple authentication means**: authentication by SMS, email, geoIP
  or handwritten electronic signature.

## Types of documents you can sign with Odoo Sign

Odoo Sign is versatile and can be used for a wide range of documents,
including but not limited to:

- **Contracts and agreements**: business contracts, employment
  agreements, and service contracts.
- **Financial documents**: loan agreements, investment documents, and
  financial reports.
- **HR documents**: employee onboarding forms, non-disclosure agreements
  (NDAs), and performance reviews.
- **Commercial transactions**: purchase orders, sales agreements, and
  supplier contracts.

## Potential exceptions

While Odoo Sign is broadly applicable, there are certain exceptions
where electronic signatures may not be suitable or legally recognized in
Indonesia:

- **Wills and trusts**: documents related to inheritance, wills, and
  trusts often require handwritten signatures.
- **Real estate transactions**: some property transactions may still
  require notarized handwritten signatures.
- **Government forms**: specific government forms and applications may
  mandate physical signatures.

::: admonition
Disclaimer

The information provided on this page is for general informational
purposes only and does not constitute legal advice. While Odoo Sign
complies with the Electronic Signature Law of Indonesia, users should
consult with legal professionals to ensure specific document types and
use cases meet all legal requirements. Compliance with additional
industry-specific regulations may also be necessary.
:::

*Last updated: June 19, 2024*




--- SOURCE: productivity/sign/iran.md ---

orphan

:   

# Odoo Sign legality in Iran

`Odoo Sign <../sign>`{.interpreted-text role="doc"} is your trusted
partner for secure, efficient, and legally compliant electronic
signatures in Iran.

## Legal framework for electronic signatures in Iran

In Iran, electronic signatures are regulated under the [Iran Civil
Code](https://faolex.fao.org/docs/pdf/ira206827.pdf) and the [Electronic
Commerce
Act](https://wipolex-res.wipo.int/edocs/lexdocs/laws/en/ir/ir008en.html).
The law governs the use of electronic records and signatures. The key
points of the law include:

- **Legal recognition**: electronic signatures are legally equivalent to
  handwritten signatures if they meet certain criteria.
- **Reliability and security**: electronic signatures must be created
  with a secure method that can reliably identify the signatory and
  ensure the integrity of the signed document.

## How Odoo Sign complies with Iranian regulations

Odoo Sign ensures full compliance with the Electronic Signature Law of
Iran by incorporating the following features:

- **Secure signature creation**: Odoo Sign utilizes advanced
  cryptographic techniques to ensure the authenticity and integrity of
  electronic signatures.
- **Third-party signature authenticator**: Odoo Online serves as an
  independent validation mechanism that adds an extra layer of security
  to the procurement process.
- **Audit trails**: detailed audit logs are maintained to provide
  evidence of the signing process, including timestamps, IP addresses,
  and identity verification.
- **Cryptographic traceability and immutability**: Odoo Sign ensures
  that any operation is logged securely. An audit log provides full
  transparency to all parties while preserving private data.
- **Multiple authentication means**: authentication by SMS, email, geoIP
  or handwritten electronic signature.

## Types of documents you can sign with Odoo Sign

Odoo Sign is versatile and can be used for a wide range of documents,
including but not limited to:

- **Contracts and agreements**: business contracts, employment
  agreements, and service contracts.
- **Financial documents**: loan agreements, investment documents, and
  financial reports.
- **HR documents**: employee onboarding forms, non-disclosure agreements
  (NDAs), and performance reviews.
- **Commercial transactions**: purchase orders, sales agreements, and
  supplier contracts.

## Potential exceptions

While Odoo Sign is broadly applicable, there are certain exceptions
where electronic signatures may not be suitable or legally recognized in
Iran:

- **Wills and trusts**: documents related to inheritance, wills, and
  trusts often require handwritten signatures.
- **Real estate transactions**: some property transactions may still
  require notarized handwritten signatures.
- **Government forms**: specific government forms and applications may
  mandate physical signatures.

::: admonition
Disclaimer

The information provided on this page is for general informational
purposes only and does not constitute legal advice. While Odoo Sign
complies with the Electronic Signature Law of Iran, users should consult
with legal professionals to ensure specific document types and use cases
meet all legal requirements. Compliance with additional
industry-specific regulations may also be necessary.
:::

*Last updated: June 21, 2024*




--- SOURCE: productivity/sign/iraq.md ---

orphan

:   

# Odoo Sign legality in Iraq

`Odoo Sign <../sign>`{.interpreted-text role="doc"} is your trusted
partner for secure, efficient, and legally compliant electronic
signatures in Iraq.

## Legal framework for electronic signatures in Iraq

In Iraq, electronic signatures are regulated under the [Electronic
Signature and Electronic transactions Law No. 78 Of
2012](https://www.itu.int/en/ITU-T/Workshops-and-Seminars/bsg/201712/Documents/2.Halah%20Al-Rubaye.pdf).
The law establishes the legal basis for acknowledging electronic
records, contracts, and digital signatures. The key points of the law
include:

- **Legal recognition**: electronic signatures are legally equivalent to
  handwritten signatures if they meet certain criteria.
- **Reliability and security**: electronic signatures must be created
  with a secure method that can reliably identify the signatory and
  ensure the integrity of the signed document.
- **Certified electronic signatures**: Special electronic signature that
  incorporates certificates issued by a recognized certification
  authority. In some cases, only the certified electronic signature has
  legal and juridical validity in Iraq. In those cases, simple
  electronic signatures like the Odoo Signature only work as a proof of
  the agreement of wills to celebrate the corresponding transaction,
  which will be submitted to the authority\'s criteria.

## How Odoo Sign complies with Iraqi regulations

Odoo Sign ensures full compliance with the Electronic Signature Law of
Iraq by incorporating the following features:

- **Secure signature creation**: Odoo Sign utilizes advanced
  cryptographic techniques to ensure the authenticity and integrity of
  electronic signatures.
- **Third-party signature authenticator**: Odoo Online serves as an
  independent validation mechanism that adds an extra layer of security
  to the procurement process.
- **Audit trails**: detailed audit logs are maintained to provide
  evidence of the signing process, including timestamps, IP addresses,
  and identity verification.
- **Cryptographic traceability and immutability**: Odoo Sign ensures
  that any operation is logged securely. An audit log provides full
  transparency to all parties while preserving private data.
- **Multiple authentication means**: authentication by SMS, email, geoIP
  or handwritten electronic signature.

## Types of documents you can sign with Odoo Sign

Odoo Sign is versatile and can be used for a wide range of documents,
including but not limited to:

- **Contracts and agreements**: business contracts, employment
  agreements, and service contracts.
- **Financial documents**: loan agreements, investment documents, and
  financial reports.
- **HR documents**: employee onboarding forms, non-disclosure agreements
  (NDAs), and performance reviews.
- **Commercial transactions**: purchase orders, sales agreements, and
  supplier contracts.

## Potential exceptions

While Odoo Sign is broadly applicable, there are certain exceptions
where electronic signatures may not be suitable or legally recognized in
Iraq:

- **Wills and trusts**: documents related to inheritance, wills, and
  trusts often require handwritten signatures.
- **Real estate transactions**: some property transactions may still
  require notarized handwritten signatures.
- **Government forms**: specific government forms and applications may
  mandate physical signatures.

::: admonition
Disclaimer

The information provided on this page is for general informational
purposes only and does not constitute legal advice. While Odoo Sign
complies with the Electronic Signature Law of Iraq, users should consult
with legal professionals to ensure specific document types and use cases
meet all legal requirements. Compliance with additional
industry-specific regulations may also be necessary.
:::

*Last updated: June 21, 2024*




--- SOURCE: productivity/sign/israel.md ---

orphan

:   

# Odoo Sign legality in Israel

`Odoo Sign <../sign>`{.interpreted-text role="doc"} is your trusted
partner for secure, efficient, and legally compliant electronic
signatures in Israel.

## Legal framework for electronic signatures in Israel

In Israel, electronic signatures are regulated under the Electronic
Signature Law, and various electronic signature regulations. The law
governs transactions performed through electronic means and the use of
electronic signatures. The key points of the law include:

- **Legal recognition**: electronic signatures are legally equivalent to
  handwritten signatures if they meet certain criteria.
- **Reliability and security**: electronic signatures must be created
  with a secure method that can reliably identify the signatory and
  ensure the integrity of the signed document.
- **Certified electronic signature**: the law recognizes electronic
  signatures supported by digital certificates issued by Certified
  Providers.

## How Odoo Sign complies with Israeli regulations

Odoo Sign ensures full compliance with the Electronic Signature Law of
Israel by incorporating the following features:

- **Secure signature creation**: Odoo Sign utilizes advanced
  cryptographic techniques to ensure the authenticity and integrity of
  electronic signatures.
- **Third-party signature authenticator**: Odoo Online serves as an
  independent validation mechanism that adds an extra layer of security
  to the procurement process.
- **Audit trails**: detailed audit logs are maintained to provide
  evidence of the signing process, including timestamps, IP addresses,
  and identity verification.
- **Cryptographic traceability and immutability**: Odoo Sign ensures
  that any operation is logged securely. An audit log provides full
  transparency to all parties while preserving private data.
- **Multiple authentication means**: authentication by SMS, email, geoIP
  or handwritten electronic signature.

## Types of documents you can sign with Odoo Sign

Odoo Sign is versatile and can be used for a wide range of documents,
including but not limited to:

- **Contracts and agreements**: business contracts, employment
  agreements, and service contracts.
- **Financial documents**: loan agreements, investment documents, and
  financial reports.
- **HR documents**: employee onboarding forms, non-disclosure agreements
  (NDAs), and performance reviews.
- **Commercial transactions**: purchase orders, sales agreements, and
  supplier contracts.

## Potential exceptions

While Odoo Sign is broadly applicable, there are certain exceptions
where electronic signatures may not be suitable or legally recognized in
Israel:

- **Wills and trusts**: documents related to inheritance, wills, and
  trusts often require handwritten signatures.
- **Real estate transactions**: some property transactions may still
  require notarized handwritten signatures.
- **Government forms**: specific government forms and applications may
  mandate physical signatures.

::: admonition
Disclaimer

The information provided on this page is for general informational
purposes only and does not constitute legal advice. While Odoo Sign
complies with the Electronic Signature Law of Israel, users should
consult with legal professionals to ensure specific document types and
use cases meet all legal requirements. Compliance with additional
industry-specific regulations may also be necessary.
:::

*Last updated: June 21, 2024*




--- SOURCE: productivity/sign/japan.md ---

orphan

:   

# Odoo Sign legality in Japan

`Odoo Sign <../sign>`{.interpreted-text role="doc"} is your trusted
partner for secure, efficient, and legally compliant electronic
signatures in Japan.

## Legal framework for electronic signatures in Japan

In Japan, electronic signatures are regulated under the [Act on
Electronic Signatures and Certification Business (E-signature
Act)](https://www.cas.go.jp/jp/seisaku/hourei/data/aescb.pdf) published
in the official gazette on May 31, 2000. The law provides the foundation
for the use and legal recognition of electronic signatures. The key
points of the E-signature Act include:

- **Legal recognition**: electronic signatures are legally equivalent to
  handwritten signatures if they meet certain criteria.
- **Reliability and security**: electronic signatures must be created
  with a secure method that can reliably identify the signatory and
  ensure the integrity of the signed document.
- **Certification Businesses (CBs)**: the law recognizes electronic
  signatures supported by digital certificates issued by accredited CBs.

## How Odoo Sign complies with Japanese regulations

Odoo Sign ensures full compliance with the Electronic Signature Law of
Japan by incorporating the following features:

- **Secure signature creation**: Odoo Sign utilizes advanced
  cryptographic techniques to ensure the authenticity and integrity of
  electronic signatures.
- **Third-party signature authenticator**: Odoo Online serves as an
  independent validation mechanism that adds an extra layer of security
  to the procurement process.
- **Audit trails**: detailed audit logs are maintained to provide
  evidence of the signing process, including timestamps, IP addresses,
  and identity verification.
- **Cryptographic traceability and immutability**: Odoo Sign ensures
  that any operation is logged securely. An audit log provides full
  transparency to all parties while preserving private data.
- **Multiple authentication means**: authentication by SMS, email, geoIP
  or handwritten electronic signature.

## Types of documents you can sign with Odoo Sign

Odoo Sign is versatile and can be used for a wide range of documents,
including but not limited to:

- **Contracts and agreements**: business contracts, employment
  agreements, and service contracts.
- **Financial documents**: loan agreements, investment documents, and
  financial reports.
- **HR documents**: employee onboarding forms, non-disclosure agreements
  (NDAs), and performance reviews.
- **Commercial transactions**: purchase orders, sales agreements, and
  supplier contracts.

## Potential exceptions

While Odoo Sign is broadly applicable, there are certain exceptions
where electronic signatures may not be suitable or legally recognized in
Japan:

- **Wills and trusts**: documents related to inheritance, wills, and
  trusts often require handwritten signatures.
- **Real estate transactions**: some property transactions may still
  require notarized handwritten signatures.
- **Government forms**: specific government forms and applications may
  mandate physical signatures.

::: admonition
Disclaimer

The information provided on this page is for general informational
purposes only and does not constitute legal advice. While Odoo Sign
complies with the Electronic Signature Law of Japan, users should
consult with legal professionals to ensure specific document types and
use cases meet all legal requirements. Compliance with additional
industry-specific regulations may also be necessary.
:::

*Last updated: June 19, 2024*




--- SOURCE: productivity/sign/kazakhstan.md ---

orphan

:   

# Odoo Sign legality in Kazakhstan

`Odoo Sign <../sign>`{.interpreted-text role="doc"} is your trusted
partner for secure, efficient, and legally compliant electronic
signatures in Kazakhstan.

## Legal framework for electronic signatures in Kazakhstan

In Kazakhstan, electronic signatures are regulated under the [Civil
Code](https://adilet.zan.kz/eng/docs/K940001000_) and the [Law On
Electronic Document and Electronic Digital
Signature](https://wipolex-res.wipo.int/edocs/lexdocs/laws/en/kz/kz102en.pdf).
The law establishes the legal basis for acknowledging electronic
records, contracts, and digital signatures. The key points of the law
include:

- **Legal recognition**: electronic signatures are legally equivalent to
  handwritten signatures if they meet certain criteria.
- **Reliability and security**: electronic signatures must be created
  with a secure method that can reliably identify the signatory and
  ensure the integrity of the signed document.
- **Qualified electronic signature**: digital signature generated using
  a digital certificate supplied by a qualified provider.

## How Odoo Sign complies with Kazakhstani regulations

Odoo Sign ensures full compliance with the Electronic Signature Law of
Kazakhstan by incorporating the following features:

- **Secure signature creation**: Odoo Sign utilizes advanced
  cryptographic techniques to ensure the authenticity and integrity of
  electronic signatures.
- **Third-party signature authenticator**: Odoo Online serves as an
  independent validation mechanism that adds an extra layer of security
  to the procurement process.
- **Audit trails**: detailed audit logs are maintained to provide
  evidence of the signing process, including timestamps, IP addresses,
  and identity verification.
- **Cryptographic traceability and immutability**: Odoo Sign ensures
  that any operation is logged securely. An audit log provides full
  transparency to all parties while preserving private data.
- **Multiple authentication means**: authentication by SMS, email, geoIP
  or handwritten electronic signature.

## Types of documents you can sign with Odoo Sign

Odoo Sign is versatile and can be used for a wide range of documents,
including but not limited to:

- **Contracts and agreements**: business contracts, employment
  agreements, and service contracts.
- **Financial documents**: loan agreements, investment documents, and
  financial reports.
- **HR documents**: employee onboarding forms, non-disclosure agreements
  (NDAs), and performance reviews.
- **Commercial transactions**: purchase orders, sales agreements, and
  supplier contracts.

## Potential exceptions

While Odoo Sign is broadly applicable, there are certain exceptions
where electronic signatures may not be suitable or legally recognized in
Kazakhstan:

- **Wills and trusts**: documents related to inheritance, wills, and
  trusts often require handwritten signatures.
- **Real estate transactions**: some property transactions may still
  require notarized handwritten signatures.
- **Government forms**: specific government forms and applications may
  mandate physical signatures.

::: admonition
Disclaimer

The information provided on this page is for general informational
purposes only and does not constitute legal advice. While Odoo Sign
complies with the Electronic Signature Law of Kazakhstan, users should
consult with legal professionals to ensure specific document types and
use cases meet all legal requirements. Compliance with additional
industry-specific regulations may also be necessary.
:::

*Last updated: June 21, 2024*




--- SOURCE: productivity/sign/kenya.md ---

orphan

:   

# Odoo Sign legality in Kenya

`Odoo Sign <../sign>`{.interpreted-text role="doc"} is your trusted
partner for secure, efficient, and legally compliant electronic
signatures in Kenya.

## Legal framework for electronic signatures in Kenya

In Kenya, electronic signatures are regulated under the [Information and
Communications
Act](https://kenyalaw.org/kl/fileadmin/pdfdownloads/Acts/KenyaInformationandCommunicationsAct(No2of1998).pdf).
The law establishes the legal basis for acknowledging electronic
records, contracts, and digital signatures. The key points of the law
include:

- **Legal recognition**: electronic signatures are legally equivalent to
  handwritten signatures if they meet certain criteria.
- **Reliability and security**: electronic signatures must be created
  with a secure method that can reliably identify the signatory and
  ensure the integrity of the signed document.
- **Certified electronic signature**: digital signature generated using
  a digital certificate supplied by a qualified provider.

## How Odoo Sign complies with Kenyan regulations

Odoo Sign ensures full compliance with the Electronic Signature Law of
Kenya by incorporating the following features:

- **Secure signature creation**: Odoo Sign utilizes advanced
  cryptographic techniques to ensure the authenticity and integrity of
  electronic signatures.
- **Third-party signature authenticator**: Odoo Online serves as an
  independent validation mechanism that adds an extra layer of security
  to the procurement process.
- **Audit trails**: detailed audit logs are maintained to provide
  evidence of the signing process, including timestamps, IP addresses,
  and identity verification.
- **Cryptographic traceability and immutability**: Odoo Sign ensures
  that any operation is logged securely. An audit log provides full
  transparency to all parties while preserving private data.
- **Multiple authentication means**: authentication by SMS, email, geoIP
  or handwritten electronic signature.

## Types of documents you can sign with Odoo Sign

Odoo Sign is versatile and can be used for a wide range of documents,
including but not limited to:

- **Contracts and agreements**: business contracts, employment
  agreements, and service contracts.
- **Financial documents**: loan agreements, investment documents, and
  financial reports.
- **HR documents**: employee onboarding forms, non-disclosure agreements
  (NDAs), and performance reviews.
- **Commercial transactions**: purchase orders, sales agreements, and
  supplier contracts.

## Potential exceptions

While Odoo Sign is broadly applicable, there are certain exceptions
where electronic signatures may not be suitable or legally recognized in
Kenya:

- **Wills and trusts**: documents related to inheritance, wills, and
  trusts often require handwritten signatures.
- **Real estate transactions**: some property transactions may still
  require notarized handwritten signatures.
- **Government forms**: specific government forms and applications may
  mandate physical signatures.

::: admonition
Disclaimer

The information provided on this page is for general informational
purposes only and does not constitute legal advice. While Odoo Sign
complies with the Electronic Signature Law of Kenya, users should
consult with legal professionals to ensure specific document types and
use cases meet all legal requirements. Compliance with additional
industry-specific regulations may also be necessary.
:::

*Last updated: June 21, 2024*




--- SOURCE: productivity/sign/kuwait.md ---

orphan

:   

# Odoo Sign legality in Kuwait

`Odoo Sign <../sign>`{.interpreted-text role="doc"} is your trusted
partner for secure, efficient, and legally compliant electronic
signatures in Kuwait.

## Legal framework for electronic signatures in Kuwait

In Kuwait, electronic signatures are regulated under the [Law No.20 of
2014 concerning Electronic Transactions and its Implementing
Regulations](https://kdipa.gov.kw/wp-content/uploads/2022/08/%D9%82%D8%A7%D9%86%D9%88%D9%86-%D8%A7%D9%84%D9%85%D8%B9%D8%A7%D9%85%D9%84%D8%A7%D8%AA-%D8%A7%D9%84%D8%A7%D9%84%D9%83%D8%AA%D8%B1%D9%88%D9%86%D9%8A%D8%A9-20-%D9%84%D8%B3%D9%86%D8%A9-2014-%D9%85%D8%AA%D8%B1%D8%AC%D9%85-%D8%A8%D8%A7%D9%84%D9%84%D8%BA%D8%A9-%D8%A7%D9%84%D8%A7%D9%86%D8%AC%D9%84%D9%8A%D8%B2%D9%8A%D8%A9.pdf).
The law establishes the legal basis for acknowledging electronic
records, contracts, and digital signatures. The key points of the law
include:

- **Legal recognition**: electronic signatures are legally equivalent to
  handwritten signatures if they meet certain criteria.
- **Reliability and security**: electronic signatures must be created
  with a secure method that can reliably identify the signatory and
  ensure the integrity of the signed document.

## How Odoo Sign complies with Kuwaiti regulations

Odoo Sign ensures full compliance with the Electronic Signature Law of
Kuwait by incorporating the following features:

- **Secure signature creation**: Odoo Sign utilizes advanced
  cryptographic techniques to ensure the authenticity and integrity of
  electronic signatures.
- **Third-party signature authenticator**: Odoo Online serves as an
  independent validation mechanism that adds an extra layer of security
  to the procurement process.
- **Audit trails**: detailed audit logs are maintained to provide
  evidence of the signing process, including timestamps, IP addresses,
  and identity verification.
- **Cryptographic traceability and immutability**: Odoo Sign ensures
  that any operation is logged securely. An audit log provides full
  transparency to all parties while preserving private data.
- **Multiple authentication means**: authentication by SMS, email, geoIP
  or handwritten electronic signature.

## Types of documents you can sign with Odoo Sign

Odoo Sign is versatile and can be used for a wide range of documents,
including but not limited to:

- **Contracts and agreements**: business contracts, employment
  agreements, and service contracts.
- **Financial documents**: loan agreements, investment documents, and
  financial reports.
- **HR documents**: employee onboarding forms, non-disclosure agreements
  (NDAs), and performance reviews.
- **Commercial transactions**: purchase orders, sales agreements, and
  supplier contracts.

## Potential exceptions

While Odoo Sign is broadly applicable, there are certain exceptions
where electronic signatures may not be suitable or legally recognized in
Kuwait:

- **Wills and trusts**: documents related to inheritance, wills, and
  trusts often require handwritten signatures.
- **Real estate transactions**: some property transactions may still
  require notarized handwritten signatures.
- **Government forms**: specific government forms and applications may
  mandate physical signatures.

::: admonition
Disclaimer

The information provided on this page is for general informational
purposes only and does not constitute legal advice. While Odoo Sign
complies with the Electronic Signature Law of Kuwait, users should
consult with legal professionals to ensure specific document types and
use cases meet all legal requirements. Compliance with additional
industry-specific regulations may also be necessary.
:::

*Last updated: June 21, 2024*




--- SOURCE: productivity/sign/malaysia.md ---

orphan

:   

# Odoo Sign legality in Malaysia

`Odoo Sign <../sign>`{.interpreted-text role="doc"} is your trusted
partner for secure, efficient, and legally compliant electronic
signatures in Malaysia.

## Legal framework for electronic signatures in Malaysia

In Malaysia, electronic signatures are regulated under the [Digital
Signature Act
1997](http://www.commonlii.org/my/legis/consol_act/dsa1997181/) and the
[Electronic Commerce Act
2006](https://aseanconsumer.org/file/post_image/Act%20658%20-%20Electronic%20Commerce%20Act%202006.pdf).
The law governs transactions performed through electronic means and the
use of digital signatures. The key points of the law include:

- **Legal recognition**: electronic signatures are legally equivalent to
  handwritten signatures if they meet certain criteria.
- **Reliability and security**: electronic signatures must be created
  with a secure method that can reliably identify the signatory and
  ensure the integrity of the signed document.
- **Certified digital signatures**: the law governs the use of digital
  certificates to provide major security and integrity to digital
  signatures. In some cases, electronic signatures must be certified by
  an electronic signature certification authority.

## How Odoo Sign complies with Malaysian regulations

Odoo Sign ensures full compliance with the Electronic Signature Law of
Malaysia by incorporating the following features:

- **Secure signature creation**: Odoo Sign utilizes advanced
  cryptographic techniques to ensure the authenticity and integrity of
  electronic signatures.
- **Third-party signature authenticator**: Odoo Online serves as an
  independent validation mechanism that adds an extra layer of security
  to the procurement process.
- **Audit trails**: detailed audit logs are maintained to provide
  evidence of the signing process, including timestamps, IP addresses,
  and identity verification.
- **Cryptographic traceability and immutability**: Odoo Sign ensures
  that any operation is logged securely. An audit log provides full
  transparency to all parties while preserving private data.
- **Multiple authentication means**: authentication by SMS, email, geoIP
  or handwritten electronic signature.

## Types of documents you can sign with Odoo Sign

Odoo Sign is versatile and can be used for a wide range of documents,
including but not limited to:

- **Contracts and agreements**: business contracts, employment
  agreements, and service contracts.
- **Financial documents**: loan agreements, investment documents, and
  financial reports.
- **HR documents**: employee onboarding forms, non-disclosure agreements
  (NDAs), and performance reviews.
- **Commercial transactions**: purchase orders, sales agreements, and
  supplier contracts.

## Potential exceptions

While Odoo Sign is broadly applicable, there are certain exceptions
where electronic signatures may not be suitable or legally recognized in
Malaysia:

- **Wills and trusts**: documents related to inheritance, wills, and
  trusts often require handwritten signatures.
- **Real estate transactions**: some property transactions may still
  require notarized handwritten signatures.
- **Government forms**: specific government forms and applications may
  mandate physical signatures.

::: admonition
Disclaimer

The information provided on this page is for general informational
purposes only and does not constitute legal advice. While Odoo Sign
complies with the Electronic Signature Law of Malaysia, users should
consult with legal professionals to ensure specific document types and
use cases meet all legal requirements. Compliance with additional
industry-specific regulations may also be necessary.
:::

*Last updated: June 21, 2024*




--- SOURCE: productivity/sign/mexico.md ---

orphan

:   

# Odoo Sign legality in Mexico

`Odoo Sign <../sign>`{.interpreted-text role="doc"} is your trusted
partner for secure, efficient, and legally compliant electronic
signatures in Mexico.

## Legal framework for electronic signatures in Mexico

In Mexico, electronic signatures are regulated under the [Mexican Civil
Code](https://www.diputados.gob.mx/LeyesBiblio/pdf/CCF.pdf) and the
[Commercial
Code](http://www.ordenjuridico.gob.mx/Publicaciones/pdf/L222.pdf), as
well as the civil codes of each state. The law governs transactions
performed through electronic means and the use of electronic signatures.
The key points of the law include:

- **Legal recognition**: electronic signatures are legally equivalent to
  handwritten signatures if they meet certain criteria.
- **Reliability and security**: electronic signatures must be created
  with a secure method that can reliably identify the signatory and
  ensure the integrity of the signed document.
- **NORMA Oficial Mexicana NOM-151-SCFI-2016 (NOM 151)**: establishes
  the requirements for the conservation of data messages and
  digitization of documents with full guarantees of integrity. It also
  establishes the certification and time stamping requirements for
  certain documents.

## How Odoo Sign complies with Mexican regulations

Odoo Sign ensures full compliance with the Electronic Signature Law of
Mexico by incorporating the following features:

- **Secure signature creation**: Odoo Sign utilizes advanced
  cryptographic techniques to ensure the authenticity and integrity of
  electronic signatures.
- **Third-party signature authenticator**: Odoo Online serves as an
  independent validation mechanism that adds an extra layer of security
  to the procurement process.
- **Audit trails**: detailed audit logs are maintained to provide
  evidence of the signing process, including timestamps, IP addresses,
  and identity verification.
- **Cryptographic traceability and immutability**: Odoo Sign ensures
  that any operation is logged securely. An audit log provides full
  transparency to all parties while preserving private data.
- **Multiple authentication means**: authentication by SMS, email, geoIP
  or handwritten electronic signature.

## Types of documents you can sign with Odoo Sign

Odoo Sign is versatile and can be used for a wide range of documents,
including but not limited to:

- **Contracts and agreements**: business contracts, employment
  agreements, and service contracts.
- **Financial documents**: loan agreements, investment documents, and
  financial reports.
- **HR documents**: employee onboarding forms, non-disclosure agreements
  (NDAs), and performance reviews.
- **Commercial transactions**: purchase orders, sales agreements, and
  supplier contracts.

## Potential exceptions

While Odoo Sign is broadly applicable, there are certain exceptions
where electronic signatures may not be suitable or legally recognized in
Mexico:

- **Wills and trusts**: documents related to inheritance, wills, and
  trusts often require handwritten signatures.
- **Real estate transactions**: some property transactions may still
  require notarized handwritten signatures.
- **Government forms**: specific government forms and applications may
  mandate physical signatures.

::: admonition
Disclaimer

The information provided on this page is for general informational
purposes only and does not constitute legal advice. While Odoo Sign
complies with the Electronic Signature Law of Mexico, users should
consult with legal professionals to ensure specific document types and
use cases meet all legal requirements. Compliance with additional
industry-specific regulations may also be necessary.
:::

*Last updated: June 19, 2024*




--- SOURCE: productivity/sign/morocco.md ---

orphan

:   

# Odoo Sign legality in Morocco

`Odoo Sign <../sign>`{.interpreted-text role="doc"} is your trusted
partner for secure, efficient, and legally compliant electronic
signatures in Morocco.

## Legal framework for electronic signatures in Morocco

In Morocco, electronic signatures are regulated under the [Law No. 53-05
on Digital
Signature](https://tahseen.ae/media/3036/law-on-electronic-exchange-of-legal-data.pdf).
The law establishes the legal basis for acknowledging electronic
records, contracts, and digital signatures. The key points of the law
include:

- **Legal recognition**: electronic signatures are legally equivalent to
  handwritten signatures if they meet certain criteria.
- **Reliability and security**: electronic signatures must be created
  with a secure method that can reliably identify the signatory and
  ensure the integrity of the signed document.
- **Certified electronic signature**: digital signature generated using
  a digital certificate supplied by a qualified provider.

## How Odoo Sign complies with Moroccan regulations

Odoo Sign ensures full compliance with the Electronic Signature Law of
Morocco by incorporating the following features:

- **Secure signature creation**: Odoo Sign utilizes advanced
  cryptographic techniques to ensure the authenticity and integrity of
  electronic signatures.
- **Third-party signature authenticator**: Odoo Online serves as an
  independent validation mechanism that adds an extra layer of security
  to the procurement process.
- **Audit trails**: detailed audit logs are maintained to provide
  evidence of the signing process, including timestamps, IP addresses,
  and identity verification.
- **Cryptographic traceability and immutability**: Odoo Sign ensures
  that any operation is logged securely. An audit log provides full
  transparency to all parties while preserving private data.
- **Multiple authentication means**: authentication by SMS, email, geoIP
  or handwritten electronic signature.

## Types of documents you can sign with Odoo Sign

Odoo Sign is versatile and can be used for a wide range of documents,
including but not limited to:

- **Contracts and agreements**: business contracts, employment
  agreements, and service contracts.
- **Financial documents**: loan agreements, investment documents, and
  financial reports.
- **HR documents**: employee onboarding forms, non-disclosure agreements
  (NDAs), and performance reviews.
- **Commercial transactions**: purchase orders, sales agreements, and
  supplier contracts.

## Potential exceptions

While Odoo Sign is broadly applicable, there are certain exceptions
where electronic signatures may not be suitable or legally recognized in
Morocco:

- **Wills and trusts**: documents related to inheritance, wills, and
  trusts often require handwritten signatures.
- **Real estate transactions**: some property transactions may still
  require notarized handwritten signatures.
- **Government forms**: specific government forms and applications may
  mandate physical signatures.

::: admonition
Disclaimer

The information provided on this page is for general informational
purposes only and does not constitute legal advice. While Odoo Sign
complies with the Electronic Signature Law of Morocco, users should
consult with legal professionals to ensure specific document types and
use cases meet all legal requirements. Compliance with additional
industry-specific regulations may also be necessary.
:::

*Last updated: June 21, 2024*




--- SOURCE: productivity/sign/new_zealand.md ---

orphan

:   

# Odoo Sign legality in New Zealand

`Odoo Sign <../sign>`{.interpreted-text role="doc"} is your trusted
partner for secure, efficient, and legally compliant electronic
signatures in New Zealand.

## Legal framework for electronic signatures in New Zealand

In New Zealand, electronic signatures are regulated under the [Contract
and Commercial Law
Act](https://www.legislation.govt.nz/act/public/2017/0005/21.0/DLM6844033.html).
The law establishes the legal basis for acknowledging electronic
records, contracts, and digital signatures. The key points of the law
include:

- **Legal recognition**: electronic signatures are legally equivalent to
  handwritten signatures if they meet certain criteria.
- **Reliability and security**: electronic signatures must be created
  with a secure method that can reliably identify the signatory and
  ensure the integrity of the signed document.
- **Special cases**: in New Zealand, there are certain use cases that
  require a traditional signature and expressly exclude the use of
  electronic signatures.

## How Odoo Sign complies with New Zealand regulations

Odoo Sign ensures full compliance with the Electronic Signature Law of
New Zealand by incorporating the following features:

- **Secure signature creation**: Odoo Sign utilizes advanced
  cryptographic techniques to ensure the authenticity and integrity of
  electronic signatures.
- **Third-party signature authenticator**: Odoo Online serves as an
  independent validation mechanism that adds an extra layer of security
  to the procurement process.
- **Audit trails**: detailed audit logs are maintained to provide
  evidence of the signing process, including timestamps, IP addresses,
  and identity verification.
- **Cryptographic traceability and immutability**: Odoo Sign ensures
  that any operation is logged securely. An audit log provides full
  transparency to all parties while preserving private data.
- **Multiple authentication means**: authentication by SMS, email, geoIP
  or handwritten electronic signature.

## Types of documents you can sign with Odoo Sign

Odoo Sign is versatile and can be used for a wide range of documents,
including but not limited to:

- **Contracts and agreements**: business contracts, employment
  agreements, and service contracts.
- **Financial documents**: loan agreements, investment documents, and
  financial reports.
- **HR documents**: employee onboarding forms, non-disclosure agreements
  (NDAs), and performance reviews.
- **Commercial transactions**: purchase orders, sales agreements, and
  supplier contracts.

## Potential exceptions

While Odoo Sign is broadly applicable, there are certain exceptions
where electronic signatures may not be suitable or legally recognized in
New Zealand:

- **Wills and trusts**: documents related to inheritance, wills, and
  trusts often require handwritten signatures.
- **Real estate transactions**: some property transactions may still
  require notarized handwritten signatures.
- **Government forms**: specific government forms and applications may
  mandate physical signatures.

::: admonition
Disclaimer

The information provided on this page is for general informational
purposes only and does not constitute legal advice. While Odoo Sign
complies with the Electronic Signature Law of New Zealand, users should
consult with legal professionals to ensure specific document types and
use cases meet all legal requirements. Compliance with additional
industry-specific regulations may also be necessary.
:::

*Last updated: June 21, 2024*




--- SOURCE: productivity/sign/nigeria.md ---

orphan

:   

# Odoo Sign legality in Nigeria

`Odoo Sign <../sign>`{.interpreted-text role="doc"} is your trusted
partner for secure, efficient, and legally compliant electronic
signatures in Nigeria.

## Legal framework for electronic signatures in Nigeria

In Nigeria, electronic signatures are regulated under the [Nigerian
Evidence
Act](https://www.refworld.org/legal/legislation/natlegbod/2011/en/104226).
The law governs transactions performed through electronic means and the
use of digital signatures. The key points of the law include:

- **Legal recognition**: electronic signatures are legally equivalent to
  handwritten signatures if they meet certain criteria.
- **Reliability and security**: electronic signatures must be created
  with a secure method that can reliably identify the signatory and
  ensure the integrity of the signed document.

## How Odoo Sign complies with Nigerian regulations

Odoo Sign ensures full compliance with the Electronic Signature Law of
Nigeria by incorporating the following features:

- **Secure signature creation**: Odoo Sign utilizes advanced
  cryptographic techniques to ensure the authenticity and integrity of
  electronic signatures.
- **Third-party signature authenticator**: Odoo Online serves as an
  independent validation mechanism that adds an extra layer of security
  to the procurement process.
- **Audit trails**: detailed audit logs are maintained to provide
  evidence of the signing process, including timestamps, IP addresses,
  and identity verification.
- **Cryptographic traceability and immutability**: Odoo Sign ensures
  that any operation is logged securely. An audit log provides full
  transparency to all parties while preserving private data.
- **Multiple authentication means**: authentication by SMS, email, geoIP
  or handwritten electronic signature.

## Types of documents you can sign with Odoo Sign

Odoo Sign is versatile and can be used for a wide range of documents,
including but not limited to:

- **Contracts and agreements**: business contracts, employment
  agreements, and service contracts.
- **Financial documents**: loan agreements, investment documents, and
  financial reports.
- **HR documents**: employee onboarding forms, non-disclosure agreements
  (NDAs), and performance reviews.
- **Commercial transactions**: purchase orders, sales agreements, and
  supplier contracts.

## Potential exceptions

While Odoo Sign is broadly applicable, there are certain exceptions
where electronic signatures may not be suitable or legally recognized in
Nigeria:

- **Wills and trusts**: documents related to inheritance, wills, and
  trusts often require handwritten signatures.
- **Real estate transactions**: some property transactions may still
  require notarized handwritten signatures.
- **Government forms**: specific government forms and applications may
  mandate physical signatures.

::: admonition
Disclaimer

The information provided on this page is for general informational
purposes only and does not constitute legal advice. While Odoo Sign
complies with the Electronic Signature Law of Nigeria, users should
consult with legal professionals to ensure specific document types and
use cases meet all legal requirements. Compliance with additional
industry-specific regulations may also be necessary.
:::

*Last updated: June 21, 2024*




--- SOURCE: productivity/sign/norway.md ---

orphan

:   

# Odoo Sign legality in Norway

`Odoo Sign <../sign>`{.interpreted-text role="doc"} is your trusted
partner for secure, efficient, and legally compliant electronic
signatures in Norway.

## Legal framework for electronic signatures in Norway

In Norway, electronic signatures are regulated under the Act on
electronic trust services that incorporates Electronic Identification
and Trust Services for Electronic Transactions in the Internal Market
(eIDAS) and Regulation No. 910/2014 of the European Parliament and of
the Council. The law governs transactions performed through electronic
means and the use of electronic signatures. The key points of the law
include:

- **Legal recognition**: electronic signatures are legally equivalent to
  handwritten signatures if they meet certain criteria.
- **Reliability and security**: electronic signatures must be created
  with a secure method that can reliably identify the signatory and
  ensure the integrity of the signed document.
- **Qualified trust service providers**: the law recognizes electronic
  signatures supported by digital certificates issued by Qualified Trust
  Service Providers.

## How Odoo Sign complies with Norwegian regulations

Odoo Sign ensures full compliance with the Electronic Signature Law of
Norway by incorporating the following features:

- **Secure signature creation**: Odoo Sign utilizes advanced
  cryptographic techniques to ensure the authenticity and integrity of
  electronic signatures.
- **Third-party signature authenticator**: Odoo Online serves as an
  independent validation mechanism that adds an extra layer of security
  to the procurement process.
- **Audit trails**: detailed audit logs are maintained to provide
  evidence of the signing process, including timestamps, IP addresses,
  and identity verification.
- **Cryptographic traceability and immutability**: Odoo Sign ensures
  that any operation is logged securely. An audit log provides full
  transparency to all parties while preserving private data.
- **Multiple authentication means**: authentication by SMS, email, geoIP
  or handwritten electronic signature.

## Types of documents you can sign with Odoo Sign

Odoo Sign is versatile and can be used for a wide range of documents,
including but not limited to:

- **Contracts and agreements**: business contracts, employment
  agreements, and service contracts.
- **Financial documents**: loan agreements, investment documents, and
  financial reports.
- **HR documents**: employee onboarding forms, non-disclosure agreements
  (NDAs), and performance reviews.
- **Commercial transactions**: purchase orders, sales agreements, and
  supplier contracts.

## Potential exceptions

While Odoo Sign is broadly applicable, there are certain exceptions
where electronic signatures may not be suitable or legally recognized in
Norway:

- **Wills and trusts**: documents related to inheritance, wills, and
  trusts often require handwritten signatures.
- **Real estate transactions**: some property transactions may still
  require notarized handwritten signatures.
- **Government forms**: specific government forms and applications may
  mandate physical signatures.

::: admonition
Disclaimer

The information provided on this page is for general informational
purposes only and does not constitute legal advice. While Odoo Sign
complies with the Electronic Signature Law of Norway, users should
consult with legal professionals to ensure specific document types and
use cases meet all legal requirements. Compliance with additional
industry-specific regulations may also be necessary.
:::

*Last updated: June 21, 2024*




--- SOURCE: productivity/sign/oman.md ---

orphan

:   

# Odoo Sign legality in Oman

`Odoo Sign <../sign>`{.interpreted-text role="doc"} is your trusted
partner for secure, efficient, and legally compliant electronic
signatures in Oman.

## Legal framework for electronic signatures in Oman

In Oman, electronic signatures are regulated under the Electronic
Transactions Law. The law establishes the legal basis for acknowledging
electronic records, contracts, and digital signatures. The key points of
the law include:

- **Legal recognition**: electronic signatures are legally equivalent to
  handwritten signatures if they meet certain criteria.
- **Reliability and security**: electronic signatures must be created
  with a secure method that can reliably identify the signatory and
  ensure the integrity of the signed document.
- **Certified electronic signature**: digital signature generated using
  a digital certificate supplied by a qualified provider.

## How Odoo Sign complies with Omani regulations

Odoo Sign ensures full compliance with the Electronic Signature Law of
Oman by incorporating the following features:

- **Secure signature creation**: Odoo Sign utilizes advanced
  cryptographic techniques to ensure the authenticity and integrity of
  electronic signatures.
- **Third-party signature authenticator**: Odoo Online serves as an
  independent validation mechanism that adds an extra layer of security
  to the procurement process.
- **Audit trails**: detailed audit logs are maintained to provide
  evidence of the signing process, including timestamps, IP addresses,
  and identity verification.
- **Cryptographic traceability and immutability**: Odoo Sign ensures
  that any operation is logged securely. An audit log provides full
  transparency to all parties while preserving private data.
- **Multiple authentication means**: authentication by SMS, email, geoIP
  or handwritten electronic signature.

## Types of documents you can sign with Odoo Sign

Odoo Sign is versatile and can be used for a wide range of documents,
including but not limited to:

- **Contracts and agreements**: business contracts, employment
  agreements, and service contracts.
- **Financial documents**: loan agreements, investment documents, and
  financial reports.
- **HR documents**: employee onboarding forms, non-disclosure agreements
  (NDAs), and performance reviews.
- **Commercial transactions**: purchase orders, sales agreements, and
  supplier contracts.

## Potential exceptions

While Odoo Sign is broadly applicable, there are certain exceptions
where electronic signatures may not be suitable or legally recognized in
Oman:

- **Wills and trusts**: documents related to inheritance, wills, and
  trusts often require handwritten signatures.
- **Real estate transactions**: some property transactions may still
  require notarized handwritten signatures.
- **Government forms**: specific government forms and applications may
  mandate physical signatures.

::: admonition
Disclaimer

The information provided on this page is for general informational
purposes only and does not constitute legal advice. While Odoo Sign
complies with the Electronic Signature Law of Oman, users should consult
with legal professionals to ensure specific document types and use cases
meet all legal requirements. Compliance with additional
industry-specific regulations may also be necessary.
:::

*Last updated: June 21, 2024*




--- SOURCE: productivity/sign/pakistan.md ---

orphan

:   

# Odoo Sign legality in Pakistan

`Odoo Sign <../sign>`{.interpreted-text role="doc"} is your trusted
partner for secure, efficient, and legally compliant electronic
signatures in Pakistan.

## Legal framework for electronic signatures in Pakistan

In Pakistan, electronic signatures are regulated under the [Electronic
Transactions Ordinance](https://www.pakistanlaw.com/eto.pdf). The law
governs the use of electronic records and signatures. The key points of
the law include:

- **Legal recognition**: electronic signatures are legally equivalent to
  handwritten signatures if they meet certain criteria.
- **Reliability and security**: electronic signatures must be created
  with a secure method that can reliably identify the signatory and
  ensure the integrity of the signed document.
- **Certified electronic signatures**: special electronic signature that
  incorporates certificates issued by an accredited certification
  service provider authorized by the Certification Council as being
  capable of establishing authenticity and integrity of an electronic
  document.

## How Odoo Sign complies with Pakistani regulations

Odoo Sign ensures full compliance with the Electronic Signature Law of
Pakistan by incorporating the following features:

- **Secure signature creation**: Odoo Sign utilizes advanced
  cryptographic techniques to ensure the authenticity and integrity of
  electronic signatures.
- **Third-party signature authenticator**: Odoo Online serves as an
  independent validation mechanism that adds an extra layer of security
  to the procurement process.
- **Audit trails**: detailed audit logs are maintained to provide
  evidence of the signing process, including timestamps, IP addresses,
  and identity verification.
- **Cryptographic traceability and immutability**: Odoo Sign ensures
  that any operation is logged securely. An audit log provides full
  transparency to all parties while preserving private data.
- **Multiple authentication means**: authentication by SMS, email, geoIP
  or handwritten electronic signature.

## Types of documents you can sign with Odoo Sign

Odoo Sign is versatile and can be used for a wide range of documents,
including but not limited to:

- **Contracts and agreements**: business contracts, employment
  agreements, and service contracts.
- **Financial documents**: loan agreements, investment documents, and
  financial reports.
- **HR documents**: employee onboarding forms, non-disclosure agreements
  (NDAs), and performance reviews.
- **Commercial transactions**: purchase orders, sales agreements, and
  supplier contracts.

## Potential exceptions

While Odoo Sign is broadly applicable, there are certain exceptions
where electronic signatures may not be suitable or legally recognized in
Pakistan:

- **Wills and trusts**: documents related to inheritance, wills, and
  trusts often require handwritten signatures.
- **Real estate transactions**: some property transactions may still
  require notarized handwritten signatures.
- **Government forms**: specific government forms and applications may
  mandate physical signatures.

::: admonition
Disclaimer

The information provided on this page is for general informational
purposes only and does not constitute legal advice. While Odoo Sign
complies with the Electronic Signature Law of Pakistan, users should
consult with legal professionals to ensure specific document types and
use cases meet all legal requirements. Compliance with additional
industry-specific regulations may also be necessary.
:::

*Last updated: June 21, 2024*




--- SOURCE: productivity/sign/peru.md ---

orphan

:   

# Odoo Sign legality in Peru

`Odoo Sign <../sign>`{.interpreted-text role="doc"} is your trusted
partner for secure, efficient, and legally compliant electronic
signatures in Peru.

## Legal framework for electronic signatures in Peru

In Peru, electronic signatures are regulated under the [Peruvian Civil
Code, Law 27269 -- Law of Digital Signatures and
Certificates](https://webfiles-sc1.blackbaud.com/files/support/helpfiles/npoconnect/content/resources/attachments/peru-law-295-civil-code.pdf),
[Supreme Decree N° 052-2008-PCM -- Regulation of the Law of Digital
Signatures and
Certificates](https://www.gob.pe/institucion/pcm/normas-legales/292462-052-2008-pcm).
The law establishes the legal basis for acknowledging electronic
records, contracts, and digital signatures. The key points of the law
include:

- **Legal recognition**: electronic signatures are legally equivalent to
  handwritten signatures if they meet certain criteria.
- **Reliability and security**: electronic signatures must be created
  with a secure method that can reliably identify the signatory and
  ensure the integrity of the signed document.
- **Digital signatures generated with the official electronic signature
  infrastructure**: digital signature generated using a digital
  certificate supplied by a provider accredited as such by the National
  Institute for the Defense of Competition and the Protection of
  Intellectual Property.

## How Odoo Sign complies with Peruvian regulations

Odoo Sign ensures full compliance with the Electronic Signature Law of
Peru by incorporating the following features:

- **Secure signature creation**: Odoo Sign utilizes advanced
  cryptographic techniques to ensure the authenticity and integrity of
  electronic signatures.
- **Third-party signature authenticator**: Odoo Online serves as an
  independent validation mechanism that adds an extra layer of security
  to the procurement process.
- **Audit trails**: detailed audit logs are maintained to provide
  evidence of the signing process, including timestamps, IP addresses,
  and identity verification.
- **Cryptographic traceability and immutability**: Odoo Sign ensures
  that any operation is logged securely. An audit log provides full
  transparency to all parties while preserving private data.
- **Multiple authentication means**: authentication by SMS, email, geoIP
  or handwritten electronic signature.

## Types of documents you can sign with Odoo Sign

Odoo Sign is versatile and can be used for a wide range of documents,
including but not limited to:

- **Contracts and agreements**: business contracts, employment
  agreements, and service contracts.
- **Financial documents**: loan agreements, investment documents, and
  financial reports.
- **HR documents**: employee onboarding forms, non-disclosure agreements
  (NDAs), and performance reviews.
- **Commercial transactions**: purchase orders, sales agreements, and
  supplier contracts.

## Potential exceptions

While Odoo Sign is broadly applicable, there are certain exceptions
where electronic signatures may not be suitable or legally recognized in
Peru:

- **Wills and trusts**: documents related to inheritance, wills, and
  trusts often require handwritten signatures.
- **Real estate transactions**: some property transactions may still
  require notarized handwritten signatures.
- **Government forms**: specific government forms and applications may
  mandate physical signatures.

::: admonition
Disclaimer

The information provided on this page is for general informational
purposes only and does not constitute legal advice. While Odoo Sign
complies with the Electronic Signature Law of Peru, users should consult
with legal professionals to ensure specific document types and use cases
meet all legal requirements. Compliance with additional
industry-specific regulations may also be necessary.
:::

*Last updated: June 21, 2024*




--- SOURCE: productivity/sign/philippines.md ---

orphan

:   

# Odoo Sign legality in the Philippines

`Odoo Sign <../sign>`{.interpreted-text role="doc"} is your trusted
partner for secure, efficient, and legally compliant electronic
signatures in the Philippines.

## Legal framework for electronic signatures in the Philippines

In the Philippines, electronic signatures are regulated under the
[Republic Act No.
8792](https://www.bsp.gov.ph/PaymentAndSettlement/RA8792.pdf) and the
[Electronic Commerce Act](https://pdf.usaid.gov/pdf_docs/pnacn440.pdf).
The law governs the use of electronic records and signatures. The key
points of the law include:

- **Legal recognition**: electronic signatures are legally equivalent to
  handwritten signatures if they meet certain criteria.
- **Reliability and security**: electronic signatures must be created
  with a secure method that can reliably identify the signatory and
  ensure the integrity of the signed document.
- **Philippine national public key infrastructure system**: the
  Philippine government operates an official PKI system known as the
  Philippine National Public Key Infrastructure. This system requires
  subscribers to adhere to specific obligations regarding the custody
  and proper use of digital certificates.

## How Odoo Sign complies with Philippine regulations

Odoo Sign ensures full compliance with the Electronic Signature Law of
the Philippines by incorporating the following features:

- **Secure signature creation**: Odoo Sign utilizes advanced
  cryptographic techniques to ensure the authenticity and integrity of
  electronic signatures.
- **Third-party signature authenticator**: Odoo Online serves as an
  independent validation mechanism that adds an extra layer of security
  to the procurement process.
- **Audit trails**: detailed audit logs are maintained to provide
  evidence of the signing process, including timestamps, IP addresses,
  and identity verification.
- **Cryptographic traceability and immutability**: Odoo Sign ensures
  that any operation is logged securely. An audit log provides full
  transparency to all parties while preserving private data.
- **Multiple authentication means**: authentication by SMS, email, geoIP
  or handwritten electronic signature.

## Types of documents you can sign with Odoo Sign

Odoo Sign is versatile and can be used for a wide range of documents,
including but not limited to:

- **Contracts and agreements**: business contracts, employment
  agreements, and service contracts.
- **Financial documents**: loan agreements, investment documents, and
  financial reports.
- **HR documents**: employee onboarding forms, non-disclosure agreements
  (NDAs), and performance reviews.
- **Commercial transactions**: purchase orders, sales agreements, and
  supplier contracts.

## Potential exceptions

While Odoo Sign is broadly applicable, there are certain exceptions
where electronic signatures may not be suitable or legally recognized in
the Philippines:

- **Wills and trusts**: documents related to inheritance, wills, and
  trusts often require handwritten signatures.
- **Real estate transactions**: some property transactions may still
  require notarized handwritten signatures.
- **Government forms**: specific government forms and applications may
  mandate physical signatures.

::: admonition
Disclaimer

The information provided on this page is for general informational
purposes only and does not constitute legal advice. While Odoo Sign
complies with the Electronic Signature Law of the Philippines, users
should consult with legal professionals to ensure specific document
types and use cases meet all legal requirements. Compliance with
additional industry-specific regulations may also be necessary.
:::

*Last updated: June 21, 2024*




--- SOURCE: productivity/sign/qatar.md ---

orphan

:   

# Odoo Sign legality in Qatar

`Odoo Sign <../sign>`{.interpreted-text role="doc"} is your trusted
partner for secure, efficient, and legally compliant electronic
signatures in Qatar.

## Legal framework for electronic signatures in Qatar

In Qatar, electronic signatures are regulated under the [Electronic
Transactions and Commerce Law No. 16 of
2010](https://cyrilla.org/api/files/158944297524747iagh8c1wf.pdf). The
law establishes the legal basis for acknowledging electronic records,
contracts, and digital signatures. The key points of the law include:

- **Legal recognition**: electronic signatures are legally equivalent to
  handwritten signatures if they meet certain criteria.
- **Reliability and security**: electronic signatures must be created
  with a secure method that can reliably identify the signatory and
  ensure the integrity of the signed document.
- **Certification authorities**: digital signature generated using a
  digital certificate supplied by a certified provider.

## How Odoo Sign complies with Qatari regulations

Odoo Sign ensures full compliance with the Electronic Signature Law of
Qatar by incorporating the following features:

- **Secure signature creation**: Odoo Sign utilizes advanced
  cryptographic techniques to ensure the authenticity and integrity of
  electronic signatures.
- **Third-party signature authenticator**: Odoo Online serves as an
  independent validation mechanism that adds an extra layer of security
  to the procurement process.
- **Audit trails**: detailed audit logs are maintained to provide
  evidence of the signing process, including timestamps, IP addresses,
  and identity verification.
- **Cryptographic traceability and immutability**: Odoo Sign ensures
  that any operation is logged securely. An audit log provides full
  transparency to all parties while preserving private data.
- **Multiple authentication means**: authentication by SMS, email, geoIP
  or handwritten electronic signature.

## Types of documents you can sign with Odoo Sign

Odoo Sign is versatile and can be used for a wide range of documents,
including but not limited to:

- **Contracts and agreements**: business contracts, employment
  agreements, and service contracts.
- **Financial documents**: loan agreements, investment documents, and
  financial reports.
- **HR documents**: employee onboarding forms, non-disclosure agreements
  (NDAs), and performance reviews.
- **Commercial transactions**: purchase orders, sales agreements, and
  supplier contracts.

## Potential exceptions

While Odoo Sign is broadly applicable, there are certain exceptions
where electronic signatures may not be suitable or legally recognized in
Qatar:

- **Wills and trusts**: documents related to inheritance, wills, and
  trusts often require handwritten signatures.
- **Real estate transactions**: some property transactions may still
  require notarized handwritten signatures.
- **Government forms**: specific government forms and applications may
  mandate physical signatures.

::: admonition
Disclaimer

The information provided on this page is for general informational
purposes only and does not constitute legal advice. While Odoo Sign
complies with the Electronic Signature Law of Qatar, users should
consult with legal professionals to ensure specific document types and
use cases meet all legal requirements. Compliance with additional
industry-specific regulations may also be necessary.
:::

*Last updated: June 21, 2024*




--- SOURCE: productivity/sign/russia.md ---

orphan

:   

# Odoo Sign legality in Russia

`Odoo Sign <../sign>`{.interpreted-text role="doc"} is your trusted
partner for secure, efficient, and legally compliant electronic
signatures in Russia.

## Legal framework for electronic signatures in Russia

In Russia, electronic signatures are regulated under the [Federal Law
No. 63-FZ as of 6 April 2011 \"On electronic
signature\"](https://afyonluoglu.org/PublicWebFiles/e-imza/int-legislation/Russia-Federal%20Law%20on%20e-Signatures.pdf)
and the [Civil Code of the Russian
Federation](https://www.wto.org/english/thewto_e/acc_e/rus_e/wtaccrus58_leg_360.pdf).
The law provides the foundation for the use and legal recognition of
electronic signatures. The key points of the law include:

- **Legal recognition**: electronic signatures are legally equivalent to
  handwritten signatures if they meet certain criteria.
- **Reliability and security**: electronic signatures must be created
  with a secure method that can reliably identify the signatory and
  ensure the integrity of the signed document.
- **Qualified electronic signatures**: the law recognizes digital
  signature certificates that serve as proof of identity of an
  individual for a certain purpose that can be used in special cases to
  provide additional security. These certificates are issued by
  Certification Authorities and are required by law for the signature of
  specific acts.

## How Odoo Sign complies with Russian regulations

Odoo Sign ensures full compliance with the Electronic Signature Law of
Russia by incorporating the following features:

- **Secure signature creation**: Odoo Sign utilizes advanced
  cryptographic techniques to ensure the authenticity and integrity of
  electronic signatures.
- **Third-party signature authenticator**: Odoo Online serves as an
  independent validation mechanism that adds an extra layer of security
  to the procurement process.
- **Audit trails**: detailed audit logs are maintained to provide
  evidence of the signing process, including timestamps, IP addresses,
  and identity verification.
- **Cryptographic traceability and immutability**: Odoo Sign ensures
  that any operation is logged securely. An audit log provides full
  transparency to all parties while preserving private data.
- **Multiple authentication means**: authentication by SMS, email, geoIP
  or handwritten electronic signature.

## Types of documents you can sign with Odoo Sign

Odoo Sign is versatile and can be used for a wide range of documents,
including but not limited to:

- **Contracts and agreements**: business contracts, employment
  agreements, and service contracts.
- **Financial documents**: loan agreements, investment documents, and
  financial reports.
- **HR documents**: employee onboarding forms, non-disclosure agreements
  (NDAs), and performance reviews.
- **Commercial transactions**: purchase orders, sales agreements, and
  supplier contracts.

## Potential exceptions

While Odoo Sign is broadly applicable, there are certain exceptions
where electronic signatures may not be suitable or legally recognized in
Russia:

- **Wills and trusts**: documents related to inheritance, wills, and
  trusts often require handwritten signatures.
- **Real estate transactions**: some property transactions may still
  require notarized handwritten signatures.
- **Government forms**: specific government forms and applications may
  mandate physical signatures.

::: admonition
Disclaimer

The information provided on this page is for general informational
purposes only and does not constitute legal advice. While Odoo Sign
complies with the Electronic Signature Law of Russia, users should
consult with legal professionals to ensure specific document types and
use cases meet all legal requirements. Compliance with additional
industry-specific regulations may also be necessary.
:::

*Last updated: June 19, 2024*




--- SOURCE: productivity/sign/saudi_arabia.md ---

orphan

:   

# Odoo Sign legality in Saudi Arabia

`Odoo Sign <../sign>`{.interpreted-text role="doc"} is your trusted
partner for secure, efficient, and legally compliant electronic
signatures in Saudi Arabia.

## Legal framework for electronic signatures in Saudi Arabia

In Saudi Arabia, electronic signatures are regulated under the
[Electronic Transactions
Law](https://www.mcit.gov.sa/sites/default/files/2021-06/la_003_e_e-transactions_act%20%281%29.pdf)
and the Regulation No. 1/1429. The law governs transactions performed
through electronic means and the use of electronic signatures. The key
points of the law include:

- **Legal recognition**: electronic signatures are legally equivalent to
  handwritten signatures if they meet certain criteria.
- **Reliability and security**: electronic signatures must be created
  with a secure method that can reliably identify the signatory and
  ensure the integrity of the signed document.
- **Certificate-based digital signatures**: the law recognizes
  electronic signatures supported by digital certificates issued by
  accredited Certification Service Provider.

## How Odoo Sign complies with Saudi regulations

Odoo Sign ensures full compliance with the Electronic Signature Law of
Saudi Arabia by incorporating the following features:

- **Secure signature creation**: Odoo Sign utilizes advanced
  cryptographic techniques to ensure the authenticity and integrity of
  electronic signatures.
- **Third-party signature authenticator**: Odoo Online serves as an
  independent validation mechanism that adds an extra layer of security
  to the procurement process.
- **Audit trails**: detailed audit logs are maintained to provide
  evidence of the signing process, including timestamps, IP addresses,
  and identity verification.
- **Cryptographic traceability and immutability**: Odoo Sign ensures
  that any operation is logged securely. An audit log provides full
  transparency to all parties while preserving private data.
- **Multiple authentication means**: authentication by SMS, email, geoIP
  or handwritten electronic signature.

## Types of documents you can sign with Odoo Sign

Odoo Sign is versatile and can be used for a wide range of documents,
including but not limited to:

- **Contracts and agreements**: business contracts, employment
  agreements, and service contracts.
- **Financial documents**: loan agreements, investment documents, and
  financial reports.
- **HR documents**: employee onboarding forms, non-disclosure agreements
  (NDAs), and performance reviews.
- **Commercial transactions**: purchase orders, sales agreements, and
  supplier contracts.

## Potential exceptions

While Odoo Sign is broadly applicable, there are certain exceptions
where electronic signatures may not be suitable or legally recognized in
Saudi Arabia:

- **Wills and trusts**: documents related to inheritance, wills, and
  trusts often require handwritten signatures.
- **Real estate transactions**: some property transactions may still
  require notarized handwritten signatures.
- **Government forms**: specific government forms and applications may
  mandate physical signatures.

::: admonition
Disclaimer

The information provided on this page is for general informational
purposes only and does not constitute legal advice. While Odoo Sign
complies with the Electronic Signature Law of Saudi Arabia, users should
consult with legal professionals to ensure specific document types and
use cases meet all legal requirements. Compliance with additional
industry-specific regulations may also be necessary.
:::

*Last updated: June 21, 2024*




--- SOURCE: productivity/sign/singapore.md ---

orphan

:   

# Odoo Sign legality in Singapore

`Odoo Sign <../sign>`{.interpreted-text role="doc"} is your trusted
partner for secure, efficient, and legally compliant electronic
signatures in Singapore.

## Legal framework for electronic signatures in Singapore

In Singapore, electronic signatures are regulated under the [Electronic
Transactions
Act](https://www.imda.gov.sg/-/media/imda/files/regulation-licensing-and-consultations/acts-regulations/electronic-transactions-act.pdf).
The law recognizes the use of electronic documents and electronic
signatures for the execution of contracts and other transactions. The
key points of the law include:

- **Legal recognition**: electronic signatures are legally equivalent to
  handwritten signatures if they meet certain criteria.
- **Reliability and security**: electronic signatures must be created
  with a secure method that can reliably identify the signatory and
  ensure the integrity of the signed document.

## How Odoo Sign complies with Singapore regulations

Odoo Sign ensures full compliance with the Electronic Signature Law of
Singapore by incorporating the following features:

- **Secure signature creation**: Odoo Sign utilizes advanced
  cryptographic techniques to ensure the authenticity and integrity of
  electronic signatures.
- **Third-party signature authenticator**: Odoo Online serves as an
  independent validation mechanism that adds an extra layer of security
  to the procurement process.
- **Audit trails**: detailed audit logs are maintained to provide
  evidence of the signing process, including timestamps, IP addresses,
  and identity verification.
- **Cryptographic traceability and immutability**: Odoo Sign ensures
  that any operation is logged securely. An audit log provides full
  transparency to all parties while preserving private data.
- **Multiple authentication means**: authentication by SMS, email, geoIP
  or handwritten electronic signature.

## Types of documents you can sign with Odoo Sign

Odoo Sign is versatile and can be used for a wide range of documents,
including but not limited to:

- **Contracts and agreements**: business contracts, employment
  agreements, and service contracts.
- **Financial documents**: loan agreements, investment documents, and
  financial reports.
- **HR documents**: employee onboarding forms, non-disclosure agreements
  (NDAs), and performance reviews.
- **Commercial transactions**: purchase orders, sales agreements, and
  supplier contracts.

## Potential exceptions

While Odoo Sign is broadly applicable, there are certain exceptions
where electronic signatures may not be suitable or legally recognized in
Singapore:

- **Wills and trusts**: documents related to inheritance, wills, and
  trusts often require handwritten signatures.
- **Real estate transactions**: some property transactions may still
  require notarized handwritten signatures.
- **Government forms**: specific government forms and applications may
  mandate physical signatures.

::: admonition
Disclaimer

The information provided on this page is for general informational
purposes only and does not constitute legal advice. While Odoo Sign
complies with the Electronic Signature Law of Singapore, users should
consult with legal professionals to ensure specific document types and
use cases meet all legal requirements. Compliance with additional
industry-specific regulations may also be necessary.
:::

*Last updated: June 21, 2024*




--- SOURCE: productivity/sign/south_africa.md ---

orphan

:   

# Odoo Sign legality in South Africa

`Odoo Sign <../sign>`{.interpreted-text role="doc"} is your trusted
partner for secure, efficient, and legally compliant electronic
signatures in South Africa.

## Legal framework for electronic signatures in South Africa

In South Africa, electronic signatures are regulated under the
[Electronic Communications and Transactions
Act](https://www.gov.za/sites/default/files/gcis_document/201409/a25-02.pdf).
The law governs transactions performed through electronic means and the
use of digital signatures. The key points of the law include:

- **Legal recognition**: electronic signatures are legally equivalent to
  handwritten signatures if they meet certain criteria.
- **Reliability and security**: electronic signatures must be created
  with a secure method that can reliably identify the signatory and
  ensure the integrity of the signed document.
- **Advance electronic signatures**: in some cases, electronic
  signatures must be certified by an electronic signature certification
  authority.

## How Odoo Sign complies with South African regulations

Odoo Sign ensures full compliance with the Electronic Signature Law of
South Africa by incorporating the following features:

- **Secure signature creation**: Odoo Sign utilizes advanced
  cryptographic techniques to ensure the authenticity and integrity of
  electronic signatures.
- **Third-party signature authenticator**: Odoo Online serves as an
  independent validation mechanism that adds an extra layer of security
  to the procurement process.
- **Audit trails**: detailed audit logs are maintained to provide
  evidence of the signing process, including timestamps, IP addresses,
  and identity verification.
- **Cryptographic traceability and immutability**: Odoo Sign ensures
  that any operation is logged securely. An audit log provides full
  transparency to all parties while preserving private data.
- **Multiple authentication means**: authentication by SMS, email, geoIP
  or handwritten electronic signature.

## Types of documents you can sign with Odoo Sign

Odoo Sign is versatile and can be used for a wide range of documents,
including but not limited to:

- **Contracts and agreements**: business contracts, employment
  agreements, and service contracts.
- **Financial documents**: loan agreements, investment documents, and
  financial reports.
- **HR documents**: employee onboarding forms, non-disclosure agreements
  (NDAs), and performance reviews.
- **Commercial transactions**: purchase orders, sales agreements, and
  supplier contracts.

## Potential exceptions

While Odoo Sign is broadly applicable, there are certain exceptions
where electronic signatures may not be suitable or legally recognized in
South Africa:

- **Wills and trusts**: documents related to inheritance, wills, and
  trusts often require handwritten signatures.
- **Real estate transactions**: some property transactions may still
  require notarized handwritten signatures.
- **Government forms**: specific government forms and applications may
  mandate physical signatures.

::: admonition
Disclaimer

The information provided on this page is for general informational
purposes only and does not constitute legal advice. While Odoo Sign
complies with the Electronic Signature Law of South Africa, users should
consult with legal professionals to ensure specific document types and
use cases meet all legal requirements. Compliance with additional
industry-specific regulations may also be necessary.
:::

*Last updated: June 21, 2024*




--- SOURCE: productivity/sign/south_korea.md ---

orphan

:   

# Odoo Sign legality in South Korea

`Odoo Sign <../sign>`{.interpreted-text role="doc"} is your trusted
partner for secure, efficient, and legally compliant electronic
signatures in South Korea.

## Legal framework for electronic signatures in South Korea

In South Korea, electronic signatures are regulated under the [Digital
Signature
Act](https://elaw.klri.re.kr/eng_mobile/viewer.do?hseq=61440&type=part&key=28#:~:text=The%20purpose%20of%20this%20Act,infrastructure%20for%20facilitating%20the%20use)
and the [Framework Act on Electronic Documents and Transactions of
Korea](https://elaw.klri.re.kr/eng_mobile/viewer.do?hseq=61440&type=part&key=28#:~:text=The%20purpose%20of%20this%20Act,infrastructure%20for%20facilitating%20the%20use).
The law governs transactions performed through electronic means and the
use of electronic signatures. The key points of the law include:

- **Legal recognition**: electronic signatures are legally equivalent to
  handwritten signatures if they meet certain criteria.
- **Reliability and security**: electronic signatures must be created
  with a secure method that can reliably identify the signatory and
  ensure the integrity of the signed document.
- **Electronic signature certification services**: the law recognizes
  digital signature certificates or "seals" that serve as proof of
  identity of an individual for a certain purpose that can be used in
  special cases to provide additional security. These certificates are
  issued by Certification Authorities and are required by law for the
  signature of specific acts.

## How Odoo Sign complies with South Korean regulations

Odoo Sign ensures full compliance with the Electronic Signature Law of
South Korea by incorporating the following features:

- **Secure signature creation**: Odoo Sign utilizes advanced
  cryptographic techniques to ensure the authenticity and integrity of
  electronic signatures.
- **Third-party signature authenticator**: Odoo Online serves as an
  independent validation mechanism that adds an extra layer of security
  to the procurement process.
- **Audit trails**: detailed audit logs are maintained to provide
  evidence of the signing process, including timestamps, IP addresses,
  and identity verification.
- **Cryptographic traceability and immutability**: Odoo Sign ensures
  that any operation is logged securely. An audit log provides full
  transparency to all parties while preserving private data.
- **Multiple authentication means**: authentication by SMS, email, geoIP
  or handwritten electronic signature.

## Types of documents you can sign with Odoo Sign

Odoo Sign is versatile and can be used for a wide range of documents,
including but not limited to:

- **Contracts and agreements**: business contracts, employment
  agreements, and service contracts.
- **Financial documents**: loan agreements, investment documents, and
  financial reports.
- **HR documents**: employee onboarding forms, non-disclosure agreements
  (NDAs), and performance reviews.
- **Commercial transactions**: purchase orders, sales agreements, and
  supplier contracts.

## Potential exceptions

While Odoo Sign is broadly applicable, there are certain exceptions
where electronic signatures may not be suitable or legally recognized in
South Korea:

- **Wills and trusts**: documents related to inheritance, wills, and
  trusts often require handwritten signatures.
- **Real estate transactions**: some property transactions may still
  require notarized handwritten signatures.
- **Government forms**: specific government forms and applications may
  mandate physical signatures.

::: admonition
Disclaimer

The information provided on this page is for general informational
purposes only and does not constitute legal advice. While Odoo Sign
complies with the Electronic Signature Law of South Korea, users should
consult with legal professionals to ensure specific document types and
use cases meet all legal requirements. Compliance with additional
industry-specific regulations may also be necessary.
:::

*Last updated: June 19, 2024*




--- SOURCE: productivity/sign/switzerland.md ---

orphan

:   

# Odoo Sign legality in Switzerland

`Odoo Sign <../sign>`{.interpreted-text role="doc"} is your trusted
partner for secure, efficient, and legally compliant electronic
signatures in Switzerland.

## Legal framework for electronic signatures in Switzerland

In Switzerland, electronic signatures are regulated under the [Federal
Act on Electronic
Signatures](https://www.wipo.int/wipolex/en/legislation/details/20036)
and the Swiss Code of Obligations. The law governs transactions
performed through electronic means and the use of electronic signatures.
The key points of the law include:

- **Legal recognition**: electronic signatures are legally equivalent to
  handwritten signatures if they meet certain criteria.
- **Reliability and security**: electronic signatures must be created
  with a secure method that can reliably identify the signatory and
  ensure the integrity of the signed document.
- **Qualified electronic signatures**: the law recognizes electronic
  signatures supported by digital certificates issued by accredited
  Certification Service Providers mandatory in some cases.

## How Odoo Sign complies with Swiss regulations

Odoo Sign ensures full compliance with the Electronic Signature Law of
Switzerland by incorporating the following features:

- **Secure signature creation**: Odoo Sign utilizes advanced
  cryptographic techniques to ensure the authenticity and integrity of
  electronic signatures.
- **Third-party signature authenticator**: Odoo Online serves as an
  independent validation mechanism that adds an extra layer of security
  to the procurement process.
- **Audit trails**: detailed audit logs are maintained to provide
  evidence of the signing process, including timestamps, IP addresses,
  and identity verification.
- **Cryptographic traceability and immutability**: Odoo Sign ensures
  that any operation is logged securely. An audit log provides full
  transparency to all parties while preserving private data.
- **Multiple authentication means**: authentication by SMS, email, geoIP
  or handwritten electronic signature.

## Types of documents you can sign with Odoo Sign

Odoo Sign is versatile and can be used for a wide range of documents,
including but not limited to:

- **Contracts and agreements**: business contracts, employment
  agreements, and service contracts.
- **Financial documents**: loan agreements, investment documents, and
  financial reports.
- **HR documents**: employee onboarding forms, non-disclosure agreements
  (NDAs), and performance reviews.
- **Commercial transactions**: purchase orders, sales agreements, and
  supplier contracts.

## Potential exceptions

While Odoo Sign is broadly applicable, there are certain exceptions
where electronic signatures may not be suitable or legally recognized in
Switzerland:

- **Wills and trusts**: documents related to inheritance, wills, and
  trusts often require handwritten signatures.
- **Real estate transactions**: some property transactions may still
  require notarized handwritten signatures.
- **Government forms**: specific government forms and applications may
  mandate physical signatures.

::: admonition
Disclaimer

The information provided on this page is for general informational
purposes only and does not constitute legal advice. While Odoo Sign
complies with the Electronic Signature Law of Switzerland, users should
consult with legal professionals to ensure specific document types and
use cases meet all legal requirements. Compliance with additional
industry-specific regulations may also be necessary.
:::

*Last updated: June 21, 2024*




--- SOURCE: productivity/sign/thailand.md ---

orphan

:   

# Odoo Sign legality in Thailand

`Odoo Sign <../sign>`{.interpreted-text role="doc"} is your trusted
partner for secure, efficient, and legally compliant electronic
signatures in Thailand.

## Legal framework for electronic signatures in Thailand

In Thailand, electronic signatures are regulated under the [Electronic
Transaction Act B.E.
2544](https://www.etda.or.th/getattachment/8faa736b-3235-49c8-8b01-d37ff53a9a45/ENG-Version.aspx).
The law governs transactions performed through electronic means and the
use of digital signatures. The key points of the law include:

- **Legal recognition**: electronic signatures are legally equivalent to
  handwritten signatures if they meet certain criteria.
- **Reliability and security**: electronic signatures must be created
  with a secure method that can reliably identify the signatory and
  ensure the integrity of the signed document.

## How Odoo Sign complies with Thai regulations

Odoo Sign ensures full compliance with the Electronic Signature Law of
Thailand by incorporating the following features:

- **Secure signature creation**: Odoo Sign utilizes advanced
  cryptographic techniques to ensure the authenticity and integrity of
  electronic signatures.
- **Third-party signature authenticator**: Odoo Online serves as an
  independent validation mechanism that adds an extra layer of security
  to the procurement process.
- **Audit trails**: detailed audit logs are maintained to provide
  evidence of the signing process, including timestamps, IP addresses,
  and identity verification.
- **Cryptographic traceability and immutability**: Odoo Sign ensures
  that any operation is logged securely. An audit log provides full
  transparency to all parties while preserving private data.
- **Multiple authentication means**: authentication by SMS, email, geoIP
  or handwritten electronic signature.

## Types of documents you can sign with Odoo Sign

Odoo Sign is versatile and can be used for a wide range of documents,
including but not limited to:

- **Contracts and agreements**: business contracts, employment
  agreements, and service contracts.
- **Financial documents**: loan agreements, investment documents, and
  financial reports.
- **HR documents**: employee onboarding forms, non-disclosure agreements
  (NDAs), and performance reviews.
- **Commercial transactions**: purchase orders, sales agreements, and
  supplier contracts.

## Potential exceptions

While Odoo Sign is broadly applicable, there are certain exceptions
where electronic signatures may not be suitable or legally recognized in
Thailand:

- **Wills and trusts**: documents related to inheritance, wills, and
  trusts often require handwritten signatures.
- **Real estate transactions**: some property transactions may still
  require notarized handwritten signatures.
- **Government forms**: specific government forms and applications may
  mandate physical signatures.

::: admonition
Disclaimer

The information provided on this page is for general informational
purposes only and does not constitute legal advice. While Odoo Sign
complies with the Electronic Signature Law of Thailand, users should
consult with legal professionals to ensure specific document types and
use cases meet all legal requirements. Compliance with additional
industry-specific regulations may also be necessary.
:::

*Last updated: June 21, 2024*




--- SOURCE: productivity/sign/turkey.md ---

orphan

:   

# Odoo Sign legality in Turkey

`Odoo Sign <../sign>`{.interpreted-text role="doc"} is your trusted
partner for secure, efficient, and legally compliant electronic
signatures in Turkey.

## Legal framework for electronic signatures in Turkey

In Turkey, electronic signatures are regulated under the [Electronic
Signature Law
No.5070](https://www.mevzuat.gov.tr/MevzuatMetin/1.5.5070.pdf), [Code of
Obligations No.
6098](https://www.wipo.int/wipolex/en/legislation/details/11084), among
other secondary regulations. The law governs transactions performed
through electronic means and the use of electronic signatures. The key
points of the law include:

- **Legal recognition**: electronic signatures are legally equivalent to
  handwritten signatures if they meet certain criteria.
- **Reliability and security**: electronic signatures must be created
  with a secure method that can reliably identify the signatory and
  ensure the integrity of the signed document.
- **Electronic certificate service provider**: the law recognizes
  electronic signatures supported by digital certificates issued by
  accredited Certification Service Provider.

## How Odoo Sign complies with Turkish regulations

Odoo Sign ensures full compliance with the Electronic Signature Law of
Turkey by incorporating the following features:

- **Secure signature creation**: Odoo Sign utilizes advanced
  cryptographic techniques to ensure the authenticity and integrity of
  electronic signatures.
- **Third-party signature authenticator**: Odoo Online serves as an
  independent validation mechanism that adds an extra layer of security
  to the procurement process.
- **Audit trails**: detailed audit logs are maintained to provide
  evidence of the signing process, including timestamps, IP addresses,
  and identity verification.
- **Cryptographic traceability and immutability**: Odoo Sign ensures
  that any operation is logged securely. An audit log provides full
  transparency to all parties while preserving private data.
- **Multiple authentication means**: authentication by SMS, email, geoIP
  or handwritten electronic signature.

## Types of documents you can sign with Odoo Sign

Odoo Sign is versatile and can be used for a wide range of documents,
including but not limited to:

- **Contracts and agreements**: business contracts, employment
  agreements, and service contracts.
- **Financial documents**: loan agreements, investment documents, and
  financial reports.
- **HR documents**: employee onboarding forms, non-disclosure agreements
  (NDAs), and performance reviews.
- **Commercial transactions**: purchase orders, sales agreements, and
  supplier contracts.

## Potential exceptions

While Odoo Sign is broadly applicable, there are certain exceptions
where electronic signatures may not be suitable or legally recognized in
Turkey:

- **Wills and trusts**: documents related to inheritance, wills, and
  trusts often require handwritten signatures.
- **Real estate transactions**: some property transactions may still
  require notarized handwritten signatures.
- **Government forms**: specific government forms and applications may
  mandate physical signatures.

::: admonition
Disclaimer

The information provided on this page is for general informational
purposes only and does not constitute legal advice. While Odoo Sign
complies with the Electronic Signature Law of Turkey, users should
consult with legal professionals to ensure specific document types and
use cases meet all legal requirements. Compliance with additional
industry-specific regulations may also be necessary.
:::

*Last updated: June 21, 2024*




--- SOURCE: productivity/sign/ukraine.md ---

orphan

:   

# Odoo Sign legality in Ukraine

`Odoo Sign <../sign>`{.interpreted-text role="doc"} is your trusted
partner for secure, efficient, and legally compliant electronic
signatures in Ukraine.

## Legal framework for electronic signatures in Ukraine

In Ukraine, electronic signatures are regulated under the Law of Ukraine
No. 852-IV \"On Electronic Digital Signature. The law establishes the
legal basis for acknowledging electronic records, contracts, and digital
signatures. The key points of the law include:

- **Legal recognition**: electronic signatures are legally equivalent to
  handwritten signatures if they meet certain criteria.
- **Reliability and security**: electronic signatures must be created
  with a secure method that can reliably identify the signatory and
  ensure the integrity of the signed document.
- **Qualified electronic signature**: digital signature generated using
  a digital certificate supplied by a qualified provider.

## How Odoo Sign complies with Ukrainian regulations

Odoo Sign ensures full compliance with the Electronic Signature Law of
Ukraine by incorporating the following features:

- **Secure signature creation**: Odoo Sign utilizes advanced
  cryptographic techniques to ensure the authenticity and integrity of
  electronic signatures.
- **Third-party signature authenticator**: Odoo Online serves as an
  independent validation mechanism that adds an extra layer of security
  to the procurement process.
- **Audit trails**: detailed audit logs are maintained to provide
  evidence of the signing process, including timestamps, IP addresses,
  and identity verification.
- **Cryptographic traceability and immutability**: Odoo Sign ensures
  that any operation is logged securely. An audit log provides full
  transparency to all parties while preserving private data.
- **Multiple authentication means**: authentication by SMS, email, geoIP
  or handwritten electronic signature.

## Types of documents you can sign with Odoo Sign

Odoo Sign is versatile and can be used for a wide range of documents,
including but not limited to:

- **Contracts and agreements**: business contracts, employment
  agreements, and service contracts.
- **Financial documents**: loan agreements, investment documents, and
  financial reports.
- **HR documents**: employee onboarding forms, non-disclosure agreements
  (NDAs), and performance reviews.
- **Commercial transactions**: purchase orders, sales agreements, and
  supplier contracts.

## Potential exceptions

While Odoo Sign is broadly applicable, there are certain exceptions
where electronic signatures may not be suitable or legally recognized in
Ukraine:

- **Wills and trusts**: documents related to inheritance, wills, and
  trusts often require handwritten signatures.
- **Real estate transactions**: some property transactions may still
  require notarized handwritten signatures.
- **Government forms**: specific government forms and applications may
  mandate physical signatures.

::: admonition
Disclaimer

The information provided on this page is for general informational
purposes only and does not constitute legal advice. While Odoo Sign
complies with the Electronic Signature Law of Ukraine, users should
consult with legal professionals to ensure specific document types and
use cases meet all legal requirements. Compliance with additional
industry-specific regulations may also be necessary.
:::

*Last updated: June 21, 2024*




--- SOURCE: productivity/sign/united_arab_emirates.md ---

orphan

:   

# Odoo Sign legality in the United Arab Emirates

`Odoo Sign <../sign>`{.interpreted-text role="doc"} is your trusted
partner for secure, efficient, and legally compliant electronic
signatures in the United Arab Emirates.

## Legal framework for electronic signatures in the United Arab Emirates

In the United Arab Emirates, electronic signatures are regulated under
the [Federal Decree by Law No. 46 of 2021 on Electronic Transactions and
Trust
Services](https://tdra.gov.ae/-/media/About/Others/FEDERAL-DECREELAW-NO-46-OF-2021--English.ashx#:~:text=This%20Decree%2DLaw%20aims%20to,Electronic%20Transactions%20across%20all%20sectors.),
[ADGM Electronic Transactions Regulations
202](https://adgmen.thomsonreuters.com/sites/default/files/net_file_store/ADGM1547_23197_VER2021.pdf),
[DIFC Law No. 2 of
2017](https://www.difc.ae/business/laws-and-regulations/legal-database/difc-laws/electronic-transactions-law-difc-law-no-2-2017).
The law governs transactions performed through electronic means and the
use of digital signatures. The key points of the law include:

- **Legal recognition**: electronic signatures are legally equivalent to
  handwritten signatures if they meet certain criteria.
- **Reliability and security**: electronic signatures must be created
  with a secure method that can reliably identify the signatory and
  ensure the integrity of the signed document.
- **Qualified electronic signature**: the law recognizes electronic
  signatures supported by digital certificates issued by a qualified
  trust service provider.

## How Odoo Sign complies with Emirati regulations

Odoo Sign ensures full compliance with the Electronic Signature Law of
the United Arab Emirates by incorporating the following features:

- **Secure signature creation**: Odoo Sign utilizes advanced
  cryptographic techniques to ensure the authenticity and integrity of
  electronic signatures.
- **Third-party signature authenticator**: Odoo Online serves as an
  independent validation mechanism that adds an extra layer of security
  to the procurement process.
- **Audit trails**: detailed audit logs are maintained to provide
  evidence of the signing process, including timestamps, IP addresses,
  and identity verification.
- **Cryptographic traceability and immutability**: Odoo Sign ensures
  that any operation is logged securely. An audit log provides full
  transparency to all parties while preserving private data.
- **Multiple authentication means**: authentication by SMS, email, geoIP
  or handwritten electronic signature.

## Types of documents you can sign with Odoo Sign

Odoo Sign is versatile and can be used for a wide range of documents,
including but not limited to:

- **Contracts and agreements**: business contracts, employment
  agreements, and service contracts.
- **Financial documents**: loan agreements, investment documents, and
  financial reports.
- **HR documents**: employee onboarding forms, non-disclosure agreements
  (NDAs), and performance reviews.
- **Commercial transactions**: purchase orders, sales agreements, and
  supplier contracts.

## Potential exceptions

While Odoo Sign is broadly applicable, there are certain exceptions
where electronic signatures may not be suitable or legally recognized in
the United Arab Emirates:

- **Wills and trusts**: documents related to inheritance, wills, and
  trusts often require handwritten signatures.
- **Real estate transactions**: some property transactions may still
  require notarized handwritten signatures.
- **Government forms**: specific government forms and applications may
  mandate physical signatures.

::: admonition
Disclaimer

The information provided on this page is for general informational
purposes only and does not constitute legal advice. While Odoo Sign
complies with the Electronic Signature Law of the United Arab Emirates,
users should consult with legal professionals to ensure specific
document types and use cases meet all legal requirements. Compliance
with additional industry-specific regulations may also be necessary.
:::

*Last updated: June 21, 2024*




--- SOURCE: productivity/sign/united_kingdom.md ---

orphan

:   

# Odoo Sign legality in the United Kingdom

`Odoo Sign <../sign>`{.interpreted-text role="doc"} is your trusted
partner for secure, efficient, and legally compliant electronic
signatures in the United Kingdom.

## Legal framework for electronic signatures in the United Kingdom

In the United Kingdom, electronic signatures are regulated under
Electronic Communications Act (ECA), and the [UK
version](https://ico.org.uk/for-organisations/guide-to-eidas/) of
Regulation (EU) No 910/2014 of the European Parliament and of the
Council of 23 July 2014 on electronic identification and trust services
for electronic transactions in the internal market (eIDAS) as amended by
the [Electronic Identification and Trust Services for Electronic
Transactions](https://www.legislation.gov.uk/uksi/2019/89/made)
(Amendment) (EU Exit) Regulations 2019 (SI 2019/89) (the "UK eIDAS
Regulation"). The law provides the foundation for the use and legal
recognition of electronic signatures. The key points of the law include:

- **Legal recognition**: electronic signatures are legally equivalent to
  handwritten signatures if they meet certain criteria.
- **Reliability and security**: electronic signatures must be created
  with a secure method that can reliably identify the signatory and
  ensure the integrity of the signed document.
- **Digital signature certificates**: the law recognizes digital
  signature certificates that serve as proof of identity of an
  individual for a certain purpose that can be used in special cases to
  provide additional security. These certificates are issued by
  Certification Authorities and are required by law for the signature of
  specific acts.

## How Odoo Sign complies with the United Kingdom regulations

Odoo Sign ensures full compliance with the Electronic Signature Law of
the United Kingdom by incorporating the following features:

- **Secure signature creation**: Odoo Sign utilizes advanced
  cryptographic techniques to ensure the authenticity and integrity of
  electronic signatures.
- **Third-party signature authenticator**: Odoo Online serves as an
  independent validation mechanism that adds an extra layer of security
  to the procurement process.
- **Audit trails**: detailed audit logs are maintained to provide
  evidence of the signing process, including timestamps, IP addresses,
  and identity verification.
- **Cryptographic traceability and immutability**: Odoo Sign ensures
  that any operation is logged securely. An audit log provides full
  transparency to all parties while preserving private data.
- **Multiple authentication means**: authentication by SMS, email, geoIP
  or handwritten electronic signature.

## Types of documents you can sign with Odoo Sign

Odoo Sign is versatile and can be used for a wide range of documents,
including but not limited to:

- **Contracts and agreements**: business contracts, employment
  agreements, and service contracts.
- **Financial documents**: loan agreements, investment documents, and
  financial reports.
- **HR documents**: employee onboarding forms, non-disclosure agreements
  (NDAs), and performance reviews.
- **Commercial transactions**: purchase orders, sales agreements, and
  supplier contracts.

## Potential exceptions

While Odoo Sign is broadly applicable, there are certain exceptions
where electronic signatures may not be suitable or legally recognized in
the United Kingdom:

- **Wills and trusts**: documents related to inheritance, wills, and
  trusts often require handwritten signatures.
- **Real estate transactions**: some property transactions may still
  require notarized handwritten signatures.
- **Government forms**: specific government forms and applications may
  mandate physical signatures.

::: admonition
Disclaimer

The information provided on this page is for general informational
purposes only and does not constitute legal advice. While Odoo Sign
complies with the Electronic Signature Law of the United Kingdom, users
should consult with legal professionals to ensure specific document
types and use cases meet all legal requirements. Compliance with
additional industry-specific regulations may also be necessary.
:::

*Last updated: June 19, 2024*




--- SOURCE: productivity/sign/uzbekistan.md ---

orphan

:   

# Odoo Sign legality in Uzbekistan

`Odoo Sign <../sign>`{.interpreted-text role="doc"} is your trusted
partner for secure, efficient, and legally compliant electronic
signatures in Uzbekistan.

## Legal framework for electronic signatures in Uzbekistan

In Uzbekistan, electronic signatures are regulated under the [Law On
Electronic Digital
Signature](https://cis-legislation.com/document.fwx?rgn=144357). The law
establishes the legal basis for acknowledging electronic records,
contracts, and digital signatures. The key points of the law include:

- **Legal recognition**: electronic signatures are legally equivalent to
  handwritten signatures if they meet certain criteria.
- **Reliability and security**: electronic signatures must be created
  with a secure method that can reliably identify the signatory and
  ensure the integrity of the signed document.
- **Electronic digital signature keys**: digital signature generated
  using a digital certificate supplied by a qualified provider.

## How Odoo Sign complies with Uzbekistani regulations

Odoo Sign ensures full compliance with the Electronic Signature Law of
Uzbekistan by incorporating the following features:

- **Secure signature creation**: Odoo Sign utilizes advanced
  cryptographic techniques to ensure the authenticity and integrity of
  electronic signatures.
- **Third-party signature authenticator**: Odoo Online serves as an
  independent validation mechanism that adds an extra layer of security
  to the procurement process.
- **Audit trails**: detailed audit logs are maintained to provide
  evidence of the signing process, including timestamps, IP addresses,
  and identity verification.
- **Cryptographic traceability and immutability**: Odoo Sign ensures
  that any operation is logged securely. An audit log provides full
  transparency to all parties while preserving private data.
- **Multiple authentication means**: authentication by SMS, email, geoIP
  or handwritten electronic signature.

## Types of documents you can sign with Odoo Sign

Odoo Sign is versatile and can be used for a wide range of documents,
including but not limited to:

- **Contracts and agreements**: business contracts, employment
  agreements, and service contracts.
- **Financial documents**: loan agreements, investment documents, and
  financial reports.
- **HR documents**: employee onboarding forms, non-disclosure agreements
  (NDAs), and performance reviews.
- **Commercial transactions**: purchase orders, sales agreements, and
  supplier contracts.

## Potential exceptions

While Odoo Sign is broadly applicable, there are certain exceptions
where electronic signatures may not be suitable or legally recognized in
Uzbekistan:

- **Wills and trusts**: documents related to inheritance, wills, and
  trusts often require handwritten signatures.
- **Real estate transactions**: some property transactions may still
  require notarized handwritten signatures.
- **Government forms**: specific government forms and applications may
  mandate physical signatures.

::: admonition
Disclaimer

The information provided on this page is for general informational
purposes only and does not constitute legal advice. While Odoo Sign
complies with the Electronic Signature Law of Uzbekistan, users should
consult with legal professionals to ensure specific document types and
use cases meet all legal requirements. Compliance with additional
industry-specific regulations may also be necessary.
:::

*Last updated: June 21, 2024*




--- SOURCE: productivity/sign/vietnam.md ---

orphan

:   

# Odoo Sign legality in Vietnam

`Odoo Sign <../sign>`{.interpreted-text role="doc"} is your trusted
partner for secure, efficient, and legally compliant electronic
signatures in Vietnam.

## Legal framework for electronic signatures in Vietnam

In Vietnam, electronic signatures are regulated under the [Civil Code
No.
91/2015/QH132015](https://www.wipo.int/wipolex/en/legislation/details/17200),
the [Law on E-Transactions No.
51/2005/QH11](https://www.wto.org/english/thewto_e/acc_e/vnm_e/wtaccvnm43_leg_5.pdf).
The law governs transactions performed through electronic means and the
use of digital signatures. The key points of the law include:

- **Legal recognition**: electronic signatures are legally equivalent to
  handwritten signatures if they meet certain criteria.
- **Reliability and security**: electronic signatures must be created
  with a secure method that can reliably identify the signatory and
  ensure the integrity of the signed document.
- **Certified electronic signatures**: the law regulates the use of
  digital certificates that guarantee security and integrity of the
  signature. In some cases, electronic signatures must be certified by
  an electronic signature certification service provide

## How Odoo Sign complies with Vietnamese regulations

Odoo Sign ensures full compliance with the Electronic Signature Law of
Vietnam by incorporating the following features:

- **Secure signature creation**: Odoo Sign utilizes advanced
  cryptographic techniques to ensure the authenticity and integrity of
  electronic signatures.
- **Third-party signature authenticator**: Odoo Online serves as an
  independent validation mechanism that adds an extra layer of security
  to the procurement process.
- **Audit trails**: detailed audit logs are maintained to provide
  evidence of the signing process, including timestamps, IP addresses,
  and identity verification.
- **Cryptographic traceability and immutability**: Odoo Sign ensures
  that any operation is logged securely. An audit log provides full
  transparency to all parties while preserving private data.
- **Multiple authentication means**: authentication by SMS, email, geoIP
  or handwritten electronic signature.

## Types of documents you can sign with Odoo Sign

Odoo Sign is versatile and can be used for a wide range of documents,
including but not limited to:

- **Contracts and agreements**: business contracts, employment
  agreements, and service contracts.
- **Financial documents**: loan agreements, investment documents, and
  financial reports.
- **HR documents**: employee onboarding forms, non-disclosure agreements
  (NDAs), and performance reviews.
- **Commercial transactions**: purchase orders, sales agreements, and
  supplier contracts.

## Potential exceptions

While Odoo Sign is broadly applicable, there are certain exceptions
where electronic signatures may not be suitable or legally recognized in
Vietnam:

- **Wills and trusts**: documents related to inheritance, wills, and
  trusts often require handwritten signatures.
- **Real estate transactions**: some property transactions may still
  require notarized handwritten signatures.
- **Government forms**: specific government forms and applications may
  mandate physical signatures.

::: admonition
Disclaimer

The information provided on this page is for general informational
purposes only and does not constitute legal advice. While Odoo Sign
complies with the Electronic Signature Law of Vietnam, users should
consult with legal professionals to ensure specific document types and
use cases meet all legal requirements. Compliance with additional
industry-specific regulations may also be necessary.
:::

*Last updated: June 21, 2024*




--- SOURCE: productivity/sign.md ---

# Sign

**Odoo Sign** allows you to send, sign, and approve documents online,
using electronic signatures.

An **electronic signature** shows a person\'s agreement to the content
of a document. Just like a handwritten signature, the electronic one
represents a legal bounding by the terms of the signed document.

With Sign, you can upload any PDF file and add fields to it. These
fields can be automatically filled in with the user\'s details present
in your database.

::: seealso
\- [Odoo Sign: product page](https://www.odoo.com/app/sign) - [Odoo
Tutorials: Sign \[video\]](https://www.odoo.com/slides/sign-61)
:::

## Validity of electronic signatures

Documents signed via the Sign app are valid electronic signatures in the
European Union and the United States of America. They also meet the
requirements for electronic signatures in most countries. The legal
validity of electronic signatures generated by Odoo depends on your
country\'s legislation. Companies doing business abroad should also
consider other countries\' electronic signature laws.

:::: important
::: title
Important
:::

The below information has no legal value; it is only provided for
general informational purposes. As laws governing electronic signatures
rapidly evolve, we cannot guarantee that all information is up-to-date.
We advise contacting a local attorney for legal advice regarding
electronic signature compliance and validity.
::::

### European Union

The [eIDAS regulation](http://data.europa.eu/eli/reg/2014/910/oj)
establishes the framework for electronic signatures in the [27 member
states of the European
Union](https://europa.eu/european-union/about-eu/countries_en). It
distinguishes three types of electronic signatures:

1.  Simple electronic signatures
2.  Advanced electronic signatures
3.  Qualified electronic signatures

Odoo generates the first type, **simple electronic signatures**; these
signatures are legally valid in the EU, as stated in the eIDAS
regulation.

Electronic signatures may not be automatically recognized as valid. You
may need to bring supporting evidence of a signature\'s validity. While
the Sign app provides a simple electronic signature, some supporting
evidence is automatically collected during the signature process, such
as:

1.  Email and SMS validation (if enabled)
2.  Strong identity proof through itsme® (available in Belgium and the
    Netherlands)
3.  Timestamped, IP and geographically traceable access logs to the
    documents and their associated signatures
4.  Document traceability and inalterability (any alteration made to a
    signed document is detected by Odoo with the use of cryptographic
    proofs)

:::: note
::: title
Note
:::

`Documentation for Germany <sign/germany>`{.interpreted-text role="doc"}
::::

### United States of America

The [ESIGN Act (Electronic Signatures in Global and National Commerce
Act)](https://www.fdic.gov/regulations/compliance/manual/10/X-3.1.pdf),
at the interstate and international levels, and the [UETA (Uniform
Electronic Transactions
Act)](https://www.uniformlaws.org/committees/community-home/librarydocuments?communitykey=2c04b76c-2b7d-4399-977e-d5876ba7e034&tab=librarydocuments),
at the state level, provide the legal framework for electronic
signatures. Note that
[Illinois](https://www.ilga.gov/legislation/ilcs/ilcs5.asp?ActID=89&)
and [New
York](https://its.ny.gov/electronic-signatures-and-records-act-esra)
have not adopted the UETA, but similar acts instead.

Overall, to be recognized as valid, electronic signatures have to meet
five criteria:

1.  The signer must show a clear **intent to sign**. For example, using
    a mouse to draw a signature can show intent. The signer must also
    have the option to opt out of the electronic document.
2.  The signer must first express or imply their **consent to conduct
    business electronically**.
3.  **The signature must be clearly attributed**. In Odoo, metadata,
    such as the signer\'s IP address, is added to the signature, which
    can be used as supporting evidence.
4.  **The signature must be associated with the signed document**, for
    example, by keeping a record detailing how the signature was
    captured.
5.  Electronically signed documents need to be **retained and stored**
    by all parties involved; for example, by providing the signer either
    a fully-executed copy or the possibility to download a copy.

### Other countries

- `Algeria <sign/algeria>`{.interpreted-text role="doc"}
- `Angola <sign/angola>`{.interpreted-text role="doc"}
- `Argentina <sign/argentina>`{.interpreted-text role="doc"}
- `Australia <sign/australia>`{.interpreted-text role="doc"}
- `Azerbaijan <sign/azerbaijan>`{.interpreted-text role="doc"}
- `Bangladesh <sign/bangladesh>`{.interpreted-text role="doc"}
- `Brazil <sign/brazil>`{.interpreted-text role="doc"}
- `Canada <sign/canada>`{.interpreted-text role="doc"}
- `Chile <sign/chile>`{.interpreted-text role="doc"}
- `China <sign/china>`{.interpreted-text role="doc"}
- `Colombia <sign/colombia>`{.interpreted-text role="doc"}
- `Dominican Republic <sign/dominican_republic>`{.interpreted-text
  role="doc"}
- `Ecuador <sign/ecuador>`{.interpreted-text role="doc"}
- `Egypt <sign/egypt>`{.interpreted-text role="doc"}
- `Ethiopia <sign/ethiopia>`{.interpreted-text role="doc"}
- `Guatemala <sign/guatemala>`{.interpreted-text role="doc"}
- `Hong Kong <sign/hong_kong>`{.interpreted-text role="doc"}
- `India <sign/india>`{.interpreted-text role="doc"}
- `Indonesia <sign/indonesia>`{.interpreted-text role="doc"}
- `Iran <sign/iran>`{.interpreted-text role="doc"}
- `Iraq <sign/iraq>`{.interpreted-text role="doc"}
- `Israel <sign/israel>`{.interpreted-text role="doc"}
- `Japan <sign/japan>`{.interpreted-text role="doc"}
- `Kazakhstan <sign/kazakhstan>`{.interpreted-text role="doc"}
- `Kenya <sign/kenya>`{.interpreted-text role="doc"}
- `Kuwait <sign/kuwait>`{.interpreted-text role="doc"}
- `Malaysia <sign/malaysia>`{.interpreted-text role="doc"}
- `Mexico <sign/mexico>`{.interpreted-text role="doc"}
- `Morocco <sign/morocco>`{.interpreted-text role="doc"}
- `New Zealand <sign/new_zealand>`{.interpreted-text role="doc"}
- `Nigeria <sign/nigeria>`{.interpreted-text role="doc"}
- `Norway <sign/norway>`{.interpreted-text role="doc"}
- `Oman <sign/oman>`{.interpreted-text role="doc"}
- `Pakistan <sign/pakistan>`{.interpreted-text role="doc"}
- `Peru <sign/peru>`{.interpreted-text role="doc"}
- `Philippines <sign/philippines>`{.interpreted-text role="doc"}
- `Qatar <sign/qatar>`{.interpreted-text role="doc"}
- `Russia <sign/russia>`{.interpreted-text role="doc"}
- `Saudi Arabia <sign/saudi_arabia>`{.interpreted-text role="doc"}
- `Singapore <sign/singapore>`{.interpreted-text role="doc"}
- `South Africa <sign/south_africa>`{.interpreted-text role="doc"}
- `South Korea <sign/south_korea>`{.interpreted-text role="doc"}
- `Switzerland <sign/switzerland>`{.interpreted-text role="doc"}
- `Thailand <sign/thailand>`{.interpreted-text role="doc"}
- `Turkey <sign/turkey>`{.interpreted-text role="doc"}
- `Ukraine <sign/ukraine>`{.interpreted-text role="doc"}
- `United Arab Emirates <sign/united_arab_emirates>`{.interpreted-text
  role="doc"}
- `United Kingdom <sign/united_kingdom>`{.interpreted-text role="doc"}
- `Uzbekistan <sign/uzbekistan>`{.interpreted-text role="doc"}
- `Vietnam <sign/vietnam>`{.interpreted-text role="doc"}

## Send a document to sign

### One-time signature

You can click `Upload a PDF to sign`{.interpreted-text role="guilabel"}
from your dashboard for a one-time signature. Select your document, open
it, and drag and drop the required
`fields <sign/fields>`{.interpreted-text role="ref"} in your document.
You can modify the `role <sign/role>`{.interpreted-text role="ref"}
assigned to a field by clicking on it and selecting the one you want.

When ready, click `Send`{.interpreted-text role="guilabel"}, and fill in
the required fields. Once sent, your document remains available. Go to
`Documents --> All Documents`{.interpreted-text role="menuselection"} to
see your document and the status of the signatures.

![Signature status](sign/signature-status.png)

### Templates

You can create document templates when you have to send the same
document several times. From your dashboard, click
`Upload a PDF template`{.interpreted-text role="guilabel"}. Select the
document and add the required `fields <sign/fields>`{.interpreted-text
role="ref"}. You can modify the `role <sign/role>`{.interpreted-text
role="ref"} of a field by clicking on it and selecting the one you want.

Click `Template Properties`{.interpreted-text role="guilabel"} to add
`Tags`{.interpreted-text role="guilabel"} to your template, define a
`Signed Document Workspace`{.interpreted-text role="guilabel"}, add
`Signed Document Tags`{.interpreted-text role="guilabel"}, set a
`Redirect Link`{.interpreted-text role="guilabel"} that will be
available in the signature confirmation message received after the
signature, or define `Authorized Users`{.interpreted-text
role="guilabel"} if you want to restrict the use of your template to
specific authorized users or groups.

Your templates are visible by default on your dashboard. You can click
`Send`{.interpreted-text role="guilabel"} to quickly send a document
template to a signer or `Sign Now`{.interpreted-text role="guilabel"} if
you are ready to sign your document immediately.

:::: tip
::: title
Tip
:::

You can **create a template from a document that was previously sent**.
To do so, go to `Documents --> All Documents`{.interpreted-text
role="menuselection"}. On the document you want to retrieve, click on ⋮,
then `Template`{.interpreted-text role="guilabel"}. Click on ⋮ again,
then `Restore`{.interpreted-text role="guilabel"}. Your document now
appears on your dashboard next to your other templates.
::::

## Roles {#sign/role}

Each field in a Sign document is related to a role corresponding to a
specific person. When a document is being signed, the person assigned to
the role must fill in their assigned fields and sign it.

Roles are available by going to
`Sign --> Configuration --> Roles`{.interpreted-text
role="menuselection"}.

It is possible to update existing roles or to create new roles by
clicking on `New`{.interpreted-text role="guilabel"}. Choose a
`Role Name`{.interpreted-text role="guilabel"}, add an
`Extra Authentication Step`{.interpreted-text role="guilabel"} to
confirm the identity of the signing person, and if the document can be
reassigned to another contact, select
`Change Authorized`{.interpreted-text role="guilabel"} for the role. A
`Color`{.interpreted-text role="guilabel"} can also be chosen for the
role. This color can help understand which roles are responsible for
which field when configuring a template.

### Secured identification

As the owner of a document, you may request an
`Extra Authentication Step`{.interpreted-text role="guilabel"} through
`SMS verification <sign/sms>`{.interpreted-text role="ref"} or via
`Itsme® <sign/itsme>`{.interpreted-text role="ref"} (available in
Belgium and the Netherlands). Both authentication options require
`credits <iap/buying_credits>`{.interpreted-text role="ref"}. If you do
not have any credits left, the authentication steps will be skipped.

::: seealso
\-
`In-App Purchase (IAP) <../essentials/in_app_purchase>`{.interpreted-text
role="doc"} -
`SMS pricing and FAQ <../marketing/sms_marketing/pricing/pricing_and_faq>`{.interpreted-text
role="doc"}
:::

#### SMS verification {#sign/sms}

Go to `Sign --> Configuration --> Roles`{.interpreted-text
role="menuselection"}. Click in the `Extra
Authentication Step`{.interpreted-text role="guilabel"} column for the
role, and select `Unique Code Via SMS`{.interpreted-text
role="guilabel"}.

:::: note
::: title
Note
:::

Before being able to send SMS Text Messages, you need to register your
phone number. To do so, go to
`Sign --> Configuration --> Settings`{.interpreted-text
role="menuselection"} and click `Buy credits`{.interpreted-text
role="guilabel"} under `Authenticate by SMS`{.interpreted-text
role="guilabel"}.
::::

Go to the document to sign, add the field for which the SMS verification
is required, for example, the `Signature`{.interpreted-text
role="guilabel"} field, and click `Send`{.interpreted-text
role="guilabel"}. On the new page, select the
`customer`{.interpreted-text role="guilabel"} and click
`Send`{.interpreted-text role="guilabel"}.

The person signing the document fills in the
`Signature`{.interpreted-text role="guilabel"} field, then
`Sign`{.interpreted-text role="guilabel"}, and clicks
`Validate & Send Completed Document`{.interpreted-text role="guilabel"}.
A `Final Validation`{.interpreted-text role="guilabel"} page pops up
where to add their phone number. One-time codes are sent by SMS.

![Add a hash to your document](sign/sms-verification.png)

:::: note
::: title
Note
:::

\- This feature is enabled by default. - As soon as the
`Extra Authentication Step`{.interpreted-text role="guilabel"} applies
to a role, this validation step is requested for any field assigned to
this role.
::::

#### Itsme® {#sign/itsme}

Itsme® authentication can be used to allow signatories to provide their
identity using itsme®. This feature is only available in **Belgium** and
the **Netherlands**.

The feature can be enabled in `Sign Settings`{.interpreted-text
role="guilabel"} and applies automatically to the
`Customer (identified with itsme®)`{.interpreted-text role="guilabel"}
role. To enable it for other roles, go to
`Sign --> Configuration --> Roles`{.interpreted-text
role="menuselection"}. Click in the `Extra Authentication
Step`{.interpreted-text role="guilabel"} column for the role, and select
`Via itsme®`{.interpreted-text role="guilabel"}.

Go to the document that needs to be signed and add the
`Signature`{.interpreted-text role="guilabel"} field. Switch to any role
configured to use the feature, and click `Validate`{.interpreted-text
role="guilabel"} and `Send`{.interpreted-text role="guilabel"}.

![select customer identified with itsme®](sign/itsme-identification.png)

Upon signing the document, the signer completes the
`Signature`{.interpreted-text role="guilabel"} field and proceeds by
clicking on `Validate & Send Completed Document`{.interpreted-text
role="guilabel"}, triggering a `Final verification`{.interpreted-text
role="guilabel"} page where authentication via itsme® is required.

## Signatory hash

Each time someone signs a document, a **hash** - a unique digital
signature of the operation - is generated to ensure traceability,
integrity, and inalterability. This process guarantees that any changes
made after a signature is affixed can be easily detected, maintaining
the document\'s authenticity and security throughout its lifecycle.

A visual security frame displaying the beginning of the hash is added to
the signatures. Internal users can hide or show it by turning the
`Frame`{.interpreted-text role="guilabel"} option on or off when signing
the document.

![Adding the visual security frame to a signature.](sign/sign-hash.png)

## Tags {#sign/field-types}

Tags can be used to categorize and organize documents, allowing users to
search for and filter documents based on specific criteria quickly.

You can manage tags by going to
`Configuration --> Tags`{.interpreted-text role="menuselection"}. To
create a tag, click `New`{.interpreted-text role="guilabel"}. On the new
line, add the `Tag Name`{.interpreted-text role="guilabel"} and select a
`Color Index`{.interpreted-text role="guilabel"} for your tag.

To apply a tag to a document, use the dropdown list available in your
document.

## Sign order

When a document needs to be signed by different parties, the signing
order lets you control the order in which your recipients receive it for
signature.

By going to `Configuration --> Settings`{.interpreted-text
role="menuselection"}, you can `Enable Signing Order`{.interpreted-text
role="guilabel"}. Each recipient receives the signature request
notification only once the previous recipient has completed their
action.

Add at least two `Signature`{.interpreted-text role="guilabel"} fields
with different roles to your document. Click `Send`{.interpreted-text
role="guilabel"}, go to the `Options`{.interpreted-text role="guilabel"}
tab, and tick the `Specify signing order`{.interpreted-text
role="guilabel"} box.

Add the signer\'s `Name or email`{.interpreted-text role="guilabel"}
information. You can decide on the `Sign Order`{.interpreted-text
role="guilabel"} by typing `1`{.interpreted-text role="guilabel"} or
`2`{.interpreted-text role="guilabel"} in the
`Sign Order`{.interpreted-text role="guilabel"} column.

::: seealso
[Odoo Quick Tips: Sign order
\[video\]](https://www.youtube.com/watch?v=2KUq7RPt1cU/)
:::

## Field types {#sign/fields}

Fields are used in a document to indicate what information must be
completed by the signers. You can add fields to your document simply by
dragging and dropping them for the left column into your document.

Various field types can be used to sign documents (placeholder,
autocompletion, etc.). By configuring your own field types, also known
as signature item types, the signing process can be even faster for your
customers, partners, and employees.

To create and edit field types, go to
`Sign --> Configuration --> Settings -->
Edit field types`{.interpreted-text role="menuselection"}.

You can select an existing field by clicking on it, or you can
`Create`{.interpreted-text role="guilabel"} a new one. First, edit the
`Field Name`{.interpreted-text role="guilabel"}. Then, select a
`Field Type`{.interpreted-text role="guilabel"}:

- `Signature`{.interpreted-text role="guilabel"}: users are asked to
  enter their signature either by drawing it, generating an automatic
  one based on their name, or uploading a local file (usually an image).
  Each subsequent `Signature`{.interpreted-text role="guilabel"} field
  type then reuses the data entered in the first field.
- `Initial`{.interpreted-text role="guilabel"}: users are asked to enter
  their initials, in a similar way to the `Signature`{.interpreted-text
  role="guilabel"} field.
- `Text`{.interpreted-text role="guilabel"}: users enter text on a
  single line.
- `Multiline Text`{.interpreted-text role="guilabel"}: users enter text
  on multiple lines.
- `Checkbox`{.interpreted-text role="guilabel"}: users can tick a box
  (e.g., to mark their approval or consent).
- `Selection`{.interpreted-text role="guilabel"}: users choose a single
  option from a variety of options.

The `Auto-fill Partner Field`{.interpreted-text role="guilabel"} setting
is used to automatically fill in a field during the signature process.
It uses the value of one of the fields on the contact
([res.partner]{.title-ref}) model of the person signing the document. To
do so, enter the contact model field\'s technical name.

:::: tip
::: title
Tip
:::

To know the technical name of a field, enable developer mode and hover
your mouse on the question mark next to the field.
::::

:::: note
::: title
Note
:::

Auto-completed values are suggestions and can be modified as required by
the person signing the document.
::::

The size of the fields can also be changed by editing the
`Default Width`{.interpreted-text role="guilabel"} and
`Default Height`{.interpreted-text role="guilabel"}. Both sizes are
defined as a percentage of the full page expressed as a decimal, with 1
equalling the full page\'s width or height. By default, the width of new
fields you create is set to 15% (0.150) of a full page\'s width, while
their height is set to 1.5% (0.015) of a full page\'s height.

Next, write a `Tip`{.interpreted-text role="guilabel"}. Tips are
displayed inside arrows on the left-hand side of the user\'s screen
during the signing process to help them understand what the step entails
(e.g., \"Sign here\" or "Fill in your birthdate"). You can also use a
`Placeholder`{.interpreted-text role="guilabel"} text to be displayed
inside the field before it is completed.

![Tip and placeholder example in Odoo Sign](sign/tip-placeholder.png)




--- SOURCE: productivity/spreadsheet/functions.md ---

# Functions

Spreadsheet functions are divided in the following categories:

- `Database <functions/database>`{.interpreted-text role="ref"}
- `Date <functions/date>`{.interpreted-text role="ref"}
- `Engineering <functions/engineering>`{.interpreted-text role="ref"}
- `Financial <functions/financial>`{.interpreted-text role="ref"}
- `Info <functions/info>`{.interpreted-text role="ref"}
- `Logical <functions/logical>`{.interpreted-text role="ref"}
- `Lookup <functions/lookup>`{.interpreted-text role="ref"}
- `Math <functions/math>`{.interpreted-text role="ref"}
- `Misc <functions/misc>`{.interpreted-text role="ref"}
- `Odoo <functions/odoo>`{.interpreted-text role="ref"}
- `Operators <functions/operators>`{.interpreted-text role="ref"}
- `Statistical <functions/statistical>`{.interpreted-text role="ref"}
- `Text <functions/text>`{.interpreted-text role="ref"}

:::: note
::: title
Note
:::

Formulas containing functions that are not compatible with Excel are
replaced by their evaluated result when exporting a spreadsheet.
::::

## Database {#functions/database}

  Name and arguments                    Description or link
  ------------------------------------- -----------------------------------------------------------------------------------------------------------------------
  DAVERAGE(database, field, criteria)   [Excel DAVERAGE article](https://support.microsoft.com/office/daverage-function-a6a2d5ac-4b4b-48cd-a1d8-7b37834e5aee)
  DCOUNT(database, field, criteria)     [Excel DCOUNT article](https://support.microsoft.com/office/dcount-function-c1fc7b93-fb0d-4d8d-97db-8d5f076eaeb1)
  DCOUNTA(database, field, criteria)    [Excel DCOUNTA article](https://support.microsoft.com/office/dcounta-function-00232a6d-5a66-4a01-a25b-c1653fda1244)
  DGET(database, field, criteria)       [Excel DGET article](https://support.microsoft.com/office/dget-function-455568bf-4eef-45f7-90f0-ec250d00892e)
  DMAX(database, field, criteria)       [Excel DMAX article](https://support.microsoft.com/office/dmax-function-f4e8209d-8958-4c3d-a1ee-6351665d41c2)
  DMIN(database, field, criteria)       [Excel DMIN article](https://support.microsoft.com/office/dmin-function-4ae6f1d9-1f26-40f1-a783-6dc3680192a3)
  DPRODUCT(database, field, criteria)   [Excel DPRODUCT article](https://support.microsoft.com/office/dproduct-function-4f96b13e-d49c-47a7-b769-22f6d017cb31)
  DSTDEV(database, field, criteria)     [Excel DSTDEV article](https://support.microsoft.com/office/dstdev-function-026b8c73-616d-4b5e-b072-241871c4ab96)
  DSTDEVP(database, field, criteria)    [Excel DSTDEVP article](https://support.microsoft.com/office/dstdevp-function-04b78995-da03-4813-bbd9-d74fd0f5d94b)
  DSUM(database, field, criteria)       [Excel DSUM article](https://support.microsoft.com/office/dsum-function-53181285-0c4b-4f5a-aaa3-529a322be41b)
  DVAR(database, field, criteria)       [Excel DVAR article](https://support.microsoft.com/office/dvar-function-d6747ca9-99c7-48bb-996e-9d7af00f3ed1)
  DVARP(database, field, criteria)      [Excel DVARP article](https://support.microsoft.com/office/dvarp-function-eb0ba387-9cb7-45c8-81e9-0394912502fc)

## Date {#functions/date}

  Name and arguments                                                  Description or link
  ------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------
  DATE(year, month, day)                                              [Excel DATE article](https://support.microsoft.com/office/date-function-e36c0c8c-4104-49da-ab83-82328b832349)
  DATEVALUE(date_string)                                              [Excel DATEVALUE article](https://support.microsoft.com/office/datevalue-function-df8b07d4-7761-4a93-bc33-b7471bbff252)
  DAY(date)                                                           [Excel DAY article](https://support.microsoft.com/office/day-function-8a7d1cbb-6c7d-4ba1-8aea-25c134d03101)
  DAYS(end_date, start_date)                                          [Excel DAYS article](https://support.microsoft.com/office/days-function-57740535-d549-4395-8728-0f07bff0b9df)
  DAYS360(start_date, end_date, \[method\])                           [Excel DAYS360 article](https://support.microsoft.com/office/days360-function-b9a509fd-49ef-407e-94df-0cbda5718c2a)
  EDATE(start_date, months)                                           [Excel EDATE article](https://support.microsoft.com/office/edate-function-3c920eb2-6e66-44e7-a1f5-753ae47ee4f5)
  EOMONTH(start_date, months)                                         [Excel EOMONTH article](https://support.microsoft.com/office/eomonth-function-7314ffa1-2bc9-4005-9d66-f49db127d628)
  HOUR(time)                                                          [Excel HOUR article](https://support.microsoft.com/office/hour-function-a3afa879-86cb-4339-b1b5-2dd2d7310ac7)
  ISOWEEKNUM(date)                                                    [Excel ISOWEEKNUM article](https://support.microsoft.com/office/isoweeknum-function-1c2d0afe-d25b-4ab1-8894-8d0520e90e0e)
  MINUTE(time)                                                        [Excel MINUTE article](https://support.microsoft.com/office/minute-function-af728df0-05c4-4b07-9eed-a84801a60589)
  MONTH(date)                                                         [Excel MONTH article](https://support.microsoft.com/office/month-function-579a2881-199b-48b2-ab90-ddba0eba86e8)
  NETWORKDAYS(start_date, end_date, \[holidays\])                     [Excel NETWORKDAYS article](https://support.microsoft.com/office/networkdays-function-48e717bf-a7a3-495f-969e-5005e3eb18e7)
  NETWORKDAYS.INTL(start_date, end_date, \[weekend\], \[holidays\])   [Excel NETWORKDAYS.INTL article](https://support.microsoft.com/office/networkdays-intl-function-a9b26239-4f20-46a1-9ab8-4e925bfd5e28)
  NOW()                                                               [Excel NOW article](https://support.microsoft.com/office/now-function-3337fd29-145a-4347-b2e6-20c904739c46)
  SECOND(time)                                                        [Excel SECOND article](https://support.microsoft.com/office/second-function-740d1cfc-553c-4099-b668-80eaa24e8af1)
  TIME(hour, minute, second)                                          [Excel TIME article](https://support.microsoft.com/office/time-function-9a5aff99-8f7d-4611-845e-747d0b8d5457)
  TIMEVALUE(time_string)                                              [Excel TIMEVALUE article](https://support.microsoft.com/office/timevalue-function-0b615c12-33d8-4431-bf3d-f3eb6d186645)
  TODAY()                                                             [Excel TODAY article](https://support.microsoft.com/office/today-function-5eb3078d-a82c-4736-8930-2f51a028fdd9)
  WEEKDAY(date, \[type\])                                             [Excel WEEKDAY article](https://support.microsoft.com/office/weekday-function-60e44483-2ed1-439f-8bd0-e404c190949a)
  WEEKNUM(date, \[type\])                                             [Excel WEEKNUM article](https://support.microsoft.com/office/weeknum-function-e5c43a03-b4ab-426c-b411-b18c13c75340)
  WORKDAY(start_date, num_days, \[holidays\])                         [Excel WORKDAY article](https://support.microsoft.com/office/workday-function-f764a5b7-05fc-4494-9486-60d494efbf33)
  WORKDAY.INTL(start_date, num_days, \[weekend\], \[holidays\])       [Excel WORKDAY.INTL article](https://support.microsoft.com/office/workday-intl-function-a378391c-9ba7-4678-8a39-39611a9bf81d)
  YEAR(date)                                                          [Excel YEAR article](https://support.microsoft.com/office/year-function-c64f017a-1354-490d-981f-578e8ec8d3b9)
  YEARFRAC(start_date, end_date, \[day_count_convention\])            Exact number of years between two dates (not compatible with Excel)
  MONTH.START(date)                                                   First day of the month preceding a date (not compatible with Excel)
  MONTH.END(date)                                                     Last day of the month following a date (not compatible with Excel)
  QUARTER(date)                                                       Quarter of the year a specific date falls in (not compatible with Excel)
  QUARTER.START(date)                                                 First day of the quarter of the year a specific date falls in (not compatible with Excel)
  QUARTER.END(date)                                                   Last day of the quarter of the year a specific date falls in (not compatible with Excel)
  YEAR.START(date)                                                    First day of the year a specific date falls in (not compatible with Excel)
  YEAR.END(date)                                                      Last day of the year a specific date falls in (not compatible with Excel)

## Engineering {#functions/engineering}

  Name and arguments            Description or link
  ----------------------------- -----------------------------------------------------------------------------------------------------------------
  DELTA(number1, \[number2\])   [Excel DELTA article](https://support.microsoft.com/office/delta-function-2f763672-c959-4e07-ac33-fe03220ba432)

## Financial {#functions/financial}

  Name and arguments                                                                                                   Description or link
  -------------------------------------------------------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------
  ACCRINTM(issue, maturity, rate, redemption, \[day_count_convention\])                                                [Excel ACCRINTM article](https://support.microsoft.com/office/accrintm-function-f62f01f9-5754-4cc4-805b-0e70199328a7)
  AMORLINC(cost, purchase_date, first_period_end, salvage, period, rate, \[day_count_convention\])                     [Excel AMORLINC article](https://support.microsoft.com/office/amorlinc-function-7d417b45-f7f5-4dba-a0a5-3451a81079a8)
  COUPDAYS(settlement, maturity, frequency, \[day_count_convention\])                                                  [Excel COUPDAYS article](https://support.microsoft.com/office/coupdays-function-cc64380b-315b-4e7b-950c-b30b0a76f671)
  COUPDAYBS(settlement, maturity, frequency, \[day_count_convention\])                                                 [Excel COUPDAYBS article](https://support.microsoft.com/office/coupdaybs-function-eb9a8dfb-2fb2-4c61-8e5d-690b320cf872)
  COUPDAYSNC(settlement, maturity, frequency, \[day_count_convention\])                                                [Excel COUPDAYSNC article](https://support.microsoft.com/office/coupdaysnc-function-5ab3f0b2-029f-4a8b-bb65-47d525eea547)
  COUPNCD(settlement, maturity, frequency, \[day_count_convention\])                                                   [Excel COUPNCD article](https://support.microsoft.com/office/coupncd-function-fd962fef-506b-4d9d-8590-16df5393691f)
  COUPNUM(settlement, maturity, frequency, \[day_count_convention\])                                                   [Excel COUPNUM article](https://support.microsoft.com/office/coupnum-function-a90af57b-de53-4969-9c99-dd6139db2522)
  COUPPCD(settlement, maturity, frequency, \[day_count_convention\])                                                   [Excel COUPPCD article](https://support.microsoft.com/office/couppcd-function-2eb50473-6ee9-4052-a206-77a9a385d5b3)
  CUMIPMT(rate, number_of_periods, present_value, first_period, last_period, \[end_or_beginning\])                     [Excel CUMIPMT article](https://support.microsoft.com/office/cumipmt-function-61067bb0-9016-427d-b95b-1a752af0e606)
  CUMPRINC(rate, number_of_periods, present_value, first_period, last_period, \[end_or_beginning\])                    [Excel CUMPRINC article](https://support.microsoft.com/office/cumprinc-function-94a4516d-bd65-41a1-bc16-053a6af4c04d)
  DB(cost, salvage, life, period, \[month\])                                                                           [Excel DB article](https://support.microsoft.com/office/db-function-354e7d28-5f93-4ff1-8a52-eb4ee549d9d7)
  DDB(cost, salvage, life, period, \[factor\])                                                                         [Excel DDB article](https://support.microsoft.com/office/ddb-function-519a7a37-8772-4c96-85c0-ed2c209717a5)
  DISC(settlement, maturity, price, redemption, \[day_count_convention\])                                              [Excel DISC article](https://support.microsoft.com/office/disc-function-71fce9f3-3f05-4acf-a5a3-eac6ef4daa53)
  DOLLARDE(fractional_price, unit)                                                                                     [Excel DOLLARDE article](https://support.microsoft.com/office/dollarde-function-db85aab0-1677-428a-9dfd-a38476693427)
  DOLLARFR(decimal_price, unit)                                                                                        [Excel DOLLARFR article](https://support.microsoft.com/office/dollarfr-function-0835d163-3023-4a33-9824-3042c5d4f495)
  DURATION(settlement, maturity, rate, yield, frequency, \[day_count_convention\])                                     [Excel DURATION article](https://support.microsoft.com/office/duration-function-b254ea57-eadc-4602-a86a-c8e369334038)
  EFFECT(nominal_rate, periods_per_year)                                                                               [Excel EFFECT article](https://support.microsoft.com/office/effect-function-910d4e4c-79e2-4009-95e6-507e04f11bc4)
  FV(rate, number_of_periods, payment_amount, \[present_value\], \[end_or_beginning\])                                 [Excel FV article](https://support.microsoft.com/office/fv-function-2eef9f44-a084-4c61-bdd8-4fe4bb1b71b3)
  FVSCHEDULE(principal, rate_schedule)                                                                                 [Excel FVSCHEDULE article](https://support.microsoft.com/office/fvschedule-function-bec29522-bd87-4082-bab9-a241f3fb251d)
  INTRATE(settlement, maturity, investment, redemption, \[day_count_convention\])                                      [Excel INTRATE article](https://support.microsoft.com/office/intrate-function-5cb34dde-a221-4cb6-b3eb-0b9e55e1316f)
  IPMT(rate, period, number_of_periods, present_value, \[future_value\], \[end_or_beginning\])                         [Excel IPMT article](https://support.microsoft.com/office/ipmt-function-5cce0ad6-8402-4a41-8d29-61a0b054cb6f)
  IRR(cashflow_amounts, \[rate_guess\])                                                                                [Excel IRR article](https://support.microsoft.com/office/irr-function-64925eaa-9988-495b-b290-3ad0c163c1bc)
  ISPMT(rate, period, number_of_periods, present_value)                                                                [Excel ISPMT article](https://support.microsoft.com/office/ispmt-function-fa58adb6-9d39-4ce0-8f43-75399cea56cc)
  MDURATION(settlement, maturity, rate, yield, frequency, \[day_count_convention\])                                    [Excel MDURATION article](https://support.microsoft.com/office/mduration-function-b3786a69-4f20-469a-94ad-33e5b90a763c)
  MIRR(cashflow_amounts, financing_rate, reinvestment_return_rate)                                                     [Excel MIRR article](https://support.microsoft.com/office/mirr-function-b020f038-7492-4fb4-93c1-35c345b53524)
  NOMINAL(effective_rate, periods_per_year)                                                                            [Excel NOMINAL article](https://support.microsoft.com/office/nominal-function-7f1ae29b-6b92-435e-b950-ad8b190ddd2b)
  NPER(rate, payment_amount, present_value, \[future_value\], \[end_or_beginning\])                                    [Excel NPER article](https://support.microsoft.com/office/nper-function-240535b5-6653-4d2d-bfcf-b6a38151d815)
  NPV(discount, cashflow1, \[cashflow2, \...\])                                                                        [Excel NPV article](https://support.microsoft.com/office/npv-function-8672cb67-2576-4d07-b67b-ac28acf2a568)
  PDURATION(rate, present_value, future_value)                                                                         [Excel PDURATION article](https://support.microsoft.com/office/pduration-function-44f33460-5be5-4c90-b857-22308892adaf)
  PMT(rate, number_of_periods, present_value, \[future_value\], \[end_or_beginning\])                                  [Excel PMT article](https://support.microsoft.com/office/pmt-function-0214da64-9a63-4996-bc20-214433fa6441)
  PPMT(rate, period, number_of_periods, present_value, \[future_value\], \[end_or_beginning\])                         [Excel PPMT article](https://support.microsoft.com/office/ppmt-function-c370d9e3-7749-4ca4-beea-b06c6ac95e1b)
  PV(rate, number_of_periods, payment_amount, \[future_value\], \[end_or_beginning\])                                  [Excel PV article](https://support.microsoft.com/office/pv-function-23879d31-0e02-4321-be01-da16e8168cbd)
  PRICE(settlement, maturity, rate, yield, redemption, frequency, \[day_count_convention\])                            [Excel PRICE article](https://support.microsoft.com/office/price-function-3ea9deac-8dfa-436f-a7c8-17ea02c21b0a)
  PRICEDISC(settlement, maturity, discount, redemption, \[day_count_convention\])                                      [Excel PRICEDISC article](https://support.microsoft.com/office/pricedisc-function-d06ad7c1-380e-4be7-9fd9-75e3079acfd3)
  PRICEMAT(settlement, maturity, issue, rate, yield, \[day_count_convention\])                                         [Excel PRICEMAT article](https://support.microsoft.com/office/pricemat-function-52c3b4da-bc7e-476a-989f-a95f675cae77)
  RATE(number_of_periods, payment_per_period, present_value, \[future_value\], \[end_or_beginning\], \[rate_guess\])   [Excel RATE article](https://support.microsoft.com/office/rate-function-9f665657-4a7e-4bb7-a030-83fc59e748ce)
  RECEIVED(settlement, maturity, investment, discount, \[day_count_convention\])                                       [Excel RECEIVED article](https://support.microsoft.com/office/received-function-7a3f8b93-6611-4f81-8576-828312c9b5e5)
  RRI(number_of_periods, present_value, future_value)                                                                  [Excel RRI article](https://support.microsoft.com/office/rri-function-6f5822d8-7ef1-4233-944c-79e8172930f4)
  SLN(cost, salvage, life)                                                                                             [Excel SLN article](https://support.microsoft.com/office/sln-function-cdb666e5-c1c6-40a7-806a-e695edc2f1c8)
  SYD(cost, salvage, life, period)                                                                                     [Excel SYD article](https://support.microsoft.com/office/syd-function-069f8106-b60b-4ca2-98e0-2a0f206bdb27)
  TBILLPRICE(settlement, maturity, discount)                                                                           [Excel TBILLPRICE article](https://support.microsoft.com/office/tbillprice-function-eacca992-c29d-425a-9eb8-0513fe6035a2)
  TBILLEQ(settlement, maturity, discount)                                                                              [Excel TBILLEQ article](https://support.microsoft.com/office/tbilleq-function-2ab72d90-9b4d-4efe-9fc2-0f81f2c19c8c)
  TBILLYIELD(settlement, maturity, price)                                                                              [Excel TBILLYIELD article](https://support.microsoft.com/office/tbillyield-function-6d381232-f4b0-4cd5-8e97-45b9c03468ba)
  VDB(cost, salvage, life, start, end, \[factor\], \[no_switch\])                                                      [Excel VDB article](https://support.microsoft.com/office/vdb-function-dde4e207-f3fa-488d-91d2-66d55e861d73)
  XIRR(cashflow_amounts, cashflow_dates, \[rate_guess\])                                                               [Excel XIRR article](https://support.microsoft.com/office/xirr-function-de1242ec-6477-445b-b11b-a303ad9adc9d)
  XNPV(discount, cashflow_amounts, cashflow_dates)                                                                     [Excel XNPV article](https://support.microsoft.com/office/xnpv-function-1b42bbf6-370f-4532-a0eb-d67c16b664b7)
  YIELD(settlement, maturity, rate, price, redemption, frequency, \[day_count_convention\])                            [Excel YIELD article](https://support.microsoft.com/office/yield-function-f5f5ca43-c4bd-434f-8bd2-ed3c9727a4fe)
  YIELDDISC(settlement, maturity, price, redemption, \[day_count_convention\])                                         [Excel YIELDDISC article](https://support.microsoft.com/office/yielddisc-function-a9dbdbae-7dae-46de-b995-615faffaaed7)
  YIELDMAT(settlement, maturity, issue, rate, price, \[day_count_convention\])                                         [Excel YIELDMAT article](https://support.microsoft.com/office/yieldmat-function-ba7d1809-0d33-4bcb-96c7-6c56ec62ef6f)

## Info {#functions/info}

  Name and arguments   Description or link
  -------------------- ------------------------------------------------------------------------------------------------------------
  ISERR(value)         [Excel IS article](https://support.microsoft.com/office/is-functions-0f2d7971-6019-40a0-a171-f2d869135665)
  ISERROR(value)       [Excel IS article](https://support.microsoft.com/office/is-functions-0f2d7971-6019-40a0-a171-f2d869135665)
  ISLOGICAL(value)     [Excel IS article](https://support.microsoft.com/office/is-functions-0f2d7971-6019-40a0-a171-f2d869135665)
  ISNA(value)          [Excel IS article](https://support.microsoft.com/office/is-functions-0f2d7971-6019-40a0-a171-f2d869135665)
  ISNONTEXT(value)     [Excel IS article](https://support.microsoft.com/office/is-functions-0f2d7971-6019-40a0-a171-f2d869135665)
  ISNUMBER(value)      [Excel IS article](https://support.microsoft.com/office/is-functions-0f2d7971-6019-40a0-a171-f2d869135665)
  ISTEXT(value)        [Excel IS article](https://support.microsoft.com/office/is-functions-0f2d7971-6019-40a0-a171-f2d869135665)
  ISBLANK(value)       [Excel IS article](https://support.microsoft.com/office/is-functions-0f2d7971-6019-40a0-a171-f2d869135665)
  NA()                 [Excel NA article](https://support.microsoft.com/office/na-function-5469c2d1-a90c-4fb5-9bbc-64bd9bb6b47c)

## Logical {#functions/logical}

  Name and arguments                                                Description or link
  ----------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------
  AND(logical_expression1, \[logical_expression2, \...\])           [Excel AND article](https://support.microsoft.com/office/and-function-5f19b2e8-e1df-4408-897a-ce285a19e9d9)
  IF(logical_expression, value_if_true, \[value_if_false\])         [Excel IF article](https://support.microsoft.com/office/if-function-69aed7c9-4e8a-4755-a9bc-aa8bbff73be2)
  IFERROR(value, \[value_if_error\])                                [Excel IFERROR article](https://support.microsoft.com/office/iferror-function-c526fd07-caeb-47b8-8bb6-63f3e417f611)
  IFNA(value, \[value_if_error\])                                   [Excel IFNA article](https://support.microsoft.com/office/ifna-function-6626c961-a569-42fc-a49d-79b4951fd461)
  IFS(condition1, value1, \[condition2, \...\], \[value2, \...\])   [Excel IFS article](https://support.microsoft.com/office/ifs-function-36329a26-37b2-467c-972b-4a39bd951d45)
  NOT(logical_expression)                                           [Excel NOT article](https://support.microsoft.com/office/not-function-9cfc6011-a054-40c7-a140-cd4ba2d87d77)
  OR(logical_expression1, \[logical_expression2, \...\])            [Excel OR article](https://support.microsoft.com/office/or-function-7d17ad14-8700-4281-b308-00b131e22af0)
  XOR(logical_expression1, \[logical_expression2, \...\])           [Excel XOR article](https://support.microsoft.com/office/xor-function-1548d4c2-5e47-4f77-9a92-0533bba14f37)

## Lookup {#functions/lookup}

  Name and arguments                                                                                   Description or link
  ---------------------------------------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------
  COLUMN(\[cell_reference\])                                                                           [Excel COLUMN article](https://support.microsoft.com/office/column-function-44e8c754-711c-4df3-9da4-47a55042554b)
  COLUMNS(range)                                                                                       [Excel COLUMNS article](https://support.microsoft.com/office/columns-function-4e8e7b4e-e603-43e8-b177-956088fa48ca)
  HLOOKUP(search_key, range, index, \[is_sorted\])                                                     [Excel HLOOKUP article](https://support.microsoft.com/office/hlookup-function-a3034eec-b719-4ba3-bb65-e1ad662ed95f)
  INDEX(reference, row, column)                                                                        [Excel INDEX article](https://support.microsoft.com/office/index-function-a5dcf0dd-996d-40a4-a822-b56b061328bd)
  LOOKUP(search_key, search_array, \[result_range\])                                                   [Excel LOOKUP article](https://support.microsoft.com/office/lookup-function-446d94af-663b-451d-8251-369d5e3864cb)
  MATCH(search_key, range, \[search_type\])                                                            [Excel MATCH article](https://support.microsoft.com/office/match-function-e8dffd45-c762-47d6-bf89-533f4a37673a)
  ROW(\[cell_reference\])                                                                              [Excel ROW article](https://support.microsoft.com/office/row-function-3a63b74a-c4d0-4093-b49a-e76eb49a6d8d)
  ROWS(range)                                                                                          [Excel ROWS article](https://support.microsoft.com/office/rows-function-b592593e-3fc2-47f2-bec1-bda493811597)
  VLOOKUP(search_key, range, index, \[is_sorted\])                                                     [Excel VLOOKUP article](https://support.microsoft.com/office/vlookup-function-0bbc8083-26fe-4963-8ab8-93a18ad188a1)
  XLOOKUP(search_key, lookup_range, return_range, \[if_not_found\], \[match_mode\], \[search_mode\])   [Excel XLOOKUP article](https://support.microsoft.com/office/xlookup-function-b7fd680e-6d10-43e6-84f9-88eae8bf5929)

## Math {#functions/math}

  Name and arguments                                                                                    Description or link
  ----------------------------------------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------
  ABS(value)                                                                                            [Excel ABS article](https://support.microsoft.com/office/abs-function-3420200f-5628-4e8c-99da-c99d7c87713c)
  ACOS(value)                                                                                           [Excel ACOS article](https://support.microsoft.com/office/acos-function-cb73173f-d089-4582-afa1-76e5524b5d5b)
  ACOSH(value)                                                                                          [Excel ACOSH article](https://support.microsoft.com/office/acosh-function-e3992cc1-103f-4e72-9f04-624b9ef5ebfe)
  ACOT(value)                                                                                           [Excel ACOT article](https://support.microsoft.com/office/acot-function-dc7e5008-fe6b-402e-bdd6-2eea8383d905)
  ACOTH(value)                                                                                          [Excel ACOTH article](https://support.microsoft.com/office/acoth-function-cc49480f-f684-4171-9fc5-73e4e852300f)
  ASIN(value)                                                                                           [Excel ASIN article](https://support.microsoft.com/office/asin-function-81fb95e5-6d6f-48c4-bc45-58f955c6d347)
  ASINH(value)                                                                                          [Excel ASINH article](https://support.microsoft.com/office/asinh-function-4e00475a-067a-43cf-926a-765b0249717c)
  ATAN(value)                                                                                           [Excel ATAN article](https://support.microsoft.com/office/atan-function-50746fa8-630a-406b-81d0-4a2aed395543)
  ATAN2(x, y)                                                                                           [Excel ATAN2 article](https://support.microsoft.com/office/atan2-function-c04592ab-b9e3-4908-b428-c96b3a565033)
  ATANH(value)                                                                                          [Excel ATANH article](https://support.microsoft.com/office/atanh-function-3cd65768-0de7-4f1d-b312-d01c8c930d90)
  CEILING(value, \[factor\])                                                                            [Excel CEILING article](https://support.microsoft.com/office/ceiling-function-0a5cd7c8-0720-4f0a-bd2c-c943e510899f)
  CEILING.MATH(number, \[significance\], \[mode\])                                                      [Excel CEILING.MATH article](https://support.microsoft.com/office/ceiling-math-function-80f95d2f-b499-4eee-9f16-f795a8e306c8)
  CEILING.PRECISE(number, \[significance\])                                                             [Excel CEILING.PRECISE article](https://support.microsoft.com/office/ceiling-precise-function-f366a774-527a-4c92-ba49-af0a196e66cb)
  COS(angle)                                                                                            [Excel COS article](https://support.microsoft.com/office/cos-function-0fb808a5-95d6-4553-8148-22aebdce5f05)
  COSH(value)                                                                                           [Excel COSH article](https://support.microsoft.com/office/cosh-function-e460d426-c471-43e8-9540-a57ff3b70555)
  COT(angle)                                                                                            [Excel COT article](https://support.microsoft.com/office/cot-function-c446f34d-6fe4-40dc-84f8-cf59e5f5e31a)
  COTH(value)                                                                                           [Excel COTH article](https://support.microsoft.com/office/coth-function-2e0b4cb6-0ba0-403e-aed4-deaa71b49df5)
  COUNTBLANK(value1, \[value2, \...\])                                                                  [Excel COUNTBLANK article](https://support.microsoft.com/office/countblank-function-6a92d772-675c-4bee-b346-24af6bd3ac22)
  COUNTIF(range, criterion)                                                                             [Excel COUNTIF article](https://support.microsoft.com/office/countif-function-e0de10c6-f885-4e71-abb4-1f464816df34)
  COUNTIFS(criteria_range1, criterion1, \[criteria_range2, \...\], \[criterion2, \...\])                [Excel COUNTIFS article](https://support.microsoft.com/office/countifs-function-dda3dc6e-f74e-4aee-88bc-aa8c2a866842)
  COUNTUNIQUE(value1, \[value2, \...\])                                                                 Counts number of unique values in a range (not compatible with Excel)
  COUNTUNIQUEIFS(range, criteria_range1, criterion1, \[criteria_range2, \...\], \[criterion2, \...\])   Counts number of unique values in a range, filtered by a set of criteria (not compatible with Excel)
  CSC(angle)                                                                                            [Excel CSC article](https://support.microsoft.com/office/csc-function-07379361-219a-4398-8675-07ddc4f135c1)
  CSCH(value)                                                                                           [Excel CSCH article](https://support.microsoft.com/office/csch-function-f58f2c22-eb75-4dd6-84f4-a503527f8eeb)
  DECIMAL(value, base)                                                                                  [Excel DECIMAL article](https://support.microsoft.com/office/decimal-function-ee554665-6176-46ef-82de-0a283658da2e)
  DEGREES(angle)                                                                                        [Excel DEGREES article](https://support.microsoft.com/office/degrees-function-4d6ec4db-e694-4b94-ace0-1cc3f61f9ba1)
  EXP(value)                                                                                            [Excel EXP article](https://support.microsoft.com/office/exp-function-c578f034-2c45-4c37-bc8c-329660a63abe)
  FLOOR(value, \[factor\])                                                                              [Excel FLOOR article](https://support.microsoft.com/office/floor-function-14bb497c-24f2-4e04-b327-b0b4de5a8886)
  FLOOR.MATH(number, \[significance\], \[mode\])                                                        [Excel FLOOR.MATH article](https://support.microsoft.com/office/floor-math-function-c302b599-fbdb-4177-ba19-2c2b1249a2f5)
  FLOOR.PRECISE(number, \[significance\])                                                               [Excel FLOOR.PRECISE article](https://support.microsoft.com/office/floor-precise-function-f769b468-1452-4617-8dc3-02f842a0702e)
  ISEVEN(value)                                                                                         [Excel ISEVEN article](https://support.microsoft.com/office/iseven-function-aa15929a-d77b-4fbb-92f4-2f479af55356)
  ISO.CEILING(number, \[significance\])                                                                 [Excel ISO.CEILING article](https://support.microsoft.com/office/iso-ceiling-function-e587bb73-6cc2-4113-b664-ff5b09859a83)
  ISODD(value)                                                                                          [Excel ISODD article](https://support.microsoft.com/office/isodd-function-1208a56d-4f10-4f44-a5fc-648cafd6c07a)
  LN(value)                                                                                             [Excel LN article](https://support.microsoft.com/office/ln-function-81fe1ed7-dac9-4acd-ba1d-07a142c6118f)
  MOD(dividend, divisor)                                                                                [Excel MOD article](https://support.microsoft.com/office/mod-function-9b6cd169-b6ee-406a-a97b-edf2a9dc24f3)
  ODD(value)                                                                                            [Excel ODD article](https://support.microsoft.com/office/odd-function-deae64eb-e08a-4c88-8b40-6d0b42575c98)
  PI()                                                                                                  [Excel PI article](https://support.microsoft.com/office/pi-function-264199d0-a3ba-46b8-975a-c4a04608989b)
  POWER(base, exponent)                                                                                 [Excel POWER article](https://support.microsoft.com/office/power-function-d3f2908b-56f4-4c3f-895a-07fb519c362a)
  PRODUCT(factor1, \[factor2, \...\])                                                                   [Excel PRODUCT article](https://support.microsoft.com/office/product-function-8e6b5b24-90ee-4650-aeec-80982a0512ce)
  RAND()                                                                                                [Excel RAND article](https://support.microsoft.com/office/rand-function-4cbfa695-8869-4788-8d90-021ea9f5be73)
  RANDBETWEEN(low, high)                                                                                [Excel RANDBETWEEN article](https://support.microsoft.com/office/randbetween-function-4cc7f0d1-87dc-4eb7-987f-a469ab381685)
  ROUND(value, \[places\])                                                                              [Excel ROUND article](https://support.microsoft.com/office/round-function-c018c5d8-40fb-4053-90b1-b3e7f61a213c)
  ROUNDDOWN(value, \[places\])                                                                          [Excel ROUNDDOWN article](https://support.microsoft.com/office/rounddown-function-2ec94c73-241f-4b01-8c6f-17e6d7968f53)
  ROUNDUP(value, \[places\])                                                                            [Excel ROUNDUP article](https://support.microsoft.com/office/roundup-function-f8bc9b23-e795-47db-8703-db171d0c42a7)
  SEC(angle)                                                                                            [Excel SEC article](https://support.microsoft.com/office/sec-function-ff224717-9c87-4170-9b58-d069ced6d5f7)
  SECH(value)                                                                                           [Excel SECH article](https://support.microsoft.com/office/sech-function-e05a789f-5ff7-4d7f-984a-5edb9b09556f)
  SIN(angle)                                                                                            [Excel SIN article](https://support.microsoft.com/office/sin-function-cf0e3432-8b9e-483c-bc55-a76651c95602)
  SINH(value)                                                                                           [Excel SINH article](https://support.microsoft.com/office/sinh-function-1e4e8b9f-2b65-43fc-ab8a-0a37f4081fa7)
  SQRT(value)                                                                                           [Excel SQRT article](https://support.microsoft.com/office/sqrt-function-654975c2-05c4-4831-9a24-2c65e4040fdf)
  SUM(value1, \[value2, \...\])                                                                         [Excel SUM article](https://support.microsoft.com/office/sum-function-043e1c7d-7726-4e80-8f32-07b23e057f89)
  SUMIF(criteria_range, criterion, \[sum_range\])                                                       [Excel SUMIF article](https://support.microsoft.com/office/sumif-function-169b8c99-c05c-4483-a712-1697a653039b)
  SUMIFS(sum_range, criteria_range1, criterion1, \[criteria_range2, \...\], \[criterion2, \...\])       [Excel SUMIFS article](https://support.microsoft.com/office/sumifs-function-c9e748f5-7ea7-455d-9406-611cebce642b)
  TAN(angle)                                                                                            [Excel TAN article](https://support.microsoft.com/office/tan-function-08851a40-179f-4052-b789-d7f699447401)
  TANH(value)                                                                                           [Excel TANH article](https://support.microsoft.com/office/tanh-function-017222f0-a0c3-4f69-9787-b3202295dc6c)
  TRUNC(value, \[places\])                                                                              [Excel TRUNC article](https://support.microsoft.com/office/trunc-function-8b86a64c-3127-43db-ba14-aa5ceb292721)

## Misc {#functions/misc}

  Name and arguments                     Description or link
  -------------------------------------- ---------------------------------------------------------
  FORMAT.LARGE.NUMBER(value, \[unit\])   Apply a large number format (not compatible with Excel)

## Odoo {#functions/odoo}

  Name and arguments                                                                          Description or link
  ------------------------------------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ODOO.CREDIT(account_codes, date_range, \[offset\], \[company_id\], \[include_unposted\])    Get the total credit for the specified account(s) and period (not compatible with Excel)
  ODOO.DEBIT(account_codes, date_range, \[offset\], \[company_id\], \[include_unposted\])     Get the total debit for the specified account(s) and period (not compatible with Excel)
  ODOO.BALANCE(account_codes, date_range, \[offset\], \[company_id\], \[include_unposted\])   Get the total balance for the specified account(s) and period (not compatible with Excel)
  ODOO.FISCALYEAR.START(day, \[company_id\])                                                  Returns the starting date of the fiscal year encompassing the provided date (not compatible with Excel)
  ODOO.FISCALYEAR.END(day, \[company_id\])                                                    Returns the ending date of the fiscal year encompassing the provided date (not compatible with Excel)
  ODOO.ACCOUNT.GROUP(type)                                                                    Returns the account ids of a given group (not compatible with Excel)
  ODOO.CURRENCY.RATE(currency_from, currency_to, \[date\])                                    This function takes in two currency codes as arguments, and returns the exchange rate from the first currency to the second as float (not compatible with Excel)
  ODOO.LIST(list_id, index, field_name)                                                       Get the value from a list (not compatible with Excel)
  ODOO.LIST.HEADER(list_id, field_name)                                                       Get the header of a list (not compatible with Excel)
  ODOO.FILTER.VALUE(filter_name)                                                              Return the current value of a spreadsheet filter (not compatible with Excel)
  ODOO.PIVOT(pivot_id, measure_name, \[domain_field_name, \...\], \[domain_value, \...\])     Get the value from a pivot (not compatible with Excel)
  ODOO.PIVOT.HEADER(pivot_id, \[domain_field_name, \...\], \[domain_value, \...\])            Get the header of a pivot (not compatible with Excel)

## Operators {#functions/operators}

  Name and arguments           Description or link
  ---------------------------- -------------------------------------------------------------------------------------------------------------------
  ADD(value1, value2)          Sum of two numbers (not compatible with Excel)
  CONCAT(value1, value2)       [Excel CONCAT article](https://support.microsoft.com/office/concat-function-9b1a9a3f-94ff-41af-9736-694cbd6b4ca2)
  DIVIDE(dividend, divisor)    One number divided by another (not compatible with Excel)
  EQ(value1, value2)           Equal (not compatible with Excel)
  GT(value1, value2)           Strictly greater than (not compatible with Excel)
  GTE(value1, value2)          Greater than or equal to (not compatible with Excel)
  LT(value1, value2)           Less than (not compatible with Excel)
  LTE(value1, value2)          Less than or equal to (not compatible with Excel)
  MINUS(value1, value2)        Difference of two numbers (not compatible with Excel)
  MULTIPLY(factor1, factor2)   Product of two numbers (not compatible with Excel)
  NE(value1, value2)           Not equal (not compatible with Excel)
  POW(base, exponent)          A number raised to a power (not compatible with Excel)
  UMINUS(value)                A number with the sign reversed (not compatible with Excel)
  UNARY.PERCENT(percentage)    Value interpreted as a percentage (not compatible with Excel)
  UPLUS(value)                 A specified number, unchanged (not compatible with Excel)

## Statistical {#functions/statistical}

  Name and arguments                                                                                        Description or link
  --------------------------------------------------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------
  AVEDEV(value1, \[value2, \...\])                                                                          [Excel AVEDEV article](https://support.microsoft.com/office/avedev-function-58fe8d65-2a84-4dc7-8052-f3f87b5c6639)
  AVERAGE(value1, \[value2, \...\])                                                                         [Excel AVERAGE article](https://support.microsoft.com/office/average-function-047bac88-d466-426c-a32b-8f33eb960cf6)
  AVERAGE.WEIGHTED(values, weights, \[additional_values, \...\], \[additional_weights, \...\])              Weighted average (not compatible with Excel)
  AVERAGEA(value1, \[value2, \...\])                                                                        [Excel AVERAGEA article](https://support.microsoft.com/office/averagea-function-f5f84098-d453-4f4c-bbba-3d2c66356091)
  AVERAGEIF(criteria_range, criterion, \[average_range\])                                                   [Excel AVERAGEIF article](https://support.microsoft.com/office/averageif-function-faec8e2e-0dec-4308-af69-f5576d8ac642)
  AVERAGEIFS(average_range, criteria_range1, criterion1, \[criteria_range2, \...\], \[criterion2, \...\])   [Excel AVERAGEIFS article](https://support.microsoft.com/office/averageifs-function-48910c45-1fc0-4389-a028-f7c5c3001690)
  COUNT(value1, \[value2, \...\])                                                                           [Excel COUNT article](https://support.microsoft.com/office/count-function-a59cd7fc-b623-4d93-87a4-d23bf411294c)
  COUNTA(value1, \[value2, \...\])                                                                          [Excel COUNTA article](https://support.microsoft.com/office/counta-function-7dc98875-d5c1-46f1-9a82-53f3219e2509)
  COVAR(data_y, data_x)                                                                                     [Excel COVAR article](https://support.microsoft.com/office/covar-function-50479552-2c03-4daf-bd71-a5ab88b2db03)
  COVARIANCE.P(data_y, data_x)                                                                              [Excel COVARIANCE.P article](https://support.microsoft.com/office/covariance-p-function-6f0e1e6d-956d-4e4b-9943-cfef0bf9edfc)
  COVARIANCE.S(data_y, data_x)                                                                              [Excel COVARIANCE.S article](https://support.microsoft.com/office/covariance-s-function-0a539b74-7371-42aa-a18f-1f5320314977)
  LARGE(data, n)                                                                                            [Excel LARGE article](https://support.microsoft.com/office/large-function-3af0af19-1190-42bb-bb8b-01672ec00a64)
  MAX(value1, \[value2, \...\])                                                                             [Excel MAX article](https://support.microsoft.com/office/max-function-e0012414-9ac8-4b34-9a47-73e662c08098)
  MAXA(value1, \[value2, \...\])                                                                            [Excel MAXA article](https://support.microsoft.com/office/maxa-function-814bda1e-3840-4bff-9365-2f59ac2ee62d)
  MAXIFS(range, criteria_range1, criterion1, \[criteria_range2, \...\], \[criterion2, \...\])               [Excel MAXIFS article](https://support.microsoft.com/office/maxifs-function-dfd611e6-da2c-488a-919b-9b6376b28883)
  MEDIAN(value1, \[value2, \...\])                                                                          [Excel MEDIAN article](https://support.microsoft.com/office/median-function-d0916313-4753-414c-8537-ce85bdd967d2)
  MIN(value1, \[value2, \...\])                                                                             [Excel MIN article](https://support.microsoft.com/office/min-function-61635d12-920f-4ce2-a70f-96f202dcc152)
  MINA(value1, \[value2, \...\])                                                                            [Excel MINA article](https://support.microsoft.com/office/mina-function-245a6f46-7ca5-4dc7-ab49-805341bc31d3)
  MINIFS(range, criteria_range1, criterion1, \[criteria_range2, \...\], \[criterion2, \...\])               [Excel MINIFS article](https://support.microsoft.com/office/minifs-function-6ca1ddaa-079b-4e74-80cc-72eef32e6599)
  PERCENTILE(data, percentile)                                                                              [Excel PERCENTILE article](https://support.microsoft.com/office/percentile-exc-function-bbaa7204-e9e1-4010-85bf-c31dc5dce4ba)
  PERCENTILE.EXC(data, percentile)                                                                          [Excel PERCENTILE.EXC article](https://support.microsoft.com/office/percentrank-exc-function-d8afee96-b7e2-4a2f-8c01-8fcdedaa6314)
  PERCENTILE.INC(data, percentile)                                                                          [Excel PERCENTILE.INC article](https://support.microsoft.com/office/percentile-inc-function-680f9539-45eb-410b-9a5e-c1355e5fe2ed)
  QUARTILE(data, quartile_number)                                                                           [Excel QUARTILE article](https://support.microsoft.com/office/quartile-function-93cf8f62-60cd-4fdb-8a92-8451041e1a2a)
  QUARTILE.EXC(data, quartile_number)                                                                       [Excel QUARTILE.EXC article](https://support.microsoft.com/office/quartile-exc-function-5a355b7a-840b-4a01-b0f1-f538c2864cad)
  QUARTILE.INC(data, quartile_number)                                                                       [Excel QUARTILE.INC article](https://support.microsoft.com/office/quartile-inc-function-1bbacc80-5075-42f1-aed6-47d735c4819d)
  SMALL(data, n)                                                                                            [Excel SMALL article](https://support.microsoft.com/office/small-function-17da8222-7c82-42b2-961b-14c45384df07)
  STDEV(value1, \[value2, \...\])                                                                           [Excel STDEV article](https://support.microsoft.com/office/stdev-function-51fecaaa-231e-4bbb-9230-33650a72c9b0)
  STDEV.P(value1, \[value2, \...\])                                                                         [Excel STDEV.P article](https://support.microsoft.com/office/stdev-p-function-6e917c05-31a0-496f-ade7-4f4e7462f285)
  STDEV.S(value1, \[value2, \...\])                                                                         [Excel STDEV.S article](https://support.microsoft.com/office/stdev-s-function-7d69cf97-0c1f-4acf-be27-f3e83904cc23)
  STDEVA(value1, \[value2, \...\])                                                                          [Excel STDEVA article](https://support.microsoft.com/office/stdeva-function-5ff38888-7ea5-48de-9a6d-11ed73b29e9d)
  STDEVP(value1, \[value2, \...\])                                                                          [Excel STDEVP article](https://support.microsoft.com/office/stdevp-function-1f7c1c88-1bec-4422-8242-e9f7dc8bb195)
  STDEVPA(value1, \[value2, \...\])                                                                         [Excel STDEVPA article](https://support.microsoft.com/office/stdevpa-function-5578d4d6-455a-4308-9991-d405afe2c28c)
  VAR(value1, \[value2, \...\])                                                                             [Excel VAR article](https://support.microsoft.com/office/var-function-1f2b7ab2-954d-4e17-ba2c-9e58b15a7da2)
  VAR.P(value1, \[value2, \...\])                                                                           [Excel VAR.P article](https://support.microsoft.com/office/var-p-function-73d1285c-108c-4843-ba5d-a51f90656f3a)
  VAR.S(value1, \[value2, \...\])                                                                           [Excel VAR.S article](https://support.microsoft.com/office/var-s-function-913633de-136b-449d-813e-65a00b2b990b)
  VARA(value1, \[value2, \...\])                                                                            [Excel VARA article](https://support.microsoft.com/office/vara-function-3de77469-fa3a-47b4-85fd-81758a1e1d07)
  VARP(value1, \[value2, \...\])                                                                            [Excel VARP article](https://support.microsoft.com/office/varp-function-26a541c4-ecee-464d-a731-bd4c575b1a6b)
  VARPA(value1, \[value2, \...\])                                                                           [Excel VARPA article](https://support.microsoft.com/office/varpa-function-59a62635-4e89-4fad-88ac-ce4dc0513b96)

## Text {#functions/text}

  Name and arguments                                                            Description or link
  ----------------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------
  CHAR(table_number)                                                            [Excel CHAR article](https://support.microsoft.com/office/char-function-bbd249c8-b36e-4a91-8017-1c133f9b837a)
  CLEAN(text)                                                                   [Excel CLEAN article](https://support.microsoft.com/office/clean-function-26f3d7c5-475f-4a9c-90e5-4b8ba987ba41)
  CONCATENATE(string1, \[string2, \...\])                                       [Excel CONCATENATE article](https://support.microsoft.com/office/concatenate-function-8f8ae884-2ca8-4f7a-b093-75d702bea31d)
  EXACT(string1, string2)                                                       [Excel EXACT article](https://support.microsoft.com/office/exact-function-d3087698-fc15-4a15-9631-12575cf29926)
  FIND(search_for, text_to_search, \[starting_at\])                             [Excel FIND article](https://support.microsoft.com/office/find-findb-functions-c7912941-af2a-4bdf-a553-d0d89b0a0628)
  JOIN(delimiter, value_or_array1, \[value_or_array2, \...\])                   Concatenates elements of arrays with delimiter (not compatible with Excel)
  LEFT(text, \[number_of_characters\])                                          [Excel LEFT article](https://support.microsoft.com/office/left-leftb-functions-9203d2d2-7960-479b-84c6-1ea52b99640c)
  LEN(text)                                                                     [Excel LEN article](https://support.microsoft.com/office/len-lenb-functions-29236f94-cedc-429d-affd-b5e33d2c67cb)
  LOWER(text)                                                                   [Excel LOWER article](https://support.microsoft.com/office/lower-function-3f21df02-a80c-44b2-afaf-81358f9fdeb4)
  MID(text, starting_at, extract_length)                                        [Excel MID article](https://support.microsoft.com/office/mid-midb-functions-d5f9e25c-d7d6-472e-b568-4ecb12433028)
  PROPER(text_to_capitalize)                                                    [Excel PROPER article](https://support.microsoft.com/office/proper-function-52a5a283-e8b2-49be-8506-b2887b889f94)
  REPLACE(text, position, length, new_text)                                     [Excel REPLACE article](https://support.microsoft.com/office/replace-replaceb-functions-8d799074-2425-4a8a-84bc-82472868878a)
  RIGHT(text, \[number_of_characters\])                                         [Excel RIGHT article](https://support.microsoft.com/office/right-rightb-functions-240267ee-9afa-4639-a02b-f19e1786cf2f)
  SEARCH(search_for, text_to_search, \[starting_at\])                           [Excel SEARCH article](https://support.microsoft.com/office/search-searchb-functions-9ab04538-0e55-4719-a72e-b6f54513b495)
  SUBSTITUTE(text_to_search, search_for, replace_with, \[occurrence_number\])   [Excel SUBSTITUTE article](https://support.microsoft.com/office/substitute-function-6434944e-a904-4336-a9b0-1e58df3bc332)
  TEXT(number, format)                                                          [Excel TEXT article](https://support.microsoft.com/office/text-function-20d5ac4d-7b94-49fd-bb38-93d29371225c)
  TEXTJOIN(delimiter, ignore_empty, text1, \[text2, \...\])                     [Excel TEXTJOIN article](https://support.microsoft.com/office/textjoin-function-357b449a-ec91-49d0-80c3-0e8fc845691c)
  TRIM(text)                                                                    [Excel TRIM article](https://support.microsoft.com/office/trim-function-410388fa-c5df-49c6-b16c-9e5630b479f9)
  UPPER(text)                                                                   [Excel UPPER article](https://support.microsoft.com/office/upper-function-c11f29b3-d1a3-4537-8df6-04d0049963d6)




--- SOURCE: productivity/spreadsheet/insert.md ---

# Link Odoo data

You can insert and link several elements from your database in your
spreadsheets, namely:

- pivots,
- graphs,
- lists, and
- links to menus (i.e., a clickable link to a view of a specific model).

Before inserting `pivots <reporting/views/pivot>`{.interpreted-text
role="ref"}, `graphs <reporting/views/graph>`{.interpreted-text
role="ref"}, or lists, ensure they are tailored to your needs, as some
elements are more quickly - or only -configurable in their respective
view.

- To insert pivots and graphs, click
  `Insert in spreadsheet`{.interpreted-text role="guilabel"} from any
  pivot or graph view.
- To insert lists, click
  `Favorites --> Insert list in spreadsheet`{.interpreted-text
  role="menuselection"} from any list view.
- To insert links to menus, click
  `Favorites --> Link menu in spreadsheet`{.interpreted-text
  role="menuselection"} from any view.

In the pop-up box, either create a new spreadsheet by selecting
`Blank spreadsheet`{.interpreted-text role="guilabel"} or insert it in
an existing one by selecting it and clicking `Confirm`{.interpreted-text
role="guilabel"}.

![Inserting a pivot in a spreadsheet](insert/insert-spreadsheet.png){.align-center}

:::: note
::: title
Note
:::

By default, new spreadsheets are saved under the
`Spreadsheet`{.interpreted-text role="guilabel"} workspace of the
Documents app.
::::

## Updating data {#insert/update}

Once inserted in a spreadsheet, your data is kept up-to-date, reflecting
any changes made to your database. Reopening the spreadsheet reloads the
linked data.

:::: note
::: title
Note
:::

To update pivots and lists data without reopening a spreadsheet, go to
the menu bar and click `Data --> Refresh all data`{.interpreted-text
role="menuselection"}.
::::

### Pivot data

Using `Refresh all data`{.interpreted-text role="guilabel"} only updates
existing pivot cells. If new cells need to be added, go to the menu bar
and click `Data --> Re-insert pivot`{.interpreted-text
role="menuselection"} to fully update the pivot. Alternatively, click
`Insert pivot`{.interpreted-text role="guilabel"}, select the pivot, and
tick `Display missing
cells only`{.interpreted-text role="guilabel"} to preview first the
missing data.

> ![Displaying missing cells in a pivot](insert/missing-cells.png){.align-center}

To change which records are
`used by the pivot <search/preconfigured-filters>`{.interpreted-text
role="ref"}, right-click on a pivot cell, select
`See pivot properties`{.interpreted-text role="guilabel"}, and click
`Edit domain`{.interpreted-text role="guilabel"}.




--- SOURCE: productivity/spreadsheet/templates.md ---

# Templates

Spreadsheet templates allow you to quickly create spreadsheets without
starting from scratch.

Several pre-built templates are available when creating a new
spreadsheet from the **Documents** app, such as:

- `budget reports <templates/budget-reports>`{.interpreted-text
  role="ref"},
- `pipeline revenue reports <templates/pipeline-reports>`{.interpreted-text
  role="ref"}, or
- `sales commission report <templates/sales-commission>`{.interpreted-text
  role="ref"}.

![View of all the default templates](templates/report-templates.png)

You can also
`save any spreadsheet as a template <templates/save>`{.interpreted-text
role="ref"} and `manage and edit
existing templates <templates/manage>`{.interpreted-text role="ref"}.

## Default templates

### Accounting: budget reports {#templates/budget-reports}

Budget reports compare a company\'s actual spending with its budget over
a defined period. Two templates are available: one uses quarterly
intervals (`Budget Report (Quarterly)`{.interpreted-text
role="guilabel"}), while the other uses monthly intervals
(`Budget Report (Monthly)`{.interpreted-text role="guilabel"}).

![Extract of a budget report](templates/budget-report.png)

The cells under the `Actuals`{.interpreted-text role="guilabel"} column
are automatically filled in with the amount of money made and spent over
the corresponding period (month or quarter). The data is taken from
posted journal items under
`income and expense accounts <chart-of-account/type>`{.interpreted-text
role="ref"}.

:::: warning
::: title
Warning
:::

Journal items under the `Other Income`{.interpreted-text
role="guilabel"} account type are not considered when collecting data.
::::

To analyze your budget\'s performance, fill the cells under the
`Budget`{.interpreted-text role="guilabel"} column with how much money
you expect to make (`Income`{.interpreted-text role="guilabel"} rows)
and spend (`Expenses`{.interpreted-text role="guilabel"} rows) over the
related period and per account. Then, the performance
(`Perf.`{.interpreted-text role="guilabel"}) column compares
`Actuals`{.interpreted-text role="guilabel"} data to their corresponding
budget, expressed as a percentage.

Lastly, the `Net Profit`{.interpreted-text role="guilabel"} row
represents the total `Income`{.interpreted-text role="guilabel"} minus
the total `Expenses`{.interpreted-text role="guilabel"} for the
`Actuals`{.interpreted-text role="guilabel"} and
`Budget`{.interpreted-text role="guilabel"} columns.

### CRM: pipeline revenue reports {#templates/pipeline-reports}

Two pipeline revenue reports are available. The
`Pipeline Revenue Report (Monthly)`{.interpreted-text role="guilabel"}
is dedicated to one-time revenue
(`NRR (non-recurring revenue)`{.interpreted-text role="abbr"}), while
the `MRR/NRR
Pipeline Revenue Report (Monthly)`{.interpreted-text role="guilabel"}
covers recurring and non-recurring revenue (`MRR (monthly
recurring revenue)`{.interpreted-text role="abbr"}).

:::: tip
::: title
Tip
:::

Enable `Recurring Revenues`{.interpreted-text role="guilabel"} by going
to `CRM --> Configuration -->
Settings`{.interpreted-text role="menuselection"}.
::::

![Extract of a pipeline revenue report](templates/pipeline-revenue.png)

The cells under the `Actuals`{.interpreted-text role="guilabel"} column
are automatically filled in with the amount of monthly revenue from
**won** opportunities.

To compute the revenue performance, fill in the monthly revenue targets.

- For the `Revenue by Team`{.interpreted-text role="guilabel"} sheet,
  fill in the cells under the `Target`{.interpreted-text
  role="guilabel"} columns for each sales team.
- For the `Revenue by Salesperson`{.interpreted-text role="guilabel"}
  sheet, open the `Targets`{.interpreted-text role="guilabel"} sheet and
  fill in the cells next to each salesperson. Use the
  `Monthly Factor`{.interpreted-text role="guilabel"} table below to
  adapt the main targets depending on the month of the year.

Then, the performance (`Perf.`{.interpreted-text role="guilabel"})
column compares `Actuals`{.interpreted-text role="guilabel"} data to
their related budget, expressed as a percentage.

Lastly, the `Forecasted`{.interpreted-text role="guilabel"} column
gathers the monthly revenue of leads multiplied by their
`Probability`{.interpreted-text role="guilabel"} percentage.

:::: note
::: title
Note
:::

For actuals and forecasts:

- The `Expected Closing`{.interpreted-text role="guilabel"} date found
  on leads is used to assign them to a month.
- The recurring monthly revenue is used even if the recurring plan\'s
  number of months is set to a different value than 1 month. For
  example, a yearly plan\'s revenue is divided by 12 months.
::::

### Sales: sales commission {#templates/sales-commission}

This report presents the monthly commission earned or due to each
salesperson.

![Extract of a sales commission report](templates/sales-commission.png)

The `Rate`{.interpreted-text role="guilabel"} column is pre-filled with
the percentage rate from the `Rates`{.interpreted-text role="guilabel"}
tab, which can be customized for each product category according to the
company\'s policy. Adjusting the rate for a specific product category
automatically updates the commission amount for that category.

The `Invoiced`{.interpreted-text role="guilabel"} column shows the total
amount of untaxed invoices grouped by salesperson and month.

Lastly, the `Comm.`{.interpreted-text role="guilabel"} column is
computed by multiplying the invoiced amount with the rate percentage.

## Save a spreadsheet as a template {#templates/save}

Any spreadsheet can be saved as a template. From the menu bar, click
`File --> Save
as template`{.interpreted-text role="menuselection"}. Modify the default
`Template Name`{.interpreted-text role="guilabel"} if necessary and
click `Confirm`{.interpreted-text role="guilabel"}.

:::: note
::: title
Note
:::

Templates are available to all users on the database.
::::

## Manage and edit templates {#templates/manage}

Manage templates by going to
`Documents --> Configuration --> Spreadsheet Templates`{.interpreted-text
role="menuselection"}. Remove the `My Templates`{.interpreted-text
role="guilabel"}
`filter <search/preconfigured-filters>`{.interpreted-text role="ref"} to
view all templates in the database.

To edit an existing template, click [✎ Edit]{.title-ref} next to the
desired template. Modifications are automatically saved.

:::: tip
::: title
Tip
:::

Use the download button under the `Data`{.interpreted-text
role="guilabel"} column to export a template in JSON format. The file
can be imported into another database.
::::




--- SOURCE: productivity/spreadsheet.md ---

show-content

:   

hide-page-toc

:   

# Spreadsheet

::: {.toctree titlesonly=""}
spreadsheet/insert spreadsheet/functions spreadsheet/templates
:::

Spreadsheet lets you organize, analyze, and visualize your data in
tabular form. Among others, you can:

- `Insert and link your Odoo data (pivots, graphs, lists, and menus) <spreadsheet/insert>`{.interpreted-text
  role="doc"}.
- `Use formulas and functions <spreadsheet/functions>`{.interpreted-text
  role="doc"}.
- `Use default templates or create new ones <spreadsheet/templates>`{.interpreted-text
  role="doc"}.
- Format data.
- Sort and filter data.

## Glossary {#spreadsheet/glossary}

Some of Spreadsheet\'s main `UI (user interface)`{.interpreted-text
role="abbr"} elements are highlighted and defined below.

![Spreadsheet main UI elements](spreadsheet/ui-elements.png){.align-center}

1.  Menu bar
2.  Top bar
3.  Formula bar
4.  Filters button
5.  Row header
6.  Column header
7.  Cell menu
8.  Bottom bar




--- SOURCE: productivity/voip/axivox/axivox_config.md ---

# VoIP services in Odoo with Axivox

## Introduction

Odoo VoIP (Voice over Internet Protocol) can be set up to work together
with [Axivox](https://www.axivox.com/). In that case, an Asterisk server
is **not** necessary, as the infrastructure is hosted and managed by
Axivox.

To use this service, [contact
Axivox](https://www.axivox.com/en/contact/) to open an account. Before
doing so, verify that Axivox covers the company\'s area, along with the
areas the company\'s users wish to call.

## Configuration

To configure Axivox in Odoo, go to the `Apps`{.interpreted-text
role="menuselection"} application, and search for [VoIP]{.title-ref}.
Then, install the `VoIP`{.interpreted-text role="guilabel"} module.

Next, go to
`Settings app --> General Settings --> Integrations section`{.interpreted-text
role="menuselection"}, and fill out the
`Asterisk (VoIP)`{.interpreted-text role="guilabel"} field:

- `OnSIP Domain`{.interpreted-text role="guilabel"}: set the domain
  created by Axivox for the account (e.g.,
  [yourcompany.axivox.com]{.title-ref})
- `WebSocket`{.interpreted-text role="guilabel"}: type in
  [wss://pabx.axivox.com:3443]{.title-ref}
- `VoIP Environment`{.interpreted-text role="guilabel"}: set as
  `Production`{.interpreted-text role="guilabel"}

![Integration of Axivox as VoIP provider in an Odoo database.](axivox_config/voip-configuration.png){.align-center}

:::: tip
::: title
Tip
:::

Access the domain on the Axivox administrative panel by navigating to
<https://manage.axivox.com/>. After logging into the portal, go to
`Users -->
Edit (next to any user) --> SIP Identifiers tab --> Domain`{.interpreted-text
role="menuselection"}.
::::

### Configure VoIP user in Odoo

Next, the user is configured in Odoo, which **must** take place for
every Axivox/Odoo user using VoIP.

In Odoo, go to
`Settings app --> Users & Companies --> Users`{.interpreted-text
role="menuselection"}, then open the desired user\'s form to configure
`VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"}.
Under the `Preferences`{.interpreted-text role="guilabel"} tab, fill out
the `VOIP Configuration`{.interpreted-text role="guilabel"} section:

- `VoIP username`{.interpreted-text role="guilabel"} /
  `Browser's Extension`{.interpreted-text role="guilabel"}: (Axivox)
  `SIP username`{.interpreted-text role="guilabel"}
- `VoIP Secret`{.interpreted-text role="guilabel"}: (Axivox)
  `SIP Password`{.interpreted-text role="guilabel"}
- `External device number`{.interpreted-text role="guilabel"}: SIP
  external phone extension
- `How to place calls on mobile`{.interpreted-text role="guilabel"}:
  method to make calls on a mobile device
- `OnSIP Auth User`{.interpreted-text role="guilabel"}: (Axivox)
  `SIP username`{.interpreted-text role="guilabel"}
- `Call from another device`{.interpreted-text role="guilabel"}: option
  to always transfer phone calls to handset
- `Reject All Incoming Calls`{.interpreted-text role="guilabel"}: option
  to reject all incoming calls

![Integration of Axivox user in the Odoo user preference.](axivox_config/odoo-user.png){.align-center}

:::: tip
::: title
Tip
:::

Access the domain on the Axivox administrative panel by navigating to
<https://manage.axivox.com/>. After logging into the portal, go to
`Users -->
Edit (next to the user) --> SIP Identifiers tab --> SIP username / SIP password`{.interpreted-text
role="menuselection"}.

![SIP credentials in the Axivox manager.](axivox_config/manager-sip.png){.align-center}
::::

:::: important
::: title
Important
:::

When entering the `SIP Password`{.interpreted-text role="guilabel"} into
the user\'s `Preferences`{.interpreted-text role="guilabel"} tab, this
value **must** be typed out manually and **not** pasted in. Pasting in
causes a [401 server rejection error]{.title-ref}.
::::




--- SOURCE: productivity/voip/axivox/call_queues.md ---

# Call queues

A call queue is a system that organizes and routes incoming calls. When
customers call a business, and all of the agents are busy, the call
queue lines up the callers in sequential order, based on the time they
called in.

The callers then wait on hold to be connected to the next available call
center agent.

Implementing a call queue system reduces stress for employees, and helps
build brand trust with customers. Many companies use call queues to set
expectations with customers, and to distribute the workload equally
amongst employees.

This document covers the process required to configure call queues (with
advanced settings), as well as how to log into a call queue from the
Odoo database.

::: seealso
`voip/axivox/music_on_hold`{.interpreted-text role="ref"}
:::

## Add a queue

To add a call queue in Axivox, navigate to the [Axivox management
console](https://manage.axivox.com). In the left menu, click
`Queues`{.interpreted-text role="guilabel"}. Next, click
`Add a queue`{.interpreted-text role="guilabel"}. Doing so reveals a
blank `New queue`{.interpreted-text role="guilabel"} form with various
fields to fill out.

### Name

Once the `New queue`{.interpreted-text role="guilabel"} page appears,
enter the `Name`{.interpreted-text role="guilabel"} of the queue.

### Internal extension

Choose an `Internal extension`{.interpreted-text role="guilabel"} for
the queue. This is a number to be dialed by users of the database to
reach the login prompt for the queue.

### Strategy

Next, is the `Strategy`{.interpreted-text role="guilabel"} field. This
field determines the call routing of received calls into this queue.

The following choices are available in the `Strategy`{.interpreted-text
role="guilabel"} drop-down menu:

- `Call all available agents`{.interpreted-text role="guilabel"}
- `Calls the agent who has received the call for the longest time`{.interpreted-text
  role="guilabel"}
- `Calls the agent who has received the least call`{.interpreted-text
  role="guilabel"}
- `Call a random agent`{.interpreted-text role="guilabel"}
- `Call agents one after the other`{.interpreted-text role="guilabel"}
- `Call agents one after the other starting with the first in the list`{.interpreted-text
  role="guilabel"}

Choose a strategy that best meets the company\'s needs for customers in
the queue.

### Maximum waiting time in seconds

In the `Maximum waiting time in seconds`{.interpreted-text
role="guilabel"} field, determine the longest time a customer waits in
the queue before going to a voicemail, or wherever else they are
directed to in a dial plan. Enter a time in seconds.

### Maximum duration of ringing at an agent

In the `Maximum duration of ringing at an agent`{.interpreted-text
role="guilabel"} field, determine the longest time an individual
agent\'s line rings before moving on to another agent, or moving to the
next step in the dial plan. Enter a time in seconds.

::: seealso
For more information on dial plans, visit:

- `dial_plan_basics`{.interpreted-text role="doc"}
- `dial_plan_advanced`{.interpreted-text role="doc"}
:::

### Adding agents

The final two fields on the `New queue`{.interpreted-text
role="guilabel"} form revolve around adding agents. Adding
`Static agents`{.interpreted-text role="guilabel"} and
`Dynamic agents`{.interpreted-text role="guilabel"} are two
pre-configured methods for adding agents onto the call queue during the
configuration.

#### Static agents {#voip/axivox/static-agents}

When `Static agents`{.interpreted-text role="guilabel"} are added, these
agents are automatically added to the queue without the need to log in
to receive calls.

#### Dynamic agents {#voip/axivox/dynamic-agents}

When `Dynamic agents`{.interpreted-text role="guilabel"} are added,
these agents have the ability to log into this queue. They are **not**
logged-in automatically, and **must** log in to receive calls.

Be sure to `Save`{.interpreted-text role="guilabel"} the changes, and
click `Apply changes`{.interpreted-text role="guilabel"} in the
upper-right corner to implement the change in production.

## Agent connection

There are three ways call agents can connect to an Axivox call queue:

1.  Dynamic agents connect automatically.
2.  Manager logs in specific agent(s), via the [Axivox management
    console](https://manage.axivox.com).
3.  Agent connects to the queue in Odoo, via the *VoIP* widget.

::: seealso
See the documentation on setting
`voip/axivox/dynamic-agents`{.interpreted-text role="ref"} in the
[Axivox management console](https://manage.axivox.com).
:::

### Connect via Axivox queue

After the initial configuration of the call queue is completed, with the
changes saved and implemented, a manager can log into the [Axivox
management console](https://manage.axivox.com) and connect dynamic
agents to the queue manually.

To connect an agent, click `Queues`{.interpreted-text role="guilabel"},
located in the left-hand column. Doing so reveals the
`Queues`{.interpreted-text role="guilabel"} dashboard, with a few
different columns listed:

- `Name`{.interpreted-text role="guilabel"}: name of the queue.
- `Extension`{.interpreted-text role="guilabel"}: number of the
  extension to be dialed to reach the queue.
- `Agent Connection`{.interpreted-text role="guilabel"}: number to dial
  to log into the queue.
- `Agent disconnection`{.interpreted-text role="guilabel"}: number to
  dial to log out of the queue.
- `Connected Agents`{.interpreted-text role="guilabel"}: name of agent
  connected to the queue.

The following buttons are also available on the
`Queues`{.interpreted-text role="guilabel"} dashboard:

- `Connect an agent`{.interpreted-text role="guilabel"}: manually
  connect an agent to the queue.
- `Report`{.interpreted-text role="guilabel"}: run a report on the
  queue.
- `Delete`{.interpreted-text role="guilabel"}: delete the queue.
- `Edit`{.interpreted-text role="guilabel"}: make changes to the
  settings of the queue.

When agents are connected to the queue, or are live with a customer,
they are displayed under the `Connected Agents`{.interpreted-text
role="guilabel"} column.

If they are static agents, they **always** show up as connected.

Connect an agent by clicking the orange button labeled,
`Connect an agent`{.interpreted-text role="guilabel"}. Then, select the
desired agent\'s name from the drop-down menu, and click
`Connect`{.interpreted-text role="guilabel"}.

![Call queue with connected agents column highlighted and connect an agent and report buttons
highlighted.](call_queues/call-queue.png){.align-center}

::: seealso
For more information on static and dynamic agents, see this
documentation:

- `voip/axivox/static-agents`{.interpreted-text role="ref"}
- `voip/axivox/dynamic-agents`{.interpreted-text role="ref"}
:::

#### Report

Click `Report`{.interpreted-text role="guilabel"} to check on the
reporting for a particular queue, in order to see who connected when,
and what phone calls came in and out of the queue. This information is
showcased on a separate `Queue report`{.interpreted-text
role="guilabel"} page, when the green `Report`{.interpreted-text
role="guilabel"} button is clicked.

Reports can be customized by date in the `Period`{.interpreted-text
role="guilabel"} field, and specified in the `From`{.interpreted-text
role="guilabel"} and `to`{.interpreted-text role="guilabel"} fields. The
information can be organized by `Event
type`{.interpreted-text role="guilabel"}, and
`Call ID`{.interpreted-text role="guilabel"}.

When the custom configurations have been entered, click
`Apply`{.interpreted-text role="guilabel"}.

Each report can be exported to a
`CSV (comma separated value)`{.interpreted-text role="abbr"} file for
further use and analysis, via the `Export to CSV`{.interpreted-text
role="guilabel"} button.

When the `Event type`{.interpreted-text role="guilabel"} field is
clicked, a drop-down menu appears with the following options:

- `The caller quit`{.interpreted-text role="guilabel"}
- `An agent is connecting`{.interpreted-text role="guilabel"}
- `An agent is disconnecting`{.interpreted-text role="guilabel"}
- `The call was terminated (agent hangs up)`{.interpreted-text
  role="guilabel"}
- `The call was terminated (caller hangs up)`{.interpreted-text
  role="guilabel"}
- `The caller is connected to an agent.`{.interpreted-text
  role="guilabel"}
- `Someone is entering the queue`{.interpreted-text role="guilabel"}
- `The caller exits the queue (no agent is connected)`{.interpreted-text
  role="guilabel"}
- `The caller exits the queue (timeout)`{.interpreted-text
  role="guilabel"}
- `No one is answering`{.interpreted-text role="guilabel"}
- `No one is answering, the caller hangs up`{.interpreted-text
  role="guilabel"}
- `Transfer`{.interpreted-text role="guilabel"}
- `Blind Transfer`{.interpreted-text role="guilabel"}

![Event types in the Axivox queue reporting feature.](call_queues/event-type.png){.align-center}

There is no limit to how many options can be selected from the
`Event type`{.interpreted-text role="guilabel"} drop-down menu.

Clicking `Check all`{.interpreted-text role="guilabel"} selects all the
available options from the drop-down menu, and clicking
`Uncheck all`{.interpreted-text role="guilabel"} removes all selections
from the drop-down menu.

To select an individual `Event type`{.interpreted-text role="guilabel"},
click on the desired option in the drop-down menu.

![Axivox queue report with result, event type, and period highlighted.](call_queues/report.png){.align-center}

### Connect to queue on Odoo

Dynamic agents can connect manually to the Axivox call queue from the
Odoo *VoIP* widget, once the *VoIP* app is configured for the individual
user in Odoo.

::: seealso
`axivox_config`{.interpreted-text role="doc"}
:::

To access the Odoo *VoIP* widget, click the
`☎️ (phone)`{.interpreted-text role="guilabel"} icon in the upper-right
corner of the screen, from any window within Odoo.

::: seealso
For more information on the Odoo *VoIP* widget, see this documentation:
`../voip_widget`{.interpreted-text role="doc"}
:::

For an agent to connect to the call queue, simply dial the
`Agent connection`{.interpreted-text role="guilabel"} number, and press
the green call button `📞 (phone)`{.interpreted-text role="guilabel"}
icon in the *VoIP* widget. Then, the agent hears a short, two-second
message indicating the agent is logged in. The call automatically ends
(disconnects).

To view the connected agents in a call queue, navigate to the [Axivox
management console](https://manage.axivox.com), and click
`Queues`{.interpreted-text role="guilabel"}, located in the left-hand
column.

Then, click the green `Refresh`{.interpreted-text role="guilabel"}
button at the top of the `Connected agents`{.interpreted-text
role="guilabel"} column. Any agent (static or dynamic) that is connected
to the queue currently, appears in the column next to the queue they are
logged into.

To log out of the queue, open the Odoo *VoIP* widget, dial the
`Agent disconnection`{.interpreted-text role="guilabel"} number, and
press the green call button `📞 (phone)`{.interpreted-text
role="guilabel"} icon. The agent is disconnected from the queue after a
short, two-second message.

To manually log a dynamic agent out of a call queue, navigate to the
[Axivox management console](https://manage.axivox.com), and click
`Queues`{.interpreted-text role="guilabel"}, located in the left-hand
column. Then, click the green `Refresh`{.interpreted-text
role="guilabel"} button at the top of the
`Connected agents`{.interpreted-text role="guilabel"} column.

To disconnect an agent manually, click the red
`Disconnect`{.interpreted-text role="guilabel"} button, and they are
immediately disconnected. This can be helpful in situations where agents
forget to log out at the end of the day.




--- SOURCE: productivity/voip/axivox/conference_calls.md ---

# Conference calls

Conference calls help employees connect quickly and efficiently, so
matters can be discussed in an open forum of sorts. Attendees can be
limited, via a sign-in code. That way, confidential matters stay
private.

This document covers the configuration of conference calls in Axivox for
use in Odoo *VoIP*.

## Add a virtual conference

To add a virtual conference room, navigate to the [Axivox management
console](https://manage.axivox.com). After logging in, click on
`Conferences`{.interpreted-text role="guilabel"} in the menu on the
left.

Next, click the green button labeled,
`Add a conference`{.interpreted-text role="guilabel"}, and a
`New conference`{.interpreted-text role="guilabel"} form appears.

![New conference form on Axivox.](conference_calls/new-conference.png){.align-center}

From here, fill in the `Name`{.interpreted-text role="guilabel"} field,
and set an `Internal extension`{.interpreted-text role="guilabel"}.

The internal extension is what everyone in the network uses to quickly
dial into the conference call, instead of typing in the whole phone
number.

:::: tip
::: title
Tip
:::

Pick a number between three and five digits long, making it easy to
remember and dial.
::::

Next, set the `Access code`{.interpreted-text role="guilabel"}, if the
conference room requires security. This is a password to get into the
conference, once the extension for the conference is dialed. Immediately
after dialing the extension, a digital receptionist prompts for the
`Access code`{.interpreted-text role="guilabel"}.

In the `Administrator extension`{.interpreted-text role="guilabel"}
field, click the drop-down menu, and select the user\'s extension that
manages the call.

Finally, in the
`Wait for the administrator to start the conference`{.interpreted-text
role="guilabel"} field, click the drop-down menu, and select
`Yes`{.interpreted-text role="guilabel"} or `No`{.interpreted-text
role="guilabel"}.

Should the selection be `Yes`{.interpreted-text role="guilabel"}, then
nobody is allowed to utilize the virtual conference room until the
administrator is present, and logged into the conference call.

When all fields are filled in, be sure to `Save`{.interpreted-text
role="guilabel"} the configuration. Then, click
`Apply changes`{.interpreted-text role="guilabel"} in the upper-right
corner to implement the change in production.

Upon doing so, the conference is added, and the Axivox administrator has
the option to `Delete`{.interpreted-text role="guilabel"} or
`Edit`{.interpreted-text role="guilabel"} the conference from the Axivox
`Conference`{.interpreted-text role="guilabel"} main dashboard.

To invite an Axivox user to a specific conference call, click
`Invite`{.interpreted-text role="guilabel"} to the right of the desired
conference, and proceed to enter the extension or phone number of the
invitee in the pop-up window that appears.

Once the extension or number is added into the
`Please enter the phone number of the
person you want to invite`{.interpreted-text role="guilabel"} field,
click the green `Invite`{.interpreted-text role="guilabel"} button, and
the recipient immediately receives a phone call, automatically linking
them to the conference.

![New conference form on Axivox.](conference_calls/conference-invite.png){.align-center}

## Incoming numbers

To open a conference to a wider audience, an Axivox conference can be
linked to *Incoming numbers*.

To do that, log into the [Axivox management
console](https://manage.axivox.com), and click
`Incoming numbers`{.interpreted-text role="guilabel"} in the menu on the
left.

On the `Incoming numbers`{.interpreted-text role="guilabel"} dashboard,
click `Edit`{.interpreted-text role="guilabel"} to the far-right of the
`Number`{.interpreted-text role="guilabel"} to which the conference
should be attached.

Then, under the first field, labeled,
`Destination type for voice call`{.interpreted-text role="guilabel"},
click the drop-down menu, and select `Conference`{.interpreted-text
role="guilabel"}.

Next, in the `Conference`{.interpreted-text role="guilabel"} field,
click the drop-down menu, and select the specific conference that should
be attached to this incoming number.

Now, whenever this incoming number is dialed, the caller is let into the
conference, if there is not an `Access code`{.interpreted-text
role="guilabel"} required. If there *is* an
`Access code`{.interpreted-text role="guilabel"} required, the caller is
then prompted to enter the `Access code`{.interpreted-text
role="guilabel"} to enter the conference.

## Start call in Odoo

Anywhere in the Odoo database, open the *VoIP* widget, by clicking the
`☎️ (phone)`{.interpreted-text role="guilabel"} icon, located in the
upper-right corner. Then, dial the specific extension number for the
conference, and click the `📞 (phone)`{.interpreted-text
role="guilabel"} icon.

![Connecting to a conference extension using the Odoo VoIP widget.](conference_calls/phone-widget.png){.align-center}

Once the digital receptionist answers, enter the
`Access code`{.interpreted-text role="guilabel"} (if needed), and press
the `# (pound)`{.interpreted-text role="guilabel"} icon/key.




--- SOURCE: productivity/voip/axivox/dial_plan_advanced.md ---

# Advanced dial plans

Typically, companies have a lot of incoming calls every day, but many do
not want their teams to answer calls 24 hours a day, 7 days a week.

By using Axivox advanced dial plan features, the process can be
automated, and routing can be set up for all scenarios. This way,
customers are never left waiting, or frustrated, because they cannot get
in touch with anyone.

By utilizing the advanced elements in dial plans, companies can automate
call routing for certain days or times, like company holidays. Companies
can also allow callers to enter extensions themselves, and get
transferred automatically using a digital receptionist. This way, an
administrative team does **not** have to be available around the clock.

There is even the option to route callers, depending on where they are
calling from in the world, thus maximizing efficiency.

:::: important
::: title
Important
:::

For more information on basic dial plans, and how to add elements, visit
`dial_plan_basics`{.interpreted-text role="doc"}.
::::

:::: warning
::: title
Warning
:::

Using a browser add-on for spelling may hinder the use of the visual
editor in dial plans. Do **not** use a translator with the Axivox
management console.
::::

## Advanced elements

In Axivox dial plans (as described in
`dial_plan_basics`{.interpreted-text role="doc"}), there are two
advanced elements that can be used.

- `Record`{.interpreted-text role="guilabel"}: recording feature is
  enabled (requires plan change, enabled in Axivox settings).
- `Caller ID`{.interpreted-text role="guilabel"}: replace the caller ID
  by the called number or free text.

To add one of these elements, navigate to the
`Dial plans`{.interpreted-text role="guilabel"} page, located in the
menu on the left side of the [Axivox management
console](https://manage.axivox.com).

Next, click on the `Visual Editor`{.interpreted-text role="guilabel"}
button to the right of the desired dial plan to edit it. Finally, open
the `New element`{.interpreted-text role="guilabel"} drop-down menu,
select the element, and click `Add`{.interpreted-text role="guilabel"}.

![Visual editor for a dial plan in Axivox, with Add and the dispatcher element highlighted.](dial_plan_advanced/visual-editor.png){.align-center}

For more information, visit `voip/axivox/dial_plans`{.interpreted-text
role="ref"}.

:::: important
::: title
Important
:::

The `Record`{.interpreted-text role="guilabel"} element records calls
that are routed through this element, and requires an additional plan
change in Axivox.
::::

To enable recording on Axivox, navigate to `Settings`{.interpreted-text
role="guilabel"} in the [Axivox management
console](https://manage.axivox.com). Then, go to the
`Recording`{.interpreted-text role="guilabel"} drop-down menu, near the
bottom of the page. From there, select `Enabled`{.interpreted-text
role="guilabel"} from the drop-down menu to enable recording using the
`Record`{.interpreted-text role="guilabel"} element in a dial plan.

:::: tip
::: title
Tip
:::

If the `Recording`{.interpreted-text role="guilabel"} drop-down menu is
unavailable and unable to change, then consult Axivox to enable the
feature.
::::

The `Caller ID`{.interpreted-text role="guilabel"} element allows for
the replacement of the caller ID downstream, after routing.

Upon adding the `Caller ID`{.interpreted-text role="guilabel"} element
to the dial plan, and double-clicking it to configure it, two options
appear.

The first is a `Free text`{.interpreted-text role="guilabel"} field,
where any text can be input to replace the caller ID. The second option
is `Replace the caller ID by the called number`{.interpreted-text
role="guilabel"}. This option replaces the caller\'s ID with the
`Incoming number`{.interpreted-text role="guilabel"}.

:::: tip
::: title
Tip
:::

A company may want to use the `Caller ID`{.interpreted-text
role="guilabel"} element to replace the `Incoming
number`{.interpreted-text role="guilabel"}, so employees, or outside
transfers, cannot see the number, and information is kept private.
::::

## Basic routing elements

Basic routing elements in Axivox dial plans provide extension-based
routing. This can be done by adding either a *Menu* to numerically link
the dial-by-numbers to an action, or by using a *Digital Receptionist*
to automatically route or listen for an extension, based on a key input
from the caller.

The main difference between the two elements is that the *Digital
Receptionist* does **not** need to be pre-configured numerically with
actions. Instead, it acts as a virtual receptionist.

- `Menu`{.interpreted-text role="guilabel"}: add a dial-by-number
  directory and configured downstream actions (not terminal). For
  example, a dial-by-numbers function could feature an element, wherein
  clicking \'2\' takes the caller to the element linked to \'2\' on the
  Menu element in the dial plan.
- `Digital Receptionist`{.interpreted-text role="guilabel"}: attach a
  virtual dispatcher to listen for extensions.

To add one of these elements, navigate to the
`Dial plans`{.interpreted-text role="guilabel"} page, located in the
menu on the left side of the [Axivox management
console](https://manage.axivox.com). Next, click on the
`Visual Editor`{.interpreted-text role="guilabel"} button to the right
of the dial plan, to edit the dial plan. Then, open the
`New element`{.interpreted-text role="guilabel"} drop-down menu, select
the element, and click `Add`{.interpreted-text role="guilabel"}.

For more information, visit `voip/axivox/dial_plans`{.interpreted-text
role="ref"}.

### Digital receptionist scenario

The *Digital Receptionist* element is a listen-feature that accurately
routes callers through a dial plan, based on the extension they enter,
via the key pad.

Set a *Digital Receptionist* to eliminate the need of a team, or live
receptionist, to be on-call all the time. With that element in place,
calls now reach their destination, without a real person interjecting.

After adding the `Digital Receptionist`{.interpreted-text
role="guilabel"} element to a dial plan, connect the appropriate
endpoints, and double-click on the element to set the
`Timeout`{.interpreted-text role="guilabel"} on the
`receptionist`{.interpreted-text role="guilabel"} pop-up window that
appears.

The `Timeout`{.interpreted-text role="guilabel"} can be set in
[5]{.title-ref} second increments, from [5]{.title-ref} seconds to
[60]{.title-ref} seconds.

:::: important
::: title
Important
:::

The `Digital Receptionist`{.interpreted-text role="guilabel"} element
**requires** a `Play a file`{.interpreted-text role="guilabel"} element
on either side of it, to explain what action to take, and when a wrong
extension is entered.
::::

::: example
While customizing a dial plan in a `Dialplan Editor`{.interpreted-text
role="guilabel"} pop-up window, add a `Menu`{.interpreted-text
role="guilabel"} element, with a `Greeting message`{.interpreted-text
role="guilabel"} that might read, [Press star to dial an
extension]{.title-ref}.

Then, on the `Menu`{.interpreted-text role="guilabel"} element, for the
`* (star)`{.interpreted-text role="guilabel"} option, link a
`Play a file`{.interpreted-text role="guilabel"} element, that plays an
`Audio message`{.interpreted-text role="guilabel"} saying, \'Enter the
extension of the person you are trying to reach\'.

Following the first `Play a file`{.interpreted-text role="guilabel"}
element, add the `Digital Receptionist`{.interpreted-text
role="guilabel"} element, followed by another
`Play a file`{.interpreted-text role="guilabel"} element, which states,
\'That is not a valid extension\'.

This last element is in place to close the loop, should the caller not
enter a correct extension.

Finally, this last `Play a file`{.interpreted-text role="guilabel"}
element is looped back into the `Menu`{.interpreted-text
role="guilabel"} element.

![A digital receptionist element highlighted in an example dial plan.](dial_plan_advanced/receptionist.png){.align-center}
:::

:::: important
::: title
Important
:::

Dial plan elements can be configured by double-clicking them, and
selecting different features of the Axivox console to them.

For example, an `Audio message`{.interpreted-text role="guilabel"} needs
to be made, and then selected in a `Play a file`{.interpreted-text
role="guilabel"} or `Menu`{.interpreted-text role="guilabel"} element.

For more information, see this documentation
`voip/axivox/audio_messages`{.interpreted-text role="ref"}.
::::

## Advanced routing elements

Advanced routing elements route calls automatically as they are received
into the incoming number(s). This can be configured using geo-location,
whitelisting, or time-based variables. Calls pass through a filter prior
to their final destination, and are routed, based on the set
variable(s).

The following are advanced routing elements:

- `Dispatcher`{.interpreted-text role="guilabel"}: create a call filter
  to route traffic, based on the geo-location of the caller ID.
- `Access List`{.interpreted-text role="guilabel"}: create a tailored
  access list, with VIP customer preference.
- `Time Condition`{.interpreted-text role="guilabel"}: create time
  conditions to route incoming traffic around holidays, or other
  sensitive time-frames.

:::: tip
::: title
Tip
:::

Whitelisting is a technical term used to create a list of allowed
numbers. Conversely, blacklisting is used to create a list of denied
numbers.
::::

To add one of these elements, navigate to the
`Dial plans`{.interpreted-text role="guilabel"} page, located in the
menu on the left side of the [Axivox management
console](https://manage.axivox.com). Next, click on the
`Visual Editor`{.interpreted-text role="guilabel"} button to the right
of the dial plan, to edit the dial plan. Then, open the
`New element`{.interpreted-text role="guilabel"} drop-down menu, select
the element, and click `Add`{.interpreted-text role="guilabel"}. For
more information, visit `voip/axivox/dial_plans`{.interpreted-text
role="ref"}.

### Dispatcher scenario

A *Dispatcher* element is a dial plan feature that directs calls, based
on region or geo-location. In most cases, the
`Dispatcher`{.interpreted-text role="guilabel"} element in a dial plan
is linked to the `Start`{.interpreted-text role="guilabel"} element, in
order to filter or screen calls as they come into an incoming number.

Double-click the `Dispatcher`{.interpreted-text role="guilabel"} element
in the `Dialplan Editor`{.interpreted-text role="guilabel"} pop-up
window to configure it.

This element checks numbers (routed through this element), according to
regular expressions. To add a regular expression, click
`Add a line`{.interpreted-text role="guilabel"} on the bottom of the
`Dispatcher`{.interpreted-text role="guilabel"} pop-up window.

Then, under `Name`{.interpreted-text role="guilabel"}, enter a
recognizable name to identify this expression. This is the name that
appears in the `Dispatcher`{.interpreted-text role="guilabel"} element
on the dial plan showcased in the `Dialplan Editor`{.interpreted-text
role="guilabel"} pop-up window.

In the `Regular expression`{.interpreted-text role="guilabel"} field,
enter the country code, or area code, which Axivox should route for
incoming calls. This is especially helpful when a company would like to
filter their customers to certain queues, or users based on the
customer\'s geo-location.

To specify all numbers behind a certain country code, or area code,
include [d+]{.title-ref} after the country code, or country code + area
code.

![Dispatcher configuration panel, with name, regular expression and add a line highlighted.](dial_plan_advanced/dispatcher.png){.align-center}

::: example
\- \`02\\d+\`: validates the numbers starting with [02]{.title-ref} -
\`00\\d+\`: validates all numbers beginning with [00]{.title-ref} -
[0052d+]{.title-ref} validates all numbers beginning with
[0052]{.title-ref} (Mexico country code) - \`001716\\d+\`: validates all
numbers beginning with [001716]{.title-ref} (USA country code + Western
New York area code)
:::

:::: tip
::: title
Tip
:::

A regular expression (shortened to \"regex\" or \"regexp\"), sometimes
referred to as a \"rational expression,\" is a sequence of characters
that specifies a match pattern in text. In other words, a match is made
within the given range of numbers.
::::

When the desired configurations are complete on the
`Dispatcher`{.interpreted-text role="guilabel"} pop-up window, be sure
to click `Save`{.interpreted-text role="guilabel"}.

Upon doing so, the `Dispatcher`{.interpreted-text role="guilabel"}
element appears with different routes available to configure, based on
the `Regular Expressions`{.interpreted-text role="guilabel"} that were
set.

Attach these routes to any `New element`{.interpreted-text
role="guilabel"} in the `Dialplan Editor`{.interpreted-text
role="guilabel"} pop-up window.

By default, there is an `Unknown`{.interpreted-text role="guilabel"}
path that appears on the `Dispatcher`{.interpreted-text role="guilabel"}
element after setting at least one
`Regular Expression`{.interpreted-text role="guilabel"}.

Calls follow this route/path when their number does not match any
`Regular Expression`{.interpreted-text role="guilabel"} set on the
`Dispatcher`{.interpreted-text role="guilabel"} element.

![Dial plan with dispatcher element highlighted.](dial_plan_advanced/dispatcher-element.png){.align-center}

### Time condition scenario

When a `Time Condition`{.interpreted-text role="guilabel"} element is
added to a dial plan, it has a simple `True`{.interpreted-text
role="guilabel"} and `False`{.interpreted-text role="guilabel"} routing.

After adding the `Time Condition`{.interpreted-text role="guilabel"}
element to a dial plan, double-click it to configure the variables.
`Hour/Minute`{.interpreted-text role="guilabel"},
`Days of the week`{.interpreted-text role="guilabel"},
`Day of the month`{.interpreted-text role="guilabel"}, and
`Month`{.interpreted-text role="guilabel"} can all be configured.

If the time which the caller contacts the incoming number matches the
set time conditions, then the `True`{.interpreted-text role="guilabel"}
path is followed, otherwise the `False`{.interpreted-text
role="guilabel"} path is followed.

::: example
For a company that is closed yearly for the American Independence Day
holiday (July 4th) the following time conditions should be set:

- `Hour/Minute`{.interpreted-text role="guilabel"} - [0:0 to
  23:59]{.title-ref}
- `Day of the week`{.interpreted-text role="guilabel"} - [All to
  All]{.title-ref}
- `Day of the month`{.interpreted-text role="guilabel"} - [From 4 to
  4]{.title-ref}
- `Month`{.interpreted-text role="guilabel"} - [July]{.title-ref}
:::

The `Time Condition`{.interpreted-text role="guilabel"} element is
especially useful for holidays, weekends, and to set working hours. When
a caller reaches a destination where they can be helped, either with a
real person or voicemail, this reduces wasted time and hangups.

![Time condition element set in a dial plan on Axivox. Time condition is highlighted.](dial_plan_advanced/time-condition.png){.align-center}

:::: important
::: title
Important
:::

To set the `Timezone`{.interpreted-text role="guilabel"} that the
`Time Condition`{.interpreted-text role="guilabel"} operates under,
navigate to [Axivox management console](https://manage.axivox.com), and
click `Settings`{.interpreted-text role="guilabel"} in the menu on the
left. Then, set the `Timezone`{.interpreted-text role="guilabel"} using
the second field from the bottom, by clicking the drop-down menu.
::::

### Access list scenario

An *Access List* element in a dial plan allows for the routing of
certain numbers, and disallows (denies) other numbers.

After adding an `Access List`{.interpreted-text role="guilabel"} element
to a dial plan, it can be configured by double-clicking on the element
directly in the `Dialplan Editor`{.interpreted-text role="guilabel"}
pop-up window.

Two fields appear where regular expressions can based in the
`Allow`{.interpreted-text role="guilabel"} and `Deny`{.interpreted-text
role="guilabel"} fields of the `Access List`{.interpreted-text
role="guilabel"} pop-up window.

::: example
For a very important customer, their number can be set in the
`Allow`{.interpreted-text role="guilabel"} field, and these callers can
be sent directly to management.
:::

:::: tip
::: title
Tip
:::

A regular expression (shortened to \"regex\" or \"regexp\"), sometimes
also referred to as a \"rational expression,\" is a sequence of
characters that specifies a match pattern in text.
::::

![Access list element configuration with the allow/deny fields highlighted.](dial_plan_advanced/access-config.png){.align-center}

::: example
\- \`2\\d\\d\`: validates numbers from [200 to 299]{.title-ref} -
\`02\\d\*\`: validates all numbers beginning with [02]{.title-ref} -
\`0017165551212\`: validates the number ([0017165551212]{.title-ref})
:::

After setting the `Allow`{.interpreted-text role="guilabel"} and
`Deny`{.interpreted-text role="guilabel"} fields with regular
expressions or numbers, click `Save`{.interpreted-text role="guilabel"}
on the `Access List`{.interpreted-text role="guilabel"} pop-up window.

Then, on the `Access list`{.interpreted-text role="guilabel"} element in
the dial plan, three paths (or routes) are available to link to further
actions.

Unknown calls can be routed through the regular menu flow by adding a
`Menu`{.interpreted-text role="guilabel"} element, and connecting it to
the `Unknown`{.interpreted-text role="guilabel"} path.
`Refused`{.interpreted-text role="guilabel"} calls can be routed to the
`Hang up`{.interpreted-text role="guilabel"} element. Lastly,
`Authorized`{.interpreted-text role="guilabel"} callers can be sent to a
specific extension or queue.

![Access list element highlighted in an example dial plan.](dial_plan_advanced/access-list.png){.align-center}

## Switches

A *Switch* element in Axivox is a simple activated/deactivated route
action.

These can be activated or chosen quickly, allowing for quick routing
changes, without altering the dial plan.

Alternate routes can be configured, so that in a moments notice, they
can be switched to. This could be for new availability, or to adjust
traffic flow for any number of reasons.

Axivox allows for a simple on/off switch, and a multi-switch, which can
have several paths to choose from.

- `Switch`{.interpreted-text role="guilabel"}: a manual on/off control
  that can divert traffic, based on whether it is opened (on) or closed
  (off).
- `Multi-Switch`{.interpreted-text role="guilabel"}: a mechanism to
  create paths, and turn them on and off, to divert incoming calls.

### Basic switch

A `Switch`{.interpreted-text role="guilabel"} can be set in the [Axivox
management console](https://manage.axivox.com) by navigating to
`Switches`{.interpreted-text role="guilabel"} in the left menu. To
create a new switch click `Add a
switch`{.interpreted-text role="guilabel"} from the
`Switches`{.interpreted-text role="guilabel"} dashboard, configure a
`Name`{.interpreted-text role="guilabel"} for it, and click
`Save`{.interpreted-text role="guilabel"}.

Then, toggle the desired switch to either `On`{.interpreted-text
role="guilabel"} or `Off`{.interpreted-text role="guilabel"}, from the
`State`{.interpreted-text role="guilabel"} column on the
`Switches`{.interpreted-text role="guilabel"} dashboard.

This `On`{.interpreted-text role="guilabel"} / `Off`{.interpreted-text
role="guilabel"} state automatically routes traffic in a dial plan, in
which this switch is set.

The traffic travels to the `Active`{.interpreted-text role="guilabel"}
route when `On`{.interpreted-text role="guilabel"} is toggled in the
switch. The call traffic travels to the `Inactive`{.interpreted-text
role="guilabel"} route when `Off`{.interpreted-text role="guilabel"} is
toggled in the switch.

Changes can be made on the fly, just be sure to click
`Apply changes`{.interpreted-text role="guilabel"} to implement the
them.

#### Add a switch to dial plan

To add a `Switch`{.interpreted-text role="guilabel"} to a dial plan,
navigate to [Axivox management console](https://manage.axivox.com), and
click on `Dial plans`{.interpreted-text role="guilabel"} in the left
menu. Then, click `Visual Editor`{.interpreted-text role="guilabel"}
next to the desired dial plan to open the
`Dialplan Editor`{.interpreted-text role="guilabel"} pop-up window.

Then, from the `New element`{.interpreted-text role="guilabel"}
drop-down menu, select `Switch`{.interpreted-text role="guilabel"}, and
then click `Add`{.interpreted-text role="guilabel"}. Double-click on the
element to further configure the `Switch`{.interpreted-text
role="guilabel"} element.

![Switch configuration in a dial plan, with inactive and active routes highlighted.](dial_plan_advanced/switch.png){.align-center}

### Multi-switch

A *Multi-Switch* element in Axivox is a switch where multiple paths can
be configured, and switched between.

To configure and set a `Multi-Switch`{.interpreted-text role="guilabel"}
element, navigate to [Axivox management
console](https://manage.axivox.com). Then, click on the
`Switches`{.interpreted-text role="guilabel"} menu item in the left
menu.

Toggle to the `Multi-switch`{.interpreted-text role="guilabel"} tab to
create, or set, a pre-configured `Multi-Switch`{.interpreted-text
role="guilabel"} element.

To create a new `Multi-Switch`{.interpreted-text role="guilabel"}, click
`Create new`{.interpreted-text role="guilabel"}. Then, enter a
`Name`{.interpreted-text role="guilabel"} for the element, and then
enter the `Available choice`{.interpreted-text role="guilabel"}. Enter
one `Available choice`{.interpreted-text role="guilabel"} per line. Do
**not** duplicate any entries.

Remember to click `Save`{.interpreted-text role="guilabel"} when done.

To select the `State`{.interpreted-text role="guilabel"} of the
`Multi-Switch`{.interpreted-text role="guilabel"}, click the drop-down
menu next to the `Multi-Switch`{.interpreted-text role="guilabel"} name,
under the `Multi-switch`{.interpreted-text role="guilabel"} tab on the
`Switches`{.interpreted-text role="guilabel"} dashboard.

The `State`{.interpreted-text role="guilabel"} chosen is the route that
is followed in the dial plan. The `State`{.interpreted-text
role="guilabel"} can be edited on the fly, just be sure to click
`Apply changes`{.interpreted-text role="guilabel"}.

#### Add a multi-switch to dial plan

To add a `Multi-Switch`{.interpreted-text role="guilabel"} element to a
dial plan, navigate to [Axivox management
console](https://manage.axivox.com), and click
`Dial plans`{.interpreted-text role="guilabel"} in the left menu.

Then, select or create a dial plan. Next, click
`Visual Editor`{.interpreted-text role="guilabel"} on the desired dial
plan.

On the `Dialplan Editor`{.interpreted-text role="guilabel"} pop-up
window that appears, click on the `New element`{.interpreted-text
role="guilabel"} drop-down menu, and select
`Multi-Switch`{.interpreted-text role="guilabel"}. Then, click
`Add`{.interpreted-text role="guilabel"}. Double-click on the element to
further configure the `Switch`{.interpreted-text role="guilabel"}
element.

![Multi-switch configuration in a dial plan, with chosen route highlighted.](dial_plan_advanced/multi-switch.png){.align-center}




--- SOURCE: productivity/voip/axivox/dial_plan_basics.md ---

# Dial plan basics

When someone calls a business, they might need to get in contact with
customer support, a sales team, or even a person\'s direct line. The
caller might also be in search of some information about the business,
such as store hours. Or, they might want to leave a voicemail, so
someone from the company can call them back. With dial plans in Axivox,
a company can manage how incoming calls like this are handled.

Using proper call architecture through a dial plan, callers get directed
to the right people, or to the right information, in a quick, efficient
manner.

This document covers the basic configuration of dial plans in Axivox.

::: seealso
For more information on advanced dial plans, visit
`dial_plan_advanced`{.interpreted-text role="doc"}.
:::

:::: important
::: title
Important
:::

Using a browser add-on for spelling may hinder the use of the visual
editor in dial plans. Do not use a translator with the Axivox management
console.
::::

## Dial plans {#voip/axivox/dial_plans}

Access dial plans by navigating to [Axivox management
console](https://manage.axivox.com), and clicking on
`Dial plans`{.interpreted-text role="guilabel"} from the menu on the
left.

To add a new dial plan from the `Dial plan`{.interpreted-text
role="guilabel"} page, click the green button labeled,
`Add a new dial plan`{.interpreted-text role="guilabel"}.

:::: note
::: title
Note
:::

Axivox has no limit to the number of dial plans that can be created.
These can be added, and improved upon, at any time. This allows for
sandboxes to be created with many different configurations.
::::

![Dial plan dashboard with the edit features and Add a dial plan button highlighted.](dial_plan_basics/dial-plan-edits.png){.align-center}

To edit an existing dial plan, choose one of the following options to
the right of the saved dial plan:

1.  `Delete`{.interpreted-text role="guilabel"}: this action deletes the
    attached dial plan.
2.  `Edit`{.interpreted-text role="guilabel"}: this action allows the
    user to edit the dial plan.
3.  `Visual Editor`{.interpreted-text role="guilabel"}: this action
    opens a visual editor window, where the dial plan architecture can
    be viewed and edited.
4.  `Duplicate`{.interpreted-text role="guilabel"}: this action
    duplicates the dial plan, and puts it at the bottom of the list,
    with an extension of one number (+1) larger than the original
    extension.

### Dialplan editor (visual editor)

When the `Visual Editor`{.interpreted-text role="guilabel"} button is
clicked for a dial plan on the `Dial plan`{.interpreted-text
role="guilabel"} page, a pop-up `Dialplan Editor`{.interpreted-text
role="guilabel"} window appears.

This pop-up window is the primary place where the architecture, or
structure, of the dial plan is configured. In this window, a
`GUI (graphical user interface)`{.interpreted-text role="abbr"} appears,
where various dial plan elements can be configured and linked together.

![Visual editor for an example dial plan, with the new element, Add, and Save buttons
highlighted.](dial_plan_basics/dial-plan-visual.png){.align-center}

:::: important
::: title
Important
:::

New dial plans come blank with `New element`{.interpreted-text
role="guilabel"} options for the user to `Add`{.interpreted-text
role="guilabel"} and `Save`{.interpreted-text role="guilabel"}.

The method for saving in the `Dialplan Editor`{.interpreted-text
role="guilabel"} is different from saving any other edits in the Axivox
management console because the `Save`{.interpreted-text role="guilabel"}
button **must** be pressed before closing the
`Visual editor`{.interpreted-text role="menuselection"}.

Then, before these changes can take place on the Axivox platform, the
user **must** click `Apply changes`{.interpreted-text role="guilabel"}
in the upper-right corner of the `Dial plan`{.interpreted-text
role="guilabel"} page.
::::

From the `Dialplan Editor`{.interpreted-text role="guilabel"} pop-up
window, users can add a new element to the dial plan. To do that, open
the `New element`{.interpreted-text role="guilabel"} drop-down menu, and
select the desired element. Then, click `Add`{.interpreted-text
role="guilabel"}.

Doing so adds that element to the visual editor display of the dial plan
being modified. This element can be moved where desired amongst the
other elements present in the dial plan.

Connect elements in the dial plan by clicking and dragging outward from
the `(open
circle)`{.interpreted-text role="guilabel"} icon on the right side of
the element. Doing so reveals an `(arrow)`{.interpreted-text
role="guilabel"} icon. Proceed to drag this `(arrow)`{.interpreted-text
role="guilabel"} icon to the desired element in the dial plan that it is
meant to connect with.

Connect the `(arrow)`{.interpreted-text role="guilabel"} icon to the
circle on the left side of the desired element.

Calls displayed in the dial plan flow from left-to-right in the element.

In order to further configure a `New element`{.interpreted-text
role="guilabel"}, double-click on the element inside the dial plan, to
reveal a subsequent pop-up window, wherein additional customizations can
be entered.

Each element has a different configuration pop-up window that appears
when double-clicked.

:::: important
::: title
Important
:::

All elements **must** have a final destination in the dial plan in order
to close a loop. This can be accomplished by implementing the
`Hang up`{.interpreted-text role="guilabel"} element, or looping the
element back to a `Menu`{.interpreted-text role="guilabel"} element or
`Digital Receptionist`{.interpreted-text role="guilabel"} element
elsewhere in the dial plan.

![Dial plan, shown with highlight looping open end back to the beginning of the menu
element.](dial_plan_basics/loop-back.png){.align-center}
::::

Once all desired dial plan elements and configurations are complete,
remember to click `Save`{.interpreted-text role="guilabel"} before
exiting the `Dialplan Editor`{.interpreted-text role="guilabel"} pop-up
window. Then, click `Apply changes`{.interpreted-text role="guilabel"}
on the `Dial plans`{.interpreted-text role="guilabel"} page to ensure
they are implemented into Axivox production.

### Dial plan elements

The following elements are available in the
`New element`{.interpreted-text role="guilabel"} drop-down menu, while
designing a dial plan in the `Dialplan Editor`{.interpreted-text
role="guilabel"} pop-up window.

#### Basic elements

These are the basic elements that are used in simple dial plans in
Axivox:

- `Call`{.interpreted-text role="guilabel"}: call an extension or queue.
- `Play a file`{.interpreted-text role="guilabel"}: play an audio file
  or voice greeting.
- `Voicemail`{.interpreted-text role="guilabel"}: forward to a voicemail
  (terminal).
- `Hang up`{.interpreted-text role="guilabel"}: hang up the call
  (terminal).
- `Queue`{.interpreted-text role="guilabel"}: attach a call queue with a
  group of users to answer a call.
- `Conference`{.interpreted-text role="guilabel"}: add a conference room
  for a caller to connect to.

#### Basic routing elements

Routing elements change or route the path of a caller, these are some
basic routing elements used in Axivox:

- `Menu`{.interpreted-text role="guilabel"}: add a dial-by-number
  directory and configure downstream actions (not terminal).
- `Switch`{.interpreted-text role="guilabel"}: attach a manual on/off
  control that can divert traffic based on whether it is opened (On) or
  closed (Off).
- `Digital Receptionist`{.interpreted-text role="guilabel"}: attach a
  virtual dispatcher to listen for extensions to connect to.

#### Advanced routing elements

These are the more advanced elements that route calls in Axivox:

- `Dispatcher`{.interpreted-text role="guilabel"}: create a call filter
  to route traffic based on the geo-location of the caller ID.
- `Access List`{.interpreted-text role="guilabel"}: create a tailored
  access list with VIP customer preference.
- `Time Condition`{.interpreted-text role="guilabel"}: create time
  conditions to route incoming traffic around holidays, or other
  sensitive time-frames.
- `Multi-Switch`{.interpreted-text role="guilabel"}: a mechanism to
  create paths, and turn them on and off, to divert incoming calls.

#### Advanced elements

The following are more advanced elements (not routing) in Axivox:

- `Record`{.interpreted-text role="guilabel"}: recording feature is
  enabled (requires plan change, enabled in Axivox settings).
- `Caller ID`{.interpreted-text role="guilabel"}: replace the caller ID
  by the called number or free text.

:::: important
::: title
Important
:::

Dial plan elements can be configured by double-clicking them, and
linking different aspects of the Axivox console to them.
::::

## Attach to incoming number

To attach an existing dial plan to an incoming number, go to [Axivox
management console](https://manage.axivox.com) , and click on
`Incoming numbers`{.interpreted-text role="guilabel"}.

Next, click `Edit`{.interpreted-text role="guilabel"} next to the number
to which the dial plan should be attached.

Doing so reveals a separate page wherein that number\'s dial plan can be
modified. To do that, select `Dial plan`{.interpreted-text
role="guilabel"} from the
`Destination type for voice call`{.interpreted-text role="guilabel"}
field drop-down menu. Then, choose the desired dial plan from the
`Dial plan`{.interpreted-text role="guilabel"} field that appears.

With that in place, that means when that specific number calls in, the
configured dial plan is activated, and runs through the prompts to
properly route the caller.

Finally, `Save`{.interpreted-text role="guilabel"} the changes, and
click `Apply changes`{.interpreted-text role="guilabel"} in the
upper-right corner.

### Basic dial plan scenario

The following showcases a basic dial plan scenario for call routing,
where additional elements can be added to expand the setup. This basic
dial plan scenario includes the following linked elements
`Start --> Play a file --> Menu --> (Hang-up, Calls, Queues, Conferences) -->
(Voicemail, Hang-up)`{.interpreted-text role="menuselection"}.

![Basic dial plan configuration.](dial_plan_basics/basic-scenario.png){.align-center}

::: seealso
This setup does **not** include any basic or advanced call routing. For
more information on call routing, reference this documentation:
`dial_plan_advanced`{.interpreted-text role="doc"}.
:::




--- SOURCE: productivity/voip/axivox/dynamic_caller_id.md ---

# Dynamic caller ID

*Caller ID* identifies the caller when they make a phone call. It allows
the recipient of the call to see what number the caller is calling from.
Caller ID shows users and clients who is calling, so they can choose to
pick up or decline the call.

Axivox offers a dynamic caller ID option to choose which number is
displayed on outgoing calls.

International numbers can be purchased to do business transactions
internationally, via a phone call, from a number that has an area code
or country code of the destination being called. By displaying a local
number, this can increase customer engagement.

Some companies have many employees making calls from a call center.
These employees are not always available to receive a return phone call
from a prospective customer. In this case, `VoIP
(Voice over Internet Protocol)`{.interpreted-text role="abbr"} can be
configured in such a way that dynamic caller ID shows the main company
phone number, so any number of employees in the group can answer the
call. This way, a call is never missed.

## Default outgoing number {#voip/axivox/dynamic-caller-id-default}

In Axivox a *default number* can be set. This is a company\'s main
number. This means, when anyone from the company (user/employee) calls a
number outside the company, the default outgoing number shows up
automatically on the caller ID.

If someone from outside the company tries to call back a user/employee,
they are then funneled back through the main line (default number). If
there is a dial plan set up, they are prompted to make selections. This
is especially helpful in cases where employees change positions
frequently, or if they leave the company.

::: seealso
\- `dial_plan_basics`{.interpreted-text role="doc"} -
`dial_plan_advanced`{.interpreted-text role="doc"}
:::

To access the default number, go to the [Axivox management
console](https://manage.axivox.com), and log in. Then, click into
`Settings`{.interpreted-text role="guilabel"} in the left menu, and
navigate to `Default outgoing number`{.interpreted-text
role="guilabel"}.

From here, change the `Default outgoing number`{.interpreted-text
role="guilabel"} by clicking the drop-down menu, and making a selection
from the incoming phone numbers available on Axivox.

Be sure to `Save`{.interpreted-text role="guilabel"} the changes, then
click `Apply changes`{.interpreted-text role="guilabel"} in the
upper-right corner of the `General Settings`{.interpreted-text
role="guilabel"} page to implement the change.

The `Default outgoing number`{.interpreted-text role="guilabel"} is what
shows up by default in the Axivox management portal. However, the
outgoing number can also be configured differently at the user level.

### Users

To configure the outgoing number at the user level, log in to the
[Axivox management console](https://manage.axivox.com). Next, click
`Users`{.interpreted-text role="guilabel"} from the menu on the left,
and then click `Edit`{.interpreted-text role="guilabel"} to the right of
the user that is to be configured.

Under `Outgoing number`{.interpreted-text role="guilabel"}, click the
drop-down menu to select either the `Default
outgoing number`{.interpreted-text role="guilabel"} (as specified here:
`voip/axivox/dynamic-caller-id-default`{.interpreted-text role="ref"}),
or any of the incoming numbers on the Axivox account.

Choosing the `Default`{.interpreted-text role="guilabel"} selection in
the `Outgoing number`{.interpreted-text role="guilabel"} drop-down menu
ensures this user has the `Default outgoing number`{.interpreted-text
role="guilabel"} shown on their caller ID when making calls.

If a specific number is chosen, and that number is assigned to this user
under `Incoming
numbers`{.interpreted-text role="guilabel"} (in the Axivox console\'s
menu on the left), that means this user has a direct line for customers
to reach them.

Once the desired changes are complete, be sure to click
`Save`{.interpreted-text role="guilabel"}, then click
`Apply changes`{.interpreted-text role="guilabel"} in the upper-right
corner to implement the change.

:::: tip
::: title
Tip
:::

By default, when creating a new user in Axivox, the
`Outgoing number`{.interpreted-text role="guilabel"} is automatically
set to `Default`{.interpreted-text role="guilabel"}.
::::

### Advanced options

To access the `Advanced options`{.interpreted-text role="guilabel"},
navigate to the `Settings`{.interpreted-text role="guilabel"} option in
the menu on the left of the [Axivox management
console](https://manage.axivox.com). Then, click
`Advanced options`{.interpreted-text role="guilabel"} to the right of
`Default outgoing number`{.interpreted-text role="guilabel"}.

By default, there are not any advanced rules set. To create one, click
the green `+
(plus)`{.interpreted-text role="guilabel"} icon. Doing so reveals a line
with two blank fields. From here, different caller IDs can be set up,
depending on what location the user/employee is calling from.

To create a rule, first set the `Destination prefix`{.interpreted-text
role="guilabel"} in the first empty field. This is the country code,
complete with zero(s) in front of it. Then, in the second empty field,
select the phone number that should be used for calling out from that
country code.

:::: important
::: title
Important
:::

Check the box for
`Apply advanced rules even for users with a default outgoing number
configured`{.interpreted-text role="guilabel"} to allow these rules to
take precedent over all other outgoing configurations.
::::

:::: tip
::: title
Tip
:::

The order of the rules can be modified by dragging-and-dropping them
into another order. The first matching rule is applied.
::::

::: example
For example, a company wants all users/employees to utilize the
configured number for Great Britain when calling from the
[0044]{.title-ref} country code (Great Britain).

To accomplish that, simply type in [0044]{.title-ref} into the
`Destination prefix`{.interpreted-text role="guilabel"} field, and
select the number starting with the [+44]{.title-ref} country code.
Order the rules as necessary, and select the checkbox to supersede all
other rules, if needed.

![Advanced options for the default outgoing number.](dynamic_caller_id/advanced-callerid.png){.align-center}
:::

Once the desired configurations are complete, be sure to click
`Save`{.interpreted-text role="guilabel"}, then click
`Apply changes`{.interpreted-text role="guilabel"} in the upper-right
corner to implement the change.




--- SOURCE: productivity/voip/axivox/manage_users.md ---

# Manage users in Axivox

Managing Axivox `VoIP (Voice over Internet Protocol)`{.interpreted-text
role="abbr"} users is an important part of setting up
`VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"} in
an Odoo database. Each Axivox user has a unique name, phone number
and/or extension, and a voicemail. This way, they can be reached in a
variety of convenient ways.

Axivox users are organized in a simple, straightforward way in the
Axivox console, so an administrator can manage users quickly and easily.

:::: note
::: title
Note
:::

This documentation covers how to configure everything through a provider
called, Axivox. Depending on the chosen VoIP provider, the processes to
manage users may be different.
::::

## Overview

Begin at the Axivox management console by navigating to
<https://manage.axivox.com>. Log in with the appropriate administrator
credentials.

:::: note
::: title
Note
:::

Actions in the Axivox management console **must** be double-saved, in
order for the changes to take effect. To save any changes, click
`Save`{.interpreted-text role="guilabel"} in the individualized changes
screen. Then, to implement those changes, click the
`Apply Changes`{.interpreted-text role="guilabel"} button in the
upper-right corner of the console.
::::

### Incoming numbers {#voip/axivox/incoming_number}

Incoming numbers are all the numbers a company is paying to use to
receive calls.

Click on `Incoming numbers`{.interpreted-text role="menuselection"} from
the menu on the left of the Axivox management console. Doing so reveals
the `Incoming numbers`{.interpreted-text role="guilabel"} page, where
all the incoming numbers are listed, along with their
`Destination`{.interpreted-text role="guilabel"} and SMS information.

The `Destination`{.interpreted-text role="guilabel"} determines the
action that is taken, or the path the caller follows when dialing said
numbers.

To edit the `Destination`{.interpreted-text role="guilabel"}, click the
`Edit`{.interpreted-text role="guilabel"} button to the far-right of the
incoming number line to be modified. Then, on the
`Edit number`{.interpreted-text role="guilabel"} page that appears, the
`Destination type for voice call`{.interpreted-text role="guilabel"} can
be changed.

The options available in the
`Destination type for voice call`{.interpreted-text role="guilabel"}
drop-down menu are as follows:

- `Not configured`{.interpreted-text role="guilabel"}
- `Extension`{.interpreted-text role="guilabel"}
- `Dial plan`{.interpreted-text role="guilabel"}
- `Voicemail`{.interpreted-text role="guilabel"}
- `Hang up`{.interpreted-text role="guilabel"}
- `Conference`{.interpreted-text role="guilabel"}

Depending on the selection made in the
`Destination type for voice call`{.interpreted-text role="guilabel"}
drop-down menu, a second, selection-specific drop-down menu is populated
with further configuration options. Additionally, more fields are
revealed, based on the selection made in the `Destination
type for voice call`{.interpreted-text role="guilabel"} drop-down menu.

Once the desired configurations are complete, click
`Save`{.interpreted-text role="guilabel"}, then click `Apply
changes`{.interpreted-text role="guilabel"} in the upper-right corner to
implement them.

## New users

Every employee using
`VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"} at
the company needs an Axivox user account associated with them.

To view existing users in the Axivox management console, click
`Users`{.interpreted-text role="guilabel"} from the menu on the left of
the console. Every user has a `Number`{.interpreted-text
role="guilabel"}, `Name`{.interpreted-text role="guilabel"}, option for
a `Voicemail`{.interpreted-text role="guilabel"}, and an
`Outgoing number`{.interpreted-text role="guilabel"} specified.

To create a new user in the Axivox console, click
`Add a user`{.interpreted-text role="guilabel"} to reveal a `New
user`{.interpreted-text role="guilabel"} form. The following tabs are
available for configuring the new user:

- `General`{.interpreted-text role="guilabel"}: basic information,
  including the extension of the user, can be set.
- `Forwardings`{.interpreted-text role="guilabel"}: internal forwards on
  \'no answer\' or busy signals.
- `Follow Me`{.interpreted-text role="guilabel"}: external forward
  configuration.
- `Keys`{.interpreted-text role="guilabel"}: set hot-keys within the
  `VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"}
  system.
- `SIP Identifiers`{.interpreted-text role="guilabel"}:
  `SIP (Session Initiation Protocol)`{.interpreted-text role="abbr"}
  username and password for external configuration.
- `Permissions`{.interpreted-text role="guilabel"}: set access rights
  for users in the Axivox management console.

### General tab

Under the `General`{.interpreted-text role="guilabel"} tab of the
`New user`{.interpreted-text role="guilabel"} form, in the
`Extension`{.interpreted-text role="guilabel"} field, input an extension
that is unique to the user. This is the number internal users dial to
reach a specific employee.

In the `Name`{.interpreted-text role="guilabel"} field, input the
employee name.

Next, fill out the `Email address of the user`{.interpreted-text
role="guilabel"} field. A valid email address for the employee should be
added here, where the user receives business emails.

In the `GSM number`{.interpreted-text role="guilabel"} field, enter an
alternative number at which the user can be reached. Be sure to include
the country code.

:::: note
::: title
Note
:::

A country code is a locator code that allows access to the desired
country\'s phone system. The country code is dialed first, prior to the
target number. Each country in the world has its own specific country
code.

For a list of comprehensive country codes, visit:
<https://countrycode.org>.
::::

![General tab layout in the Axivox management console.](manage_users/general-tab.png){.align-center}

In the `Voicemail`{.interpreted-text role="guilabel"} field, select
either `Yes`{.interpreted-text role="guilabel"} or
`No`{.interpreted-text role="guilabel"} from the drop-down menu.

In the `Directory`{.interpreted-text role="guilabel"} field, the
administrator has the option to leave it blank, by making no changes, or
selecting `Default`{.interpreted-text role="guilabel"} from the
drop-down menu. The `Directory`{.interpreted-text role="guilabel"} is
used in the *Digital Receptionist* feature element of a dial-plan.

At the bottom of the `General`{.interpreted-text role="guilabel"} tab,
there are two separate options with selection boxes.

The first option is
`This user can receive multiple calls at the same time`{.interpreted-text
role="guilabel"}. By selecting this option, users are able to receive
calls when on another call.

The second option, `This user must log-in to call`{.interpreted-text
role="guilabel"}, provides the option to make it mandatory for the user
to log in.

:::: note
::: title
Note
:::

If a company uses physical VoIP phones on desks, and wants their
employees to be able to log in from *any* phone or desk in the office,
they would make the selection for `This user
must log-in to call`{.interpreted-text role="guilabel"}.
::::

Once the desired configurations are complete, click
`Save`{.interpreted-text role="guilabel"}, then click `Apply
changes`{.interpreted-text role="guilabel"} in the upper-right corner.

### Forwardings tab {#voip/axivox/forwardings_tab}

Under the `Forwardings`{.interpreted-text role="guilabel"} tab of the
`New user`{.interpreted-text role="guilabel"} form, a company can decide
what happens if someone calls a user, and the call is not answered.

:::: important
::: title
Important
:::

Forwardings are disabled when the `Follow Me`{.interpreted-text
role="guilabel"} option is enabled.
::::

For example, under the `Forwarding on no answer`{.interpreted-text
role="guilabel"} field, when the button for `Add
a destination`{.interpreted-text role="guilabel"} is selected, the
option to add a specific user or phone number is revealed. After
entering the `Destination`{.interpreted-text role="guilabel"}, a
specific time frame can be selected by sliding the
`seconds bar`{.interpreted-text role="guilabel"} to the desired ring
time.

Additional `Destinations`{.interpreted-text role="guilabel"} can be
added on with different ring times.

:::: note
::: title
Note
:::

Ring times can be staggered, so the call is forwarded to another user
after the first user does not pick up the call. The option to
`Send to voicemail as a last resort`{.interpreted-text role="guilabel"}
is available to the administrator, should the
`Destinations`{.interpreted-text role="guilabel"} not pick up.
::::

Under the `Forwarding on busy`{.interpreted-text role="guilabel"} field,
an administrator can `Add a destination`{.interpreted-text
role="guilabel"}. When clicked, they can then set the
`Destination`{.interpreted-text role="guilabel"} (user) and time frame.
Should the original user\'s
`VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"}
extension, or incoming number, be busy, the call is forwarded to the
destination(s).

![Manage forwarding calls to different users or phone numbers in the Forwardings tab.](manage_users/forwardings-tab.png){.align-center}

When the desired configurations are complete, click
`Save`{.interpreted-text role="guilabel"}, then click `Apply
changes`{.interpreted-text role="guilabel"} in the upper-right corner of
the page.

### Follow Me tab

When the `Follow Me`{.interpreted-text role="guilabel"} option is
selected, under the `Follow Me`{.interpreted-text role="guilabel"} tab
of the `New user`{.interpreted-text role="guilabel"} form, no
`Forwardings`{.interpreted-text role="menuselection"} can be made.

Also, when the `Follow Me`{.interpreted-text role="guilabel"} option is
selected, the `Add a destination`{.interpreted-text role="guilabel"}
button can be selected to add users, or a destination phone number, to
the original user\'s account. That way, these added numbers ring when a
call is received.

After entering the `Destination`{.interpreted-text role="guilabel"}, a
specific time frame can be made by sliding the
`seconds bar`{.interpreted-text role="guilabel"} to the desired ring
time. Additional `Destinations`{.interpreted-text role="guilabel"} can
be added with different ring times.

:::: note
::: title
Note
:::

The original user\'s
`VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"}
number does **not** ring with this option selected. Ring times can also
be staggered, so the call is forwarded to another user after the first
user does not pick up the call.
::::

![Ring destinations like different users or phone numbers from the Follow Me tab.](manage_users/follow-me-tab.png){.align-center}

:::: important
::: title
Important
:::

The Odoo mobile app, or another
`SIP (Session Initiation Protocol)`{.interpreted-text role="abbr"}
mobile client, allows for simultaneous ringing of the user\'s extension
or incoming number. For more information, visit the
`VoIP Mobile Integrations <../devices_integrations>`{.interpreted-text
role="doc"} documentation.
::::

Once all desired configurations are complete, click
`Save`{.interpreted-text role="guilabel"}, then click `Apply
changes`{.interpreted-text role="guilabel"} in the upper-right corner.

### Keys tab

Under the `Keys`{.interpreted-text role="guilabel"} tab of the
`New user`{.interpreted-text role="guilabel"} form, speed dial actions
for the user can be configured. Some more advanced options are
available, as well.

The following options are available to set to numerical values
[1-20]{.title-ref}.

These actions can be set on each number:

- `Not configured`{.interpreted-text role="guilabel"}: the default
  action, which is nothing.
- `BLF (Busy lamp fields)`{.interpreted-text role="guilabel"}: this
  action shows the status of other users\' phones connected to the
  Axivox phone system. This is primarily used on a desk-phone.
- `Quick Call`{.interpreted-text role="guilabel"}: this action allows
  for a speed-dial of an external number.
- `Line`{.interpreted-text role="guilabel"}: this action allows the user
  to call another user.
- `Switch`{.interpreted-text role="guilabel"}: this action allows the
  user to switch between calls from a desk-phone.
- `Pickup`{.interpreted-text role="guilabel"}: this action allows the
  user to pick up an incoming call from a desk-phone.

![Manage user page with Keys tab highlighted and number 2 key drop-down menu selected (with
highlight)](manage_users/user-keys.png){.align-center}

Once all the desired configurations are complete, click
`Save`{.interpreted-text role="guilabel"}, then click
`Apply changes`{.interpreted-text role="guilabel"} in the upper-right
corner.

:::: important
::: title
Important
:::

Many of the preceding options have secondary options available, as well,
that can be used to link a user, or external phone number. These
**must** be filled out in conjunction with the initial action.
::::

:::: note
::: title
Note
:::

The `Number of keys`{.interpreted-text role="guilabel"} field can be
changed by entering in the desired numerical value in the
`Number of keys`{.interpreted-text role="guilabel"} field, located at
the top of the `Keys`{.interpreted-text role="guilabel"} tab of the
`New user`{.interpreted-text role="guilabel"} form.
::::

### SIP Identifiers tab

*SIP*, which stands for Session Initiation Protocol telephony, allows
one to make and receive calls through an internet connection. The
`SIP Identifiers`{.interpreted-text role="guilabel"} tab on the
`New user`{.interpreted-text role="guilabel"} form, contains credentials
needed to configure Axivox users in Odoo and/or a different `SIP
(Session Initiation Protocol)`{.interpreted-text role="abbr"} mobile
client.

::: seealso
See the documentation on configuring Axivox, using the SIP identifiers:

- `Use VoIP services in Odoo with Axivox <axivox_config>`{.interpreted-text
  role="doc"}
- `Axivox Mobile Integrations <../devices_integrations>`{.interpreted-text
  role="doc"}
:::

Under the `SIP Identifiers`{.interpreted-text role="guilabel"} tab, the
`SIP username`{.interpreted-text role="guilabel"} field represents the
user\'s information that was entered in the
`Extension`{.interpreted-text role="guilabel"} field, under the
`General`{.interpreted-text role="guilabel"} tab.

The `Domain`{.interpreted-text role="guilabel"} field is assigned to the
company by the Axivox representative.

The value in the `SIP Password`{.interpreted-text role="guilabel"} field
is unique for every Axivox user. This value is used to sign into Axivox
on Odoo, and for any mobile
`SIP (Session Initiation Protocol)`{.interpreted-text role="abbr"}
clients.

![Important credentials used for external configurations of Axivox VoIP.](manage_users/sip-identifiers-tab.png){.align-center}

The value listed in the `Address of the proxy server`{.interpreted-text
role="guilabel"} field is typically: [pabx.axivox.com]{.title-ref}, but
is subject to change by Axivox, so be sure to check the `SIP
Identifiers`{.interpreted-text role="guilabel"} tab for the most
accurate value.

Once all desired configurations have been made, click
`Save`{.interpreted-text role="guilabel"}, then click `Apply
changes`{.interpreted-text role="guilabel"} in the upper-right corner.

### Permissions tab

Under the `Permissions`{.interpreted-text role="guilabel"} tab of a
`New user`{.interpreted-text role="guilabel"} form, a
`Username`{.interpreted-text role="guilabel"} and
`Password`{.interpreted-text role="guilabel"} can be entered for the
user.

Beneath those fields, the following permissions can be granted to Axivox
users for portal access:

- `User portal access`{.interpreted-text role="guilabel"}
- `User management`{.interpreted-text role="guilabel"}
- `Administrator access`{.interpreted-text role="guilabel"}
- `Phone management`{.interpreted-text role="guilabel"}
- `User group management`{.interpreted-text role="guilabel"}
- `Phone number management`{.interpreted-text role="guilabel"}
- `Dial plan management`{.interpreted-text role="guilabel"}
- `Pickup group management`{.interpreted-text role="guilabel"}
- `Switch management`{.interpreted-text role="guilabel"}
- `Conference management`{.interpreted-text role="guilabel"}
- `Queue management`{.interpreted-text role="guilabel"}
- `Voicemail management`{.interpreted-text role="guilabel"}
- `Audio messages management`{.interpreted-text role="guilabel"}
- `Music on hold management`{.interpreted-text role="guilabel"}
- `Directory management`{.interpreted-text role="guilabel"}
- `Call list`{.interpreted-text role="guilabel"}
- `Connected user list`{.interpreted-text role="guilabel"}
- `Global settings`{.interpreted-text role="guilabel"}
- `Apply changes button`{.interpreted-text role="guilabel"}
- `Invoice download`{.interpreted-text role="guilabel"}
- `Invoice details`{.interpreted-text role="guilabel"}
- `Blacklist management`{.interpreted-text role="guilabel"}
- `Conference participant management`{.interpreted-text role="guilabel"}

To access credentials for the Axivox user portal, navigate to the top of
the `Permissions`{.interpreted-text role="menuselection"} tab. Then,
copy the `Username`{.interpreted-text role="guilabel"}, and enter the
correct `Password`{.interpreted-text role="guilabel"} for the individual
user. There is a minimum of 8 characters for a user password.

:::: note
::: title
Note
:::

These are the same permissions granted to the Axivox administrator that
are listed in the menu on the left in the Axivox management console.
Should a selection state `No`{.interpreted-text role="guilabel"}, or
`No access`{.interpreted-text role="guilabel"}, then the menu option
does **not** populate for the user.
::::

Once all the desired configurations are complete, click
`Save`{.interpreted-text role="guilabel"}, then click
`Apply changes`{.interpreted-text role="guilabel"} in the upper-right
corner.

Upon finishing the setup for a new user, an
`voip/axivox/incoming_number`{.interpreted-text role="ref"} can be
linked.

![Manage a user page, with the permissions tab highlighted, along with the first permission
highlighted indicating a no selection.](manage_users/user-permissions.png){.align-center}

## User groups {#voip/axivox/user_groups}

A user group is a grouping of Axivox users that can be linked to a queue
for call center capability.

To begin using user groups, navigate to <https://manage.axivox.com>.

Then, log in with the appropriate administrator credentials. From the
menu on the left of the Axivox administrative panel, click into
`User Groups`{.interpreted-text role="guilabel"}.

To add a user group from the `User Groups`{.interpreted-text
role="guilabel"} page, click `Add a group`{.interpreted-text
role="guilabel"}.

Next, name the group, by entering text into the `Name`{.interpreted-text
role="guilabel"} field. Then, add a member to the group by typing the
first few letters of the user\'s name into the
`Members`{.interpreted-text role="guilabel"} field. The user populates
in a drop-down menu below the field. Then, click on the desired user,
and they are added to the user group.

Repeat this process to add more users to the group.

Once all desired configurations are complete, click
`Save`{.interpreted-text role="guilabel"}, then click `Apply
changes`{.interpreted-text role="guilabel"} in the upper-right corner.




--- SOURCE: productivity/voip/axivox/vm_audio_messages.md ---

# Voicemails and audio messages

Managing voicemail is an important part of any business. A company needs
to access their messages with ease, and stay on top of any missed calls.
Recording audio messages, like thanking a caller for reaching out, or
directing them to the right extension, is also a great way to
personalize the business interaction, and set the tone with the
customer.

This document covers the configuration of both voicemail and audio
messages in the Axivox administrative portal.

## Set global language {#voip/axivox/global_language}

To start using voicemails and audio messages with Axivox, the global
language should be set in the Axivox admin portal settings. To do that,
navigate to [manage.axivox.com](https://manage.axivox.com/). After
logging into the portal, go to
`Settings --> Global language (e.g.: voicemail
messages,...)`{.interpreted-text role="menuselection"}.

From here, set the language to either: `Francais`{.interpreted-text
role="guilabel"}, `English`{.interpreted-text role="guilabel"},
`Espanol`{.interpreted-text role="guilabel"}, or
`Deutsch`{.interpreted-text role="guilabel"}.

Then, click `Save`{.interpreted-text role="guilabel"}, followed by
`Apply changes`{.interpreted-text role="guilabel"} in the upper-right
corner of the `General Settings`{.interpreted-text role="guilabel"} page
to implement the change into production.

## Activate voicemail {#voip/axivox/activate_voicemail}

In order for a user to utilize voicemail in Axivox, the voicemail
feature **must** be turned on in the Axivox administrative portal. To
begin using voicemail with a user, navigate to
[manage.axivox.com](https://manage.axivox.com/). Then, log in with the
appropriate administrator credentials.

On the left menu of the Axivox administrative panel, click into
`Users`{.interpreted-text role="guilabel"}.

Then, click into the specific user the voicemail should be activated
for. Under the section marked, `Voicemail`{.interpreted-text
role="guilabel"}, open the drop-down menu, and click on
`Yes`{.interpreted-text role="guilabel"}.

Lastly, `Save`{.interpreted-text role="guilabel"} the change, then click
`Apply changes`{.interpreted-text role="guilabel"} in the upper-right
corner of the screen.

## Voicemail

The next step is to set up the individual voicemail boxes on the Axivox
administrative portal. To access the portal, visit
[manage.axivox.com](https://manage.axivox.com/) and log in. Then,
navigate to `Voicemails`{.interpreted-text role="menuselection"},
located in the menu on the left.

If the voicemail option was activated in the user profile, using this
process `voip/axivox/activate_voicemail`{.interpreted-text role="ref"},
then a voicemail is automatically created on the
`Voicemails`{.interpreted-text role="guilabel"} page.

:::: tip
::: title
Tip
:::

It should be noted that some of the administrative portal language is in
French, as Axivox is a Belgian company. The global language is still set
to one of the four options as seen here:
`voip/axivox/global_language`{.interpreted-text role="ref"}.
::::

### Manually create voicemail

To manually create a new voicemail box, click
`Add a voicemail`{.interpreted-text role="guilabel"} on the
`Voicemails`{.interpreted-text role="guilabel"} page. Or, edit an
existing voicemail box, by clicking `Edit`{.interpreted-text
role="guilabel"} to the far-right of an existing voicemail box on the
`Voicemails`{.interpreted-text role="guilabel"} page.

::: example
Suppose a sales or support team needs a general voicemail box. The
voicemail would need to be created manually, and attached to an incoming
number.
:::

The new, manually-created voicemail box should be attached to an
incoming number, so it can receive messages. To do so, navigate to
`Incoming numbers`{.interpreted-text role="menuselection"}, located in
the menu on the left. Then, click `Edit`{.interpreted-text
role="guilabel"} to the far-right of the specific number the voicemail
should be linked to.

In the `Destination type for voice call`{.interpreted-text
role="guilabel"} field, click the drop-down menu, and select
`Voicemail`{.interpreted-text role="guilabel"}. Then, open the drop-down
menu on the next line labeled, `Voicemail`{.interpreted-text
role="guilabel"}, and select the manually-created voicemail box.

:::: important
::: title
Important
:::

If an incoming number is capable of receiving SMS/text messages, an
additional field,
`Destination email address for Incoming SMS`{.interpreted-text
role="guilabel"}, is present.

To determine whether an incoming number is capable of receiving SMS/text
messages, click `Incoming numbers`{.interpreted-text role="guilabel"}
from the menu on the left, then check the
`SMS compatible`{.interpreted-text role="guilabel"} column for the
incoming number.
::::

Then, if applicable, in the field labeled,
`Destination email address for Incoming SMS`{.interpreted-text
role="guilabel"}, enter an email to which incoming text messages sent to
the incoming number can be received. Some incoming numbers (US +1) in
Axivox are capable of receiving text messages from individuals and
automated numbers.

Should this field be left empty, the default destination address is
used, instead (as previously set in the beginning of the process for
manually creating a voicemail).

Once all desired configurations are complete, click
`Save`{.interpreted-text role="guilabel"}, then click `Apply
changes`{.interpreted-text role="guilabel"} in the upper-right corner of
the screen to implement the change into production.

### Notifications

Now, whenever a voicemail is received on any of the automatically
pre-configured or manually-linked voicemail boxes, an email is sent to
the user\'s email address, as listed in the
`Voicemails`{.interpreted-text role="guilabel"} page, or in the user\'s
Axivox profile.

This information can be accessed by navigating to
`Users`{.interpreted-text role="menuselection"} in the left menu, and
clicking `Edit`{.interpreted-text role="guilabel"} next to the specific
user in question.

## Forwarding to voicemail {#voip/axivox/vm_forwarding}

In Axivox, there are also numerous forwarding settings for a user. To
access these forwarding settings, go to
[manage.axivox.com](https://manage.axivox.com/) and log in.

Next, navigate to `Users`{.interpreted-text role="menuselection"},
located in the menu on the left.

From there, click into the specific user the forwarding should be added
to. Then, open the `Forwardings`{.interpreted-text role="guilabel"} tab.

If the user is busy on another call, or away from the phone, there is an
option present in this tab to
`Send to voicemail as a last resort`{.interpreted-text role="guilabel"},
located in the `Forwarding on no
answer`{.interpreted-text role="guilabel"} and
`Forwarding on busy`{.interpreted-text role="guilabel"} fields.

![Send to voicemail as a last resort options highlighted on the Forwardings tab of the user.](vm_audio_messages/forwardings.png){.align-center}

If the `Send to voicemail as a last resort`{.interpreted-text
role="guilabel"} box is ticked, when the forwarding actions stated in
each section are not successful, the caller is routed to the voicemail
set on the particular user.

::: seealso
For more information on forwarding and transfers, visit
`voip/axivox/forwardings_tab`{.interpreted-text role="ref"}.
:::

When all the desired configurations are complete, click
`Save`{.interpreted-text role="guilabel"}, then click
`Apply changes`{.interpreted-text role="guilabel"} in the upper-right
corner of the screen to implement the change.

## Audio messages {#voip/axivox/audio_messages}

It is possible to add audio messages *before* a customer\'s call is even
taken, to inform them about the waiting time for deliveries, the
availability of a product, or any other important promotional messages.

To record an audio message in Axivox, navigate to
[manage.axivox.com](https://manage.axivox.com/) and log in.

Next, click on `Audio messages`{.interpreted-text role="guilabel"} in
the menu on the left. From the `Audio
messages`{.interpreted-text role="guilabel"} page, click
`Add a message`{.interpreted-text role="guilabel"}.

Type in a `Name`{.interpreted-text role="guilabel"}, and click
`Save`{.interpreted-text role="guilabel"}.

Upon clicking `Save`{.interpreted-text role="guilabel"}, the browser
redirects back to the main `Audio messages`{.interpreted-text
role="guilabel"} page, where the newly-created message can be found on
the list.

There are two different ways to make the audio message. The user could
either record the message over the phone, or type the message (in text),
and select a computer-generated speaker to read the message.

### Record audio message

To record an audio message over the phone, click the orange button
labeled, `Record/Listen`{.interpreted-text role="guilabel"}, located to
the right of the desired message on the list to record, on the
`Audio messages`{.interpreted-text role="guilabel"} page.

When clicked, a `Record / listen to a message`{.interpreted-text
role="guilabel"} pop-up window appears. From here, the message is then
recorded, via one of the extensions that is associated with the user.
Under `Extension to use for message management`{.interpreted-text
role="guilabel"} field, click the drop-down menu, and select the
extension where Axivox should call to record the message.

Then, click `OK`{.interpreted-text role="guilabel"} to begin the call.

:::: note
::: title
Note
:::

The user **must** be active in the production database with
`VoIP (Voice over Internet
Protocol)`{.interpreted-text role="abbr"} configured. To configure
`VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"} for
a user, see this documentation: `axivox_config`{.interpreted-text
role="doc"}.
::::

Upon connecting to the Axivox audio recorder management line, a recorded
French-speaking operator provides the following options:

1.  Press [1]{.title-ref} to record a message.
2.  Press [2]{.title-ref} to listen to the current message.

Press either [1]{.title-ref} or [2]{.title-ref}, depending on whether or
not there is already a message present in the system for this particular
audio message that requires a review, before recording a new one.

Record the new audio message after pressing [1]{.title-ref}, then press
[\#]{.title-ref} to end the recording.

The French-speaking operator returns to the line presenting the first
set of questions again:

1.  Press [1]{.title-ref} to record a message.
2.  Press [2]{.title-ref} to listen to the current message.

Press [\#]{.title-ref} to end the call.

### Write audio message

To type the message, and select a computerized speaker to say the text,
navigate to the `Audio messages`{.interpreted-text role="menuselection"}
in the menu on the left.

From the `Audio messages`{.interpreted-text role="guilabel"} page,
select the blue button labeled, `Text message`{.interpreted-text
role="guilabel"}, next to the corresponding audio message
`Name`{.interpreted-text role="guilabel"} that the message should be
attached to.

Doing so reveals a `Convert text to message`{.interpreted-text
role="guilabel"} pop-up window.

From the `Convert to text message`{.interpreted-text role="guilabel"}
pop-up window, click the drop-down menu next to the field labeled,
`Voice`{.interpreted-text role="guilabel"}, and select an option for the
`Text`{.interpreted-text role="guilabel"} to be read in.

After the `Voice`{.interpreted-text role="guilabel"} selection has been
made, and the message has been written in the `Text`{.interpreted-text
role="guilabel"} field, click `Generate`{.interpreted-text
role="guilabel"} to process the audio file.

The text is read in the same language it is written in the
`Text`{.interpreted-text role="guilabel"} field. Should the language
differ in the `Voice`{.interpreted-text role="guilabel"} field, then an
accent is used by the computerized speaker.

Finally, when these steps are complete, click `Save`{.interpreted-text
role="guilabel"} to save the audio message.

To implement the changes, click `Apply changes`{.interpreted-text
role="guilabel"} in the upper-right corner of the screen.

![Convert text to message window with voice, text, generate button and save highlighted.](vm_audio_messages/sample-message.png){.align-center}

:::: tip
::: title
Tip
:::

To set a greeting or audio message in a dial plan element double-click
on the element. This could be a `Play a file`{.interpreted-text
role="guilabel"} element, or a `Menu`{.interpreted-text role="guilabel"}
element, in which the caller should encounter an urgent message, or a
dial-by-number directory.

For more information on dial plans see this documentation:
`dial_plan_basics`{.interpreted-text role="doc"} or
`dial_plan_advanced`{.interpreted-text role="doc"}.
::::

## Music on-hold {#voip/axivox/music_on_hold}

Axivox has the option to add custom hold music to the call whenever a
caller is waiting for their call to be answered. To add hold music to
the Axivox administrative portal, navigate to the
[manage.axivox.com](https://manage.axivox.com/), and log in.

Then, click on `Music on hold`{.interpreted-text role="guilabel"} from
the menu on the left, and a `Change the
music on hold`{.interpreted-text role="guilabel"} pop-up window appears.

On the `Change the music on hold`{.interpreted-text role="guilabel"}
pop-up window, click the `Choose File`{.interpreted-text
role="guilabel"} button to select an MP3 (MPEG Audio Layer 3) or WAV
(Waveform Audio File Format ) file to be uploaded.

:::: note
::: title
Note
:::

Only `MP3 (MPEG Audio Layer 3)`{.interpreted-text role="abbr"} or
`WAV (Waveform Audio File Format)`{.interpreted-text role="abbr"} files
can be uploaded to the Axivox administrative portal.
::::

Once the file is selected, the `Progression`{.interpreted-text
role="guilabel"} bar shows an upload status. When this activity
completes, the window can be closed, by clicking
`Close`{.interpreted-text role="guilabel"}.

When the desired changes are complete, click
`Apply changes`{.interpreted-text role="guilabel"} in the upper-right
corner of the screen.




--- SOURCE: productivity/voip/axivox.md ---

nosearch

:   

# Axivox configuration

::: {.toctree titlesonly=""}
axivox/axivox_config axivox/manage_users axivox/vm_audio_messages
axivox/dynamic_caller_id axivox/conference_calls axivox/dial_plan_basics
axivox/dial_plan_advanced axivox/call_queues
:::




--- SOURCE: productivity/voip/devices_integrations.md ---

# Devices and integrations

`VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"} can
be used on many different devices, such as a computer, tablet, mobile
phone, and many more. This is helpful in that it reduces costs, and
employees can work from anywhere in the world, so long as they have a
broadband internet connection.

Odoo *VoIP* is SIP (Session Initiation Protocol) compatible, which means
it can be used with *any*
`SIP (Session Initiation Protocol)`{.interpreted-text role="abbr"}
compatible application.

This document covers the process of setting up Odoo *VoIP* across
different devices and integrations.

Odoo is fully-integrated with all Odoo apps, allowing users to click
into any app, and schedule a call as an activity in the chatter.

::: example
For example, in the *CRM* app, a user can click into an opportunity, and
click on `Activities`{.interpreted-text role="guilabel"} in the chatter.

Next, they can choose `Call`{.interpreted-text role="guilabel"}, and
under `Due Date`{.interpreted-text role="guilabel"}, they can select a
date.

Once they click `Save`{.interpreted-text role="guilabel"}, an activity
shows up in the chatter.

Should the `Due Date`{.interpreted-text role="guilabel"} be for today\'s
date, the activity shows up in the `VoIP
(Voice over Internet Protocol)`{.interpreted-text role="abbr"} widget.

![View of CRM leads and the option to schedule an activity for Odoo Discuss.](devices_integrations/crm-voip-widget.png){.align-center}
:::

## Odoo VoIP (laptop/desktop computer)

The Odoo *VoIP* (Voice over Internet Protocol) module and widget can be
used from any browser on a laptop or desktop device. Simply click on the
`☎️ (phone)`{.interpreted-text role="guilabel"} icon in the upper-right
corner, while in the Odoo database, and the widget appears.

::: seealso
To see how to use the
`VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"}
widget on a desktop/laptop computer, check out this documentation:
`voip_widget`{.interpreted-text role="doc"}.
:::

## Odoo VoIP (tablet/mobile device)

The Odoo *VoIP* app can be used on tablets and mobile phones, through
the Odoo Android or Apple IOS applications. Additionally, a mobile web
browser can be used to access the database.

:::: warning
::: title
Warning
:::

Odoo Android and Apple IOS applications are no longer being maintained
by Odoo on the Android and Apple portals. This means Odoo support only
handles limited scopes of Odoo Android or Apple IOS support tickets.
::::

:::: important
::: title
Important
:::

While outgoing calls can be placed using Odoo on a mobile device, be
aware that Odoo is **not** a full
`VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"}
application, and does **not** ring on incoming calls. If the user needs
to be reachable on a mobile device at all times, an app, like Zoiper,
should be used. Apps like that stay connected in the background at all
times.

For more information, see this documentation:
`voip/zoiper`{.interpreted-text role="ref"}.
::::

While in the mobile application on a mobile device/tablet, access the
Odoo *VoIP* widget, by tapping on the `☎️ (phone)`{.interpreted-text
role="guilabel"} icon in the upper-right corner. The widget appears in
the lower-left corner.

When first making a call from the tablet using the mobile application,
the user is prompted to `Allow`{.interpreted-text role="guilabel"} the
database to use the microphone. Click `Allow`{.interpreted-text
role="guilabel"} when prompted to continue with the call using the
microphone.

This step is **necessary**, whether using the mobile Odoo application or
web browser.

![Allow the database to access the microphone.](devices_integrations/allow-mic.png){.align-center}

Odoo then asks how to make the call. The two options are :
`VOIP`{.interpreted-text role="guilabel"} or `Phone`{.interpreted-text
role="guilabel"} (should the tablet be enabled for calling). Click the
box next to `Remember ?`{.interpreted-text role="guilabel"} should this
decision be the default moving forward.

![Window prompt to choose whether to use VOIP or the devices phone to make the call.](devices_integrations/voip-phone.png){.align-center}

Here is the layout of what the Odoo *VoIP* app looks like on a mobile
device:

![Layout of what the VoIP app looks like on the a mobile device.](devices_integrations/voip-odoo-dashboard.png){.align-center}

## Zoiper Lite {#voip/zoiper}

*Zoiper Lite* is a free
`VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"}
`SIP (Session Initiation
Protocol)`{.interpreted-text role="abbr"} dialer with voice and video.

To start using the *Zoiper* app, download it to the device, via the
[Zoiper download
page](https://www.zoiper.com/en/voip-softphone/download/current).

A mobile device is the most common installation, and this document
covers how to set up on the *Zoiper* IOS application. Screenshots and
steps may differ depending on the set up conditions.

After installing the *Zoiper* application on the mobile phone, open the
application, and tap on `Settings`{.interpreted-text role="guilabel"}.
Navigate to `Accounts`{.interpreted-text role="menuselection"}, and tap
on the `+ (plus)`{.interpreted-text role="guilabel"} icon to add an
account.

If the `VoIP (Voice over Internet Protocol)`{.interpreted-text
role="abbr"} account is already set up, then click
`Yes`{.interpreted-text role="guilabel"}. This means an account username
and password has already been produced.

![Zoiper account setup, shown in the view from a mobile device.](devices_integrations/account-settings-zoiper-group.png){.align-center}

Next, tap on `Select a provider`{.interpreted-text role="guilabel"}. On
the screen that populates, tap `Country`{.interpreted-text
role="guilabel"}, in the upper-right corner, to narrow the providers
down to a specific country. Choose the country for the provider that is
being configured, then find the `Provider`{.interpreted-text
role="guilabel"}, and select it.

::: example
If the provider being configured is *Axivox*, then select
`Belgium`{.interpreted-text role="guilabel"}. Then, choose
`Axivox`{.interpreted-text role="guilabel"} as the provider.
:::

![Zoiper account setup, choosing the provider.](devices_integrations/provider-zoiper-odoo.png){.align-center}

Under `SIP (Session Initiation Protocol)`{.interpreted-text role="abbr"}
options, enter the `Account name`{.interpreted-text role="guilabel"},
`Domain`{.interpreted-text role="guilabel"},
`Username`{.interpreted-text role="guilabel"}, and
`Password`{.interpreted-text role="guilabel"}. All this information
varies, based on the account.

:::: tip
::: title
Tip
:::

To access this information, via the *Axivox* portal, navigate to
`Users --> Choose
user --> Edit --> SIP Identifiers tab`{.interpreted-text
role="menuselection"}. The `SIP username`{.interpreted-text
role="guilabel"}, `Domain`{.interpreted-text role="guilabel"},
`SIP password`{.interpreted-text role="guilabel"}, and
`Address of the proxy server`{.interpreted-text role="guilabel"} are all
present in this tab.
::::

  Zoiper Field   Axivox Field
  -------------- -------------------
  Account name   *Can be anything*
  Domain         Domain
  Username       SIP username
  Password       SIP password

Once this account information is entered, click the green
`Register`{.interpreted-text role="guilabel"} button at the top of the
screen. Once the registration information is checked, *Zoiper* populates
a message, stating `Registration Status: OK`{.interpreted-text
role="guilabel"}.

At this point, *Zoiper* is now set up to make phone calls using the
`VoIP (Voice over Internet
Protocol)`{.interpreted-text role="abbr"} service.

![Zoiper account setup, registration successful.](devices_integrations/sip-options-zoiper.png){.align-center}

## Linphone

*Linphone* is an open-source
`VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"}
`SIP (Session
Initiation Protocol)`{.interpreted-text role="abbr"} softphone, used for
voice, video, messaging (group and individual), as well as conference
calls.

To start using the *Linphone* app, download it to the device, via the
[Linphone download
page](https://new.linphone.org/technical-corner/linphone?qt-technical_corner=2#qt-technical_corner).

A mobile device is the most common installation, and this document
covers how to set up the *Linphone* IOS application. Screenshots and
steps may differ depending on the circumstances.

To begin configuring *Linphone* for use with a
`SIP (Session Initiation Protocol)`{.interpreted-text role="abbr"}
provider, first open *Linphone*, and an assistant screen appears.

From this screen, select `Use SIP Account`{.interpreted-text
role="guilabel"}. Then, on the following screen, enter the
`Username`{.interpreted-text role="guilabel"},
`Password`{.interpreted-text role="guilabel"},
`Domain`{.interpreted-text role="guilabel"}, and
`Display Name`{.interpreted-text role="guilabel"}. Once complete, press
`Login`{.interpreted-text role="guilabel"}.

At this point, *Linphone* is ready to start making calls, once there is
a green button at the top of the application screen that reads,
`Connected`{.interpreted-text role="guilabel"}.

![Linphone account setup, registration successful.](devices_integrations/linphone-odoo-setup.png){.align-center}

:::: tip
::: title
Tip
:::

*Linphone* makes a variety of applications for mobile and desktop
devices in operating systems, such as Windows, Linux, Apple, and
Android. Because *Linphone* is an open-source project, many new updates
are released on a regular basis.

See [Linphone\'s wiki-documentation
page](https://wiki.linphone.org/xwiki/wiki/public/view/Linphone/).
::::




--- SOURCE: productivity/voip/onsip.md ---

# Use VoIP services in Odoo with OnSIP

:::: important
::: title
Important
:::

OnSIP `VoIP (voice over internet protocol)`{.interpreted-text
role="abbr"} services are only available in the **United States** (US).
OnSIP `VoIP (voice over internet protocol)`{.interpreted-text
role="abbr"} services are widely available in the lower-48, contiguous
United States. In Alaska or Hawaii, charges for service can be higher.

Additionally, a `US (United States)`{.interpreted-text role="abbr"}
billing address, and `US (United States)`{.interpreted-text role="abbr"}
credit card are required to use the service.

Before setting up an account with OnSIP, the business will need to make
sure the business telephone numbers are portable to OnSIP.

OnSIP makes every attempt to work with all telephone service providers.
However, certain local or regional guidelines may preclude the
company\'s current provider from releasing the number.
::::

## Introduction

Odoo *VoIP* can be set up to work together with [OnSIP (Odoo Landing
Page)](https://info.onsip.com/odoo/). OnSIP is a VoIP provider. An
account is needed with OnSIP in order to use this service.

Before setting up an account with OnSIP, make sure the company\'s home
area, and the areas that will be called, are covered by OnSIP services.

After opening an OnSIP account, follow the configuration procedure below
to configure it on an Odoo database.

## Configuration

To configure the Odoo database to connect to OnSIP services, first
navigate to the `Apps application`{.interpreted-text
role="menuselection"} from the main Odoo dashboard. Then, remove the
default [Apps]{.title-ref} filter from the `Search...`{.interpreted-text
role="guilabel"} bar, and search for [VoIP OnSIP]{.title-ref}.

Next, install the `VOIP OnSIP`{.interpreted-text role="guilabel"}
module.

![View of OnSIP app in the app search results.](onsip/install-onsip.png){.align-center}

### Odoo VoIP setting

After installing the *VOIP OnSIP* module, go to the
`Settings app`{.interpreted-text role="menuselection"}, scroll down to
the `Integrations`{.interpreted-text role="guilabel"} section, and
locate the `Asterisk (VoIP)`{.interpreted-text role="guilabel"} fields.
Then, proceed to fill in those three fields with the following
information:

- `OnSIP Domain`{.interpreted-text role="guilabel"}: the domain that was
  assigned when creating an account on [OnSIP](https://www.onsip.com/).
- `WebSocket`{.interpreted-text role="guilabel"}:
  [wss://edge.sip.onsip.com]{.title-ref}
- `VoIP Environment`{.interpreted-text role="guilabel"}:
  `Production`{.interpreted-text role="guilabel"}

![VoIP configuration settings in Odoo Settings app.](onsip/asterisk-setting.png){.align-center}

:::: tip
::: title
Tip
:::

To access the OnSIP domain, navigate to [OnSIP](https://www.onsip.com/)
and log in. Then, click the `Administrators`{.interpreted-text
role="guilabel"} link in the top-right of the page.

Next, in the left menu, click `Users`{.interpreted-text
role="guilabel"}, and then select any user. By default, the selected
user opens on the `User Info`{.interpreted-text role="guilabel"} tab.

Click on the `Phone Settings`{.interpreted-text role="guilabel"} tab to
reveal OnSIP configuration credentials (first column).

![Domain setting revealed (highlighted) on administrative panel of OnSIP management
console.](onsip/domain-setting.png){.align-center}
::::

### Odoo user setting

Next, the user needs to be set up in Odoo. Every user associated with an
OnSIP user **must** also be configured in the Odoo user\'s
settings/preferences.

To do that, navigate to
`Settings app --> Manage Users --> Select the User`{.interpreted-text
role="menuselection"}.

On the user form, click `Edit`{.interpreted-text role="guilabel"} to
configure the user\'s OnSIP account. Then, click the
`Preferences`{.interpreted-text role="guilabel"} tab, and scroll to the
`VoIP`{.interpreted-text role="guilabel"} section.

In this section, fill in the fields with OnSIP credentials.

Fill in the following fields with the associated credentials listed
below:

- `VoIP Username`{.interpreted-text role="guilabel"} /
  `Extension Number`{.interpreted-text role="guilabel"} = OnSIP
  `Username`{.interpreted-text role="guilabel"}
- `OnSIP Auth Username`{.interpreted-text role="guilabel"} = OnSIP
  `Auth Username`{.interpreted-text role="guilabel"}
- `VoIP secret`{.interpreted-text role="guilabel"} = OnSIP
  `SIP Password`{.interpreted-text role="guilabel"}
- `External device number`{.interpreted-text role="guilabel"} = OnSIP
  `Ext.`{.interpreted-text role="guilabel"} (extension without the
  [x]{.title-ref})

![OnSIP user credentials with username, auth username, SIP password, and extension
highlighted.](onsip/onsip-creds.png){.align-center}

:::: tip
::: title
Tip
:::

The OnSIP extension can be found in the *User* banner line above the
tabs.
::::

When these steps are complete, navigate away from the user form in Odoo
to save the configurations.

Once saved, Odoo users can make phone calls by clicking the
`☎️ (phone)`{.interpreted-text role="guilabel"} icon in the top-right
corner of Odoo.

::: seealso
Additional setup and troubleshooting steps can be found on [OnSIP\'s
knowledge base](https://support.onsip.com/hc/en-us).
:::

### Incoming calls

The Odoo database also receives incoming calls that produce pop-up
windows in Odoo. When those call pop-up windows appear, click the green
`📞 (phone)`{.interpreted-text role="guilabel"} icon to answer the call.

To ignore the call, click the red `📞 (phone)`{.interpreted-text
role="guilabel"} icon.

![Incoming call shown in the Odoo VoIP widget.](onsip/incoming-call.png){.align-center}

::: seealso
`voip_widget`{.interpreted-text role="doc"}
:::

### Troubleshooting

#### Missing parameters

If a *Missing Parameters* message appears in the Odoo widget, make sure
to refresh the Odoo browser window (or tab), and try again.

![Missing parameter message in the Odoo VoIP widget.](onsip/onsip04.png){.align-center}

#### Incorrect number

If an *Incorrect Number* message appears in the Odoo widget, make sure
to use the international format for the number. This means leading with
the international country code.

A country code is a locator code that allows access to the desired
country\'s phone system. The country code is dialed first, prior to the
target number. Each country in the world has its own specific country
code.

For example, [16505555555]{.title-ref} (where [1]{.title-ref} is the
international prefix for the United States).

![Incorrect number message populated in the Odoo VoIP widget.](onsip/onsip05.png){.align-center}

::: seealso
For a list of comprehensive country codes, visit:
<https://countrycode.org>.
:::

## OnSIP on mobile phone

In order to make and receive phone calls when the user is not in front
of Odoo on their computer, a softphone app on a mobile phone can be used
in parallel with Odoo *VoIP*.

This is useful for convenient, on-the-go calls, and to make sure
incoming calls are heard. Any SIP softphone will work.

::: seealso
\- `devices_integrations`{.interpreted-text role="doc"} - [OnSIP App
Download](https://www.onsip.com/app/download)
:::




--- SOURCE: productivity/voip/transfer_forward.md ---

# Make, receive, transfer, and forward calls

Calling prospective clients, customers, or colleagues is an essential
part of any business. A company also needs to be available when
customers call, in order to build trust and make connections.

This document covers how to make, receive, transfer, and forward calls
with Odoo *VoIP*.

## Make calls

Starting on the Odoo dashboard, a call can be made by opening the phone
widget in the the upper-right corner, which is represented by a
`☎️ (phone)`{.interpreted-text role="guilabel"} icon.

Then, a user can click on the `Contacts`{.interpreted-text
role="guilabel"} tab, and click into any contact in the database to make
a call.

Additionally, one can also use the `Search bar`{.interpreted-text
role="guilabel"} in the `VOIP`{.interpreted-text role="guilabel"} pop-up
window to find any desired contact.

![Using the VoIP phone widget to make calls.](transfer_forward/widget-operation.png){.align-center}

To manually make a call, click the `⌨️ (keyboard)`{.interpreted-text
role="guilabel"} icon, and proceed to manually key in the desired
number. Do not forget to lead with the `+ (plus)`{.interpreted-text
role="guilabel"} icon, followed by the international country code.

::: example
For the United States of America, the country code and
`+ (plus)`{.interpreted-text role="guilabel"} icon, would look like
this: [+1]{.title-ref}. If one were to dial Belgium, the number would be
prefixed by [+32]{.title-ref}, and for Great Britain it would be
[+44]{.title-ref}.
:::

After entering the full number, with the required
`+ (plus)`{.interpreted-text role="guilabel"} icon prefix and country
code, click the green `📞 (phone)`{.interpreted-text role="guilabel"}
icon to start the call. When finished, click the red
`📞 (phone)`{.interpreted-text role="guilabel"} icon to end the call.

![Using the VoIP phone widget to make calls.](transfer_forward/manual-call.png){.align-center}

## Receive calls

An incoming call automatically opens the *VoIP* widget, when a user is
using the Odoo database. Should the database be open in another tab, a
sound plays (the sound **must** be activated on the device).

Once back to the tab, the calling screen of the *VoIP* phone widget
appears.

Click the green `📞 (phone)`{.interpreted-text role="guilabel"} icon to
pick up the call, or the red `📞 (phone)`{.interpreted-text
role="guilabel"} icon to reject the call.

![Incoming call on the VoIP widget, with the call answer and call reject buttons highlighted.](transfer_forward/incoming-call.png){.align-center}

## Add to call queue

All the contacts and customers that need to be called can be seen in one
place with the Odoo *VoIP* phone widget, under the
`Next activities`{.interpreted-text role="guilabel"} tab.

![VoIP widget with next activities highlighted, showing tasks below.](transfer_forward/next-activities.png){.align-center}

To add a call to the `Next activities`{.interpreted-text
role="guilabel"} tab, click the green `📞 (phone)`{.interpreted-text
role="guilabel"} icon, while in kanban view of the *CRM* application.

To remove them from the call queue, hover over the opportunity that has
a call scheduled, and click the red `📞 (phone)`{.interpreted-text
role="guilabel"} icon that appears with the
`- (minus)`{.interpreted-text role="guilabel"} icon.

When navigating back to the *VoIP* phone widget, **only** the calls that
are scheduled immediately for that day appear in the queue under the
`Next Activities`{.interpreted-text role="guilabel"} tab of the *VoIP*
pop-up widget.

![Adding a call to the next activities tab in the VoIP phone widget.](transfer_forward/add-call-queue.png){.align-center}

The `Next Activities`{.interpreted-text role="guilabel"} tab of the
*VoIP* phone widget is integrated with the following Odoo apps: *CRM*,
*Project*, and *Helpdesk*.

A call can be added in the chatter of records within those applications.

To manually add a call, via the chatter, click
`Activities`{.interpreted-text role="guilabel"} (next to the `🕗
(clock)`{.interpreted-text role="guilabel"} icon). Under
`Activity Type`{.interpreted-text role="guilabel"}, select
`Call`{.interpreted-text role="guilabel"} from the drop-down menu that
appears.

Next, set a `Due Date`{.interpreted-text role="guilabel"}, and add a
`Summary`{.interpreted-text role="guilabel"}.

Lastly, change the `Assigned to`{.interpreted-text role="guilabel"}
field to the person that should make the call. Whomever is set in this
last field (`Assigned to`{.interpreted-text role="guilabel"}) has this
call show up in their `Next
Activities`{.interpreted-text role="guilabel"} call queue in the Odoo
*VoIP* phone widget.

:::: important
::: title
Important
:::

Only calls for the immediate day (today\'s date) appear in the
`Next Activities`{.interpreted-text role="guilabel"} tab of the *VoIP*
phone widget for that specific user.
::::

If specified, click `Save`{.interpreted-text role="guilabel"} or
`Open Calendar`{.interpreted-text role="guilabel"} to complete the
scheduling of the call.

## Transfer calls

A call can be transferred from one user to another in the Odoo *VoIP*
phone widget. However, this can **only** occur after speaking to the
caller first. Without picking up the call in the Odoo *VoIP* phone
widget, the only way to transfer a call is automatically though the
provider console/portal.

::: seealso
For more information on transfers, visit
`voip/axivox/forwardings_tab`{.interpreted-text role="ref"}.
:::

To transfer a call within the Odoo *VoIP* phone widget, first, answer
the call using the green `📞 (phone)`{.interpreted-text role="guilabel"}
icon.

Once the incoming call is answered, click the
`↔ (left-right arrow)`{.interpreted-text role="guilabel"} icon. Then,
enter the extension of the user the call should be forwarded to.
Finally, click `Transfer`{.interpreted-text role="guilabel"} to route
the call to that phone number.

:::: tip
::: title
Tip
:::

To find the extension for a user, consult the
`VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"}
administrator, or, if the user has *Settings* access rights to
*Administration*, navigate to
`Settings App --> Manage Users --> Select the user --> Preferences --> VOIP -->
VoIP username / Extension number`{.interpreted-text
role="menuselection"}.

For more information on access rights, visit:
`/applications/general/users/access_rights`{.interpreted-text
role="doc"}.
::::

![Transferring a call within the phone widget, with the transfer buttons highlighted.](transfer_forward/transfer.png){.align-center}

## Forward calls

To forward a call within the Odoo *VoIP* phone widget, first, answer the
call using the green `📞 (phone)`{.interpreted-text role="guilabel"}
icon. Once the incoming call is answered, click the `↔ (left-right
arrow)`{.interpreted-text role="guilabel"} icon.

Then, enter the full phone number of the user the call should be
forwarded to. Finally, click `Transfer`{.interpreted-text
role="guilabel"} to route the call to that phone number.

::: seealso
For more information on forwarding, visit
`voip/axivox/forwardings_tab`{.interpreted-text role="ref"}.
:::




--- SOURCE: productivity/voip/voip_widget.md ---

# VoIP widget

The *VoIP* widget is an add-on made available to Odoo users through the
*VoIP* module. It is used to incorporate virtual telephony into the
database. The widget is the control center for making and managing calls
in Odoo.

## Phone calls

To make phone calls while in the Odoo database, click the
`☎️ (phone)`{.interpreted-text role="guilabel"} icon, located in the top
navigation bar.

When clicked, a `VOIP`{.interpreted-text role="guilabel"} pop-up widget
appears in the lower-left corner of the Odoo database. The widget allows
users to freely navigate throughout the database, while making and
receiving calls.

When receiving calls in Odoo, the `VOIP`{.interpreted-text
role="guilabel"} widget rings,and displays a notification. To close the
widget, click the `X (close)`{.interpreted-text role="guilabel"} icon in
the upper-right of the widget\'s screen.

:::: note
::: title
Note
:::

The `VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"}
number is the one provided by Axivox. It can be accessed by navigating
to <https://manage.axivox.com/>. After logging into the portal, go to
`Users --> Outgoing number`{.interpreted-text role="menuselection"}
(column).
::::

![VoIP call in Odoo.](voip_widget/call.png){.align-center}

## Troubleshooting

:::: tip
::: title
Tip
:::

If a *Missing Parameter* error message appears in the Odoo *VoIP*
widget, refresh the Odoo window, and try again.

![\"Missing Parameter\" error message in the Odoo softphone.](voip_widget/missing-parameter.png){.align-center}
::::

:::: tip
::: title
Tip
:::

If an *Incorrect Number* error message appears in the Odoo *VoIP*
widget, make sure to use the international format, leading with the
`+ (plus)`{.interpreted-text role="guilabel"} sign, followed by the
international country code.

(E.g., +16506913277, where [+1]{.title-ref} is the international prefix
for the United States.)

![\"Incorrect Number\" error message in the Odoo softphone.](voip_widget/incorrect-number.png){.align-center}
::::

## Tabs

In all, there are three tabs (`Recent`{.interpreted-text
role="guilabel"}, `Next Activities`{.interpreted-text role="guilabel"},
and `Contacts`{.interpreted-text role="guilabel"}) present in the *VoIP*
widget, which are used for managing calls and day-to-day activities in
Odoo.

### Recent

Under the `Recent`{.interpreted-text role="guilabel"} tab of the *VoIP*
widget, the call history for the user is available. This includes
incoming and outgoing calls. Any number can be clicked to begin a call.

### Next activities

Under the `Next Activities`{.interpreted-text role="guilabel"} tab of
the *VoIP* widget, a user can see any activities assigned to them, and
which ones are due to be completed for the day.

Click an activity from this tab to perform any actions including:
Sending an email, accessing their contact, scheduling another activity,
or accessing a linked record (such as a Sales Order, Lead/Opportunity,
or Project Task).

The user can also mark the activity as complete, edit the details of the
activity, or cancel it.

To call the customer related to a scheduled activity, click the
`📞 (phone)`{.interpreted-text role="guilabel"} icon, or click the
`⌨️ (keyboard)`{.interpreted-text role="guilabel"} icon to dial another
number for the customer.

![Activity control center on the VoIP widget.](voip_widget/activity-widget.png){.align-center}

Some other icons appear in the *VoIP* widget, categorized by two
sections: `Document`{.interpreted-text role="guilabel"} and
`Activity`{.interpreted-text role="guilabel"}.

Under the `Document`{.interpreted-text role="guilabel"} section, from
right to left:

- `✉️ (envelope)`{.interpreted-text role="guilabel"} icon: sends an
  email
- `👤 (person icon)`{.interpreted-text role="guilabel"} icon: redirects
  to the contact card
- `📄 (document)`{.interpreted-text role="guilabel"} icon: redirects to
  the attached record in Odoo
- `🕓 (clock)`{.interpreted-text role="guilabel"} icon: schedule an
  activity

Under the `Activity`{.interpreted-text role="guilabel"} section, from
left to right:

- `✔️ (checkmark)`{.interpreted-text role="guilabel"} icon: mark
  activity as done
- `✏️ (pencil)`{.interpreted-text role="guilabel"} icon: edit the
  activity
- `✖️ (cancel)`{.interpreted-text role="guilabel"} icon: cancel the
  activity

### Contacts

Under the `Contacts`{.interpreted-text role="guilabel"} tab of the
*VoIP* widget, a user can access a contact in the *Contacts* app.

Any contact can easily be called by clicking into the contact from the
*VoIP* widget\'s `Contacts`{.interpreted-text role="guilabel"} tab.

A search feature is also available in the upper-right side of the
widget, represented by a `🔍 (magnifying glass)`{.interpreted-text
role="guilabel"} icon.




--- SOURCE: productivity/voip.md ---

show-content

:   

hide-page-toc

:   

show-toc

:   

# VoIP (Voice over Internet Protocol)

::: seealso
For more information, reference the [Odoo eLearning (video tutorials) on
VoIP](https://www.odoo.com/slides/voip-voice-over-ip-315)
:::

::: {.toctree titlesonly=""}
voip/onsip voip/axivox voip/voip_widget voip/devices_integrations
voip/transfer_forward
:::


