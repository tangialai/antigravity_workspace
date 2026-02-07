# ODOO DOCUMENTATION SUMMARY - CATEGORY: ODOO18DOCS_ADMINISTRATION



--- SOURCE: administration/hosting.md ---

# Hosting

## Change hosting solution {#hosting/change-solution}

The instructions to change the hosting type of a database depend on the
current solution used and to which solution the database should be
moved.

## Transferring an on-premise database

### To Odoo Online

:::: important
::: title
Important
:::

\- Odoo Online is *not* compatible with **non-standard apps**. - The
database\'s current version must be
`supported <standard_extended_support>`{.interpreted-text role="doc"}.
::::

1.  Create a
    `duplicate of the database <on-premise/duplicate>`{.interpreted-text
    role="ref"}.
2.  In this duplicate, uninstall all **non-standard apps**.
3.  Use the database manager to grab a *dump with filestore*.
4.  [Create a support ticket](https://www.odoo.com/help-form) including
    the following:
    - your **subscription number**,
    - the **URL** you want to use for the database (e.g.,
      [company.odoo.com]{.title-ref}), and
    - the **dump** as an attachment or as a link to the file (required
      for 60 MB+ files).
5.  Odoo then makes sure the database is compatible before putting it
    online. In case of technical issues during the process, Odoo might
    contact you.

:::: note
::: title
Note
:::

If you have time constraints, [create a support
ticket](https://www.odoo.com/help-form) as soon as possible to schedule
the transfer.
::::

### To Odoo.sh

Follow the instructions found in
`the Import a database section <odoo-sh/create/import>`{.interpreted-text
role="ref"} of the Odoo.sh *Create a project* documentation.

## Transferring an Odoo Online database

::::::::: important
::: title
Important
:::

Odoo Online\'s
`intermediary versions <standard_extended_support>`{.interpreted-text
role="doc"} are not supported by Odoo.sh or on-premise. Therefore, if
the database to transfer is running an intermediary version, it must be
upgraded first to the next
`major version <standard_extended_support>`{.interpreted-text
role="doc"}, waiting for its release if necessary.

::: example
Transferring an online database running on Odoo 16.3 would require first
upgrading it to Odoo 17.0.
:::

:::: tip
::: title
Tip
:::

Click the `fa-gear`{.interpreted-text role="icon"}
(`gear`{.interpreted-text role="guilabel"}) button next to the database
name on the [Odoo Online database
manager](https://www.odoo.com/my/databases/) to display its version
number.
::::

:::: warning
::: title
Warning
:::

If there is an active Odoo subscription linked to the database being
migrated, reach out to the Customer Service Manager or [contact Odoo
support](https://www.odoo.com/help) to complete the subscription
transfer.
::::
:::::::::

### To on-premise

1.  Download a database backup by signing in to [the Odoo Online
    database manager](https://www.odoo.com/my/databases/), clicking the
    `fa-gear`{.interpreted-text role="icon"} (`gear`{.interpreted-text
    role="guilabel"}) button next to the database name, then selecting
    `fa-cloud-download`{.interpreted-text role="icon"}
    `Download`{.interpreted-text role="guilabel"}. If the download fails
    due to the file being too large, [contact Odoo
    support](https://www.odoo.com/help).
2.  Restore the database from the database manager on your local server
    using the backup.

### To Odoo.sh

1.  Download a database backup by signing in to [the Odoo Online
    database manager](https://www.odoo.com/my/databases/), clicking the
    `fa-gear`{.interpreted-text role="icon"} (`gear`{.interpreted-text
    role="guilabel"}) button next to the database name, then selecting
    `fa-cloud-download`{.interpreted-text role="icon"}
    `Download`{.interpreted-text role="guilabel"}. If the download fails
    due to the file being too large, [contact Odoo
    support](https://www.odoo.com/help).
2.  Follow the instructions found in
    `the Import a database section <odoo-sh/create/import>`{.interpreted-text
    role="ref"} of the Odoo.sh *Create a project* documentation.

## Transferring an Odoo.sh database

### To Odoo Online

:::: important
::: title
Important
:::

Odoo Online is *not* compatible with **non-standard apps**.
::::

1.  Uninstall all **non-standard apps** in a staging build before doing
    it in the production build.
2.  [Create a support ticket](https://www.odoo.com/help-form) including
    the following:
    - your **subscription number**,
    - the **URL** you want to use for the database (e.g.,
      [company.odoo.com]{.title-ref}),
    - which **branch** should be migrated,
    - in which **region** you want the database to be hosted (Americas,
      Europe, or Asia),
    - which user(s) will be the **administrator(s)**, and
    - **when** (and in which timezone) you want the database to be up
      and running.
3.  Odoo then makes sure the database is compatible before putting it
    online. In case of technical issues during the process, Odoo might
    contact you.

:::: note
::: title
Note
:::

\- If you have time constraints, [create a support
ticket](https://www.odoo.com/help-form) as soon as possible to schedule
the transfer. - Select the **region** closest to most of your users to
reduce latency. - Future **administrator(s)** must have an Odoo.com
account. - The **date and time** you want the database to be up and
running are helpful to organize the switch from the Odoo.sh server to
the Odoo Online servers. - Databases are **not reachable** during their
migration.
::::

### To on-premise

1.  Download a
    `backup of your Odoo.sh production database <odoo-sh/branches/tabs/backups>`{.interpreted-text
    role="ref"}.
2.  Restore the database from the database manager on your local server
    using the backup.




--- SOURCE: administration/mobile.md ---

# Odoo mobile apps

Two kind of Odoo mobile app exist: the progressive web app (PWA) and
store apps. Using the PWA is recommended.

## Progressive web app (PWA)

PWAs are web-based applications designed to function across different
devices and platforms, leveraging web browsers to deliver user
experiences similar to native apps.

The Odoo PWA features include:

- Quick access by adding the PWA to a device\'s home screen
- Seamless and borderless navigation experience
- Push notifications
- SSO authentication

To install the Odoo PWA, launch a browser supporting PWAs, and sign in
to an Odoo database. The instructions to install a PWA depend on the
platform and browser used.

:::::: tabs
::: tab
Android

**Chrome**: open Chrome\'s menu (`⋮`{.interpreted-text
role="guilabel"}), select `Install app`{.interpreted-text
role="guilabel"}, and tap `Install`{.interpreted-text role="guilabel"}.

**Firefox**: open Firefox\'s menu (`⋮`{.interpreted-text
role="guilabel"}), select `Install`{.interpreted-text role="guilabel"},
and either touch and hold the Odoo icon or tap
`Add automatically`{.interpreted-text role="guilabel"}.

The PWA can also be installed with **Samsung Internet**, **Edge**, and
**Opera**.
:::

::: tab
iOS

**Safari**: open the **Share** menu by tapping the square with an arrow
pointing upwards icon, select `Add to Home Screen`{.interpreted-text
role="guilabel"}, edit the PWA details if desired, and tap
`Add`{.interpreted-text role="guilabel"}.

On iOS 16.4 and above, the PWA can also be installed with **Chrome**,
**Firefox**, and **Edge**.
:::

::: tab
Desktop

**Chrome** and **Edge**: click the installation icon at the right of the
address bar and click `Install`{.interpreted-text role="guilabel"}.
:::
::::::

::: seealso
\- [Google Chrome Help: Use progressive web
apps](https://support.google.com/chrome/answer/9658361) - [MDN Web Docs:
Installing and uninstalling web
apps](https://developer.mozilla.org/en-US/docs/Web/Progressive_web_apps/Guides/Installing) -
[Microsoft Support: Install, manage, or uninstall apps in Microsoft
Edge](https://support.microsoft.com/en-us/topic/install-manage-or-uninstall-apps-in-microsoft-edge-0c156575-a94a-45e4-a54f-3a84846f6113)
:::

## Store apps

The Odoo mobile apps are available for download on the [Google Play
Store](https://play.google.com/store/apps/details?id=com.odoo.mobile)
and [Apple App Store](https://apps.apple.com/app/odoo/id1272543640).

:::: important
::: title
Important
:::

The iOS app might not be updated and might be deprecated at some point
in the future.
::::

While the store apps support multi-accounts, they are not compatible
with SSO authentication.




--- SOURCE: administration/neutralized_database.md ---

# Neutralized database

A neutralized database is a non-production database on which several
parameters are deactivated. This enables one to carry out tests without
the risk of launching specific automated processes that could impact
production data (e.g., sending emails to customers). Live access is
removed and turned into a testing environment.

:::: note
::: title
Note
:::

**Any testing database created is a neutralized database:**

- testing backup databases
- duplicate databases
- for Odoo.sh: staging and development databases
::::

:::: important
::: title
Important
:::

A database can also be neutralized when upgrading, as it is vital to do
some tests before switching to a new version.
::::

## Deactivated features

Here is a non-exhaustive list of the deactivated features:

- all planned actions (e.g., automatic invoicing of subscriptions, mass
  mailing, etc.)
- outgoing emails
- bank synchronization
- payment providers
- delivery methods
- `IAP (In-App Purchase)`{.interpreted-text role="abbr"} tokens
- website visibility (prevent search engines from indexing your site)

:::: note
::: title
Note
:::

**A red banner at the top of the screen is displayed on the neutralized
database so that it can be seen immediately.**
::::




--- SOURCE: administration/odoo_accounts.md ---

# Odoo.com account

Open the [Connection & Security page](https://www.odoo.com/my/security)
on your Odoo.com account portal to:

- Change your `Password`{.interpreted-text role="guilabel"}.

  :::: note
  ::: title
  Note
  :::

  \- When you create a database, a user linked to your Odoo.com account
  is generated on the database. Changing your Odoo.com account\'s
  password will also modify the password used to sign in with that user
  to the database.
  \- You can set a database-specific password for that user by going to
  the `database's
  settings <users/change-password>`{.interpreted-text role="ref"}.
  However, you will still be able to sign in with your Odoo.com
  account\'s password.
  ::::

- Enable `Two-factor authentication`{.interpreted-text role="guilabel"}
  using an authenticator app.

  ::: seealso
  Refer to the
  `Two-factor authentication documentation <../applications/general/users/2fa>`{.interpreted-text
  role="doc"} for more information. The process to enable it for a
  database user and for your Odoo.com account is similar.
  :::

- `Log out from all devices`{.interpreted-text role="guilabel"} signed
  in to your Odoo.com account, except for the current session.

  > :::: tip
  > ::: title
  > Tip
  > :::
  >
  > To log out from the current session, click the
  > `fa-user-circle-o`{.interpreted-text role="icon"}
  > (`user`{.interpreted-text role="guilabel"}) icon in the top right
  > and select `fa-sign-out`{.interpreted-text role="icon"}
  > `Logout`{.interpreted-text role="guilabel"}.
  > ::::

- Enable `developer mode <developer-mode>`{.interpreted-text role="ref"}
  to add a `developer API key
  <api/external_api/keys>`{.interpreted-text role="ref"}.

- `Delete`{.interpreted-text role="guilabel"} your account.

  :::: danger
  ::: title
  Danger
  :::

  Deleting your Odoo.com account is **irreversible**. Once deleted, your
  account **cannot be retrieved**.
  ::::

Open the [Account Information page](https://www.odoo.com/my/account) to
edit your account details, including your **email address**.

:::: note
::: title
Note
:::

\- When you create a database, a user linked to your Odoo.com account is
generated on the database. Changing your Odoo.com account\'s email
address does not modify the email address used to sign in with that
user. - You can set a database-specific email address for that user by
clicking your avatar in the top-right corner of the database and
selecting `My Preferences`{.interpreted-text role="guilabel"}. You will
still need to sign in to the database using the email address used at
the time of the database creation. - To change the email address used to
sign in to a database, [contact Odoo
Support](https://www.odoo.com/help).
::::

:::: tip
::: title
Tip
:::

In addition to the database you create, all databases you are
`invited to join
<users/add-individual>`{.interpreted-text role="ref"} with your Odoo.com
account\'s email address will be displayed under the [database
manager](https://www.odoo.com/my/databases).
::::




--- SOURCE: administration/odoo_online.md ---

# Odoo Online

[Odoo Online](https://www.odoo.com/trial) offers private databases
hosted and managed by Odoo. Odoo Online databases can be accessed using
any web browser and do not require a local installation. They can be
used for long-term production or to thoroughly test Odoo, including
customizations that do not require custom code.

:::: tip
::: title
Tip
:::

To quickly try out Odoo, shared [demo databases](https://demo.odoo.com)
are available for testing. No registration is required; however, each
database is only available for a few hours.
::::

:::: note
::: title
Note
:::

Odoo Online is incompatible with custom modules or modules from the
[Odoo Apps Store](https://apps.odoo.com/apps).
::::

## Database manager {#odoo-online/database-manager}

To manage an Odoo Online database, open to the [database
manager](https://www.odoo.com/my/databases) and sign in as the database
administrator.

### Domain names {#odoo-online/domain-names}

`Configure a custom domain name <../applications/websites/website/configuration/domain_names>`{.interpreted-text
role="doc"} by selecting a database and clicking
`fa-globe`{.interpreted-text role="icon"}
`Domain Names`{.interpreted-text role="guilabel"}.

:::: tip
::: title
Tip
:::

`Register a domain name for free <domain-name/register>`{.interpreted-text
role="ref"}.
::::

### Tags {#odoo-online/tags}

Add tags to identify and sort databases by selecting a database and
clicking `fa-tags`{.interpreted-text role="icon"}
`Tags`{.interpreted-text role="guilabel"}. In the dialog box, enter a
tag, click the `fa-plus-circle`{.interpreted-text role="icon"}
(`plus`{.interpreted-text role="guilabel"}) button, and click
`Save`{.interpreted-text role="guilabel"}.

:::: tip
::: title
Tip
:::

Search for tags in the `fa-search`{.interpreted-text role="icon"} search
bar at the top right.
::::

### Hide {#odoo-online/hide}

Permanently hide the database from the database manager by selecting it
and clicking `fa-eye-slash`{.interpreted-text role="icon"}
`Hide`{.interpreted-text role="guilabel"}. In the dialog box, click
`Yes, I don't need it
anymore`{.interpreted-text role="guilabel"}.

:::: note
::: title
Note
:::

It is possible to access a hidden database through its URL.
::::

### Manage {#odoo-online/manage}

Access all other database management options by selecting it and
clicking `fa-gears`{.interpreted-text role="icon"}
`Manage`{.interpreted-text role="guilabel"}.

#### Switch plans

Switch [pricing plans](https://www.odoo.com/pricing) by clicking
`Switch`{.interpreted-text role="guilabel"} under the desired plan.

#### Upgrade {#odoo-online/upgrade}

Launch a `database upgrade <upgrade-request-test>`{.interpreted-text
role="ref"} by clicking `Upgrade`{.interpreted-text role="guilabel"}.

:::: note
::: title
Note
:::

This option is only displayed when an upgrade is available.
::::

#### Rename {#odoo-online/rename}

Rename and change the URL of a database by clicking
`Rename`{.interpreted-text role="guilabel"}. In the dialog box, enter a
`New name`{.interpreted-text role="guilabel"} and click
`Rename`{.interpreted-text role="guilabel"}.

#### Duplicate {#odoo-online/duplicate}

Create a copy of the database by clicking `Duplicate`{.interpreted-text
role="guilabel"}. In the dialog box, enter a
`New name`{.interpreted-text role="guilabel"} and click
`Duplicate`{.interpreted-text role="guilabel"}.

:::: important
::: title
Important
:::

\- By default, the `For testing purposes`{.interpreted-text
role="guilabel"} option is enabled. It disables all external actions
(emails, payments, delivery orders, etc.) on the duplicated database. -
Duplicates expire after 15 days. - A maximum of five duplicates can be
created per database. Under extraordinary circumstances, contact [Odoo
Support](https://www.odoo.com/help) to extend the limit.
::::

#### Download a backup {#odoo-online/download}

Download a ZIP file containing a database backup by clicking
`Download Backup`{.interpreted-text role="guilabel"}.

:::: note
::: title
Note
:::

\- Databases are backed up daily as per the [Odoo Cloud Hosting
SLA](https://www.odoo.com/cloud-sla). - If the
`Download Backup`{.interpreted-text role="guilabel"} option is disabled,
it means the database is too large to be downloaded using the database
manager. Contact [Odoo Support](https://www.odoo.com/help) to request an
alternative download solution.
::::

#### View admin activity logs {#odoo-online/activity-logs}

View the logs of all actions taken by Odoo employees or the database
administrator on the database by clicking
`View Admin Activity Logs`{.interpreted-text role="guilabel"}.

:::: note
::: title
Note
:::

Actions taken by Odoo employees are typically the result of requests
submitted to Odoo support, done within the context of a quick start
project, or necessary to maintain the database.
::::

#### Transfer ownership {#odoo-online/transfer-ownership}

Create a support ticket to request a database ownership transfer by
clicking `Transfer
Ownership`{.interpreted-text role="guilabel"}.

#### Delete {#odoo-online/delete}

Delete the database and close its related subscription by clicking
`Delete`{.interpreted-text role="guilabel"}. In the dialog box, click
`Delete`{.interpreted-text role="guilabel"}.

:::: danger
::: title
Danger
:::

All the database\'s data will be deleted instaneously for all users and
**cannot be restored**. It is recommended to
`download a backup <odoo-online/download>`{.interpreted-text role="ref"}
before deleting a database.
::::

:::: note
::: title
Note
:::

After deletion, the database\'s name becomes available to anyone.
::::

## Web services {#odoo-online/web-services}

To retrieve a list of all databases displayed under the [database
manager](https://www.odoo.com/my/databases) programmatically, call the
[list]{.title-ref} method of the [odoo.database]{.title-ref} model via
an
`external JSON-2 API <../developer/reference/external_api>`{.interpreted-text
role="doc"} call.

::: example
.. code:: python

import requests

APIKEY = \"your_apikey\"

requests.post(

:   \"https://www.odoo.com/json/2/odoo.database/list\", headers={
    \"Authorization\": f\"bearer {APIKEY}\", \"X-Odoo-Database\":
    \"openerp\", } json={},

)
:::




--- SOURCE: administration/odoo_sh/advanced/containers.md ---

# Containers

## Overview

Each build is isolated within its own container (Linux namespaced
container).

The base is an Ubuntu system, where all of Odoo\'s required
dependencies, as well as common useful packages, are installed.

If your project requires additional Python dependencies, or more recent
releases, you can define a `requirements.txt`{.interpreted-text
role="file"} file in the root of your branches listing them. The
platform will take care to install these dependencies in your
containers. [The pip requirements
specifiers](https://pip.pypa.io/en/stable/reference/pip_install/#requirement-specifiers)
documentation can help you write a `requirements.txt`{.interpreted-text
role="file"} file. To have a concrete example, check out the
[requirements.txt file of Odoo]({GITHUB_PATH}/requirements.txt).

The `requirements.txt`{.interpreted-text role="file"} files of
submodules are taken into account as well. The platform looks for
`requirements.txt`{.interpreted-text role="file"} files in each folder
containing Odoo modules: Not in the module folder itself, but in their
parent folder.

## Directory structure

As the containers are Ubuntu based, their directory structure follows
the linux Filesystem Hierarchy Standard. [Ubuntu\'s filesystem tree
overview](https://help.ubuntu.com/community/LinuxFilesystemTreeOverview#Main_directories)
explains the main directories.

Here are the Odoo.sh pertinent directories:

    .
    ├── home
    │    └── odoo
    │         ├── src
    │         │    ├── odoo                Odoo Community source code
    │         │    │    └── odoo-bin       Odoo server executable
    │         │    ├── enterprise          Odoo Enterprise source code
    │         │    ├── themes              Odoo Themes source code
    │         │    └── user                Your repository branch source code
    │         ├── data
    │         │    ├── filestore           database attachments, as well as the files of binary fields
    │         │    └── sessions            visitors and users sessions
    │         └── logs
    │              ├── install.log         Database installation logs
    │              ├── odoo.log            Running server logs
    │              ├── update.log          Database updates logs
    │              └── pip.log             Python packages installation logs
    └── usr
         ├── lib
         │    ├── python2.7
         │         └── dist-packages       Python 2.7 standard libraries
         │    ├── python3
         │         └── dist-packages       Python 3 standard libraries
         │    └── python3.5
         │         └── dist-packages       Python 3.5 standard libraries
         ├── local
         │    └── lib
         │         ├── python2.7
         │         │    └── dist-packages  Python 2.7 third-party libraries
         │         └── python3.5
         │              └── dist-packages  Python 3.5 third-party libraries
         └── usr
              └── bin
                   ├── python2.7           Python 2.7 executable
                   └── python3.5           Python 3.5 executable

Both Python 2.7 and 3.5 are installed in the containers. However:

- If your project is configured to use Odoo 10.0, the Odoo server runs
  with Python 2.7.
- If your project is configured to use Odoo 11.0 or above, the Odoo
  server runs with Python 3.5.

## Database shell

While accessing a container with the shell, you can access the database
using *psql*.

``` bash
odoo@odoo-addons-master-1.odoo.sh:~$ psql
psql (9.5.2, server 9.5.11)
SSL connection (protocol: TLSv1.2, cipher: ECDHE-RSA-AES256-GCM-SHA384, bits: 256, compression: off)
Type "help" for help.

odoo-addons-master-1=>
```

**Be careful !** [Use
transactions](https://www.postgresql.org/docs/current/static/sql-begin.html)
(*BEGIN\...COMMIT/ROLLBACK*) for every *sql* statements leading to
changes (*UPDATE*, *DELETE*, *ALTER*, \...), especially for your
production database.

The transaction mechanism is your safety net in case of mistake. You
simply have to rollback your changes to revert your database to its
previous state.

For example, it may happen that you forget to set your *WHERE*
condition.

``` sql
odoo-addons-master-1=> BEGIN;
BEGIN
odoo-addons-master-1=> UPDATE res_users SET password = '***';
UPDATE 457
odoo-addons-master-1=> ROLLBACK;
ROLLBACK
```

In such a case, you can rollback to revert the unwanted changes that you
just mistakenly did, and rewrite the statement:

``` sql
odoo-addons-master-1=> BEGIN;
BEGIN
odoo-addons-master-1=> UPDATE res_users SET password = '***' WHERE id = 1;
UPDATE 1
odoo-addons-master-1=> COMMIT;
COMMIT
```

However, do not forget to either commit or rollback your transaction
after having done it. Open transactions may lock records in your tables
and your running database may wait for them to be released. It can cause
a server to hang indefinitely.

In addition, when possible, use your staging databases to test your
statements first. It gives you an extra safety net.

## Run an Odoo server

You can start an Odoo server instance from a container shell. You won\'t
be able to access it from the outside world with a browser, but you can
for instance:

- use the Odoo shell,

``` bash
$  odoo-bin shell
>>> partner = env['res.partner'].search([('email', '=', 'asusteK@yourcompany.example.com')], limit=1)
>>> partner.name
'ASUSTeK'
>>> partner.name = 'Odoo'
>>> env['res.partner'].search([('email', '=', 'asusteK@yourcompany.example.com')], limit=1).name
'Odoo'
```

- install a module,

``` bash
$  odoo-bin -i sale --without-demo=all --stop-after-init
```

- update a module,

``` bash
$  odoo-bin -u sale --stop-after-init
```

- run the tests for a module,

``` bash
$  odoo-bin -i sale --test-enable --log-level=test --stop-after-init
```

In the above commands, the argument:

- `--without-demo=all` prevents demo data to be loaded for all modules
- `--stop-after-init` will immediately shutdown the server instance
  after it completed the operations you asked.

More options are available and detailed in the
`CLI documentation </developer/reference/cli>`{.interpreted-text
role="doc"}.

You can find in the logs (*\~/logs/odoo.log*) the addons path used by
Odoo.sh to run your server. Look for \"\*odoo: addons paths\*\":

    2018-02-19 10:51:39,267 4 INFO ? odoo: Odoo version {BRANCH}
    2018-02-19 10:51:39,268 4 INFO ? odoo: Using configuration file at /home/odoo/.config/odoo/odoo.conf
    2018-02-19 10:51:39,268 4 INFO ? odoo: addons paths: ['/home/odoo/data/addons/{BRANCH}', '/home/odoo/src/user', '/home/odoo/src/enterprise', '/home/odoo/src/themes', '/home/odoo/src/odoo/addons', '/home/odoo/src/odoo/odoo/addons']

**Be careful**, especially with your production database. Operations
that you perform running this Odoo server instance are not isolated:
Changes will be effective in the database. Always, make your tests in
your staging databases.

## Debugging in Odoo.sh

Debugging an Odoo.sh build is not really different than another Python
app. This article only explains the specificities and limitations of the
Odoo.sh platform, and assumes that you already know how to use a
debugger.

:::: note
::: title
Note
:::

If you don\'t know how to debug a Python application yet, there are
multiple introductory courses that can be easily found on the Internet.
::::

You can use `pdb`, `pudb` or `ipdb` to debug your code on Odoo.sh. As
the server is run outside a shell, you cannot launch the debugger
directly from your Odoo instance backend as the debugger needs a shell
to operate.

- [pdb](https://docs.python.org/3/library/pdb.html) is installed by
  default in every container.

- If you want to use [pudb](https://pypi.org/project/pudb/) or
  [ipdb](https://pypi.org/project/ipdb/) you have to install it before.

  To do so, you have two options:

  > - temporary (only in the current build):
  >
  >   ``` bash
  >   $  pip install pudb --user
  >   ```
  >
  >   or
  >
  >   ``` bash
  >   $  pip install ipdb --user
  >   ```
  >
  > - permanent: add `pudb` or `ipdb` to your project `requirements.txt`
  >   file.

Then edit the code where you want to trigger the debugger and add this:

``` python
import sys
if sys.__stdin__.isatty():
    import pdb; pdb.set_trace()
```

The condition `sys.__stdin__.isatty()` is a hack that detects if you run
Odoo from a shell.

Save the file and then run the Odoo Shell:

``` bash
$ odoo-bin shell
```

Finally, *via* the Odoo Shell, you can trigger the piece of
code/function/method you want to debug.

![Console screenshot showing \`\`pdb\`\` running in an Odoo.sh shell.](containers/pdb_sh.png){.align-center}




--- SOURCE: administration/odoo_sh/advanced/frequent_technical_questions.md ---

# Frequent Technical Questions {#odoosh-advanced-frequent_technical_questions}

## \"Scheduled actions do not run at the exact time they were expected\"

On the Odoo.sh platform, we cannot guarantee an exact running time for
scheduled actions.

This is due to the fact that there might be multiple customers on the
same server, and we must guarantee a fair share of the server for every
customer. Scheduled actions are therefore implemented slightly
differently than on a regular Odoo server, and are run on a *best
effort* policy.

:::: warning
::: title
Warning
:::

Do not expect any scheduled action to be run more often than every 5
min.
::::

## Are there \"best practices\" regarding scheduled actions?

**Odoo.sh always limits the execution time of scheduled actions (\*aka\*
crons).** Therefore, you must keep this fact in mind when developing
your own crons.

We advise that:

- Your scheduled actions should work on small batches of records.
- Your scheduled actions should commit their work after processing each
  batch; this way, if they get interrupted by the time-limit, there is
  no need to start over.
- Your scheduled actions should be
  [idempotent](https://stackoverflow.com/a/1077421/3332416): they must
  not cause side-effects if they are started more often than expected.

## How can I automate tasks when an IP address change occurs? {#ip-address-change}

**Odoo.sh notifies project administrators of IP address changes.**
Additionally, when the IP address of a production instance changes, an
HTTP [GET]{.title-ref} request is made to the path
[/\_odoo.sh/ip-change]{.title-ref} with the new IP address included as a
query string parameter ([new]{.title-ref}), along with the previous IP
address as an additional parameter ([old]{.title-ref}).

This mechanism allows custom actions to be applied in response to the IP
address change (e.g., sending an email, contacting a firewall API,
configuring database objects, etc.)

For security reasons, the [/\_odoo.sh/ip-change]{.title-ref} route is
accessible only internally by the platform itself and returns a
[403]{.title-ref} response if accessed through any other means.

Here is a pseudo-implementation example:

``` python
class IPChangeController(http.Controller):

    @http.route('/_odoo.sh/ip-change', auth='public')
    def ip_change(self, old=None, new=None):
        _logger.info("IP address changed from %s to %s", old, new)
        # Then perform whatever action required for your use case, e.g., update an
        # ir.config_parameter, send an email, contact an external firewall service's API, ...
        return 'ok'
```




--- SOURCE: administration/odoo_sh/advanced/submodules.md ---

# Submodules {#odoosh-advanced-submodules}

## Overview

A [Git submodule](https://git-scm.com/book/en/v2/Git-Tools-Submodules)
allows you to integrate other Git projects into your code, without the
need to copy-paste all their code.

Indeed, your custom modules can depend on modules from other
repositories. Regarding Odoo, this feature allows you to add modules
from other Git repositories into the branches of your repository. Adding
these dependencies in your branch through submodules makes the
deployment of your code and servers easier, as you can clone the
repositories added as submodules at the same time you clone your own
repository.

Besides, you can choose the branch of the repository added as submodule
and you have the control of the revision you want. It\'s up to you to
decide whether you want to pin the submodule to a specific revision and
when you want to update to a newer revision.

In Odoo.sh, the submodules give you the possibility to use and depend on
modules available in other repositories. The platform will detect that
you added modules through submodules in your branches and add them to
your addons path automatically so you can install them in your
databases.

If you add private repositories as submodules in your branches, you need
to configure a deploy key in your Odoo.sh project settings and in your
repository settings. Otherwise Odoo.sh won\'t be allowed to download
them. The procedure is detailed in the chapter
`Settings > Submodules <odoo-sh/settings/submodules>`{.interpreted-text
role="ref"}.

## Adding a submodule

### With Odoo.sh (simple)

:::: warning
::: title
Warning
:::

For now it is not possible to add **private** repositories with this
method. You can nevertheless do so
`with Git <odoo-sh/settings/submodules>`{.interpreted-text role="ref"}.
::::

On Odoo.sh, in the branches view of your project, choose the branch in
which you want to add a submodule.

In the upper right corner, click on the *Submodule* button, and then on
*Run*.

![image](submodules/advanced-submodules-button.png){.align-center}

A dialog with a form is shown. Fill the inputs as follows:

- Repository URL: The SSH URL of the repository.
- Branch: The branch you want to use.
- Path: The folder in which you want to add this submodule in your
  branch.

![image](submodules/advanced-submodules-dialog.png){.align-center}

On Github, you can get the repository URL with the *Clone or download*
button of the repository. Make sure to *use SSH*.

![image](submodules/advanced-submodules-github-sshurl.png){.align-center}

### With Git (advanced) {#odoosh-advanced-submodules-withgit}

In a terminal, in the folder where your Git repository is cloned,
checkout the branch in which you want to add a submodule:

``` bash
$ git checkout <branch>
```

Then, add the submodule using the command below:

``` bash
$ git submodule add -b <branch> <git@yourprovider.com>:<username/repository.git> <path>
```

Replace

- *\<git@yourprovider.com\>:\<username/repository.git\>* by the SSH URL
  of the repository you want to add as submodule,
- *\<branch\>* by the branch you want to use in the above repository,
- *\<path\>* by the folder in which you want to add this submodule.

Commit and push your changes:

``` bash
$ git commit -a && git push -u <remote> <branch>
```

Replace

- \<remote\> by the repository on which you want to push your changes.
  For a standard Git setup, this is *origin*.
- \<branch\> by the branch on which you want to push your changes. Most
  likely the branch you used `git checkout` on in the first step.

You can read the [git-scm.com
documentation](https://git-scm.com/book/en/v2/Git-Tools-Submodules) for
more details about the Git submodules. For instance, if you would like
to update your submodules to have their latest revision, you can follow
the chapter [Pulling in Upstream
changes](https://git-scm.com/book/en/v2/Git-Tools-Submodules#_pulling_in_upstream_changes_from_the_submodule_remote).

## Ignore modules

If you\'re adding a repository that contains a lot of modules, you may
want to ignore some of them in case there are any that are installed
automatically. To do so, you can prefix your submodule folder with a
`.`. The platform will ignore this folder and you can hand pick your
modules by creating symlinks to them from another folder.




--- SOURCE: administration/odoo_sh/advanced.md ---

nosearch

:   

# Advanced

::: {.toctree titlesonly=""}
advanced/containers advanced/submodules
advanced/frequent_technical_questions
:::




--- SOURCE: administration/odoo_sh/first_module.md ---

# Your first module

## Overview

This chapter helps you to create your first Odoo module and deploy it in
your Odoo.sh project.

This tutorial requires you created a project on Odoo.sh, and you know
your Github repository\'s URL.

Basic use of Git and Github is explained.

The below assumptions are made:

- *\~/src* is the directory where are located the Git repositories
  related to your Odoo projects,
- *odoo* is the Github user,
- *odoo-addons* is the Github repository,
- *feature-1* is the name of a development branch,
- *master* is the name of the production branch,
- *my_module* is the name of the module.

Replace these by the values of your choice.

## Create the development branch

### From Odoo.sh

In the branches view:

- hit the `+` button next to the development stage,

- choose the branch *master* in the *Fork* selection,

- type *feature-1* in the *To* input.

  ![pic1](first_module/firstmodule-development-+.png){width="45.0%"}
  ![pic2](first_module/firstmodule-development-fork.png){width="45.0%"}

Once the build created, you can access the editor and browse to the
folder *\~/src/user* to access to the code of your development branch.

![image](first_module/firstmodule-development-editor.png){.align-center}

![image](first_module/firstmodule-development-editor-interface.png){.align-center}

### From your computer

Clone your Github repository on your computer:

``` bash
$ mkdir ~/src
$ cd ~/src
$ git clone https://github.com/odoo/odoo-addons.git
$ cd ~/src/odoo-addons
```

Create a new branch:

``` bash
$ git checkout -b feature-1 master
```

## Create the module structure

### Scaffolding the module

While not necessary, scaffolding avoids the tedium of setting the basic
Odoo module structure. You can scaffold a new module using the
executable *odoo-bin*.

From the Odoo.sh editor, in a terminal:

``` bash
$ odoo-bin scaffold my_module ~/src/user/
```

Or, from your computer, if you have an installation of Odoo:

``` bash
$ ./odoo-bin scaffold my_module ~/src/odoo-addons/
```

If you do not want to bother installing Odoo on your computer, you can
also
`download this module structure template <first_module/my_module.zip>`{.interpreted-text
role="download"} in which you replace every occurrences of *my_module*
to the name of your choice.

The below structure will be generated:

    my_module
    ├── __init__.py
    ├── __manifest__.py
    ├── controllers
    │   ├── __init__.py
    │   └── controllers.py
    ├── demo
    │   └── demo.xml
    ├── models
    │   ├── __init__.py
    │   └── models.py
    ├── security
    │   └── ir.model.access.csv
    └── views
        ├── templates.xml
        └── views.xml

:::: warning
::: title
Warning
:::

Do not use special characters other than the underscore ( \_ ) for your
module name, not even an hyphen ( - ). This name is used for the Python
classes of your module, and having classes name with special characters
other than the underscore is not valid in Python.
::::

Uncomment the content of the files:

- *models/models.py*, an example of model with its fields,

- *views/views.xml*, a tree and a form view, with the menus opening
  them,

- *demo/demo.xml*, demo records for the above example model,

- *controllers/controllers.py*, an example of controller implementing
  some routes,

- *views/templates.xml*, two example qweb views used by the above
  controller routes,

- *\_\_manifest\_\_.py*, the manifest of your module, including for
  instance its title, description and data files to load. You just need
  to uncomment the access control list data file:

  ``` python
  # 'security/ir.model.access.csv',
  ```

### Manually

If you want to create your module structure manually, you can follow the
`/developer/tutorials/server_framework_101`{.interpreted-text
role="doc"} tutorial to understand the structure of a module and the
content of each file.

## Push the development branch

Stage the changes to be committed

``` bash
$ git add my_module
```

Commit your changes

``` bash
$ git commit -m "My first module"
```

Push your changes to your remote repository

From an Odoo.sh editor terminal:

``` bash
$ git push https HEAD:feature-1
```

The above command is explained in the section `Commit and push changes
<odoo-sh/editor/commit>`{.interpreted-text role="ref"} of the
`Online editor page <getting_started/online_editor>`{.interpreted-text
role="doc"}. It includes the explanation regarding the fact you will be
prompted to type your username and password, and what to do if you use
the two-factor authentication.

Or, from your computer terminal:

``` bash
$ git push -u origin feature-1
```

You need to specify *-u origin feature-1* for the first push only. From
that point, to push your future changes from your computer, you can
simply use

``` bash
$ git push
```

## Test your module

Your branch should appear in your development branches in your project.

![image](first_module/firstmodule-test-branch.png){.align-center}

In the branches view of your project, you can click on your branch name
in the left navigation panel to access its history.

![image](first_module/firstmodule-test-branch-history.png){.align-center}

You can see here the changes you just pushed, including the comment you
set. Once the database ready, you can access it by clicking the
*Connect* button.

![image](first_module/firstmodule-test-database.png){.align-center}

If your Odoo.sh project is configured to install your module
automatically, you will directly see it amongst the database apps.
Otherwise, it will be available in the apps to install.

You can then play around with your module, create new records and test
your features and buttons.

## Test with the production data

You need to have a production database for this step. You can create it
if you do not have it yet.

Once you tested your module in a development build with the demo data
and believe it is ready, you can test it with the production data using
a staging branch.

You can either:

- Make your development branch a staging branch, by drag and dropping it
  onto the *staging* section title.

  ![image](first_module/firstmodule-test-devtostaging.png){.align-center}

- Merge it in an existing staging branch, by drag and dropping it onto
  the given staging branch.

  ![image](first_module/firstmodule-test-devinstaging.png){.align-center}

You can also use the `git merge` command to merge your branches.

This will create a new staging build, which will duplicate the
production database and make it run using a server updated with your
latest changes of your branch.

![image](first_module/firstmodule-test-mergedinstaging.png){.align-center}

Once the database ready, you can access it using the *Connect* button.

### Install your module {#odoosh-gettingstarted-firstmodule-productiondata-install}

Your module will not be installed automatically, you have to install it
from the apps menu. Indeed, the purpose of the staging build is to test
the behavior of your changes as it would be on your production, and on
your production you would not like your module to be installed
automatically, but on demand.

Your module may not appear directly in your apps to install either, you
need to update your apps list first:

- Activate the `developer mode <developer-mode>`{.interpreted-text
  role="ref"}

- in the apps menu, click the *Update Apps List* button,

- in the dialog that appears, click the *Update* button.

  ![image](first_module/firstmodule-test-updateappslist.png){.align-center}

Your module will then appear in the list of available apps.

![image](first_module/firstmodule-test-mymoduleinapps.png){.align-center}

## Deploy in production

Once you tested your module in a staging branch with your production
data, and believe it is ready for production, you can merge your branch
in the production branch.

Drag and drop your staging branch on the production branch.

![image](first_module/firstmodule-test-mergeinproduction.png){.align-center}

You can also use the `git merge` command to merge your branches.

This will merge the latest changes of your staging branch in the
production branch, and update your production server with these latest
changes.

![image](first_module/firstmodule-test-mergedinproduction.png){.align-center}

Once the database ready, you can access it using the *Connect* button.

### Install your module

Your module will not be installed automatically, you have to install it
manually as explained in the
`above section about installing your module in staging databases
<odoosh-gettingstarted-firstmodule-productiondata-install>`{.interpreted-text
role="ref"}.

## Add a change {#odoo-sh/module/add}

This section explains how to add a change in your module by adding a new
field in a model and deploy it.

From the Odoo.sh editor,

:   - browse to your module folder *\~/src/user/my_module*,
    - then, open the file *models/models.py*.

Or, from your computer,

:   - use the file browser of your choice to browse to your module
      folder *\~/src/odoo-addons/my_module*,
    - then, open the file *models/models.py* using the editor of your
      choice, such as *Atom*, *Sublime Text*, *PyCharm*, *vim*, \...

Then, after the description field

``` python
description = fields.Text()
```

Add a datetime field

``` python
start_datetime = fields.Datetime('Start time', default=lambda self: fields.Datetime.now())
```

Then, open the file *views/views.xml*.

After

``` xml
<field name="value2"/>
```

Add

``` xml
<field name="start_datetime"/>
```

These changes alter the database structure by adding a column in a
table, and modify a view stored in database.

In order to be applied in existing databases, such as your production
database, these changes requires the module to be updated.

If you would like the update to be performed automatically by the
Odoo.sh platform when you push your changes, increase your module
version in its manifest.

Open the module manifest *\_\_manifest\_\_.py*.

Replace

``` python
'version': '0.1',
```

with

``` python
'version': '0.2',
```

The platform will detect the change of version and trigger the update of
the module upon the new revision deployment.

Browse to your Git folder.

Then, from an Odoo.sh terminal:

``` bash
$ cd ~/src/user/
```

Or, from your computer terminal:

``` bash
$ cd ~/src/odoo-addons/
```

Then, stage your changes to be committed

``` bash
$ git add my_module
```

Commit your changes

``` bash
$ git commit -m "[ADD] my_module: add the start_datetime field to the model my_module.my_module"
```

Push your changes:

From an Odoo.sh terminal:

``` bash
$ git push https HEAD:feature-1
```

Or, from your computer terminal:

``` bash
$ git push
```

The platform will then create a new build for the branch *feature-1*.

![image](first_module/firstmodule-test-addachange-build.png){.align-center}

Once you tested your changes, you can merge your changes in the
production branch, for instance by drag-and-dropping the branch on the
production branch in the Odoo.sh interface. As you increased the module
version in the manifest, the platform will update the module
automatically and your new field will be directly available. Otherwise
you can manually update the module within the apps list.

## Use an external Python library

If you would like to use an external Python library which is not
installed by default, you can define a *requirements.txt* file listing
the external libraries your modules depends on.

:::: note
::: title
Note
:::

\- It is not possible to install or upgrade system packages on an
Odoo.sh database (e.g., apt packages). However, under specific
conditions, packages can be considered for installation. This also
applies to **Python modules** requiring system packages for their
compilation, and **third-party Odoo modules**. - **PostgreSQL
extensions** are not supported on Odoo.sh. - For more information,
consult our [FAQ](https://www.odoo.sh/faq#install_dependencies).
::::

The platform will use this file to automatically install the Python
libraries your project needs.

The feature is explained in this section by using the [Unidecode
library](https://pypi.python.org/pypi/Unidecode) in your module.

Create a file *requirements.txt* in the root folder of your repository

From the Odoo.sh editor, create and open the file
\~/src/user/requirements.txt.

Or, from your computer, create and open the file
\~/src/odoo-addons/requirements.txt.

Add

``` text
unidecode
```

Then use the library in your module, for instance to remove accents from
characters in the name field of your model.

Open the file *models/models.py*.

Before

``` python
from odoo import models, fields, api
```

Add

``` python
from unidecode import unidecode
```

After

``` python
start_datetime = fields.Datetime('Start time', default=lambda self: fields.Datetime.now())
```

Add

``` python
@api.model
def create(self, values):
    if 'name' in values:
        values['name'] = unidecode(values['name'])
    return super(my_module, self).create(values)

def write(self, values):
    if 'name' in values:
        values['name'] = unidecode(values['name'])
    return super(my_module, self).write(values)
```

Adding a Python dependency requires a module version increase for the
platform to install it.

Edit the module manifest *\_\_manifest\_\_.py*

Replace

``` python
'version': '0.2',
```

with

``` python
'version': '0.3',
```

Stage and commit your changes:

``` bash
$ git add requirements.txt
$ git add my_module
$ git commit -m "[IMP] my_module: automatically remove special chars in my_module.my_module name field"
```

Then, push your changes:

In an Odoo.sh terminal:

``` bash
$ git push https HEAD:feature-1
```

In your computer terminal:

``` bash
$ git push
```




--- SOURCE: administration/odoo_sh/getting_started/branches.md ---

# Branches

The `Branches`{.interpreted-text role="guilabel"} view provides an
overview of the different branches in your repository.

## Stages {#odoo-sh/branches/stages}

Odoo.sh offers three different branch stages:

- `Production <odoo-sh/branches/stages/production>`{.interpreted-text
  role="ref"}
- `Staging <odoo-sh/branches/stages/staging>`{.interpreted-text
  role="ref"}
- `Development <odoo-sh/branches/stages/development>`{.interpreted-text
  role="ref"}

You can change the stage of a branch by dragging and dropping it under
the desired stage.

![Changing the stage of a branch](branches/stages-move.gif)

:::: note
::: title
Note
:::

\- Development branches can be moved under `Staging`{.interpreted-text
role="guilabel"}. If you try to move a development branch under
`Production`{.interpreted-text role="guilabel"}, a warning message will
be displayed explaining that you can only have one production branch per
project. - Staging branches can be moved under
`Development`{.interpreted-text role="guilabel"}, but it is not possible
to move them under `Production`{.interpreted-text role="guilabel"}. -
The production branch can only be moved under
`Development`{.interpreted-text role="guilabel"}. If you try to move it
under `Staging`{.interpreted-text role="guilabel"}, you can only perform
a merge. Refer to the
`merging <odoo-sh/branches/stages/merging>`{.interpreted-text
role="ref"} section for a detailed explanation of this process.
::::

### Production {#odoo-sh/branches/stages/production}

The production branch contains the code used to run the production
database. There can be only one production branch.

When you push a new commit to this branch, the production server is
updated with the revised code and restarted.

If the changes require a module update, such as changing a form view,
and you want the update to be performed automatically, you can increase
the module\'s version number in its manifest file
(`__manifest__.py`{.interpreted-text role="file"}). The platform then
performs the update, during which the instance will be held temporarily
unavailable for maintenance reasons.

This method is equivalent to upgrading the module using the
`Apps`{.interpreted-text role="guilabel"} menu or the [-u]{.title-ref}
switch on
`the command line <../../../developer/reference/cli>`{.interpreted-text
role="doc"}.

:::: note
::: title
Note
:::

\- If the changes prevent the server from restarting or if the module
update fails, the server is automatically reverted to the previous
successful code revision, and the database is rolled back to its
previous state. Access to the failed update\'s log to troubleshoot it. -
The demo data is not loaded, as it is not intended for use on a
production database. The [unit
tests](https://en.wikipedia.org/wiki/Unit_testing) are not performed, as
it would increase the unavailability time of the production database
during the update.
::::

Odoo.sh automatically backs up the production database. It keeps seven
daily, four weekly, and three monthly backups. Each backup includes the
database dump, the filestore (attachments and binary fields), logs, and
sessions.

:::: warning
::: title
Warning
:::

When using **trial projects**, the production branch and all staging
branches are automatically set back to the development stage after **30
days**.
::::

### Staging {#odoo-sh/branches/stages/staging}

Staging branches are meant to test new features using production data
without compromising the actual production database with test records.
They create neutralized duplicates of the production database.

The neutralization disables:

- Scheduled actions

  :::: note
  ::: title
  Note
  :::

  To test them, trigger them manually or re-enable them. Be aware that
  the platform will trigger them less often if no one is using the
  database in order to save resources.
  ::::

- Outgoing emails

  :::: note
  ::: title
  Note
  :::

  They are instead intercepted using a mail catcher. An
  `interface to view the emails
  <odoo-sh/branches/tabs/mails>`{.interpreted-text role="ref"} sent by
  the database is provided in your Odoo.sh project. That way, no emails
  are sent to your contacts.
  ::::

- IAP services

- Payment providers and shipping connectors

  :::: note
  ::: title
  Note
  :::

  They are put into test mode.
  ::::

If you configure or view changes in a staging database, make sure to
record them (noting them step by step, reproducing in production, etc.)
or write them directly in the branch\'s modules, using XML data files to
override the default configuration or views. Check the `first module
documentation <odoo-sh/module/add>`{.interpreted-text role="ref"} to
view examples.

:::: note
::: title
Note
:::

Unit tests are not performed. They rely on demo data, which is not
loaded into the production and staging databases. If Odoo starts
supporting running the units without demo data, Odoo.sh will then
consider running the tests on staging databases.
::::

Staging databases are not automatically backed up. Nevertheless, you can
restore a backup of the production database in a staging branch for
testing purposes or to manually recover data that has been accidentally
deleted from the production database. It is possible to create manual
backups of staging databases.

:::: warning
::: title
Warning
:::

Databases created for staging branches are intended to last up to three
months. After that, they can be automatically blocked without prior
notice. Only rebuilding the branch will allow you to use that specific
branch again.
::::

### Development {#odoo-sh/branches/stages/development}

Development branches create new databases using demo data to run the
unit tests. The installed modules are those included in the branch. You
can change this list of modules to install in the
`project settings <settings>`{.interpreted-text role="doc"}.

When pushing a commit to a development branch, a new server is started,
with a database created from scratch, and the branch is updated. The
demo data is loaded, and the unit tests are performed by default to
verify that the changes do not break any of the features being tested.
You can disable the tests or allow specific tests to be run with custom
tags by going to the `branch's settings
<odoo-sh/branches/tabs/settings>`{.interpreted-text role="ref"}.

Similarly to staging branches, emails are not sent but are intercepted
by a mail catcher, and scheduled actions are not triggered as long as
the database is not in use.

Development databases are not automatically backed up, and manual
backups are not possible.

:::: warning
::: title
Warning
:::

Databases created for development branches are intended to last
approximately three days. After that, they can be automatically
garbage-collected to make room for new databases without prior notice.
::::

### Merging branches {#odoo-sh/branches/stages/merging}

You can merge your branches by dragging and dropping them into each
other.

![Merging branches into each other](branches/merging.gif)

To test the changes of development branches with the production data,
you can either:

- Merge the development branch into a staging branch by dragging and
  dropping it onto the desired branch; or

  ![Merging a development branch into a staging branch](branches/merging-into-staging.gif)

- Drag and drop the development branch under the
  `Staging`{.interpreted-text role="guilabel"} section to make it a
  staging branch.

  ![Moving a development branch under staging](branches/moving-to-staging.gif)

When the changes are ready for production, drag and drop the staging
branch into the production branch to merge and deploy them.

:::: note
::: title
Note
:::

\- You can merge development branches into the production branch
directly. However, changes will not be validated against the production
data through a staging branch, so there is a higher risk of encountering
issues in the production database. - You can merge development branches
into each other, and staging branches into each other. - You can also
use [git merge]{.title-ref} directly on your workstation to merge your
branches. Odoo.sh is notified when new revisions are pushed to your
branches.
::::

Merging a staging branch into the production branch only merges the
source code. Any changes made to the staging database are not passed to
the production database. However, if you modify the code in the
repository, it will be passed to the production branch when merging.

If you test configuration changes in staging branches, and want them to
be applied to the production branch, you have to, either:

- Write the configuration changes in XML data files to overide the
  default configuration or views in the branch, and then increase the
  version of the module in its manifest
  (`__manifest__.py`{.interpreted-text role="file"}) to trigger the
  module update when merging the staging branch in the production
  branch.

  :::: note
  ::: title
  Note
  :::

  This method is recommended for better scalability of your
  developments, as you will use the Git versioning features for all
  configuration changes, thereby ensuring traceability of your changes.
  ::::

- Pass them manually from the staging database to the production one by
  copying and pasting them.

## Tabs {#odoo-sh/branches/tabs}

### History {#odoo-sh/branches/tabs/history}

The `History`{.interpreted-text role="guilabel"} tab gives an overview
of the branch history:

- The commit messages and their authors
- The various events linked to the platform, such as stage changes,
  database imports, and backup restores

![The branches\' history tab](branches/history-tab.gif)

A status in the top right corner of each event indicates the current
operation on the database (e.g., installation, update, backup import) or
its outcome (e.g., test feedback, successful backup import). If an
operation is successful, a `Connect`{.interpreted-text role="guilabel"}
button appears, allowing you to access the database.

### Mails {#odoo-sh/branches/tabs/mails}

The `Mails`{.interpreted-text role="guilabel"} tab contains the mail
catcher, which provides an overview of emails sent by the database.

:::: note
::: title
Note
:::

The mail catcher is available for development and staging branches.
Emails from the production database are actually sent and are not
intercepted by the mail catcher.
::::

![The branches\' mails tab](branches/mails-tab.png)

### Shell {#odoo-sh/branches/tabs/shell}

The `Shell`{.interpreted-text role="guilabel"} tab provides shell access
to the container.

Clicking `Shell`{.interpreted-text role="guilabel"} opens a new browser
tab where you can run basic Linux commands ([ls]{.title-ref},
[top]{.title-ref}). You can open a shell on the database by running
[psql]{.title-ref}.

![The branches\' shell tab](branches/shell-tab.png)

:::: tip
::: title
Tip
:::

You can open multiple shell tabs at once and arrange their layout by
dragging and dropping them.
::::

:::: note
::: title
Note
:::

\- Production instance shells are highlighted in red to emphasize the
danger of manipulating production instances directly, while
staging/development instance shells are highlighted in yellow. -
Long-running shell instances/idle shell sessions can be terminated at
any time to free up resources.
::::

#### Commands {#odoo-sh/branches/tabs/shell/commands}

Here is an overview of useful commands that you can run an Odoo.sh
database terminal:

- \`odoo-bin shell\`: to open an Odoo shell
- \`odoo-update\`: to update modules in the database
- \`odoosh-restart\`: to restart Odoo.sh services (http or cron)
- \`odoosh-storage\`: to check the storage usage of your instance\'s
  container filesystem
- \`psql\`: to open a database shell
- \`mutt\`: to check how emails appear on text clients (staging and
  development instances)
- \`lnav \~/logs/odoo.log\`: to navigate in your instance\'s
  `odoo.log`{.interpreted-text role="file"} file
- \`ncdu\`: to launch the disk usage analyzer with an interactive
  interface
- \`grep\`: to filter and find information in log or configuration files

### Editor {#odoo-sh/branches/tabs/editor}

Clicking `Editor`{.interpreted-text role="guilabel"} opens a new browser
tab to access an online integrated development environment (IDE) to edit
the source code. You can also open terminals, Python consoles, and Odoo
shell consoles.

![The branches\' editor tab](branches/online-editor.png)

You can open multiple tabs and drag and drop them to arrange the layout
as you wish.

::: seealso
`Online editor documentation <online_editor>`{.interpreted-text
role="doc"}.
:::

### Monitor {#odoo-sh/branches/tabs/monitor}

The `Monitor`{.interpreted-text role="guilabel"} tab displays various
performance monitoring metrics of the current build.

Zoom in with your cursor to adjust the time range or select it manually
from the time range selector. It is also possible to change the time
zone.

![The time range selector in the branches monitor tab](branches/monitor-time-zone.gif)

:::: note
::: title
Note
:::

\- Technical logs always use the
`UTC (Coordinated Universal Time)`{.interpreted-text role="abbr"}. To
analyze these logs together with your monitoring metrics, ensure
`UTC (Coordinated Universal Time)`{.interpreted-text role="abbr"} is
selected in the monitoring tool. - Similarly, when sending a support
ticket, ensure the information you share is based on
`UTC (Coordinated Universal Time)`{.interpreted-text role="abbr"}, as
Odoo uses this time zone to investigate performance issues.
::::

The information is aggregated periodically. When this is the case, a
blue dotted line is displayed, along with the tag
`Aggregate Date`{.interpreted-text role="guilabel"}. This means that the
data before this date will appear flattened when compared to the data
after this date. Therefore, when using the monitoring tool, it is
recommended to focus on recent events to get the most detailed
information possible.

:::: note
::: title
Note
:::

Dotted Lines of other colors help you relate to other changes on the
build (database import, git push, etc.).
::::

![CPU monitoring aggregated data](branches/monitor-aggregate-date.png)

:::: tip
::: title
Tip
:::

On each graph, an 𝕚 (`information`{.interpreted-text role="guilabel"})
icon is displayed in the top-left corner. Hover your mouse over it to
get more details about what the graph represents.
::::

#### Metrics {#odoo-sh/branches/tabs/monitor/metrics}

##### System {#odoo-sh/branches/tabs/monitor/metrics/system}

The `Memory`{.interpreted-text role="guilabel"} graph displays
information about memory consumption:

- `Memory container`{.interpreted-text role="guilabel"} represents Odoo
  workers and container processes.
- `Memory postgresql`{.interpreted-text role="guilabel"} represents the
  database.

![The memory graph in the monitor tab](branches/monitor-memory-graph.png)

The `CPU`{.interpreted-text role="guilabel"} graph displays information
about CPU consumption:

- `CPU http`{.interpreted-text role="guilabel"} represents Odoo workers.
- `CPU cron/mail`{.interpreted-text role="guilabel"} represents
  scheduled actions and incoming emails.
- `CPU postgresql`{.interpreted-text role="guilabel"} (database
  processes)
- `CPU other`{.interpreted-text role="guilabel"} represents webshells,
  the editor, etc.

![The cpu graph in the monitor tab](branches/monitor-cpu-graph.png)

The `Storage`{.interpreted-text role="guilabel"} graph displays
information about the storage used:

- `Container`{.interpreted-text role="guilabel"} represents the
  filestore, log files, and user files.
- `Postgresql`{.interpreted-text role="guilabel"} represents the
  database and indexes.

![The storage graph in the monitor tab](branches/monitor-storage-graph.png)

##### HTTP {#odoo-sh/branches/tabs/monitor/metrics/http}

The `Requests`{.interpreted-text role="guilabel"} graph displays
information about the number of HTTP requests per second:

- `HTTP successes`{.interpreted-text role="guilabel"} represents
  successful requests.
- `HTTP errors`{.interpreted-text role="guilabel"} represents failed
  requests (check `odoo.log`{.interpreted-text role="file"}).
- `HTTP rate limited`{.interpreted-text role="guilabel"} represents
  declined requests, possibly due to lack of workers.

![The requests graph in the monitor tab](branches/monitor-requests-graph.png)

The `Concurrent requests (max)`{.interpreted-text role="guilabel"} graph
displays the maximum number of concurrent HTTP requests per second.

![The concurrent rquests graph in the monitor tab](branches/monitor-concurrent-graph.png)

:::: note
::: title
Note
:::

Database workers determine the number of concurrent requests that can be
managed simultaneously. It is essential to have enough workers to handle
all incoming requests as they arrive. However, having additional workers
beyond this does not improve the speed at which requests are processed.
::::

The `Average Response time`{.interpreted-text role="guilabel"} displays
the average response time to HTTP requests (in milliseconds).

![The average response time graph in the monitor tab](branches/monitor-response-graph.png)

##### Mails {#odoo-sh/branches/tabs/monitor/metrics/mails}

The `Incoming`{.interpreted-text role="guilabel"} graph displays data
about the daily number of incoming emails:

- `Received Emails`{.interpreted-text role="guilabel"} represents emails
  successfuly received.
- `Received Emails bounced`{.interpreted-text role="guilabel"}
  represents emails unsuccessfully received.

![The incoming graph in the monitor tab](branches/monitor-incoming-graph.png)

The `Outgoing`{.interpreted-text role="guilabel"} graph displays data
about the daily number of outgoing emails:

- `Sent Emails`{.interpreted-text role="guilabel"} represents emails
  successfully sent.
- `Sent Emails bounced`{.interpreted-text role="guilabel"} represents
  emails unsuccessfully sent.

![The outgoing graph in the monitor tab](branches/monitor-outgoing-graph.png)

### Logs {#odoo-sh/branches/tabs/logs}

The `Logs`{.interpreted-text role="guilabel"} tab offers a real-time
view of your server\'s logs.

![The branches log tab](branches/logs-tab.png)

Different logs are available:

- \`pip.log\`: the Python dependencies installation
- \`install.log\`: the database installation (for development branches,
  tests are included)
- \`odoosh-import-database.log\`: the last imported dump process
- \`odoo.log\`: the running server
- \`update.log\`: the database updates
- \`pg_slow_queries.log\`: psql queries that take an unusual amount of
  time
- \`sh_webshell.log\`: the actions taken in the webshell
- \`sh_editor.log\`: the actions taken in the editor
- \`neutralize.log\`: the neutralization of the database (only staging)

![Logs scrolling automatically](branches/logs.gif)

When new lines are added to the logs, they are displayed automatically.
If you scroll to the bottom, the browser scrolls automatically each time
a new line is added.

You can pause the logs fetching process by clicking the
`fa-pause`{.interpreted-text role="icon"} (`pause`{.interpreted-text
role="guilabel"}) button in the upper right corner. Otherwise, the
process stops after five minutes. You can restart it by clicking the
`fa-play`{.interpreted-text role="icon"} (`play`{.interpreted-text
role="guilabel"}) button.

### Backups {#odoo-sh/branches/tabs/backups}

The `Backups`{.interpreted-text role="guilabel"} tab lists the available
backups to download and restore, lets you perform a manual backup and
import a database.

![The branches backups tab](branches/backups-tab.png)

The production database is automatically backed up daily. Seven daily,
four weekly, and three monthly backups are kept. Each backup includes
the database dump, the filestore (attachments and binary fields), logs,
and sessions.

:::: note
::: title
Note
:::

You can refer to [the estimated scheduling of automatic
backups](https://docs.google.com/spreadsheets/d/e/2PACX-1vSJpyyyQ7kr5WSutkrDE3ybgpYySogseN7x2Og6fIbpPYABHe0q8xq0y0xh7P-QSHkX3RTTVqKMIExy/pubhtml?gid=0&single=true)
to gain a better understanding of how the system works. This file is
updated daily, taking the current day as the departure point.
::::

Staging and development databases are not automatically backed up.
However, you can restore a backup of the production database in your
staging branches, for testing purposes, or manually recover data that
has been accidentally deleted from the production database.

The list contains the backups kept on the server of your production
database. This server only keeps one month of backups: seven daily and
four weekly backups.

Dedicated backup servers keep the same backups, as well as three
additional monthly backups. To restore or download one of these monthly
backups, contact [Odoo Support](https://www.odoo.com/help).

When merging a commit updating the version of one or several modules (in
`__manifest__.py`{.interpreted-text role="file"}), or their linked
Python dependencies (in `requirements.txt`{.interpreted-text
role="file"}), then Odoo.sh performs an automatic backup (flagged with
type [Update]{.title-ref} in the list), as either the container will be
changed by the installation of new pip packages, either the database
itself will be changed with the module update triggered afterwards. In
these two cases, a backup is triggered as it may break something.

If the merged commit does not update the version of a module or linked
dependencies, then no backup is triggered by Odoo.sh, as neither the
container nor the database is modified; therefore, the platform
considers this safe enough. As an extra precaution, you can make a
manual backup before modifiyng production sources.

The purpose of manual backups is to create a specific snapshot of
production or staging databases (not available for development). These
remain available for seven days. However, there is a limit of five daily
manual backups.

  Stage         Automatic backup       Manual backup
  ------------- ---------------------- ---------------
  Production    Yes (up to 3 months)   Yes (3 days)
  Staging       No                     Yes (3 days)
  Development   No                     No

The `Import Database`{.interpreted-text role="guilabel"} feature accepts
database archives from:

- the standard Odoo database manager (available for on-premise Odoo
  servers under [/web/database/manager]{.title-ref})
- the Odoo Online databases manager
- the Odoo.sh `Backups`{.interpreted-text role="guilabel"} tab (using
  the `fa-download`{.interpreted-text role="icon"}
  (`Download Options`{.interpreted-text role="guilabel"}) button)
- the Odoo.sh `Builds <builds>`{.interpreted-text role="doc"} view (by
  clicking `Download DB dump`{.interpreted-text role="guilabel"})

### Upgrade {#odoo-sh/branches/tabs/upgrade}

The `Upgrade`{.interpreted-text role="guilabel"} tab can be used to
upgrade production and staging branches of valid projects. For more
information about the upgrade process, refer to the
`Upgrade documentation
<../../upgrade>`{.interpreted-text role="doc"}.

![The branches upgrade tab](branches/upgrade-tab.png)

### Tools {#odoo-sh/branches/tabs/tools}

The `Tools`{.interpreted-text role="guilabel"} tab contains the code
profiler. It is used to start a profiling session, recording the
activities of Odoo workers running in the instance for a maximum of five
minutes. You can choose to terminate the session earlier, as running the
tool for a shorter duration reduces the amount of noise in the report.

![Using the code profiler](branches/code-profiler.gif)

After each session, an interactive flame graph is created to help you
visualize how the Odoo workers allocate their time.

:::: warning
::: title
Warning
:::

Running the profiler consumes a lot of server resources, so avoid
letting it run for too long. The goal is to record a specific action in
your database.
::::

### Settings {#odoo-sh/branches/tabs/settings}

The `Settings`{.interpreted-text role="guilabel"} tab lists the
configuration options available for the currently selected branch. The
options vary for each stage.

![The branches settings tab](branches/settings-tab.png)

#### Behavior upon new commits {#odoo-sh/branches/tabs/settings/commits}

You can change the branch\'s behavior upon receiving a new commit for
**development** and **staging** branches.

By default, a **development** branch creates a new build and a staging
branch updates the previous build. This is useful if the feature you are
working on requires a specific configuration, as you would not need to
manually configure it again after every commit.

If you select `New build`{.interpreted-text role="guilabel"} for a
**staging** branch, a fresh copy of the production build is created
every time a commit is pushed.

A branch that is moved from **staging** to **development** is set
automatically to `Do
nothing`{.interpreted-text role="guilabel"}.

#### Module installation {#odoo-sh/branches/tabs/settings/installation}

You can choose which modules should be installed automatically for
**development** branches.

![The settings tab module installation](branches/settings-module-installation.png)

To change the default behavior, untick the
`Use Default`{.interpreted-text role="guilabel"} option under
`Development build behavior`{.interpreted-text role="guilabel"} and
select one of the following options under
`Module Installation`{.interpreted-text role="guilabel"}:

- `Install only my modules (does not include submodules)`{.interpreted-text
  role="guilabel"}: only installs the branch\'s modules, excluding
  `submodules <../advanced/submodules>`{.interpreted-text role="doc"}.
  This is the default option.
- `Full installation (no test suite)`{.interpreted-text
  role="guilabel"}: installs the branch\'s modules, submodules, and all
  standard Odoo modules. When running the full installation, the test
  suite is disabled.
- `Install a list of modules`{.interpreted-text role="guilabel"}:
  installs the specified modules. To do so, enter their technical name,
  and separate them using commas (e.g.,
  [sale_management,website,accountant]{.title-ref}).

:::: note
::: title
Note
:::

If the test suite is enabled, installing all standard Odoo modules can
take up to one hour.
::::

#### Test suite {#odoo-sh/branches/tabs/settings/test}

By default, the test suite for **development** branches is enabled. You
can restrict which tests are run by entering
`test tags <developer/reference/testing/selection>`{.interpreted-text
role="ref"} and separating them using commas (e.g.,
[custom_tags,at_install,post_install]{.title-ref}).

To disable the test suite entirely, untick
`Validate the test suite on new builds`{.interpreted-text
role="guilabel"}.

#### Odoo version {#odoo-sh/branches/tabs/settings/version}

You can change the version of Odoo for **development** branches, for
example, to test upgraded code or develop features while your production
database is in the process of being upgraded to a newer version, by
selecting another `Version`{.interpreted-text role="guilabel"}.

By default, `Latest`{.interpreted-text role="guilabel"} is selected as
the `Revision`{.interpreted-text role="guilabel"}, and the sources of
your Odoo server are updated weekly automatically to benefit from the
latest bug, security, and performance fixes.

To choose a specific revision instead, select it using the
`Revision`{.interpreted-text role="guilabel"} field.

:::: warning
::: title
Warning
:::

Revisions expire after three months. You will be notified by email when
the revision\'s expiration date approaches. If you have not taken any
action when it expires, the `Revision`{.interpreted-text
role="guilabel"} field is automatically set back to
`Latest`{.interpreted-text role="guilabel"}.
::::

![The settings tab revisions](branches/settings-revisions.png)

#### Custom domains {#odoo-sh/branches/tabs/settings/domain}

You can configure additional [\<name\>.odoo.com]{.title-ref} domains or
your own custom domains for all branch types.

To use your own custom domain, it is necessary to:

- Own or purchase the domain name.
- Enter the domain name under `Custom domains`{.interpreted-text
  role="guilabel"} (e.g., [www.mycompany.com]{.title-ref}), then click
  `Add domain`{.interpreted-text role="guilabel"}.
- Configure the domain name (e.g., [www.mycompany.com]{.title-ref})
  using your registrar\'s domain name manager with a **CNAME** record
  value set to your production database domain name (e.g.,
  [mycompany.odoo.com]{.title-ref}).

:::: important
::: title
Important
:::

Bare domains (e.g., [mycompany.com]{.title-ref}) are not accepted. They
can only be configured using **A** records, which only accept IP
addresses as their value. Therefore, a bare domain could suddenly cease
to function, as the IP address of a database can change (e.g., following
an upgrade, a hardware failure, a change of database hosting location).
::::

To have both your bare domain (e.g., [mycompany.com]{.title-ref}) and
*www* domain (e.g., [www.mycompany.com]{.title-ref}) working, it is
necessary to redirect the bare domain to the *www* domain. .com. Most
domain managers provide a way to configure this redirection, commonly
referred to as a web redirection.

##### HTTPS/SSL {#odoo-sh/branches/tabs/settings/domain/https}

If the redirection is correctly set up, an SSL certificate is
automatically generated using [Let\'s
Encrypt](https://letsencrypt.org/about) within the hour, meaning your
domain will be accessible through HTTPS.

##### SPF and DKIM compliance {#odoo-sh/branches/tabs/settings/domain/spf-dkim}

If the domain of your email addresses uses the
`SPF (Sender Policy Framework)`{.interpreted-text role="abbr"} or `DKIM
(DomainKeys Identified Mail)`{.interpreted-text role="abbr"}
authentication protocol, it is necessary to authorize Odoo as a sending
host in the domain name settings to increase the deliverability of
outgoing emails. For more information, refer to the
`Configure DNS records to send emails in Odoo documentation
<../../../applications/general/email_communication/email_domain>`{.interpreted-text
role="doc"}.

:::: important
::: title
Important
:::

If Odoo is not authorized as a sending host, your outgoing emails may be
flagged as spam.
::::

## Shell commands {#odoo-sh/branches/shell-commands}

In the top right corner of the view, several shell commands are
displayed. The commands can be copied using the clipboard button and
then used in a terminal. In addition, some of them can be used directly
from Odoo.sh\'s interface.

![The branches shell commands shortcuts](branches/shell-commands.png)

### Clone {#odoo-sh/branches/shell-commands/clone}

The clone command is used to create a local copy of your Git repository.

::: example
.. code-block:: shell

git clone \--recurse-submodules \--branch development
<git@github.com>:my-organization/my-repository.git

- [\--recurse-submodules]{.title-ref} to download the submodules of your
  repository
- [\--branch main]{.title-ref} to check out to a specific branch of the
  repository (e.g., [development]{.title-ref})
:::

:::: note
::: title
Note
:::

The run button is not available as the command is used to create a local
copy on your machine.
::::

### Fork {#odoo-sh/branches/shell-commands/fork}

The fork command is used to create a new branch based on the current
one.

::: example
.. code-block:: shell

git checkout -b main-1 development && git push -u origin development-1

\- [git checkout -b main-1 main]{.title-ref} a command to create a new
branch (e.g., [development-1]{.title-ref}) based on the current branch
(e.g., [development]{.title-ref}) - [git push -u origin
development-1]{.title-ref} a command to upload the new branch (e.g.,
[development-1]{.title-ref}) to the remote repository
:::

### Merge {#odoo-sh/branches/shell-commands/merge}

The merge command is used to combine changes on one branch into another
branch.

::: example
.. code-block:: shell

git merge staging-1 && git push -u origin staging

\- [git merge staging-1]{.title-ref} a command to merge the changes of
the current branch into another branch (e.g., [staging-1]{.title-ref}) -
[git push -u origin staging]{.title-ref} a command to upload the merged
changes to the remote repository branch (e.g., [staging]{.title-ref})
:::

### SSH {#odoo-sh/branches/shell-commands/ssh}

The SSH command is used to connect to a build using SSH.

To use the SSH command, it is necessary to set up an SSH key first. To
do so:

- [Generate a new SSH
  key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent#generating-a-new-ssh-key).

- [Copy the SSH key to your
  clipboard](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account#adding-a-new-ssh-key-to-your-account).

- On Odoo.sh, click your GitHub user in the top-right corner and select
  `Profile`{.interpreted-text role="guilabel"}.

  ![Accessing a user\'s profile](branches/ssh-profile.png)

- Paste the SSH key under the `Add a key manually`{.interpreted-text
  role="guilabel"} field and click `Add`{.interpreted-text
  role="guilabel"}.

  ![Adding an SSH key manually](branches/ssh-add-key.gif)

::: example
.. code-block:: shell

ssh <25004381@my-user-my-repository-staging-25004381.dev.odoo.com>

- [25004381]{.title-ref} the build ID
- [my-user-my-repository-staging-25004381.dev.odoo.com]{.title-ref} the
  domain used to connect to the build
:::

Provided you have the necessary
`access rights <odoo-sh/settings/collaborators>`{.interpreted-text
role="ref"} on the project, you will be granted SSH access to the build.

:::: note
::: title
Note
:::

Long-running SSH connections are not guaranteed. Idle connections can be
disconnected to free up resources.
::::

### Submodule {#odoo-sh/branches/shell-commands/submodule}

The submodule command is used to add a branch from another repository to
your current branch as a submodule.

::: seealso
`Submodules documentation <../advanced/submodules>`{.interpreted-text
role="doc"}
:::

::: example
.. code-block:: shell

git submodule add -b master \<URL\> \<PATH\> && git commit -a && git
push -u origin staging

\- [git submodule add -b master \<URL\> \<PATH\>]{.title-ref} a command
to add a specific branch (e.g., [master]{.title-ref}) of a repository
([\<URL\>]{.title-ref}) as a submodule under the specified path
([\<PATH\>]{.title-ref}) in your current branch. - [git commit
-a]{.title-ref} a command to commit all current changes - [git push -u
origin staging]{.title-ref} a command to upload the changes of the
current branch (e.g., [staging]{.title-ref}) to the remote repository.
:::

### Delete {#odoo-sh/branches/shell-commands/delete}

The delete command is used to delete a branch from your repository.

:::: note
::: title
Note
:::

Once you delete a branch, there is no way to retrieve it unless a backup
exists. Staging branches are not automatically backed up, but can be
manually. Development branches cannot be backed up.
::::

::: example
.. code-block:: shell

git push origin :staging && git branch -D staging

\- [git push origin :staging]{.title-ref} a command to delete a specific
branch (e.g., [staging]{.title-ref}) on the remote repository - [git
branch -D staging]{.title-ref} a command to delete the specific branch
on your local copy of the repository
:::

:::: warning
::: title
Warning
:::

Before deleting a branch, refer to the
`Backups section <odoo-sh/branches/tabs/backups>`{.interpreted-text
role="ref"} to better understand how they work and when you should
create a manual backup.
::::




--- SOURCE: administration/odoo_sh/getting_started/builds.md ---

# Builds

In Odoo.sh, a build is a database loaded by an Odoo server
([odoo/odoo](https://github.com/odoo/odoo) and
[odoo/enterprise](https://github.com/odoo/enterprise)) running on a
specific revision of your project repository in a containerized
environment. Its purpose is to test the proper behavior of the server,
the database, and the features associated with that revision.

## Overview {#odoo-sh/builds/overview}

![Overiew of the builds](builds/builds-overview.png)

In the `Builds`{.interpreted-text role="guilabel"} view, a row
represents a branch, and a cell within that row represents a build of
that branch.

Most builds are created after pushes to your GitHub repository branches.
They can also be created through other operations, such as importing a
database on Odoo.sh or requesting a rebuild for a branch in your
project.

Builds can have three possible statuses:

- A build is considered **successful** if no errors or warnings occur
  during its creation. Successful builds are highlighted in **green**.
- A build is considered **almost successful** if warnings occur, but
  there are no errors. Almost successful builds are highlighted in
  **yellow**.
- A build is considered **failed** if errors occur during its creation.
  Failed builds are highlighted in **red**.

:::: note
::: title
Note
:::

Builds do not always create a database from scratch. For instance, when
pushing a change on the production branch, the created build starts the
server with your new revision and tries to load the current production
database on it.
::::

## Stages {#odoo-sh/builds/stages}

### Production {#odoo-sh/builds/stages/production}

The first build of a production branch creates a database from scratch.
If this build is successful, this database will become the production
database of your project.

From then on, pushes to the production branch will create new builds
that attempt to load the database using a server running the new
revision.

If the build is successful or almost successful, the production database
will run with this build and its associated revision.

If the build fails to load or update the database, the previous
successful build is reused to load the database. In that case, the
database continues to run using the previous successful revision.

:::: note
::: title
Note
:::

The build used to run the production database is always the first in the
builds list. If a build fails, it is placed after the build currently
running the production database.
::::

### Staging {#odoo-sh/builds/stages/staging}

Staging builds duplicate the production database and attempt to load
this copy using the revisions of the staging branches.

Each time you push a new revision to a staging branch, the resulting
build uses a fresh copy of the production database. Databases are not
reused between builds of the same branch. This ensures that:

- Staging builds use databases that closely match the current production
  state, so your tests are not performed on outdated data.
- You can freely experiment within a staging database. When you want to
  start over with a new copy of the production database, you can request
  a rebuild.

However, this also means that if you make configuration changes in a
staging database and do not apply them in production, those changes will
not be present in the next build of the same staging branch.

### Development {#odoo-sh/builds/stages/development}

Development builds create new databases, load the demo data, and run the
unit tests.

A build will be considered failed if tests fail during installation, as
they are designed to raise errors when something is wrong.

If all tests pass and no errors occur, the build is considered
successful.

:::: note
::: title
Note
:::

Depending on the list of modules to install and test, a development
build can take up to one hour to be ready. This is due to the large
number of tests included in the default Odoo module suite.
::::

## Features {#odoo-sh/builds/stages/features}

The production branch always appears first. Other branches are ordered
by the time of their last created build. The stage highlighted in purple
corresponds to the stage selected in the `Branches`{.interpreted-text
role="guilabel"} menu.

:::: tip
::: title
Tip
:::

You can filter branches using the search bar.
::::

![The branches menu](builds/branches-menu.png)

For each branch, you can:

- Access the latest build\'s database by clicking
  `Connect`{.interpreted-text role="guilabel"}.
- Jump to the branch\'s code by clicking `Github`{.interpreted-text
  role="guilabel"}.
- Create a new build by clicking `Rebuild`{.interpreted-text
  role="guilabel"}. It uses the latest revision of the branch (it is not
  available if a build is already in progress for that branch).

For each build, you can:

- View the revision changes by clicking the
  `fa-github`{.interpreted-text role="icon"} (`GitHub`{.interpreted-text
  role="guilabel"}) icon.
- Access the build\'s database as the administrator by clicking
  `Connect`{.interpreted-text role="guilabel"} or as another user by
  clicking the `fa-caret-down`{.interpreted-text role="icon"}
  (`More Actions`{.interpreted-text role="guilabel"}) button next to
  `Connect`{.interpreted-text role="guilabel"} and selecting
  `Connect as`{.interpreted-text role="guilabel"}.
- Access the same tools as in the branches view by clicking the
  `fa-caret-down`{.interpreted-text role="icon"}
  (`More Actions`{.interpreted-text role="guilabel"}) button next to
  `Connect`{.interpreted-text role="guilabel"} and selecting
  `Logs`{.interpreted-text role="guilabel"},
  `Web Shell`{.interpreted-text role="guilabel"},
  `Editor`{.interpreted-text role="guilabel"},
  `Outgoing e-mails`{.interpreted-text role="guilabel"} (for the staging
  and development stages), `Monitoring`{.interpreted-text
  role="guilabel"}, and `Download DB dump`{.interpreted-text
  role="guilabel"} (for the production and staging stages).

![A build\'s options](builds/builds-options.png)




--- SOURCE: administration/odoo_sh/getting_started/create.md ---

# Create a project

## Deploy a platform

1.  Visit [Odoo.sh](https://www.odoo.sh) and click
    `Deploy your platform`{.interpreted-text role="guilabel"}.

    ![The Deploy your platform button on Odoo.sh](create/deploy-button.png)

2.  Sign in with a [GitHub](https://github.com) account.

    ![Signing in to GitHub](create/github-sign-in.png)

3.  Authorize Odoo.sh by clicking `Authorize odoo`{.interpreted-text
    role="guilabel"} twice.

    ![Granting Odoo.sh permissions to perform actions and access data on GitHub](create/github-authorize.png)

    ![Granting Odoo.sh additional permissions to perform actions and access data on GitHub](create/github-authorize.png)

    :::: note
    ::: title
    Note
    :::

    Odoo.sh requests GitHub to:

    - Access your GitHub login and email.
    - Create a new repository, in case you start from scratch.
    - Access existing repositories, including organization ones, in case
      you start from an existing repository.
    - Create a webhook to notify you each time changes are pushed.
    - Commit changes for easier deployment.
    ::::

4.  Fill in the `Deploy your platform`{.interpreted-text
    role="guilabel"} form and click `Deploy`{.interpreted-text
    role="guilabel"}:

    - `Github repository`{.interpreted-text role="guilabel"}: to create
      a new repository, choose `New repository`{.interpreted-text
      role="guilabel"} and enter a name; to use an existing one, choose
      `Existing repository`{.interpreted-text role="guilabel"} and
      select it.

    - `Odoo Version`{.interpreted-text role="guilabel"}: select the
      major version of Odoo you want to use.

      :::: tip
      ::: title
      Tip
      :::

      \- Use the latest major version of Odoo version when creating a
      new repository. If you are planning to import an existing database
      or applications, it might be required that their versions match.
      \- If you are starting on Odoo Online and plan to migrate to
      Odoo.sh later, create your database using
      [odoo.com/start-lts](https://www.odoo.com/start-lts) to ensure
      compatibility, as minor versions are not supported by Odoo.sh.
      ::::

    - `Subscription Code`{.interpreted-text role="guilabel"}: enter your
      Odoo Enterprise subscription code that includes Odoo.sh. It is
      also sometimes called the *subscription referral*, *contract
      number*, or *activation code*.

      > :::: tip
      > ::: title
      > Tip
      > :::
      >
      > Partners can use their partnership codes to initiate a trial
      > (trial builds are limited to 1 GB storage and two staging). If a
      > client proceeds to start a project, they must subscribe to an
      > Odoo Enterprise plan that includes Odoo.sh hosting and use their
      > subscription code.
      > ::::

    - `Hosting location`{.interpreted-text role="guilabel"}: select the
      region where your platform will be hosted.

    ![The Deploy your platform form](create/deploy-form.png)

## Import a database {#odoo-sh/create/import}

Once your platform is deployed, you can import a database into your
Odoo.sh project, provided it uses a
`supported version <../../standard_extended_support>`{.interpreted-text
role="doc"} of Odoo.

:::: note
::: title
Note
:::

Due to [Odoo\'s backup policy](https://www.odoo.com/cloud-sla), the
import process requires **four times** the size of your database dump in
available storage. For example, a 10 GB dump file will require at least
40 GB of available space. We recommend allocating **more than four
times×** the dump size temporarily, then reducing storage after the
import is complete.

If your project is a trial created with a partnership code, you can only
import database dumps up to **1 GB** in size.
::::

### Push modules in production

If you are using community or custom modules, add them to a branch in
your GitHub repository.

:::: note
::: title
Note
:::

Databases hosted on Odoo Online do not support custom modules.
::::

Odoo.sh automatically detects folders containing Odoo modules. You can
organize them however you prefer. For example, you can place them
directly in the root directory of your repository or group them by
category (e.g., [accounting]{.title-ref}, [project]{.title-ref}, etc.).

For publicly available community modules, you may also consider using
`submodules
<../advanced/submodules>`{.interpreted-text role="doc"}.

### Download a backup

::::::::: tabs
::::: group-tab
On-premise

Go to [/web/database/manager]{.title-ref} on your on-premise Odoo
instance and click `fa-floppy-o`{.interpreted-text role="icon"}
`Backup`{.interpreted-text role="guilabel"}.

![The on-premise web manager interface](create/on-premise-manager.png)

Select `zip (includes filestore)`{.interpreted-text role="guilabel"} as
the `Backup Format`{.interpreted-text role="guilabel"}.

![Downloading an on-premise database backup](create/on-premise-backup.png)

:::: note
::: title
Note
:::

\- You will need the `Master Password`{.interpreted-text
role="guilabel"} of your Odoo server. If you do not have it, contact
your system administrator. - If you cannot access the database manager,
it may have been disabled by your system administrator. Refer to the
`database manager security documentation
<db_manager_security>`{.interpreted-text role="ref"}.
::::
:::::

::::: group-tab
Odoo Online

Log in to your portal account and navigate to the [My Databases
page](https://www.odoo.com/my/databases), and download a backup by
clicking the `fa-gear`{.interpreted-text role="icon"}
(`gear`{.interpreted-text role="guilabel"}) icon, then
`fa-cloud-download`{.interpreted-text role="icon"}
`Download`{.interpreted-text role="guilabel"}.

![Downloading an Odoo Online database backup](create/odoo-online-backup.png)

:::: warning
::: title
Warning
:::

Only major versions of Odoo are compatible with Odoo.sh.
::::
:::::
:::::::::

### Upload the backup

In your Odoo.sh project, navigate to the `Backups`{.interpreted-text
role="guilabel"} tab of your `Production`{.interpreted-text
role="guilabel"} branch, and click `Import Database`{.interpreted-text
role="guilabel"} to upload the backup you previously downloaded.

![Importing a database backup on Odoo.sh](create/import-database.png)

Once the import is complete, you can access the database using the
`Connect`{.interpreted-text role="guilabel"} button in the branch\'s
`History`{.interpreted-text role="guilabel"} tab.

:::: important
::: title
Important
:::

Importing a backup **overwrites all data** currently in the branch.
Consider downloading a manual backup beforehand if you want to preserve
the existing data.
::::

### Check outgoing email servers

Odoo.sh provides a default email server. To use it, ensure that **no
outgoing mail server is enabled** in your database by enabling
`developer mode <developer-mode>`{.interpreted-text role="ref"} and
navigating to
`Settings --> Technical --> Email: Outgoing Mail Servers`{.interpreted-text
role="menuselection"}

After importing your database, all configured outgoing mail servers are
**disabled**, and the default Odoo.sh server is used.

:::: warning
::: title
Warning
:::

Port **25** is and will remain closed. If connecting to an external SMTP
server, use port **465** or **587**.
::::

### Check scheduled actions

Scheduled actions are **disabled by default** after importing your
database. This prevents your newly imported database from performing
potentially disruptive operations such as:

- sending queued emails,
- triggering mass mailings, or
- syncing with third-party services (e.g., calendars, cloud storage).

If you intend to use this imported database in production, **re-enable**
only the scheduled actions you need by enabling
`developer mode <developer-mode>`{.interpreted-text role="ref"} and
going to `Settings
--> Technical --> Automation: Scheduled Actions`{.interpreted-text
role="menuselection"}.

### Register the subscription

After import, the database is considered a **duplicate** and will be
unlinked from your enterprise subscription.

:::: note
::: title
Note
:::

You are allowed only one active database per subscription.
::::

If you intend to make the imported database your production environment:

1.  Unlink your previous database from the subscription.
2.  Register the new one.

Refer to the
`database registration documentation <../../on_premise>`{.interpreted-text
role="doc"} for step-by-step instructions.




--- SOURCE: administration/odoo_sh/getting_started/online_editor.md ---

# Online editor

The `Online Editor`{.interpreted-text role="guilabel"} view allows
editing the source code of your builds from a web browser. It also gives
you the possibility to open terminals, Python consoles, Odoo shell
consoles, and [Jupyter
Notebooks](https://jupyterlab.readthedocs.io/en/stable/user/notebook.html).

![Overview of the online editor](online_editor/online-editor.png)

You can access the editor of a build through
`the branches tab <odoo-sh/branches/tabs>`{.interpreted-text
role="ref"},
`the builds dropdown menu <odoo-sh/builds/stages/features>`{.interpreted-text
role="ref"}, or by adding [/odoo-sh/editor]{.title-ref} to the build\'s
URL (e.g.,
[https://odoo-addons-master-1.dev.odoo.com/odoo-sh/editor]{.title-ref}).

## Editing the source code {#odoo-sh/editor/source}

The working directory is composed of the following:

    .
    ├── home
    │    └── odoo
    │         ├── src
    │         │    ├── odoo                Odoo Community source code
    │         │    │    └── odoo-bin       Odoo server executable
    │         │    ├── enterprise          Odoo Enterprise source code
    │         │    ├── themes              Odoo Themes source code
    │         │    └── user                Your repository branch source code
    │         ├── data
    │         │    ├── filestore           Database attachments, as well as the files of binary fields
    │         │    └── sessions            Visitors and users sessions
    │         └── logs
    │              ├── install.log         Database installation logs
    │              ├── odoo.log            Running server logs
    │              ├── update.log          Database updates logs
    │              └── pip.log             Python packages installation logs

You can edit the source code (files under [/src]{.title-ref}) of
development and staging builds. For production builds, the source code
is read-only, because applying local changes on a production server is
not a good practice.

:::: note
::: title
Note
:::

\- Your changes won\'t be propagated to new builds. It is necessary to
`commit them to the
source code <odoo-sh/editor/commit>`{.interpreted-text role="ref"} if
you want them to persist. - The source code of your GitHub repository is
located under [/src/user]{.title-ref}. - The source code of Odoo is
located under:

- [/src/odoo]{.title-ref} (<https://github.com/odoo/odoo>)
- [/src/enterprise]{.title-ref} (<https://github.com/odoo/enterprise>)
- [/src/themes]{.title-ref} (<https://github.com/odoo/design-themes>)
::::

To open a file in the editor, double-click it in the file browser panel.
You can then edit the file. To save your changes, go to
`File --> Save`{.interpreted-text role="menuselection"} or use the
`Ctrl+S`{.interpreted-text role="kbd"} keyboard shortcut.

If you save a Python file in your Odoo server\'s addons path, Odoo will
detect it and reload automatically, meaning your changes are immediately
visible.

![Change to a Python file being immediately visible](online_editor/auto-reload.gif)

However, if your changes are stored in the database, such as a field\'s
label or a view, it is necessary to update the related module to apply
the changes. To update the module of the currently1 open file, go to
`Odoo --> Update current module`{.interpreted-text
role="menuselection"}.

![Using the editor to update the current module](online_editor/update-module.png)

:::: tip
::: title
Tip
:::

You can also execute the following command in a terminal to update a
module:

``` bash
odoo-bin -u <comma-separated module names> --stop-after-init
```
::::

## Committing and pushing changes {#odoo-sh/editor/commit}

To commit and push changes to your GitHub repository:

- Open a terminal by going to
  `File --> New --> Terminal`{.interpreted-text role="menuselection"}.

- Change the directory to [\~/src/user]{.title-ref}.

  ``` bash
  cd ~/src/user
  ```

- State your identity.

  ``` bash
  git config --global user.email "you@example.com" && git config --global user.name "Your Name"
  ```

- Stage your changes.

  ``` bash
  git add
  ```

- Commit your changes.

  ``` bash
  git commit
  ```

- Push your changes.

  ``` bash
  git push https HEAD:<branch>
  ```

  In this command:

  - [https]{.title-ref} is the name of your *HTTPS* GitHub remote
    repository (e.g.,
    [https://github.com/username/repository.git]{.title-ref}).
  - [HEAD]{.title-ref} is the reference to the latest revision you
    committed.
  - [\<branch\>]{.title-ref} must be replaced by the name of the branch
    to which you want to push the changes, most likely the current
    branch if you work on a development build.

You will be prompted to input your GitHub username and password. After
inputting your credentials, press enter.

![The commands to commit and push changes](online_editor/commit-push.png)

:::: tip
::: title
Tip
:::

If you activate two-factor authentication for your GitHub account, you
can create a [personal access
token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens#creating-a-fine-grained-personal-access-token)
and use it as a password. [Granting the repo
permission](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/repository-access-and-collaboration/inviting-collaborators-to-a-personal-repository)
suffices.
::::

:::: note
::: title
Note
:::

\- It is not possible to authenticate yourself using SSH, as your
private SSH key is not hosted in your build containers for security
reasons, nor forwarded through an SSH agent, as you access the editor
through a web browser. - The source folder [\~/src/user]{.title-ref} is
not checked out on a branch but rather on a detached revision. This is
because builds work on specific revisions rather than branches, meaning
you can have multiple builds on the same branch, but on different
revisions.
::::

Once your changes are pushed, according to your `branch push behavior
<odoo-sh/branches/tabs/settings>`{.interpreted-text role="ref"}, a new
build may be created. You can continue to work in the editor you pushed
from, as it will have the same revision as the new build that was
created. However, always make sure to be in the editor of a build using
the latest revision of your branch.

## Consoles {#odoo-sh/editor/consoles}

You can open Python consoles, which are [IPython interactive
shells](https://ipython.readthedocs.io/en/stable/interactive/tutorial.html).
Using these Python consoles (rather than IPython shells within a
terminal) allows you to utilize their [rich display
capabilities](https://ipython.readthedocs.io/en/stable/config/integrating.html#rich-display)
to display objects in HTML.

::: example
The `Pretty` class displays lists in a legible way.

![Pretty class example](online_editor/pretty-class.png)
:::

:::: tip
::: title
Tip
:::

Using
[pandas](https://pandas.pydata.org/pandas-docs/stable/getting_started/tutorials.html)
you can display:

- Cells of a CSV file

  ![pandas CSV example](online_editor/pandas-csv.png)

- Graphs

  ![pandas graph example](online_editor/pandas-graph.png)
::::

You can open Odoo shell consoles to experiment with the Odoo registry
and model methods of your database. You can also read or write directly
on your records.

:::: warning
::: title
Warning
:::

In an Odoo shell console, transactions are automatically committed. This
means that changes made to records are applied to the database. For
example, if you change a user\'s name, it will be updated in your
database as well. Therefore, use Odoo shell consoles carefully on
production databases.
::::

You can use [env]{.title-ref} to invoke models of your database
registry, e.g., `env['res.users']`.

``` python
env['res.users'].search_read([], ['name', 'email', 'login'])
[{'id': 2,
'login': 'admin',
'name': 'Administrator',
'email': 'admin@example.com'}]
```




--- SOURCE: administration/odoo_sh/getting_started/settings.md ---

# Settings

The `Settings`{.interpreted-text role="guilabel"} view allow you to
manage the configuration of your project.

## Project name {#odoo-sh/settings/name}

The name of your project defines the address used to access your
production database. The addresses of your staging and development
builds are automatically derived from this name. If you change the
project name, only future builds will use the new name.

![The project name setting](settings/project-name.png)

## Collaborators {#odoo-sh/settings/collaborators}

To grant access to a GitHub user, enter their username and click
`Add`{.interpreted-text role="guilabel"}. By default, the user is is
granted the `Developer`{.interpreted-text role="guilabel"} role. Click
the dropdown menu to select another one:

- `Admin`{.interpreted-text role="guilabel"}: full access to all Odoo.sh
  features and tools. This role is dedicated to project management and
  has exclusive access to the project\'s settings.
- `Tester`{.interpreted-text role="guilabel"}: access to staging and
  development databases and their tools. This role is intended for users
  performing user acceptance testing (UAT). Testers can work with copies
  of production data, but they cannot access the production database
  through Odoo.sh\'s tools.
- `Developer`{.interpreted-text role="guilabel"}: no access to the
  production and staging databases. This role is intended for users who
  modify the code but should not access production data. Developers
  cannot connect to the production or staging databases and do not have
  access to the web shell or server logs.

![The collaborators setting](settings/collaborators.png)

### Feature access by stage and role {#odoo-sh/settings/collaborators/table}

  Stage         Feature                                                                     Developer                                                                                                                                 Tester                                                                                                                                    Admin
  ------------- --------------------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------
  Development   Connect + / Connect as                                                      `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}   `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}   `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}
                `History <odoo-sh/branches/tabs/history>`{.interpreted-text role="ref"}     `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}   `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}   `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}
                `Mails <odoo-sh/branches/tabs/mails>`{.interpreted-text role="ref"}         `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}   `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}   `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}
                `Editor <odoo-sh/branches/tabs/editor>`{.interpreted-text role="ref"}       `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}   `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}   `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}
                `Monitor <odoo-sh/branches/tabs/monitor>`{.interpreted-text role="ref"}     `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}   `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}   `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}
                `Logs <odoo-sh/branches/tabs/logs>`{.interpreted-text role="ref"}           `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}   `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}   `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}
                `Upgrade <odoo-sh/branches/tabs/upgrade>`{.interpreted-text role="ref"}     `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}   `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}   `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}
                `Settings <odoo-sh/branches/tabs/settings>`{.interpreted-text role="ref"}   `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}   `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}   `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}
                Status                                                                      `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}   `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}   `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}
  Staging       Connect + / Connect as                                                      `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}   `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}   `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}
                `History <odoo-sh/branches/tabs/history>`{.interpreted-text role="ref"}     `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}   `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}   `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}
                `Mails <odoo-sh/branches/tabs/mails>`{.interpreted-text role="ref"}         `<span class="text-danger" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}    `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}   `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}
                `Shell <odoo-sh/branches/tabs/shell>`{.interpreted-text role="ref"}         `<span class="text-danger" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}    `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}   `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}
                `Editor <odoo-sh/branches/tabs/editor>`{.interpreted-text role="ref"}       `<span class="text-danger" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}    `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}   `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}
                `Monitor <odoo-sh/branches/tabs/monitor>`{.interpreted-text role="ref"}     `<span class="text-danger" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}    `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}   `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}
                `Logs <odoo-sh/branches/tabs/logs>`{.interpreted-text role="ref"}           `<span class="text-danger" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}    `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}   `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}
                `Upgrade <odoo-sh/branches/tabs/upgrade>`{.interpreted-text role="ref"}     `<span class="text-danger" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}    `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}   `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}
                `Settings <odoo-sh/branches/tabs/settings>`{.interpreted-text role="ref"}   `<span class="text-danger" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}    `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}   `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}
                Status                                                                      `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}   `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}   `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}
  Production    Connect + / Connect as                                                      `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}   `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}   `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}
                `History <odoo-sh/branches/tabs/history>`{.interpreted-text role="ref"}     `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}   `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}   `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}
                `Shell <odoo-sh/branches/tabs/shell>`{.interpreted-text role="ref"}         `<span class="text-danger" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}    `<span class="text-danger" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}    `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}
                `Editor <odoo-sh/branches/tabs/editor>`{.interpreted-text role="ref"}       `<span class="text-danger" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}    `<span class="text-danger" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}    `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}
                `Monitor <odoo-sh/branches/tabs/monitor>`{.interpreted-text role="ref"}     `<span class="text-danger" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}    `<span class="text-danger" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}    `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}
                `Logs <odoo-sh/branches/tabs/logs>`{.interpreted-text role="ref"}           `<span class="text-danger" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}    `<span class="text-danger" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}    `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}
                `Backups <odoo-sh/branches/tabs/backups>`{.interpreted-text role="ref"}     `<span class="text-danger" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}    `<span class="text-danger" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}    `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}
                `Upgrade <odoo-sh/branches/tabs/upgrade>`{.interpreted-text role="ref"}     `<span class="text-danger" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}    `<span class="text-danger" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}    `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}
                `Settings <odoo-sh/branches/tabs/settings>`{.interpreted-text role="ref"}   `<span class="text-danger" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}    `<span class="text-danger" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}    `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}
                Status                                                                      `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}   `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}   `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}

::: admonition
Legend

`<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}
: Available

`<span class="text-danger" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}
: Not available
:::

:::: note
::: title
Note
:::

\- Only admins can access the audit logs and the project settings. - All
roles can access the `builds page <builds>`{.interpreted-text
role="doc"}, but the features available are specific to each role.
::::

## Public access {#odoo-sh/settings/public}

When enabling `Allow public access`{.interpreted-text role="guilabel"},
the `builds page <builds>`{.interpreted-text role="doc"} becomes
publicly accessible, allowing visitors to connect to development builds.
Visitors can also access `logs
<odoo-sh/branches/tabs/logs>`{.interpreted-text role="ref"}, the
`shell <odoo-sh/branches/tabs/shell>`{.interpreted-text role="ref"}, and
`mails
<odoo-sh/branches/tabs/mails>`{.interpreted-text role="ref"} for
development builds. Production and staging builds remain private;
visitors can only view their status.

![The public access setting](settings/public-access.png)

## GitHub commit statuses {#odoo-sh/settings/commit}

You can add a GitHub token to allow Odoo.sh to push commit statuses back
to GitHub. The token must have the *commit statuses (write)* repository
permission.

![The GitHub commit statuses setting](settings/commit-statuses.png)

::: seealso
For more information, refer to [GitHub's documentation on managing
access
tokens](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens).
:::

## GitHub key and webhook {#odoo-sh/settings/key-webhook}

A deploy key and a webhook are automatically created on your GitHub
repository to allow Odoo.sh to fetch code and receive commit
notifications. As they can be unintentionally modified or deleted, you
can use the `Verify Deploy Key`{.interpreted-text role="guilabel"} and
`Verify Webhook`{.interpreted-text role="guilabel"} buttons below to
verify their configuration.

![The GitHub key and webhook setting](settings/key-webhook.png)

:::: note
::: title
Note
:::

Administrative rights on the GitHub repository are necessary.
::::

## Submodules {#odoo-sh/settings/submodules}

The [git submodule]{.title-ref} command allows you to [integrate other
Git projects](https://git-scm.com/book/en/v2/Git-Tools-Submodules) into
your codebase without copying the code directly.

![The submodules setting](settings/submodules.png)

:::: note
::: title
Note
:::

A Git repository containing Odoo modules, for example from the [Odoo
Apps Store](https://apps.odoo.com/apps) or [community
modules](https://github.com/OCA), is necessary.
::::

::: admonition
Private repositories

Before adding [private GitHub
repository](https://help.github.com/articles/making-a-public-repository-private/)
as a submodule, it is necessary to add a deploy key:

1.  Paste the SSH URL of the sub-repository (e.g.,
    [git@github.com:USERNAME/REPOSITORY.git]{.title-ref}) and click
    `Add`{.interpreted-text role="guilabel"}.
2.  Copy the generated `Public Key`{.interpreted-text role="guilabel"}.
3.  On the sub-repository\'s GitHub, go to
    `Settings --> Deploy keys`{.interpreted-text role="menuselection"}.
4.  Click `Add deploy key`{.interpreted-text role="menuselection"},
    enter a `Title`{.interpreted-text role="guilabel"}, paste the public
    key into the `Key`{.interpreted-text role="guilabel"} field, and
    click `Add key`{.interpreted-text role="guilabel"}.
:::

To add a public repository or private repository with a deploy key as a
submodule:

1.  Add the submodule to your project.

    ``` shell
    git submodule add -b BRANCH git@github.com:USERNAME/REPOSITORY.git PATH
    ```

2.  Commit and push the change.

    ``` shell
    git commit -a && git push -u origin master
    ```

3.  Wait for Odoo.sh to rebuild the project.

## Production database size {#odoo-sh/settings/storage}

This section displays the total storage used by the project. It includes
the PostgreSQL database size and disk files in your container (database
filestore, session storage, etc.). If the production database exceeds
the storage included in your subscription, the plan will be
automatically adjusted.

![The production database size setting](settings/database-size.png)

:::: tip
::: title
Tip
:::

To analyze disk usage, run the [Ncdu
tool](https://dev.yorhel.nl/ncdu/man) in the `web
shell <odoo-sh/branches/tabs/shell>`{.interpreted-text role="ref"}.
::::

## Database workers {#odoo-sh/settings/workers}

Additional database workers can be configured to allow your production
database to handle higher concurrent loads.

![The database workers setting](settings/database-workers.png)

To add more workers, contact your account manager. After payment, the
new worker(s) will be added to your project.

:::: note
::: title
Note
:::

Adding more workers does not automatically fix performance issues. It
only increases the number of concurrent connections the server can
handle. If some operations remain slow, the issue is likely
code-related. If it is not due to your customizations, contact [Odoo
Support](https://www.odoo.com/help).
::::

## Staging branches {#odoo-sh/settings/staging}

Additional staging branches allow you to develop and test multiple
features simultaneously. To add more staging branches, request a product
increase directly from your Odoo.sh project. A widget will guide you to
the subscription portal to complete the purchase. After payment,
synchronization with Odoo.sh will occur automatically, and the number of
available staging branches will be updated.

![The staging branches setting](settings/staging-branches.png)

## Activation {#odoo-sh/settings/activation}

This section shows the activation status of the project. You can change
the activation code if necessary, provided the new code is not already
assigned to another project.

![The staging branches setting](settings/activation.png)

:::: warning
::: title
Warning
:::

You cannot change the activation code to:

- A code already used in another project
- A trial code (downgrading from paid to trial is not allowed)
- An invalid code (not linked to an Odoo.sh custom plan)

For any other issue, contact [Odoo Support](https://www.odoo.com/help).
::::




--- SOURCE: administration/odoo_sh/getting_started.md ---

show-content

:   

# Getting started

## Main components

When working with Odoo.sh, it is important to understand the main
components involved. While they are all interconnected, each one plays a
distinct role in the development and deployment of Odoo applications:

- **GitHub repository**: a version-controlled space where the Odoo
  applications\' source code is stored. It tracks every change, supports
  collaboration, and can be either public or private.

  ![Example of a GitHub repository](getting_started/github-repository.png)

- **Odoo.sh project**: a Platform as a Service (PaaS) that integrates
  with GitHub and enables streamlined development, testing, and
  deployment of Odoo applications. It includes tools such as automated
  backups, staging environments, and continuous integration pipelines.

  ![Example of an Odoo.sh project](getting_started/odoo-sh-project.png)

- **Odoo database**: a database stores all the operational data used and
  generated by Odoo applications, such as business records,
  configurations, and user data.

  ![Example of an Odoo database](getting_started/odoo-database.png)

Together, they form a cohesive pipeline from code development to a live
business use.

## User types

Odoo.sh involves different types of users, each with a specific role in
the project lifecycle:

- GitHub users: developers with access to the GitHub repository linked
  to the Odoo.sh project. Access to the repository does not
  automatically make someone a collaborator on the Odoo.sh project.
- Odoo.sh collaborators: individuals managing the Odoo.sh project. Each
  collaborator must be linked to a GitHub user. However, collaborators
  are not the same as database users.
- Database users: end-users of the deployed Odoo database. They interact
  with the live system but are not involved in development or project
  management.

::: {.toctree titlesonly=""}
getting_started/create getting_started/branches getting_started/builds
getting_started/settings getting_started/online_editor
:::




--- SOURCE: administration/odoo_sh.md ---

show-content

:   

show-toc

:   

# Odoo.sh

Odoo.sh is the official cloud platform for hosting and managing Odoo
applications. It offers a range of features such as web shell, module
dependencies, continuous integration, and SSH access.

::: {.toctree titlesonly=""}
odoo_sh/getting_started odoo_sh/first_module odoo_sh/advanced
:::




--- SOURCE: administration/on_premise/community_to_enterprise.md ---

# Switch from Community to Enterprise {#setup/enterprise}

Depending on your current installation, there are multiple ways to
upgrade your community version. In any case the basic guidelines are:

- Backup your community database

  ![image](community_to_enterprise/db_manager.png){.img-fluid
  .img-fluid}

- Shutdown your server

- Install the web_enterprise module

- Restart your server

- Enter your Odoo Enterprise Subscription code

![image](community_to_enterprise/enterprise_code.png){.img-fluid
.img-fluid}

## On Linux, using an installer

- Backup your community database

- Stop the odoo service

  ``` console
  $ sudo service odoo stop
  ```

- Install the enterprise .deb (it should install over the community
  package)

  ``` console
  $ sudo dpkg -i <path_to_enterprise_deb>
  ```

- Update your database to the enterprise packages using

  ``` console
  $ python3 /usr/bin/odoo-bin -d <database_name> -i web_enterprise --stop-after-init
  ```

- You should be able to connect to your Odoo Enterprise instance using
  your usual mean of identification. You can then link your database
  with your Odoo Enterprise Subscription by entering the code you
  received by e-mail in the form input

## On Linux, using the source code

There are many ways to launch your server when using sources, and you
probably have your own favourite. You may need to adapt sections to your
usual workflow.

- Shutdown your server

- Backup your community database

- Update the `--addons-path` parameter of your launch command (see
  `../on_premise/source`{.interpreted-text role="doc"})

- Install the web_enterprise module by using

  ``` console
  $ -d <database_name> -i web_enterprise --stop-after-init
  ```

  Depending on the size of your database, this may take some time.

- Restart your server with the updated addons path of point 3. You
  should be able to connect to your instance. You can then link your
  database with your Odoo Enterprise Subscription by entering the code
  you received by e-mail in the form input

## On Windows

- Backup your community database

- Uninstall Odoo Community (using the Uninstall executable in the
  installation folder) -PostgreSQL will remain installed

  ![image](community_to_enterprise/windows_uninstall.png){.img-fluid
  .img-fluid}

- Launch the Odoo Enterprise Installer and follow the steps normally.
  When choosing the installation path, you can set the folder of the
  Community installation (this folder still contains the PostgreSQL
  installation). Uncheck `Start Odoo` at the end of the installation

  ![image](community_to_enterprise/windows_setup.png){.img-fluid
  .img-fluid}

- Using a command window, update your Odoo Database using this command
  (from the Odoo installation path, in the server subfolder)

  ``` console
  $ ..\python\python.exe odoo-bin -d <database_name> -i web_enterprise --stop-after-init
  ```

- No need to manually launch the server, the service is running. You
  should be able to connect to your Odoo Enterprise instance using your
  usual mean of identification. You can then link your database with
  your Odoo Enterprise Subscription by entering the code you received by
  e-mail in the form input




--- SOURCE: administration/on_premise/deploy.md ---

# System configuration

This document describes basic steps to set up Odoo in production or on
an internet-facing server. It follows
`installation <../on_premise>`{.interpreted-text role="doc"}, and is not
generally necessary for a development systems that is not exposed on the
internet.

:::: warning
::: title
Warning
:::

If you are setting up a public server, be sure to check our
`security`{.interpreted-text role="ref"} recommendations!
::::

## dbfilter

Odoo is a multi-tenant system: a single Odoo system may run and serve a
number of database instances. It is also highly customizable, with
customizations (starting from the modules being loaded) depending on the
\"current database\".

This is not an issue when working with the backend (web client) as a
logged-in company user: the database can be selected when logging in,
and customizations loaded afterwards.

However it is an issue for non-logged users (portal, website) which
aren\'t bound to a database: Odoo needs to know which database should be
used to load the website page or perform the operation. If multi-tenancy
is not used that is not an issue, there\'s only one database to use, but
if there are multiple databases accessible Odoo needs a rule to know
which one it should use.

That is one of the purposes of
`--db-filter <odoo-bin --db-filter>`{.interpreted-text role="option"}:
it specifies how the database should be selected based on the hostname
(domain) that is being requested. The value is a [regular
expression](https://docs.python.org/3/library/re.html), possibly
including the dynamically injected hostname (`%h`) or the first
subdomain (`%d`) through which the system is being accessed.

For servers hosting multiple databases in production, especially if
`website` is used, dbfilter **must** be set, otherwise a number of
features will not work correctly.

### Configuration samples

- Show only databases with names beginning with \'mycompany\'

in
`the configuration file <reference/cmdline/config_file>`{.interpreted-text
role="ref"} set:

``` ini
[options]
dbfilter = ^mycompany.*$
```

- Show only databases matching the first subdomain after `www`: for
  example the database \"mycompany\" will be shown if the incoming
  request was sent to `www.mycompany.com` or `mycompany.co.uk`, but not
  for `www2.mycompany.com` or `helpdesk.mycompany.com`.

in
`the configuration file <reference/cmdline/config_file>`{.interpreted-text
role="ref"} set:

``` ini
[options]
dbfilter = ^%d$
```

:::: note
::: title
Note
:::

Setting a proper `--db-filter <odoo-bin --db-filter>`{.interpreted-text
role="option"} is an important part of securing your deployment. Once it
is correctly working and only matching a single database per hostname,
it is strongly recommended to block access to the database manager
screens, and to use the `--no-database-list` startup parameter to
prevent listing your databases, and to block access to the database
management screens. See also [security](#security).
::::

## PostgreSQL

By default, PostgreSQL only allows connection over UNIX sockets and
loopback connections (from \"localhost\", the same machine the
PostgreSQL server is installed on).

UNIX socket is fine if you want Odoo and PostgreSQL to execute on the
same machine, and is the default when no host is provided, but if you
want Odoo and PostgreSQL to execute on different machines[^1] it will
need to [listen to network
interfaces](https://www.postgresql.org/docs/12/static/runtime-config-connection.html)[^2],
either:

- Only accept loopback connections and [use an SSH
  tunnel](https://www.postgresql.org/docs/12/static/ssh-tunnels.html)
  between the machine on which Odoo runs and the one on which PostgreSQL
  runs, then configure Odoo to connect to its end of the tunnel
- Accept connections to the machine on which Odoo is installed, possibly
  over ssl (see [PostgreSQL connection
  settings](https://www.postgresql.org/docs/12/static/runtime-config-connection.html)
  for details), then configure Odoo to connect over the network

### Configuration sample

- Allow tcp connection on localhost
- Allow tcp connection from 192.168.1.x network

in `/etc/postgresql/<YOUR POSTGRESQL VERSION>/main/pg_hba.conf` set:

``` text
# IPv4 local connections:
host    all             all             127.0.0.1/32            md5
host    all             all             192.168.1.0/24          md5
```

in `/etc/postgresql/<YOUR POSTGRESQL VERSION>/main/postgresql.conf` set:

``` text
listen_addresses = 'localhost,192.168.1.2'
port = 5432
max_connections = 80
```

### Configuring Odoo {#setup/deploy/odoo}

Out of the box, Odoo connects to a local postgres over UNIX socket via
port 5432. This can be overridden using `the database options
<reference/cmdline/server/database>`{.interpreted-text role="ref"} when
your Postgres deployment is not local and/or does not use the
installation defaults.

The `packaged installers <packages>`{.interpreted-text role="doc"} will
automatically create a new user (`odoo`) and set it as the database
user.

- The database management screens are protected by the `admin_passwd`
  setting. This setting can only be set using configuration files, and
  is simply checked before performing database alterations. It should be
  set to a randomly generated value to ensure third parties can not use
  this interface.

- All database operations use the `database options
  <reference/cmdline/server/database>`{.interpreted-text role="ref"},
  including the database management screen. For the database management
  screen to work requires that the PostgreSQL user have `createdb`
  right.

- Users can always drop databases they own. For the database management
  screen to be completely non-functional, the PostgreSQL user needs to
  be created with `no-createdb` and the database must be owned by a
  different PostgreSQL user.

  :::: warning
  ::: title
  Warning
  :::

  the PostgreSQL user *must not* be a superuser
  ::::

#### Configuration sample

- connect to a PostgreSQL server on 192.168.1.2
- port 5432
- using an \'odoo\' user account,
- with \'pwd\' as a password
- filtering only db with a name beginning with \'mycompany\'

in
`the configuration file <reference/cmdline/config_file>`{.interpreted-text
role="ref"} set:

``` ini
[options]
admin_passwd = mysupersecretpassword
db_host = 192.168.1.2
db_port = 5432
db_user = odoo
db_password = pwd
dbfilter = ^mycompany.*$
```

### SSL Between Odoo and PostgreSQL {#postgresql_ssl_connect}

Since Odoo 11.0, you can enforce ssl connection between Odoo and
PostgreSQL. in Odoo the db_sslmode control the ssl security of the
connection with value chosen out of \'disable\', \'allow\', \'prefer\',
\'require\', \'verify-ca\' or \'verify-full\'

[PostgreSQL
Doc](https://www.postgresql.org/docs/12/static/libpq-ssl.html)

## Builtin server {#builtin_server}

Odoo includes built-in HTTP, cron, and live-chat servers, using either
multi-threading or multi-processing.

The **multi-threaded** server is a simpler server primarily used for
development, demonstrations, and its compatibility with various
operating systems (including Windows). A new thread is spawned for every
new HTTP request, even for long-lived connections such as websocket.
Extra daemonic cron threads are spawned too. Due to a Python limitation
(GIL), it doesn\'t make the best use of the hardware.

The multi-threaded server is the default server, also for docker
containers. It is selected by leaving the
`--workers <odoo-bin --workers>`{.interpreted-text role="option"} option
out or setting it to `0`.

The **multi-processing** server is a full-blown server primarily used
for production. It is not liable to the same Python limitation (GIL) on
resource usage and hence makes the best use of the hardware. A pool of
workers is created upon server startup. New HTTP requests are queued by
the OS until there are workers ready to process them. An extra
event-driven HTTP worker for the live chat is spawned on an alternative
port. Extra cron workers are spawned too. A configurable process reaper
monitors resource usage and can kill/restart failed workers.

The multi-processing server is opt-in. It is selected by setting the
`--workers
<odoo-bin --workers>`{.interpreted-text role="option"} option to a
non-null integer.

:::: note
::: title
Note
:::

Because it is highly customized for Linux servers, the multi-processing
server is not available on Windows.
::::

### Worker number calculation

- Rule of thumb : (#CPU \* 2) + 1
- Cron workers need CPU
- 1 worker \~= 6 concurrent users

### memory size calculation

- We consider 20% of the requests are heavy requests, while 80% are
  simpler ones
- A heavy worker, when all computed field are well designed, SQL
  requests are well designed, \... is estimated to consume around 1GB of
  RAM
- A lighter worker, in the same scenario, is estimated to consume around
  150MB of RAM

Needed RAM = #worker \* ( (light_worker_ratio \*
light_worker_ram_estimation) + (heavy_worker_ratio \*
heavy_worker_ram_estimation) )

### LiveChat

In multi-processing, a dedicated LiveChat worker is automatically
started and listens on the
`--gevent-port <odoo-bin --gevent-port>`{.interpreted-text
role="option"}. By default, the HTTP requests will keep accessing the
normal HTTP workers instead of the LiveChat one. You must deploy a proxy
in front of Odoo and redirect incoming requests whose path starts with
`/websocket/` to the LiveChat worker. You must also start Odoo in
`--proxy-mode <odoo-bin --proxy-mode>`{.interpreted-text role="option"}
so it uses the real client headers (such as hostname, scheme, and IP)
instead of the proxy ones.

### Configuration sample

- Server with 4 CPU, 8 Thread
- 60 concurrent users
- 60 users / 6 = 10 \<- theoretical number of worker needed
- (4 \* 2) + 1 = 9 \<- theoretical maximal number of worker
- We\'ll use 8 workers + 1 for cron. We\'ll also use a monitoring system
  to measure cpu load, and check if it\'s between 7 and 7.5 .
- RAM = 9 \* ((0.8\*150) + (0.2\*1024)) \~= 3GB RAM for Odoo

in
`the configuration file <reference/cmdline/config_file>`{.interpreted-text
role="ref"}:

``` ini
[options]
limit_memory_hard = 1677721600
limit_memory_soft = 629145600
limit_request = 8192
limit_time_cpu = 600
limit_time_real = 1200
max_cron_threads = 1
workers = 8
```

## HTTPS {#https_proxy}

Whether it\'s accessed via website/web client or web service, Odoo
transmits authentication information in cleartext. This means a secure
deployment of Odoo must use HTTPS[^3]. SSL termination can be
implemented via just about any SSL termination proxy, but requires the
following setup:

- Enable Odoo\'s `proxy mode <odoo-bin --proxy-mode>`{.interpreted-text
  role="option"}. This should only be enabled when Odoo is behind a
  reverse proxy
- Set up the SSL termination proxy ([Nginx termination
  example](https://nginx.com/resources/admin-guide/nginx-ssl-termination/))
- Set up the proxying itself ([Nginx proxying
  example](https://nginx.com/resources/admin-guide/reverse-proxy/))
- Your SSL termination proxy should also automatically redirect
  non-secure connections to the secure port

### Configuration sample

- Redirect http requests to https
- Proxy requests to odoo

in
`the configuration file <reference/cmdline/config_file>`{.interpreted-text
role="ref"} set:

``` ini
proxy_mode = True
```

in `/etc/nginx/sites-enabled/odoo.conf` set:

``` nginx
#odoo server
upstream odoo {
  server 127.0.0.1:8069;
}
upstream odoochat {
  server 127.0.0.1:8072;
}
map $http_upgrade $connection_upgrade {
  default upgrade;
  ''      close;
}

# http -> https
server {
  listen 80;
  server_name odoo.mycompany.com;
  rewrite ^(.*) https://$host$1 permanent;
}

server {
  listen 443 ssl;
  server_name odoo.mycompany.com;
  proxy_read_timeout 720s;
  proxy_connect_timeout 720s;
  proxy_send_timeout 720s;

  # SSL parameters
  ssl_certificate /etc/ssl/nginx/server.crt;
  ssl_certificate_key /etc/ssl/nginx/server.key;
  ssl_session_timeout 30m;
  ssl_protocols TLSv1.2;
  ssl_ciphers ECDHE-ECDSA-AES128-GCM-SHA256:ECDHE-RSA-AES128-GCM-SHA256:ECDHE-ECDSA-AES256-GCM-SHA384:ECDHE-RSA-AES256-GCM-SHA384:ECDHE-ECDSA-CHACHA20-POLY1305:ECDHE-RSA-CHACHA20-POLY1305:DHE-RSA-AES128-GCM-SHA256:DHE-RSA-AES256-GCM-SHA384;
  ssl_prefer_server_ciphers off;

  # log
  access_log /var/log/nginx/odoo.access.log;
  error_log /var/log/nginx/odoo.error.log;

  # Redirect websocket requests to odoo gevent port
  location /websocket {
    proxy_pass http://odoochat;
    proxy_set_header Upgrade $http_upgrade;
    proxy_set_header Connection $connection_upgrade;
    proxy_set_header X-Forwarded-Host $http_host;
    proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
    proxy_set_header X-Forwarded-Proto $scheme;
    proxy_set_header X-Real-IP $remote_addr;

    add_header Strict-Transport-Security "max-age=31536000; includeSubDomains";
    proxy_cookie_flags session_id samesite=lax secure;  # requires nginx 1.19.8
  }

  # Redirect requests to odoo backend server
  location / {
    # Add Headers for odoo proxy mode
    proxy_set_header X-Forwarded-Host $http_host;
    proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
    proxy_set_header X-Forwarded-Proto $scheme;
    proxy_set_header X-Real-IP $remote_addr;
    proxy_redirect off;
    proxy_pass http://odoo;

    add_header Strict-Transport-Security "max-age=31536000; includeSubDomains";
    proxy_cookie_flags session_id samesite=lax secure;  # requires nginx 1.19.8
  }

  # common gzip
  gzip_types text/css text/scss text/plain text/xml application/xml application/json application/javascript;
  gzip on;
}
```

### HTTPS Hardening

Add the [Strict-Transport-Security]{.title-ref} header to all requests,
in order to prevent browsers from ever sending a plain HTTP request to
this domain. You will need to maintain a working HTTPS service with a
valid certificate on this domain at all times, otherwise your users will
see security alerts or be entirely unable to access it.

Force HTTPS connections during a year for every visitor in NGINX with
the line:

``` nginx
add_header Strict-Transport-Security "max-age=31536000; includeSubDomains";
```

Additional configuration can be defined for the [session_id]{.title-ref}
cookie. The [Secure]{.title-ref} flag can be added to ensure it is never
transmitted over HTTP and [SameSite=Lax]{.title-ref} to prevent
authenticated
[CSRF](https://en.wikipedia.org/wiki/Cross-site_request_forgery).

``` nginx
# requires nginx 1.19.8
proxy_cookie_flags session_id samesite=lax secure;
```

## Odoo as a WSGI Application

It is also possible to mount Odoo as a standard
[WSGI](https://wsgi.readthedocs.org/) application. Odoo provides the
base for a WSGI launcher script as `odoo-wsgi.example.py`. That script
should be customized (possibly after copying it from the setup
directory) to correctly set the configuration directly in
`odoo.tools.config`{.interpreted-text role="mod"} rather than through
the command-line or a configuration file.

However the WSGI server will only expose the main HTTP endpoint for the
web client, website and webservice API. Because Odoo does not control
the creation of workers anymore it can not setup cron or livechat
workers

### Cron Workers

Starting one of the built-in Odoo servers next to the WSGI server is
required to process cron jobs. That server must be configured to only
process crons and not HTTP requests using the
`--no-http <odoo-bin --no-http>`{.interpreted-text role="option"} cli
option or the `http_enable = False` configuration file setting.

On Linux-like systems, using the multi-processing server over the
multi-threading one is recommended to benefit from better hardware usage
and increased stability, i.e., using the
`--workers=-1 <odoo-bin --workers>`{.interpreted-text role="option"} and
`--max-cron-threads=n
<odoo-bin --max-cron-threads>`{.interpreted-text role="option"} cli
options.

### LiveChat

Using a gevent-compatible WSGI server is required for the correct
operation of the live chat feature. That server should be able to handle
many simultaneous long-lived connections but doesn\'t need a lot of
processing power. All requests whose path starts with `/websocket/`
should be directed to that server. A regular (thread/process-based) WSGI
server should be used for all other requests.

The Odoo cron server can also be used to serve the live chat requests.
Just drop the `--no-http <odoo-bin --no-http>`{.interpreted-text
role="option"} cli option from the cron server and make sure requests
whose path starts with `/websocket/` are directed to this server, either
on the `--http-port <odoo-bin --http-port>`{.interpreted-text
role="option"} (multi-threading server) or on the
`--gevent-port <odoo-bin --gevent-port>`{.interpreted-text
role="option"} (multi-processing server).

## Serving static files and attachments {#deploy/streaming}

For development convenience, Odoo directly serves all static files and
attachments in its modules. This may not be ideal when it comes to
performances, and static files should generally be served by a static
HTTP server.

### Serving static files

Odoo static files are located in each module\'s
`static/`{.interpreted-text role="file"} folder, so static files can be
served by intercepting all requests to
`/{MODULE}/static/{FILE}`{.interpreted-text role="samp"}, and looking up
the right module (and file) in the various addons paths.

It is recommended to set the
`Content-Security-Policy: default-src 'none'` header on all images
delivered by the web server. It is not strictly necessary as users
cannot modify/inject content inside of modules\'
`static/`{.interpreted-text role="file"} folder and existing images are
final (they do not fetch new resources by themselves). However, it is
good practice.

Using the above NGINX (https) configuration, the following `map` and
`location` blocks should be added to serve static files via NGINX.

``` nginx
map $sent_http_content_type $content_type_csp {
    default "";
    ~image/ "default-src 'none'";
}

server {
    # the rest of the configuration

    location @odoo {
        # copy-paste the content of the / location block
    }

    # Serve static files right away
    location ~ ^/[^/]+/static/.+$ {
        # root and try_files both depend on your addons paths
        root ...;
        try_files ... @odoo;
        expires 24h;
        add_header Content-Security-Policy $content_type_csp;
    }
}
```

The actual `root` and `try_files` directives are dependant on your
installation, specifically on your
`--addons-path <odoo-bin --addons-path>`{.interpreted-text
role="option"}.

:::::: example
::::: tabs
::: group-tab
Debian package

Say Odoo has been installed via the **debian packages** for Community
and Enterprise, and that the
`--addons-path <odoo-bin --addons-path>`{.interpreted-text
role="option"} is `'/usr/lib/python3/dist-packages/odoo/addons'`.

The `root` and `try_files` should be:

``` nginx
root /usr/lib/python3/dist-packages/odoo/addons;
try_files $uri @odoo;
```
:::

::: group-tab
Git sources

Say Odoo has been installed via the **sources**, that both the Community
and Enterprise git repositories were cloned in
`/opt/odoo/community`{.interpreted-text role="file"} and
`/opt/odoo/enterprise`{.interpreted-text role="file"} respectively, and
that the `--addons-path <odoo-bin --addons-path>`{.interpreted-text
role="option"} is
`'/opt/odoo/community/odoo/addons,/opt/odoo/community/addons,/opt/odoo/enterprise'`.

The `root` and `try_files` should be:

``` nginx
root /opt/odoo;
try_files /community/odoo/addons$uri /community/addons$uri /enterprise$uri @odoo;
```
:::
:::::
::::::

### Serving attachments

Attachments are files stored in the filestore which access is regulated
by Odoo. They cannot be directly accessed via a static web server as
accessing them requires multiple lookups in the database to determine
where the files are stored and whether the current user can access them
or not.

Nevertheless, once the file has been located and the access rights
verified by Odoo, it is a good idea to serve the file using the static
web server instead of Odoo. For Odoo to delegate serving files to the
static web server, the [X-Sendfile](https://tn123.org/mod_xsendfile/)
(apache) or
[X-Accel](https://www.nginx.com/resources/wiki/start/topics/examples/x-accel/)
(nginx) extensions must be enabled and configured on the static web
server. Once it is set up, start Odoo with the
`--x-sendfile <odoo-bin --x-sendfile>`{.interpreted-text role="option"}
CLI flag (this unique flag is used for both X-Sendfile and X-Accel).

:::: note
::: title
Note
:::

\- The X-Sendfile extension for apache (and compatible web servers) does
not require any supplementary configuration. - The X-Accel extension for
NGINX **does** require the following additionnal configuration:

``` nginx
location /web/filestore {
    internal;
    alias /path/to/odoo/data-dir/filestore;
    add_header Content-Security-Policy $upstream_http_content_security_policy;
    add_header X-Content-Type-Options nosniff;
}
```

In case you don\'t know what is the path to your filestore, start Odoo
with the `--x-sendfile <odoo-bin --x-sendfile>`{.interpreted-text
role="option"} option and navigate to the `/web/filestore` URL directly
via Odoo (don\'t navigate to the URL via NGINX). This logs a warnings,
the message contains the configuration you need.
::::

## Security

For starters, keep in mind that securing an information system is a
continuous process, not a one-shot operation. At any moment, you will
only be as secure as the weakest link in your environment.

So please do not take this section as the ultimate list of measures that
will prevent all security problems. It\'s only intended as a summary of
the first important things you should be sure to include in your
security action plan. The rest will come from best security practices
for your operating system and distribution, best practices in terms of
users, passwords, and access control management, etc.

When deploying an internet-facing server, please be sure to consider the
following security-related topics:

- Always set a strong super-admin admin password, and restrict access to
  the database management pages as soon as the system is set up. See
  `db_manager_security`{.interpreted-text role="ref"}.

- Choose unique logins and strong passwords for all administrator
  accounts on all databases. Do not use \'admin\' as the login. Do not
  use those logins for day-to-day operations, only for
  controlling/managing the installation. *Never* use any default
  passwords like admin/admin, even for test/staging databases.

- Do **not** install demo data on internet-facing servers. Databases
  with demo data contain default logins and passwords that can be used
  to get into your systems and cause significant trouble, even on
  staging/dev systems.

- Use appropriate database filters (
  `--db-filter <odoo-bin --db-filter>`{.interpreted-text role="option"})
  to restrict the visibility of your databases according to the
  hostname. See `dbfilter`{.interpreted-text role="ref"}. You may also
  use `-d <odoo-bin -d>`{.interpreted-text role="option"} to provide
  your own (comma-separated) list of available databases to filter from,
  instead of letting the system fetch them all from the database
  backend.

- Once your `db_name` and `dbfilter` are configured and only match a
  single database per hostname, you should set `list_db` configuration
  option to `False`, to prevent listing databases entirely, and to block
  access to the database management screens (this is also exposed as the
  `--no-database-list <odoo-bin --no-database-list>`{.interpreted-text
  role="option"} command-line option)

- Make sure the PostgreSQL user
  (`--db_user <odoo-bin --db_user>`{.interpreted-text role="option"}) is
  *not* a super-user, and that your databases are owned by a different
  user. For example they could be owned by the `postgres` super-user if
  you are using a dedicated non-privileged `db_user`. See also
  `setup/deploy/odoo`{.interpreted-text role="ref"}.

- Keep installations updated by regularly installing the latest builds,
  either via GitHub or by downloading the latest version from
  <https://www.odoo.com/page/download> or <http://nightly.odoo.com>

- Configure your server in multi-process mode with proper limits
  matching your typical usage (memory/CPU/timeouts). See also
  `builtin_server`{.interpreted-text role="ref"}.

- Run Odoo behind a web server providing HTTPS termination with a valid
  SSL certificate, in order to prevent eavesdropping on cleartext
  communications. SSL certificates are cheap, and many free options
  exist. Configure the web proxy to limit the size of requests, set
  appropriate timeouts, and then enable the
  `proxy mode <odoo-bin --proxy-mode>`{.interpreted-text role="option"}
  option. See also `https_proxy`{.interpreted-text role="ref"}.

- If you need to allow remote SSH access to your servers, make sure to
  set a strong password for **all** accounts, not just
  [root]{.title-ref}. It is strongly recommended to entirely disable
  password-based authentication, and only allow public key
  authentication. Also consider restricting access via a VPN, allowing
  only trusted IPs in the firewall, and/or running a brute-force
  detection system such as [fail2ban]{.title-ref} or equivalent.

- Consider installing appropriate rate-limiting on your proxy or
  firewall, to prevent brute-force attacks and denial of service
  attacks. See also `login_brute_force`{.interpreted-text role="ref"}
  for specific measures.

  Many network providers provide automatic mitigation for Distributed
  Denial of Service attacks (DDOS), but this is often an optional
  service, so you should consult with them.

- Whenever possible, host your public-facing demo/test/staging instances
  on different machines than the production ones. And apply the same
  security precautions as for production.

- If your public-facing Odoo server has access to sensitive internal
  network resources or services (e.g. via a private VLAN), implement
  appropriate firewall rules to protect those internal resources. This
  will ensure that the Odoo server cannot be used accidentally (or as a
  result of malicious user actions) to access or disrupt those internal
  resources. Typically this can be done by applying an outbound default
  DENY rule on the firewall, then only explicitly authorizing access to
  internal resources that the Odoo server needs to access. [Systemd IP
  traffic access
  control](http://0pointer.net/blog/ip-accounting-and-access-lists-with-systemd.html)
  may also be useful to implement per-process network access control.

- If your public-facing Odoo server is behind a Web Application
  Firewall, a load-balancer, a transparent DDoS protection service (like
  CloudFlare) or a similar network-level device, you may wish to avoid
  direct access to the Odoo system. It is generally difficult to keep
  the endpoint IP addresses of your Odoo servers secret. For example
  they can appear in web server logs when querying public systems, or in
  the headers of emails posted from Odoo. In such a situation you may
  want to configure your firewall so that the endpoints are not
  accessible publicly except from the specific IP addresses of your WAF,
  load-balancer or proxy service. Service providers like CloudFlare
  usually maintain a public list of their IP address ranges for this
  purpose.

- If you are hosting multiple customers, isolate customer data and files
  from each other using containers or appropriate \"jail\" techniques.

- Setup daily backups of your databases and filestore data, and copy
  them to a remote archiving server that is not accessible from the
  server itself.

- Deploying Odoo on Linux is strongly recommended over Windows. Should
  you choose nevertheless to deploy on a Windows platform, a thorough
  security hardening review of the server should be conducted and is
  outside of the scope of this guide.

### Blocking Brute Force Attacks {#login_brute_force}

For internet-facing deployments, brute force attacks on user passwords
are very common, and this threat should not be neglected for Odoo
servers. Odoo emits a log entry whenever a login attempt is performed,
and reports the result: success or failure, along with the target login
and source IP.

The log entries will have the following form.

Failed login:

    2018-07-05 14:56:31,506 24849 INFO db_name odoo.addons.base.res.res_users: Login failed for db:db_name login:admin from 127.0.0.1

Successful login:

    2018-07-05 14:56:31,506 24849 INFO db_name odoo.addons.base.res.res_users: Login successful for db:db_name login:admin from 127.0.0.1

These logs can be easily analyzed by an intrusion prevention system such
as [fail2ban]{.title-ref}.

For example, the following fail2ban filter definition should match a
failed login:

    [Definition]
    failregex = ^ \d+ INFO \S+ \S+ Login failed for db:\S+ login:\S+ from <HOST>
    ignoreregex =

This could be used with a jail definition to block the attacking IP on
HTTP(S).

Here is what it could look like for blocking the IP for 15 minutes when
10 failed login attempts are detected from the same IP within 1 minute:

    [odoo-login]
    enabled = true
    port = http,https
    bantime = 900  ; 15 min ban
    maxretry = 10  ; if 10 attempts
    findtime = 60  ; within 1 min  /!\ Should be adjusted with the TZ offset
    logpath = /var/log/odoo.log  ;  set the actual odoo log path here

### Database Manager Security {#db_manager_security}

`setup/deploy/odoo`{.interpreted-text role="ref"} mentioned
`admin_passwd` in passing.

This setting is used on all database management screens (to create,
delete, dump or restore databases).

If the management screens must not be accessible at all, you should set
`list_db` configuration option to `False`, to block access to all the
database selection and management screens.

:::: warning
::: title
Warning
:::

It is strongly recommended to disable the Database Manager for any
internet-facing system! It is meant as a development/demo tool, to make
it easy to quickly create and manage databases. It is not designed for
use in production, and may even expose dangerous features to attackers.
It is also not designed to handle large databases, and may trigger
memory limits.

On production systems, database management operations should always be
performed by the system administrator, including provisioning of new
databases and automated backups.
::::

Be sure to setup an appropriate `db_name` parameter (and optionally,
`dbfilter` too) so that the system can determine the target database for
each request, otherwise users will be blocked as they won\'t be allowed
to choose the database themselves.

If the management screens must only be accessible from a selected set of
machines, use the proxy server\'s features to block access to all routes
starting with `/web/database` except (maybe) `/web/database/selector`
which displays the database-selection screen.

If the database-management screen should be left accessible, the
`admin_passwd` setting must be changed from its `admin` default: this
password is checked before allowing database-alteration operations.

It should be stored securely, and should be generated randomly e.g.

``` console
$ python3 -c 'import base64, os; print(base64.b64encode(os.urandom(24)))'
```

which generates a 32-character pseudorandom printable string.

### Reset the master password

There may be instances where the master password is misplaced, or
compromised, and needs to be reset. The following process is for system
administrators of an Odoo on-premise database detailing how to manually
reset and re-encrypt the master password.

::: seealso
`../odoo_accounts`{.interpreted-text role="doc"}
:::

When creating a new on-premise database, a random master password is
generated. Odoo recommends using this password to secure the database.
This password is implemented by default, so there is a secure master
password for any Odoo on-premise deployment.

:::: warning
::: title
Warning
:::

When creating an Odoo on-premise database the installation is accessible
to anyone on the internet, until this password is set to secure the
database.
::::

The master password is specified in the Odoo configuration file
([odoo.conf]{.title-ref} or [odoorc]{.title-ref} (hidden file)). The
Odoo master password is needed to modify, create, or delete a database
through the graphical user interface (GUI).

#### Locate configuration file

First, open the Odoo configuration file ([odoo.conf]{.title-ref} or
[odoorc]{.title-ref} (hidden file)).

::::: tabs
::: tab
Windows

The configuration file is located at:
[c:ProgramFilesOdoo{VERSION}serverodoo.conf]{.title-ref}
:::

::: tab
Linux

Depending on how Odoo is installed on the Linux machine, the
configuration file is located in one of two different places:

- Package installation: [/etc/odoo.conf]{.title-ref}
- Source installation: [\~/.odoorc]{.title-ref}
:::
:::::

#### Change old password

Once the appropriate file has been opened, proceed to modify the old
password in the configuration file to a temporary password.

::::::: tabs
:::: group-tab
Graphical user interface

After locating the configuration file, open it using a
(`GUI (graphical user
interface)`{.interpreted-text role="abbr"}). This can be achieved by
simply double clicking on the file. Then, the device should have a
default `GUI (graphical user interface)`{.interpreted-text role="abbr"}
to open the file with.

Next, modify the master password line [admin_passwd =
\$pbkdf2-sha...]{.title-ref} to [admin_passwd =
newpassword1234]{.title-ref}, for example. This password can be
anything, as long as it is saved temporarily. Make sure to modify all
characters after the [=]{.title-ref}.

::: example
The line appears like this: [admin_passwd =
\$pbkdf2-sh39dji295.59mptrfW.9z6HkA\$w9j9AMVmKAP17OosCqDxDv2hjsvzlLpF8Rra8I7p/b573hji540mk/.3ek0lg%kvkol6k983mkf/40fjki79m]{.title-ref}

The modified line appears like this: [admin_passwd =
newpassword1234]{.title-ref}
:::
::::

:::: group-tab
Command-line interface

Modify the master password line using the following Unix command
detailed below.

Connect to the Odoo server\'s terminal via Secure Shell (SSH) protocol,
and edit the configuration file. To modify the configuration file, enter
the following command: `sudo nano /etc/odoo.conf`{.interpreted-text
role="command"}

After opening the configuration file, modify the master password line
[admin_passwd = \$pbkdf2-sha...]{.title-ref} to [admin_passwd =
newpassword1234]{.title-ref}. This password can be anything, as long as
it is saved temporarily. Make sure to modify all characters after the
[=]{.title-ref}.

::: example
The line appears like this: [admin_passwd =
\$pbkdf2-sh39dji295.59mptrfW.9z6HkA\$w9j9AMVmKAP17OosCqDxDv2hjsvzlLpF8Rra8I7p/b573hji540mk/.3ek0lg%kvkol6k983mkf/40fjki79m]{.title-ref}

The modified line appears like this: [admin_passwd =
newpassword1234]{.title-ref}
:::
::::
:::::::

:::: important
::: title
Important
:::

It is essential that the password is changed to something else, rather
than triggering a new password reset by adding a semicolon
[;]{.title-ref} at the beginning of the line. This ensures the database
is secure throughout the entire password reset process.
::::

#### Restart Odoo server

After setting the temporary password, a restart of the Odoo server is
**required**.

::::::: tabs
::: group-tab
Graphical user interface

To restart the Odoo server, first, type [services]{.title-ref} into the
Windows `Search`{.interpreted-text role="guilabel"} bar. Then, select
the `Services`{.interpreted-text role="guilabel"} application, and
scroll down to the `Odoo`{.interpreted-text role="guilabel"} service.

Next, right click on `Odoo`{.interpreted-text role="guilabel"}, and
select `Start`{.interpreted-text role="guilabel"} or
`Restart`{.interpreted-text role="guilabel"}. This action manually
restarts the Odoo server.
:::

::::: group-tab
Command-line interface

Restart the Odoo server by typing the command:
`sudo service odoo15 restart`{.interpreted-text role="command"}

:::: note
::: title
Note
:::

Change the number after [odoo]{.title-ref} to fit the specific version
the server is running on.
::::
:::::
:::::::

#### Use web interface to re-encrypt password

First, navigate to [/web/database/manager]{.title-ref} or
[http://server_ip:port/web/database/manager]{.title-ref} in a browser.

:::: note
::: title
Note
:::

Replace [server_ip]{.title-ref} with the IP address of the database.
Replace [port]{.title-ref} with the numbered port the database is
accessible from.
::::

Next, click `Set Master Password`{.interpreted-text role="guilabel"},
and type in the previously-selected temporary password into the
`Master Password`{.interpreted-text role="guilabel"} field. Following
this step, type in a `New Master
Password`{.interpreted-text role="guilabel"}. The
`New Master Password`{.interpreted-text role="guilabel"} is hashed (or
encrypted), once the `Continue`{.interpreted-text role="guilabel"}
button is clicked.

At this point, the password has been successfully reset, and a hashed
version of the new password now appears in the configuration file.

::: seealso
For more information on Odoo database security, see this documentation:
`db_manager_security`{.interpreted-text role="ref"}.
:::

## Supported Browsers

Odoo supports the latest version of the following browsers.

- Google Chrome
- Mozilla Firefox
- Microsoft Edge
- Apple Safari

[^1]: to have multiple Odoo installations use the same PostgreSQL
    database, or to provide more computing resources to both software.

[^2]: technically a tool like [socat](##REF##socat) can be used to proxy
    UNIX sockets across networks, but that is mostly for software which
    can only be used over UNIX sockets

[^3]: or be accessible only over an internal packet-switched network,
    but that requires secured switches, protections against [ARP
    spoofing](##REF##ARP spoofing) and precludes usage of WiFi. Even
    over secure packet-switched networks, deployment over HTTPS is
    recommended, and possible costs are lowered as \"self-signed\"
    certificates are easier to deploy on a controlled environment than
    over the internet.




--- SOURCE: administration/on_premise/email_gateway.md ---

# Email gateway

The Odoo mail gateway allows you to inject directly all the received
emails in Odoo.

Its principle is straightforward: your SMTP server executes the
\"mailgate\" script for every new incoming email.

The script takes care of connecting to your Odoo database through
XML-RPC, and send the emails via the
[MailThread.message_process()]{.title-ref} feature.

## Prerequisites

- Administrator access to the Odoo database.
- Your own mail server such as Postfix or Exim.
- Technical knowledge on how to configure an email server.

## For Postfix

In you alias config (`/etc/aliases`{.interpreted-text role="file"}):

``` text
email@address: "|/odoo-directory/addons/mail/static/scripts/odoo-mailgate.py -d <database-name> -u <userid> -p <password>"
```

:::: note
::: title
Note
:::

Resources

- [Postfix](http://www.postfix.org/documentation.html)
- [Postfix aliases](http://www.postfix.org/aliases.5.html)
- [Postfix virtual](http://www.postfix.org/virtual.8.html)
::::

## For Exim

``` text
*: |/odoo-directory/addons/mail/static/scripts/odoo-mailgate.py -d <database-name> -u <userid> -p <password>
```

:::: note
::: title
Note
:::

Resources

- [Exim](https://www.exim.org/docs.html)
::::

:::: tip
::: title
Tip
:::

If you do not have access/manage your email server, use
`incoming mail servers
<email-inbound-custom-domain-incoming-server>`{.interpreted-text
role="ref"}.
::::




--- SOURCE: administration/on_premise/geo_ip.md ---

# Geo IP

:::: note
::: title
Note
:::

This documentation only applies to On-premise databases.
::::

## Installation

1.  Download both the GeoLite2 City and Country
    [databases](https://dev.maxmind.com/geoip/geoip2/geolite2/). You
    should end up with two files called
    `GeoLite2-City.mmdb`{.interpreted-text role="file"} and
    `GeoLite2-Country.mmdb`{.interpreted-text role="file"}.

2.  Move the files to the folder `/usr/share/GeoIP/`{.interpreted-text
    role="file"}.

    ``` bash
    mv ~/Downloads/GeoLite2-City.mmdb /usr/share/GeoIP/
    mv ~/Downloads/GeoLite2-Country.mmdb /usr/share/GeoIP/
    ```

3.  Restart the server

::::: note
::: title
Note
:::

If you don\'t want to locate the geoip database in
`/usr/share/GeoIP/`{.interpreted-text role="file"}, use the
`--geoip-city-db <odoo-bin --geoip-city-db>`{.interpreted-text
role="option"} and
`--geoip-country-db <odoo-bin --geoip-country-db>`{.interpreted-text
role="option"} options of the Odoo command line interface. These options
take the absolute path to the GeoIP database file and use it as the
GeoIP database. For example:

``` bash
./odoo-bin --geoip-city-db= ~/Downloads/GeoLite2-City.mmdb
```

::: seealso
\- `CLI documentation </developer/reference/cli>`{.interpreted-text
role="doc"}.
:::
:::::

## Test GeoIP geolocation in your Odoo website

Edit a web page to include some geo-ip information such as the country
name of the current request IP address. To do so:

1.  Go to your website. Open the web page that you want to test `GeoIP`.

2.  Choose `Customize --> HTML/CSS/JS Editor`{.interpreted-text
    role="menuselection"}.

3.  Add the following piece of XML in the page :

    ``` xml
    <h1 class="text-center" t-esc="request.geoip.country.name or 'geoip failure'"/>
    ```

4.  Save and refresh the page.

Geo-ip is working if you read your country name displayed in bold in the
middle of the page.

In case you read \"\*\*geoip failure\*\*\" instead then the
geolocalization failed. The common causes are:

1.  The browsing IP address is the localhost (`127.0.0.1`) or a local
    area network one. If you don\'t know, you can access your website
    using mobile data.
2.  You are using a reverse-proxy (apache, nginx) in front of Odoo but
    didn\'t start Odoo with the proxy-mode enabled. See
    `proxy mode <odoo-bin --proxy-mode>`{.interpreted-text
    role="option"}.
3.  The GeoIP database is corrupt, missing or unaccessible. In such case
    a warning was logged in the server logs.




--- SOURCE: administration/on_premise/packages.md ---

# Packaged installers

Odoo provides packaged installers for Debian-based Linux distributions
(Debian, Ubuntu, etc.), RPM-based Linux distributions (Fedora, CentOS,
RHEL, etc.), and Windows for the Community and Enterprise editions.

Official **Community** nightly packages with all relevant dependency
requirements are available on the [nightly
server](https://nightly.odoo.com).

:::: note
::: title
Note
:::

Nightly packages may be difficult to keep up to date.
::::

Official **Community** and **Enterprise** packages can be downloaded
from the [Odoo download page](https://www.odoo.com/page/download).

:::: note
::: title
Note
:::

It is required to be logged in as a paying on-premise customer or
partner to download the Enterprise packages.
::::

## Linux {#install/packages/linux}

### Prepare

Odoo needs a [PostgreSQL](https://www.postgresql.org/) server to run
properly.

::::: tabs
::: group-tab
Debian/Ubuntu

The default configuration for the Odoo \'deb\' package is to use the
PostgreSQL server on the same host as the Odoo instance. Execute the
following command to install the PostgreSQL server:

``` console
$ sudo apt install postgresql -y
```
:::

::: group-tab
Fedora

Make sure that the [sudo]{.title-ref} command is available and well
configured and, only then, execute the following command to install the
PostgreSQL server:

``` console
$ sudo dnf install -y postgresql-server
$ sudo postgresql-setup --initdb --unit postgresql
$ sudo systemctl enable postgresql
$ sudo systemctl start postgresql
```
:::
:::::

:::: warning
::: title
Warning
:::

[wkhtmltopdf]{.title-ref} is not installed through **pip** and must be
installed manually in [version
0.12.6](https://github.com/wkhtmltopdf/packaging/releases/tag/0.12.6.1-3)
for it to support headers and footers. Check out the [wkhtmltopdf
wiki](https://github.com/odoo/odoo/wiki/Wkhtmltopdf) for more details on
the various versions.
::::

### Repository

Odoo S.A. provides a repository that can be used to install the
**Community** edition by executing the following commands:

::::: tabs
::: group-tab
Debian/Ubuntu

``` console
$ wget -q -O - https://nightly.odoo.com/odoo.key | sudo gpg --dearmor -o /usr/share/keyrings/odoo-archive-keyring.gpg
$ echo 'deb [signed-by=/usr/share/keyrings/odoo-archive-keyring.gpg] https://nightly.odoo.com/{CURRENT_MAJOR_BRANCH}/nightly/deb/ ./' | sudo tee /etc/apt/sources.list.d/odoo.list
$ sudo apt-get update && sudo apt-get install odoo
```

Use the usual [apt-get upgrade]{.title-ref} command to keep the
installation up-to-date.
:::

::: group-tab
Fedora

``` console
$ sudo dnf config-manager --add-repo=https://nightly.odoo.com/{CURRENT_MAJOR_BRANCH}/nightly/rpm/odoo.repo
$ sudo dnf install -y odoo
$ sudo systemctl enable odoo
$ sudo systemctl start odoo
```
:::
:::::

:::: note
::: title
Note
:::

Currently, there is no nightly repository for the Enterprise edition.
::::

### Distribution package

Instead of using the repository, packages for both the **Community** and
**Enterprise** editions can be downloaded from the [Odoo download
page](https://www.odoo.com/page/download).

::::::::::: tabs
::::::: group-tab
Debian/Ubuntu

:::: note
::: title
Note
:::

Odoo {CURRENT_MAJOR_VERSION} \'deb\' package currently supports [Debian
Bookworm (12)](https://www.debian.org/releases/bookworm/) and [Ubuntu
Jammy (22.04LTS)](https://releases.ubuntu.com/jammy) or above.
::::

Once downloaded, execute the following commands **as root** to install
Odoo as a service, create the necessary PostgreSQL user, and
automatically start the server:

``` console
# dpkg -i <path_to_installation_package> # this probably fails with missing dependencies
# apt-get install -f # should install the missing dependencies
# dpkg -i <path_to_installation_package>
```

:::: warning
::: title
Warning
:::

\- The [python3-xlwt]{.title-ref} Debian package, needed to export into
the XLS format, does not exist in Debian Buster nor Ubuntu 18.04. If
needed, install it manually with the following:

``` console
$ sudo pip3 install xlwt
```

\- The [num2words]{.title-ref} Python package - needed to render textual
amounts - does not exist in Debian Buster nor Ubuntu 18.04, which could
cause problems with the [l10n_mx_edi]{.title-ref} module. If needed,
install it manually with the following:

``` console
$ sudo pip3 install num2words
```
::::
:::::::

::::: group-tab
Fedora

:::: note
::: title
Note
:::

Odoo {CURRENT_MAJOR_VERSION} \'rpm\' package supports Fedora 38.
::::

Once downloaded, the package can be installed using the \'dnf\' package
manager:

``` console
$ sudo dnf localinstall odoo_{CURRENT_MAJOR_BRANCH}.latest.noarch.rpm
$ sudo systemctl enable odoo
$ sudo systemctl start odoo
```
:::::
:::::::::::

## Windows {#install/packages/windows}

> :::: warning
> ::: title
> Warning
> :::
>
> Windows packaging is offered for the convenience of testing or running
> single-user local instances but production deployment is discouraged
> due to a number of limitations and risks associated with deploying
> Odoo on a Windows platform.
> ::::

1.  Download the installer from the [nightly
    server](https://nightly.odoo.com) (Community only) or the Windows
    installer from the [Odoo download
    page](https://www.odoo.com/page/download) (any edition.

2.  Execute the downloaded file.

    :::: warning
    ::: title
    Warning
    :::

    On Windows 8 and later, a warning titled *Windows protected your PC*
    may be displayed. Click **More Info** and then **Run anyway** to
    proceed.
    ::::

3.  Accept the [UAC](https://en.wikipedia.org/wiki/User_Account_Control)
    prompt.

4.  Go through the installation steps.

Odoo launches automatically at the end of the installation.




--- SOURCE: administration/on_premise/source.md ---

# Source install

The source \'installation\' is not about installing Odoo but running it
directly from the source instead.

Using the Odoo source can be more convenient for module developers as it
is more easily accessible than using packaged installers.

It makes starting and stopping Odoo more flexible and explicit than the
services set up by the packaged installers. Also, it allows overriding
settings using `command-line parameters
<reference/cmdline>`{.interpreted-text role="ref"} without needing to
edit a configuration file.

Finally, it provides greater control over the system\'s setup and allows
to more easily keep (and run) multiple versions of Odoo side-by-side.

## Fetch the sources

There are two ways to obtain the source code of Odoo: as a ZIP
**archive** or through **Git**.

### Archive

Community edition:

- [Odoo download page](https://www.odoo.com/page/download)
- [GitHub Community repository](https://github.com/odoo/odoo)
- [Nightly server](https://nightly.odoo.com)

Enterprise edition:

- [Odoo download page](https://www.odoo.com/page/download)
- [GitHub Enterprise repository](https://github.com/odoo/enterprise)

### Git {#install/source/git}

:::: note
::: title
Note
:::

It is required to have [Git](https://git-scm.com/) installed, and it is
recommended to have a basic knowledge of Git commands to proceed.
::::

To clone a Git repository, choose between cloning with HTTPS or SSH. In
most cases, the best option is HTTPS. However, choose SSH to contribute
to Odoo source code or when following the `Getting
Started developer tutorial </developer/tutorials/server_framework_101>`{.interpreted-text
role="doc"}.

::::::::::::::: tabs
:::::: group-tab
Linux

::::: tabs
::: tab
Clone with HTTPS

``` console
$ git clone https://github.com/odoo/odoo.git
$ git clone https://github.com/odoo/enterprise.git
```
:::

::: tab
Clone with SSH

``` console
$ git clone git@github.com:odoo/odoo.git
$ git clone git@github.com:odoo/enterprise.git
```
:::
:::::
::::::

:::::: group-tab
Windows

::::: tabs
::: tab
Clone with HTTPS

``` doscon
C:\> git clone https://github.com/odoo/odoo.git
C:\> git clone https://github.com/odoo/enterprise.git
```
:::

::: tab
Clone with SSH

``` doscon
C:\> git clone git@github.com:odoo/odoo.git
C:\> git clone git@github.com:odoo/enterprise.git
```
:::
:::::
::::::

:::::: group-tab
Mac OS

::::: tabs
::: tab
Clone with HTTPS

``` console
$ git clone https://github.com/odoo/odoo.git
$ git clone https://github.com/odoo/enterprise.git
```
:::

::: tab
Clone with SSH

``` console
$ git clone git@github.com:odoo/odoo.git
$ git clone git@github.com:odoo/enterprise.git
```
:::
:::::
::::::
:::::::::::::::

:::: note
::: title
Note
:::

**The Enterprise git repository does not contain the full Odoo source
code**. It is only a collection of extra add-ons. The main server code
is in the Community edition. Running the Enterprise version means
running the server from the Community version with the
[addons-path]{.title-ref} option set to the folder with the Enterprise
edition. It is required to clone both the Community and Enterprise
repositories to have a working Odoo Enterprise installation.
::::

## Prepare {#install/source/prepare}

### Python

Odoo requires **Python 3.10** or later to run.

::: versionchanged
17 Minimum requirement updated from Python 3.7 to Python 3.10.
:::

:::::: tabs
::: group-tab
Linux

Use a package manager to download and install Python 3 if needed.
:::

::: group-tab
Windows

[Download the latest version of Python
3](https://www.python.org/downloads/windows/) and install it.

During installation, check **Add Python 3 to PATH**, then click
**Customize Installation** and make sure that **pip** is checked.
:::

::: group-tab
Mac OS

Use a package manager ([Homebrew](https://brew.sh/),
[MacPorts](https://www.macports.org)) to download and install Python 3
if needed.
:::
::::::

:::::::::::: note
::: title
Note
:::

If Python 3 is already installed, make sure that the version is 3.10 or
above, as previous versions are not compatible with Odoo.

:::::: tabs
::: group-tab
Linux

``` console
$ python3 --version
```
:::

::: group-tab
Windows

``` doscon
C:\> python --version
```
:::

::: group-tab
Mac OS

``` console
$ python3 --version
```
:::
::::::

Verify that [pip](https://pip.pypa.io) is also installed for this
version.

:::::: tabs
::: group-tab
Linux

``` console
$ pip3 --version
```
:::

::: group-tab
Windows

``` doscon
C:\> pip --version
```
:::

::: group-tab
Mac OS

``` console
$ pip3 --version
```
:::
::::::
::::::::::::

### PostgreSQL

Odoo uses PostgreSQL as its database management system.

:::::::: tabs
::: group-tab
Linux

Use a package manager to download and install PostgreSQL (supported
versions: 12.0 or above). It can be achieved by executing the following:

``` console
$ sudo apt install postgresql postgresql-client
```
:::

::: group-tab
Windows

[Download PostgreSQL](https://www.postgresql.org/download/windows)
(supported versions: 12.0 or above) and install it.
:::

::::: group-tab
Mac OS

Use [Postgres.app](https://postgresapp.com) to download and install
PostgreSQL (supported version: 12.0 or above).

:::: tip
::: title
Tip
:::

To make the command line tools bundled with Postgres.app available, make
sure to set up the [\$PATH]{.title-ref} variable by following the
[Postgres.app CLI tools
instructions](https://postgresapp.com/documentation/cli-tools.html).
::::
:::::
::::::::

By default, the only user is [postgres]{.title-ref}. As Odoo forbids
connecting as [postgres]{.title-ref}, create a new PostgreSQL user.

:::::::::: tabs
::::: group-tab
Linux

``` console
$ sudo -u postgres createuser -d -R -S $USER
$ createdb $USER
```

:::: note
::: title
Note
:::

Because the PostgreSQL user has the same name as the Unix login, it is
possible to connect to the database without a password.
::::
:::::

::: group-tab
Windows

1.  Add PostgreSQL\'s [bin]{.title-ref} directory (by default:
    `C:\\Program Files\\PostgreSQL\\<version>\\bin`{.interpreted-text
    role="file"}) to the [PATH]{.title-ref}.
2.  Create a postgres user with a password using the pg admin gui:
    1.  Open **pgAdmin**.
    2.  Double-click the server to create a connection.
    3.  Select
        `Object --> Create --> Login/Group Role`{.interpreted-text
        role="menuselection"}.
    4.  Enter the username in the **Role Name** field (e.g.,
        [odoo]{.title-ref}).
    5.  Open the **Definition** tab, enter a password (e.g.,
        [odoo]{.title-ref}), and click **Save**.
    6.  Open the **Privileges** tab and switch **Can login?** to
        [Yes]{.title-ref} and **Create database?** to [Yes]{.title-ref}.
:::

::::: group-tab
Mac OS

``` console
$ sudo -u postgres createuser -d -R -S $USER
$ createdb $USER
```

:::: note
::: title
Note
:::

Because the PostgreSQL user has the same name as the Unix login, it is
possible to connect to the database without a password.
::::
:::::
::::::::::

### Dependencies {#install/dependencies}

::::::::::::::::: tabs
:::::::::::: group-tab
Linux

Using **distribution packages** is the preferred way of installing
dependencies. Alternatively, install the Python dependencies with
**pip**.

::::::::::: tabs
::: tab
Debian/Ubuntu

On Debian/Ubuntu, the following commands should install the required
packages:

``` console
$ cd odoo #CommunityPath
$ sudo ./setup/debinstall.sh
```

The [setup/debinstall.sh]{.title-ref} script will parse the
[debian/control]({GITHUB_PATH}/debian/control) file and install the
found packages.
:::

::::::::: tab
Install with pip

:::: warning
::: title
Warning
:::

Using pip may lead to security issues and broken dependencies; only do
this if you know what you are doing.
::::

As some of the Python packages need a compilation step, they require
system libraries to be installed.

On Debian/Ubuntu, the following command should install these required
libraries:

``` console
$ sudo apt install python3-pip libldap2-dev libpq-dev libsasl2-dev
```

Odoo dependencies are listed in the `requirements.txt`{.interpreted-text
role="file"} file located at the root of the Odoo Community directory.

:::: note
::: title
Note
:::

The Python packages in `requirements.txt`{.interpreted-text role="file"}
are based on their stable/LTS Debian/Ubuntu corresponding version at the
moment of the Odoo release. For example, for Odoo 15.0, the
[python3-babel]{.title-ref} package version is 2.8.0 in Debian Bullseye
and 2.6.0 in Ubuntu Focal. The lowest version is then chosen in the
`requirements.txt`{.interpreted-text role="file"}.
::::

:::: tip
::: title
Tip
:::

It can be preferable not to mix Python module packages between different
instances of Odoo or with the system. However, it is possible to use
[virtualenv](https://pypi.org/project/virtualenv/) to create isolated
Python environments.
::::

Navigate to the path of the Odoo Community installation
(`CommunityPath`{.interpreted-text role="file"}) and run **pip** on the
requirements file to install the requirements for the current user.

``` console
$ cd /CommunityPath
$ pip install -r requirements.txt
```
:::::::::
:::::::::::
::::::::::::

::: group-tab
Windows

Before installing the dependencies, download and install the [Build
Tools for Visual Studio](https://visualstudio.microsoft.com/downloads/).
Select **C++ build tools** in the **Workloads** tab and install them
when prompted.

Odoo dependencies are listed in the [requirements.txt]{.title-ref} file
located at the root of the Odoo Community directory.

> :::: tip
> ::: title
> Tip
> :::
>
> It can be preferable not to mix Python module packages between
> different instances of Odoo or with the system. However, it is
> possible to use [virtualenv](https://pypi.org/project/virtualenv/) to
> create isolated Python environments.
> ::::

Navigate to the path of the Odoo Community installation
([CommunityPath]{.title-ref}) and run **pip** on the requirements file
in a terminal **with Administrator privileges**:

``` doscon
C:\> cd \CommunityPath
C:\> pip install setuptools wheel
C:\> pip install -r requirements.txt
```
:::

::::: group-tab
Mac OS

Odoo dependencies are listed in the [requirements.txt]{.title-ref} file
located at the root of the Odoo Community directory.

> :::: tip
> ::: title
> Tip
> :::
>
> It can be preferable not to mix Python module packages between
> different instances of Odoo or with the system. However, it is
> possible to use [virtualenv](https://pypi.org/project/virtualenv/) to
> create isolated Python environments.
> ::::

Navigate to the path of the Odoo Community installation
([CommunityPath]{.title-ref}) and run **pip** on the requirements file:

``` console
$ cd /CommunityPath
$ pip3 install setuptools wheel
$ pip3 install -r requirements.txt
```

:::: warning
::: title
Warning
:::

Non-Python dependencies must be installed with a package manager
([Homebrew](https://brew.sh/), [MacPorts](https://www.macports.org)).

1.  Download and install the **Command Line Tools**:

    ``` console
    $ xcode-select --install
    ```

2.  Use the package manager to install non-Python dependencies.
::::
:::::
:::::::::::::::::

:::::::: note
::: title
Note
:::

For languages using a **right-to-left interface** (such as Arabic or
Hebrew), the [rtlcss]{.title-ref} package is required.

:::::: tabs
::: group-tab
Linux

1.  Download and install **nodejs** and **npm** with a package manager.

2.  Install \`rtlcss\`:

    ``` console
    $ sudo npm install -g rtlcss
    ```
:::

::: group-tab
Windows

1.  Download and install [nodejs](https://nodejs.org/en/download).

2.  Install \`rtlcss\`:

    ``` doscon
    C:\> npm install -g rtlcss
    ```

3.  Edit the system environment\'s variable [PATH]{.title-ref} to add
    the folder where [rtlcss.cmd]{.title-ref} is located (typically:
    `C:\\Users\\<user>\\AppData\\Roaming\\npm\\`{.interpreted-text
    role="file"}).
:::

::: group-tab
Mac OS

1.  Download and install **nodejs** with a package manager
    ([Homebrew](https://brew.sh/),
    [MacPorts](https://www.macports.org)).

2.  Install \`rtlcss\`:

    ``` console
    $ sudo npm install -g rtlcss
    ```
:::
::::::
::::::::

:::: warning
::: title
Warning
:::

[wkhtmltopdf]{.title-ref} is not installed through **pip** and must be
installed manually in [version
0.12.6](https://github.com/wkhtmltopdf/packaging/releases/tag/0.12.6.1-3)
for it to support headers and footers. Check out the [wkhtmltopdf
wiki](https://github.com/odoo/odoo/wiki/Wkhtmltopdf) for more details on
the various versions.
::::

## Running Odoo {#install/source/running_odoo}

Once all dependencies are set up, Odoo can be launched by running
[odoo-bin]{.title-ref}, the command-line interface of the server. It is
located at the root of the Odoo Community directory.

To configure the server, either specify
`command-line arguments <reference/cmdline/server>`{.interpreted-text
role="ref"} or a
`configuration file <reference/cmdline/config>`{.interpreted-text
role="ref"}.

:::: tip
::: title
Tip
:::

For the Enterprise edition, add the path to the [enterprise]{.title-ref}
add-ons to the [addons-path]{.title-ref} argument. Note that it must
come before the other paths in [addons-path]{.title-ref} for add-ons to
be loaded correctly.
::::

Common necessary configurations are:

- PostgreSQL user and password.
- Custom addon paths beyond the defaults to load custom modules.

A typical way to run the server would be:

:::::: tabs
::: group-tab
Linux

``` console
$ cd /CommunityPath
$ python3 odoo-bin --addons-path=addons -d mydb
```

Where [CommunityPath]{.title-ref} is the path of the Odoo Community
installation, and [mydb]{.title-ref} is the name of the PostgreSQL
database.
:::

::: group-tab
Windows

``` doscon
C:\> cd CommunityPath/
C:\> python odoo-bin -r dbuser -w dbpassword --addons-path=addons -d mydb
```

Where [CommunityPath]{.title-ref} is the path of the Odoo Community
installation, [dbuser]{.title-ref} is the PostgreSQL login,
[dbpassword]{.title-ref} is the PostgreSQL password, and
[mydb]{.title-ref} is the name of the PostgreSQL database.
:::

::: group-tab
Mac OS

``` console
$ cd /CommunityPath
$ python3 odoo-bin --addons-path=addons -d mydb
```

Where [CommunityPath]{.title-ref} is the path of the Odoo Community
installation, and [mydb]{.title-ref} is the name of the PostgreSQL
database.
:::
::::::

After the server has started (the INFO log [odoo.modules.loading:
Modules loaded.]{.title-ref} is printed), open <http://localhost:8069>
in a web browser and log into the Odoo database with the base
administrator account: use [admin]{.title-ref} as the email and, again,
[admin]{.title-ref} as the password.

:::: tip
::: title
Tip
:::

\- From there, create and manage new
`users <../../applications/general/users>`{.interpreted-text
role="doc"}. - The user account used to log into Odoo\'s web interface
differs from the `--db_user
<odoo-bin -r>`{.interpreted-text role="option"} CLI argument.
::::

::: seealso
`The list of CLI arguments for odoo-bin </developer/reference/cli>`{.interpreted-text
role="doc"}
:::




--- SOURCE: administration/on_premise/update.md ---

# Bugfix updates {#setup/update}

## Introduction

In order to benefit from the latest improvements, security fixes, bug
corrections and performance boosts, you may need to update your Odoo
installation from time to time.

This guide only applies when are using Odoo on your own hosting
infrastructure. If you are using one of the Odoo Cloud solutions,
updates are automatically performed for you.

The terminology surrounding software updates is often confusing, so here
are some preliminary definitions:

Updating (an Odoo installation)

:   Refers to the process of obtaining the latest revision of the source
    code for your current Odoo Edition. For example, updating your Odoo
    Enterprise 13.0 to the latest revision. This does not directly cause
    any change to the contents of your Odoo database, and can be undone
    by reinstalling the previous revision of the source code.

Upgrading (an Odoo database)

:   Refers to a complex data processing operation where the structure
    and contents of your database is permanently altered to make it
    compatible with a new release of Odoo. This operation is
    irreversible and typically accomplished via Odoo\'s [database
    upgrade service](https://upgrade.odoo.com), when you decide to
    switch to a newer release of Odoo. Historically, this process has
    also been known as a \"migration\" because it involves moving data
    around inside the database, even though the database may end up at
    the same physical location after the upgrade.

This page describes the typical steps needed to *update* an Odoo
installation to the latest version. If you\'d like more information
about upgrading a database, please visit the [Odoo Upgrade
page](https://upgrade.odoo.com) instead.

## In a nutshell

Updating Odoo is accomplished by simply reinstalling the latest version
of your Odoo Edition on top of your current installation. This will
preserve your data without any alteration, as long as you do not
uninstall PostgreSQL (the database engine that comes with Odoo).

The main reference for updating is logically our
`installation guide <../on_premise>`{.interpreted-text role="doc"},
which explains the common installation methods.

Updating is also most appropriately accomplished by the person who
deployed Odoo initially, because the procedure is very similar.

:::: note
::: title
Note
:::

We always recommend to download a complete new up-to-date Odoo version,
rather than manually applying patches, such as the security patches that
come with Security Advisories. The patches are mainly provided for
installations that are heavily customized, or for technical personnel
who prefer to apply minimal changes temporarily while testing a complete
update.
::::

## Step 1: Download an updated Odoo version

The central download page is <https://www.odoo.com/page/download>. If
you see a \"Buy\" link for the Odoo Enterprise download, make sure you
are logged into Odoo.com with the same login that is linked to your Odoo
Enterprise subscription.

Alternatively, you can use the unique download link that was included
with your Odoo Enterprise purchase confirmation email.

:::: note
::: title
Note
:::

Downloading an updated version is not necessary if you installed via
Github (see below)
::::

## Step 2: Make a backup of your database

The update procedure is quite safe and should not alter you data.
However it\'s always best to take a full database backup before
performing any change on your installation, and to store it somewhere
safe, on a different computer.

If you have not disabled the database manager screen (see
`here <security>`{.interpreted-text role="ref"} why you should), you can
use it (link at bottom of your database selection screen) to download a
backup of your database(s). If you disabled it, use the same procedure
than for your usual backups.

## Step 3: Install the updated version

Choose the method that matches your current installation:

### Packaged Installers

If you installed Odoo with an installation package downloaded on our
website (the recommended method), updating is very simple. All you have
to do is download the installation package corresponding to your system
(see step #1) and install it on your server. They are updated daily and
include the latest security fixes. Usually, you can simply double-click
the package to install it on top of the current installation. After
installing the package, be sure to restart the Odoo service or reboot
your server, and you\'re all set.

### Source Install (Tarball)

If you have originally installed Odoo with the \"tarball\" version
(source code archive), you have to replace the installation directory
with a newer version. First download the latest tarball from Odoo.com.
They are updated daily and include the latest security fixes (see step
#1) After downloading the package, extract it to a temporary location on
your server.

You will get a folder labeled with the version of the source code, for
example \"odoo-13.0+e.20190719\", that contains a folder
\"odoo.egg-info\" and the actual source code folder named \"odoo\" (for
Odoo 10 and later) or \"openerp\" for older versions. You can ignore the
odoo.egg-info folder. Locate the folder where your current installation
is deployed, and replace it with the newer \"odoo\" or \"openerp\"
folder that was in the archive you just extracted.

Be sure to match the folder layout, for example the new \"addons\"
folder included in the source code should end up exactly at the same
path it was before. Next, watch out for any specific configuration files
that you may have manually copied or modified in the old folder, and
copy them over to the new folder. Finally, restart the Odoo service or
reboot the machine, and you are all set.

### Source Install (Github)

If you have originally installed Odoo with a full Github clone of the
official repositories, the update procedure requires you to pull the
latest source code via git. Change into the directory for each
repository (the main Odoo repository, and the Enterprise repository),
and run the following commands:

    git fetch
    git rebase --autostash

The last command may encounter source code conflicts if you had edited
the Odoo source code locally. The error message will give you the list
of files with conflicts, and you will need to resolve the conflicts
manually, by editing them and deciding which part of the code to keep.

Alternatively, if you prefer to simply discard the conflicting changes
and restore the official version, you can use the following command:

    git reset --hard

Finally, restart the Odoo service or reboot the machine, and you should
be done.

### Docker

Please refer to our [Docker image
documentation](https://hub.docker.com/_/odoo/) for specific update
instructions.




--- SOURCE: administration/on_premise.md ---

show-content

:   

# On-premise

## Register a database

To register your database, enter your subscription code in the banner in
the app dashboard. If the registration is successful, the banner will
turn green and display the database expiration date.

:::: tip
::: title
Tip
:::

The expiration date is also displayed at the bottom of the Settings
page.
::::

## Duplicate a database {#on-premise/duplicate}

Duplicate a database by accessing the database manager on your server
([\<odoo-server\>/web/database/manager]{.title-ref}). Typically, you
want to duplicate your production database into a neutralized testing
database. It can be done by checking the neutralize box when prompted,
which executes all `neutralize.sql`{.interpreted-text role="file"}
scripts for every installed module.

## Common error messages and solutions

### Registration error

In case of a registration error, the following message should be
displayed.

![Database registration error message](on_premise/error-message-sub-code.png)

To resolve the issue:

- Check the **validity of your Odoo Enterprise subscription** by
  verifying if your subscription details have the tag
  `In Progress`{.interpreted-text role="guilabel"} on your [Odoo
  Account](https://accounts.odoo.com/my/subscription) or contact your
  Account Manager.

- Ensure that **no other database is linked** to the subscription code,
  as only one database can be linked per subscription.

  :::: tip
  ::: title
  Tip
  :::

  If a test or a development database is needed, you can
  `duplicate a database
  <on-premise/duplicate>`{.interpreted-text role="ref"}.
  ::::

- Verify that **no databases share the same UUID** (Universally Unique
  Identifier) by opening your [Odoo
  Contract](https://accounts.odoo.com/my/subscription). If two or more
  databases share the same UUID, their name will be displayed.

  ![Database UUID error message](on_premise/unlink-db-name-collision.png)

  If that is the case, manually change the database(s) UUID or [send a
  support ticket](https://www.odoo.com/help).

- As the update notification must be able to reach Odoo\'s subscription
  validation servers, ensure your **network and firewall settings**
  allow the Odoo server to open outgoing connections towards:

  - Odoo 18.0 and above: [services.odoo.com]{.title-ref} on port
    [80]{.title-ref}
  - Odoo 17.0 and below: [services.openerp.com]{.title-ref} on port
    [80]{.title-ref}

  These ports must be kept open even after registering a database, as
  the update notification runs once a week.

### Too many users error

If you have more users in a local database than provisioned in your Odoo
Enterprise subscription, the following message should be displayed.

![Too many users on a database error message](on_premise/add-more-users.png)

When the message appears, you have 30 days to act before the database
expires. The countdown is updated every day.

To resolve the issue, either:

- **Add more users** to your subscription by clicking the
  `Upgrade your subscription`{.interpreted-text role="guilabel"} link
  displayed in the message to validate the upsell quotation and pay for
  the extra users.
- `Deactivate users <users/deactivate>`{.interpreted-text role="ref"}
  and **reject** the upsell quotation.

Once your database has the correct number of users, the expiration
message disappears automatically after a few days, when the next
verification occurs.

### Database expired error

If your database expires before you renew your subscription, the
following message should be displayed.

![Database expired error message](on_premise/database-expired.png)

This message appears if you fail to act before the end of the 30-day
countdown.

To resolve the issue, either:

- Click the `Renew your subscription`{.interpreted-text role="guilabel"}
  link displayed in the message and complete the process. If you pay by
  wire transfer, your subscription will be renewed when the payment
  arrives which can take a few days. Credit card payments are processed
  immediately.
- [Send a support ticket](https://www.odoo.com/help).

::: toctree
on_premise/packages on_premise/source on_premise/update
on_premise/deploy on_premise/email_gateway on_premise/geo_ip
on_premise/community_to_enterprise
:::




--- SOURCE: administration/standard_extended_support.md ---

# Standard and extended support

:::: warning
::: title
Warning
:::

The information presented on this page is not intended to amend, modify,
or replace any terms of the
`Odoo Enterprise Subscription Agreement <../legal/terms/enterprise>`{.interpreted-text
role="doc"}. In the event of any inconsistency or conflict, the
Subscription Agreement shall govern.
::::

Odoo provides **standard support** for all major versions for three
years. It includes helpdesk support, bug fixing, and security updates.

Beyond those three years, you can benefit from **extended support** by
paying an extra fee. It includes helpdesk support and bug fixes
(depending on feasibility).

:::: note
::: title
Note
:::

\- Odoo releases intermediary versions, called online or SaaS versions,
every two to three months. These versions are only available on Odoo
Online and are not eligible for extended support. - You can
[upgrade](https://upgrade.odoo.com) from any version.
::::

The table below shows the support status of every version. Major
releases are highlighted in bold.

                   Odoo Online                                                                                                                               Odoo.sh                                                                                                                                   On-premise                                                                                                                                Release date     End of standard support
  ---------------- ----------------------------------------------------------------------------------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------- ---------------- --------------------------
  **Odoo 19.0**    `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}   `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}   `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}   September 2025   September 2028 (planned)
  Odoo SaaS 18.4   `<span class="text-danger" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}    N/A                                                                                                                                       N/A                                                                                                                                       July 2025        
  Odoo SaaS 18.3   `<span class="text-danger" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}    N/A                                                                                                                                       N/A                                                                                                                                       May 2025         
  Odoo SaaS 18.2   `<span class="text-danger" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}    N/A                                                                                                                                       N/A                                                                                                                                       March 2025       
  **Odoo 18.0**    `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}   `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}   `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}   October 2024     September 2027 (planned)
  **Odoo 17.0**    `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}   `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}   `<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}   November 2023    September 2026 (planned)
  **Odoo 16.0**    `<span class="text-danger" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}    `<span class="text-danger" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}    `<span class="text-danger" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}    October 2022     September 2025
  **Odoo 15.0**    `<span class="text-danger" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}    `<span class="text-danger" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}    `<span class="text-danger" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}    October 2021     October 2024
  Older versions   `<span class="text-danger" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}    `<span class="text-danger" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}    `<span class="text-danger" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}    Before 2021      Before 2024

::: admonition
Legend

`<span class="text-success" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}
: Standard support

`<span class="text-danger" style="font-size: 32px; line-height: 32px; display: inline-block; vertical-align: middle;">●</span>`{=html}
: Extended support available (with an extra fee)

N/A : Never released for this platform
:::




--- SOURCE: administration/upgrade.md ---

# Upgrade

An upgrade involves moving a database from an older version to a newer
supported version (e.g., from Odoo 16.0 to Odoo 18.0). Regular upgrades
are crucial as each version offers new features, bug fixes, and security
patches. Using a
`supported version <standard_extended_support>`{.interpreted-text
role="doc"} is strongly recommended. Each major version is supported for
three years.

Depending on the hosting type and Odoo version used, a database upgrade
can be **mandatory**.

:::::: tabs
::: group-tab
Odoo Online

- If a database is on a **major version** (e.g., 16.0, 17.0, 18.0), an
  upgrade is mandatory every two years.
- If a database is on a **minor version** (e.g., 17.1, 17.2, 17.4), an
  upgrade is mandatory a few weeks after the next version is released.
  Minor versions are usually released every two months.
:::

::: group-tab
Odoo.sh

After the initial three years of support, you will have another two
years to complete the upgrade. You will be notified when an upgrade is
required.

![The \"unsupported version\" popup on Odoo.sh.](upgrade/odoo-sh-message.png)
:::

::: group-tab
On-premise

You can stay on the same version indefinitely, even if it is not
recommended. Note that the smaller the version gap, the easier the
upgrade should be.
:::
::::::

::: spoiler
Automatic upgrades: Odoo Online\'s Rolling Release process

You will receive a notification in your database a few weeks before a
mandatory upgrade will be automatically carried out. You are in control
of the process as long as the deadline is not reached.

![The upgrade message prompt on the top right of the database](upgrade/rr-upgrade-message.png)

Concretely, Odoo's Upgrade Team performs a silent test upgrade of every
database that should be upgraded. If the test is successful and lasts
less than 20 minutes, you can directly trigger the upgrade from the
database. If the test fails, you can test an upgrade using the [database
manager](https://www.odoo.com/my/databases).

When you are invited to upgrade, it is strongly recommended to
`request an upgraded test
database <upgrade-request-test>`{.interpreted-text role="ref"} first and
spend time `testing <upgrade-testing>`{.interpreted-text role="ref"} it.

An automatic upgrade to the next version will be triggered if no action
is taken before the specified due date.
:::

An upgrade does not cover:

> - Downgrading to a previous version of Odoo
> - `Switching editions <on_premise/community_to_enterprise>`{.interpreted-text
>   role="doc"} (e.g., from Community to Enterprise)
> - `Changing hosting type <hosting/change-solution>`{.interpreted-text
>   role="ref"} (e.g., from on-premise to Odoo Online)
> - Migrating from another ERP to Odoo

:::: warning
::: title
Warning
:::

If your database contains custom modules, it cannot be upgraded until a
version of your custom modules is available for the target version of
Odoo. For customers maintaining their own custom modules, we recommend
to parallelize the process by `requesting an upgraded database
<upgrade-request-test>`{.interpreted-text role="ref"} while also
`upgrading the source code of your custom
modules </developer/howtos/upgrade_custom_db>`{.interpreted-text
role="doc"}.
::::

## Upgrading in a nutshell {#upgrade-nutshell}

1.  Request an upgraded test database (see
    `obtaining an upgraded test database
    <upgrade-request-test>`{.interpreted-text role="ref"}).
2.  If applicable, upgrade the source code of your custom module to be
    compatible with the new version of Odoo (see
    `/developer/howtos/upgrade_custom_db`{.interpreted-text
    role="doc"}).
3.  Thoroughly test the upgraded database (see
    `testing the new version of the database
    <upgrade-testing>`{.interpreted-text role="ref"}).
4.  Report any issue encountered during the testing to Odoo by going to
    the [Support page and selecting \"An issue related to my future
    upgrade (I am testing an
    upgrade)\"](https://www.odoo.com/help?stage=migration).
5.  Once all issues are resolved and you are confident that the upgraded
    database can be used as your main database without any issues, plan
    the upgrade of your production database.
6.  Request the upgrade for the production database, rendering it
    unavailable for the time it takes to complete the process (see
    `upgrading the production database <upgrade-production>`{.interpreted-text
    role="ref"}).
7.  Report any issue encountered during the upgrade to Odoo by going to
    the [Support page and selecting \"An issue related to my upgrade
    (production)\"](https://www.odoo.com/help?stage=post_upgrade).

## Obtaining an upgraded test database {#upgrade-request-test}

The [Upgrade page](https://upgrade.odoo.com) is the main platform for
requesting an upgraded database. However, depending on the hosting type,
you can upgrade from the command line (on-premise), the Odoo Online
[database manager](https://www.odoo.com/my/databases), or your [Odoo.sh
project](https://www.odoo.sh/project).

:::: note
::: title
Note
:::

The Upgrade platform follows the same [Privacy
Policy](https://www.odoo.com/privacy) as the other Odoo.com services.
Visit the [General Data Protection Regulation
page](https://www.odoo.com/gdpr) to learn more about how Odoo handles
your data and privacy.
::::

:::::::::::::: tabs
::: group-tab
Odoo Online

To upgrade an Odoo Online database:

1.  Open the [database manager](https://www.odoo.com/my/databases).
2.  Select the database and click `fa-gears`{.interpreted-text
    role="icon"} `Manage`{.interpreted-text role="guilabel"}.
3.  Click `Upgrade`{.interpreted-text role="guilabel"} in the
    `Database`{.interpreted-text role="guilabel"} section.
4.  In the popup:
    - Select the **version** of Odoo you want to upgrade to, usually the
      latest version.
    - Enter the `Email to notify`{.interpreted-text role="guilabel"},
      which will receive a link to the upgraded database.
    - Select the `Purpose`{.interpreted-text role="guilabel"} of the
      upgrade, which is automatically set to `Test`{.interpreted-text
      role="guilabel"} for your first upgrade request.
    - Click `Upgrade`{.interpreted-text role="guilabel"}.

In the database manager, the `Connect`{.interpreted-text
role="guilabel"} button will be replaced by an unclickable
`Upgrading...`{.interpreted-text role="guilabel"} button until
completion. Once the process is successful, an email containing a link
to the upgraded test database is sent to the address provided. The test
database can also be accessed from the database manager by clicking the
`fa-caret-down`{.interpreted-text role="icon"}
(`caret down`{.interpreted-text role="guilabel"}) button before the
database name to display the test database, then clicking
`Connect`{.interpreted-text role="guilabel"}.
:::

::::: group-tab
Odoo.sh

Odoo.sh is integrated with the upgrade platform to simplify the upgrade
process.

![Odoo.sh project and tabs](upgrade/odoo-sh-staging.png)

The **latest production daily automatic backup** is then sent to the
Upgrade platform.

Once the upgrade platform is done upgrading the backup and uploading it
on the branch, it is put in a **special mode**: each time a **commit is
pushed** on the branch, a **restore operation** of the upgraded backup
and an **update of all the custom modules** occur. This allows you to
test your custom modules on a pristine copy of the upgraded database.
The log file of the upgrade process can be found in your newly upgraded
staging build by going to `~/logs/upgrade.log`{.interpreted-text
role="file"}.

:::: important
::: title
Important
:::

In databases where custom modules are installed, their source code must
be up-to-date with the target version of Odoo before the upgrade can be
performed. If there are none, the \"update on commit\" mode is skipped,
the upgraded database is built as soon as it is transferred from the
upgrade platform, and the upgrade mode is exited.

Check out the `/developer/howtos/upgrade_custom_db`{.interpreted-text
role="doc"} page for more information.
::::
:::::

::::::::: group-tab
On-premise

The standard upgrade process can be initiated by entering the following
command line on the machine where the database is hosted:

``` console
$ python <(curl -s https://upgrade.odoo.com/upgrade) test -d <your db name> -t <target version>
```

:::: note
::: title
Note
:::

This command has some requirements on the environment it runs in:

- Some external commands that must be provided by the operating system,
  normally found in any Linux distribution (including WSL). An error
  will be displayed if one or several of them are missing.
- The system user that executes the command needs to be configured with
  access to the database. Please refer to the PostgreSQL documentation
  of the [client
  environment](https://www.postgresql.org/docs/current/libpq-envars.html)
  or the [client password
  file](https://www.postgresql.org/docs/current/libpq-pgpass.html) for
  this requirement.
- The script needs to be able to reach one or multiple servers of the
  upgrade platform both on TCP port 443 and to any random TCP port in
  the range between 32768 and 60999. This can be in conflict with your
  restrictive firewall and may need an exception added to the firewall
  configuration.
::::

The following command can be used to display the general help and the
main commands:

``` console
$ python <(curl -s https://upgrade.odoo.com/upgrade) --help
```

An upgraded test database can also be requested via the [Upgrade
page](https://upgrade.odoo.com).

:::: important
::: title
Important
:::

In databases where custom modules are installed, their source code must
be up-to-date with the target version of Odoo before the upgrade can be
performed. Check out the
`/developer/howtos/upgrade_custom_db`{.interpreted-text role="doc"} page
for more information.
::::

:::: note
::: title
Note
:::

\- For security reasons, only the person who submitted the upgrade
request can download it. - For storage reasons, the database\'s copy is
submitted without a filestore to the upgrade server. Therefore, the
upgraded database does not contain the production filestore. - Before
restoring the upgraded database, its filestore must be merged with the
production filestore to be able to perform tests in the same conditions
as it would be in the new version. - The upgraded database contains:

- A [dump.sql]{.title-ref} file containing the upgraded database
- A [filestore]{.title-ref} folder containing files extracted from
  in-database records into attachments (if there are any) and new
  standard Odoo files from the targeted Odoo version (e.g., new images,
  icons, payment provider\'s logos, etc.). This is the folder that
  should be merged with the production filestore in order to get the
  full upgraded filestore.
::::
:::::::::
::::::::::::::

:::: note
::: title
Note
:::

You can request multiple test databases if you wish to test an upgrade
more than once.
::::

:::: note
::: title
Note
:::

When an upgrade request is completed, an upgrade report is attached to
the successful upgrade email, and it becomes available in the Discuss
app for users who are part of the \"Administration / Settings\" group.
This report provides important information about the changes introduced
by the new version.
::::

## Testing the new version of the database {#upgrade-testing}

It is essential to test the upgraded test database to ensure that you
are not stuck in your day-to-day activities by a change in views,
behavior, or an error message once the upgrade goes live.

:::: note
::: title
Note
:::

Test databases are neutralized, and some features are disabled to
prevent them from impacting the production database:

1.  Scheduled actions are disabled.
2.  Outgoing mail servers are disabled by archiving the existing ones
    and adding a fake one.
3.  Payment providers and delivery carriers are reset to the test
    environment.
4.  Bank synchronization is disabled. Should you want to test the
    synchronization, contact your bank synchronization provider to get
    sandbox credentials.
::::

Testing as many of your business flows as possible is strongly
recommended to ensure they are working correctly and to get more
familiar with the new version.

::: admonition
Basic test checklist

- Are there views that are deactivated in your test database but active
  in your production database?
- Are your usual views still displayed correctly?
- Are your reports (invoice, sales order, etc.) correctly generated?
- Are your website pages working correctly?
- Are you able to create and modify records? (sales orders, invoices,
  purchases, users, contacts, companies, etc.)
- Are there any issues with your mail templates?
- Are there any issues with saved translations?
- Are your search filters still present?
- Can you export your data?
:::

::: spoiler
Example of end-to-end testing

- Checking a random product in your product catalog and comparing its
  test and production data to verify everything is the same (product
  category, selling price, cost price, vendor, accounts, routes, etc.).
- Buying this product (Purchase app).
- Confirming the reception of this product (Inventory app).
- Checking if the route to receive this product is the same in your
  production database (Inventory app).
- Selling this product (Sales app) to a random customer.
- Opening your customer database (Contacts app), selecting a customer
  (or company), and checking its data.
- Shipping this product (Inventory app).
- Checking if the route to ship this product is the same as in your
  production database (Inventory app).
- Validating a customer invoice (Invoicing or Accounting app).
- Crediting the invoice (issuing a credit note) and checking if it
  behaves as in your production database.
- Checking your reports\' results (Accounting app).
- Randomly checking your taxes, currencies, bank accounts, and fiscal
  year (Accounting app).
- Making an online order (Website apps) from the product selection in
  your shop until the checkout process and checking if everything
  behaves as in your production database.

This list is **not** exhaustive. Extend the example to your other apps
based on your use of Odoo.
:::

If you face an issue while testing your upgraded test database, you can
request the assistance of Odoo by going to the [Support page and
selecting \"An issue related to my future upgrade (I am testing an
upgrade)\"](https://www.odoo.com/help?stage=migration). In any case, it
is essential to report any problem encountered during the testing to fix
it before upgrading your production database.

You might encounter significant differences with standard views,
features, fields, and models during testing. Those changes cannot be
reverted on a case-by-case basis. However, if a change introduced by a
new version breaks a customization, it is the responsibility of the
maintainer of your custom module to make it compatible with the new
version of Odoo.

:::: tip
::: title
Tip
:::

Do not forget to test:

- Integrations with external software (EDI, APIs, etc.)
- Workflows between different apps (online sales with eCommerce,
  converting a lead all the way to a sales order, delivery of products,
  etc.)
- Data exports
- Automated actions
- Server actions in the action menu on form views, as well as by
  selecting multiple records on list views
::::

## Upgrading the production database {#upgrade-production}

Once the `tests <upgrade-testing>`{.interpreted-text role="ref"} are
completed and you are confident that the upgraded database can be used
as your main database without any issues, it is time to plan the go-live
day.

Your production database will be unavailable during its upgrade.
Therefore, we recommend planning the upgrade at a time when the use of
the database is minimal.

As the standard upgrade scripts and your database are constantly
evolving, it is also recommended to frequently request another upgraded
test database to ensure that the upgrade process is still successful,
especially if it takes a long time to finish. **Fully rehearsing the
upgrade process the day before upgrading the production database is also
recommended.**

:::: important
::: title
Important
:::

Going into production without first testing may lead to:

- Users failing to adjust to the changes and new features
- Business interruptions (e.g., no longer having the possibility to
  validate an action)
- Poor customer experience (e.g., an eCommerce website that does not
  work correctly)
::::

The process of upgrading a production database is similar to upgrading a
test database, but with a few exceptions.

:::::::::::: tabs
::::: group-tab
Odoo Online

The process is similar to `obtaining an upgraded test database
<upgrade-request-test>`{.interpreted-text role="ref"}, except for the
purpose option, which must be set to `Production`{.interpreted-text
role="guilabel"} instead of `Test`{.interpreted-text role="guilabel"}.

:::: warning
::: title
Warning
:::

Once the upgrade is requested, the database will be unavailable until
the upgrade is finished. Once the process is completed, it is impossible
to revert to the previous version.
::::
:::::

::::: group-tab
Odoo.sh

The process is similar to
`obtaining an upgraded test database <upgrade-request-test>`{.interpreted-text
role="ref"} on the `Production`{.interpreted-text role="guilabel"}
branch.

![View from the upgrade tab](upgrade/odoo-sh-prod.png)

The process is **triggered as soon as a new commit is made** on the
branch. This allows the upgrade process to be synchronized with the
deployment of the custom modules\' upgraded source code. If there are no
custom modules, the upgrade process is triggered immediately.

:::: important
::: title
Important
:::

The database is unavailable throughout the process. If anything goes
wrong, the platform automatically reverts the upgrade, as it would be
for a regular update. In case of success, a backup of the database
before the upgrade is created.
::::

The update of your custom modules must be successful to complete the
entire upgrade process. Make sure the status of your staging upgrade is
`successful`{.interpreted-text role="guilabel"} before trying it in
production. More information on how to upgrade your custom modules can
be found on `/developer/howtos/upgrade_custom_db`{.interpreted-text
role="doc"}.
:::::

::::: group-tab
On-premise

The command to upgrade a database to production is similar to the one of
upgrading a test database except for the argument [test]{.title-ref},
which must be replaced by \`production\`:

``` console
$ python <(curl -s https://upgrade.odoo.com/upgrade) production -d <your db name> -t <target version>
```

An upgraded production database can also be requested via the [Upgrade
page](https://upgrade.odoo.com).

Once the database is uploaded, any modification to your production
database will **not** be present on your upgraded database. This is why
we recommend not using it during the upgrade process.

:::: important
::: title
Important
:::

When requesting an upgraded database for production purposes, the copy
is submitted without a filestore. Therefore, the upgraded database
filestore must be merged with the production filestore before deploying
the new version.
::::
:::::
::::::::::::

In case of an issue with your production database, you can request the
assistance of Odoo by going to the [Support page and selecting \"An
issue related to my upgrade
(production)\"](https://www.odoo.com/help?stage=post_upgrade).

## Service-level agreement (SLA) {#upgrade-sla}

With Odoo Enterprise, upgrading a database to the most recent version of
Odoo is **free**, including any support required to rectify potential
discrepancies in the upgraded database.

Information about the upgrade services included in the Enterprise
Licence is available in the
`Odoo Enterprise Subscription Agreement <upgrade>`{.interpreted-text
role="ref"}. However, this section clarifies what upgrade services you
can expect.

### Upgrade services covered by the SLA {#upgrade-sla-covered}

Databases hosted on Odoo\'s cloud platforms (Odoo Online and Odoo.sh) or
self-hosted (On-Premise) can benefit from upgrade services at all times
for:

- the upgrade of all **standard applications**;
- the upgrade of all **customizations created with the Studio app**, as
  long as Studio is still installed and the respective subscription is
  still active; and
- the upgrade of all **developments and customizations covered by a
  maintenance of customizations subscription**.

Upgrade services are limited to the technical conversion and adaptation
of a database (standard modules and data) to make it compatible with the
version targeted by the upgrade.

### Upgrade services not covered by the SLA {#upgrade-sla-not-covered}

The following upgrade-related services are **not** included:

- the **cleaning** of pre-existing data and configurations while
  upgrading;
- the upgrade of **additional modules not covered by a maintenance
  contract** that are created in-house or by third parties, including
  Odoo partners; and
- **training** on using the upgraded version\'s features and workflows.

::: seealso
\- `Odoo.sh documentation <odoo_sh>`{.interpreted-text role="doc"} -
`Supported Odoo versions <standard_extended_support>`{.interpreted-text
role="doc"}
:::


