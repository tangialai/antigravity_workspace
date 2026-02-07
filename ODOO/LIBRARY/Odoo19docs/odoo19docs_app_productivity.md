# ODOO DOCUMENTATION SUMMARY - CATEGORY: ODOO19DOCS_APP_PRODUCTIVITY



--- SOURCE: productivity/ai/agents.md ---

# AI agents

An AI agent is a smart assistant in Odoo that can understand natural
language, perform tasks, and assist users by interacting with Odoo
tools. Agents are a core component of the AI structure in Odoo. Each
agent has a defined purpose, prompt, and a set of topics and tools that
guide its behavior.

Agents are formed of two main components, *Topics* and *Sources*.

> - *Topics* are the instructions and roles that inform the agent of
>   what tasks they need to complete. *Tools* are assigned to topics,
>   and are the actual functions the agent can utilize to perform tasks.
> - *Sources* provide the agent with the information they need to
>   complete their tasks.

:::: important
::: title
Important
:::

While many AI features can be used in Odoo without the **AI**
application, creating and customizing agents requires that the **AI**
application is installed.
::::

## AI prompts in Odoo {#ai/agents/prompts-in-odoo}

Before working with AI agents, it is important to understand some basics
concepts regarding AI prompts.

An AI prompt is a set of written instructions or context given to an AI
model that tells it how to respond to a request, or what role to take.
Prompts can define:

- the tone, style, and persona of the AI model
- the scope of what the model can do
- the type of output expected from the request

In Odoo, each AI agent is assigned a `System Prompt`{.interpreted-text
role="guilabel"}, which defines the agent\'s overall role, purpose, and
behavior. It acts as the core mission statement of the agent, and drives
all interactions.

Each `Topic <ai/topics>`{.interpreted-text role="ref"} also includes its
own prompt-like component, called `Instructions`{.interpreted-text
role="guilabel"}. Instructions are topic-specific guidelines that refine
how the agent behaves within a certain context or workflow, and how it
interacts within the Odoo framework.

Instructions often include:

- A purpose, or what the topic covers
- Rules or constraints for the agent to follow when assigned this topic
- Step-by-step workflows for how to complete a specific action
- Technical details needed to complete any actions

## Agent structure

### Topics {#ai/topics}

*Topics* are a collection of instructions and
`tools <ai/tools>`{.interpreted-text role="ref"} that define how an
agent behaves within a specific context. Essentially, the topics define
what an agent can do within the database. Topics guide conversations,
telling the agent what it can do, how it can do it, and when it should
do it.

:::: important
::: title
Important
:::

If an agent is not assigned any Topics, it is only able to provide
information, not complete tasks or make changes to the database.
::::

Within each topic includes a detailed prompt, which provides the agent
with more in-depth instructions on how to perform the tasks associated
with that topic, define the boundaries of its behavior, and determine
how it should interpret user intent. These prompts ensure that the agent
follows a consistent reasoning pattern and uses the appropriate tools to
generate accurate, context-aware responses.

The following topics are preconfigured in the **AI** app:

- `Natural Language Search`{.interpreted-text role="guilabel"}: supports
  the interpretation of a user query to open the appropriate Odoo view
  with a set of tools necessary to perform the search.
- `Information retrieval`{.interpreted-text role="guilabel"}: a
  collection of tools to retrieve information about the models.
- `Create Leads`{.interpreted-text role="guilabel"}: a collection of
  tools to support automated lead creation. This topic is **only**
  available if the **CRM** app is installed.

Within each topic is a set of `Instructions`{.interpreted-text
role="guilabel"}, which act as a prompt and provide guidance for the
structure of the interaction, and one or more
`AI Tools <ai/tools>`{.interpreted-text role="ref"}, which indicate the
functions the agent can perform.

#### Tools {#ai/tools}

*Tools* are the functions the agent can perform in Odoo. These include
actions like creating a lead or opening a view. Tools extend the purpose
of the agent beyond conversations, they enable real actions. The
available tools in a database vary based on the applications installed.
Multiple `AI Tools`{.interpreted-text role="guilabel"} can be assigned
to a single topic.

### Sources

Sources are the data the agent can refer to when generating responses or
completing tasks. Sources are indexed so the agent can retrieve relevant
information when a user asks a question.

::: example
An agent designed to answer customer support questions has **Knowledge**
articles included as sources, which include frequently asked questions.
:::

Sources can be in the following formats:

> - PDFs
> - Weblinks
> - Documents (uploaded in the **Documents** application)
> - **Knowledge** app articles

:::: important
::: title
Important
:::

If the `Restrict to Sources`{.interpreted-text role="guilabel"} option
is enabled on an agent, the agent can **only** utilize information from
the uploaded and active sources.
::::

## Create a new agent

To create a new AI agent, navigate to the
`AI app --> New`{.interpreted-text role="menuselection"}. Enter an
`Agent
Name`{.interpreted-text role="guilabel"}, then add a short description,
if desired.

:::: tip
::: title
Tip
:::

Before creating a new agent, it is recommended to have a clear use case
in mind. This helps when writing out the
`System Prompt`{.interpreted-text role="guilabel"}, and assigning the
`Topics`{.interpreted-text role="guilabel"} and `AI
Tools`{.interpreted-text role="guilabel"}.
::::

Select an `LLM Model`{.interpreted-text role="guilabel"} from the
drop-down menu.

:::: important
::: title
Important
:::

Odoo supports multiple versions of both ChatGPT and Gemini.
::::

Next, select a `Response Style`{.interpreted-text role="guilabel"}. This
manages the overall tone the agent uses when responding to an inquiry.
Choose from one of the following options:

> - `Analytical`{.interpreted-text role="guilabel"}: more mathematical,
>   this option is more likely to give the same answer to the same
>   question. This option is recommended for situations where accuracy
>   is more important than diplomacy.
> - `Balanced`{.interpreted-text role="guilabel"}: a mix of both
>   *Analytical* and *Creative*. This is an excellent option for
>   situations with outside customers who would benefit from **both**
>   accuracy and diplomacy.
> - `Creative`{.interpreted-text role="guilabel"}: approaches questions
>   in a more human way, changes answers every time to react to the
>   conversation. This option works best for times when the solutions
>   often vary based on the situation.

Tick the `Restrict to Sources`{.interpreted-text role="guilabel"}
checkbox to limit the agent to **only** respond based on the provided
resources.

Next, select one or more `Topics`{.interpreted-text role="guilabel"} for
the agent. As explained above, `Topics
<ai/topics>`{.interpreted-text role="ref"} include both instructions and
tools that guide the agent in helping users complete a task.

Enter a `System Prompt`{.interpreted-text role="guilabel"} with detailed
instructions for the agent as to their role and responsibilities.

:::: tip
::: title
Tip
:::

The specificity and length of the `System Prompt`{.interpreted-text
role="guilabel"} can vary, depending on the use case for the agent. Use
the preconfigured agents as an example of the possible information.
::::

![A new agent form with the required information.](agents/new-agent.png)

If *Sources* are needed for the agent, scroll to the
`Sources`{.interpreted-text role="guilabel"} tab, then click
`Add a source`{.interpreted-text role="guilabel"}.

Select a format:

> - PDFs: Select the appropriate file from the explorer window, and
>   click `Open`{.interpreted-text role="guilabel"}
> - Weblinks: paste the URL. Multiple links can be added at once, paste
>   one link per line. Click `Save`{.interpreted-text role="guilabel"}.
> - Documents (uploaded in the **Documents** application): Tick the
>   checkbox next to one or more documents, then click
>   `Select`{.interpreted-text role="guilabel"}.
> - **Knowledge** app articles: Tick the checkbox next to one or more
>   articles, then click `Select`{.interpreted-text role="guilabel"}.

Once a source is added, the `Status`{.interpreted-text role="guilabel"}
field updates to reflect its current status. The source is ready when
the status changes from *Processing* to *Indexed*. Slide the
`Active`{.interpreted-text role="guilabel"} toggle to activate the
source.

![A list of sources for an agent, each denoted with their format.](agents/sources.png)

:::: important
::: title
Important
:::

If a source fails to upload, it could be the result of a conflict with
the selected LLM model.
::::

Click the `Test`{.interpreted-text role="guilabel"} button to open a
conversation window and test the new agent.




--- SOURCE: productivity/ai/apikeys.md ---

# AI API keys

Odoo\'s **AI** application settings contain options to control which
`AI (artificial intelligence)`{.interpreted-text role="abbr"} provider
the app utilizes, manage
`API (application program interface)`{.interpreted-text role="abbr"}
credentials, and define the default prompts. Odoo supports both Gemini
and OpenAI (ChatGPT) as providers in the **AI** application.

Some `AI (artificial intelligence)`{.interpreted-text role="abbr"}
features can be used without the **AI** app installed. However, to use
custom `API (application program interface)`{.interpreted-text
role="abbr"} credentials or to alter the
`AI (artificial intelligence)`{.interpreted-text role="abbr"} provider
used for a specific agent, the app **must** be installed.

:::: important
::: title
Important
:::

`API (application program interface)`{.interpreted-text role="abbr"}
keys are required for
`Odoo.sh </../../../../administration/odoo_sh>`{.interpreted-text
role="doc"} or
`On-premise </../../../../administration/on_premise>`{.interpreted-text
role="doc"} databases to use
`AI (artificial intelligence)`{.interpreted-text role="abbr"} features.

While
`Odoo Online </../../../../administration/odoo_online>`{.interpreted-text
role="doc"} users can add their own
`API (application program interface)`{.interpreted-text role="abbr"}
keys, it is not required. However, some organizations may prefer to use
their own keys for greater control over permissions, version updates, or
internal policy compliance.
::::

## Create API key for ChatGPT {#ai/apikeys/chatgpt}

To create an `API (application program interface)`{.interpreted-text
role="abbr"} key for ChatGPT, visit [API Key
Page](https://platform.openai.com/api-keys). Click
`Login`{.interpreted-text role="guilabel"} and enter the login
information for the OpenAI account.

On the *API Keys* page, click `Create new secret key`{.interpreted-text
role="guilabel"}.

![The API keys page in OpenAI.](apikeys/create-new-key.png)

This opens the `Create new secret key`{.interpreted-text
role="guilabel"} pop-up. Select the owner of the new key:

- `You`{.interpreted-text role="guilabel"}: the new key is tied to the
  user account and can make requests against the selected project. If
  the user is removed from the organization or project, this key is
  disabled.
- `Service account`{.interpreted-text role="guilabel"}: creates a new
  bot member, or service account, of the project. The key is attached to
  the bot member.

Next, enter a `Name`{.interpreted-text role="guilabel"} for this key.
This is optional, but recommended. Then, select the
`Project`{.interpreted-text role="guilabel"} from the drop-down menu.
Finally, select the appropriate `Permissions`{.interpreted-text
role="guilabel"}.

![The popup where new api keys are created in OpenAI.](apikeys/create-key-popup.png)

:::: note
::: title
Note
:::

Setting the `Permissions`{.interpreted-text role="guilabel"} to
`Restricted`{.interpreted-text role="guilabel"} requires setting the
read and write permissions to multiple resources individually. For more
information, see [OpenAI Platform
Docs](https://platform.openai.com/docs/overview).
::::

Click `Create secret key`{.interpreted-text role="guilabel"}. On the
resulting pop-up, click `Copy`{.interpreted-text role="guilabel"} to
copy the new key.

:::: warning
::: title
Warning
:::

Once this pop-up closes, the key **cannot** be viewed again. If it is
lost, a new key will need to be created.

![The popup displaying the newly created OpenAI key.](apikeys/save-openai-key.png)
::::

Return to Odoo, and navigate to
`AI app --> Configuration --> Settings`{.interpreted-text
role="menuselection"}. Under *Providers*, tick the checkbox for
`Use your own ChatGPT account`{.interpreted-text role="guilabel"}, and
paste the new key in the `Key`{.interpreted-text role="guilabel"} field.
Click `Save`{.interpreted-text role="guilabel"} when finished.

## Create an API key for Google Gemini {#ai/apikeys/gemini}

To create an `API (application program interface)`{.interpreted-text
role="abbr"} key for Google Gemini, visit [API
Keys](https://aistudio.google.com/app/api-keys). Enter the login
information for the Google account, and click `Next`{.interpreted-text
role="guilabel"} to open Google
`AI (artificial intelligence)`{.interpreted-text role="abbr"} Studio. In
the top right corner, click `Create API Key`{.interpreted-text
role="guilabel"}.

![The Gemini api keys page.](apikeys/create-gemini-api-key.png)

On the *Create a new key* pop-up, enter a title in the
`Name your key`{.interpreted-text role="guilabel"} field. Next, use the
`Choose an imported project`{.interpreted-text role="guilabel"}
drop-down to select a project, or import a new one. Click
`Create key`{.interpreted-text role="guilabel"}.

On the *API Keys* page, find the appropriate key and click the copy
icon.

![The new Gemini key with the copy button highlighted.](apikeys/copy-gemini-key.png)

Return to Odoo, and navigate to
`AI app --> Configuration --> Settings`{.interpreted-text
role="menuselection"}. Under *Providers*, tick the checkbox for
`Use your own Google Gemini account`{.interpreted-text role="guilabel"},
and paste the new key in the `Key`{.interpreted-text role="guilabel"}
field. Click `Save`{.interpreted-text role="guilabel"} when finished.

## Pricing

Utilizing `API (application program interface)`{.interpreted-text
role="abbr"} keys for `AI (artificial intelligence)`{.interpreted-text
role="abbr"} may require additional fees through the provider. The exact
costs depend on the `AI (artificial intelligence)`{.interpreted-text
role="abbr"} model used and the account type with each provider.

For additional information on
`ChatGPT <ai/apikeys/chatgpt>`{.interpreted-text role="ref"} pricing,
visit [OpenAI API Pricing](https://openai.com/api/pricing/).

For additional information on
`Google Gemini <ai/apikeys/gemini>`{.interpreted-text role="ref"}
pricing, visit [Gemini API
Pricing](https://ai.google.dev/gemini-api/docs/pricing).




--- SOURCE: productivity/ai/fields.md ---

# AI fields

`AI (Artificial Intelligence)`{.interpreted-text role="abbr"} fields
allow users to utilize Odoo\'s built-in AI capabilities directly in
forms and records. When an
`AI (Artificial Intelligence)`{.interpreted-text role="abbr"} field is
configured, the system can generate or suggest values automatically
based on the record\'s context, existing data, or external information.

This feature is especially useful for creating product descriptions,
summarizing notes, or generating structured content from unstructured
data.

## Adding a new AI field {#ai/add-a-new-field}

`AI (Artificial Intelligence)`{.interpreted-text role="abbr"} fields can
be added to a record through the Studio app or property field.

:::: warning
::: title
Warning
:::

`Installing Studio <general/install>`{.interpreted-text role="ref"} may
impact the current pricing plan for a database. For more information,
refer to [Odoo\'s pricing page](https://www.odoo.com/pricing-plan) or
contact your account manager.
::::

First, navigate to the page in the database where a new field is needed.
Then, click on the `oi-studio`{.interpreted-text role="icon"}
`studio`{.interpreted-text role="guilabel"} icon to open the app. On the
left sidebar, click and drag the `AI Field`{.interpreted-text
role="guilabel"} option and place it in the desired location on the
record.

![Adding a new field to a record.](fields/new-ai-field.png)

After the field is placed, an `Add an AI Field`{.interpreted-text
role="guilabel"} pop-up opens. Use the `Field
Type`{.interpreted-text role="guilabel"} drop-down menu to select a
`field type <../../studio/fields>`{.interpreted-text role="doc"}:

> - Text
> - Multiline Text
> - HTML
> - Integer
> - Decimal
> - Monetary
> - Date
> - Datetime
> - Checkbox
> - Many2one
> - Tags

Next is the `Prompt`{.interpreted-text role="guilabel"} field. In Odoo,
`prompts <ai/agents/prompts-in-odoo>`{.interpreted-text role="ref"}
define the instructions that guide the
`AI (Artificial Intelligence)`{.interpreted-text role="abbr"} when
generating or improving the content of the
`AI (Artificial Intelligence)`{.interpreted-text role="abbr"} field. The
prompt tells the system what kind of information to produce, how to
format it, and what tone or style to use.

When creating a prompt, use the [/field]{.title-ref} command to
reference specific fields in the database. For example, to reference the
`Company`{.interpreted-text role="guilabel"} field on a record, enter
[/field]{.title-ref}, and click the `Field Selector`{.interpreted-text
role="guilabel"} option. Type [Company]{.title-ref} in the search bar,
and select `Company`{.interpreted-text role="guilabel"} from the list.

![The add a field pop-up where the ai prompt is entered.](fields/prompt.png)

Once the prompt is complete, click `Add Field`{.interpreted-text
role="guilabel"}. Before closing **Studio**, click on the left sidebar
and update the `Label`{.interpreted-text role="guilabel"} field with a
title for the new `AI (Artificial Intelligence)`{.interpreted-text
role="abbr"} field. Then click `Close`{.interpreted-text
role="guilabel"} to exit **Studio**.

After the field is added, click the
`AI (Artificial Intelligence)`{.interpreted-text role="abbr"} icon to
refresh the field value.

:::: tip
::: title
Tip
:::

If the `AI (Artificial Intelligence)`{.interpreted-text role="abbr"} is
unable to complete the request, a warning message is generated. This
could mean that the prompt is asking for information that is not
available, in the given context, or that the prompt is providing unclear
instructions. Use this as an indication to revisit the prompt and add
additional context or instructions.

![A warning message indicating the AI was unable to complete the request.](fields/warning.png)
::::

### Add via edit properties {#ai/add-a-new-field/properties}

`AI (Artificial Intelligence)`{.interpreted-text role="abbr"} fields can
also be added as property fields without opening the **Studio** app.
Click on the `fa-cog`{.interpreted-text role="icon"}
`Actions`{.interpreted-text role="guilabel"} icon and select
`fa-cogs`{.interpreted-text role="icon"}
`Edit Properties`{.interpreted-text role="guilabel"}. Tick the
`AI`{.interpreted-text role="guilabel"} checkbox, confirm the field
should be `AI (Artificial Intelligence)`{.interpreted-text
role="abbr"}-enabled, then follow the steps
`above <ai/add-a-new-field>`{.interpreted-text role="ref"} to define the
field type and enter the prompt.

![The edit properties pop-up on a form view.](fields/edit-properties.png)

:::: note
::: title
Note
:::

`Property fields <property_field/add>`{.interpreted-text role="ref"} can
only be added to form views.
::::

## Computing AI fields

To compute, or refresh, an
`AI (Artificial Intelligence)`{.interpreted-text role="abbr"} field,
click on the `AI (Artificial Intelligence)`{.interpreted-text
role="abbr"} icon next to the field. Clicking the button updates the
field based on the prompt.

Additionally, a scheduled action runs once a day to fill all
`AI (Artificial Intelligence)`{.interpreted-text role="abbr"} fields
that are currently empty. This action is active by default.

:::: tip
::: title
Tip
:::

To run the scheduled action manually, navigate to
`Settings app --> Technical -->
Automation --> Scheduled Actions`{.interpreted-text
role="menuselection"}. Click on
`AI Fields\:\ Compute AI fields`{.interpreted-text role="guilabel"} to
open it, then click `Run Manually`{.interpreted-text role="guilabel"}.
::::




--- SOURCE: productivity/ai/live-chat.md ---

# AI live chat

Odoo\'s **AI** application can be integrated with **Live Chat** to
enable agents to automatically respond to customer inquiries, qualify
conversations, and generate leads. When connected to a live chat
channel, an AI agent can answer common questions, request additional
information, and determine when a conversation needs to be escalated to
a human operator.

AI responses are generated in real-time and follow the rules and
instructions defined in the assigned agent and topics.

## Connecting an agent to live chat

First, confirm that both the **Live Chat** and **AI** applications are
installed.

:::: note
::: title
Note
:::

When both the **AI** and **Live Chat** apps are installed, a *Livechat
AI Agent* is added to the **AI** app. Other agents can be created and
used for live chat conversations, if desired.

![The preconfigured AI Live Chat agent in the AI app.](live-chat/livechat-agent.png)
::::

Navigate to the **Live Chat** application and select a live chat
channel. On the channel card, click the
`fa-ellipsis-v`{.interpreted-text role="icon"}
`(vertical ellipsis)`{.interpreted-text role="guilabel"} icon, then
click `Configure Channel`{.interpreted-text role="guilabel"}.

On the channel page, click on the `Rules`{.interpreted-text
role="guilabel"} tab. Click on an existing rule, or click
`Add a line`{.interpreted-text role="guilabel"} to add a new rule. On
the *Open: Rules* pop-up, click in the `AI
Agent`{.interpreted-text role="guilabel"} field, and select an agent
from the drop-down.

![The rules pop-up window in the live chat app.](live-chat/channel-rules.png)

:::: note
::: title
Note
:::

If a channel has both a chatbot and an AI Agent assigned, the priority
is given to the AI agent workflow.
::::

## Configuring AI behavior in live chat

The behavior and actions of the AI agent during a live chat conversation
are controlled through the agent\'s settings. To configure the
`agent <agents>`{.interpreted-text role="doc"}, navigate to the `AI app
--> Agents`{.interpreted-text role="menuselection"}. On the agent card,
click the `fa-ellipsis-v`{.interpreted-text role="icon"}
`(vertical ellipsis)`{.interpreted-text role="guilabel"} icon, then
click `Configuration`{.interpreted-text role="guilabel"}.

As the default *Livechat AI Agent* is configured to work with live chat,
this section lays out how the agent\'s prompt is used in a live chat
conversation.

### Agent identity and goals

The *Livechat AI Agent* identity helps define the agent\'s communication
style and conversation goals. At a high level, the agent is focused on
answering customer questions accurately, while also being responsible
for initiating lead creation when a request cannot be handled
confidently.

Rather than reacting message-by-message, the agent evaluates each
interaction against its defined priorities.

### How the agent answers questions

During a conversation, each incoming message is evaluated against the
agent\'s decision rules. When sufficient information is available, the
agent responds directly with a clear and concise answer.

If the available information is incomplete or uncertain, the agent does
not guess or fabricate a response. Instead, it acknowledges the
limitation and prepares to transition the conversation toward human
follow-up.

This ensures that automated responses remain accurate and trustworthy.

### How escalation is triggered

Escalation to human follow-up is defined explicitly in the agent\'s
prompt and delegated to a dedicated topic.

Conversations are escalated when one of the following occurs:

- The request requires custom pricing, contracts, or implementation
  work.
- The request involves account changes or troubleshooting.
- The user explicitly asks to be contacted or requests a demo.
- The agent cannot respond with high confidence.

When one of these conditions is met, the agent activates the *Lead
Creation* `topic
<ai/topics>`{.interpreted-text role="ref"}.

#### Lead creation topic

The Lead creation topic defines a structured, multi-step workflow that
governs how contact information is collected and how a lead is created.

This topic specifies:

- when lead creation is appropriate
- what information must be collected
- how the conversation should progress
- what language the agent may and may not use

Rather than immediately creating a lead, the agent completes the
following steps:

1.  Suggests human follow-up when appropriate
2.  Collects missing contact details one at a time
3.  Confirms known details before proceeding
4.  Calls the lead creation tool exactly once

The topic also enforces strict constraints to prevent system-centric
language, duplicate lead creation, or premature promises of follow-up.

To view the detailed instructions for the lead creation topic, navigate
to the `AI
app --> Agents --> Topics`{.interpreted-text role="menuselection"}, and
click `Create Leads`{.interpreted-text role="guilabel"}.

::: seealso
`AI Agents <agents>`{.interpreted-text role="doc"}
:::




--- SOURCE: productivity/ai/server-actions.md ---

# AI server actions

`AI (artificial intelligence)`{.interpreted-text role="abbr"} server
actions extend Odoo\'s automation framework by allowing artificial
intelligence to make decisions during a workflow.

They are designed for cases where logic cannot be expressed entirely
through fixed conditions, but still requires controlled execution
through standard server actions.

## How AI server actions work

AI-driven workflows in Odoo are built around a clear separation of
responsibilities between the
`AI (artificial intelligence)`{.interpreted-text role="abbr"} server
action, or *the Manager*, and the tool, or *the Worker*.

### AI server action: the manager

An `AI (artificial intelligence)`{.interpreted-text role="abbr"} server
action acts as a decision maker, or a manager. It reads the record and
its context. It interprets the
`AI (artificial intelligence)`{.interpreted-text role="abbr"} prompt.
And it decides which tool to call, and what arguments to use.

The server action does not enforce business rules, modify records
directly, or guarantee the correctness of the operation. Its role is
limited to decision-making.

### AI tool: the worker

A tool is a standard server action with the *Use in AI* option enabled
in its *Usage* tab. Tools contain all execution logic and perform record
updates, moves, or writes. Tools **must** enforce business rules
explicitly in Python code.

If a tool is called by the
`AI (artificial intelligence)`{.interpreted-text role="abbr"} server
action, it will execute unconditionally, unless the code itself prevents
it.

### AI server action workflow

The `AI (artificial intelligence)`{.interpreted-text role="abbr"} server
action workflow follows this sequence:

1.  A record triggers an
    `AI (artificial intelligence)`{.interpreted-text role="abbr"} server
    action.
2.  The `AI (artificial intelligence)`{.interpreted-text role="abbr"}
    prompt is evaluated, using the record as context.
3.  The `AI (artificial intelligence)`{.interpreted-text role="abbr"}
    selects one of the available tools.
4.  The `AI (artificial intelligence)`{.interpreted-text role="abbr"}
    provides arguments expected by the tool.
5.  The selected tool executes its Python code.

:::: important
::: title
Important
:::

`AI (artificial intelligence)`{.interpreted-text role="abbr"} server
actions work without custom logic only when the underlying behavior
already exists in Odoo, such as moving a document to a folder. In these
cases, the `AI (artificial intelligence)`{.interpreted-text role="abbr"}
selects parameters, and Odoo executes the action.
::::

## Use case walkthrough

The *Auto-sort documents in Inbox* example demonstrates the full
`AI (artificial intelligence)`{.interpreted-text role="abbr"} Server
Action pattern. Navigate to the *Server Actions* menu by going to
`Settings --> Technical --> Server
Actions`{.interpreted-text role="menuselection"}.

:::: note
::: title
Note
:::

This server action is designed to review documents for their content,
and add tags. The action itself does **not** move documents or add tags,
it only decides which tool should be used, based on the documents\'
content.

The `Model`{.interpreted-text role="guilabel"} for the action is listed
as *Document*, and the `Type`{.interpreted-text role="guilabel"} is
*AI*.
::::

![The record for the Auto-sort documents in inbox server action.](server-actions/ai-auto-sort.png)

The prompt for this action provides context about the document, as well
as intent of the action.

The `Tool`{.interpreted-text role="guilabel"} field includes several
actions that may be taken based on this prompt, including moving a
document, adding tags, or creating invoices or bills.

:::: note
::: title
Note
:::

*AI: Add Tags*, *AI: Move to Folder*, and *AI: Rename Document* are all
*Execute Code* server actions, meaning they trigger python code.
::::

For example, if the action determines, based on the content of the
document, that the most appropriate tool is *AI: Move to Folder*, the
Python code performs the following operation:

``` python
ai['result'] = record._ai_action_move_in_folder(folder_id)
```

This code, executes unconditionally when called and performs the move
using an existing method.

:::: note
::: title
Note
:::

The `AI (artificial intelligence)`{.interpreted-text role="abbr"} does
not infer arguments from the Python code or from the method signature.
Instead, arguments passed to a tool are determined entirely by the
tool\'s configuration.

For the *AI: Move to Folder* tool, the Python code expects a variable
named [folder_id]{.title-ref}. The
`AI (artificial intelligence)`{.interpreted-text role="abbr"} knows to
provide [folder_id]{.title-ref} because it is explicitly declared as an
argument in the configuration. This can be found on the *Usage* tab of
the server action, in the `AI
Schema`{.interpreted-text role="guilabel"} field. The
`Name`{.interpreted-text role="guilabel"} column under *AI Schema* must
match the variable name used in the Python code exactly.

The `AI (artificial intelligence)`{.interpreted-text role="abbr"} uses
the argument description to understand what the parameter represents,
what type of value is expected, and when it is appropriate to supply it.

If an argument is not defined in the Usage tab, the AI cannot provide
it, even if the Python code references it.

![The usage tab of the AI move to folder server action.](server-actions/ai-move-to-folder.png)
::::

## Creating custom AI tools

The same pattern in the *Auto-sort documents in Inbox* example above can
be implemented using standard Odoo logic. For example, to create an
action that can update a task description, an *Execute Code* action
could be created with the following code:

``` python
record.write({'description': content})
```

To function correctly, [content]{.title-ref} **must** be defined as an
argument in tool\'s *Usage* tab.

::: seealso
`Server Actions <reference/actions/server>`{.interpreted-text
role="ref"}
:::

## Common issues

### Why is the Tools field empty?

- Confirm that at least one server action has
  `Use in AI`{.interpreted-text role="guilabel"} enabled.
- Confirm that at least one tool is assigned to the same model
  `Model`{.interpreted-text role="guilabel"} as the server action.

### Why did the tool run but nothing happened?

- The Python code exited without changes.
- Required arguments were missing or empty.
- Business conditions were not implemented in the tool logic.

### Why did the AI choose an unexpected tool?

- The prompt lacked sufficient context.
- Multiple tools matched the same intent.
- No constraints were enforced at the tool level.




--- SOURCE: productivity/ai/webpage.md ---

# AI webpage generator

Within Odoo\'s **Website** application,
`AI (Artificial Intelligence)`{.interpreted-text role="abbr"} can be
utilized to generate original webpages. By providing Odoo with a prompt,
the `AI (Artificial Intelligence)`{.interpreted-text role="abbr"} agent
generates a design and content that suits the business\'s needs, style,
and tone.

:::: note
::: title
Note
:::

The **AI** application does **not** need to be installed on the database
to use the webpage generator, only the **Website** app.
::::

## Generating a new webpage

First, navigate to the `Website app`{.interpreted-text
role="menuselection"}. In the top-right of the page, click
`New`{.interpreted-text role="guilabel"}, then click
`Page`{.interpreted-text role="guilabel"}.

![Adding a new page to a website in Odoo.](webpage/new-page.png)

On the `New Page`{.interpreted-text role="guilabel"} pop-up, select the
desired page type.

:::: note
::: title
Note
:::

The `AI (Artificial Intelligence)`{.interpreted-text role="abbr"}
webpage generator is not available on the *Blank* page type.
::::

Clicking on a page type opens a `New Page`{.interpreted-text
role="guilabel"} pop-up. Enter a `Page Title`{.interpreted-text
role="guilabel"}, then slide the `AI Generate Text`{.interpreted-text
role="guilabel"} toggle to active to reveal the
`Instructions`{.interpreted-text role="guilabel"} field. Here, enter a
short description of the page being created. This should include a few
important keywords that help define the focus and scope of the page.

Next, select one of the tone options for the page:

> - `Concise`{.interpreted-text role="guilabel"}
> - `Professional`{.interpreted-text role="guilabel"}
> - `Friendly`{.interpreted-text role="guilabel"}
> - `Persuasive`{.interpreted-text role="guilabel"}
> - `Informative`{.interpreted-text role="guilabel"}

![The new page pop-up with the Generate AI text options visible.](webpage/generate-page.png)

When finished, click `Create with AI`{.interpreted-text
role="guilabel"}. It may take a few moments for the webpage to load.
Content created by the `AI (Artificial Intelligence)`{.interpreted-text
role="abbr"} generator can be edited. Click `Edit`{.interpreted-text
role="guilabel"} on the toolbar on the right side of the page, then
click on a block of text to make changes. Click `Save`{.interpreted-text
role="guilabel"} when finished.

:::: tip
::: title
Tip
:::

The webpage generator may have created buttons. Before publishing the
webpage, confirm that all buttons are linked to an active webpage.
::::

After reviewing the page, slide the `Unpublished`{.interpreted-text
role="guilabel"} toggle to active to publish the page.

::: seealso
`Web design <../../websites/website/web_design>`{.interpreted-text
role="doc"}
:::




--- SOURCE: productivity/ai.md ---

show-content

:   

hide-toc

:   

# AI

Artificial intelligence (AI) in Odoo enhances productivity across all
apps by providing intelligent, context-aware assistance. It helps users
work faster, make better decisions, and automate routine tasks, all
while staying within the familiar Odoo interface.

## Ask AI

The `Ask AI`{.interpreted-text role="guilabel"} feature allows users to
receive assistance anywhere in an Odoo database. It understands natural
language and can answer questions, open views, and improve content.

To enter a prompt from anywhere in the database, enter
`Ctrl`{.interpreted-text role="kbd"} + `k`{.interpreted-text role="kbd"}
to open the command palette. From here, type in a prompt, then click the
`AI (artificial intelligence)`{.interpreted-text role="abbr"} icon or
hit enter. This opens a conversation window with the *Ask AI* agent.

![An open command palatte with a prompt.](ai/command-palatte.png)

:::: important
::: title
Important
:::

The *Ask AI* agent is instructed not to display an error to a user. If
it is unable to complete the requested query, it responds that it is
unable to complete the request at that time.
::::

After the agent has responded, hover over the response to do one of the
following:

> - `Send as Message`{.interpreted-text role="guilabel"}: opens an email
>   pop-up with the contents of the response in the body of the message.
>   The message can be edited before it is sent.
> - `Log as Note`{.interpreted-text role="guilabel"}: opens a chatter
>   pop-up with the contents of the response. The note can be edited
>   before it is logged as a note.
> - `fa-copy`{.interpreted-text role="icon"} `(Copy)`{.interpreted-text
>   role="guilabel"}: copies the contents of the response to the
>   clipboard.
>
> ![A response from an agent with the send, log, and copy options visible.](ai/response-options.png)

:::: note
::: title
Note
:::

These options are pre-configured *Default Prompts*. The default prompts
can be edited, and new prompts can be added through the **AI**
application.
::::

:::: tip
::: title
Tip
:::

To open the conversation with the agent in the **Discuss** app, click on
the header of the conversation window, then click
`fa-expand`{.interpreted-text role="icon"}
`Open in Discuss`{.interpreted-text role="guilabel"}.

![The header of a conversation window with the open in discuss option visible.](ai/open-in-discuss.png)
::::

### AI button

In addition to the command palette, the
`AI (artificial intelligence)`{.interpreted-text role="abbr"} button can
be utilized to open a conversation with the *Ask AI* agent as well. The
`AI (artificial intelligence)`{.interpreted-text role="abbr"} button is
located in the top-right corner of the screen and is available
throughout the database regardless of what app the user is currently
using.

After clicking the `AI (artificial intelligence)`{.interpreted-text
role="abbr"} button, a conversation window opens with the *Ask AI*
agent. Either type a request in the message field or click one of the
preconfigured message prompts.

![The AI button opens a window that includes suggested conversation
prompts. The prompts vary based on where in the database the button was
clicked.](ai/ai-button.png){alt="The AI button opens a window that includes suggested conversation prompts."}

## Common requests

Below are some common requests that the *Ask AI* agent can assist with:

- Translation: *Translate the most recent chatter message*
- Summarize: *Summarize this chatter thread*
- Text generation: *Generate a follow-up message*
- Improve: *Improve this message draft*
- Suggest: *Suggest next steps for the sales rep/support agent*

:::: important
::: title
Important
:::

The standard *Ask AI* agent **cannot** make changes to the database. As
such, it can open views and display reports, but it cannot create leads
or alter data. For more information on customizing agents to complete
tasks, see `Topics <ai/topics>`{.interpreted-text role="ref"}.
::::

::: {.toctree titlesonly=""}
ai/apikeys ai/agents ai/fields ai/webpage ai/live-chat ai/server-actions
:::




--- SOURCE: productivity/appointments/create-opps.md ---

# Create opportunities from appointments

When creating a new appointment type in the **Appointments**
application, users have the option to create new *opportunities* with
information from new bookings. This option captures information from
scheduled appointments and creates opportunities in the **CRM** app.

:::: important
::: title
Important
:::

This option is only available if the **CRM** application is installed on
the database.
::::

## Configuration

Navigate to the **Appointments** app dashboard. Click
`New`{.interpreted-text role="guilabel"} to `create a new
appointment type <../appointments>`{.interpreted-text role="doc"}. To
edit an existing appointment type, click `fa-cog`{.interpreted-text
role="icon"} `Action`{.interpreted-text role="guilabel"} at the
far-right of the appointment line, to open the drop-down menu, then
click `fa-pencil`{.interpreted-text role="icon"}
`Edit`{.interpreted-text role="guilabel"}.

![The edit button on an appointment type record.](create-opps/edit-appointment.png)

On the appointment type record, click the `Options`{.interpreted-text
role="guilabel"} tab, and tick the `Create
Opportunities`{.interpreted-text role="guilabel"} checkbox.

![The options tab on an appointment type form.](create-opps/options-tab.png)

### Add questions

The `Questions`{.interpreted-text role="guilabel"} tab allows users to
`add questions <appointments/questions>`{.interpreted-text role="ref"}
to the appointment booking page. When customers are booking an
appointment slot, they are prompted to answer these questions. The
information provided by customers is available in the `new
opportunity <appointments/new-opp>`{.interpreted-text role="ref"}.
Adding questions to the appointment type is optional. However, the
additional information captured by the questions can be useful later in
the sales pipeline.

::: example
A furniture company creates a new appointment type for sales demos.
Customers reserve time with salespeople to discuss their furniture and
design needs. However, because the time is limited to only thirty minute
increments, salespeople do not have the time to show all of the
available furniture styles in every call. They add questions to the
appointment type to prompt customers to provide additional information
about the products and services they are interested in. Not only does
this help when preparing for the demo, it also provides clarity further
along in the sales process.

![An appointment booking form with custom questions.](create-opps/custom-questions.png)
:::

## Viewing the new opportunity {#appointments/new-opp}

To view opportunities created from appointments, navigate to the
`CRM`{.interpreted-text role="menuselection"} app dashboard. If
necessary, remove any filters from the search bar. Then, click the
Kanban card for the appropriate opportunity to open it.

The contact information from the appointment is added to the opportunity
record. The answers the customer provided to the optional questions are
included in the `Internal Notes`{.interpreted-text role="guilabel"} tab.
The scheduled appointment is listed in the *Chatter* of the record, and
can be edited from there.

![The chatter of an opportunity in the CRM with the scheduled appointment information.](create-opps/opp-chatter.png)

:::: note
::: title
Note
:::

If an opportunity is created from a
`resource based <appointments/resources>`{.interpreted-text role="ref"}
appointment type, the user who created the appointment type is listed as
the `Salesperson`{.interpreted-text role="guilabel"} for the
opportunity. If it is created from a user based appointment, the user
the appointment is scheduled with is assigned as the
`Salesperson`{.interpreted-text role="guilabel"}.
::::




--- SOURCE: productivity/appointments.md ---

show-content

:   

hide-toc

:   

# Appointments

Odoo\'s **Appointments** app is a self-service scheduling app that
simplifies the process of booking meetings, consultations, or services.
Integrated with Odoo\'s suite of business apps, it allows companies to
automate appointment scheduling, reduce manual coordination, and provide
a seamless experience for clients. Appointments can be linked to
calendars, **CRM** opportunities, employee schedules, and more, making
it an ideal tool for service-based businesses seeking efficiency and
organization.

## Configuration

The **Appointments** app allows for new appointments to be scheduled
based on the availability of users, or the availability of *resources*,
such as meeting rooms or seating areas. To create a new resource, or
manage existing resources, navigate to `Appointments --> Configuration
--> Resources`{.interpreted-text role="menuselection"}. This opens a
list of the available resources in the database, as well as their
individual capacity.

### Resources {#appointments/resources}

Click `New`{.interpreted-text role="guilabel"} to create a new resource.
On the blank record, enter a `Name`{.interpreted-text role="guilabel"}
for the new resource. In the `Capacity`{.interpreted-text
role="guilabel"} field, enter the maximum number of people the resource
can accommodate. Then, confirm the `Timezone`{.interpreted-text
role="guilabel"} for this resource.

If desired, select one or more `Linked Resource`{.interpreted-text
role="guilabel"} from the drop-down. This option designates one or more
resources that can be used in combination to handled a bigger demand.

:::: important
::: title
Important
:::

*Linked resources* are only used when using the
`auto-assign <appointments/configure>`{.interpreted-text role="ref"}
`Assignment Method`{.interpreted-text role="guilabel"}.
::::

Lastly, add a `Description`{.interpreted-text role="guilabel"} for this
resource. The contents of the `Description`{.interpreted-text
role="guilabel"} tab are visible to customers when booking an
appointment online.

#### Resource capacity

When booking an appointment based on resource availability, the website
only displays capacity up to [12]{.title-ref}. This occurs even if the
resource has a higher capacity. To avoid this, a new *System Parameter*
needs to be added to the database.

First, ensure that `developer mode <developer-mode>`{.interpreted-text
role="ref"} is enabled. Then, navigate to the
`Settings app --> Technical --> Parameters --> System Parameters`{.interpreted-text
role="menuselection"}. Click `New`{.interpreted-text role="guilabel"} to
add a new parameter.

In the `Key`{.interpreted-text role="guilabel"} field, enter
[appointment.resource_max_capacity_allowed]{.title-ref}. In the
`Value`{.interpreted-text role="guilabel"} field, enter the maximum
capacity that should be allowed. Click
`fa-cloud-upload`{.interpreted-text role="icon"}
`(Save manually)`{.interpreted-text role="guilabel"} when finished.

![The new system parameter for capacity limits.](appointments/system-parameter.png)

## Appointment type configuration {#appointments/configure}

Before appointments can be scheduled or booked, an appointment type must
be created. Navigate to the `Appointments`{.interpreted-text
role="menuselection"} app dashboard and click `New`{.interpreted-text
role="guilabel"}. On the new blank record, enter an
`Appointment Title`{.interpreted-text role="guilabel"}, then set a
`Duration`{.interpreted-text role="guilabel"} for this appointment type.

Next, set a `Pre-Booking Time`{.interpreted-text role="guilabel"}. This
is the minimum amount of time between when an appointment can be booked
and when the appointment can begin. If the
`Pre-Booking Time`{.interpreted-text role="guilabel"} is [1]{.title-ref}
hour, appointments must be booked *at least* [1]{.title-ref} hour in
advance.

::: example
An appointment type is created for [Tennis Courts]{.title-ref}, with a
`Duration`{.interpreted-text role="guilabel"} of [1]{.title-ref} hour,
and a `Pre-Booking Time`{.interpreted-text role="guilabel"} of
[1]{.title-ref} hour. At [02:00]{.title-ref} PM, a customer attempts to
book an appointment for the same day at [02:45]{.title-ref} pm. The
first available time is [04:00]{.title-ref} pm.

![An example of the booking calendar showing available times.](appointments/pre-booking-example.png)
:::

Select a `Scheduling Window`{.interpreted-text role="guilabel"}:

- Select `Available now`{.interpreted-text role="guilabel"} to allow
  customers to book an appointment immediately. Use the
  `Up to X days into the future`{.interpreted-text role="guilabel"}
  field to define how far in advance customers can schedule
  appointments. For example, if [14]{.title-ref} is entered, customers
  cannot book anything more than 14 days from the current date.
- Select `Within a date range`{.interpreted-text role="guilabel"} to
  limit bookings to a specific range of dates. After selecting this
  option, click the `From`{.interpreted-text role="guilabel"} and
  `to`{.interpreted-text role="guilabel"} fields, and use the calendar
  pop-up window to customize the date and time range.

Update the `Allow Cancelling`{.interpreted-text role="guilabel"} field
to limit the amount of time before an appointment where a customer can
cancel. If this setting is enabled, customers are unable to cancel
within the designated time frame.

:::: note
::: title
Note
:::

If a customer does try to cancel within the time frame, they receive an
error message with contact information. If the appointment is for a
resource, the contact details are for the user that created the
appointment type. If the appointment is for a user, the contact details
are for the user the appointment is with.

![An example of the message a customer sees when cancelling.](appointments/cancellation-message.png)
::::

Next, designate whether this appointment type is based on
`Users`{.interpreted-text role="guilabel"} or
`Resources`{.interpreted-text role="guilabel"}, by selecting the
appropriate radio button. If it is based on users, select one or more
`Users`{.interpreted-text role="guilabel"} in the drop-down. If it is
based on `resources
<appointments/resources>`{.interpreted-text role="ref"}, select one or
more `Resources`{.interpreted-text role="guilabel"} in the drop-down.

:::: tip
::: title
Tip
:::

User-based appointment types can be used for scheduling sales meetings
and demos, as well as recruiting interviews.

Resource-based appointment types can be used for scheduling time in
specific rooms or locations.
::::

Selecting `Resources`{.interpreted-text role="guilabel"} in the
`Availability on`{.interpreted-text role="guilabel"} field reveals the
`Manage Capacities`{.interpreted-text role="guilabel"} option. If
selected, the appointment limits the number of participants based on the
capacity of the resources selected.

Choose an `Assignment Method`{.interpreted-text role="guilabel"} by
selecting the appropriate radio button:

> - `Pick User/Resource then Time`{.interpreted-text role="guilabel"}:
>   customers select from a list of available users/resources, then
>   select an open time slot.
> - `Select Time then User/Resource`{.interpreted-text role="guilabel"}:
>   customers choose a date and time, then select from the list of
>   available users/resources.
> - `Select Time then auto-assign`{.interpreted-text role="guilabel"}:
>   customers select a time slot and are automatically assigned a
>   user/resource.

### Schedule tab

The `Schedule`{.interpreted-text role="guilabel"} tab is used to outline
when this appointment type is to be made available. The settings define
the time slots shown on the booking page.

Click `Add a line`{.interpreted-text role="guilabel"} to create a new
time frame. Select a day of the week from the `Every`{.interpreted-text
role="guilabel"} drop-down menu, then update the times in the
`From`{.interpreted-text role="guilabel"} and `To`{.interpreted-text
role="guilabel"} fields. Click the `fa-trash-o`{.interpreted-text
role="icon"} `(trash)`{.interpreted-text role="guilabel"} icon to delete
an entry. Multiple entries can be included for a single day.

:::: tip
::: title
Tip
:::

If an appointment should not be available at specific times, such as
when users are taking lunch, include time slots before and after.

![An example of the Schedule tab in an appointment.](appointments/schedule-tab.png)
::::

### Options tab

The `Options`{.interpreted-text role="guilabel"} tab is used to
customize the display options for this appointment, as well as
notification settings for customers and users.

The `Front-End Display`{.interpreted-text role="guilabel"} field
determines how the appointment is presented on the website to customers.
Select the `Show Pictures`{.interpreted-text role="guilabel"} radio
button to publish the default pictures of the user or resources for this
appointment on the website.

The `Timezone`{.interpreted-text role="guilabel"} and
`Location`{.interpreted-text role="guilabel"} fields automatically
populate for resource appointments, based on where the resource is
located. For user-based appointments, the `Location`{.interpreted-text
role="guilabel"} field defaults to an [Online Meeting]{.title-ref}, with
a `Videoconference Link`{.interpreted-text role="guilabel"}
automatically generated. If this should not be an online meeting, select
a different option in the `Location`{.interpreted-text role="guilabel"}
field.

Tick the `Manual Confirmation`{.interpreted-text role="guilabel"}
checkbox to require approval before a meeting is accepted. If this
feature is enabled, the appointment time slot is still considered
*reserved* until it is confirmed or rejected. Leave this checkbox blank
to automatically accept meetings created from this appointment.

The `Create Opportunities <appointments/create-opps>`{.interpreted-text
role="doc"} feature adds an opportunity to the **CRM** app for each
scheduled appointment, which is assigned to the responsible user. Tick
the `Create Opportunities`{.interpreted-text role="guilabel"} checkbox
to enable this option.

:::: important
::: title
Important
:::

This field is only visible if the **CRM** app is installed on the
database.
::::

The `Reminders`{.interpreted-text role="guilabel"} field is used to set
how customers are to be contacted before the appointment time. Select
one or more options from the drop-down, based on the communication
method, and the time frame.

Tick the `Allow Guests`{.interpreted-text role="guilabel"} checkbox to
grant customers the ability to add additional guests when registering
for an appointment.

### Questions tab {#appointments/questions}

The `Questions`{.interpreted-text role="guilabel"} tab can be used to
prompt customers for additional information while they are booking an
appointment. Click `Add a line`{.interpreted-text role="guilabel"} to
add a new question.

On the `Create Questions`{.interpreted-text role="guilabel"} pop-up
window, enter the `Question`{.interpreted-text role="guilabel"}, then
choose an `Answer Type`{.interpreted-text role="guilabel"}.

Tick the `Mandatory Answer`{.interpreted-text role="guilabel"} checkbox
to require customers to answer this question before they are allowed to
book an appointment. Click `Save & New`{.interpreted-text
role="guilabel"} to add another question, or
`Save & Close`{.interpreted-text role="guilabel"} when finished.

### Messages tab

The `Messages`{.interpreted-text role="guilabel"} tab is used by the
business to provide additional information to customers regarding this
appointment type.

:::: important
::: title
Important
:::

The content in the `Messages`{.interpreted-text role="guilabel"} tab is
visible to customers and website visitors.
::::

In the `Introduction Message`{.interpreted-text role="guilabel"} field,
add a short description of the appointment type. This can include the
topic of the appointment, a meeting agenda, or an introduction to the
users responsible for the meeting.

The `Extra Message on Confirmation`{.interpreted-text role="guilabel"}
is displayed to a customer after they have booked a meeting. Add any
additional information here that the customer should be aware of. This
can include parking information, last minute rules, or additional
instructions.

## Publishing an appointment

When an appointment is ready to publish, click the
`Go to Website`{.interpreted-text role="guilabel"} smart button at the
top of the record. Then, slide the `fa-toggle-off`{.interpreted-text
role="icon"} `Unpublished`{.interpreted-text role="guilabel"} icon to
`fa-toggle-on`{.interpreted-text role="icon"}
`Published`{.interpreted-text role="guilabel"}.

::: {.toctree titlesonly=""}
appointments/create-opps
:::




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

![Create a new API project to store credentials.](google/new-api-project.png)

Give the API project a clear name, like [Odoo Sync]{.title-ref}, so it
can be identified. Then click the `Create`{.interpreted-text
role="guilabel"} button.

### Enable Google calendar API

Now, click on `Enabled APIs and Services`{.interpreted-text
role="guilabel"} in the left menu. Select `Enabled APIs
and Services`{.interpreted-text role="guilabel"} again if the
`Search bar`{.interpreted-text role="guilabel"} does not appear.

![Enable APIs and Services on the API Project.](google/enable-apis-services.png)

After that, search for [Google Calendar API]{.title-ref} using the
search bar and select `Google
Calendar API`{.interpreted-text role="guilabel"} from the search
results. Click `Enable`{.interpreted-text role="guilabel"}.

![Enable the Google Calendar API.](google/enable-google-cal-api.png)

### OAuth consent screen

Now that the API project has been created, OAuth should be configured.
To do that, click on `OAuth consent screen`{.interpreted-text
role="guilabel"} in the left menu, then click the
`Get started`{.interpreted-text role="guilabel"} button.

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

Follow the proceeding steps, in order:

1.  In `App Information`{.interpreted-text role="guilabel"}, type
    [Odoo]{.title-ref} in the `App name`{.interpreted-text
    role="guilabel"} field, then enter the email address for the
    `User support email`{.interpreted-text role="guilabel"} field and
    click the `Next`{.interpreted-text role="guilabel"} button.
2.  In `Audience`{.interpreted-text role="guilabel"}, select
    `External`{.interpreted-text role="guilabel"}, then click the
    `Next`{.interpreted-text role="guilabel"} button.
3.  In `Contact Information`{.interpreted-text role="guilabel"}, enter
    the email again, then click the `Next`{.interpreted-text
    role="guilabel"} button.
4.  In `Finish`{.interpreted-text role="guilabel"}, tick the checkbox to
    agree to `Google API Services: User
    Policy.`{.interpreted-text role="guilabel"} For the last step, click
    the `Create`{.interpreted-text role="guilabel"} button.

### Authorized domain setup

Next, any domains set to appear on the consent screen or in an OAuth
client\'s configuration must be pre-registered. To do so, navigate to
`Branding`{.interpreted-text role="guilabel"} in the left menu. In the
`Authorized domains`{.interpreted-text role="guilabel"} section, click
the `Add domain`{.interpreted-text role="guilabel"} button to create a
field to enter an authorized domain. Enter a domain, such as
[odoo.com]{.title-ref}, then click the `Save`{.interpreted-text
role="guilabel"} button at the bottom of the page.

### Test users

To give users the ability to sync with personal Gmail accounts, they
must be set as a test user. Setup test users by going to
`Audience`{.interpreted-text role="guilabel"} in the left-side menu and
clicking the `Add users`{.interpreted-text role="guilabel"} button in
the `Test users`{.interpreted-text role="guilabel"} section. Enter any
desired user emails, and click the `Save`{.interpreted-text
role="guilabel"} button.

### Create credentials

The *Client ID* and the *Client Secret* are both needed to connect
Google Calendar to Odoo. This is the last step in the Google console.
Begin by clicking `Clients`{.interpreted-text role="guilabel"} in the
left menu. Then, click `Create Credentials`{.interpreted-text
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

![Add the authorized JavaScript origins and the authorized redirect URIs.](google/uri.png)

A `Client ID`{.interpreted-text role="guilabel"} and
`Client Secret`{.interpreted-text role="guilabel"} will appear, save
these somewhere safe.

## Setup in Odoo

Once the *Client ID* and the *Client Secret* are located, open the Odoo
database and go to `Settings --> Calendar`{.interpreted-text
role="menuselection"} to find the `Google Calendar`{.interpreted-text
role="guilabel"} feature. Tick the checkbox labeled
`Google Calendar`{.interpreted-text role="guilabel"}.

![The Google Calendar checkbox in General Settings.](google/settings-google-cal.png)

Next, copy and paste the *Client ID* and the *Client Secret* from the
Google Calendar API credentials page into their respective fields below
the `Google Calendar`{.interpreted-text role="guilabel"} checkbox. Then,
click `Save`{.interpreted-text role="guilabel"}.

:::: note
::: title
Note
:::

Tick the `Pause Synchronization`{.interpreted-text role="guilabel"}
checkbox to temporarily pause events from being updated. This allows for
testing and troubleshooting without removing credentials or uninstalling
the synchronization. To resume the sync, clear the checkbox and save.
::::

## Sync calendar in Odoo

Finally, open the `Calendar`{.interpreted-text role="menuselection"} app
in Odoo and click on the `Google`{.interpreted-text role="guilabel"}
sync button to sync Google Calendar with Odoo.

![Click the Google sync button in Odoo Calendar to sync Google Calendar with Odoo.](google/sync-google.png)

:::: note
::: title
Note
:::

When syncing Google Calendar with Odoo for the first time, the page will
redirect to the Google Account. From there, select the
`Email Account`{.interpreted-text role="guilabel"} that should have
access, then select `Continue`{.interpreted-text role="guilabel"}
(should the app be unverified), and finally select
`Continue`{.interpreted-text role="guilabel"} (to give permission for
the transfer of data).
::::

![Give Odoo permission to access Google Calendar.](google/trust-odoo.png)

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

![Reset buttons highlighted on the calendar tab of the user.](google/google-reset.png)

Next, click `Reset Account`{.interpreted-text role="guilabel"} under the
correct calendar.

### Reset options

The following reset options are available for troubleshooting Google
calendar sync with Odoo:

![Google calendar reset options in Odoo.](google/reset-calendar.png)

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

At times there can be configuration errors that occur, and
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

![403 Access Denied Error.](google/403-error.png)

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

![Error 400 Redirect URI Mismatch.](google/error-400.png)

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
`Calendar app --> Configuration --> Settings`{.interpreted-text
role="menuselection"}, and tick the checkbox beside the
`Outlook Calendar`{.interpreted-text role="guilabel"} setting. Remember
to click `Save`{.interpreted-text role="guilabel"} to implement the
changes.

![The \"Outlook Calendar\" setting activated in Odoo.](outlook/outlook-calendar-setting.png)

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

show-content

:   

# Calendar

Odoo **Calendar** is a scheduling app that allows users to integrate a
company\'s business flow into a single management platform. By
integrating with the other apps in Odoo\'s ecosystem, **Calendar**
allows users to schedule and organize meetings, schedule events, plan
employee appraisals, coordinate projects, and more -- all from the same
platform.

Upon opening the `Calendar app`{.interpreted-text role="menuselection"},
users have an overview of their current meetings. The selected view
option appears as a `Day`{.interpreted-text role="guilabel"},
`Week`{.interpreted-text role="guilabel"}, `Month`{.interpreted-text
role="guilabel"}, or `Year`{.interpreted-text role="guilabel"} drop-down
menu. Under the view options drop-down menu, users can also enable or
disable `Show weekends`{.interpreted-text role="guilabel"}.

![Overview of Calendar app.](calendar/calendar-overview.png)

:::: tip
::: title
Tip
:::

Depending on the selected view option, users can click the
`oi-arrow-left`{.interpreted-text role="icon"}
`oi-arrow-right`{.interpreted-text role="icon"}
`(left or right arrow)`{.interpreted-text role="guilabel"} buttons to
switch between days, weeks, etc., and switch back to the current day
with the `Today`{.interpreted-text role="guilabel"} button.
::::

## Sync third-party calendars

Users can sync Odoo with existing
`Outlook <calendar/outlook>`{.interpreted-text role="doc"} and/or
`Google <calendar/google>`{.interpreted-text role="doc"} calendars, by
heading to
`Calendar app --> Configuration --> Settings`{.interpreted-text
role="menuselection"}. From here, enter `Client ID`{.interpreted-text
role="guilabel"} and `Client Secret`{.interpreted-text role="guilabel"}.
There is also an option to pause synchronization by ticking the
checkbox, or automating synchronization by keeping it blank.

Once the desired configurations are complete, be sure to click
`Save`{.interpreted-text role="guilabel"} before moving on.

Events created in synced calendars automatically appear across the
integrated platforms.

::: seealso
\-
`Synchronize Outlook calendar with Odoo <calendar/outlook>`{.interpreted-text
role="doc"} -
`Synchronize Google calendar with Odoo <calendar/google>`{.interpreted-text
role="doc"}
:::

## Create activities from chatter

Instantly create new meetings anywhere in Odoo through an individual
record\'s chatter, like in a **CRM** opportunity card or task in the
**Projects** app.

From the chatter, click on the `Activities`{.interpreted-text
role="guilabel"} button. In the `Schedule Activity`{.interpreted-text
role="guilabel"} pop-up window, select the desired
`Activity Type`{.interpreted-text role="guilabel"}, which populates a
set of buttons, depending on the activity.

Activities that involve other schedules, like
`Meeting`{.interpreted-text role="guilabel"} or
`Call for Demo`{.interpreted-text role="guilabel"}, link to the
**Calendar** app. Select one of these activities to link to the
**Calendar** app, then hit `Open Calendar`{.interpreted-text
role="guilabel"} to navigate back to the app. Alternatively, it is also
possible to `Schedule & Mark as Done`{.interpreted-text role="guilabel"}
to close out the activity, or select `Done & Schedule
Next`{.interpreted-text role="guilabel"} to keep the
`Schedule Activity`{.interpreted-text role="guilabel"} window open to
create another.

::: seealso
`Schedule activities in Odoo <../essentials/activities>`{.interpreted-text
role="doc"}
:::

## Plan an event

To put an event on the calendar, open the
`Calendar app`{.interpreted-text role="menuselection"}, and click into
the target date. On the `New Event`{.interpreted-text role="guilabel"}
pop-up window that appears, start by adding the event title.

![Schedule an event window on Calendar app.](calendar/calendar-schedule-event.png)

The target date auto-populates in the `Start`{.interpreted-text
role="guilabel"} field. This can be changed by clicking into the date
section, and selecting a date from the calendar. For multi-day events,
select the end date in the second field, then click
`Apply`{.interpreted-text role="guilabel"}.

Tick the `All Day`{.interpreted-text role="guilabel"} checkbox if there
is no specific start or end time.

For events with specific start and stop times, ensure the
`All Day`{.interpreted-text role="guilabel"} checkbox is unticked to
enable time selection. With the `All Day`{.interpreted-text
role="guilabel"} checkbox unticked, time selections appear in the
`Start`{.interpreted-text role="guilabel"} field.

The signed-in user auto-populates as the first attendee. Additional
`Attendees`{.interpreted-text role="guilabel"} can be added or created
from here, as well.

For virtual meetings, copy and paste the URL into the space provided in
the `Videocall URL`{.interpreted-text role="guilabel"} field. Or, click
`fa-plus`{.interpreted-text role="icon"}
`Odoo meeting`{.interpreted-text role="guilabel"} to create a link.

Next, either create the event by clicking
`Save & Close`{.interpreted-text role="guilabel"}, or select `More
Options`{.interpreted-text role="guilabel"} to further configure the
event.

:::: tip
::: title
Tip
:::

Once the event is created, users can click into the virtual meeting
directly from the calendar event to access more configuration options.
::::

![The full event form for a new calendar event.](calendar/calendar-new-meeting.png)

The `Description`{.interpreted-text role="guilabel"} field allows users
to add additional information and details about the meeting.

Click `More Options`{.interpreted-text role="guilabel"} to navigate to
the meeting form, which provides additional configurations for the
event:

- `Duration`{.interpreted-text role="guilabel"}: Define the length of
  the meeting in `hours`{.interpreted-text role="guilabel"}, or toggle
  the `All Day`{.interpreted-text role="guilabel"} switch.
- `Recurrent`{.interpreted-text role="guilabel"}: Tick the checkbox to
  create a recurring meeting. Once selected, this opens new fields:
  - `Timezone`{.interpreted-text role="guilabel"}: Select the timezone
    for which this meeting time is specified.
  - `Repeat`{.interpreted-text role="guilabel"}: Select the recurring
    period of this meeting. Depending on what type of recurrence has
    been selected, a subsequent field appears, in which users can
    indicate when the meeting should recur. For example, if
    `Monthly`{.interpreted-text role="guilabel"} is selected as the
    `Repeat`{.interpreted-text role="guilabel"} option, a new field
    appears, in which the user decides on what
    `Day of Month`{.interpreted-text role="guilabel"} the meeting should
    recur.
  - `Until`{.interpreted-text role="guilabel"}: Select the limited
    `Number of repetitions`{.interpreted-text role="guilabel"} this
    meeting should recur, the `End date`{.interpreted-text
    role="guilabel"} of when the recurrences should stop, or if the
    meetings should recur `Forever`{.interpreted-text role="guilabel"}.
- `Tags`{.interpreted-text role="guilabel"}: Add tags to the event, like
  [Customer Meeting]{.title-ref} or [Internal Meeting]{.title-ref}.
  These can be searched and filtered in the **Calendar** app when
  organizing multiple events.
- `Appointment`{.interpreted-text role="guilabel"}: Link existing or new
  appointments. These can be configured through the
  `Share Availabilities <calendar/share-availabilities>`{.interpreted-text
  role="ref"} button from the main **Calendar** dashboard.
- `Privacy`{.interpreted-text role="guilabel"}: Toggle between
  visibility options to control who can view the event.
- `Organizer`{.interpreted-text role="guilabel"}: This is defaulted to
  the current Odoo user. Select a new one from existing users, or create
  and edit a new user.
- `Description`{.interpreted-text role="guilabel"}: Add additional
  information or details about the meeting.
- `Reminders`{.interpreted-text role="guilabel"}: Select notification
  options to send to attendees. Choose a default notification, or
  configure new reminders.

## Coordinate with teams\' availability

When scheduling an event for multiple users, on the **Calendar** app
dashboard, tick the checkbox next to `Attendees`{.interpreted-text
role="guilabel"} to view team members\' availability. Tick (or untick)
the checkbox next to listed users to show (or hide) individual
calendars.

![View of Attendees section on Calendar app.](calendar/calendar-attendees.png)

## Share Availabilities {#calendar/share-availabilities}

On the **Calendar** app main dashboard, click the
`Share Availabilities`{.interpreted-text role="guilabel"} button at the
top of the page. Next, click and drag to select the available times and
dates on the calendar to add them as options in the invitation.

:::: tip
::: title
Tip
:::

To remove a selected time range, hover over the availability to click
the `fa-trash`{.interpreted-text role="icon"}
`(trash)`{.interpreted-text role="guilabel"} icon.
::::

:::: note
::: title
Note
:::

Within the `Share Availabilities`{.interpreted-text role="guilabel"}
feature, selecting times is only possible on the *Day* calendar views.
::::

Once availability has been selected, click the
`fa-external-link`{.interpreted-text role="icon"}
`Open`{.interpreted-text role="guilabel"} button to navigate to the
associated appointment.

![Share availability window on Calendar app.](calendar/calendar-meeting-share-availability.png)

Several configuration options are available on the appointment form:

In the `Scheduling`{.interpreted-text role="guilabel"} field, set a
minimum hour window to ensure appointments are confirmed a specified
amount of time in advance. For example, set [01:00]{.title-ref} to
require attendees to confirm at least one hour before their appointment
time.

In the `Allow Cancelling`{.interpreted-text role="guilabel"} field, set
a maximum hour window before the appointment that attendees are able to
cancel.

The `Availability on`{.interpreted-text role="guilabel"} field enables
attendees to book `Users`{.interpreted-text role="guilabel"} or
`Resources`{.interpreted-text role="guilabel"}, such as meeting rooms or
tables. After selecting `Users`{.interpreted-text role="guilabel"} or
`Resources`{.interpreted-text role="guilabel"}, type in the desired user
or resource in the space below.

The `Front-End Display`{.interpreted-text role="guilabel"} field is used
to choose `No Picture`{.interpreted-text role="guilabel"} or
`Show Pictures`{.interpreted-text role="guilabel"} related to the
selected user or resource on the appointment page.

If `Resources`{.interpreted-text role="guilabel"} has been selected in
the `Availability on`{.interpreted-text role="guilabel"} field, users
have an option to `Manage Capacities`{.interpreted-text
role="guilabel"}.

Tick the checkbox to limit the maximum amount of people that can use the
resource at the same time.

The `Assignment Method`{.interpreted-text role="guilabel"} field enables
the order in which attendees book their time and user/resource:

- `Pick User/Resource then Time`{.interpreted-text role="guilabel"}
- `Select Time then User/Resource`{.interpreted-text role="guilabel"}

If `Resources`{.interpreted-text role="guilabel"} has been selected in
the `Availability On`{.interpreted-text role="guilabel"} field, a third
option is available, `Select Time then auto-assign`{.interpreted-text
role="guilabel"}.

Optionally, configure the following tabs:

- `calendar/appointment-schedule`{.interpreted-text role="ref"}
- `calendar/appointment-options`{.interpreted-text role="ref"}
- `calendar/appointment-questions`{.interpreted-text role="ref"}
- `calendar/appointment-messages`{.interpreted-text role="ref"}

Click the `Preview`{.interpreted-text role="guilabel"} button to see how
the appointment link looks for attendees.

Once the configurations are finished, click the
`Share`{.interpreted-text role="guilabel"} button to generate a link to
send directly, or click `Publish`{.interpreted-text role="guilabel"} to
publish the appointment selection on the connected Odoo website.

### Schedule tab {#calendar/appointment-schedule}

In the `Schedule`{.interpreted-text role="guilabel"} tab of the
appointment form, time slots can be managed. The target date and time
populate as the first time slots.

To add a new time slot, hit `Add a line`{.interpreted-text
role="guilabel"}. Click into the new blank space under the
`From`{.interpreted-text role="guilabel"} field, then select and enter
the new target start date and time, respectively. Repeat under the new
blank space under `To`{.interpreted-text role="guilabel"} to select and
enter the new target end date and time.

### Options tab {#calendar/appointment-options}

The `Options`{.interpreted-text role="guilabel"} tab provides additional
configurations:

- `Website`{.interpreted-text role="guilabel"}: Specify which website
  this meeting invitation will be published on.
- `Timezone`{.interpreted-text role="guilabel"}: This defaults to the
  company\'s timezone selected in the **Settings** app. To change the
  timezone, select the desired option from the drop-down menu.
- `Location`{.interpreted-text role="guilabel"}: Select or create new
  locations from the drop-down menu. If this field is left empty, the
  meeting is considered to be taking place online.
- `Videoconference Link`{.interpreted-text role="guilabel"}: Select from
  `Odoo Discuss`{.interpreted-text role="guilabel"} or
  `Google Meet`{.interpreted-text role="guilabel"} to include a video
  conference link in the meeting invitation, or leave it blank to
  prevent generating a meeting URL.
- `Manual Confirmation`{.interpreted-text role="guilabel"}: Only shown
  if `Resources`{.interpreted-text role="guilabel"} has been selected in
  the `Availability On`{.interpreted-text role="guilabel"} field. Tick
  the checkbox and enter a maximum percentage of the selected
  resource(s)\' total capacity to create a manual confirmation
  requirement to finalize the meeting.
- `Up-front Payment`{.interpreted-text role="guilabel"}: Tick the
  checkbox to require users to pay before confirming their booking. Once
  this is ticked, a link appears to `oi-arrow-right`{.interpreted-text
  role="icon"} `Configure
  Payment Providers`{.interpreted-text role="guilabel"}, which enables
  online payments.
- `Limit to Work Hours`{.interpreted-text role="guilabel"}: If
  `Users`{.interpreted-text role="guilabel"} has been selected in the
  `Availability On`{.interpreted-text role="guilabel"} field, tick the
  checkbox to limit meeting time slots to the selected
  `users' working hours <../hr/employees/new_employee>`{.interpreted-text
  role="doc"}.
- `Create Opportunities`{.interpreted-text role="guilabel"}: When this
  is selected, each scheduled appointment creates a new **CRM**
  opportunity.
- `Reminders`{.interpreted-text role="guilabel"}: Add or delete
  notification reminders in this field. Select the blank space for
  additional options.
- `Confirmation Email`{.interpreted-text role="guilabel"}: Tick the
  checkbox to automatically send a confirmation email to attendees once
  the meeting is confirmed. Select from the email templates or click
  `Search More...`{.interpreted-text role="guilabel"}, then
  `New`{.interpreted-text role="guilabel"} to create a custom template.
- `Cancelation Email`{.interpreted-text role="guilabel"}: Tick the
  checkbox to automatically send a cancelation email to attendees if the
  meeting is canceled. Select from the email templates or click
  `Search More...`{.interpreted-text role="guilabel"}, then
  `New`{.interpreted-text role="guilabel"} to create a custom template.
- `CC to`{.interpreted-text role="guilabel"}: Add contacts to be
  notified of meeting updates in this field, regardless if they attend
  the meeting.
- `Allow Guests`{.interpreted-text role="guilabel"}: Tick the checkbox
  to allow attendees to invite guests.

### Questions tab {#calendar/appointment-questions}

In the `Questions`{.interpreted-text role="guilabel"} tab, add questions
for the attendee to answer when confirming their meeting. Click
`Add a line`{.interpreted-text role="guilabel"} to configure a
`Question`{.interpreted-text role="guilabel"}. Then select a
`Question Type`{.interpreted-text role="guilabel"}, optionally add a
`Placeholder`{.interpreted-text role="guilabel"} answer, and choose
whether it is a `Required Answer`{.interpreted-text role="guilabel"}.

To learn how to create more comprehensive questionnaires, head to the
**Survey** app documentation on
`creating and configuring data-capturing questions
<../marketing/surveys/questions>`{.interpreted-text role="doc"}.

### Messages tab {#calendar/appointment-messages}

In the `Introduction Message`{.interpreted-text role="guilabel"} field
of the `Messages`{.interpreted-text role="guilabel"} tab, add additional
meeting information that appears on the invitation.

Information added to the
`Extra Message on Confirmation`{.interpreted-text role="guilabel"} field
appears once the meeting is confirmed.

::: {.toctree titlesonly=""}
calendar/outlook calendar/google
:::




--- SOURCE: productivity/dashboards/build_and_customize_dashboards.md ---

# Build and customize dashboards

In addition to consulting
`standard dashboards <dashboards/standard>`{.interpreted-text
role="ref"}, users with the appropriate
`access rights <dashboards/access-and-sharing/customize-configure-build>`{.interpreted-text
role="ref"} can
`build custom dashboards from scratch <build_and_customize_dashboards/build>`{.interpreted-text
role="ref"} or
`customize existing dashboards <build_and_customize_dashboards/customize>`{.interpreted-text
role="ref"} to respond to specific business needs.

## Build a dashboard {#build_and_customize_dashboards/build}

In its most simple terms, building a dashboard involves
`inserting Odoo data into a spreadsheet
<../spreadsheet/insert>`{.interpreted-text role="doc"} then
`converting that spreadsheet into
a dashboard <spreadsheet/get-started/convert-to-dashboard>`{.interpreted-text
role="ref"}.

However, to build a dashboard that delivers relevant and valuable
insights, it is important to consider the process in terms of three key
stages: `preparation
<build_and_customize_dashboards/build-preparation>`{.interpreted-text
role="ref"}, `data insertion and manipulation
<build_and_customize_dashboards/build-insertion-manipulation>`{.interpreted-text
role="ref"}, and `data visualization
<build_and_customize_dashboards/build-visualization>`{.interpreted-text
role="ref"}.

### Preparation {#build_and_customize_dashboards/build-preparation}

This stage involves:

- defining the purpose of the dashboard, in other words, the business
  questions it needs to answer, and deciding what data would answer
  those questions;
- determining where to find the relevant Odoo data and deciding which
  `type of view
  <../../studio/views>`{.interpreted-text role="doc"} (i.e., list, pivot
  table, or chart) is most suited for the data analysis needed;
- preparing the Odoo data by refining the views to focus on the most
  relevant information, e.g., by using
  `search filters <../../essentials/search>`{.interpreted-text
  role="doc"}, by making only certain list fields visible, or by
  deciding which dimensions and measures a pivot table should use;
- sourcing any other information needed to support the dashboard.

### Data insertion and manipulation {#build_and_customize_dashboards/build-insertion-manipulation}

This stage involves:

- `inserting the prepared lists, pivot tables or charts <../spreadsheet/insert>`{.interpreted-text
  role="doc"} into the spreadsheet you will use to build your dashboard;
- manipulating the data, if needed, to be able to draw the necessary
  insights. This may involve performing calculations or creating custom
  metrics using `standard or Odoo-specific functions
  and formulas <../spreadsheet/work_with_data/functions>`{.interpreted-text
  role="doc"}, referencing data from various sources within the
  spreadsheet, or `converting static pivot tables to dynamic pivot
  tables <../spreadsheet/work_with_data/dynamic_pivot_tables>`{.interpreted-text
  role="doc"}.

### Data visualization {#build_and_customize_dashboards/build-visualization}

This stage involves:

- presenting the data on at least the first sheet of your spreadsheet
  (i.e., the sheet that will serve as the front end of your dashboard)
  in a clear, visual, and meaningful way so it is easy to interpret.
  Concretely, this means deciding on the layout and order of elements
  such as tables and charts, as well as using tools and techniques to
  guide the user, such as clear and descriptive headings, text
  formatting and colors, carefully chosen chart types, and conditional
  formatting to highlight specific data visually;
- `inserting clickable links <spreadsheet/insert/clickable-links>`{.interpreted-text
  role="ref"}, if relevant, to provide access to Odoo menu items, URLs,
  or other sheets within the same spreadsheet if these should also be
  accessible from the front end of your dashboard;
- `creating global filters <../spreadsheet/work_with_data/global_filters>`{.interpreted-text
  role="doc"} to allow users to tailor the view to their needs;
- `converting the spreadsheet into a dashboard
  <spreadsheet/get-started/convert-to-dashboard>`{.interpreted-text
  role="ref"}, determining whether to add the dashboard to an existing
  or new dashboard section, and `managing access rights to the dashboard
  <dashboards/access-and-sharing/manage-view-access>`{.interpreted-text
  role="ref"}.

:::: tip
::: title
Tip
:::

\- Use standard dashboards as inspiration for how to best present and
visualize data. For example, for charts,
`open the underlying spreadsheet
<build_and_customize_dashboards/customize/open-spreadsheet>`{.interpreted-text
role="ref"} of a standard dashboard, hover over a chart and click the
`fa-bars`{.interpreted-text role="icon"} `(menu)`{.interpreted-text
role="guilabel"} icon, then `fa-pencil-square-o`{.interpreted-text
role="icon"} `Edit`{.interpreted-text role="guilabel"} to see the chart
properties on the right side of the screen. - The possibility to link to
other sheets within the same spreadsheet allows the creation of a
multi-page dashboard, with users able to navigate between pages thanks
to clickable links. Global filters apply across all pages of a
dashboard.
::::

::: seealso
[Odoo Tutorial: Dashboard from
scratch](https://www.odoo.com/slides/slide/dashboard-from-scratch-8957)
:::

## Customize a dashboard {#build_and_customize_dashboards/customize}

A dashboard can be customized by `opening its underlying spreadsheet
<build_and_customize_dashboards/customize/open-spreadsheet>`{.interpreted-text
role="ref"}, i.e., the Odoo spreadsheet from which the dashboard has
been created, and `making any desired changes
<dashboards/customize-dashboard/edit-spreadsheet>`{.interpreted-text
role="ref"}.

### Open the underlying spreadsheet {#build_and_customize_dashboards/customize/open-spreadsheet}

:::: important
::: title
Important
:::

When customizing a
`standard dashboard <dashboards/standard>`{.interpreted-text
role="ref"}, it is highly recommended to
`duplicate the dashboard <build_and_customize_dashboards/customize/duplicate-dashboard>`{.interpreted-text
role="ref"} and make any changes on the underlying spreadsheet of the
duplicated version. Standard dashboards are reinstalled at each Odoo
version upgrade, meaning any customizations on the original version are
lost.
::::

To open a dashboard\'s underlying spreadsheet:

1.  In the Dashboards app, go to
    `Configuration --> Dashboards`{.interpreted-text
    role="menuselection"}.
2.  Open the relevant dashboard section, then, on the line of the
    relevant dashboard, click `fa-pencil`{.interpreted-text role="icon"}
    `Edit`{.interpreted-text role="guilabel"}.

:::: tip
::: title
Tip
:::

\- To temporarily unpublish a dashboard while you make changes, disable
`Is Published`{.interpreted-text role="guilabel"} *before* editing the
dashboard, making note to republish it when the customization has been
finalized. - Users who do not have the appropriate `access rights
<dashboards/access-and-sharing/customize-configure-build>`{.interpreted-text
role="ref"} to customize a dashboard can still access a read-only
version of the dashboard\'s underlying spreadsheet. - With
`developer mode <developer-mode>`{.interpreted-text role="ref"}
activated, click on the `fa-pencil`{.interpreted-text role="icon"}
`(Edit)`{.interpreted-text role="guilabel"} icon beside the name of a
dashboard in the left panel to open its underlying spreadsheet.
::::

The spreadsheet that opens typically consists of at least two sheets:

- **The first sheet** always serves as the front end of your dashboard,
  and contains the tables and charts used to structure and visualize the
  data.
- **The second and any subsequent sheets** typically contain data used
  for the calculation of key metrics shown on the first sheet.

:::: note
::: title
Note
:::

The `data sources <spreadsheet/insert/data-sources>`{.interpreted-text
role="ref"} that maintain the connection between the spreadsheet and the
relevant models in your database can be viewed by clicking
`Data`{.interpreted-text role="menuselection"} on the spreadsheet\'s
menu bar. These data sources are identified by their respective
`oi-view-pivot`{.interpreted-text role="icon"}
`(pivot table)`{.interpreted-text role="guilabel"},
`oi-view-list`{.interpreted-text role="icon"} `(list)`{.interpreted-text
role="guilabel"} or `fa-bar-chart`{.interpreted-text role="icon"}
`(chart)`{.interpreted-text role="guilabel"} icon, followed by their ID
and name, e.g., `oi-view-pivot`{.interpreted-text role="icon"} *(#1)
Sales Analysis by Product*.

For `standard dashboards <dashboards/standard>`{.interpreted-text
role="ref"}, while the data sources are still active and visible in the
`Data`{.interpreted-text role="menuselection"} menu, the corresponding
lists and pivot tables have been removed from the spreadsheet for better
performance and a neater appearance.
::::

#### Duplicate a dashboard {#build_and_customize_dashboards/customize/duplicate-dashboard}

To duplicate a dashboard:

1.  In the Dashboards app, go to
    `Configuration --> Dashboards`{.interpreted-text
    role="menuselection"}.
2.  Open the relevant dashboard section, then, on the line of the
    dashboard you want to duplicate, click `fa-pencil`{.interpreted-text
    role="icon"} `Edit`{.interpreted-text role="guilabel"}.
3.  In the spreadsheet that opens, click `File -->`{.interpreted-text
    role="menuselection"} `os-copy-file`{.interpreted-text role="icon"}
    `Make a copy`{.interpreted-text role="menuselection"}.
4.  Rename the duplicated dashboard by clicking the name of the
    spreadsheet at the top left of the screen and editing as needed.

:::: tip
::: title
Tip
:::

\- To return to the overview of the dashboard section, click the name of
the original dashboard at the top left of the page, then the name of the
dashboard section. - After duplicating a dashboard, delete the original
dashboard by clicking the `fa-trash`{.interpreted-text role="icon"}
`(trash)`{.interpreted-text role="guilabel"} icon or rename it by
clicking on the name then editing it.
::::

### Add, edit, or remove dashboard elements {#dashboards/customize-dashboard/edit-spreadsheet}

Dashboards can be customized in various ways, such as by:

- adding new tables and charts based on previously inserted or
  `newly inserted Odoo data
  <dashboards/customize-dashboard/edit-spreadsheet-new-odoo-data>`{.interpreted-text
  role="ref"}. This requires a similar approach to
  `building a dashboard from scratch <build_and_customize_dashboards/build>`{.interpreted-text
  role="ref"};
- `adding new global filters <../spreadsheet/work_with_data/global_filters>`{.interpreted-text
  role="doc"} or editing or deleting existing ones;
- `adding or editing clickable links <spreadsheet/insert/clickable-links>`{.interpreted-text
  role="ref"} to Odoo menus, URLs, or to other sheets within the same
  spreadsheet.

:::: tip
::: title
Tip
:::

\- The first tab of the spreadsheet serves as the front end of the
dashboard. Any tables or charts that should be visible on the final
dashboard need to be added to this sheet. - Dashboard elements that are
no longer needed can be deleted from the spreadsheet. If, after deleting
a dashboard element, a
`data source <spreadsheet/insert/data-sources>`{.interpreted-text
role="ref"} is no longer being used in the spreadsheet, this is
indicated by a `fa-exclamation-triangle`{.interpreted-text role="icon"}
`(warning)`{.interpreted-text role="guilabel"} icon in the
`Data`{.interpreted-text role="guilabel"} menu.

![Warning to indicate data source no longer used in spreadsheet](build_and_customize_dashboards/list-deleted.png)
::::

#### Insert new Odoo data {#dashboards/customize-dashboard/edit-spreadsheet-new-odoo-data}

New Odoo data, such as lists, pivot tables, or charts, can be inserted
into a dashboard, starting from the relevant list view, pivot view, or
graph view. Concretely, a list or pivot table is inserted into a new
sheet in the dashboard\'s underlying spreadsheet; a chart is inserted on
the first sheet of the spreadsheet.

To insert new data:

1.  With the relevant list view, pivot view or graph view open in your
    database, proceed as follows:
    - For a list view, click the `fa-cog`{.interpreted-text role="icon"}
      `(Actions)`{.interpreted-text role="guilabel"} icon beside the
      name of the view, then `Spreadsheet -->`{.interpreted-text
      role="guilabel"} `oi-view-list`{.interpreted-text role="icon"}
      `Insert list in
      spreadsheet`{.interpreted-text role="menuselection"}.
    - For a pivot or graph view, click
      `Insert in Spreadsheet`{.interpreted-text role="guilabel"} at the
      top left of the view.
2.  In the window that opens, edit the name if needed. For a list, edit
    the number of records, i.e., rows to be inserted, if needed.
3.  Click the `Dashboards`{.interpreted-text role="guilabel"} tab then
    select in which dashboard the list, pivot table, or chart should be
    inserted.

The dashboard\'s underlying spreadsheet opens, with the new data
inserted either on a new sheet (list or pivot table) or on the first
sheet (chart).

::: seealso
`Inserting Odoo data into a spreadsheet
<../spreadsheet/insert>`{.interpreted-text role="doc"}
:::




--- SOURCE: productivity/dashboards/my_dashboard.md ---

# My Dashboard

**My Dashboard** allows you to centralize the
`Odoo views <../../studio/views>`{.interpreted-text role="doc"} you
consult most regularly, making it possible to see critical tasks at a
glance without having to first navigate through multiple apps.

My Dashboard is empty until at least one view has been added.

> ![Example of views added to My Dashboard](my_dashboard/my-dashboard.png)

Views inserted in My Dashboard are fully dynamic and retain many
features of the source view, e.g., sorting of lists, changing the
measures used for a pivot table or cohort view, changing the chart type,
or clicking on a value or data point to view the underlying record(s).

:::: tip
::: title
Tip
:::

\- It is not possible to change the domain, i.e., the
`filtering or grouping
<../../essentials/search>`{.interpreted-text role="doc"}, of a view that
has been added to My Dashboard. To change the domain, make the necessary
changes in the original view, then re-insert the view in My Dashboard
and delete the originally inserted view. - Unlike other Odoo dashboards,
My Dashboard is not based on **Odoo Spreadsheet**.
::::

## Add views {#dashboards/my-dashboard/add-views}

Most Odoo views can be added to My Dashboard, including:

- `multiple record views <studio/views/multiple-records>`{.interpreted-text
  role="ref"} like list, kanban, and map
- `timeline views <studio/views/timeline>`{.interpreted-text role="ref"}
  like calendar, cohort, and gantt
- `reporting views <studio/views/reporting>`{.interpreted-text
  role="ref"} like pivot and graph

To add a view to My Dashboard:

1.  With the relevant view open in your database, click the
    `fa-cog`{.interpreted-text role="icon"}
    `(Actions)`{.interpreted-text role="guilabel"} icon beside the name
    of the view, then `Dashboard`{.interpreted-text
    role="menuselection"}.

2.  Under `Add to my Dashboard`{.interpreted-text role="guilabel"},
    rename the view if desired, then click `Add`{.interpreted-text
    role="guilabel"}.

    ![Adding a view to My Dashboard](my_dashboard/add-view.png)

3.  Refresh the page.

The added view is now visible as a widget in My Dashboard in the
Dashboards app.

:::: tip
::: title
Tip
:::

If added views are not showing in My Dashboard, refresh the browser
page.
::::

## Customize layout {#dashboards/my-dashboard/layout}

When at least one view has been added to My Dashboard, the page can be
customized as follows:

- **Change the layout of the page**: Click
  `Change Layout`{.interpreted-text role="guilabel"} in the top-right
  corner and select the desired layout.

  :::: tip
  ::: title
  Tip
  :::

  For multi-column layouts, the column limits are identified by
  `fa-caret-left`{.interpreted-text role="icon"}
  `(left caret)`{.interpreted-text role="guilabel"} and
  `fa-caret-right`{.interpreted-text role="icon"}
  `(right caret)`{.interpreted-text role="guilabel"} icons at the bottom
  of the page. If needed, scroll to the bottom of the page to see the
  column limits.

  ![Column limits visible at bottom of page](my_dashboard/column-limits.png)
  ::::

- **Collapse and expand widgets**: By default, an inserted widget is
  shown fully expanded. To collapse, or minimize, a widget, and show
  only the title, click the `fa-window-minimize`{.interpreted-text
  role="icon"} `(minimize)`{.interpreted-text role="guilabel"} icon at
  the top right of the widget. To expand a widget, click the
  `fa-window-maximize`{.interpreted-text role="icon"}
  `(maximize)`{.interpreted-text role="guilabel"} icon.

- **Move widgets**: Drag and drop widgets to the desired location in the
  same column or a different column.

- **Remove widgets**: To remove a widget from the page, click the
  `fa-times`{.interpreted-text role="icon"} `(remove)`{.interpreted-text
  role="guilabel"} icon.




--- SOURCE: productivity/dashboards.md ---

show-content

:   

# Dashboards

::: {.toctree titlesonly=""}
dashboards/build_and_customize_dashboards dashboards/my_dashboard
:::

**Odoo Dashboards** allows you to consult, interact with, customize, and
build interactive dashboards that display real-time data from your Odoo
database in an easy-to-understand way. By centralizing data from various
Odoo sources in a single location, dashboards provide an overview of key
business metrics that can help you monitor business performance and make
informed decisions.

`Odoo spreadsheets <../../applications/productivity/spreadsheet>`{.interpreted-text
role="doc"} serve as the foundation for dashboards, with tables and
charts used to structure and visualize dynamic Odoo data. `Data
sources <spreadsheet/insert/data-sources>`{.interpreted-text role="ref"}
connect a dashboard\'s underlying spreadsheet to your database, ensuring
the most recent data is retrieved every time the dashboard is opened or
refreshed.

With Odoo Dashboards, users can, depending on their `access rights
<dashboards/access-and-sharing>`{.interpreted-text role="ref"}:

- `consult and interact with dashboards <dashboards/use-dashboards>`{.interpreted-text
  role="ref"}, including
  `standard, pre-configured dashboards <dashboards/standard>`{.interpreted-text
  role="ref"}
- use
  `global filters <dashboards/use-dashboards/global-filters>`{.interpreted-text
  role="ref"} to filter all the data shown on a dashboard
- `share a snapshot of a dashboard <dashboards/access-and-sharing>`{.interpreted-text
  role="ref"} with internal users who do not have the appropriate access
  rights or with external users
- `build custom dashboards
  <../../applications/productivity/dashboards/build_and_customize_dashboards>`{.interpreted-text
  role="doc"} using Odoo Spreadsheet
- `customize dashboards <build_and_customize_dashboards/customize>`{.interpreted-text
  role="ref"} to modify what data is shown, the layout, or the filters
  available
- `manage access rights <dashboards/access-and-sharing>`{.interpreted-text
  role="ref"} to dashboards
- centralize frequently consulted Odoo views in a personal
  `../../applications/productivity/dashboards/my_dashboard`{.interpreted-text
  role="doc"}

:::: tip
::: title
Tip
:::

\- Once a spreadsheet has been converted into a dashboard, it can only
be accessed via the Dashboards app. - Unlike other Odoo dashboards,
`My Dashboard`{.interpreted-text role="guilabel"} is not based on Odoo
Spreadsheet, but rather on
`Odoo views <../studio/views>`{.interpreted-text role="doc"}.
::::

## Use dashboards {#dashboards/use-dashboards}

When the Dashboards app is opened, the left panel lists all
`standard, pre-configured
dashboards <dashboards/standard>`{.interpreted-text role="ref"} and
`custom-built dashboards
<dashboards/build_and_customize_dashboards>`{.interpreted-text
role="doc"} to which a user has been `granted access
<dashboards/access-and-sharing>`{.interpreted-text role="ref"}, grouped
by section.

Clicking on a dashboard name opens that dashboard in the main view.

![Overview of Leads dashboard](dashboards/leads-dashboard.png)

:::: tip
::: title
Tip
:::

\- Click the `fa-angle-double-left`{.interpreted-text role="icon"}
`(double chevron)`{.interpreted-text role="guilabel"} icon at the top of
the left panel to collapse the left panel, maximizing the space
available for dashboards. - Mark a dashboard as a favorite by clicking
the `fa-star`{.interpreted-text role="icon"}
`(Toggle favorite)`{.interpreted-text role="guilabel"} icon in the
upper-right corner. Favorited dashboards are grouped in a
`Favorites`{.interpreted-text role="guilabel"} section at the top of the
left panel for easy access.
::::

### Filter and sort data {#dashboards/use-dashboards/filter-sort}

Filtering and sorting allow you to manage what data is displayed and how
it is displayed. This can help tailor the view to answer specific
business questions.

- `Filtering <dashboards/use-dashboards/global-filters>`{.interpreted-text
  role="ref"} limits the data presented in charts and tables, allowing
  you to focus only on records that meet specific criteria, e.g.,
  viewing sales data only for a specific sales team.
- `Sorting <dashboards/use-dashboards/sort>`{.interpreted-text
  role="ref"} reorders the data presented in table columns, allowing you
  to see the data from different perspectives, e.g., viewing products by
  sales revenue from highest to lowest.

#### Apply filters {#dashboards/use-dashboards/global-filters}

If
`global filters <spreadsheet/work_with_data/global_filters>`{.interpreted-text
role="doc"} are available for a dashboard, a search bar above the
dashboard allows you to filter the entire dashboard for the selected
values.

:::: tip
::: title
Tip
:::

\- Global filters are available for all
`standard dashboards <dashboards/standard>`{.interpreted-text
role="ref"}. Additional
`global filters can be added <spreadsheet/work_with_data/global_filters>`{.interpreted-text
role="doc"} by a user with the appropriate `access rights
<dashboards/access-and-sharing/customize-configure-build>`{.interpreted-text
role="ref"}. - It is also possible to
`search for values <search/values>`{.interpreted-text role="ref"} by
typing directly in the search bar; the search categories shown reflect
the available global filters.
::::

![Global filters on the Warehouse Daily Operations dashboard](dashboards/global-filters.png)

To apply global filters:

1.  Click within the search bar or click on the
    `fa-caret-down`{.interpreted-text role="icon"}
    `(dropdown)`{.interpreted-text role="guilabel"} icon to access all
    filters available for that dashboard.
2.  For the relevant filter, select a conditional operator from the
    first dropdown, e.g., `is in`{.interpreted-text role="guilabel"},
    then select the desired value from the second dropdown.
3.  Click `Filter`{.interpreted-text role="guilabel"}.

For dashboards with a date filter, this filter can be set via the search
bar or via the button with the `fa-calendar`{.interpreted-text
role="icon"} `(calendar)`{.interpreted-text role="guilabel"} icon.

![Filtering a dashboard by date period](dashboards/global-filters-time.png)

:::: tip
::: title
Tip
:::

The `Custom Range`{.interpreted-text role="guilabel"} at the bottom of
the period selector shows either a manually entered custom range, if
relevant, or the start and end date of the selected period.
::::

To remove a value from a filter, click the `fa-times`{.interpreted-text
role="icon"} `(remove)`{.interpreted-text role="guilabel"} icon beside
the name of the value; to empty a filter, click the
`fa-times`{.interpreted-text role="icon"} `(remove)`{.interpreted-text
role="guilabel"} icon at the far right of the filter.

#### Sort data {#dashboards/use-dashboards/sort}

Depending on the dashboard and the table in question, it may be possible
to sort the data by column, by clicking the column heading. A
`fa-caret-down`{.interpreted-text role="icon"}
`(caret down)`{.interpreted-text role="guilabel"} or
`fa-caret-up`{.interpreted-text role="icon"}
`(caret up)`{.interpreted-text role="guilabel"} icon beside a column
heading indicates that the column has been sorted in descending or
ascending order, respectively. If, when hovering over other column
headings, a `fa-sort`{.interpreted-text role="icon"}
`(sort)`{.interpreted-text role="guilabel"} icon appears, the column can
be sorted.

::::: tip
::: title
Tip
:::

If conditional formatting has been applied to a table, the original
formatting is maintained when the table is resorted by a different
column.

::: example
In this example, the table was originally sorted by revenue per CRM tag,
in decreasing order. Conditional formatting was defined to visualize the
proportional revenue using data bars. When the table is resorted by
number of leads in descending order, the data bars still reflect the
revenue per tag in decreasing order.

![Sorting a table with conditional formatting using data bars](dashboards/sorting-data-bars.png)
:::
:::::

### Access underlying records {#dashboards/use-dashboards/underlying-data}

While dashboards provide a user-friendly summary of key data, drilling
down to the underlying data allows a more detailed analysis. This can be
useful for investigating anomalies or providing the full context needed
for decision-making.

- **Open underlying database records**: To access database records
  referenced by a dashboard, click on the relevant value in a table or
  on a data point on a chart. Doing so opens either the individual
  record, or, in the case of charts or tables displaying consolidated
  data, a list of the referenced records.
- **Open underlying database views**: To access the view from which the
  data for a specific chart or table is retrieved, click on the title of
  the chart or table. Doing so opens the corresponding list view, pivot
  view or graph view.

:::: tip
::: title
Tip
:::

To return to a dashboard after drilling down to underlying records or
views, click the `Dashboards`{.interpreted-text role="guilabel"}
breadcrumb in the upper-left corner.
::::

### Expand, copy or download charts {#dashboards/use-dashboards/charts}

To see charts in full screen, hover over a chart and click the
`fa-expand`{.interpreted-text role="icon"} icon.

It is also possible to copy or download a chart by hovering over the
chart and clicking the `fa-ellipsis-v`{.interpreted-text role="icon"}
(vertical ellipsis) icon, then clicking
`os-copy-as-image`{.interpreted-text role="icon"}
`Copy as image`{.interpreted-text role="guilabel"} or
`fa-download`{.interpreted-text role="icon"}
`Download`{.interpreted-text role="guilabel"} as relevant.

:::: tip
::: title
Tip
:::

`Expanding a time-series chart to full screen
<dashboards/use-dashboards/time-series-charts-zoom-scroll>`{.interpreted-text
role="ref"} allows a more detailed analysis.
::::

### Analyze time-series charts {#dashboards/use-dashboards/time-series-charts}

Time-series charts, i.e., charts showing data over time, can be analyzed
more closely by:

- `adjusting the granularity <dashboards/use-dashboards/time-series-charts-granularity>`{.interpreted-text
  role="ref"};
- `zooming in <dashboards/use-dashboards/time-series-charts-zoom-scroll>`{.interpreted-text
  role="ref"} on a chosen time span.

#### Adjust granularity {#dashboards/use-dashboards/time-series-charts-granularity}

For many time-series charts it is possible to adjust the granularity of
the unit of time on the x-axis.

To do so, hover over the chart, click the
`fa-caret-down`{.interpreted-text role="icon"}
`(dropdown)`{.interpreted-text role="guilabel"} icon, then select the
desired granularity.

![Changing time granularity on a chart\'s y-axis](dashboards/granularity.png)

#### Zoom in on a time span and scroll {#dashboards/use-dashboards/time-series-charts-zoom-scroll}

When a time-series chart is
`expanded to full screen <dashboards/use-dashboards/charts>`{.interpreted-text
role="ref"}, a slider below the chart allows you to:

- zoom in on a specific time span by dragging the ends of the slider to
  select the desired time span;
- when you have zoomed in, to scroll through the chart while maintaining
  the level of zoom by dragging the slider to the left or right.

Resize the slider to return to the initial view.

::: example
In this example from the `Warehouse Daily Operations`{.interpreted-text
role="guilabel"} dashboard, the chart shows transfers yet to be assigned
to a responsible user, by day. The zoom of the chart has been adjusted
to show data for five days, and the current position of the slider
allows data from the last five days to be shown.

![Zoomed-in chart with slider](dashboards/navigate-charts.png)
:::

## Standard dashboards {#dashboards/standard}

Depending on which apps are installed, a series of standard dashboards
is available by default.

These pre-configured dashboards have been designed to provide the most
relevant insights for the topic in question, and users with the
appropriate `access rights
<dashboards/access-and-sharing>`{.interpreted-text role="ref"} can
`consult and interact <dashboards/use-dashboards>`{.interpreted-text
role="ref"} with them. Dashboard-specific
`filters <dashboards/use-dashboards/global-filters>`{.interpreted-text
role="ref"}, available via the search bar, allow the entire dashboard to
be filtered for selected values.

Standard dashboards can be
`customized <build_and_customize_dashboards/customize>`{.interpreted-text
role="ref"} by a user with the appropriate
`access rights <dashboards/access-and-sharing/customize-configure-build>`{.interpreted-text
role="ref"}. For example, dashboard elements like tables and charts, or
global filters can be added, edited, or removed.

:::: important
::: title
Important
:::

When customizing a standard dashboard, it is highly recommended to
`duplicate the dashboard
<build_and_customize_dashboards/customize/duplicate-dashboard>`{.interpreted-text
role="ref"} and make any changes on the duplicated version. Standard
dashboards are reinstalled at each Odoo version upgrade, meaning any
customizations on the original version are lost.
::::

## Configuration settings {#dashboards/configuration}

:::: note
::: title
Note
:::

Only a user with the appropriate
`access rights <access-rights/groups>`{.interpreted-text role="ref"} can
configure or modify settings for dashboards and dashboard sections.
::::

To manage dashboards and dashboard sections, go to
`Configuration --> Dashboards`{.interpreted-text role="menuselection"}.
The following actions are possible at the level of dashboard sections:

- **Change the order of dashboard sections** by using the
  `oi-draggable`{.interpreted-text role="icon"} `(drag
  handle)`{.interpreted-text role="guilabel"} icon to move a section to
  a new position.

- **Duplicate a dashboard section** by selecting the relevant section
  name, clicking the `fa-cog`{.interpreted-text role="icon"}
  `Actions`{.interpreted-text role="guilabel"} button, and then
  `fa-clone`{.interpreted-text role="icon"}
  `Duplicate`{.interpreted-text role="guilabel"}. The dashboards within
  the section are not duplicated.

- **Delete a dashboard section** by selecting the relevant section name,
  clicking the `fa-cog`{.interpreted-text role="icon"}
  `Actions`{.interpreted-text role="guilabel"} button then
  `fa-trash-o`{.interpreted-text role="icon"} `Delete`{.interpreted-text
  role="guilabel"}.

  > :::: tip
  > ::: title
  > Tip
  > :::
  >
  > Standard, pre-installed dashboard sections cannot be deleted; custom
  > dashboard sections, on the other hand, can be deleted.
  > ::::

- **Create a new dashboard section** by clicking `New`{.interpreted-text
  role="guilabel"}, then entering the section name. When creating a new
  section, it is possible to add a dashboard to the new section directly
  by clicking `Add a spreadsheet`{.interpreted-text role="guilabel"}.

Clicking on an individual dashboard section lists all dashboards within
that section. The following actions are possible:

- **Change the order of a dashboard within its section** by using the
  `oi-draggable`{.interpreted-text role="icon"}
  `(drag handle)`{.interpreted-text role="guilabel"} icon to move the
  dashboard to a new position.

- **Edit the name of a dashboard section or dashboard** by clicking the
  name and modifying it.

- **Add or remove user groups** to `control access to the dashboard
  <dashboards/access-and-sharing>`{.interpreted-text role="ref"}.

- **Select one or more companies** if, in a `multi-company
  <../../applications/general/companies/multi_company>`{.interpreted-text
  role="doc"} database, the dashboard should only be visible to users of
  a specific company or companies. If this field is left blank, the
  dashboard is visible to all users with the appropriate access rights,
  regardless of which company is currently selected in the database.

- **Unpublish a dashboard** by disabling the
  `Is Published`{.interpreted-text role="guilabel"} toggle.

- **Edit the underlying spreadsheet** of a dashboard by clicking
  `fa-pencil`{.interpreted-text role="icon"} `Edit`{.interpreted-text
  role="guilabel"} on the line of the relevant dashboard.

  :::: important
  ::: title
  Important
  :::

  When customizing a standard dashboard, it is highly recommended to
  `duplicate the
  dashboard <build_and_customize_dashboards/customize/duplicate-dashboard>`{.interpreted-text
  role="ref"} and make any changes on the underlying spreadsheet of the
  duplicated version. Standard dashboards are reinstalled at each Odoo
  version upgrade, meaning any customizations on the original version
  are lost.
  ::::

- **Delete a dashboard** by clicking the `fa-trash`{.interpreted-text
  role="icon"} `(trash)`{.interpreted-text role="guilabel"} icon.

  :::: tip
  ::: title
  Tip
  :::

  A standard dashboard that is deleted is reinstalled at the next Odoo
  version upgrade.
  ::::

- **Add a new dashboard to the section** by clicking
  `Add a spreadsheet`{.interpreted-text role="guilabel"}. Two options
  exist:

  - To convert an existing spreadsheet into a dashboard and add it to
    the new section, select the relevant spreadsheet, then click
    `Confirm`{.interpreted-text role="guilabel"}. Back in the section
    overview, update the `Group`{.interpreted-text role="guilabel"} and
    `Company`{.interpreted-text role="guilabel"} fields if needed.
  - To start creating a dashboard from scratch, select
    `Blank spreadsheet`{.interpreted-text role="guilabel"}. To return to
    the section overview, click the name of the section in the top-left
    corner, above the menu bar. Update the `Group`{.interpreted-text
    role="guilabel"} and `Company`{.interpreted-text role="guilabel"}
    fields if needed.

  :::: note
  ::: title
  Note
  :::

  After a spreadsheet has been converted into a dashboard, it can only
  be `accessed and
  edited via the Dashboards app <build_and_customize_dashboards/customize>`{.interpreted-text
  role="ref"}.
  ::::

  :::: tip
  ::: title
  Tip
  :::

  \- A newly created dashboard is by default accessible to users
  belonging to the default internal
  `user group <access-rights/groups>`{.interpreted-text role="ref"}.
  Edit this if needed via the `Configuration`{.interpreted-text
  role="guilabel"} settings of the relevant dashboard section.
  \- It is also possible to `convert a spreadsheet into a dashboard
  <spreadsheet/get-started/convert-to-dashboard>`{.interpreted-text
  role="ref"} and add it to a dashboard section starting from the
  spreadsheet in the Documents app.
  ::::

## Access rights and sharing {#dashboards/access-and-sharing}

### Using dashboards {#dashboards/access-and-sharing/viewing}

The *right to view and interact with a dashboard* is based on
`user groups
<access-rights/groups>`{.interpreted-text role="ref"}, and is managed in
the `Configuration settings
<dashboards/access-and-sharing/manage-view-access>`{.interpreted-text
role="ref"} of the Dashboards app. Only users who are part of a group
that has been granted access to a specific dashboard see that dashboard
in the left-hand panel when the Dashboards app is opened. Users with
[Dashboard / Admin]{.title-ref} access rights can view all dashboards.

However, the *visibility of dynamic Odoo data within a dashboard* is
handled separately. This is based on a user\'s
`access rights <access-rights/user-permissions>`{.interpreted-text
role="ref"} to the model from which the data has been retrieved, and
takes into account any record rules that may restrict access.

:::: important
::: title
Important
:::

User permissions are taken into account when a user opens a dashboard,
with the dashboard only being populated with data the user is authorized
to see. This means that a user could in theory be able to view a
dashboard but, due to a lack of appropriate permissions, not be able to
see the Odoo data the dashboard\'s creator intended to be displayed.

Therefore, it is crucial to take user permissions into consideration
when granting dashboard access to groups.
::::

::: example
Granting the user group [Sales / User: Own Documents Only]{.title-ref}
access to the `Sales`{.interpreted-text role="guilabel"} dashboard would
serve little purpose. While users belonging to that group would be able
to view and interact with the dashboard, they would only see data
related to their own sales, rendering the overall dashboard misleading.
:::

#### Manage access rights to view dashboards {#dashboards/access-and-sharing/manage-view-access}

To manage users\' rights to view and interact with a dashboard:

1.  In the Dashboards app, go to
    `Configuration --> Dashboards`{.interpreted-text
    role="menuselection"}.
2.  From the list of dashboard sections, open the relevant section.
3.  On the line of the relevant dashboard, in the
    `Group`{.interpreted-text role="guilabel"} column:
    - add a user group by clicking the field until a dropdown with user
      groups appears, then selecting the appropriate user group. In the
      dropdown, click `Search More`{.interpreted-text role="guilabel"}
      to access the full list of user groups;
    - remove a user group by clicking the relevant group name, then
      clicking `fa-times`{.interpreted-text role="icon"}
      `(Delete)`{.interpreted-text role="guilabel"}.

### Building, customizing and configuring dashboards {#dashboards/access-and-sharing/customize-configure-build}

Only users with [Dashboards / Admin]{.title-ref} access rights can
`customize dashboards
<build_and_customize_dashboards/customize>`{.interpreted-text
role="ref"} or `configure dashboard settings
<dashboards/configuration>`{.interpreted-text role="ref"}. To
`build a dashboard from scratch
<build_and_customize_dashboards/build>`{.interpreted-text role="ref"}, a
user must have both [Dashboards / Admin]{.title-ref} and, at minimum for
the Documents app, [Documents / User]{.title-ref} access rights.

### Sharing a dashboard snapshot {#dashboards/access-and-sharing/sharing}

To share a frozen version of a dashboard with an internal user who does
not have the appropriate access or with an external party, click
`fa-share-alt`{.interpreted-text role="icon"} `Share`{.interpreted-text
role="guilabel"} at the top-right of the page then click the
`fa-clone`{.interpreted-text role="icon"} `(copy)`{.interpreted-text
role="guilabel"} icon to copy a shareable link to your clipboard.




--- SOURCE: productivity/data_cleaning.md ---

# Data Cleaning

The Odoo **Data Cleaning** app maintains data integrity and consistency
with the following features:

- `Deduplicates <data_cleaning/deduplication>`{.interpreted-text
  role="ref"}: merges or removes duplicate entries to ensure data is
  unique.
- `Recycles <data_cleaning/recycle>`{.interpreted-text role="ref"}:
  identifies outdated records to either archive or delete them.
- `Formats <data_cleaning/field-cleaning>`{.interpreted-text
  role="ref"}: standardizes text data by finding and replacing it
  according to specified needs.

Customizable rules ensure text data stays up-to-date, streamlined,
consistently formatted, and aligned with company-specific formatting
requirements.

## Install modules {#data_cleaning/install-modules}

The **Data Cleaning** application consists of several modules.
`Install <general/install>`{.interpreted-text role="ref"} the following
to access all available features:

+---------------------------------------------+----------------------------------------------------------------+
| | Name                                      | Description                                                    |
| | [Technical name]{.title-ref}              |                                                                |
+=============================================+================================================================+
| | `Data Recycle`{.interpreted-text          | Base module to enable the recycle feature, available on        |
|   role="guilabel"}                          | `Odoo Community edition                                        |
| | [data_recycle]{.title-ref}                | <install/editions>`{.interpreted-text role="ref"}.             |
+---------------------------------------------+----------------------------------------------------------------+
| | `Data Cleaning`{.interpreted-text         | Enables field cleaning feature to format text data across      |
|   role="guilabel"}                          | multiple records, available **only** on                        |
| | [data_cleaning]{.title-ref}               | `Odoo Enterprise edition <install/editions>`{.interpreted-text |
|                                             | role="ref"}.                                                   |
+---------------------------------------------+----------------------------------------------------------------+
| | `Data Cleaning (merge)`{.interpreted-text | Enables the deduplication feature to find similar (or          |
|   role="guilabel"}                          | duplicate) records, and merge them, available **only** on      |
| | [data_merge]{.title-ref}                  | `Odoo Enterprise edition <install/editions>`{.interpreted-text |
|                                             | role="ref"}.                                                   |
+---------------------------------------------+----------------------------------------------------------------+

::: spoiler
Additionally, several app-specific modules are available

+---------------------------------------------+--------------------------------------------------------------------------+
| | `CRM Deduplication`{.interpreted-text     | Enables the deduplication feature on the **CRM** app, and uses the       |
|   role="guilabel"}                          | `CRM default                                                             |
| | [data_merge_crm]{.title-ref}              | merging feature <../sales/crm/pipeline/merge_similar>`{.interpreted-text |
|                                             | role="doc"}.                                                             |
+---------------------------------------------+--------------------------------------------------------------------------+
| | `Helpdesk Merge action`{.interpreted-text | Enables the merge feature for the **Helpdesk** app.                      |
|   role="guilabel"}                          |                                                                          |
| | [data_merge_helpdesk]{.title-ref}         |                                                                          |
+---------------------------------------------+--------------------------------------------------------------------------+
| | `Project Merge action`{.interpreted-text  | Enables the merge feature for the **Projects** app.                      |
|   role="guilabel"}                          |                                                                          |
| | [data_merge_project]{.title-ref}          |                                                                          |
+---------------------------------------------+--------------------------------------------------------------------------+
| | `UTM Deduplication`{.interpreted-text     | Enables the merge feature for the **UTM Tracker** app.                   |
|   role="guilabel"}                          |                                                                          |
| | [data_merge_utm]{.title-ref}              |                                                                          |
+---------------------------------------------+--------------------------------------------------------------------------+
| | `WMS Accounting Merge`{.interpreted-text  | Creates a warning in cases of products merging that may affect inventory |
|   role="guilabel"}                          | valuation, if the **Inventory** app is installed.                        |
| | [data_merge_stock_account]{.title-ref}    |                                                                          |
+---------------------------------------------+--------------------------------------------------------------------------+
:::

## Deduplication {#data_cleaning/deduplication}

The *Duplicates* dashboard groups similar records to be
`merged <data_cleaning/merge-records>`{.interpreted-text role="ref"} by
matching conditions within the records set by the `deduplication rules
<data_cleaning/deduplication-rules>`{.interpreted-text role="ref"}.

Navigate to this dashboard by going to
`Data Cleaning app --> Deduplication`{.interpreted-text
role="menuselection"}.

![Deduplication dashboard in the Data Cleaning application.](data_cleaning/data-cleaning-duplicates.png)

The `RULE`{.interpreted-text role="guilabel"} sidebar lists each of the
active deduplication rules, and displays the total number of duplicates
detected beside each rule.

By default, the `All`{.interpreted-text role="guilabel"} rule is
selected. Records are grouped by their rule, with a
`Similarity`{.interpreted-text role="guilabel"} rating (out of 100%),
with the following columns:

- `Created On`{.interpreted-text role="guilabel"}: the date and time the
  original record was created.
- `Name`{.interpreted-text role="guilabel"}: the name or title of the
  original record.
- `Field Values`{.interpreted-text role="guilabel"}: the original
  record\'s values for the fields used to detect duplicates.
- `Used In`{.interpreted-text role="guilabel"}: lists other models
  referencing the original record.
- `ID`{.interpreted-text role="guilabel"}: the original record\'s unique
  ID.
- `Is Master`{.interpreted-text role="guilabel"}: the duplicates are
  merged into the *master* record. There can only be **one** master
  record in a grouping of similar records.

Select a specific rule in the `RULE`{.interpreted-text role="guilabel"}
sidebar to filter the duplicate records.

### Merge duplicate records {#data_cleaning/merge-records}

To merge records, first choose a *master* record within the grouping of
similar records. The master record acts as the base, at which any
additional information from similar records are merged into.

Optionally, no master record can be set, leaving Odoo to choose a record
at random to merge into.

Next, click the `Merge`{.interpreted-text role="guilabel"} button at the
top of the similar records grouping. Then, click `Ok`{.interpreted-text
role="guilabel"} to confirm the merge.

Once a record is merged, a message is logged in the chatter of the
master record, describing the merge. Certain records, like **Project**
tasks, are logged in the chatter with a link to the old record as a
convenient reference of the merge.

:::: tip
::: title
Tip
:::

Discard groupings by clicking the `DISCARD`{.interpreted-text
role="guilabel"} button. Upon doing so, the grouping is hidden from the
list and archived.

View discarded groupings by selecting the `Discarded`{.interpreted-text
role="guilabel"} filter from the `search bar
<search/filters>`{.interpreted-text role="ref"}.
::::

### Deduplication rules {#data_cleaning/deduplication-rules}

The *Deduplication Rules* set the conditions for how records are
detected as duplicates.

These rules can be configured for each model in the database, and with
varying levels of specificity. To get started, navigate to
`Data Cleaning app --> Configuration -->
Deduplication`{.interpreted-text role="menuselection"}.

:::: tip
::: title
Tip
:::

The deduplication rules run once every day, by default, as part of a
scheduled action cron (*Data Merge: Find Duplicate Records*). However,
each rule can be `ran manually
<data_cleaning/run-deduplication-rule>`{.interpreted-text role="ref"}
anytime.
::::

#### Modify a deduplication rule

Select a default rule to edit, or create a new rule by clicking on the
`New`{.interpreted-text role="guilabel"} button.

First, choose a `Model`{.interpreted-text role="guilabel"} for this rule
to target. Selecting a model updates the rule title to the chosen model.

Optionally, configure a `Domain`{.interpreted-text role="guilabel"} to
specify the records eligible for this rule. The number of eligible
records is shown in the `oi-arrow-right`{.interpreted-text role="icon"}
`# record(s)`{.interpreted-text role="guilabel"} link.

Depending on the selected `Model`{.interpreted-text role="guilabel"},
the `Duplicate Removal`{.interpreted-text role="guilabel"} field
appears. Choose whether to `Archive`{.interpreted-text role="guilabel"}
or `Delete`{.interpreted-text role="guilabel"} merged records.

Next, select a `Merge Mode`{.interpreted-text role="guilabel"}:

- `Manual`{.interpreted-text role="guilabel"}: requires each duplicate
  grouping to be manually merged, also enables the
  `Notify Users`{.interpreted-text role="guilabel"} field.
- `Automatic`{.interpreted-text role="guilabel"}: automatically merges
  duplicate groupings, without notifying users, based on the records
  with a similarity percentage above the threshold set in the
  `Similarity
  Threshold`{.interpreted-text role="guilabel"} field.

Enable the `Active`{.interpreted-text role="guilabel"} toggle to start
capturing duplicates with this rule as soon as it is saved.

Lastly, create at least one deduplication rule in the
`Deduplication Rules`{.interpreted-text role="guilabel"} field, by
clicking `Add a line`{.interpreted-text role="guilabel"}, under the
`Unique ID Field`{.interpreted-text role="guilabel"} column.

- Select a field in the model from the
  `Unique ID Field`{.interpreted-text role="guilabel"} drop-down menu.
  This field is referenced for similar records.
- Select a matching condition in the `Match If`{.interpreted-text
  role="guilabel"} field to apply the deduplication rule, depending on
  the text in the `Unique ID Field`{.interpreted-text role="guilabel"}:
  - `Exact Match`{.interpreted-text role="guilabel"}: the characters in
    the text match exactly.
  - `Case/Accent Insensitive Match`{.interpreted-text role="guilabel"}:
    the characters in the text match, regardless of casing and
    language-specific accent differences.

:::: important
::: title
Important
:::

At least one `Deduplication Rules`{.interpreted-text role="guilabel"}
must be set for the rule to capture duplicates.
::::

:::: tip
::: title
Tip
:::

A few more fields are available for an advanced configuration.

If on a multi-company database, the `Cross-Company`{.interpreted-text
role="guilabel"} field is available. When enabled, duplicates across
different companies are suggested.

Activate `developer-mode`{.interpreted-text role="ref"} to display the
`Suggestion Threshold`{.interpreted-text role="guilabel"} field.
Duplicates with a similarity below the threshold set in this field are
**not** suggested.
::::

With the rule\'s configuration complete, either close the rule form, or
`run the rule manually
<data_cleaning/run-deduplication-rule>`{.interpreted-text role="ref"} to
instantly capture duplicate records.

#### Manually run a deduplication rule {#data_cleaning/run-deduplication-rule}

To manually run a specific deduplication rule at any time, navigate to
`Data Cleaning
app --> Configuration --> Deduplication`{.interpreted-text
role="menuselection"}, and select the rule to run.

Then, on the rule form, select the `Deduplicate`{.interpreted-text
role="guilabel"} button on the top-left. Upon doing so, the
`fa-clone`{.interpreted-text role="icon"} `Duplicates`{.interpreted-text
role="guilabel"} smart button displays the number of duplicates
captured.

Click on the `fa-clone`{.interpreted-text role="icon"}
`Duplicates`{.interpreted-text role="guilabel"} smart button to
`manage these records
<data_cleaning/merge-records>`{.interpreted-text role="ref"}.

## Recycle records {#data_cleaning/recycle}

Use the *recycle records* feature to rid the database of old and
outdated records.

The *Field Recycle Records* dashboard displays records that can be
archived or deleted, by matching conditions within the records set by
the
`recycle record's rules <data_cleaning/recylce-rule>`{.interpreted-text
role="ref"}.

Navigate to this dashboard by going to
`Data Cleaning app --> Recycle Records`{.interpreted-text
role="menuselection"}.

![Field Recycle Records dashboard in the Data Cleaning application.](data_cleaning/data-cleaning-recycle.png)

The `RECYCLE RULES`{.interpreted-text role="guilabel"} sidebar lists
each of the active recycle record rules.

By default, the `All`{.interpreted-text role="guilabel"} option is
selected. Records are displayed with the following columns:

- `Record ID`{.interpreted-text role="guilabel"}: the ID of the original
  record.
- `Record Name`{.interpreted-text role="guilabel"}: the name or title of
  the original record.

Select a specific rule in the `RECYCLE RULES`{.interpreted-text
role="guilabel"} sidebar to filter the records.

To recycle records, click the `fa-check`{.interpreted-text role="icon"}
`Validate`{.interpreted-text role="guilabel"} button on the row of the
record.

Upon doing so, the record is recycled, depending on how the rule is
configured, to be either archived or deleted from the database.

:::: tip
::: title
Tip
:::

Discard groupings by clicking the `fa-times`{.interpreted-text
role="icon"} `Discard`{.interpreted-text role="guilabel"} button. Upon
doing so, the record is hidden from the list, and is not detected by the
recycle rule again in the future.

View discarded records by selecting the `Discarded`{.interpreted-text
role="guilabel"} filter from the `search bar
<search/filters>`{.interpreted-text role="ref"} drop-down menu.
::::

### Recycle record rules {#data_cleaning/recylce-rule}

The *Recycle Records Rules* set the conditions for how records are
recycled.

These rules can be configured for each model in the database, and with
varying levels of specificity. To get started, navigate to
`Data Cleaning app --> Configuration -->
Recycle Records`{.interpreted-text role="menuselection"}.

:::: tip
::: title
Tip
:::

Recycle rules run once a day, by default, as part of a scheduled action
cron (*Data Recycle: Clean Records*). However, each rule can be
`run manually <data-cleaning/run-recycle-rule>`{.interpreted-text
role="ref"} anytime.
::::

By default, no recycle record rules exist. Click the
`New`{.interpreted-text role="guilabel"} button to create a new rule.

On the recycle record rule form, first choose a
`Model`{.interpreted-text role="guilabel"} for this rule to target.
Selecting a model updates the rule title to the chosen model.

Optionally, configure a `Filter`{.interpreted-text role="guilabel"} to
specify the records eligible for this rule. The number of eligible
records is shown in the `oi-arrow-right`{.interpreted-text role="icon"}
`# record(s)`{.interpreted-text role="guilabel"} link.

Next, configure the field and time range for how the rule detects the
records to recycle:

- `Time Field`{.interpreted-text role="guilabel"}: select a field from
  the model to base the time (`Delta`{.interpreted-text role="dfn"}).
- `Delta`{.interpreted-text role="guilabel"}: type the length of time,
  which must be a whole number (e.g. [7]{.title-ref}).
- `Delta Unit`{.interpreted-text role="guilabel"}: select the unit of
  time (`Days`{.interpreted-text role="guilabel"},
  `Weeks`{.interpreted-text role="guilabel"}, `Months`{.interpreted-text
  role="guilabel"}, or `Years`{.interpreted-text role="guilabel"}).

Then, select a `Recycle Mode`{.interpreted-text role="guilabel"}:

- `Manual`{.interpreted-text role="guilabel"}: requires each detected
  record to be manually recycled, and enables the
  `Notify Users`{.interpreted-text role="guilabel"} field.
- `Automatic`{.interpreted-text role="guilabel"}: automatically merges
  recycled groupings, without notifying users.

Lastly, select a `Recycle Action`{.interpreted-text role="guilabel"} to
either `Archive`{.interpreted-text role="guilabel"} or
`Delete`{.interpreted-text role="guilabel"} records. If
`Delete`{.interpreted-text role="guilabel"} is selected, choose whether
or not to `Include Archived`{.interpreted-text role="guilabel"} records
in the rule.

With the rule\'s configuration complete, either close the rule form, or
`run the rule manually
<data-cleaning/run-recycle-rule>`{.interpreted-text role="ref"} to
instantly capture records to recycle.

::: example
A recycle rule can be configured to delete archived leads and
opportunities that were last updated a year ago, and with a specific
lost reason, by using the following configuration:

- `Model`{.interpreted-text role="guilabel"}:
  `Lead/Opportunity`{.interpreted-text role="guilabel"}
- `Filter`{.interpreted-text role="guilabel"}:
  - [Active]{.title-ref} [is]{.title-ref} [not set]{.title-ref}
  - [Lost Reason]{.title-ref} [is in]{.title-ref} [Too
    expensive]{.title-ref}
- `Time Field`{.interpreted-text role="guilabel"}:
  `Last Updated on (Lead/Opportunity)`{.interpreted-text
  role="guilabel"}
- `Delta`{.interpreted-text role="guilabel"}: [1]{.title-ref}
- `Delta Unit`{.interpreted-text role="guilabel"}:
  `Years`{.interpreted-text role="guilabel"}
- `Recycle Mode`{.interpreted-text role="guilabel"}:
  `Automatic`{.interpreted-text role="guilabel"}
- `Recycle Action`{.interpreted-text role="guilabel"}:
  `Delete`{.interpreted-text role="guilabel"}
- `Include Archived`{.interpreted-text role="guilabel"}:
  `fa-check-square`{.interpreted-text role="icon"}

![Recycle records rule form for a lead/opportunity.](data_cleaning/data-cleaning-recycle-rule.png)
:::

#### Manually run a recycle rule {#data-cleaning/run-recycle-rule}

To manually run a specific recycle rule at any time, navigate to
`Data Cleaning app
--> Configuration --> Recycle Records`{.interpreted-text
role="menuselection"}, and select the rule to run.

Then, on the rule form, click the `Run Now`{.interpreted-text
role="guilabel"} button on the top-left. Upon doing so, the
`fa-bars`{.interpreted-text role="icon"} `Records`{.interpreted-text
role="guilabel"} smart button displays the number of records captured.

Click the `fa-bars`{.interpreted-text role="icon"}
`Records`{.interpreted-text role="guilabel"} smart button to
`manage these records
<data_cleaning/recycle>`{.interpreted-text role="ref"}.

## Field cleaning {#data_cleaning/field-cleaning}

Use the field cleaning feature to maintain consistent formatting of
names, phone numbers, IDs and other fields throughout a database.

The *Field Cleaning Records* dashboard displays formatting changes to
data in fields of a record, to follow a convention set by the field
cleaning rules.

Navigate to this dashboard by going to
`Data Cleaning app --> Field Cleaning`{.interpreted-text
role="menuselection"}.

![Field Cleaning Records dashboard in the Data Cleaning application.](data_cleaning/data-cleaning-field.png)

The `CLEANING RULES`{.interpreted-text role="guilabel"} sidebar lists
each of the active cleaning rules.

By default, the `All`{.interpreted-text role="guilabel"} rule is
selected. Records are listed with the following columns:

- `Record ID`{.interpreted-text role="guilabel"}: the ID of the original
  record.
- `Record Name`{.interpreted-text role="guilabel"}: the name or title of
  the original record.
- `Field`{.interpreted-text role="guilabel"}: the original record\'s
  field that contains the value to format.
- `Current`{.interpreted-text role="guilabel"}: the current value in the
  field of the original record.
- `Suggested`{.interpreted-text role="guilabel"}: the suggested
  formatted value in the field of the original record.

To clean and format records, click the `fa-check`{.interpreted-text
role="icon"} `Validate`{.interpreted-text role="guilabel"} button on the
row of the record.

Upon doing so, the record is formatted and/or cleaned.

:::: tip
::: title
Tip
:::

Discard records by clicking the `fa-times`{.interpreted-text
role="icon"} `Discard`{.interpreted-text role="guilabel"} button. Upon
doing so, the record is hidden from the list and will not be detected by
the field cleaning rule again in the future.

View discarded records by selecting the `Discarded`{.interpreted-text
role="guilabel"} filter from the `search bar
<search/filters>`{.interpreted-text role="ref"}.
::::

### Field cleaning rules {#data_cleaning/field-cleaning-rule}

The *Field Cleaning Rules* set the conditions for fields to be cleaned
and/or formatted.

These rules can be configured for each model in the database, and with
varying levels of specificity. To get started, navigate to
`Data Cleaning app --> Configuration -->
Field Cleaning`{.interpreted-text role="menuselection"}.

:::: tip
::: title
Tip
:::

The field cleaning rules run once every day, by default, as part of a
scheduled action cron (*Data Cleaning: Clean Records*). However, each
rule can be `ran manually
<data-cleaning/run-field-cleaning-rule>`{.interpreted-text role="ref"}
anytime.
::::

By default, a `Contact`{.interpreted-text role="guilabel"} rule exists
to format and clean up the **Contacts** app records. Select the
`Contact`{.interpreted-text role="guilabel"} record to make edits, or
select the `New`{.interpreted-text role="guilabel"} button to create a
new rule.

On the field cleaning rule form, first choose a
`Model`{.interpreted-text role="guilabel"} for this rule to target.
Selecting a model updates the rule title to the chosen model.

Next, configure at least one rule by clicking
`Add a line`{.interpreted-text role="guilabel"} in the
`Rules`{.interpreted-text role="guilabel"} section.

Upon doing so, a `Create Rules`{.interpreted-text role="guilabel"}
popover window appears with the following fields to configure:

- Select a `Field To Clean`{.interpreted-text role="guilabel"} from the
  model to assign to an action.

- Choose one of the following `Action`{.interpreted-text
  role="guilabel"} options:

  - `Trim Spaces`{.interpreted-text role="guilabel"} reveals the
    `Trim`{.interpreted-text role="guilabel"} field to select the
    `All Spaces`{.interpreted-text role="guilabel"} or
    `Superfluous Spaces`{.interpreted-text role="guilabel"} option.
    Leading, trailing, and successive spaces are considered superfluous.

    ::: example
    The contact name [Dr. John Doe]{.title-ref} can be formatted with
    the following `Trim`{.interpreted-text role="guilabel"} options:

    - `All Spaces`{.interpreted-text role="guilabel"}:
      [DR.JohnDoe]{.title-ref}
    - `Superfluous Spaces`{.interpreted-text role="guilabel"}: [DR. John
      Doe]{.title-ref}
    :::

  - `Set Type Case`{.interpreted-text role="guilabel"} reveals the
    `Case`{.interpreted-text role="guilabel"} field to select either
    `First
    Letters to Uppercase`{.interpreted-text role="guilabel"},
    `All Uppercase`{.interpreted-text role="guilabel"}, or
    `All Lowercase`{.interpreted-text role="guilabel"}.

    ::: example
    The lead/opportunity title [lumber inc, Lorraine
    douglas]{.title-ref} can be formatted with the following
    `Case`{.interpreted-text role="guilabel"} options:

    - `First Letters to Uppercase`{.interpreted-text role="guilabel"}:
      [Lumber Inc, Lorraine Douglas]{.title-ref}
    - `All Uppercase`{.interpreted-text role="guilabel"}: [LUMBER INC,
      LORRAINE DOUGLAS]{.title-ref}
    - `All Lowercase`{.interpreted-text role="guilabel"}: [lumber inc,
      lorraine douglas]{.title-ref}
    :::

  - `Format Phone`{.interpreted-text role="guilabel"} converts the phone
    number to an international country format.

    ::: example
    - Belgium: [061928374]{.title-ref}
      `fa-long-arrow-right`{.interpreted-text role="icon"} [+32 61 92 83
      74]{.title-ref}
    - United States: [800 555-0101]{.title-ref}
      `fa-long-arrow-right`{.interpreted-text role="icon"} [+1
      800-555-0101]{.title-ref}
    :::

  - `Scrap HTML`{.interpreted-text role="guilabel"} converts
    `HTML (HyperText Markup Language)`{.interpreted-text role="abbr"} to
    plain text.

    ::: example
    ``` {.html caption="HTML text"}
    <h1>John Doe</h1>
    <p>Lorem ipsum dolor sit <a href="https://example.com">amet</a>.</p>
    ```

    ``` {.text caption="Plain text"}
    **John Doe** Lorem ipsum dolor sit amet [1] .[1] https://example.com
    ```
    :::

  Once a field and action are selected, click `Save`{.interpreted-text
  role="guilabel"} to close the `Create Rules`{.interpreted-text
  role="guilabel"} popover window.

Then, select a `Cleaning Mode`{.interpreted-text role="guilabel"}:

- `Manual`{.interpreted-text role="guilabel"}: requires each detected
  field to be manually cleaned and enables the
  `Notify Users`{.interpreted-text role="guilabel"} field.
- `Automatic`{.interpreted-text role="guilabel"}: automatically cleans
  fields without notifying users.

With the rule\'s configuration complete, either close the rule form, or
`run the rule manually
<data-cleaning/run-field-cleaning-rule>`{.interpreted-text role="ref"}
to instantly capture fields to clean.

#### Manually run a field cleaning rule {#data-cleaning/run-field-cleaning-rule}

To manually run a specific field cleaning rule at any time, navigate to
`Data
Cleaning app --> Configuration --> Field Cleaning`{.interpreted-text
role="menuselection"}, and select the rule to run.

Then, on the rule form, select the `Clean`{.interpreted-text
role="guilabel"} button on the top-left. Upon doing so, the
`fa-bars`{.interpreted-text role="icon"} `Records`{.interpreted-text
role="guilabel"} smart button displays the number of records captured.

Click on the `fa-bars`{.interpreted-text role="icon"}
`Records`{.interpreted-text role="guilabel"} smart button to
`manage these records
<data_cleaning/field-cleaning>`{.interpreted-text role="ref"}.

## Merge action manager {#data_cleaning/merge-action-manager}

The *Merge Action Manager* enables or disables the *Merge* action
available in the *Actions* menu for models in the database.

Enable `developer-mode`{.interpreted-text role="ref"} and navigate to
`Data Cleaning app --> Configuration -->
Merge Action Manager`{.interpreted-text role="menuselection"}.

Models are listed with the following columns:

- `Model`{.interpreted-text role="guilabel"}: technical name of the
  model.
- `Model Description`{.interpreted-text role="guilabel"}: display name
  of the model.
- `Type`{.interpreted-text role="guilabel"}: whether the model is of the
  *Base Object* or *Custom Object* type.
- `Transient Model`{.interpreted-text role="guilabel"}: the model
  handles temporary data that does not need to be stored long-term in
  the database.
- `Can Be Merged`{.interpreted-text role="guilabel"}: enables the
  *Merge* action for the model.

To view which models are enabled by default, use the
`search bar <search/filters>`{.interpreted-text role="ref"} to filter
models that `Can Be Merged`{.interpreted-text role="guilabel"}.

::: seealso
`../essentials/contacts/merge`{.interpreted-text role="doc"}
:::




--- SOURCE: productivity/discuss/canned_responses.md ---

# Canned responses

*Canned responses* are customizable inputs where a typed shortcut
populates a longer response. A user enters a keyword shortcut, which is
then automatically replaced by the expanded substitution response.
Canned responses save time by allowing users to use shorthand phrases to
populate longer messages. This also limits the possibility of errors
when typing out longer messages because these are pre-set messages. This
maintains consistency throughout customer interactions.

Canned responses consist of two main components: the *shortcut* and the
*substitution*. The shortcut is the keyword or key phrase that is to be
replaced. The substitution is the longer message that replaces the
shortcut.

![A live chat conversation using a canned response.](canned_responses/canned-response-sample.png)

Canned responses are available
`to use <discuss/use-cases>`{.interpreted-text role="ref"} in **Live
Chat** conversations, the **Discuss** app, and the *Chatter*. Canned
responses are also available in direct message conversations, channel
conversations, and *WhatsApp* messages.

## Creating canned responses {#discuss/created-canned-response}

Canned responses are managed through the **Discuss** application. To
create a new canned response, or manage the list of existing responses,
navigate to `Discuss app --> Configuration
--> Canned Responses`{.interpreted-text role="menuselection"}.

Then, to create a new canned response, click `New`{.interpreted-text
role="guilabel"} at the top-left of the list. Doing so reveals a new
blank line in the list.

Canned responses consist of two main components, a *shortcut* the user
enters, and the *substitution* that replaces the shortcut.

![A list of canned responses emphasizing the shortcut and substitution fields.](canned_responses/shortcut-substitution.png)

Type a shortcut command in the `Shortcut`{.interpreted-text
role="guilabel"} field. Next, click on the
`Substitution`{.interpreted-text role="guilabel"} field, and type the
message that will replace the shortcut.

:::: tip
::: title
Tip
:::

Try to connect the shortcut to the topic of the substitution. Not only
does this make it easier to use the responses, it prevents the list of
responses from becoming disorganized and overwhelming.
::::

The `Created by`{.interpreted-text role="guilabel"} field automatically
populates with the name of the user that creates a new response. This
field cannot be edited.

To `share <discuss/sharing-responses>`{.interpreted-text role="ref"}
this response with other users, select one or more groups in the
`Authorized Group`{.interpreted-text role="guilabel"} field that should
have access.

:::: warning
::: title
Warning
:::

If the `Authorized Group`{.interpreted-text role="guilabel"} field is
left blank, the response can **only** be used by the user that created
it.

Canned responses created by the database are automatically credited as
created by *OdooBot*. They must be assigned to an *authorized group*
before they can be used by **any** users. To view the responses created
by *OdooBot*, navigate to `Discuss app --> Configuration -->
Canned Responses`{.interpreted-text role="menuselection"}.
::::

Lastly, the `Last Used`{.interpreted-text role="guilabel"} field keeps
track of the date and time each response was most recently used. This
field cannot be edited.

## Share responses {#discuss/sharing-responses}

Canned responses, by default, are made available **only** to the user
who creates them. To make a canned response available for others to use,
they need to be shared.

:::: note
::: title
Note
:::

Users with *Administrator* access rights can view and edit canned
responses created by other users through the **Discuss** app. However,
they are **only** able to use them if they are included in an authorized
group that has been designated on that canned responses item line,
located on the `Canned Responses`{.interpreted-text role="guilabel"}
page.
::::

Access to shared responses is granted on the
`groups <access-rights/groups>`{.interpreted-text role="ref"} level.

To view the *Groups* a user is a member of, first enable
`Developer mode <developer-mode>`{.interpreted-text role="ref"}, then
navigate to
`Settings app --> Users & Companies --> Users`{.interpreted-text
role="menuselection"}. Select a user from the list, and click to open
their `User Record`{.interpreted-text role="guilabel"}. Then, click the
`Groups`{.interpreted-text role="guilabel"} smart button at the top of
the page.

:::: tip
::: title
Tip
:::

To view a list of users in a specific group, first enable
`Developer mode
<../../general/developer_mode/>`{.interpreted-text role="doc"}. Next,
navigate to `Settings app --> Users &
Companies --> Groups`{.interpreted-text role="menuselection"}. Select a
group from the list, then click to open the `Group
Record`{.interpreted-text role="guilabel"}. A list of users is included
on the `Users`{.interpreted-text role="guilabel"} tab.
::::

After determining what groups should have access to a response, they
**must** `be added
<discuss/created-canned-response>`{.interpreted-text role="ref"} to the
`Authorized Groups`{.interpreted-text role="guilabel"} field for each
canned response.

:::: note
::: title
Note
:::

The user who created the response can use it, even if they are not a
member of one of the *Authorized Groups*.
::::

## Use a canned response {#discuss/use-cases}

To use a canned response in a conversation, click the
`fa-plus-circle`{.interpreted-text role="icon"}
`(plus)`{.interpreted-text role="guilabel"} icon in the message window.
Then, click `Insert a Canned Response`{.interpreted-text
role="guilabel"}. This opens a list of available canned responses.
Either select a response from the list, or type the appropriate
shortcut, then click the `fa-paper-plane`{.interpreted-text role="icon"}
`(send)`{.interpreted-text role="guilabel"} icon or hit
`Enter`{.interpreted-text role="kbd"}.

:::: tip
::: title
Tip
:::

Typing [::]{.title-ref} in the *Chatter* composer, or chat window, on
its own generates a drop-down list of available canned responses. A
response can be selected from the list, in addition to the use of
shortcuts.

To search through the list of available responses, type
[::]{.title-ref}, followed by the first few letters of the shortcut.

![A live chat window with a list of all available canned responses.](canned_responses/canned-responses-using.png)
::::

::: seealso
\- `Chatter <chatter>`{.interpreted-text role="doc"} -
`Discuss <../discuss>`{.interpreted-text role="doc"} -
`Commands and Canned Responses <live-chat/canned-responses>`{.interpreted-text
role="ref"}
:::




--- SOURCE: productivity/discuss/chatter.md ---

# Chatter

The *Chatter* feature is integrated throughout Odoo to streamline
communication, maintain traceability, and provide accountability among
team members. Chatter windows, known as *composers*, are located on
almost every record within the database, and allow users to communicate
with both internal users and external contacts.

Chatter composers also enable users to log notes, upload files, and
schedule activities.

## Chatter thread

A *chatter thread* can be found on most pages in the database, and
serves as a record of the updates and edits made to a record. A note is
logged in the chatter thread when a change is made to the record. The
note includes details of the change, and a time stamp.

::: example
A user, Mitchell Admin, needs to update the email address of a contact.
After they save the changes to the contact record, a note is logged in
the chatter of the contact record with the following information:

- The date when the change occurred.
- The email address as it was previously listed.
- The updated email address.

![A close up of a chatter thread with an update to a contact record.](chatter/chatter-thread-email-update.png)
:::

If a record was created, or edited, via an imported file, or was
otherwise updated through an intervention by the system, the chatter
thread creates a log note, and credits the change to OdooBot.

![A close up of a chatter thread of an OdooBot created contact record.](chatter/odoo-bot-created.png)

## Add followers {#discuss/add-followers}

A *follower* is a user or contact that is added to a record and is
notified when the record is updated, based on specific
`follower subscription settings <discuss/edit-subscription>`{.interpreted-text
role="ref"}. Followers can add themselves, or can be added by another
user.

:::: note
::: title
Note
:::

If a user creates, or is assigned to a record, they are automatically
added as a follower.
::::

To follow a record, navigate to any record with a chatter thread. For
example, to open a *Helpdesk* ticket, navigate to
`Helpdesk app --> Tickets --> All Tickets`{.interpreted-text
role="menuselection"}, and select a ticket from the list to open it.

At the top-right, above the chatter composer, click
`Follow`{.interpreted-text role="guilabel"}. Doing this changes the
button to read `Following`{.interpreted-text role="guilabel"}. Click it
again to `Unfollow`{.interpreted-text role="guilabel"}.

### Manage followers

To add another user, or contact, as a follower, click the
`fa-user-o`{.interpreted-text role="icon"} `(user)`{.interpreted-text
role="guilabel"} icon. This opens a drop-down list of the current
followers. Click `Add Followers`{.interpreted-text role="guilabel"} to
open an `Invite Follower`{.interpreted-text role="guilabel"} pop-up
window.

Select one or more contacts from the `Recipients`{.interpreted-text
role="guilabel"} drop-down list. To notify the contacts, tick the
`Send Notification`{.interpreted-text role="guilabel"} checkbox. Edit
the message template as desired, then click
`Add Followers`{.interpreted-text role="guilabel"}.

To remove followers, click the `fa-user-o`{.interpreted-text
role="icon"} `(user)`{.interpreted-text role="guilabel"} icon to open
the current followers list. Find the name of the follower to be removed,
and click the `fa-remove`{.interpreted-text role="icon"}
`(remove)`{.interpreted-text role="guilabel"} icon.

### Edit follower subscription {#discuss/edit-subscription}

The updates a follower receives can vary based on their subscription
settings. To see the type of updates a follower is subscribed to, and to
edit the list, click the `fa-user-o`{.interpreted-text role="icon"}
`(user)`{.interpreted-text role="guilabel"} icon. Find the appropriate
follower in the list, then click the `fa-pencil`{.interpreted-text
role="icon"} `(pencil)`{.interpreted-text role="guilabel"} icon. This
opens the `Edit Subscription`{.interpreted-text role="guilabel"} pop-up
window for the follower.

The list of available subscription settings varies depending on the
record type. For example, a follower of a *Helpdesk* ticket may be
informed when the ticket is rated. This option would not be available
for the followers of a *CRM* opportunity.

Tick the checkbox for any updates the follower should receive, and clear
the checkbox for any updates they should **not** receive. Click
`Apply`{.interpreted-text role="guilabel"} when finished.

![The Edit Subscription options vary depending on the record type. These
are the options for a Helpdesk
ticket.](chatter/chatter-edit-subscription.png){alt="The Edit Subscription window on a Helpdesk ticket."}

## Log notes {#discuss/log-notes}

The chatter function includes the ability to log internal notes on
individual records. These notes are only accessible to internal users,
and are available on any records that feature a chatter thread.

To log an internal note, first navigate to a record. For example, to
open a *CRM* opportunity, navigate to
`CRM app --> Sales --> My Pipeline`{.interpreted-text
role="menuselection"}, and click on the Kanban card of an opportunity to
open it. Then, at the top-right, above the chatter composer, click `Log
note`{.interpreted-text role="guilabel"}.

Enter the note in the chatter composer. To tag an internal user, type
[@]{.title-ref}, and begin typing the name of the person to tag. Then,
select a name from the drop-down menu. Depending on their notification
settings, the user is notified by email, or through Odoo.

:::: important
::: title
Important
:::

Outside contacts can also be tagged in an internal log note. The contact
then receives an email with the contents of the note they were tagged
in, including any attachments added directly to the note. If they
respond to the email, their response is logged in the chatter, and they
are added to the record as a follower.

Outside contacts are **not** able to log in to view the entire chatter
thread, and are only notified of specific updates, based on their
`follower subscription settings
<discuss/edit-subscription>`{.interpreted-text role="ref"}, or when they
are tagged directly.
::::

## Send messages {#discuss/send-messages}

Chatter composers can send messages to outside contacts, without having
to leave the database, or open a different application. This makes it
easy to communicate with potential customers in the *Sales* and *CRM*
applications, or vendors in the *Purchase* app.

To send a message, first navigate to a record. For example, to send a
message from a *CRM* opportunity, navigate to
`CRM app --> Sales --> My Pipeline`{.interpreted-text
role="menuselection"}, and click on the Kanban card of an opportunity to
open it. Then, at the top-right, above the chatter composer, click
`Send message`{.interpreted-text role="guilabel"}.

:::: tip
::: title
Tip
:::

Press `Ctrl + Enter`{.interpreted-text role="command"} to send a
message, instead of using the `Send`{.interpreted-text role="guilabel"}
button.
::::

If any `followers <discuss/add-followers>`{.interpreted-text role="ref"}
have been added to the record, they are added as recipients of the
message.

:::: warning
::: title
Warning
:::

`Followers <discuss/add-followers>`{.interpreted-text role="ref"} of a
record are added as recipients of a message automatically. If a follower
should **not** receive a message, they must be removed as a follower
before the message is sent, or a note is logged.
::::

![A chatter composer preparing to send a message to the followers of a CRM opportunity and
the customer listed on the opportunity record.](chatter/send-message-followers.png)

### Expand full composer

The chatter composer can be expanded to a larger pop-up window, allowing
for additional customizations.

To open the full composer, click the `fa-expand`{.interpreted-text
role="icon"} `(expand)`{.interpreted-text role="guilabel"} icon in the
bottom-right corner of the composer window.

![The expand icon in a chatter
composer.](chatter/chatter-expand-icon.png){alt="A chatter composer with emphasis on the expand icon."}

Doing this opens a `Compose Email`{.interpreted-text role="guilabel"}
pop-up window. Confirm or edit the intended
`Recipients`{.interpreted-text role="guilabel"} of the message, or add
additional recipients. The `Subject`{.interpreted-text role="guilabel"}
field auto-populates based on the title of the record, though it can be
edited, if desired.

To use an
`email template <../../general/companies/email_template/>`{.interpreted-text
role="doc"} for the message, click the `fa-ellipsis-v`{.interpreted-text
role="icon"} `(vertical ellipsis)`{.interpreted-text role="guilabel"}
icon, then select a template from the list. Existing templates can also
be overwritten or deleted from this menu.

:::: note
::: title
Note
:::

The number and type of templates available vary, based on the record the
message is created from.
::::

Click `fa-paperclip`{.interpreted-text role="icon"}
`(paperclip)`{.interpreted-text role="guilabel"} icon to add any files
to the message, then click `Send`{.interpreted-text role="guilabel"}.

![The expanded full chatter composer in the CRM application.](chatter/chatter-full-composer.png)

#### Generate text with AI

To generate message text using AI, click the AI icon from the expanded
chatter composer. This opens a `Generate Text with AI`{.interpreted-text
role="guilabel"} pop-up.

Enter a prompt in the `Send a message`{.interpreted-text
role="guilabel"} field to instruct the AI on the type of content needed,
then press enter, or click the `fa-paper-plane`{.interpreted-text
role="icon"} `(paper plane)`{.interpreted-text role="guilabel"} icon.

![The generate text with AI popup.](chatter/chatter-generate-text-with-ai.png)

After the text is generated, click `Insert`{.interpreted-text
role="guilabel"} to insert the text into the message composer.

:::: tip
::: title
Tip
:::

Before sending the final message, be sure to edit any commentary from
the AI, or any text in brackets.

![A draft of an email with text generated by AI.](chatter/chatter-ai-draft-email.png)
::::

### Edit sent messages

Messages can be edited after they are sent, to fix typos, correct
mistakes, or add missing information.

:::: note
::: title
Note
:::

When messages are edited after they have been sent, an updated message
is **not** sent to the recipient.
::::

To edit a sent message, click the `fa-ellipsis-v`{.interpreted-text
role="icon"} `(vertical ellipsis)`{.interpreted-text role="guilabel"}
menu to the right of the message. Then, select `Edit`{.interpreted-text
role="guilabel"}. Make any necessary adjustments to the message.

![The edit message option in a chatter thread.](chatter/chatter-edit.png)

To save the changes, press `Ctrl + Enter`{.interpreted-text
role="command"}. To discard the changes, press
`Escape`{.interpreted-text role="command"}.

:::: important
::: title
Important
:::

Users with Admin-level access rights can edit any sent messages. Users
without Admin rights can **only** edit messages they created.
::::

## Search messages {#discuss/search-messages}

Chatter threads can become long after a while, because of all the
information they contain. To make it easier to find a specific entry,
users can search the text of messages and notes for specific keywords.

First, select a record with a chatter thread. For example, to search a
*CRM* opportunity, navigate to
`CRM app --> Sales --> My Pipeline`{.interpreted-text
role="menuselection"}, and click on the Kanban card of an opportunity to
open it. Then, at the top-right, above the chatter composer, click the
`oi-search`{.interpreted-text role="icon"} `(search)`{.interpreted-text
role="guilabel"} icon to open the search bar.

Enter a keyword or phrase into the search bar, then hit
`Enter`{.interpreted-text role="command"}, or click the
`oi-search`{.interpreted-text role="icon"} `(search)`{.interpreted-text
role="guilabel"} icon to the right of the search bar. Any messages or
notes containing the keyword or phrase entered are listed below the
search bar, with the keyword highlighted.

To be taken directly to a particular message in the chatter thread,
hover over the upper-right corner of the result to reveal a
`Jump`{.interpreted-text role="guilabel"} button. Click this button to
be directed to that message\'s location in the thread.

![Search results in a chatter thread. Hover over the upper-right corner
of a result to see the **Jump** option. Click it to be taken directly to
that message in the chatter
thread.](chatter/chatter-search.png){alt="Search results in a chatter thread emphasising the search icon and the jump button."}

## Schedule activities {#discuss/schedule-activities}

*Activities* are follow-up tasks tied to a record in an Odoo database.
Activities can be scheduled on any database page that contains a chatter
thread, Kanban view, list view, or activities view of an application.

To schedule an activity through a chatter thread, click the
`Activities`{.interpreted-text role="guilabel"} button, located at the
top of the chatter on any record. On the
`Schedule Activity`{.interpreted-text role="guilabel"} pop-up window
that appears, select an `Activity Type`{.interpreted-text
role="guilabel"} from the drop-down menu.

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

Select a name from the `Assigned to`{.interpreted-text role="guilabel"}
drop-down menu to assign the activity to a different user. Otherwise,
the user creating the activity is automatically assigned.

Add any additional information in the optional
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
- `Schedule & Mark as Done`{.interpreted-text role="guilabel"}: adds the
  details of the activity to the chatter under `Today`{.interpreted-text
  role="guilabel"}. The activity is added to `Today`{.interpreted-text
  role="guilabel"}, and is automatically marked as done.
- `Done \& Schedule Next`{.interpreted-text role="guilabel"}: adds the
  task under `Today`{.interpreted-text role="guilabel"} marked as done,
  and opens a new activity window.
- `Cancel`{.interpreted-text role="guilabel"}: discards any changes made
  on the pop-up window.

Scheduled activities are added to the chatter for the record under
`Planned activities`{.interpreted-text role="guilabel"}, and are
color-coded based on their due date.

- **Red** icons indicate an overdue activity.
- **Yellow** icons indicate an activity with a due date scheduled for
  the current date.
- **Green** icons indicate an activity with a due date scheduled in the
  future.

![A chatter thread with planned activities with varying due dates.](chatter/chatter-activity-icons.png)

:::: tip
::: title
Tip
:::

Click the `fa-info-circle`{.interpreted-text role="icon"}
`(info)`{.interpreted-text role="guilabel"} icon next to a planned
activity to see additional details.

![A detailed view of a planned activity.](chatter/planned-activity-details.png)
::::

After completing an activity, click `Mark Done`{.interpreted-text
role="guilabel"} under the activity entry in the chatter. This opens a
`Mark Done`{.interpreted-text role="guilabel"} pop-up window, where
additional notes about the activity can be entered. After adding any
comments to the pop-up window, click:
`Done \& Schedule Next`{.interpreted-text role="guilabel"},
`Done`{.interpreted-text role="guilabel"}, or
`Discard`{.interpreted-text role="guilabel"}.

After the activity is marked complete, an entry with the activity type,
title, and any other details that were included in the pop-up window are
listed in the chatter.

![A chatter thread with a completed activity, included additional details.](chatter/chatter-completed-activity.png)

## Attach files {#discuss/attach-files}

Files can be added as attachments in the chatter, either to send with
messages, or to include with a record.

:::: note
::: title
Note
:::

After a file has been added to a chatter thread, it can be downloaded by
any user with access to the thread. Click the
`fa-paperclip`{.interpreted-text role="icon"}
`(paperclip)`{.interpreted-text role="guilabel"} icon to make the files
header visible, if necessary. Then, click the
`fa-download`{.interpreted-text role="icon"}
`(download)`{.interpreted-text role="guilabel"} icon the file to
download it.
::::

To attach a file, click the `fa-paperclip`{.interpreted-text
role="icon"} `(paperclip)`{.interpreted-text role="guilabel"} icon
located at the top of the chatter composer of any record that contains a
chatter thread.

This opens a file explorer pop-up window. Navigate to the desired file,
select it, then click `Open`{.interpreted-text role="guilabel"} to add
it to the record. Alternatively, files can be dragged and dropped
directly onto a chatter thread.

After files have been added, they are listed in the chatter thread,
under a `Files`{.interpreted-text role="guilabel"} heading.

:::: note
::: title
Note
:::

After at least one file has been added to a chatter record, a new button
labeled `Attach files`{.interpreted-text role="guilabel"} appears below
the `Files`{.interpreted-text role="guilabel"} heading. To attach any
additional files, this is the button that **must** be used, instead of
the `fa-paperclip`{.interpreted-text role="icon"}
`(paperclip)`{.interpreted-text role="guilabel"} icon at the top of the
chatter thread.

After the `Files`{.interpreted-text role="guilabel"} section heading
appears in the thread, clicking the `fa-paperclip`{.interpreted-text
role="icon"} `(paperclip)`{.interpreted-text role="guilabel"} icon no
longer opens a file explorer pop-up window. Instead, clicking the
`fa-paperclip`{.interpreted-text role="icon"}
`(paperclip)`{.interpreted-text role="guilabel"} icon toggles the
`Files`{.interpreted-text role="guilabel"} section from visible to
invisible in the chatter thread.

![A chatter thread with a file attached and the Attach files button added.](chatter/chatter-attach-files.png)
::::

## Integrations {#discuss/integrations}

Beyond the standard features, additional integrations can be enabled to
work with the chatter feature, specifically *WhatsApp* and *Google
Translate*.

:::: important
::: title
Important
:::

Before the *WhatsApp* and *Google Translate* integrations can be used
with the chatter, they **must** be configured. Step-by-step instructions
on how to set-up each of these features can be found in the
documentation below:

- `WhatsApp <../whatsapp>`{.interpreted-text role="doc"}
- `Google Translate <../../general/integrations/google_translate>`{.interpreted-text
  role="doc"}
::::

### WhatsApp

*WhatsApp* is an instant messaging and voice-over-IP app that allows
users to send and receive messages, as well as share content.

:::: warning
::: title
Warning
:::

*WhatsApp* is an Odoo Enterprise-only application that does **not** work
in the Odoo Community edition. To sign up for an Odoo Enterprise
edition, click here: [Odoo Free Trial](https://www.odoo.com/trial).
::::

After *WhatsApp* has been configured and enabled within a database, a
`WhatsApp`{.interpreted-text role="guilabel"} button is added above the
chatter composer on any applicable record. If one or more approved
*WhatsApp* templates are found for that model, clicking this button
opens a `Send WhatsApp Message`{.interpreted-text role="guilabel"}
pop-up window.

:::: important
::: title
Important
:::

*WhatsApp* templates **must** be approved before they can be used. See
`WhatsApp templates
<productivity/whatsapp/templates>`{.interpreted-text role="ref"} for
more information.
::::

![A send WhatsApp message pop-up window.](chatter/whats-app-message.png)

### Google Translate

*Google Translate* can be used to translate user-generated text in the
Odoo chatter.

To enable *Google Translate* on a database, an *API key* must first
`be created
<../../general/integrations/google_translate>`{.interpreted-text
role="doc"} through the [Google API
Console](https://console.developers.google.com/).

After creating the API key, navigate to the
`Settings app --> Discuss section`{.interpreted-text
role="menuselection"} and paste the key in the
`Message Translation`{.interpreted-text role="guilabel"} field. Click
`Save`{.interpreted-text role="guilabel"} to save the changes.

#### Translate a chatter message

To translate a user\'s text from another language, click the
`fa-ellipsis-v`{.interpreted-text role="icon"}
`(vertical ellipsis)`{.interpreted-text role="guilabel"} menu to the
right of the chatter. Then, select `Translate`{.interpreted-text
role="guilabel"}. The content translates to the language set in the
`user's
preferences <../../general/users/language/>`{.interpreted-text
role="doc"}.

![alt text](chatter/chatter-translate-message.png)

:::: important
::: title
Important
:::

Using the *Google Translate* API **requires** a current billing account
with [Google](https://myaccount.google.com/).
::::

::: seealso
\- `Discuss <../discuss>`{.interpreted-text role="doc"} -
`Discuss Channels <../discuss/team_communication/>`{.interpreted-text
role="doc"} -
`Activities <../../essentials/activities>`{.interpreted-text
role="doc"} - `WhatsApp <../whatsapp>`{.interpreted-text role="doc"}
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

Use channels in the Odoo **Discuss** app to organize discussions between
individual teams, departments, projects, or any other group that
requires regular communication. With channels, employees can communicate
inside dedicated spaces within the Odoo database around specific topics,
updates, and latest developments having to do with the organization.

## Create a new channel

To create a new channel, navigate to the `Discuss`{.interpreted-text
role="menuselection"} app, and then click on the
`fa-plus`{.interpreted-text role="icon"} `(plus)`{.interpreted-text
role="guilabel"} icon next to the `Channels`{.interpreted-text
role="guilabel"} heading in the left-side menu.

![View of discuss\'s sidebar and a channel being created in Odoo Discuss.](team_communication/create-new-channel.png)

The channel\'s `Group Name`{.interpreted-text role="guilabel"},
`Description`{.interpreted-text role="guilabel"}, and
`Privacy`{.interpreted-text role="guilabel"} settings can be modified by
clicking on the channel\'s settings, represented by a
`fa-cog`{.interpreted-text role="icon"} `(gear)`{.interpreted-text
role="guilabel"} icon in the left sidebar menu, next to the channel\'s
name.

### Privacy tab

To control which users can join a channel, open the channel\'s setting
page and navigate to the `Privacy`{.interpreted-text role="guilabel"}
tab.

![View of a channel\'s settings form in Odoo Discuss.](team_communication/channel-settings.png)

To limit access of the channel to a specific group, select an option
from the `Authorized
Group`{.interpreted-text role="guilabel"} drop-down menu.

To automatically add members of a group as followers of the channel,
click the `Auto
Subscribe Groups`{.interpreted-text role="guilabel"} field, and select
one or more groups from the list.

:::: note
::: title
Note
:::

Users who are automatically added as followers can manually edit their
subscription to the channel, if necessary.
::::

The option to `Auto Subscribe Groups`{.interpreted-text role="guilabel"}
automatically adds users of that particular user group as followers. In
other words, while `Authorized Groups`{.interpreted-text
role="guilabel"} limits which users can access the channel,
`Auto Subscribe Groups`{.interpreted-text role="guilabel"} automatically
adds users as members as long as they are part of a specific user group.
The same is true for `Auto Subscribe Departments`{.interpreted-text
role="guilabel"}.

### Invite members to a channel

To invite members to a channel, click on the `Members`{.interpreted-text
role="guilabel"} tab. Click `Add a line`{.interpreted-text
role="guilabel"}, then select either a `Partner`{.interpreted-text
role="guilabel"} or `Guest`{.interpreted-text role="guilabel"} from the
drop-down menu.

Inviting members can also be done from the **Discuss** app\'s main
dashboard, by selecting the channel, clicking the
`fa-user-plus`{.interpreted-text role="icon"}
`(add user)`{.interpreted-text role="guilabel"} icon in the top-right
corner of the dashboard, and finally clicking
`Invite to Channel`{.interpreted-text role="guilabel"} once all the
users have been added.

![View of Discuss\' option to invite members in Odoo Discuss.](team_communication/invite-channel.png)

## Quick search bar

Once at least 20 channels, direct messages, or live chat conversations
are pinned in the sidebar, a `Quick search…`{.interpreted-text
role="guilabel"} bar is displayed. This feature is a convenient way to
filter conversations and find relevant communications.

![View of the Discuss\' sidebar emphasizing the quick search bar in Odoo Discuss.](team_communication/quick-search.png)

### Finding channels

To view all available channels, click on the `fa-cog`{.interpreted-text
role="icon"} `(gear)`{.interpreted-text role="guilabel"} icon to the
right of the `CHANNELS`{.interpreted-text role="guilabel"} menu. Users
can join or leave channels on this screen by clicking the
`Join`{.interpreted-text role="guilabel"} or `Leave`{.interpreted-text
role="guilabel"} buttons that appear in the channel boxes.

There is also the ability to apply filtering criteria and save them for
later use. The `Search...`{.interpreted-text role="guilabel"} function
accepts wildcards by using the underscore character \[ [\_]{.title-ref}
\], and specific searches can be saved by using the
`Favorites --> Save Current Search`{.interpreted-text
role="menuselection"} drop-down menu.

## Linking channel in chatter

Channels can be linked in the *chatter* of a record to share relvant
discussions. To do so, type: [\#]{.title-ref} and the channel name.
Click or press enter on the *Channel* name. Upon logging the note a link
to the channel appears. After clicking on the link a chat window with
the channel conversation pops up in the lower right corner of the
screen.

Users are able to contribute to this group channel by typing messages in
window and pressing *enter*.

![Channel linked in chatter.](team_communication/chatter-channel.png)

::: seealso
\- `../discuss`{.interpreted-text role="doc"} -
`/applications/essentials/activities`{.interpreted-text role="doc"}
:::




--- SOURCE: productivity/discuss.md ---

show-content

:   

hide-page-toc

:   

# Discuss

Odoo **Discuss** is an internal communication app that allows users to
connect through messages, notes, file sharing, and video calls.
**Discuss** enables communication through a persistent chat window that
works across applications, or through the dedicated *Discuss* dashboard.

Upon opening the `Discuss app`{.interpreted-text role="menuselection"},
the `Discuss`{.interpreted-text role="guilabel"} dashboard appears.

## Inbox, starred, and history

Upon opening the `Discuss app`{.interpreted-text role="menuselection"},
the *Discuss* dashboard appears.

On the `Discuss`{.interpreted-text role="guilabel"} dashboard, unread
messages are visible in the `fa-inbox`{.interpreted-text role="icon"}
`Inbox`{.interpreted-text role="guilabel"}.
`fa-star-o`{.interpreted-text role="icon"} `Starred`{.interpreted-text
role="guilabel"} is where starred messages are stored.
`fa-history`{.interpreted-text role="icon"} `History`{.interpreted-text
role="guilabel"} shows chatter updates for records in the Odoo database
the user has been assigned to, or tagged on.

## Direct messages

*Direct messages* allow the user to communicate privately with one or
multiple team members. To start a new direct message, click the
`fa-plus`{.interpreted-text role="icon"} icon, next to
`Direct Messages`{.interpreted-text role="guilabel"} on the
`Discuss`{.interpreted-text role="guilabel"} dashboard, and enter the
name of the desired person in the `Start
a conversation`{.interpreted-text role="guilabel"} search bar that
appears.

:::: tip
::: title
Tip
:::

Multiple names can be selected in the
`Start a conversation`{.interpreted-text role="guilabel"} search bar.
Once all of the names have been entered, press `Enter`{.interpreted-text
role="kbd"}.
::::

### Direct message actions

Hover over a direct message in the chat window to see a menu of actions
to take on the message.

- `oi-smile-add`{.interpreted-text role="icon"}
  `(Add a Reaction)`{.interpreted-text role="guilabel"}: open a
  drop-down menu of emojis that can be used to react to the direct
  message.
- `fa-reply`{.interpreted-text role="icon"} `(Reply)`{.interpreted-text
  role="guilabel"}: reply to the direct message in a thread.
- `fa-star-o`{.interpreted-text role="icon"}
  `(Mark as Todo)`{.interpreted-text role="guilabel"}: add the message
  to the `Starred`{.interpreted-text role="guilabel"} tab.
- `fa-ellipsis-h`{.interpreted-text role="icon"}
  `(Expand)`{.interpreted-text role="guilabel"}: reveals more message
  actions, including:
  - `fa-thumb-tack`{.interpreted-text role="icon"}
    `Pin`{.interpreted-text role="guilabel"}
  - `fa-eye-slash`{.interpreted-text role="icon"}
    `Mark as Unread`{.interpreted-text role="guilabel"}
  - `fa-pencil`{.interpreted-text role="icon"} `Edit`{.interpreted-text
    role="guilabel"}
  - `fa-trash`{.interpreted-text role="icon"} `Delete`{.interpreted-text
    role="guilabel"}

### Conversation actions

The icons in the top-right corner of a direct message conversation
represent different actions the user can take on that conversation.

Click `fa-bell`{.interpreted-text role="icon"}
`Notification Settings`{.interpreted-text role="guilabel"} to set up
notification preferences for the conversation, or click
`fa-phone`{.interpreted-text role="icon"}
`Start a Call`{.interpreted-text role="guilabel"} to begin a meeting.
See the `Meetings <discuss/meetings>`{.interpreted-text role="ref"}
section for more information about meetings.

At the top of the direct message window, click the name of the direct
message to change the group name, and choose to add a description in the
adjacent `Add a description`{.interpreted-text role="guilabel"} field.

![View of the conversation actions.](discuss/conversation-actions.png)

:::: note
::: title
Note
:::

The `Add a description`{.interpreted-text role="guilabel"} field is
**only** available for group messages with more than two participants.
::::

### User status

It is helpful to see what colleagues are up to, and how quickly they can
respond to messages, by checking their status. The status is displayed
as a circle in the bottom-right corner of a contact\'s photo in the
`fa-users`{.interpreted-text role="icon"}
`(Members List)`{.interpreted-text role="guilabel"}.

The color of the circle represents the user\'s status:

- Green = online
- Orange = away
- White = offline
- Airplane = out of the office

### Leave a direct message conversation

To leave a direct message conversations, click the
`fa-times`{.interpreted-text role="icon"}
`(Leave this channel)`{.interpreted-text role="guilabel"} icon next to
the conversation name in the `Direct Messages`{.interpreted-text
role="guilabel"} section of the sidebar.

:::: note
::: title
Note
:::

Leaving a conversation does **not** delete the direct messages in the
conversation. The direct message conversation\'s history is visible when
another direct message with the same person, or group, is created.
::::

## Meetings {#discuss/meetings}

In **Discuss**, *Meetings* are video calls. To start a meeting from the
`Discuss`{.interpreted-text role="guilabel"} dashboard, click
`Start a meeting`{.interpreted-text role="guilabel"} in the top-left
corner, and select who to invite to the meeting, via the
`Invite People`{.interpreted-text role="guilabel"} drop-down window that
appears. To start a meeting from a direct message, click the
`fa-phone`{.interpreted-text role="icon"}
`Start a Call`{.interpreted-text role="guilabel"} icon in the top-right
corner.

![View of a Meeting in Odoo Discuss.](discuss/meeting.png)

Once a meeting has been started, the following buttons can be used:

  ----------------------------------------------------------------------------------
  Icon                                      Use
  ----------------------------------------- ----------------------------------------
  `fa-microphone`{.interpreted-text         `Mute`{.interpreted-text
  role="icon"}                              role="guilabel"}

  `fa-microphone-slash`{.interpreted-text   `Unmute`{.interpreted-text
  role="icon"}                              role="guilabel"}

  `fa-headphones`{.interpreted-text         `Deafen`{.interpreted-text
  role="icon"}                              role="guilabel"}

  `fa-deaf`{.interpreted-text role="icon"}  `Undeafen`{.interpreted-text
                                            role="guilabel"}

  `fa-video-camera`{.interpreted-text       `Turn camera on/off`{.interpreted-text
  role="icon"}                              role="guilabel"}

  `fa-hand-paper-o`{.interpreted-text       `Raise Hand`{.interpreted-text
  role="icon"}                              role="guilabel"}

  `fa-desktop`{.interpreted-text            `Share Screen`{.interpreted-text
  role="icon"}                              role="guilabel"}

  `fa-arrows-alt`{.interpreted-text         `Enter Full Screen`{.interpreted-text
  role="icon"}                              role="guilabel"}
  ----------------------------------------------------------------------------------

## User-specific notification preferences {#discuss_app/notification_preferences}

Access user-specific preferences for the **Discuss** app by navigating
to `Settings
app --> Manage Users`{.interpreted-text role="menuselection"}, select a
user, then click the `Preferences`{.interpreted-text role="guilabel"}
tab.

![View of the Preferences tab for Odoo Discuss.](discuss/preferences-user.png)

By default, the `Notification`{.interpreted-text role="guilabel"} field
is set as `Handle by Emails`{.interpreted-text role="guilabel"}. With
this setting enabled, a notification email is sent by Odoo every time a
message is sent from the chatter of a record, a note is sent with an
[@]{.title-ref} mention (from the chatter of a record), or a
notification is sent for a record the user follows.

By choosing `Handle in Odoo`{.interpreted-text role="guilabel"}, the
above notifications are shown in the **Discuss** app\'s *Inbox*.

## Chat from different applications

The **Discuss** application enables communication across all of Odoo\'s
applications. To view chats and channels, or start a new message, select
the speech bubbles that are consistently present in the upper-right
corner of the database header.

![Use Discuss across other applications by clicking the speech bubbles.](discuss/discuss-in-other-apps.png)

::: seealso
\- `discuss/team_communication`{.interpreted-text role="doc"} -
`/applications/essentials/activities`{.interpreted-text role="doc"} -
`discuss/ice_servers`{.interpreted-text role="doc"} -
`discuss/chatter`{.interpreted-text role="doc"}
:::

::: {.toctree titlesonly=""}
discuss/team_communication discuss/ice_servers discuss/chatter
discuss/canned_responses
:::




--- SOURCE: productivity/documents.md ---

# Documents

**Odoo Documents** allows you to store, view, and manage files within
Odoo.

Folders and documents are organized into sections accessible from the
tree on the left. The following sections are available:

- `All`{.interpreted-text role="guilabel"}: displays all folders and
  files the user has access to.
- `fa-building`{.interpreted-text role="icon"}
  `Company`{.interpreted-text role="guilabel"}: contains folders and
  files shared across the company. Access is determined by the
  `access rights <documents/access-rights>`{.interpreted-text
  role="ref"} defined for the folder and file.
- `fa-hdd-o`{.interpreted-text role="icon"} `My Drive`{.interpreted-text
  role="guilabel"}: the user\'s personal workspace for organizing and
  accessing files and folders they own or have uploaded.
- `fa-users`{.interpreted-text role="icon"}
  `Shared with me`{.interpreted-text role="guilabel"}: includes files
  that have been shared with the user but are not part of any parent
  folder they have access to.
- `fa-clock-o`{.interpreted-text role="icon"} `Recent`{.interpreted-text
  role="guilabel"}: shows recently modified files the user has
  permission to view or edit.
- `fa-trash`{.interpreted-text role="icon"} `Trash`{.interpreted-text
  role="guilabel"}: stores
  `deleted files and folders <documents/deletion-delay>`{.interpreted-text
  role="ref"}.

Click a section in the tree to view its contents. Select a folder to
open it, `manage it
<documents/folders>`{.interpreted-text role="ref"}, and access its
files.

Click a file to open it and
`take available actions <documents/documents>`{.interpreted-text
role="ref"}. To close the file, press **Esc** or click the
`fa-remove`{.interpreted-text role="icon"} (`close`{.interpreted-text
role="guilabel"}) icon. You can also drag and drop a file or folder to
move it to another folder or section.

:::: tip
::: title
Tip
:::

\- Use the `search bar <search/values>`{.interpreted-text role="ref"} to
quickly find specific items. - The
`chatter <discuss/chatter>`{.interpreted-text role="doc"} tracks changes
to folders and files and allows communication with internal users and
external contacts. Open the `Details panel
<documents/details-panel>`{.interpreted-text role="ref"} to access it.
::::

::: seealso
`Sign documentation <sign>`{.interpreted-text role="doc"}
:::

## Configuration

### Deletion delay {#documents/deletion-delay}

By default, items moved to the trash remain there for 30 days before
being permanently deleted. To adjust this delay, go to
`Documents --> Configuration --> Settings`{.interpreted-text
role="menuselection"} and edit the
`Deletion delay (days)`{.interpreted-text role="guilabel"} field.

### File centralization {#documents/file-centralization}

File centralization allows for automatically organizing all files
associated with a specific app into dedicated folders. It is enabled by
default for each app upon installation. To disable file centralization,
modify the default folder, or configure the tags to be added to the
app-specific files, go to
`Documents --> Configuration --> Settings`{.interpreted-text
role="menuselection"}, and edit the relevant setting under the
`File Centralization`{.interpreted-text role="guilabel"} section.

:::: tip
::: title
Tip
:::

\- File centralization cannot be disabled for
`Accounting`{.interpreted-text role="guilabel"} documents. A sub-folder
is automatically created for each journal type (e.g., Sales, Purchase,
Bank, etc.), and the journal name is added as a tag on each document.
Click `Journals`{.interpreted-text role="guilabel"} to edit the list of
journals to synchronize and define their corresponding folders and
tags. - For `Human Resources`{.interpreted-text role="guilabel"} files,
a sub-folder is automatically created for each employee, and specific
tags are added to the files based on the document type (e.g.,
`Contracts`{.interpreted-text role="guilabel"},
`Payslips`{.interpreted-text role="guilabel"}, etc.). You can also
create additional `Employee Subfolders`{.interpreted-text
role="guilabel"} automatically by entering the desired folder names,
separated by commas.
::::

:::: note
::: title
Note
:::

\- Changing the folder or tags only affects new files; existing files
remain unchanged. - When file centralization is enabled for an app,
deleting a record in that app moves its attachments to the trash in the
Documents app.
::::

## Folders {#documents/folders}

You can organize files in folders available in the
`fa-building`{.interpreted-text role="icon"} `Company`{.interpreted-text
role="guilabel"} or `fa-hdd-o`{.interpreted-text role="icon"}
`My Drive`{.interpreted-text role="guilabel"} sections.

To create a folder, select the desired section in the tree, click
`New`{.interpreted-text role="guilabel"}, and select
`Folder`{.interpreted-text role="guilabel"}. In the pop-up, enter the
folder\'s `Name`{.interpreted-text role="guilabel"} and click
`Save`{.interpreted-text role="guilabel"}. To create a sub-folder,
select the parent folder first, then follow the same steps.

:::: note
::: title
Note
:::

Some folders and sub-folders are created automatically based on the
`file centralization
settings <documents/file-centralization>`{.interpreted-text role="ref"}.
::::

To manage a folder or sub-folder, select it and click the
`fa-cog`{.interpreted-text role="icon"} (`Actions`{.interpreted-text
role="guilabel"}) icon above the tree. The following options are
available in the menu:

- `fa-download`{.interpreted-text role="icon"}
  `Download`{.interpreted-text role="guilabel"}: Download the folder as
  a .zip file, including its files and sub-folders.

- `fa-pencil-square-o`{.interpreted-text role="icon"}
  `Rename`{.interpreted-text role="guilabel"}: Modify the folder\'s
  name.

- `fa-share-alt`{.interpreted-text role="icon"}
  `Share`{.interpreted-text role="guilabel"}:
  `Share the folder and manage its access rights
  <documents/access-rights>`{.interpreted-text role="ref"}.

- `fa-star-o`{.interpreted-text role="icon"}
  `Add star`{.interpreted-text role="guilabel"}: Mark a folder as a
  favorite for quicker access. This setting is user-specific and does
  not affect other users\' workspaces. You can then use the
  `Starred filter <search/favorites>`{.interpreted-text role="ref"} to
  navigate to your favorite folders quickly.

- `fa-info-circle`{.interpreted-text role="icon"}
  `Info & Tags`{.interpreted-text role="guilabel"}: View the folder\'s
  `details
  <documents/details-panel>`{.interpreted-text role="ref"} and chatter.

- `fa-trash`{.interpreted-text role="icon"}
  `Move to trash`{.interpreted-text role="guilabel"}: Move the folder
  and its content to the `trash
  <documents/deletion-delay>`{.interpreted-text role="ref"}.

- `fa-cog`{.interpreted-text role="icon"}
  `Actions on Select`{.interpreted-text role="guilabel"}: Define the
  server actions that are available (as buttons) for the files in the
  folder. Click an action to add or remove it. Click
  `Add Custom Action`{.interpreted-text role="guilabel"} to
  `create a new one <reference/actions/server>`{.interpreted-text
  role="ref"}.

- `fa-cog`{.interpreted-text role="icon"}
  `Automations`{.interpreted-text role="guilabel"}: Create
  `automation rules
  </applications/studio/automated_actions>`{.interpreted-text
  role="doc"}.

  :::: important
  ::: title
  Important
  :::

  Setting up automation rules requires activating
  `/applications/studio`{.interpreted-text role="doc"}, which may impact
  your [pricing plan](https://www.odoo.com/pricing).
  ::::

- `AI Auto-sort`{.interpreted-text role="guilabel"}: Use Odoo AI to
  automatically organize the files in the folder and trigger actions
  based on the provided AI prompt. Add the corresponding actions for
  your prompt in the lower section of the popup. This option requires
  the **Odoo AI** app to be installed.

:::: tip
::: title
Tip
:::

Switch to the list view to:

- manage multiple folders at once.
- `fa-upload`{.interpreted-text role="icon"} `Export`{.interpreted-text
  role="guilabel"} or `oi-view-list`{.interpreted-text role="icon"}
  `Insert in spreadsheet`{.interpreted-text role="guilabel"} one or
  multiple folders.
- quickly execute actions such as `Share`{.interpreted-text
  role="guilabel"}, `Download`{.interpreted-text role="guilabel"},
  `Rename`{.interpreted-text role="guilabel"}, etc. Hover over a folder
  line and click the corresponding icon at the end of the line to
  perform the desired action.
::::

## Files {#documents/documents}

To upload a file, select the desired folder in the tree, click
`New`{.interpreted-text role="guilabel"}, and select
`Upload`{.interpreted-text role="guilabel"}.

:::: tip
::: title
Tip
:::

\- On Odoo Online databases, each uploaded file must not exceed 64MB. -
You can also drag and drop a file from your computer to the desired
folder within the Documents app.
::::

### URL links

To add a link to a URL (e.g., a video) and make it accessible from a
folder, click `New`{.interpreted-text role="guilabel"} and select
`Link`{.interpreted-text role="guilabel"}. Enter the
`URL`{.interpreted-text role="guilabel"}, add a `Name`{.interpreted-text
role="guilabel"}, and select the appropriate `Folder`{.interpreted-text
role="guilabel"}.

### Spreadsheets {#documents/spreadsheet}

To create a spreadsheet, click `New`{.interpreted-text role="guilabel"}
and select `Spreadsheet`{.interpreted-text role="guilabel"}.

::: seealso
`Spreadsheet documentation <spreadsheet>`{.interpreted-text role="doc"}
:::

### Managing files

Several buttons are available in the top bar when opening a file:

- the `fa-cog`{.interpreted-text role="icon"}
  `Actions`{.interpreted-text role="guilabel"} menu, which includes the
  options described below
- `Share`{.interpreted-text role="guilabel"}: to
  `share the file and manage its access rights <documents/access-rights>`{.interpreted-text
  role="ref"}
- `Download`{.interpreted-text role="guilabel"}
- any
  `buttons defined for the folder <documents/folders>`{.interpreted-text
  role="ref"}

The following options are available in the `fa-cog`{.interpreted-text
role="icon"} `Actions`{.interpreted-text role="guilabel"} menu:

- `fa-files-o`{.interpreted-text role="icon"}
  `Duplicate`{.interpreted-text role="guilabel"}: Create a copy of the
  file. In the popup, select or create the destination folder, then
  click `Duplicate in`{.interpreted-text role="guilabel"} *destination
  folder\'s name*.
- `fa-trash`{.interpreted-text role="icon"}
  `Move to Trash`{.interpreted-text role="guilabel"}: Move the file to
  the `trash
  <documents/deletion-delay>`{.interpreted-text role="ref"}.
- `fa-pencil-square-o`{.interpreted-text role="icon"}
  `Rename`{.interpreted-text role="guilabel"}
- `fa-info-circle`{.interpreted-text role="icon"}
  `Info & tags`{.interpreted-text role="guilabel"}: View the file\'s
  `details
  <documents/details-panel>`{.interpreted-text role="ref"} and chatter.
- `fa-sign-in`{.interpreted-text role="icon"} `Move`{.interpreted-text
  role="guilabel"}: Move the file to another folder. In the popup,
  select or create the destination folder, then click
  `Move to`{.interpreted-text role="guilabel"} *destination folder\'s
  name*.
- `fa-external-link-square`{.interpreted-text role="icon"}
  `Create shortcut`{.interpreted-text role="guilabel"}: A shortcut is a
  pointer to a file, allowing access from multiple folders without
  duplicating the file. In the popup, select or create the destination
  folder, then click `Create a shortcut in`{.interpreted-text
  role="guilabel"} *destination folder\'s name*.
- `fa-history`{.interpreted-text role="icon"}
  `Manage versions`{.interpreted-text role="guilabel"}: View all
  versions of the file in upload order, download a specific version, or
  upload a new one as needed.
- `fa-lock`{.interpreted-text role="icon"} `Lock`{.interpreted-text
  role="guilabel"}: Protect the file from any modifications.
- `fa-link`{.interpreted-text role="icon"}
  `Copy Links`{.interpreted-text role="guilabel"}: Copy the file\'s URL
  for sharing. Access is controlled based on the file\'s
  `access rights <documents/access-rights>`{.interpreted-text
  role="ref"}.
- `fa-scissors`{.interpreted-text role="icon"}
  `Split PDF`{.interpreted-text role="guilabel"}:
  `Split a PDF file <documents/pdfs>`{.interpreted-text role="ref"}.

:::: tip
::: title
Tip
:::

\- You can use folder-specific
`email aliases <documents/email-aliases>`{.interpreted-text role="ref"}
to automatically save files sent to the alias into the corresponding
folder. - Switch to the list view to:

- manage multiple files at once.
- `fa-upload`{.interpreted-text role="icon"} `Export`{.interpreted-text
  role="guilabel"} or `oi-view-list`{.interpreted-text role="icon"}
  `Insert in spreadsheet`{.interpreted-text role="guilabel"} one or
  multiple files.
- quickly perform actions such as `Share`{.interpreted-text
  role="guilabel"}, `Download`{.interpreted-text role="guilabel"},
  `Rename`{.interpreted-text role="guilabel"}, etc. Hover over a file
  line and click the corresponding icon at the end of the line to
  perform the desired action.
::::

### Splitting and merging PDFs {#documents/pdfs}

To divide a PDF into individual or groups of pages, open the PDF, click
the `fa-cog`{.interpreted-text role="icon"} `Actions`{.interpreted-text
role="guilabel"} button, and select `fa-scissors`{.interpreted-text
role="icon"} `Split PDF`{.interpreted-text role="guilabel"}. Click the
`fa-scissors`{.interpreted-text role="icon"}
(`scissors`{.interpreted-text role="guilabel"}) icon between pages to
remove a split if needed, then click `Split`{.interpreted-text
role="guilabel"} to confirm.

![Split a PDF](documents/split-pdf.png)

To merge PDF files, follow these steps:

1.  Navigate to the folder containing the files you want to merge.
2.  Hold down **Ctrl** and click the relevant files.
3.  Click the `fa-cog`{.interpreted-text role="icon"}
    `Actions`{.interpreted-text role="guilabel"} button and select
    `fa-scissors`{.interpreted-text role="icon"}
    `Merge PDFs`{.interpreted-text role="guilabel"}.
4.  If needed, click `Add file`{.interpreted-text role="guilabel"} to
    browse and select a PDF file from your computer.
5.  Click the `fa-scissors`{.interpreted-text role="icon"}
    (`scissors`{.interpreted-text role="guilabel"}) icon between the
    files.
6.  Click `Split`{.interpreted-text role="guilabel"} to merge them.

:::: note
::: title
Note
:::

The original PDFs are replaced by the merged version.
::::

:::: tip
::: title
Tip
:::

\- Press **Shift + S** to add or remove all splits between pages. - To
delete a specific page, select the page, then click
`Delete`{.interpreted-text role="guilabel"}.
::::

### Requesting files {#documents/request}

Request files from users as a reminder for them to upload specific
files. To do so, follow these steps:

1.  Click `New`{.interpreted-text role="guilabel"} and select
    `Request`{.interpreted-text role="guilabel"}.
2.  Enter a `Document Name`{.interpreted-text role="guilabel"} and
    select the person you\'re requesting it from in the
    `Request To`{.interpreted-text role="guilabel"} field.
3.  If needed, set a `Due Date In`{.interpreted-text role="guilabel"},
    edit the `Folder`{.interpreted-text role="guilabel"} where the file
    should be added, add `Tags`{.interpreted-text role="guilabel"}, and
    write a `Message`{.interpreted-text role="guilabel"}.
4.  Click `Request`{.interpreted-text role="guilabel"}.

A placeholder for the missing file is created in the selected folder.
Once the file is available, click the placeholder to upload it.

:::: tip
::: title
Tip
:::

You can also request a document from the
`list of scheduled activities <activities/all>`{.interpreted-text
role="ref"}.
::::

To see the list of all requested files, switch to the Activity view of
the Documents app and go to the `Requested Document`{.interpreted-text
role="guilabel"} column. Click a requested file\'s date to view its
details. You can then:

- Upload a file using the `fa-upload`{.interpreted-text role="icon"}
  (`upload`{.interpreted-text role="guilabel"}) button;
- Edit the activity using the `fa-pencil`{.interpreted-text role="icon"}
  (`edit`{.interpreted-text role="guilabel"}) button;
- Cancel the activity using the `fa-remove`{.interpreted-text
  role="icon"} (`cancel`{.interpreted-text role="guilabel"}) button;
- Send a reminder email. Click `Preview`{.interpreted-text
  role="guilabel"} to preview the content of the reminder email if
  needed, then `Send Now`{.interpreted-text role="guilabel"}.

To send a reminder email for all requested files, click the
`fa-ellipsis-v`{.interpreted-text role="icon"}
(`ellipsis`{.interpreted-text role="guilabel"}) icon in the
`Requested Document`{.interpreted-text role="guilabel"} column and
select `Document Request: Reminder`{.interpreted-text role="guilabel"}.

![Send a reminder email from the Activity view](documents/reminder-email.png)

## Details panel {#documents/details-panel}

To view a folder\'s or file\'s information and tags, select the folder
or file, then click the `fa-cog`{.interpreted-text role="icon"} icon
(for folders) or `fa-cog`{.interpreted-text role="icon"}
`Actions`{.interpreted-text role="guilabel"} button (for files) and
select `fa-info-circle`{.interpreted-text role="icon"}
`Info & Tags`{.interpreted-text role="guilabel"}.

:::: tip
::: title
Tip
:::

Alternatively, for folders, you can also click the
`fa-info-circle`{.interpreted-text role="icon"}
(`Info & Tags`{.interpreted-text role="guilabel"}) button in the
upper-right corner next to the view icons.
::::

The details panel allows the following:

- Change the file\'s folder or the folder\'s name.
- View the file\'s or folder\'s size and the folder\'s item count.
- Change the file\'s or folder\'s owner and contact. By default, the
  person who creates a file or folder is set as its owner and granted
  full access rights to it. To change it, select the required user from
  the dropdown list. The contact is a person who only has
  `Viewer`{.interpreted-text role="guilabel"}
  `access rights <documents/access-rights>`{.interpreted-text
  role="ref"} to the file or folder, e.g., an existing supplier in the
  database.
- Access the
  `chatter </applications/essentials/activities>`{.interpreted-text
  role="doc"}.

To close the details panel, click the `fa-remove`{.interpreted-text
role="icon"} (`remove`{.interpreted-text role="guilabel"}) button in the
upper-right corner.

> :::: note
> ::: title
> Note
> :::
>
> To view a file from their user profile, a user must be set as the
> contact and have at least `Viewer`{.interpreted-text role="guilabel"}
> `access <documents/access-rights>`{.interpreted-text role="ref"}.
> ::::

### Email aliases {#documents/email-aliases}

You can use an email alias to automatically save files sent to the email
alias into a specific folder. To set up an email alias for a folder,
follow these steps:

1.  Make sure a
    `custom alias domain <email-inbound-custom-domain>`{.interpreted-text
    role="ref"} is configured in the
    `General Settings`{.interpreted-text role="guilabel"}.
2.  Select the folder where files should be saved.
3.  Click the `fa-info-circle`{.interpreted-text role="icon"}
    (`Info & Tags`{.interpreted-text role="guilabel"}) in the
    upper-right corner next to the view icons.
4.  In the details panel, enter the desired email alias.
5.  Optionally, specify an `Activity type`{.interpreted-text
    role="guilabel"} and assignee to create an `activity
    </applications/essentials/activities>`{.interpreted-text role="doc"}
    when a file is received via the alias.
6.  Optionally, select the `Tags <documents/tags>`{.interpreted-text
    role="ref"} to automatically apply to the files created through the
    alias.

:::: note
::: title
Note
:::

Emails sent to the alias without attachments are converted into files,
using the email subject as the file name.
::::

::: seealso
`/applications/general/email_communication/email_servers_inbound`{.interpreted-text
role="doc"}
:::

### Tags {#documents/tags}

Tags help organize and categorize files, making it easier to search and
filter them. To configure tags for files, go to
`Documents --> Configuration --> Tags`{.interpreted-text
role="menuselection"}. Click `New`{.interpreted-text role="guilabel"} to
create a new tag. Enter the `Tag Name`{.interpreted-text
role="guilabel"}, select a `Color`{.interpreted-text role="guilabel"},
and optionally add a `Tooltip`{.interpreted-text role="guilabel"} that
appears when hovering over the tag.

To add tags to a file, open the file, click the
`fa-cog`{.interpreted-text role="icon"} `Actions`{.interpreted-text
role="guilabel"}, select `fa-info-circle`{.interpreted-text role="icon"}
`Info & Tags`{.interpreted-text role="guilabel"}, and then, in the
details panel, select a tag from the `Tags`{.interpreted-text
role="guilabel"} dropdown menu (identifiable by its placeholder
`Add tags`{.interpreted-text role="guilabel"}).

:::: note
::: title
Note
:::

`Alias tags <documents/email-aliases>`{.interpreted-text role="ref"} can
also be used to automatically apply tags to files created through the
alias.
::::

### Linked records

To link the file to a specific record, select the appropriate model from
the `Linked to`{.interpreted-text role="guilabel"} dropdown menu
(identifiable by its placeholder `No linked model`{.interpreted-text
role="guilabel"}), then select the desired record.

:::: note
::: title
Note
:::

If
`file centralization <documents/file-centralization>`{.interpreted-text
role="ref"} is enabled for a specific app, adding a file to the
Documents app by uploading an attachment automatically adds the
corresponding record in the `Linked to field`{.interpreted-text
role="guilabel"} of the file.
::::

## Sharing and access rights {#documents/access-rights}

:::: note
::: title
Note
:::

You can only share folders and files and edit their access rights if you
have editing rights.
::::

Access rights can be set on:

- folders: Select the folder, click the `fa-cog`{.interpreted-text
  role="icon"} (`gear`{.interpreted-text role="guilabel"}) icon, and
  select `Share`{.interpreted-text role="guilabel"}.
- files: Open the file and click `Share`{.interpreted-text
  role="guilabel"} in the top bar.

:::: tip
::: title
Tip
:::

Switch to the list view to share or manage the access rights of multiple
filers or folders at once.
::::

To grant access to specific users or contacts, follow these steps:

1.  In the `fa-user-plus`{.interpreted-text role="icon"}
    (`Invite people`{.interpreted-text role="guilabel"}) field, select
    the users or contacts you want to grant access to from the dropdown
    menu or enter their email address.

    :::: note
    ::: title
    Note
    :::

    `Access through link`{.interpreted-text role="guilabel"} must be
    enabled first before granting access to external contacts.
    ::::

2.  Set the `Role`{.interpreted-text role="guilabel"} field to
    `Viewer`{.interpreted-text role="guilabel"} or
    `Editor`{.interpreted-text role="guilabel"}.

3.  If desired, toggle the `Notify`{.interpreted-text role="guilabel"}
    switch off to avoid sending a notification email.

4.  Click `Share`{.interpreted-text role="guilabel"} to grant access
    (with or without a notification) or `Copy
    Links`{.interpreted-text role="guilabel"} to copy the sharing link
    to the clipboard.

:::: tip
::: title
Tip
:::

To remove a permission or set an expiration date for it, hover the mouse
over the relevant contact and click the `fa-remove`{.interpreted-text
role="icon"} (`remove`{.interpreted-text role="guilabel"}) or
`fa-calendar`{.interpreted-text role="icon"}
(`calendar`{.interpreted-text role="guilabel"}) button, respectively.

![Hover the mouse over a permission to reveal the buttons.](documents/remove-permission.png)
::::

To configure `General access`{.interpreted-text role="guilabel"} for
`Internal users`{.interpreted-text role="guilabel"} or `Access through
link`{.interpreted-text role="guilabel"}, select
`Viewer`{.interpreted-text role="guilabel"}, `Editor`{.interpreted-text
role="guilabel"}, or `None`{.interpreted-text role="guilabel"} (to
completely restrict access). For `Access through link`{.interpreted-text
role="guilabel"}, you can also specify whether the folder or file should
be `Discoverable`{.interpreted-text role="guilabel"} (i.e., accessible
through browsing). Click `Save`{.interpreted-text role="guilabel"} to
apply the changes, then `Copy Links`{.interpreted-text role="guilabel"}
to copy the sharing link to the clipboard.

:::: note
::: title
Note
:::

\- Each folder and file URL includes the access rights assigned to it.
When you share a link to a folder, recipients are directed to a
dedicated portal where they can view the files in that folder, excluding
any with restricted access. -
`Portal users </applications/general/users/user_portals>`{.interpreted-text
role="doc"} can access folders and files they have permission to view or
edit through the customer portal by clicking the
`Documents`{.interpreted-text role="guilabel"} card.
::::

## Managing files across apps

You can save files to or attach existing files in the Documents app from
any record.

- To save an attachment to the Documents app, hover over an attachment
  in the record\'s chatter and click the `fa-hdd-o`{.interpreted-text
  role="icon"} (`Add to Documents`{.interpreted-text role="guilabel"})
  icon.
- To attach a file to a record from the record\'s chatter, click the
  `Add from Documents`{.interpreted-text role="guilabel"} icon, select
  the desired file, and click `Add from Documents`{.interpreted-text
  role="guilabel"} to add the raw file, or
  `Paste Link(s)`{.interpreted-text role="guilabel"} to insert a link to
  the file (and preserve the document\'s
  `access rights <documents/access-rights>`{.interpreted-text
  role="ref"}).
- To insert a file from Documents into the `Odoo rich-text editor
  </applications/essentials/html_editor>`{.interpreted-text role="doc"},
  type [/file]{.title-ref}, then select the desired file, and click
  `Add from Documents`{.interpreted-text role="guilabel"} to add the raw
  file, or `Paste Link(s)`{.interpreted-text role="guilabel"} to insert
  a link to the file (and preserve the document\'s
  `access rights <documents/access-rights>`{.interpreted-text
  role="ref"}).

## File digitization with AI {#documents/file-digitization}

Files available in the Finance folder can be digitized. Select the file,
click `Create
Vendor Bill`{.interpreted-text role="guilabel"},
`Create Customer Invoice`{.interpreted-text role="guilabel"}, or
`Create Customer Credit Note`{.interpreted-text role="guilabel"}, then
click `Send for Digitization`{.interpreted-text role="guilabel"}.

::: seealso
`AI-powered document digitization <../finance/accounting/vendor_bills/invoice_digitization>`{.interpreted-text
role="doc"}
:::




--- SOURCE: productivity/knowledge.md ---

# Knowledge

**Odoo Knowledge** is a multipurpose productivity app that allows
internal users to enrich their business knowledge base by providing
information gathered individually or collaboratively.

The pages on which they gather content are called *articles*. They are
mainly composed of a title and a body. The latter is an HTML field
containing text, images, links, records from other models, templates,
etc.

::: seealso
[Knowledge product page](https://www.odoo.com/app/knowledge)
:::

## Article creation {#knowledge/articles_editing/create-article}

Knowledge articles can be created from scratch or a pre-configured
template. When an article is created under another, the original one is
the **parent article**, while the new one is called a **child** or
**nested article**, indicating its subordinate position. This structure
helps organize content by establishing clear relationships between
related articles.

:::: tip
::: title
Tip
:::

To create a nested article, hover over an article in the sidebar tree
and click the `fa-plus`{.interpreted-text role="icon"}
`(plus)`{.interpreted-text role="guilabel"} icon.
::::

### From scratch

To create an article from scratch, click `fa-plus`{.interpreted-text
role="icon"} `New Article`{.interpreted-text role="guilabel"} in the
top-left corner or hover over the `Private`{.interpreted-text
role="guilabel"} or `Workspace`{.interpreted-text role="guilabel"}
category in the sidebar tree, then click the `fa-plus`{.interpreted-text
role="icon"} `(plus)`{.interpreted-text role="guilabel"} icon. Start
typing text or select one of the suggested options:

- `Load a Template`{.interpreted-text role="guilabel"}: Select a
  preconfigured template and click `Load Template`{.interpreted-text
  role="guilabel"}.
- `Build an Item Kanban`{.interpreted-text role="guilabel"}: Create
  items to visualize and manage them in a Kanban view.
- `Build an Item List`{.interpreted-text role="guilabel"}: Create a
  structured list of items to centralize them in a single article.
- `Build an Item Calendar`{.interpreted-text role="guilabel"}: Create a
  calendar view to manage and track items by date.
- `Generate an Article with AI`{.interpreted-text role="guilabel"}:
  Generate content based on a prompt.

:::: tip
::: title
Tip
:::

After writing the header, click or hover over
`Untitled`{.interpreted-text role="guilabel"} in the top bar to
automatically name the article after the header. This action does not
apply if the article is already titled.
::::

### From a template

To create an article from a template, follow these steps:

> 1.  Click `fa-paint-brush`{.interpreted-text role="icon"}
>     `Browse Templates`{.interpreted-text role="guilabel"} at the
>     bottom of the sidebar tree.
> 2.  Select a preferred template.
> 3.  Click `Load Template`{.interpreted-text role="guilabel"}.

## Article editing {#knowledge/articles_editing/edit-article}

To edit an article, select it in the sidebar tree, then edit its content
and format it using the
`text editor toolbar <knowledge/articles_editing/text-editor>`{.interpreted-text
role="ref"}, typing `powerbox
commands <knowledge/articles_editing/commands>`{.interpreted-text
role="ref"}, and adding a `cover picture
<knowledge/articles_editing/cover>`{.interpreted-text role="ref"} with a
`title emoji <knowledge/articles_editing/emoji>`{.interpreted-text
role="ref"}.

:::: tip
::: title
Tip
:::

To enlarge or reduce the article\'s width, click the
`fa-ellipsis-v`{.interpreted-text role="icon"} (`More
actions`{.interpreted-text role="guilabel"}) icon, then toggle the
`oi-arrows-h`{.interpreted-text role="icon"}
`Full Width`{.interpreted-text role="guilabel"} on or off.
::::

### Text editor toolbar {#knowledge/articles_editing/text-editor}

To edit a word, sentence, or paragraph, select or double-click it to
display the text editor toolbar and apply the desired
`formatting options </applications/essentials/html_editor>`{.interpreted-text
role="doc"}.

:::: tip
::: title
Tip
:::

Click `fa-commenting-o`{.interpreted-text role="icon"}
`Comment`{.interpreted-text role="guilabel"} to add a comment to the
selected text.
::::

### Commands {#knowledge/articles_editing/commands}

Type [/]{.title-ref} to open the
`powerbox <essentials/html_editor/commands>`{.interpreted-text
role="ref"} and use a command. The following commands are exclusive to
the Knowledge app:

::: tabs
  ------------------------------------------------------------------------------------------------------------------------
  Command                                Use
  -------------------------------------- ---------------------------------------------------------------------------------
  `Index`{.interpreted-text              Show
  role="guilabel"}                       `nested articles <knowledge/articles_editing/create-article>`{.interpreted-text
                                         role="ref"}: Display the child pages of the parent article.

  `Item Kanban`{.interpreted-text        Insert a Kanban view and create `article items
  role="guilabel"}                       <knowledge/articles_editing/items>`{.interpreted-text role="ref"}.

  `Item Cards`{.interpreted-text         Insert a Card view and create
  role="guilabel"}                       `article items <knowledge/articles_editing/items>`{.interpreted-text role="ref"}.

  `Item List`{.interpreted-text          Insert a List view and create
  role="guilabel"}                       `article items <knowledge/articles_editing/items>`{.interpreted-text role="ref"}.

  `Item Calendar`{.interpreted-text      Insert a Calendar view and create `article items
  role="guilabel"}                       <knowledge/articles_editing/items>`{.interpreted-text role="ref"}.

  `Clipboard`{.interpreted-text          Add a clipboard section to store content and reuse it in other apps.
  role="guilabel"}                       

  `Foldable Section`{.interpreted-text   Hide the text inside a foldable section.
  role="guilabel"}                       

  `Article`{.interpreted-text            Insert a shortcut to an article.
  role="guilabel"}                       
  ------------------------------------------------------------------------------------------------------------------------
:::

#### Article items {#knowledge/articles_editing/items}

Article items are active building blocks within an article, allowing the
addition, management, and viewing of various organized content and data.

Article items within a parent article can contain `properties
<knowledge/articles_editing/properties>`{.interpreted-text role="ref"},
which are shared data fields from the parent, ensuring consistent
information across related items and articles.

### Cover pictures {#knowledge/articles_editing/cover}

To add a cover picture, click the `fa-ellipsis-v`{.interpreted-text
role="icon"} (`More actions`{.interpreted-text role="guilabel"}) icon,
then `Add Cover`{.interpreted-text role="guilabel"}.

To manage the cover picture, hover the mouse over it and select the
preferred option:

- `Replace Cover`{.interpreted-text role="guilabel"}: Search from the
  `Unsplash
  </applications/general/integrations/unsplash>`{.interpreted-text
  role="doc"} database library, click `Add URL`{.interpreted-text
  role="guilabel"} and paste the **image address**, or click
  `Upload an image`{.interpreted-text role="guilabel"} to upload a file
  into the image library.
- `Reposition`{.interpreted-text role="guilabel"}: Adjust the picture,
  then click `Save Position`{.interpreted-text role="guilabel"} or
  `Cancel`{.interpreted-text role="guilabel"}.
- `Remove`{.interpreted-text role="guilabel"}.

:::: note
::: title
Note
:::

\- After clicking `Add Cover`{.interpreted-text role="guilabel"}, a
cover picture is automatically attributed to the article based on the
title. - A removed cover picture can be retrieved in the database
library. To delete it, hover the mouse over it and click the
`fa-trash`{.interpreted-text role="icon"} (`trash`{.interpreted-text
role="guilabel"}) icon.
::::

### Title emoji {#knowledge/articles_editing/emoji}

To add a title emoji to the article\'s name and header:

- Click the `fa-ellipsis-v`{.interpreted-text role="icon"}
  (`More actions`{.interpreted-text role="guilabel"}) icon, then
  `Add Icon`{.interpreted-text role="guilabel"} to generate a random
  emoji. Click the emoji to select a different one.
- Alternatively, click the `fa-file-text-o`{.interpreted-text
  role="icon"} `(page)`{.interpreted-text role="guilabel"} icon next to
  the article\'s name in the sidebar or the top bar and select the
  preferred emoji.

### Views and links from other apps {#knowledge/articles_editing/views}

To insert a view or a view link into an article, follow these steps:

> 1.  Go to the desired app and select the preferred view.
> 2.  Click the `fa-cog`{.interpreted-text role="icon"}
>     `(cog)`{.interpreted-text role="guilabel"} icon, then select
>     `Knowledge -->
>     Insert view in article`{.interpreted-text role="menuselection"} or
>     `Insert link in article`{.interpreted-text role="guilabel"}.
> 3.  Choose the article to insert the view or link to.

:::: note
::: title
Note
:::

Once the view or link is inserted:

- Users without access to the view cannot see it in Knowledge, even if
  they can access the article.
- Clicking the inserted link opens a pop-up with the view\'s name next
  to the `fa-clipboard`{.interpreted-text role="icon"}
  (`Copy Link`{.interpreted-text role="guilabel"}),
  `fa-pencil-square-o`{.interpreted-text role="icon"} (`Edit
  Link`{.interpreted-text role="guilabel"}), and
  `fa-chain-broken`{.interpreted-text role="icon"}
  (`Remove Link`{.interpreted-text role="guilabel"}) icons. Click the
  name inside the pop-up to open the linked view.
::::

## Article management

Knowledge allows for managing articles, which consists of `structuring
<knowledge/articles_editing/structure>`{.interpreted-text role="ref"},
`sharing <knowledge/articles_editing/share>`{.interpreted-text
role="ref"},
`removing <knowledge/articles_editing/remove>`{.interpreted-text
role="ref"}, and `retrieving
<knowledge/articles_editing/retrieve>`{.interpreted-text role="ref"}
them.

### Basic management

Click the `fa-ellipsis-v`{.interpreted-text role="icon"}
(`More actions`{.interpreted-text role="guilabel"}) icon and select one
of the following actions for basic article management:

- `Move To`{.interpreted-text role="guilabel"}: Select the article to
  move under a category or another article, then click
  `Move Article`{.interpreted-text role="guilabel"}.
- `Lock Content`{.interpreted-text role="guilabel"}: Lock the article to
  stop edits. Click `Unlock`{.interpreted-text role="guilabel"} to edit
  again.
- `Create a Copy`{.interpreted-text role="guilabel"}: Copy the article
  under the `Private`{.interpreted-text role="guilabel"} section.
- `Open Version History`{.interpreted-text role="guilabel"}: Restore a
  previous version of the article.
- `Download PDF`{.interpreted-text role="guilabel"}: Open the browser\'s
  print function.
- `Add to Templates`{.interpreted-text role="guilabel"}: Add the article
  to the list of templates.
- `Send to Trash`{.interpreted-text role="guilabel"}: Move the article
  to the trash.

:::: note
::: title
Note
:::

The following actions only apply to `nested articles
<knowledge/articles_editing/create-article>`{.interpreted-text
role="ref"} and `article items
<knowledge/articles_editing/items>`{.interpreted-text role="ref"}:

- `Convert into Article Item`{.interpreted-text role="guilabel"}:
  Convert the nested article into an `article item
  <knowledge/articles_editing/items>`{.interpreted-text role="ref"}.
- `Convert into Article`{.interpreted-text role="guilabel"}: Convert the
  article item into a `nested article
  <knowledge/articles_editing/create-article>`{.interpreted-text
  role="ref"}.
::::

:::: tip
::: title
Tip
:::

\- Move an article directly from the sidebar tree by dragging and
dropping it under another article or category. - Click the
`fa-search`{.interpreted-text role="icon"} (`search`{.interpreted-text
role="guilabel"}) icon in the top-left corner or press
[CTRL]{.title-ref} / [CMD]{.title-ref} + [K]{.title-ref} to open the
command palette, then type [?]{.title-ref} to search for visible
articles or [\$]{.title-ref} for
`hidden articles <knowledge/articles_editing/visibility>`{.interpreted-text
role="ref"}. Alternatively, hover over the `Workspace`{.interpreted-text
role="guilabel"} category and click the `fa-eye`{.interpreted-text
role="icon"} (`eye`{.interpreted-text role="guilabel"}) icon to find
hidden articles.
::::

### Structuring {#knowledge/articles_editing/structure}

#### Sidebar structure

The sidebar structure follows a hierarchy with parent and nested
articles organized within the following categories:

- The `Favorites`{.interpreted-text role="guilabel"} category displays
  all articles marked as favorites.
- The `Workspace`{.interpreted-text role="guilabel"} category displays
  articles accessible to all internal users.
- The `Shared`{.interpreted-text role="guilabel"} category displays
  articles shared with specific users.
- The `Private`{.interpreted-text role="guilabel"} category displays
  personal articles.

:::: note
::: title
Note
:::

\- To mark an article as a favorite and display the
`Favorites`{.interpreted-text role="guilabel"} category, click the
`fa-star-o`{.interpreted-text role="icon"} (`star`{.interpreted-text
role="guilabel"}) icon in the top-right menu.
::::

#### Article structure

Nested articles inherit their parent\'s
`access rights <knowledge/articles_editing/rights>`{.interpreted-text
role="ref"}, and
`properties <knowledge/articles_editing/properties>`{.interpreted-text
role="ref"} are applied to a group of nested articles under the same
parent.

### Sharing {#knowledge/articles_editing/share}

Sharing an article involves configuring
`access rights <knowledge/articles_editing/rights>`{.interpreted-text
role="ref"}, inviting
`users <knowledge/articles_editing/invite>`{.interpreted-text
role="ref"}, providing `online access
<knowledge/articles_editing/share-online>`{.interpreted-text
role="ref"}, and determining its visibility in the `sidebar tree
<knowledge/articles_editing/structure>`{.interpreted-text role="ref"}.

Articles listed under a category in the sidebar tree are **visible**.
Articles that certain users must search for through the command palette
due to restricted access rights are **hidden**.

:::: tip
::: title
Tip
:::

To copy a specific section of an article, hover over the header
([H1]{.title-ref}, [H2]{.title-ref}, and [H3]{.title-ref}), and click
the `fa-link`{.interpreted-text role="icon"} (`link`{.interpreted-text
role="guilabel"}) icon. Clicking the shared link leads to the selected
section of the article.
::::

#### Configure access rights {#knowledge/articles_editing/rights}

Click `Share`{.interpreted-text role="guilabel"} in the top-right menu
to configure access rights.

##### General access

::: tabs
  -------------------------------------------------------------------------------------------
  Setting                            Use
  ---------------------------------- --------------------------------------------------------
  `Can Edit`{.interpreted-text       Allow all internal users to edit the article.
  role="guilabel"}                   

  `Can Read`{.interpreted-text       Allow all internal users to read the article only.
  role="guilabel"}                   

  `Members only`{.interpreted-text   Allow only members to access the article from the
  role="guilabel"}                   sidebar tree or by searching for it in the command
                                     palette.
  -------------------------------------------------------------------------------------------
:::

##### Show in workspace {#knowledge/articles_editing/visibility}

::: tabs
  -------------------------------------------------------------------------------------------
  Setting                            Use
  ---------------------------------- --------------------------------------------------------
  `Everyone`{.interpreted-text       The article is visible in the sidebar tree to all
  role="guilabel"}                   internal users.

  `Members only`{.interpreted-text   The article is only visible in the sidebar tree to
  role="guilabel"}                   `members
                                     <knowledge/articles_editing/invite>`{.interpreted-text
                                     role="ref"}, while other users can find it using the
                                     hidden article search by pressing [CTRL]{.title-ref} /
                                     [CMD]{.title-ref} + [K]{.title-ref} and typing
                                     [\$]{.title-ref}.
  -------------------------------------------------------------------------------------------
:::

:::: note
::: title
Note
:::

\- The `Default Access Rights`{.interpreted-text role="guilabel"} apply
to all internal users except invited users; specific access rights
override default access rights. - Selecting [Can edit]{.title-ref} or
[Can read]{.title-ref} in the `Default Access Rights`{.interpreted-text
role="guilabel"} moves the article to the `Workspace`{.interpreted-text
role="guilabel"} category while selecting [No access]{.title-ref} moves
it to the `Private`{.interpreted-text role="guilabel"} category if it is
not shared with an invited user. - The `Visibility`{.interpreted-text
role="guilabel"} setting only applies to `Workspace`{.interpreted-text
role="guilabel"} articles.
::::

#### Invite specific users {#knowledge/articles_editing/invite}

To grant specific internal or portal users access to a private nested
article or to share a `Workspace`{.interpreted-text role="guilabel"}
article with a portal user, follow these steps:

1.  Click `Share`{.interpreted-text role="guilabel"} in the top-right
    menu.
2.  Click `Invite`{.interpreted-text role="guilabel"}.
3.  Select the preferred `Permission`{.interpreted-text role="guilabel"}
    and add users in the `Recipients`{.interpreted-text role="guilabel"}
    field.
4.  Click `Invite`{.interpreted-text role="guilabel"}.

#### Generate article URL {#knowledge/articles_editing/share-online}

To generate a URL and share an article, click `Share`{.interpreted-text
role="guilabel"} and activate the `Share to
web`{.interpreted-text role="guilabel"} toggle. Click
`Copy Link`{.interpreted-text role="guilabel"} to copy the article\'s
URL.

:::: note
::: title
Note
:::

\- If an article contains
`inserted views <knowledge/articles_editing/views>`{.interpreted-text
role="ref"}, users with the URL do not see them unless they can access
the inserted content. - Having the Website app is necessary to share an
article\'s URL.
::::

### Removal {#knowledge/articles_editing/remove}

Removing an article involves deleting or archiving it.

#### Delete an article

Select an article in the sidebar tree and click the
`fa-ellipsis-v`{.interpreted-text role="icon"}
(`More actions`{.interpreted-text role="guilabel"}) icon, then
`Send to Trash`{.interpreted-text role="guilabel"}. Alternatively, drag
and drop the article under
`Drop here to delete this article`{.interpreted-text role="guilabel"} at
the bottom left corner. The article is moved to the trash for 30 days
before being permanently deleted.

To permanently delete an article, click `Articles`{.interpreted-text
role="guilabel"} in the top-left menu, select an article, and click
`Actions --> Delete --> Delete`{.interpreted-text role="menuselection"}.

:::: note
::: title
Note
:::

To restore a trashed article, click `Open the Trash`{.interpreted-text
role="guilabel"} at the bottom of the sidebar tree, select an article,
and click `Restore`{.interpreted-text role="guilabel"}. Alternatively,
click `Articles`{.interpreted-text role="guilabel"} in the top-left
menu. In the search bar, click `Filters --> Trashed`{.interpreted-text
role="menuselection"}. Click the article, then
`Restore`{.interpreted-text role="guilabel"}.
::::

#### Archive an article

Click `Articles`{.interpreted-text role="guilabel"}, select an article,
and click `Actions --> Archive -->
Archive`{.interpreted-text role="menuselection"}.

:::: note
::: title
Note
:::

To restore an archived article, click `Articles`{.interpreted-text
role="guilabel"}. In the search bar, click
`Filters --> Archived`{.interpreted-text role="menuselection"}. Select
the article and go to `Actions -->
Unarchive`{.interpreted-text role="menuselection"}.
::::

### Retrieval {#knowledge/articles_editing/retrieve}

Retrieving Knowledge articles consists of accessing them from Odoo apps
or restoring previous versions.

#### Access articles from Odoo apps

Knowledge articles are accessible from the
`form view <studio/views/general/form>`{.interpreted-text role="ref"} of
various apps. Click the `fa-bookmark`{.interpreted-text role="icon"}
`(Knowledge)`{.interpreted-text role="guilabel"} icon in the top right
corner to open the command palette, then choose one of the following
search methods:

- `Search for an article`{.interpreted-text role="guilabel"}: start
  typing the text to execute a semantic search that identifies relevant
  article information.
- `Advanced Search`{.interpreted-text role="guilabel"}: after typing the
  text in the search bar, click `Advanced
  Search`{.interpreted-text role="guilabel"} to perform a parametric
  search with options to filter, group, or save articles.

#### Version history

To retrieve a previous version of an article, select it in the sidebar
tree and click the `fa-ellipsis-v`{.interpreted-text role="icon"}
(`More actions`{.interpreted-text role="guilabel"}) icon, then
`Open Version History`{.interpreted-text role="guilabel"}. Select a
version and click `Restore history`{.interpreted-text role="guilabel"}.

:::: note
::: title
Note
:::

In the version history, the `Content`{.interpreted-text role="guilabel"}
tab shows the selected version, while the `Comparison`{.interpreted-text
role="guilabel"} tab displays the differences between the article\'s
previous and current versions.
::::

## Properties {#knowledge/articles_editing/properties}

Properties are custom fields for storing and managing information that
members can add to
`nested articles <knowledge/articles_editing/create-article>`{.interpreted-text
role="ref"} or `article items
<knowledge/articles_editing/items>`{.interpreted-text role="ref"}.

To add a property, click the `fa-ellipsis-v`{.interpreted-text
role="icon"} (`More actions`{.interpreted-text role="guilabel"}) icon,
then `Add Properties --> Add a Property`{.interpreted-text
role="menuselection"}, enter a `Label`{.interpreted-text
role="guilabel"}, and select a `Field Type`{.interpreted-text
role="guilabel"}.

::: seealso
`/applications/essentials/property_fields`{.interpreted-text role="doc"}
:::

:::: note
::: title
Note
:::

\- Click outside the property field window to save a property. - To
remove a property, hover over its name, click the
`fa-pencil`{.interpreted-text role="icon"} (`pencil`{.interpreted-text
role="guilabel"}) icon, then click `Delete --> Delete`{.interpreted-text
role="menuselection"}. Deleting a property is permanent, and deleting
all properties removes the property sidebar panel.
::::

:::: tip
::: title
Tip
:::

\- Hover over the property name and click the
`fa-pencil`{.interpreted-text role="icon"} (`pencil`{.interpreted-text
role="guilabel"}) icon to edit it or the
`oi-draggable`{.interpreted-text role="icon"}
(`drag handle`{.interpreted-text role="guilabel"}) icon to move it above
or below another property. - Tick `Display in Cards`{.interpreted-text
role="guilabel"} to show the properties in an `article item's view
<knowledge/articles_editing/items>`{.interpreted-text role="ref"} that
is visible from a parent article. - Click the
`fa-cogs`{.interpreted-text role="icon"} (`cogs`{.interpreted-text
role="guilabel"}) icon to hide the property sidebar panel. Exiting and
returning to the article causes the panel to reappear.
::::




--- SOURCE: productivity/sign/configuration.md ---

# Configuration

## Settings {#sign/configuration/settings}

Sign\'s general settings, available via
`Sign --> Configuration --> Settings`{.interpreted-text
role="menuselection"}, allow you to:

- add
  `Default Terms & Conditions <sign/configuration/settings-t-and-c>`{.interpreted-text
  role="ref"} to the signature request email
- `Manage template access`{.interpreted-text role="guilabel"}; once
  enabled, it is possible to restrict access to a template to specific
  user groups when `creating or editing the template
  <sign/request-signatures/templates>`{.interpreted-text role="ref"}
- enable the following additional authentication methods, manage the
  service, and buy credits:
  - `Aadhaar eSign <sign/security/authentication-aadhaar>`{.interpreted-text
    role="ref"} (available in India)
  - `itsme® <sign/security/authentication-itsme>`{.interpreted-text
    role="ref"} (available in the EU, the UK, Norway, and Iceland)
- manage authentication via SMS and
  `buy credits <in_app_purchase/credits>`{.interpreted-text role="ref"}
- upload a [.p12]{.title-ref} or [.pfx]{.title-ref} file containing a
  personal digital certificate, allowing you to add a
  `cryptographic, or digital, signature <sign/security/cryptographic>`{.interpreted-text
  role="ref"} to a document

### Default terms and conditions {#sign/configuration/settings-t-and-c}

Terms and conditions allow a business to standardize the legal
relationship with its clients, define obligations and expectations,
manage risk, and protect its interests by setting clear rules for
aspects such as liability and dispute resolution.

To add default terms and conditions to signature requests:

1.  Go to `Sign --> Configuration --> Settings`{.interpreted-text
    role="menuselection"} and enable `Sign Default
    Terms & Conditions`{.interpreted-text role="guilabel"}.

2.  Choose the desired option:

    - `Terms in Email`{.interpreted-text role="guilabel"}: This option
      is selected by default and places the terms and conditions at the
      bottom of the signature request email. Add your terms and
      conditions to the text box.
    - `Terms as Web Page`{.interpreted-text role="guilabel"}: This
      option displays the terms and conditions on a web page; the link
      to that page is then added as a link in the signature request
      email. Click `Save`{.interpreted-text role="guilabel"}, then click
      `Update Terms`{.interpreted-text role="guilabel"}. Add your terms
      and conditions to the text box, then click
      `Save`{.interpreted-text role="guilabel"}. Click
      `Preview`{.interpreted-text role="guilabel"} to see how the terms
      and conditions will be displayed.

    :::: tip
    ::: title
    Tip
    :::

    In the text box, type [/]{.title-ref} to open the
    `powerbox <essentials/html_editor/commands>`{.interpreted-text
    role="ref"}, then use commands to insert headings, bulleted lists,
    etc.
    ::::

3.  Click `Save`{.interpreted-text role="guilabel"}.

:::: note
::: title
Note
:::

It is also possible to manually attach files, such as terms and
conditions, when
`configuring a signature request <sign/configure-signature-request>`{.interpreted-text
role="ref"}. For `templates
<sign/request-signatures/templates>`{.interpreted-text role="ref"},
files can be attached by default in the
`Communication`{.interpreted-text role="guilabel"} section of the
template `Configuration`{.interpreted-text role="guilabel"} when
creating or editing the template.
::::

## Fields {#sign/configuration/fields}

Fields are
`added to documents <sign/prepare-document/add-fields>`{.interpreted-text
role="ref"} to indicate what information must be completed by the
signers. Various fields are available by default. These fields can be
`edited and additional fields can be created <sign/fields/create-edit-fields>`{.interpreted-text
role="ref"} if needed.

### Create and edit fields {#sign/fields/create-edit-fields}

To create or edit a field:

1.  Go to `Sign --> Configuration --> Fields`{.interpreted-text
    role="menuselection"}.
2.  Click `New`{.interpreted-text role="guilabel"} to create a new field
    or click on a field to open and edit it.
3.  Complete or edit the following fields:
    - `Field Name`{.interpreted-text role="guilabel"}: Enter or edit the
      field name. This is visible in the list of fields in the left
      panel when a document is being
      `prepared for signature <sign/prepare-document>`{.interpreted-text
      role="ref"}.

    - `Type`{.interpreted-text role="guilabel"}: Choose the relevant
      `field type <sign/fields/field-types>`{.interpreted-text
      role="ref"} from the dropdown; there are nine possible field
      types.

    - `Placeholder`{.interpreted-text role="guilabel"}: Optionally,
      specify a placeholder text that provides the signer with a hint or
      example
      `during the signing process <sign/sign-document/signature-request>`{.interpreted-text
      role="ref"}. If this field is left blank, the
      `Field Name`{.interpreted-text role="guilabel"} is used as
      placeholder text.

    - `Tip`{.interpreted-text role="guilabel"}: Add a tip that will be
      displayed inside an arrow to the left of the document during the
      signing process to help the signer understand what action to take
      (e.g., \"Sign here\").

    - For `Text`{.interpreted-text role="guilabel"} fields only,
      optionally change the default `Field Size`{.interpreted-text
      role="guilabel"} from `Regular Text`{.interpreted-text
      role="guilabel"} to `Short Text`{.interpreted-text
      role="guilabel"} or `Long Text`{.interpreted-text
      role="guilabel"}.

      :::: note
      ::: title
      Note
      :::

      The size of any field can be modified manually when
      `adding the field to a document
      <sign/prepare-document/add-fields>`{.interpreted-text role="ref"}.
      ::::

    - For `Text`{.interpreted-text role="guilabel"} and
      `Multiline Text`{.interpreted-text role="guilabel"} fields only,
      optionally use the `Linked to`{.interpreted-text role="guilabel"}
      field to
      `configure auto-completion <sign/fields/auto-fill>`{.interpreted-text
      role="ref"} so the field can be auto-completed during the signing
      process.

#### Field types {#sign/fields/field-types}

- `Signature`{.interpreted-text role="guilabel"}: Signers enter their
  signature either by generating an automatic signature based on their
  name, drawing it using their mouse, or uploading a local file (usually
  an image). Each subsequent `Signature`{.interpreted-text
  role="guilabel"} field in a document reuses the data entered in the
  first field.
- `Initial`{.interpreted-text role="guilabel"}: Signers enter their
  initials, in a similar way to the `Signature`{.interpreted-text
  role="guilabel"} field.
- `Text`{.interpreted-text role="guilabel"} and
  `Multiline Text`{.interpreted-text role="guilabel"}: Signers can enter
  text on a single line or on multiple lines, respectively. These field
  types can be `configured to be auto-completed
  <sign/fields/auto-fill>`{.interpreted-text role="ref"} during the
  signing process.
- `Checkbox`{.interpreted-text role="guilabel"}: Signers can tick a box
  (e.g., to confirm they accept the terms and conditions).
- `Radio`{.interpreted-text role="guilabel"}: Signers can select a
  single option from a series of options (defined when the field is
  `added to the document <sign/prepare-document/add-fields>`{.interpreted-text
  role="ref"}) by clicking the radio button beside the desired option.
- `Selection`{.interpreted-text role="guilabel"}: Signers can select a
  single option from a series of options (defined when the field is
  `added to the document <sign/prepare-document/add-fields>`{.interpreted-text
  role="ref"}) via a dropdown menu.
- `Strikethrough`{.interpreted-text role="guilabel"}: Signers can reject
  certain phrases by clicking the strikethrough field, which adds a
  visible line through the text.
- `Stamp`{.interpreted-text role="guilabel"}: Signers can add a company
  stamp (defined when the field is
  `added to the document <sign/prepare-document/add-fields>`{.interpreted-text
  role="ref"}).

#### Configure auto-complete fields {#sign/fields/auto-fill}

To reduce the need for manual input and ensure accurate and consistent
information, it is possible to have certain fields automatically
completed with data from your database `during the signing
process <sign/sign-document/signature-request>`{.interpreted-text
role="ref"}. This is done by linking a Sign field to a field from a
specific
`Odoo model <../../studio/models_modules_apps>`{.interpreted-text
role="doc"}.

To enable auto-completion for a Sign field:

1.  Go to `Sign --> Configuration --> Fields`{.interpreted-text
    role="menuselection"}.
2.  Open the relevant field.
3.  From the dropdown beside `Linked to`{.interpreted-text
    role="guilabel"} select the model, e.g., *Contact*, that contains
    the field you want to link to.
4.  Click beside `Linked Field`{.interpreted-text role="guilabel"}, then
    use the field selector to select the relevant field, e.g., Email.

:::: note
::: title
Note
:::

When a document containing this field is being signed, the field is
auto-completed. By default, field can still be edited after
auto-completion. However, this can be prevented by editing the field
*after it has been added to the document* and setting it to
`Read-only`{.interpreted-text role="guilabel"}.
::::

::: example
In the example, the `fa-envelope`{.interpreted-text role="icon"}
`Email`{.interpreted-text role="guilabel"} field in the Sign app is
linked to the `Email`{.interpreted-text role="guilabel"} field in the
*Contact* model. When the contact completes the document, their email
address, as it appears in their record in the Odoo database, is
automatically added to the document.

![Configuring a field to be auto-completed](configuration/auto-complete.png)
:::

## Tags {#sign/configuration/tags}

Tags can be used to categorize and organize documents and templates
within the Sign app, allowing users to quickly search for and filter
documents and templates based on specific criteria.

To create a new tag:

1.  Go to `Sign --> Configuration --> Tags`{.interpreted-text
    role="menuselection"}.
2.  Click `New`{.interpreted-text role="guilabel"}.
3.  On the new line that is added at the bottom of the list of tags,
    type the `Tag Name`{.interpreted-text role="guilabel"} and select a
    `Color Index`{.interpreted-text role="guilabel"} for your tag.




--- SOURCE: productivity/sign/request_signatures.md ---

# Request a signature

Via the Odoo Sign app or directly from an Odoo record, you can:

- request the signature of one or more signers on
  `a one-off document or envelope of
  multiple one-off documents <sign/request-signatures/one-off>`{.interpreted-text
  role="ref"}
- `use templates <sign/request-signatures/templates>`{.interpreted-text
  role="ref"} to request the signature of one or more signers on
  frequently used documents

Once a document or
`document envelope <sign/prepare-document/create-envelope>`{.interpreted-text
role="ref"} has been fully signed, i.e., completed and signed by all
signers, the signed document(s) and the `certificate
of completion <sign/security/certificate-of-completion>`{.interpreted-text
role="ref"} are sent via email to the requestor, and to any contacts
added in `CC`{.interpreted-text role="guilabel"} when the signature
request was `configured
<sign/configure-signature-request>`{.interpreted-text role="ref"}.

## One-off documents {#sign/request-signatures/one-off}

### From the Sign app {#sign/request-signatures/one-off-app}

To request the signature of a one-off document or `document envelope
<sign/prepare-document/create-envelope>`{.interpreted-text role="ref"}
from the Sign app:

1.  Go to `Sign --> Documents --> My Documents`{.interpreted-text
    role="menuselection"} or `--> All Documents`{.interpreted-text
    role="menuselection"}, click `Upload PDF`{.interpreted-text
    role="guilabel"}, then select and open the relevant
    [.pdf]{.title-ref} document(s). If the document needs to be imported
    from the `Documents <../documents>`{.interpreted-text role="doc"}
    app, click the `fa-cog`{.interpreted-text role="icon"}
    `(Actions)`{.interpreted-text role="guilabel"} icon beside the name
    of the view, then `Import from Documents`{.interpreted-text
    role="menuselection"}.

    :::: tip
    ::: title
    Tip
    :::

    If you are creating a document envelope that includes one document
    saved in the Documents app, import that document *before*
    `adding subsequent documents
    <sign/prepare-document/create-envelope>`{.interpreted-text
    role="ref"}.
    ::::

2.  `Prepare the document(s) for signing <sign/prepare-document>`{.interpreted-text
    role="ref"} by adding the relevant fields; add additional signers
    and/or documents, if relevant.

3.  Click `Send`{.interpreted-text role="guilabel"}.

4.  Complete the relevant fields of the `New Signature Request
    <sign/configure-signature-request>`{.interpreted-text role="ref"}
    window.

5.  If you are:

    - one of the signers and you are ready to sign the document
      directly, click `Sign Now`{.interpreted-text role="guilabel"},
      then
      `complete and sign the document(s) <sign/sign-document/signature-request>`{.interpreted-text
      role="ref"}.
    - not one of the signers or a signing order has been defined and you
      need to sign the document *after* other signers, click
      `Send`{.interpreted-text role="guilabel"}.

### From an Odoo record {#sign/request-signatures/one-off-record}

To request the signature of a one-off document or `document envelope
<sign/prepare-document/create-envelope>`{.interpreted-text role="ref"}
from an Odoo record:

1.  With the relevant record open, click the `fa-cog`{.interpreted-text
    role="icon"} `(Actions)`{.interpreted-text role="guilabel"} icon in
    the upper-left corner, then `fa-file-text`{.interpreted-text
    role="icon"} `Request Signature`{.interpreted-text role="guilabel"}.

2.  In the `New Signature Request`{.interpreted-text role="guilabel"}
    window, click `Upload PDF`{.interpreted-text role="guilabel"},
    select the relevant [.pdf]{.title-ref} document(s), then click
    `Open`{.interpreted-text role="guilabel"}.

3.  `Prepare the document(s) for signing <sign/prepare-document>`{.interpreted-text
    role="ref"} by adding the relevant fields; add additional signers
    and/or documents, if relevant.

4.  Click `Send`{.interpreted-text role="guilabel"}.

5.  Complete the relevant fields of the `New Signature Request
    <sign/configure-signature-request>`{.interpreted-text role="ref"}
    window.

    :::: note
    ::: title
    Note
    :::

    When sending a signature request from an Odoo record, the related
    customer (or the relevant party) is automatically added as a signer.
    ::::

6.  If you are:

    - one of the signers and you are ready to sign the document
      directly, click `Sign Now`{.interpreted-text role="guilabel"},
      then
      `complete and sign the document(s) <sign/sign-document/signature-request>`{.interpreted-text
      role="ref"}.
    - not one of the signers or a signing order has been defined and you
      need to sign the document *after* other signers, click
      `Send`{.interpreted-text role="guilabel"}.

:::: note
::: title
Note
:::

Once a document or
`document envelope <sign/prepare-document/create-envelope>`{.interpreted-text
role="ref"} has been fully signed, the signed document(s) and the
certificate of completion are also added to the record\'s chatter.
::::

## Templates {#sign/request-signatures/templates}

When the same single document or `envelope of multiple documents
<sign/prepare-document/create-envelope>`{.interpreted-text role="ref"}
needs to be used regularly, creating and using a template can save time
and streamline the workflow. Templates are prepared for signing in the
same way as one-off documents, by adding the necessary fields, signers,
documents, and tags, as relevant.

### Create a template {#sign/templates/create}

To create a template:

1.  Go to `Sign --> Templates`{.interpreted-text role="menuselection"}.

2.  Click `Upload PDF`{.interpreted-text role="guilabel"}, then select
    and open the relevant [.pdf]{.title-ref} document(s). If the
    document needs to be imported from the
    `Documents <../documents>`{.interpreted-text role="doc"} app, click
    the `fa-cog`{.interpreted-text role="icon"}
    `(Actions)`{.interpreted-text role="guilabel"} icon beside the name
    of the view, then `Import from Documents`{.interpreted-text
    role="menuselection"}.

    :::: tip
    ::: title
    Tip
    :::

    If you need to upload multiple documents, i.e., create a
    `document envelope
    <sign/prepare-document/create-envelope>`{.interpreted-text
    role="ref"}, and one of the documents is saved in the Documents app,
    import that document *before* `adding subsequent documents
    <sign/prepare-document/create-envelope>`{.interpreted-text
    role="ref"}.
    ::::

Once you have created the template, you can start
`editing it <sign/templates/edit>`{.interpreted-text role="ref"}.

### Edit a template {#sign/templates/edit}

A template can be edited at any time, provided it has *not yet been
used* to send a signature request.

To edit a template, go to `Sign --> Templates`{.interpreted-text
role="menuselection"} and click on the relevant template to open it.
Alternatively, hover over the template, click the
`fa-ellipsis-v`{.interpreted-text role="icon"}
`(vertical ellipsis)`{.interpreted-text role="guilabel"} icon in the
top-right corner of the card, then click `Edit`{.interpreted-text
role="guilabel"}.

:::: note
::: title
Note
:::

When you open a template that has already been used to send a signature
request, the template is in *visualization mode*. Clicking
`fa-pencil`{.interpreted-text role="icon"}
`Edit Template`{.interpreted-text role="guilabel"} in this case creates
a copy of the template, which can then be edited.

![Viewing a template that has been used to send a signature request](request_signatures/visualization-mode.png)
::::

Edit the template:

- `Prepare the document(s) for signing <sign/prepare-document>`{.interpreted-text
  role="ref"} by adding or editing fields, and, if relevant, adding or
  removing signers and/or documents.
- Optionally, `define or edit settings for specific signers
  <sign/prepare-document/signer-settings>`{.interpreted-text
  role="ref"}, such as requiring additional authentication, allowing a
  signer to delegate signing, or assigning a fixed signer.
- Optionally, define or edit general settings for the template by
  clicking the `fa-cog`{.interpreted-text role="icon"}
  `(cog)`{.interpreted-text role="guilabel"} icon beside the template
  name, then clicking `fa-cog`{.interpreted-text role="icon"}
  `Configuration`{.interpreted-text role="menuselection"}:
  - By default, the **name of the template** is the name of the document
    that was uploaded, or, in the case of a
    `document envelope <sign/prepare-document/create-envelope>`{.interpreted-text
    role="ref"}, the name of the first document uploaded. If desired,
    edit the name of the template.

  - `Tags`{.interpreted-text role="guilabel"}: Add
    `tags <sign/configuration/tags>`{.interpreted-text role="ref"} to
    categorize the template.

  - `Model`{.interpreted-text role="guilabel"}: Select the
    `Odoo model <../../studio/models_modules_apps>`{.interpreted-text
    role="doc"} to which the template is linked to restrict the template
    to `signatures requests made from records of
    that model <sign/templates/use-odoo-record>`{.interpreted-text
    role="ref"}. Leave the field empty to make the template available
    from any model.

  - `Redirect Link`{.interpreted-text role="guilabel"}: Add a url to
    which the user is redirected after signing the document, e.g., to a
    *Thank you* page, or to your company\'s homepage.

  - `Documents folder`{.interpreted-text role="guilabel"}: Define in
    which `folder in the Documents app
    <documents/folders>`{.interpreted-text role="ref"} the documents
    using this template should be saved once fully signed.

  - `Documents tags`{.interpreted-text role="guilabel"}: Determine which
    `Documents-app tags <documents/tags>`{.interpreted-text role="ref"}
    should be assigned to documents using this template once fully
    signed.

  - `Authorized Users`{.interpreted-text role="guilabel"}: Determine
    which specific users are authorized to view and use this template.

  - `Valid for`{.interpreted-text role="guilabel"}: Set a default number
    of days after which signature requests using this template expire;
    enter [0]{.title-ref} if signature requests should not expire.

    :::: note
    ::: title
    Note
    :::

    The validity date of a signature request can always be modified when
    `configuring the
    signature request <sign/configure-signature-request>`{.interpreted-text
    role="ref"}.
    ::::

  - In the `Communication`{.interpreted-text role="guilabel"} tab, type
    a default text that will be added when a signature request using
    this template is sent via email; the text can still be edited before
    sending.

    :::: tip
    ::: title
    Tip
    :::

    Type [/]{.title-ref} to open the
    `powerbox <essentials/html_editor/commands>`{.interpreted-text
    role="ref"}, then use commands to insert headings, bulleted lists,
    documents, images, etc.
    ::::

  - If `Manage template access`{.interpreted-text role="guilabel"} is
    enabled in the `main Sign settings
    <sign/configuration/settings>`{.interpreted-text role="ref"}, it is
    also possible to configure the following fields:

    - `Authorized Groups`{.interpreted-text role="guilabel"}: Define
      user groups whose members are authorized to view and use this
      template.
    - `Responsible`{.interpreted-text role="guilabel"} user: By default,
      this is set to the user who created the template, but a different
      user can be selected.

### Use templates {#sign/templates/use}

Templates can be used when initiating a signature request
`from the Sign app
<sign/templates/use-sign-app>`{.interpreted-text role="ref"} or directly
`from an Odoo record
<sign/templates/use-odoo-record>`{.interpreted-text role="ref"}.

#### From the Sign app {#sign/templates/use-sign-app}

When using a template, there are two ways a signature request can be
sent from the Sign app:

- **via direct email** to one or more specific signers; or
- **via a shareable link**, provided the document or document envelope
  has *only one signer*. This option is useful when multiple individuals
  need to sign a personal copy of a document that requires a single
  signature, e.g., a non-disclosure agreement.

:::: note
::: title
Note
:::

Each time a template is used to send a signature request via direct
email, and each time a recipient of a link signs a document, a new
document is created within Odoo Sign and appears in
`Sign --> All Documents`{.interpreted-text role="menuselection"}.
::::

To send a signature request using a template to one or more specific
signers from the Sign app:

1.  Go to `Sign --> Templates`{.interpreted-text role="menuselection"}
    to see all existing templates.
2.  From the Kanban or list view, click `Send`{.interpreted-text
    role="guilabel"} on the line of the relevant template.
    Alternatively, from the Kanban view, click on a template to open it,
    then click `Send`{.interpreted-text role="guilabel"}.
3.  Complete the relevant fields of the `New Signature Request
    <sign/configure-signature-request>`{.interpreted-text role="ref"}
    window.
4.  If you are:
    - one of the signers and you are ready to sign the document
      directly, click `Sign Now`{.interpreted-text role="guilabel"},
      then
      `complete and sign the document(s) <sign/sign-document/signature-request>`{.interpreted-text
      role="ref"}.
    - not one of the signers or a signing order has been defined and you
      need to sign the document *after* other signers, click
      `Send`{.interpreted-text role="guilabel"}.

To copy a link to a templated document or document envelope:

1.  Go to `Sign --> Templates`{.interpreted-text role="menuselection"}
    to see all existing templates.
2.  From the Kanban or list view, click `Share`{.interpreted-text
    role="guilabel"} on the line of the relevant template.
    Alternatively, from the Kanban view, click on a template to open it,
    then click `Share`{.interpreted-text role="guilabel"}.
3.  Optionally, update the `Valid Until`{.interpreted-text
    role="guilabel"} date if the signature request link should expire;
    leave this blank if the signature request does not expire.
4.  Click `fa-clone`{.interpreted-text role="icon"} to copy the link to
    your clipboard.

:::: tip
::: title
Tip
:::

\- After a link has been shared, a `Shared`{.interpreted-text
role="guilabel"} tag appears on the card of the relevant template in the
`Templates`{.interpreted-text role="guilabel"} Kanban view. - To stop
sharing a link, from the `Templates`{.interpreted-text role="guilabel"}
Kanban view, click `Share`{.interpreted-text role="guilabel"} on the
line of the relevant template, then click
`Stop sharing`{.interpreted-text role="guilabel"}. Alternatively, hover
over the relevant template, click the `fa-ellipsis-v`{.interpreted-text
role="icon"} `(vertical ellipsis)`{.interpreted-text role="guilabel"}
icon in the top-right corner of the card, then click
`Stop sharing`{.interpreted-text role="guilabel"}.
::::

#### From an Odoo record {#sign/templates/use-odoo-record}

To send a signature request using a template from an Odoo record:

1.  With the relevant record open, click the `fa-cog`{.interpreted-text
    role="icon"} `(Actions)`{.interpreted-text role="guilabel"} icon in
    the upper-left corner, then `fa-file-text`{.interpreted-text
    role="icon"} `Request Signature`{.interpreted-text role="guilabel"}.
2.  In the `New Signature Request`{.interpreted-text role="guilabel"}
    window, select the relevant `Template`{.interpreted-text
    role="guilabel"} from the dropdown.
3.  Complete the relevant fields of the `New Signature Request
    <sign/configure-signature-request>`{.interpreted-text role="ref"}
    window.
4.  If you are:
    - one of the signers and you are ready to sign the document
      directly, click `Sign Now`{.interpreted-text role="guilabel"},
      then
      `complete and sign the document(s) <sign/sign-document/signature-request>`{.interpreted-text
      role="ref"}.
    - not one of the signers or a signing order has been defined and you
      need to sign the document *after* other signers, click
      `Send`{.interpreted-text role="guilabel"}.

:::: note
::: title
Note
:::

\- Templates linked to the current
`Odoo model <../../studio/models_modules_apps>`{.interpreted-text
role="doc"} can be selected, as well as templates that are not linked to
any model. - When sending a signature request from an Odoo record, the
related customer (or the relevant party) is automatically added as a
signer. - Once a document or
`document envelope <sign/prepare-document/create-envelope>`{.interpreted-text
role="ref"} has been fully signed, the signed document(s) and the
certificate of completion are also added to the record\'s chatter.
::::

### Manage templates {#sign/templates/manage}

Manage templates by going to `Sign --> Templates`{.interpreted-text
role="menuselection"}. By default, templates are shown in a Kanban view,
with cards shown horizontally.

:::: tip
::: title
Tip
:::

\- Remove the `My Favorites`{.interpreted-text role="guilabel"}
`filter <search/preconfigured-filters>`{.interpreted-text role="ref"} to
view all document templates in the database. - A panel on the left side
allows the view to be filtered by `tag
<sign/configuration/tags>`{.interpreted-text role="ref"}, if the
displayed templates have been assigned tags. Click the
`oi-panel-right`{.interpreted-text role="icon"} icon to close or open
the panel.
::::

For each template, the following information is shown:

- the name of the template
- the month and year in which the template was created
- the avatar of the `Responsible`{.interpreted-text role="guilabel"}
  user for the template; this is by default the user who created the
  template, but this can be changed in the configuration settings of the
  template if `Manage template access`{.interpreted-text
  role="guilabel"} is enabled in the `main Sign settings
  <sign/configuration/settings>`{.interpreted-text role="ref"}
- any tags assigned to the template
- the number of documents created using the template for which a
  signature request is `In Progress`{.interpreted-text role="guilabel"}
- the number of documents created using the template that have been
  fully `Signed`{.interpreted-text role="guilabel"}

:::: tip
::: title
Tip
:::

Templates you created yourself are automatically marked as favorites for
quicker access. To favorite templates created by others, click the
`fa-star`{.interpreted-text role="icon"} `(star)`{.interpreted-text
role="guilabel"} in front of the template name.
::::

Hovering over the template\'s card reveals a
`fa-ellipsis-v`{.interpreted-text role="icon"}
`(vertical ellipsis)`{.interpreted-text role="guilabel"} icon in the
top-right corner. Click the icon to:

- `Edit a template <sign/templates/edit>`{.interpreted-text role="ref"}
  that has *not yet been used* to send a signature request.
  Alternatively, click on a template to open it for editing.
- `Duplicate`{.interpreted-text role="guilabel"} a template. The
  duplicated template can then be
  `edited <sign/templates/edit>`{.interpreted-text role="ref"} as
  needed.
- `Archive`{.interpreted-text role="guilabel"} a template that is not
  currently needed.
- Select a `Color`{.interpreted-text role="guilabel"} to add a colored
  bar to the left side of a card to visually differentiate it.

## Prepare a document for signing {#sign/prepare-document}

To prepare any document for signing, `add the relevant fields
<sign/prepare-document/add-fields>`{.interpreted-text role="ref"} for
each signer.

It is also possible to:

- `add additional documents <sign/prepare-document/create-envelope>`{.interpreted-text
  role="ref"}
- `configure and add signers <sign/prepare-document/signers>`{.interpreted-text
  role="ref"}
- `add tags <sign/prepare-document/add-tags>`{.interpreted-text
  role="ref"}

### Add fields to a document {#sign/prepare-document/add-fields}

To add a field to a document, drag it from the left panel and drop it in
the appropriate place in the document.

:::: note
::: title
Note
:::

Various fields are available by default. These fields can be
`edited and additional fields
can be created <sign/fields/create-edit-fields>`{.interpreted-text
role="ref"} if needed.
::::

Fields of the following
`field types <sign/fields/field-types>`{.interpreted-text role="ref"}
require some additional configuration when they are added to a document:

- `Initial`{.interpreted-text role="guilabel"}: When this field is added
  to a multi-page document, a pop-up message asks if the field should be
  added to all pages of the document, or only the current page.
- `Radio`{.interpreted-text role="guilabel"}: By default, two radio
  buttons are added; there must always be a minimum of two options. To
  increase or decrease the number of options, click on one of the radio
  buttons, then under `Options`{.interpreted-text role="guilabel"}, use
  the `fa-caret-up`{.interpreted-text role="icon"}
  `(increase)`{.interpreted-text role="guilabel"} or
  `fa-caret-down`{.interpreted-text role="icon"}
  `(decrease)`{.interpreted-text role="guilabel"} icons as needed. Each
  radio button can be repositioned independently by clicking and
  dragging it.
- `Selection`{.interpreted-text role="guilabel"}: To define options,
  type each option on a new line in the `Options`{.interpreted-text
  role="guilabel"} text box, ensuring you have pressed
  [Enter]{.title-ref} after each option. To delete options, remove the
  corresponding text from the text box.
- `Strikethrough`{.interpreted-text role="guilabel"}: To use this field
  to allow signers to reject a certain phrase or phrases, position the
  field on top of the relevant text by dragging it. Ensure that the
  field is not `Mandatory`{.interpreted-text role="guilabel"} to allow
  the signer to freely decide which phrases to reject.

Once a field has been added, it is possible to:

- **Reposition the field**: Hover over the field until the
  `fa-hand-paper-o`{.interpreted-text role="icon"}
  `(hand)`{.interpreted-text role="guilabel"} icon appears, then click
  and drag the field to the desired position.

- **Change the size of the field**: Hover over the bottom edge, right
  edge, or bottom-right corner to reveal resize arrows. Drag the
  vertical or horizontal resize arrows to adjust the height or width,
  respectively, or drag the diagonal resize arrows to scale both
  dimensions simultaneously.

- **Modify certain attributes of the field**: Click on the field to open
  it, make the necessary changes, then click `Save`{.interpreted-text
  role="guilabel"}.

  Depending on the
  `field type <sign/fields/field-types>`{.interpreted-text role="ref"},
  attributes that can be modified include:

  - the `Placeholder`{.interpreted-text role="guilabel"} text, i.e., the
    temporary text the signer sees before starting to complete the field
  - whether or not a field is a `Mandatory field`{.interpreted-text
    role="guilabel"}
  - whether or not a field that is `configured to be auto-completed
    <sign/fields/auto-fill>`{.interpreted-text role="ref"} is
    `Read-only`{.interpreted-text role="guilabel"}
  - the horizontal alignment of the text within the field

  :::: note
  ::: title
  Note
  :::

  Any changes made to the attributes of a field after adding the field
  to a document apply *to the current document only*. To make permanent
  changes to the field, `edit the field
  <sign/fields/create-edit-fields>`{.interpreted-text role="ref"}.
  ::::

- **Remove a field**: Click on the field to open it, then click
  `fa-trash`{.interpreted-text role="icon"} `(remove)`{.interpreted-text
  role="guilabel"} to remove the field from the document.

- **Duplicate a field**: Click on the field to open it, then click
  `fa-clone`{.interpreted-text role="icon"}
  `(duplicate)`{.interpreted-text role="guilabel"} to create a copy of
  the field. Alternatively, use your regular keyboard shortcuts to copy
  and paste a field.

  :::: tip
  ::: title
  Tip
  :::

  To reposition or duplicate multiple fields at once, select the fields
  by drawing a selection area around them with your mouse. Then:

  - to reposition the fields, hover over one of the selected fields
    until the `fa-hand-paper-o`{.interpreted-text role="icon"}
    `(hand)`{.interpreted-text role="guilabel"} icon appears, then click
    and drag the fields to the desired position.
  - to copy and paste the fields, use your regular keyboard shortcut to
    copy the fields, place your cursor where you want to paste the
    fields, then use your regular keyboard shortcut to paste them.
  ::::

### Document envelopes {#sign/prepare-document/create-envelope}

A document envelope allows for multiple documents to be signed at the
same time or sent for signing in a single signature request. It is
possible to create a one-off document envelope or a
`template <sign/request-signatures/templates>`{.interpreted-text
role="ref"} based on a document envelope.

To create a document envelope *during* the initial file upload, after
clicking `Upload PDF`{.interpreted-text role="guilabel"}, select the
relevant [.pdf]{.title-ref} documents and click `Open`{.interpreted-text
role="guilabel"}.

:::: tip
::: title
Tip
:::

If, when creating a document envelope via the Sign app, you need to
include one document saved in the Documents app, import that document
*before* adding subsequent documents. To do so, click the
`fa-cog`{.interpreted-text role="icon"} `(Actions)`{.interpreted-text
role="guilabel"} icon beside the name of the view, then
`Import from Documents`{.interpreted-text role="guilabel"}.
::::

To add one or more documents *after* the initial file upload:

1.  Open the initial document or document envelope, then click
    `Add`{.interpreted-text role="guilabel"} in the
    `Documents`{.interpreted-text role="guilabel"} section.
2.  Select the relevant [.pdf]{.title-ref} document(s), then click
    `Open`{.interpreted-text role="guilabel"}.

:::: tip
::: title
Tip
:::

To change the order in which documents are presented to the signer,
click the `fa-ellipsis-v`{.interpreted-text role="icon"}
`(vertical ellipsis)`{.interpreted-text role="guilabel"} icon beside the
relevant document in the `Documents`{.interpreted-text role="guilabel"}
section, then click `fa-arrow-up`{.interpreted-text role="icon"}
`Move Up`{.interpreted-text role="guilabel"} or
`fa-arrow-down`{.interpreted-text role="icon"}
`Move Down`{.interpreted-text role="guilabel"} as appropriate. To remove
a document from the envelope, click `fa-trash`{.interpreted-text
role="icon"} `Delete`{.interpreted-text role="guilabel"}.

![Document envelope with two documents](request_signatures/multiple-documents.png)
::::

### Add and configure signers {#sign/prepare-document/signers}

By default, a document or document envelope has one signer. Additional
`signers can be added
<sign/prepare-document/add-signers>`{.interpreted-text role="ref"} and
`advanced configuration can be defined
<sign/prepare-document/signer-settings>`{.interpreted-text role="ref"}
for one or more signers.

#### Add signers {#sign/prepare-document/add-signers}

To add additional signers to a document or document envelope:

1.  Open the document or document envelope, then click
    `Add`{.interpreted-text role="guilabel"} in the
    `Signers`{.interpreted-text role="guilabel"} section.

2.  Optionally, edit the name of the signer by hovering over the name,
    e.g., [Signer 2]{.title-ref}, clicking the
    `fa-pencil`{.interpreted-text role="icon"}
    `(pencil)`{.interpreted-text role="guilabel"} icon, then typing the
    new name.

    ![Editing the name of signers](request_signatures/edit-signer.png)

:::: tip
::: title
Tip
:::

\- Each signer is assigned a unique color and all fields associated with
a specific signer have the same background color. - When a document or
document envelope has multiple signers, it is possible to define the
order in which signers receive and sign when
`configuring the signature request
<sign/configure-signature-request>`{.interpreted-text role="ref"}.
::::

#### Signer settings {#sign/prepare-document/signer-settings}

To define additional configuration for signers, click the
`fa-ellipsis-v`{.interpreted-text role="icon"} `(vertical
ellipsis)`{.interpreted-text role="guilabel"} icon on the row of the
signer.

For each signer, the following options are available:

- `Authentication`{.interpreted-text role="guilabel"}: Require the
  signer to `authenticate using a specific
  authentication method <sign/security/authentication>`{.interpreted-text
  role="ref"}.
- `Can delegate`{.interpreted-text role="guilabel"}: Enable this option
  to allow the signer to delegate signing to another person. The person
  to whom signing is delegated then signs the document in their own
  name.
- `Assign to`{.interpreted-text role="guilabel"}: Assign a specific
  contact as signer by selecting them from the dropdown.

### Add tags {#sign/prepare-document/add-tags}

To add `tags <sign/configuration/tags>`{.interpreted-text role="ref"} to
a document or document envelope *before sending a signature request*,
select the relevant tags from the `Tags`{.interpreted-text
role="guilabel"} dropdown in the upper-right corner above the document.

Tags can also be added to, or removed from, a document
`after a signature request has been sent
<sign/request-signatures/manage-update-tags>`{.interpreted-text
role="ref"}.

## Configure the signature request {#sign/configure-signature-request}

After
`preparing a one-off document or document envelope for signing <sign/prepare-document>`{.interpreted-text
role="ref"} or selecting a template, click `Send`{.interpreted-text
role="guilabel"}, then configure the signature request in the
`New Signature Request`{.interpreted-text role="guilabel"} window.

For each signer, select a contact or type an email address. Optionally,
enable `Signing Order
<sign/configure-request/signing-order>`{.interpreted-text role="ref"} to
control the order in which the document or document envelope is signed.

It is also possible to:

- `set a Valid Until date <sign/configure-request/validity>`{.interpreted-text
  role="ref"} after which the signature request expires

- `set Reminders <sign/configure-request/validity>`{.interpreted-text
  role="ref"} to be sent at fixed intervals

- enable `Add certificate on each page`{.interpreted-text
  role="guilabel"} to add the reference of the `certificate of
  completion <sign/security/certificate-of-completion>`{.interpreted-text
  role="ref"} to each page of the document(s)

- have one or more parties notified when the document is fully signed by
  adding the relevant contact(s) or email address(es) in the
  `CC`{.interpreted-text role="guilabel"} field

- add a message to the signature request email

  :::: tip
  ::: title
  Tip
  :::

  When
  `creating a template <sign/request-signatures/templates>`{.interpreted-text
  role="ref"}, it is possible to define a default message to be added to
  the signature request; this can still be edited before sending.
  ::::

- add attachments to the signature request via the
  `fa-paperclip`{.interpreted-text role="icon"}
  `(paperclip)`{.interpreted-text role="guilabel"} icon at the bottom of
  the window, or, to add an attachment saved in the Documents app, click
  the Documents app icon

- schedule the sending of the signature request via the
  `fa-clock-o`{.interpreted-text role="icon"}
  `(clock)`{.interpreted-text role="guilabel"} icon

### Signing order {#sign/configure-request/signing-order}

When a document or document envelope needs to be signed by multiple
parties, and the order of signing is important, it is possible to define
the `Signing order`{.interpreted-text role="guilabel"} when configuring
the signature request. This controls the order in which your recipients
receive the document(s) for signature.

To define a signing order:

1.  In the `New Signature Request`{.interpreted-text role="guilabel"}
    window, enable `Signing Order`{.interpreted-text role="guilabel"}.
2.  Change the order by editing the number beside each signer, e.g.,
    changing a [3]{.title-ref} to a [2]{.title-ref} in the first column.

The signer indicated in position [1]{.title-ref} receives the signature
request first, and each recipient receives the request only once the
previous recipient has signed the document.

::: example
In the example, the AB & Co Legal contact will receive the signature
request first, the AB & Co CEO second, and Mitchell Admin last.

![Configuring signing order by editing the signer number](request_signatures/signing-order.png)
:::

### Validity dates and reminders {#sign/configure-request/validity}

For documents that need to be signed within a certain timeframe, you can
indicate the last possible signing date using the
`Valid Until`{.interpreted-text role="guilabel"} field when configuring
the signature request. After this date, the document is no longer
accessible via the link in the signature request email.

![Set the number of days between reminders](request_signatures/reminders.png)

If the signature request does not expire, leave this field blank.

> :::: note
> ::: title
> Note
> :::
>
> When using a
> `template <sign/request-signatures/templates>`{.interpreted-text
> role="ref"} for which a default validity period has been defined, the
> `Valid Until`{.interpreted-text role="guilabel"} date is updated
> automatically in the signature request email; this date can be changed
> if desired.
> ::::

To set automatic reminders, enable `Reminders`{.interpreted-text
role="guilabel"}, then define the interval, in days, at which reminders
should be sent until the document has been signed by the signer.

## Manage signature requests and signed documents {#sign/request-signatures/manage}

All signature requests that have been sent are visible in
`Sign --> Documents --> All
Documents`{.interpreted-text role="menuselection"}. The list view and
Kanban view offer different possiblities:

In the list view:

- see the overall `Status`{.interpreted-text role="guilabel"} of the
  signature request, e.g., `To Sign`{.interpreted-text role="guilabel"},
  `Signed`{.interpreted-text role="guilabel"},
  `Cancelled`{.interpreted-text role="guilabel"}
- `fa-refresh`{.interpreted-text role="icon"} `Resend`{.interpreted-text
  role="guilabel"} a signature request manually
- `fa-pencil-square-o`{.interpreted-text role="icon"}
  `Sign`{.interpreted-text role="guilabel"} a document or document
  envelope
- `fa-download`{.interpreted-text role="icon"}
  `Download`{.interpreted-text role="guilabel"} the fully signed
  document(s)
- for a cancelled signature request, click `fa-info`{.interpreted-text
  role="icon"} `Details`{.interpreted-text role="guilabel"} to see the
  details of the cancelled request

:::: tip
::: title
Tip
:::

Click the `oi-settings-adjust`{.interpreted-text role="icon"}
`(slider)`{.interpreted-text role="guilabel"} icon in the upper-right
corner to see more information for each request, such as each document
included, tags, and, in the case of documents sent using a template, the
`Odoo model <../../studio/models_modules_apps>`{.interpreted-text
role="doc"} the template is linked to.
::::

In the Kanban view:

- see the status of individual signers, per signature request:
  - when a signer has fully signed the document(s), the checkbox is
    ticked, the signer\'s name appears in green, and the date of the
    signature is added after the name
  - when a signature request is cancelled, the signers name appears in
    red with a `fa-times`{.interpreted-text role="icon"}
    `(cross)`{.interpreted-text role="guilabel"} beside it, followed by
    the date on which the signature request was cancelled
- see any tags added to the document(s)
- click the `fa-clock-o`{.interpreted-text role="icon"}
  `(clock)`{.interpreted-text role="guilabel"} icon to schedule an
  activity related to the signature request
- click the `fa-ellipsis-v`{.interpreted-text role="icon"}
  `(vertical ellipsis)`{.interpreted-text role="guilabel"} icon in the
  top-right of the card to reveal more options:
  - see the `Details`{.interpreted-text role="guilabel"} of the
    signature request, including the expiry date, if relevant, whether
    or not reminders have been set, activity logs, and more
  - `Cancel`{.interpreted-text role="guilabel"} a signature request that
    *has not been* fully signed
  - `Archive`{.interpreted-text role="guilabel"} a signature request
  - select a color dot to add a a colored bar to the left side of a card
    to visually differentiate it

### Update the tags of a sent or signed document {#sign/request-signatures/manage-update-tags}

To add tags to, or remove tags from, a document or document envelope for
which a signature request has already been sent:

1.  Go to `Sign --> Documents --> All Documents`{.interpreted-text
    role="menuselection"}, then switch to the Kanban view.
2.  Hover over the relevant card, click the
    `fa-ellipsis-v`{.interpreted-text role="icon"}
    `(vertical ellipsis)`{.interpreted-text role="guilabel"} in the
    top-right corner of the card, then click `Details`{.interpreted-text
    role="guilabel"}.
3.  Beside the `Tags`{.interpreted-text role="guilabel"} field, add new
    tags by selecting them from the dropdown or delete tags by clicking
    the `fa-times`{.interpreted-text role="icon"}
    `(cross)`{.interpreted-text role="guilabel"} on the tag.




--- SOURCE: productivity/sign/security_authentication.md ---

# Security and authentication

Various security features are integrated into Odoo Sign by default, such
as:

- `email verification <sign/security/authentication>`{.interpreted-text
  role="ref"}, whereby the signer receives a unique link to the document
  or `envelope of multiple documents
  <sign/prepare-document/create-envelope>`{.interpreted-text role="ref"}
  via an email sent directly to their email address
- a `signatory hash <sign/security/hash>`{.interpreted-text role="ref"}
  that links the signer\'s identity to the exact content of the document
  at the moment of signing
- a
  `certificate of completion <sign/security/certificate-of-completion>`{.interpreted-text
  role="ref"} that provides details of the signing process

Additional security can be ensured by:

- requiring other methods of
  `secured identification <sign/security/authentication>`{.interpreted-text
  role="ref"}, such as SMS, Aadhaar eSign (India) or itsme® (European
  Union, United Kingdom, Norway and Iceland)
- using a
  `cryptographic signature <sign/security/cryptographic>`{.interpreted-text
  role="ref"} by means of a digital certificate issued by a Certificate
  Authority (CA) or generated yourself

## Signatory hash {#sign/security/hash}

When someone signs a document, a *hash*, i.e., a unique digital
signature of the operation, is generated to link the signer\'s identity
to the exact content of the document at the moment of signing. This
process guarantees that any changes made after a signature has been
added can be easily detected, maintaining the document\'s authenticity
and integrity throughout its lifecycle.

A visual security frame displaying the beginning of the hash is added to
signatures and initials.

![Adding the visual security frame to a signature.](security_authentication/hash-frame.png)

:::: tip
::: title
Tip
:::

Internal users can hide or show it by turning the
`Frame`{.interpreted-text role="guilabel"} option on or off when
`adding their signature or initials to the document
<sign/sign-document/initials-signature>`{.interpreted-text role="ref"}.
::::

The signatory hash of each signer is provided on the
`certificate of completion
<sign/security/certificate-of-completion>`{.interpreted-text role="ref"}
that is generated when a document is fully signed.

## Certificate of completion {#sign/security/certificate-of-completion}

Each time a document or document envelope is fully signed, i.e.,
completed and signed by all signers, a certificate of completion is
generated and sent to all signers via email, along with the fully signed
document(s).

:::: note
::: title
Note
:::

When documents are
`signed via an Odoo record's chatter <sign_document>`{.interpreted-text
role="doc"}, or when a signature request initiated from an Odoo record
is fully completed (whether a `one-off
document <sign/request-signatures/one-off-record>`{.interpreted-text
role="ref"} or `using a template
<sign/templates/use-odoo-record>`{.interpreted-text role="ref"}), the
certificate of completion is also added to the chatter, along with the
fully signed document(s).
::::

This certificate contains details of the signing process that support
the validity of the signatures and provide proof that the document has
not been altered after signing.

![Certificate of completion](security_authentication/certificate-of-completion.png)

The following information is provided:

- `Document Details`{.interpreted-text role="guilabel"}, which include
  when the signature request was created and by who, the file name of
  the [.pdf]{.title-ref} document or documents that were signed, the
  number of signers, and a unique reference hash that can optionally be
  added to each page of a signed document.
- A list of `Participants`{.interpreted-text role="guilabel"} who have
  signed the document, including the verification method and a unique
  `signatory hash <sign/security/hash>`{.interpreted-text role="ref"}
  that ensures traceability and integrity.
- Timestamped, IP, and geographically traceable records of
  `Signing Events`{.interpreted-text role="guilabel"} and
  `Access Logs`{.interpreted-text role="guilabel"}.

As well as being sent via email, a signed document\'s certificate of
completion can be downloaded at any time via the Sign app:

1.  Go to `Sign --> All Documents`{.interpreted-text
    role="menuselection"} and switch to the Kanban view.
2.  Click the `fa-ellipsis-v`{.interpreted-text role="icon"}
    `(vertical ellipsis)`{.interpreted-text role="guilabel"} icon in the
    top-right of the card of a document, then click
    `Details`{.interpreted-text role="guilabel"}.
3.  Click `Download`{.interpreted-text role="guilabel"} then
    `Certificate`{.interpreted-text role="guilabel"}.

## Secured identification {#sign/security/authentication}

When a signature request is sent via email, the signer accesses the
document by clicking on a unique link contained in the email. This
default verification step serves as confirmation that the signer
controls the email address associated with the signature request.

It is also possible to require additional authentication for one or more
signers via one of the following methods:

- `Unique Code via SMS <sign/security/authentication-sms>`{.interpreted-text
  role="ref"}
- `Via Aadhar eSign <sign/security/authentication-aadhaar>`{.interpreted-text
  role="ref"} (available in India)
- `Via itsme® <sign/security/authentication-itsme>`{.interpreted-text
  role="ref"} (available in the European Union, the United Kingdom,
  Norway and Iceland)

:::: important
::: title
Important
:::

These authentication methods require
`buying credits <in_app_purchase/credits>`{.interpreted-text
role="ref"}. If you do not have any credits left, authentication is
skipped.
::::

::: seealso
\-
`In-App Purchase (IAP) <../../essentials/in_app_purchase>`{.interpreted-text
role="doc"} -
`SMS pricing and FAQ <../../marketing/sms_marketing/pricing_and_faq>`{.interpreted-text
role="doc"}
:::

### Unique code via SMS {#sign/security/authentication-sms}

With authentication via SMS, signers receives a one-time code by SMS,
which they enter when prompted during the signing process to identify
themselves.

This feature is enabled by default in Sign\'s
`general settings <sign/configuration/settings>`{.interpreted-text
role="ref"}.

:::: note
::: title
Note
:::

Before being able to send SMS messages, you need to register your mobile
phone number. To do so, go to
`Sign --> Configuration --> Settings`{.interpreted-text
role="menuselection"} and, under `Authenticate by
SMS`{.interpreted-text role="guilabel"}, click
`Manage Service & Buy Credits`{.interpreted-text role="guilabel"}. On
the next screen, click `fa-arrow-right`{.interpreted-text role="icon"}
`Register`{.interpreted-text role="guilabel"} then proceed to register
your phone number.
::::

To require signer authentication via SMS:

1.  With the document or document envelope open, in the left panel,
    click the `fa-ellipsis-v`{.interpreted-text role="icon"}
    `(vertical ellipsis)`{.interpreted-text role="guilabel"} icon next
    to the relevant signer, then click `Edit`{.interpreted-text
    role="guilabel"}.
2.  In the pop-up, select `Unique Code via SMS`{.interpreted-text
    role="guilabel"} as `Authentication`{.interpreted-text
    role="guilabel"}.
3.  Click `Save`{.interpreted-text role="guilabel"}.

Upon signing the document, an extra `Final Validation`{.interpreted-text
role="guilabel"} window is displayed where the signer enters first their
phone number, then the one-time code received.

![Pop-up where signer enters phone number and one-time code](security_authentication/sms-verification.png)

### Aadhaar eSign {#sign/security/authentication-aadhaar}

Aadhaar eSign allows signers in **India** to digitally sign documents
using their Aadhaar number and OTP (One Time Password) verification.
This provides a secure and legally valid way to complete signatures
directly within Odoo Sign.

:::: important
::: title
Important
:::

In Odoo Sign, Aadhaar eSign can only be used for signature requests
containing a single document. Additionally, only one signer per document
can be required to authenticate via Aadhaar eSign, and this party must
be the last party to sign the document.

This method is therefore most suitable for a single document with a
single signer, or where the first signer is the party sending the
signature request.
::::

To enable authentication with Aadhaar eSign, go to
`Sign --> Configuration -->
Settings`{.interpreted-text role="menuselection"}, then enable
`Sign with Aadhar eSign`{.interpreted-text role="guilabel"}.

To require signer authentication via Aadhaar eSign:

1.  With the document or document envelope open, in the left panel,
    click the `fa-ellipsis-v`{.interpreted-text role="icon"}
    `(vertical ellipsis)`{.interpreted-text role="guilabel"} icon next
    to the relevant signer.
2.  In the pop-up, select `Via Aadhaar eSign`{.interpreted-text
    role="guilabel"} under `Authentication`{.interpreted-text
    role="guilabel"}.
3.  Click `Save`{.interpreted-text role="guilabel"}.

Upon signing the document, an extra
`Final verification`{.interpreted-text role="guilabel"} page is
displayed where authentication via Aadhaar is required.

:::: note
::: title
Note
:::

The digital certification from eMudhra is available in the downloaded
document.
::::

### Itsme® {#sign/security/authentication-itsme}

Itsme® authentication allows signers in **the European Union**, **the
United Kingdom**, **Iceland** and **Norway** to prove their identity.

To enable authentication with itsme®, go to `Sign --> Configuration
--> Settings`{.interpreted-text role="menuselection"}, then enable
`Identify with itsme®`{.interpreted-text role="guilabel"}.

To require signer authentication via itsme®:

1.  With the document or document envelope open, in the left panel,
    click the `fa-ellipsis-v`{.interpreted-text role="icon"}
    `(vertical ellipsis)`{.interpreted-text role="guilabel"} icon next
    to the relevant signer.
2.  In the pop-up, select `Via itsme®`{.interpreted-text
    role="guilabel"} under `Authentication`{.interpreted-text
    role="guilabel"}.
3.  Click `Save`{.interpreted-text role="guilabel"}.

Upon signing the document, an extra
`Final verification`{.interpreted-text role="guilabel"} page is
displayed where authentication via itsme® is required.

## Cryptographic signature {#sign/security/cryptographic}

Odoo Sign allows you to use your own digital certificate to sign
documents. A digital certificate uses cryptography, which relies on
secure mathematical algorithms, to ensure a signed document\'s
authenticity and integrity.

Authenticity is ensured as your verified identity is linked to the
signature, while integrity is ensured as the document cannot be altered
without invalidating, or \'breaking\', the cryptographic signature.

A digital certificate is stored in a file such a [.p12]{.title-ref} or
[.pfx]{.title-ref} file. This is a secure container that contains:

- a *private key* that applies a unique cryptographic signature to a
  document; and
- identifying information about the signer and a *public key* that is
  shared with the recipient for signature validation

The file is always protected by a password, which is never stored in
plain text. Odoo uses this password to decrypt the private key at the
moment a document is signed.

### Obtain or create a digital certificate {#sign/security/cryptographic-obtain-create}

Most businesses obtain their digital certificate from a trusted
Certificate Authority (CA). In many cases, the
`CA (Certificate Authority)`{.interpreted-text role="abbr"} provides the
[.p12]{.title-ref} or [.pfx]{.title-ref} file directly, along with its
password.

It is also possible to generate a certificate yourself. [Adobe
Acrobat](https://helpx.adobe.com/be_en/acrobat/desktop/protect-documents/manage-digital-ids/create-self-signed-id.html)
and
[Microsoft](https://support.microsoft.com/en-us/office/obtain-a-digital-certificate-and-create-a-digital-signature-e3d9d813-3305-4164-a820-2e063d86e512),
for example, allow the creation of digital certificates.

:::: note
::: title
Note
:::

Self-generated digital certificates do not provide the same level of
trust as a certificate obtained from a trusted
`CA (Certificate Authority)`{.interpreted-text role="abbr"}. However,
they can be useful if you need to provide a digital signature urgently
or for less official situations.
::::

Once you have obtained or created a digital certificate, you can then
`upload it to your Odoo
database <sign/security/cryptographic-upload>`{.interpreted-text
role="ref"}.

### Upload a digital certificate in Odoo {#sign/security/cryptographic-upload}

To upload a digital certificate in Odoo:

1.  Go to `Sign --> Configuration --> Settings`{.interpreted-text
    role="menuselection"}.
2.  Under `Cryptographic signature`{.interpreted-text role="guilabel"},
    click the `Signing certificate`{.interpreted-text role="guilabel"}
    dropdown and click `Create`{.interpreted-text role="guilabel"}.
3.  In the pop-up, complete the relevant fields:
    - `Name`{.interpreted-text role="guilabel"}: Enter a name for the
      certificate.
    - `Certificate`{.interpreted-text role="guilabel"}: Click
      `Upload your file`{.interpreted-text role="guilabel"}, then select
      the relevant certificate file in [.p12]{.title-ref} or
      [.pfx]{.title-ref} format.
    - `Certificate Password`{.interpreted-text role="guilabel"}: Enter
      the certificate password for the uploaded file; it must be minimum
      six characters. This password is used to decrypt the private key
      during the signing process.
4.  Click `Save`{.interpreted-text role="guilabel"}.

:::: note
::: title
Note
:::

\- After the certificate has been uploaded, two read-only fields are
auto-completed: the `Validity`{.interpreted-text role="guilabel"} date,
i.e., the date on which it starts to be valid, and the
`Serial number`{.interpreted-text role="guilabel"} that will be added to
signed documents. - In a multi-company environment, one certificate can
be uploaded per company.
::::




--- SOURCE: productivity/sign/sign_document.md ---

# Sign a document

Depending on the situation, you may need to sign:

- a single document or `envelope of multiple documents
  <sign/prepare-document/create-envelope>`{.interpreted-text role="ref"}
  that you or another person `prepared for electronic
  signature using Odoo Sign <sign/sign-document/signature-request>`{.interpreted-text
  role="ref"}; or
- one or more [.pdf]{.title-ref} documents that have
  `not been prepared for electronic signature
  <sign/sign-document/pdf-document>`{.interpreted-text role="ref"} by
  the sender

## Sign a document prepared using Odoo Sign {#sign/sign-document/signature-request}

Documents prepared using Odoo Sign contain a series of fields to
indicate what information must be completed by the signer(s).

::::: note
::: title
Note
:::

Fields with a colored background are mandatory, while fields with a
dotted border and a white background are optional. Fields that have been
`auto-completed
<sign/sign-document/auto-complete>`{.interpreted-text role="ref"} and
set to read-only have a solid border and a white background; these
fields are populated as soon as the document is opened.

::: example
In the example below, the `Name`{.interpreted-text role="guilabel"} and
`Signature`{.interpreted-text role="guilabel"} fields are mandatory,
while the `Job title`{.interpreted-text role="guilabel"} field is
optional. The `Email`{.interpreted-text role="guilabel"} field has been
auto-completed and set to read-only.

![Examples of mandatory, optional, and read-only fields](sign_document/field-characteristics.png)
:::
:::::

To sign a document prepared using Odoo Sign:

1.  Click on each field to enter the requested information, or, to be
    guided through the fields in order, click the
    `Click to start`{.interpreted-text role="guilabel"} arrow, click on
    the indicated field to enter the requested information, then use the
    arrows to progress through the document.

    :::: note
    ::: title
    Note
    :::

    \- Fields set to be auto-completed but *not* read-only are populated
    when clicked or when arriving at the field using the navigational
    arrows; these fields can still be edited.
    \- When completing an `Initial`{.interpreted-text role="guilabel"}
    or `Signature`{.interpreted-text role="guilabel"} field, you may
    need to `define the visual representation of your initials/signature
    <sign/sign-document/initials-signature>`{.interpreted-text
    role="ref"}.
    ::::

2.  When all required fields have been completed, click
    `Validate & Send Completed
    Document`{.interpreted-text role="guilabel"} at the bottom of the
    document.

    If there are
    `multiple documents <sign/prepare-document/create-envelope>`{.interpreted-text
    role="ref"} to sign, click `Next`{.interpreted-text role="guilabel"}
    at the bottom of the document, enter the requested information for
    the next and any subsequent documents. Once all documents have been
    signed, click `Validate & Send
    Completed Document`{.interpreted-text role="guilabel"}.

After signing the document:

- If other signers still need to sign the document, a message informs
  you of this. Click `Next signatory`{.interpreted-text
  role="guilabel"}.
- If you are the only or last signer, you can
  `Download`{.interpreted-text role="guilabel"} the document directly.
- If you are an internal user, a list shows any other documents awaiting
  your signature; you can then `Sign`{.interpreted-text role="guilabel"}
  or `View`{.interpreted-text role="guilabel"} the documents.

Once a document or document envelope has been fully signed, i.e., signed
by all signers, the signed document(s) and the
`certificate of completion <sign/security/certificate-of-completion>`{.interpreted-text
role="ref"} are sent via email to the signers and to any other parties
defined by the sender.

### Auto-completed fields {#sign/sign-document/auto-complete}

In Odoo Sign, certain field types can be
`configured to be auto-completed
<sign/fields/auto-fill>`{.interpreted-text role="ref"} using data about
the signer, e.g., name or email address, that is stored in the sender\'s
Odoo database.

Depending on the configuration, these fields can be read-only or can
still be edited after auto-completion.

### Define initials and signature {#sign/sign-document/initials-signature}

If you are an:

- **internal user**, the first time you use Odoo Sign to complete an
  `Initial`{.interpreted-text role="guilabel"} or
  `Signature`{.interpreted-text role="guilabel"} field, you need to
  define how your initials or signature appear. Thereafter, your
  initials/signature are stored for future use.
- **external user**, you need to define how your initials or signature
  appear the first time you complete such a field in a document or
  document envelope prepared using Odoo Sign.

To define how your initials/signature should appear after clicking the
relevant field in a document:

1.  In the `Adopt Your Signature`{.interpreted-text role="guilabel"}
    window, enter your full name.

2.  Choose whether to:

    - use the `Auto`{.interpreted-text role="guilabel"}-generated
      initials/signature, and select your desired font from the
      `fa-font`{.interpreted-text role="icon"}
      `fa-caret-down`{.interpreted-text role="icon"}
      `(font)`{.interpreted-text role="guilabel"} dropdown;
    - `Draw`{.interpreted-text role="guilabel"} your own
      initials/signature using your mouse; or
    - `Load`{.interpreted-text role="guilabel"} an image file of your
      initials/signature.

    ![Options for adopting a signature plus hash frame option](sign_document/hash-frame.png)

    :::: tip
    ::: title
    Tip
    :::

    Internal users can choose to keep or turn off the security
    `Frame`{.interpreted-text role="guilabel"} that contains the
    beginning of the
    `signatory hash <sign/security/hash>`{.interpreted-text role="ref"},
    i.e., the unique digital signature of the operation.
    ::::

3.  Click `Sign all`{.interpreted-text role="guilabel"} to add the
    initials/signature to all instances in the current document or click
    `Sign`{.interpreted-text role="guilabel"} to only add the
    initials/signature to the current instance in the current document.

If there are multiple documents to sign within the same document
envelope, the defined initials/signature can thereafter be added
directly by clicking the relevant field.

## Sign an unprepared .pdf document {#sign/sign-document/pdf-document}

When you are asked to sign a [.pdf]{.title-ref} document that has not
been prepared for electronic signature, this typically involves adding
your name, date, and signature to the document. Depending on how the
document has been shared with you, you can sign the document
electronically in Odoo:

- from the Sign app
- from a record\'s chatter
- from the `Documents <../documents>`{.interpreted-text role="doc"} app

:::: tip
::: title
Tip
:::

To be able to sign documents via the Documents app, ensure that
`the Sign action
is enabled <sign/sign-document/enable-sign-option>`{.interpreted-text
role="ref"} for the folder in which the document is stored.
::::

To sign a document in Odoo:

1.  Open the document:

    - From the Sign app: Go to
      `Sign --> Documents --> My Documents`{.interpreted-text
      role="menuselection"} or `--> All Documents`{.interpreted-text
      role="menuselection"}, click `Upload PDF`{.interpreted-text
      role="guilabel"}, select the relevant [.pdf]{.title-ref}
      document(s), then click `Open`{.interpreted-text role="guilabel"}.
    - From a record\'s chatter or from the Documents app: Click on the
      [.pdf]{.title-ref} document to open it, then click
      `Sign`{.interpreted-text role="guilabel"} in the upper-right
      corner.

2.  `Add the relevant fields <sign/prepare-document/add-fields>`{.interpreted-text
    role="ref"} to the document, then click `Sign Now`{.interpreted-text
    role="guilabel"}.

3.  In the `New Signature Request`{.interpreted-text role="guilabel"}
    window, ensure you are selected as the signer. Optionally:

    - to add the reference of the `certificate of completion
      <sign/security/certificate-of-completion>`{.interpreted-text
      role="ref"} to each page of the document(s), enable
      `Add certificate on each page`{.interpreted-text role="guilabel"}
    - to have one or more parties notified when the document is fully
      signed, add the relevant contact(s) or email address(es) in the
      `CC`{.interpreted-text role="guilabel"} field

4.  Click `Sign Now`{.interpreted-text role="guilabel"}.

    :::: tip
    ::: title
    Tip
    :::

    When signing a document that contains only `auto-completed fields
    <sign/fields/auto-fill>`{.interpreted-text role="ref"}, e.g., name,
    email, etc., click `Download`{.interpreted-text role="guilabel"} to
    immediately download a fully signed version, without having to
    complete the fields manually.
    ::::

5.  `Complete and sign the document(s) <sign/sign-document/signature-request>`{.interpreted-text
    role="ref"}.

The signed document(s) and the certificate of completion are sent to
you, and to any contacts mentioned in the `CC`{.interpreted-text
role="guilabel"} field, via email; to download the signed document
immediately, click `Download`{.interpreted-text role="guilabel"}.

:::: note
::: title
Note
:::

\- After signing, a list of any other documents awaiting your signature
is shown. You can then `Sign`{.interpreted-text role="guilabel"} or
`View`{.interpreted-text role="guilabel"} the documents. - If the
document was signed from a record\'s chatter, the signed document and
the related certificate of completion are added to the chatter.
::::

## Enable the Sign option in Documents {#sign/sign-document/enable-sign-option}

Enabling the `Sign`{.interpreted-text role="guilabel"} option for a
`folder or sub-folder in the Documents app
<documents/folders>`{.interpreted-text role="ref"} allows any document
saved in that folder to be signed without having to leave the Documents
app.

:::: note
::: title
Note
:::

This option can be particularly useful if you receive documents directly
in Documents folders thanks to
`email aliases set on certain folders <documents/email-aliases>`{.interpreted-text
role="ref"}, e.g., sales contracts sent to the alias
[salescontracts@yourcompany.com]{.title-ref}.
::::

To enable the `Sign`{.interpreted-text role="guilabel"} option:

> 1.  In the Documents app, with the relevant folder or sub-folder open,
>     click the `fa-cog`{.interpreted-text role="icon"}
>     `(Actions)`{.interpreted-text role="guilabel"} icon beside the
>     name of the folder.
> 2.  Click `fa-cog`{.interpreted-text role="icon"}
>     `Actions on Select -->`{.interpreted-text role="menuselection"}
>     `fa-caret-right`{.interpreted-text role="icon"}
>     `Sign`{.interpreted-text role="menuselection"}.




--- SOURCE: productivity/sign/validity/algeria.md ---

orphan

:   

# Odoo Sign legality in Algeria

`Odoo Sign <../../sign>`{.interpreted-text role="doc"} is your trusted
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




--- SOURCE: productivity/sign/validity/angola.md ---

orphan

:   

# Odoo Sign legality in Angola

`Odoo Sign <../../sign>`{.interpreted-text role="doc"} is your trusted
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




--- SOURCE: productivity/sign/validity/argentina.md ---

orphan

:   

# Odoo Sign legality in Argentina

`Odoo Sign <../../sign>`{.interpreted-text role="doc"} is your trusted
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




--- SOURCE: productivity/sign/validity/australia.md ---

orphan

:   

# Odoo Sign legality in Australia

`Odoo Sign <../../sign>`{.interpreted-text role="doc"} is your trusted
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




--- SOURCE: productivity/sign/validity/azerbaijan.md ---

orphan

:   

# Odoo Sign legality in Azerbaijan

`Odoo Sign <../../sign>`{.interpreted-text role="doc"} is your trusted
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




--- SOURCE: productivity/sign/validity/bangladesh.md ---

orphan

:   

# Odoo Sign legality in Bangladesh

`Odoo Sign <../../sign>`{.interpreted-text role="doc"} is your trusted
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




--- SOURCE: productivity/sign/validity/brazil.md ---

orphan

:   

# Odoo Sign legality in Brazil

`Odoo Sign <../../sign>`{.interpreted-text role="doc"} is your trusted
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




--- SOURCE: productivity/sign/validity/canada.md ---

orphan

:   

# Odoo Sign legality in Canada

`Odoo Sign <../../sign>`{.interpreted-text role="doc"} is your trusted
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




--- SOURCE: productivity/sign/validity/chile.md ---

orphan

:   

# Odoo Sign legality in Chile

`Odoo Sign <../../sign>`{.interpreted-text role="doc"} is your trusted
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




--- SOURCE: productivity/sign/validity/china.md ---

orphan

:   

# Odoo Sign legality in China

`Odoo Sign <../../sign>`{.interpreted-text role="doc"} is your trusted
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




--- SOURCE: productivity/sign/validity/colombia.md ---

orphan

:   

# Odoo Sign legality in Colombia

`Odoo Sign <../../sign>`{.interpreted-text role="doc"} is your trusted
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




--- SOURCE: productivity/sign/validity/dominican_republic.md ---

orphan

:   

# Odoo Sign legality in the Dominican Republic

`Odoo Sign <../../sign>`{.interpreted-text role="doc"} is your trusted
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




--- SOURCE: productivity/sign/validity/ecuador.md ---

orphan

:   

# Odoo Sign legality in Ecuador

`Odoo Sign <../../sign>`{.interpreted-text role="doc"} is your trusted
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




--- SOURCE: productivity/sign/validity/egypt.md ---

orphan

:   

# Odoo Sign legality in Egypt

`Odoo Sign <../../sign>`{.interpreted-text role="doc"} is your trusted
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




--- SOURCE: productivity/sign/validity/ethiopia.md ---

orphan

:   

# Odoo Sign legality in Ethiopia

`Odoo Sign <../../sign>`{.interpreted-text role="doc"} is your trusted
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




--- SOURCE: productivity/sign/validity/germany.md ---

orphan

:   

# Odoo Sign legality in Germany

`Odoo Sign <../../sign>`{.interpreted-text role="doc"} is your trusted
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




--- SOURCE: productivity/sign/validity/guatemala.md ---

orphan

:   

# Odoo Sign legality in Guatemala

`Odoo Sign <../../sign>`{.interpreted-text role="doc"} is your trusted
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




--- SOURCE: productivity/sign/validity/hong_kong.md ---

orphan

:   

# Odoo Sign legality in Hong Kong

`Odoo Sign <../../sign>`{.interpreted-text role="doc"} is your trusted
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




--- SOURCE: productivity/sign/validity/india.md ---

orphan

:   

# Odoo Sign legality in India

`Odoo Sign <../../sign>`{.interpreted-text role="doc"} is your trusted
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




--- SOURCE: productivity/sign/validity/indonesia.md ---

orphan

:   

# Odoo Sign legality in Indonesia

`Odoo Sign <../../sign>`{.interpreted-text role="doc"} is your trusted
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




--- SOURCE: productivity/sign/validity/iran.md ---

orphan

:   

# Odoo Sign legality in Iran

`Odoo Sign <../../sign>`{.interpreted-text role="doc"} is your trusted
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




--- SOURCE: productivity/sign/validity/iraq.md ---

orphan

:   

# Odoo Sign legality in Iraq

`Odoo Sign <../../sign>`{.interpreted-text role="doc"} is your trusted
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




--- SOURCE: productivity/sign/validity/israel.md ---

orphan

:   

# Odoo Sign legality in Israel

`Odoo Sign <../../sign>`{.interpreted-text role="doc"} is your trusted
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




--- SOURCE: productivity/sign/validity/japan.md ---

orphan

:   

# Odoo Sign legality in Japan

`Odoo Sign <../../sign>`{.interpreted-text role="doc"} is your trusted
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




--- SOURCE: productivity/sign/validity/kazakhstan.md ---

orphan

:   

# Odoo Sign legality in Kazakhstan

`Odoo Sign <../../sign>`{.interpreted-text role="doc"} is your trusted
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




--- SOURCE: productivity/sign/validity/kenya.md ---

orphan

:   

# Odoo Sign legality in Kenya

`Odoo Sign <../../sign>`{.interpreted-text role="doc"} is your trusted
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




--- SOURCE: productivity/sign/validity/kuwait.md ---

orphan

:   

# Odoo Sign legality in Kuwait

`Odoo Sign <../../sign>`{.interpreted-text role="doc"} is your trusted
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




--- SOURCE: productivity/sign/validity/malaysia.md ---

orphan

:   

# Odoo Sign legality in Malaysia

`Odoo Sign <../../sign>`{.interpreted-text role="doc"} is your trusted
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




--- SOURCE: productivity/sign/validity/mexico.md ---

orphan

:   

# Odoo Sign legality in Mexico

`Odoo Sign <../../sign>`{.interpreted-text role="doc"} is your trusted
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




--- SOURCE: productivity/sign/validity/morocco.md ---

orphan

:   

# Odoo Sign legality in Morocco

`Odoo Sign <../../sign>`{.interpreted-text role="doc"} is your trusted
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




--- SOURCE: productivity/sign/validity/new_zealand.md ---

orphan

:   

# Odoo Sign legality in New Zealand

`Odoo Sign <../../sign>`{.interpreted-text role="doc"} is your trusted
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




--- SOURCE: productivity/sign/validity/nigeria.md ---

orphan

:   

# Odoo Sign legality in Nigeria

`Odoo Sign <../../sign>`{.interpreted-text role="doc"} is your trusted
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




--- SOURCE: productivity/sign/validity/norway.md ---

orphan

:   

# Odoo Sign legality in Norway

`Odoo Sign <../../sign>`{.interpreted-text role="doc"} is your trusted
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




--- SOURCE: productivity/sign/validity/oman.md ---

orphan

:   

# Odoo Sign legality in Oman

`Odoo Sign <../../sign>`{.interpreted-text role="doc"} is your trusted
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




--- SOURCE: productivity/sign/validity/pakistan.md ---

orphan

:   

# Odoo Sign legality in Pakistan

`Odoo Sign <../../sign>`{.interpreted-text role="doc"} is your trusted
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




--- SOURCE: productivity/sign/validity/peru.md ---

orphan

:   

# Odoo Sign legality in Peru

`Odoo Sign <../../sign>`{.interpreted-text role="doc"} is your trusted
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




--- SOURCE: productivity/sign/validity/philippines.md ---

orphan

:   

# Odoo Sign legality in the Philippines

`Odoo Sign <../../sign>`{.interpreted-text role="doc"} is your trusted
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




--- SOURCE: productivity/sign/validity/qatar.md ---

orphan

:   

# Odoo Sign legality in Qatar

`Odoo Sign <../../sign>`{.interpreted-text role="doc"} is your trusted
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




--- SOURCE: productivity/sign/validity/russia.md ---

orphan

:   

# Odoo Sign legality in Russia

`Odoo Sign <../../sign>`{.interpreted-text role="doc"} is your trusted
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




--- SOURCE: productivity/sign/validity/saudi_arabia.md ---

orphan

:   

# Odoo Sign legality in Saudi Arabia

`Odoo Sign <../../sign>`{.interpreted-text role="doc"} is your trusted
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




--- SOURCE: productivity/sign/validity/singapore.md ---

orphan

:   

# Odoo Sign legality in Singapore

`Odoo Sign <../../sign>`{.interpreted-text role="doc"} is your trusted
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




--- SOURCE: productivity/sign/validity/south_africa.md ---

orphan

:   

# Odoo Sign legality in South Africa

`Odoo Sign <../../sign>`{.interpreted-text role="doc"} is your trusted
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




--- SOURCE: productivity/sign/validity/south_korea.md ---

orphan

:   

# Odoo Sign legality in South Korea

`Odoo Sign <../../sign>`{.interpreted-text role="doc"} is your trusted
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




--- SOURCE: productivity/sign/validity/switzerland.md ---

orphan

:   

# Odoo Sign legality in Switzerland

`Odoo Sign <../../sign>`{.interpreted-text role="doc"} is your trusted
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




--- SOURCE: productivity/sign/validity/thailand.md ---

orphan

:   

# Odoo Sign legality in Thailand

`Odoo Sign <../../sign>`{.interpreted-text role="doc"} is your trusted
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




--- SOURCE: productivity/sign/validity/turkey.md ---

orphan

:   

# Odoo Sign legality in Turkey

`Odoo Sign <../../sign>`{.interpreted-text role="doc"} is your trusted
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




--- SOURCE: productivity/sign/validity/ukraine.md ---

orphan

:   

# Odoo Sign legality in Ukraine

`Odoo Sign <../../sign>`{.interpreted-text role="doc"} is your trusted
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




--- SOURCE: productivity/sign/validity/united_arab_emirates.md ---

orphan

:   

# Odoo Sign legality in the United Arab Emirates

`Odoo Sign <../../sign>`{.interpreted-text role="doc"} is your trusted
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




--- SOURCE: productivity/sign/validity/united_kingdom.md ---

orphan

:   

# Odoo Sign legality in the United Kingdom

`Odoo Sign <../../sign>`{.interpreted-text role="doc"} is your trusted
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




--- SOURCE: productivity/sign/validity/uzbekistan.md ---

orphan

:   

# Odoo Sign legality in Uzbekistan

`Odoo Sign <../../sign>`{.interpreted-text role="doc"} is your trusted
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




--- SOURCE: productivity/sign/validity/vietnam.md ---

orphan

:   

# Odoo Sign legality in Vietnam

`Odoo Sign <../../sign>`{.interpreted-text role="doc"} is your trusted
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




--- SOURCE: productivity/sign/validity.md ---

# Validity of electronic signatures

The legal validity of electronic signatures generated by Odoo depends on
your country\'s legislation. Documents signed using the Sign app are
considered legally valid in the `European Union
<sign/validity/eu>`{.interpreted-text role="ref"} and the
`United States of America <sign/validity/united-states>`{.interpreted-text
role="ref"}. They also meet the requirements for electronic signatures
in `most countries <sign/validity/other-countries>`{.interpreted-text
role="ref"}.

Companies doing business abroad should also consider other countries\'
electronic signature laws.

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

## European Union {#sign/validity/eu}

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

1.  Email validation and SMS validation (if enabled)
2.  Strong identity proof through itsme® (if enabled)
3.  Timestamped, IP and geographically traceable access logs to the
    documents and their associated signatures
4.  Document traceability and inalterability (any alteration made to a
    signed document is detected by Odoo with the use of cryptographic
    proofs)

::: seealso
`Documentation for Germany <validity/germany>`{.interpreted-text
role="doc"}
:::

## United States of America {#sign/validity/united-states}

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

## Other countries {#sign/validity/other-countries}

- `Algeria <validity/algeria>`{.interpreted-text role="doc"}
- `Angola <validity/angola>`{.interpreted-text role="doc"}
- `Argentina <validity/argentina>`{.interpreted-text role="doc"}
- `Australia <validity/australia>`{.interpreted-text role="doc"}
- `Azerbaijan <validity/azerbaijan>`{.interpreted-text role="doc"}
- `Bangladesh <validity/bangladesh>`{.interpreted-text role="doc"}
- `Brazil <validity/brazil>`{.interpreted-text role="doc"}
- `Canada <validity/canada>`{.interpreted-text role="doc"}
- `Chile <validity/chile>`{.interpreted-text role="doc"}
- `China <validity/china>`{.interpreted-text role="doc"}
- `Colombia <validity/colombia>`{.interpreted-text role="doc"}
- `Dominican Republic <validity/dominican_republic>`{.interpreted-text
  role="doc"}
- `Ecuador <validity/ecuador>`{.interpreted-text role="doc"}
- `Egypt <validity/egypt>`{.interpreted-text role="doc"}
- `Ethiopia <validity/ethiopia>`{.interpreted-text role="doc"}
- `Guatemala <validity/guatemala>`{.interpreted-text role="doc"}
- `Hong Kong <validity/hong_kong>`{.interpreted-text role="doc"}
- `India <validity/india>`{.interpreted-text role="doc"}
- `Indonesia <validity/indonesia>`{.interpreted-text role="doc"}
- `Iran <validity/iran>`{.interpreted-text role="doc"}
- `Iraq <validity/iraq>`{.interpreted-text role="doc"}
- `Israel <validity/israel>`{.interpreted-text role="doc"}
- `Japan <validity/japan>`{.interpreted-text role="doc"}
- `Kazakhstan <validity/kazakhstan>`{.interpreted-text role="doc"}
- `Kenya <validity/kenya>`{.interpreted-text role="doc"}
- `Kuwait <validity/kuwait>`{.interpreted-text role="doc"}
- `Malaysia <validity/malaysia>`{.interpreted-text role="doc"}
- `Mexico <validity/mexico>`{.interpreted-text role="doc"}
- `Morocco <validity/morocco>`{.interpreted-text role="doc"}
- `New Zealand <validity/new_zealand>`{.interpreted-text role="doc"}
- `Nigeria <validity/nigeria>`{.interpreted-text role="doc"}
- `Norway <validity/norway>`{.interpreted-text role="doc"}
- `Oman <validity/oman>`{.interpreted-text role="doc"}
- `Pakistan <validity/pakistan>`{.interpreted-text role="doc"}
- `Peru <validity/peru>`{.interpreted-text role="doc"}
- `Philippines <validity/philippines>`{.interpreted-text role="doc"}
- `Qatar <validity/qatar>`{.interpreted-text role="doc"}
- `Russia <validity/russia>`{.interpreted-text role="doc"}
- `Saudi Arabia <validity/saudi_arabia>`{.interpreted-text role="doc"}
- `Singapore <validity/singapore>`{.interpreted-text role="doc"}
- `South Africa <validity/south_africa>`{.interpreted-text role="doc"}
- `South Korea <validity/south_korea>`{.interpreted-text role="doc"}
- `Switzerland <validity/switzerland>`{.interpreted-text role="doc"}
- `Thailand <validity/thailand>`{.interpreted-text role="doc"}
- `Turkey <validity/turkey>`{.interpreted-text role="doc"}
- `Ukraine <validity/ukraine>`{.interpreted-text role="doc"}
- `United Arab Emirates <validity/united_arab_emirates>`{.interpreted-text
  role="doc"}
- `United Kingdom <validity/united_kingdom>`{.interpreted-text
  role="doc"}
- `Uzbekistan <validity/uzbekistan>`{.interpreted-text role="doc"}
- `Vietnam <validity/vietnam>`{.interpreted-text role="doc"}




--- SOURCE: productivity/sign.md ---

nosearch

:   

show-content

:   

hide-page-toc

:   

# Sign

::: {.toctree titlesonly=""}
sign/request_signatures sign/sign_document sign/security_authentication
sign/configuration sign/validity
:::

**Odoo Sign** allows you to sign, send, and approve documents online
using electronic signatures.

Just like a handwritten signature, an electronic signature represents a
person\'s agreement to the content of a document. Signatures generated
using the Sign app are considered as `valid
electronic signatures <sign/validity>`{.interpreted-text role="doc"} in
the European Union and the United States of America, and meet the
requirements for electronic signatures in most countries.

With Sign, you can:

- `prepare documents for signing <sign/prepare-document>`{.interpreted-text
  role="ref"} by one or more signers using drag-and-drop fields
- send
  `one-off documents for signing <sign/request-signatures/one-off>`{.interpreted-text
  role="ref"} from the Sign app or from an Odoo record
- create and use
  `templates <sign/request-signatures/templates>`{.interpreted-text
  role="ref"} to send frequently used documents for signing from the
  Sign app or from an Odoo record
- create
  `document envelopes <sign/prepare-document/create-envelope>`{.interpreted-text
  role="ref"} to send multiple documents in a single signature request
  or sign multiple documents at the same time
- `sign documents that have been prepared using Odoo Sign
  <sign/sign-document/signature-request>`{.interpreted-text role="ref"}
- `sign non-prepared documents <sign/sign-document/pdf-document>`{.interpreted-text
  role="ref"} from the Sign app, from the chatter of an Odoo record, or
  from the `Documents <documents>`{.interpreted-text role="doc"} app
- configure
  `auto-complete fields <sign/fields/auto-fill>`{.interpreted-text
  role="ref"} that populate with data from your database during signing
- define
  `advanced configuration for signers <sign/prepare-document/signer-settings>`{.interpreted-text
  role="ref"} to require authentication (via SMS, Aadhaar eSign, or
  itsme®), allow delegation, or, for templates, assign a fixed signer

::: seealso
\- [Odoo Sign: product page](https://www.odoo.com/app/sign) - [Odoo
Tutorials: Sign \[video\]](https://www.odoo.com/slides/sign-61)
:::




--- SOURCE: productivity/spreadsheet/get_started.md ---

# Get started

## Create a new spreadsheet {#spreadsheet/get-started/create-spreadsheet}

To create a new spreadsheet:

1.  Open Odoo Documents and navigate to the section or folder in which
    the spreadsheet should be created.

2.  Click `New`{.interpreted-text role="guilabel"} and select
    `Spreadsheet`{.interpreted-text role="guilabel"}.

    :::: tip
    ::: title
    Tip
    :::

    Alternatively, from the `fa-folder-o`{.interpreted-text role="icon"}
    `All`{.interpreted-text role="guilabel"} folder, click
    `New`{.interpreted-text role="guilabel"} and select
    `Spreadsheet`{.interpreted-text role="guilabel"}, then select in
    which `Folder`{.interpreted-text role="guilabel"} the spreadsheet
    should be created.
    ::::

3.  Click `Blank spreadsheet`{.interpreted-text role="guilabel"} or, to
    create a new spreadsheet using an existing
    `template <spreadsheet/get-started/templates>`{.interpreted-text
    role="ref"}, select the relevant template.

4.  Click `Create`{.interpreted-text role="guilabel"}.

5.  Click on [Untitled spreadsheet]{.title-ref} at the top of the screen
    to edit the name of the spreadsheet.

:::: tip
::: title
Tip
:::

It is also possible to create a new spreadsheet by:

- clicking `File -->`{.interpreted-text role="menuselection"}
  `os-clear-and-reload`{.interpreted-text role="icon"}
  `New`{.interpreted-text role="menuselection"} from the menu bar of an
  open spreadsheet; or
- `inserting a list, pivot table, or chart from another Odoo app <insert>`{.interpreted-text
  role="doc"} into a new spreadsheet directly from the app in question.

In these cases, the new spreadsheet is saved in Odoo Documents in the
`fa-hdd-o`{.interpreted-text role="icon"} `My Drive`{.interpreted-text
role="guilabel"} personal folder.
::::

### Templates {#spreadsheet/get-started/templates}

Spreadsheet templates allow you to quickly create spreadsheets without
starting from scratch. For example, you could create a template for a
monthly budget report or a quarterly sales commission report.

:::: note
::: title
Note
:::

Templates are available to all users on the database.
::::

#### Create a template {#spreadsheet/get-started/templates-create}

Any spreadsheet can be saved as a template.

To create a template:

1.  Open the relevant spreadsheet or `create a new one
    <spreadsheet/get-started/create-spreadsheet>`{.interpreted-text
    role="ref"}.
2.  From the menu bar, click `File -->`{.interpreted-text
    role="menuselection"} `os-save`{.interpreted-text role="icon"}
    `Save as
    template`{.interpreted-text role="menuselection"}. Modify the
    default `Template Name`{.interpreted-text role="guilabel"} if needed
    and click `Confirm`{.interpreted-text role="guilabel"}.

:::: important
::: title
Important
:::

Once a spreadsheet is saved as a template, any further changes to the
open spreadsheet are saved only in that spreadsheet. To make changes to
the template, you need to `edit
the template <spreadsheet/get-started/templates-manage>`{.interpreted-text
role="ref"}.
::::

You can also create a template by
`making a copy of an existing template and editing it
<spreadsheet/get-started/templates-manage>`{.interpreted-text
role="ref"}.

#### Use templates {#spreadsheet/get-started/templates-use}

To create a new spreadsheet using a template, open the Documents app and
click `New
--> Spreadsheet`{.interpreted-text role="menuselection"}. Select the
relevant template and click `Create`{.interpreted-text role="guilabel"}.

Alternatively, go to
`Documents --> Configuration --> Spreadsheet Templates`{.interpreted-text
role="menuselection"} then, on the line of the relevant template, click
`fa-plus`{.interpreted-text role="icon"}
`New spreadsheet`{.interpreted-text role="guilabel"}.

:::: note
::: title
Note
:::

By default, the new spreadsheet inherits the name of the template, which
is shown at the top of the screen. To rename the spreadsheet, click the
name and edit it.
::::

#### Manage and edit templates {#spreadsheet/get-started/templates-manage}

Manage templates by going to
`Documents --> Configuration --> Spreadsheet Templates`{.interpreted-text
role="menuselection"}. Remove the `My Templates`{.interpreted-text
role="guilabel"}
`filter <search/preconfigured-filters>`{.interpreted-text role="ref"} to
view all templates in the database.

Various actions are possible:

- Copy an existing template by clicking `fa-clone`{.interpreted-text
  role="icon"} `Make a copy`{.interpreted-text role="guilabel"} at the
  right of the screen. The new template appears at the bottom of the
  list. Click the `Name`{.interpreted-text role="guilabel"} to edit it.
- Edit an existing template (including one you just copied) by clicking
  `fa-pencil`{.interpreted-text role="icon"} `Edit`{.interpreted-text
  role="guilabel"}, then making the required changes. Modifications are
  automatically saved.
- Delete a template by ticking the checkbox next to it, clicking
  `fa-cog`{.interpreted-text role="icon"} `Actions`{.interpreted-text
  role="guilabel"}, then `Delete`{.interpreted-text role="guilabel"}.

## Upload files {#spreadsheet/get-started/upload-files}

Files in [.xlsx]{.title-ref} or [.csv]{.title-ref} format can be
uploaded into Odoo Documents and opened with Odoo Spreadsheet. To do so:

1.  Open Odoo Documents and navigate to the section or folder where the
    spreadsheet should be saved.
2.  Click `New`{.interpreted-text role="guilabel"} and select
    `Upload`{.interpreted-text role="guilabel"}.
3.  Select the relevant [.xlsx]{.title-ref} or [.csv]{.title-ref} file
    and click `Open`{.interpreted-text role="guilabel"}.
4.  Click on the uploaded file.
5.  By default, the original file is deleted when it is opened with Odoo
    Spreadsheet. To preserve the original file in the same folder in
    Odoo Documents, disable `Send source file to
    trash`{.interpreted-text role="guilabel"}.
6.  Click `Open with Odoo Spreadsheet`{.interpreted-text
    role="guilabel"}.

The file can now be fully edited in Odoo Spreadsheet.

## Manage spreadsheets {#spreadsheet/get-started/manage-spreadsheets}

Users with `Editor`{.interpreted-text role="guilabel"} rights to a
specific spreadsheet have various options for managing the spreadsheet
via the `File`{.interpreted-text role="guilabel"} menu:

- `os-copy-file`{.interpreted-text role="icon"}
  `Make a copy`{.interpreted-text role="guilabel"}: creates a duplicate
  of the current spreadsheet with the same
  `regional settings <spreadsheet/get-started/manage-spreadsheets-locale>`{.interpreted-text
  role="ref"} (or locale).

- `fa-share-alt`{.interpreted-text role="icon"}
  `Share`{.interpreted-text role="guilabel"}: allows you to configure
  access rights to the spreadsheet and `Share`{.interpreted-text
  role="guilabel"} it with specific users or copy a shareable link. For
  a spreadsheet containing dynamic Odoo data that needs to be shared
  with a user who does not have the appropriate access rights to the
  data, it is possible to `Freeze and share`{.interpreted-text
  role="guilabel"} the spreadsheet.

  ::: seealso
  `Access and sharing <spreadsheet/collaboration/access-sharing>`{.interpreted-text
  role="ref"}
  :::

- `fa-download`{.interpreted-text role="icon"}
  `Download`{.interpreted-text role="guilabel"}: downloads the
  spreadsheet in [.xlsx]{.title-ref} format.

  :::: important
  ::: title
  Important
  :::

  When you download a spreadsheet in [.xlsx]{.title-ref} format, any
  spreadsheet formulas that retrieve Odoo data from your database, e.g.,
  via an `inserted list <insert>`{.interpreted-text role="doc"} or via
  other
  `Odoo-specific functions <work_with_data/functions>`{.interpreted-text
  role="doc"}, are converted to the values they would have returned at
  the moment the spreadsheet was downloaded.
  ::::

  :::: tip
  ::: title
  Tip
  :::

  Users with `Viewer`{.interpreted-text role="guilabel"} rights can also
  download a spreadsheet in [.xlsx]{.title-ref} format.
  ::::

- `fa-print`{.interpreted-text role="icon"} `Print`{.interpreted-text
  role="guilabel"}: prints a copy of the spreadsheet on a connected
  printer.

- `os-save`{.interpreted-text role="icon"}
  `Save as template`{.interpreted-text role="guilabel"}: allows the
  current spreadsheet to be used as a
  `template <spreadsheet/get-started/templates>`{.interpreted-text
  role="ref"} for future spreadsheets.

- `fa-trash`{.interpreted-text role="icon"}
  `Move to trash`{.interpreted-text role="guilabel"}: moves the
  spreadsheet to the trash folder of the Documents app

  :::: tip
  ::: title
  Tip
  :::

  Items in the trash folder are permanently deleted after 30 days.
  ::::

- `os-add-to-dashboard`{.interpreted-text role="icon"}
  `Add to dashboard`{.interpreted-text role="guilabel"}: `converts
  <spreadsheet/get-started/convert-to-dashboard>`{.interpreted-text
  role="ref"} the current spreadsheet into an
  `Odoo dashboard <../dashboards>`{.interpreted-text role="doc"}.

- `os-version-history`{.interpreted-text role="icon"}
  `See version history`{.interpreted-text role="guilabel"}: provides
  read-only `access to
  previous versions <spreadsheet/get-started/manage-spreadsheets-versioning>`{.interpreted-text
  role="ref"} of the current spreadsheet, which can be named and
  restored if needed.

- `os-cog`{.interpreted-text role="icon"} `Settings`{.interpreted-text
  role="guilabel"}: allows you to view and change the `locale
  <spreadsheet/get-started/manage-spreadsheets-locale>`{.interpreted-text
  role="ref"} of the current spreadsheet.

### Version history {#spreadsheet/get-started/manage-spreadsheets-versioning}

Odoo Spreadsheet automatically saves versions of spreadsheets as changes
are made, allowing users with `Editor`{.interpreted-text
role="guilabel"} rights to browse and restore previous versions.

To access the version history of a spreadsheet, click
`File -->`{.interpreted-text role="menuselection"}
`os-version-history`{.interpreted-text role="icon"}
`See version history`{.interpreted-text role="menuselection"} from the
menu bar. Saved versions appear in a panel on the right of the
spreadsheet. The name of the user who made the change is shown, as well
as the date and time of the change.

The following actions are possible:

- **View an earlier version** in read-only format by clicking on the
  relevant version.
- **Restore an earlier version** by clicking
  `fa-ellipsis-v`{.interpreted-text role="icon"}
  `(vertical ellipsis)`{.interpreted-text role="guilabel"} then
  `Restore this version`{.interpreted-text role="guilabel"}.
- **Copy an earlier version** by clicking
  `fa-ellipsis-v`{.interpreted-text role="icon"}
  `(vertical ellipsis)`{.interpreted-text role="guilabel"} then
  `Make a copy`{.interpreted-text role="menuselection"}. A copy of the
  version opens as a new spreadsheet.
- **Create named versions** by clicking on the date and time of the
  relevant version and entering the desired name. The date and time of
  the version are then displayed below the new name.

:::: tip
::: title
Tip
:::

When viewing an earlier, read-only version of a spreadsheet, the
following actions are still possible:

- Search the spreadsheet by clicking `Edit -->`{.interpreted-text
  role="menuselection"} `fa-search`{.interpreted-text role="icon"}
  `Find and replace`{.interpreted-text role="menuselection"} or using
  the shortcut [Ctrl]{.title-ref} + [H]{.title-ref}.
- Copy an individual cell or selected area by clicking
  `Edit -->`{.interpreted-text role="menuselection"}
  `fa-clipboard`{.interpreted-text role="icon"} `Copy`{.interpreted-text
  role="menuselection"} or using the shortcut [Ctrl]{.title-ref} +
  [C]{.title-ref}.
::::

### Regional settings {#spreadsheet/get-started/manage-spreadsheets-locale}

To ensure data is displayed consistently for all users, the regional
settings (or locale) of a spreadsheet, are managed at spreadsheet level.
This locale affects the following settings and formats:

- thousand and decimal separators
- date and time formats
- first day of the week

By default, a new spreadsheet inherits the regional settings of the user
who created it. For example, any spreadsheets created by a user whose
language is set to `French (BE) /
Français (BE)`{.interpreted-text role="guilabel"} will follow Belgian
French conventions.

A spreadsheet\'s locale can be viewed and changed at any time by a user
with `Editor`{.interpreted-text role="guilabel"} rights. To view the
locale of a spreadsheet, click `File -->`{.interpreted-text
role="menuselection"} `os-cog`{.interpreted-text role="icon"}
`Settings`{.interpreted-text role="menuselection"} from the menu bar.
The `Spreadsheet settings`{.interpreted-text role="guilabel"} panel
opens on the right of the spreadsheet. To change the locale, select the
appropriate locale from the dropdown.

:::: tip
::: title
Tip
:::

When you open a spreadsheet that has a different locale to that of your
user profile, a blue `fa-globe`{.interpreted-text role="icon"}
`(globe)`{.interpreted-text role="guilabel"} icon appears at the top
right of the spreadsheet. Hovering over the icon reveals a warning
message that indicates the spreadsheet locale and highlights formats
that differ.

![Warning about difference between user and spreadsheet locale](get_started/locale-difference.png)

If no `fa-globe`{.interpreted-text role="icon"}
`(globe)`{.interpreted-text role="guilabel"} icon is shown, this means
the spreadsheet\'s locale is the same as that of your user profile.
::::

### Convert a spreadsheet into a dashboard {#spreadsheet/get-started/convert-to-dashboard}

A user with the appropriate
`access rights <access-rights/groups>`{.interpreted-text role="ref"} can
convert an Odoo spreadsheet into a dashboard that is then accessible via
`Odoo Dashboards <../../../applications/productivity/dashboards>`{.interpreted-text
role="doc"}. To do so:

1.  Click `File -->`{.interpreted-text role="menuselection"}
    `os-add-to-dashboard`{.interpreted-text role="icon"}
    `Add to dashboard`{.interpreted-text role="menuselection"} from the
    menu bar.
2.  Enter the `Dashboard Name`{.interpreted-text role="guilabel"}.
3.  Select the relevant `Dashboard Section`{.interpreted-text
    role="guilabel"} from the dropdown or, to create a new dashboard
    section, type the name of the new section, then click
    `Create`{.interpreted-text role="guilabel"}.
4.  If necessary, modify the `Access Groups`{.interpreted-text
    role="guilabel"} to determine which `user groups
    <dashboards/access-and-sharing>`{.interpreted-text role="ref"} can
    access the dashboard.
5.  Click `Create`{.interpreted-text role="guilabel"}.

:::: tip
::: title
Tip
:::

\- By default, the first tab of the spreadsheet serves as the front end
of the dashboard. - It is also possible to convert a spreadsheet to a
dashboard from within the `Dashboard
configuration settings <dashboards/configuration>`{.interpreted-text
role="ref"}, by directly adding the spreadsheet to an existing or new
dashboard section. - After a spreadsheet has been converted to a
dashboard, it is deleted from Odoo Documents. Any subsequent
`modifications <build_and_customize_dashboards/customize>`{.interpreted-text
role="ref"} need to be made via Odoo Dashboards.
::::




--- SOURCE: productivity/spreadsheet/insert.md ---

# Insert and link to Odoo data

Several elements from your Odoo database can be inserted into an Odoo
spreadsheet, namely:

- lists, i.e., data from a
  `list view <studio/views/multiple-records/list>`{.interpreted-text
  role="ref"}
- pivot tables, i.e., data from a
  `pivot view <studio/views/reporting/pivot>`{.interpreted-text
  role="ref"}
- charts, i.e., data from a
  `graph view <studio/views/reporting/graph>`{.interpreted-text
  role="ref"}

:::: note
::: title
Note
:::

Lists, pivot tables, and charts from different apps and models can be
inserted into the same spreadsheet.
::::

Each time a list, pivot table, or chart is inserted, a `data source
<spreadsheet/insert/data-sources>`{.interpreted-text role="ref"} is
created. This data source connects the spreadsheet to your Odoo
database, retrieving up-to-date information every time the spreadsheet
is opened, the browser page is reloaded, or data is manually refreshed
by clicking `Data -->`{.interpreted-text role="menuselection"}
`os-refresh-data`{.interpreted-text role="icon"}
`Refresh all data`{.interpreted-text role="menuselection"} from the menu
bar.

`Inserted lists <spreadsheet/insert/list>`{.interpreted-text role="ref"}
and `inserted pivot tables
<spreadsheet/insert/pivot-table>`{.interpreted-text role="ref"} use
formulas with Odoo-specific `list functions
<spreadsheet/insert/list-functions>`{.interpreted-text role="ref"} and
`pivot table functions
<spreadsheet/insert/pivot-table-functions-static>`{.interpreted-text
role="ref"} to retrieve data from your database and can be further
manipulated in the spreadsheet. Certain elements of `inserted charts
<spreadsheet/insert/chart>`{.interpreted-text role="ref"} can be
modified, but no data manipulation or computation is possible.

:::: tip
::: title
Tip
:::

If you intend to use
`global filters <work_with_data/global_filters>`{.interpreted-text
role="doc"} to dynamically filter Odoo data in a spreadsheet or
dashboard, do not use the same conditions to establish the initial list,
pivot table, or chart in your database.
::::

It is also possible to:

- `add clickable links <spreadsheet/insert/clickable-links>`{.interpreted-text
  role="ref"} to Odoo menu items, to other sheets of the same
  spreadsheet, or to external URLs
- `insert financial data <spreadsheet/insert/financial-data>`{.interpreted-text
  role="ref"} from your Odoo database using Odoo-specific spreadsheet
  `functions <work_with_data/functions>`{.interpreted-text role="doc"}
- paste data from another Odoo spreadsheet, Excel spreadsheet, or Google
  Sheet directly into any Odoo spreadsheet

## Data sources {#spreadsheet/insert/data-sources}

Data sources, which are created each time a
`list <spreadsheet/insert/list>`{.interpreted-text role="ref"},
`pivot table
<spreadsheet/insert/pivot-table>`{.interpreted-text role="ref"}, or
`chart <spreadsheet/insert/chart>`{.interpreted-text role="ref"} is
inserted into an Odoo spreadsheet, connect the spreadsheet and the
relevant `model
<../../studio/models_modules_apps>`{.interpreted-text role="doc"} in
your database, ensuring the data stays up-to-date and allowing you to
`access the underlying data <spreadsheet/insert/accessing-data>`{.interpreted-text
role="ref"}.

Each data source is defined by properties that can be accessed via the
`Data`{.interpreted-text role="guilabel"} menu. Data sources are
identified by their respective `oi-view-pivot`{.interpreted-text
role="icon"} `(pivot table)`{.interpreted-text role="guilabel"},
`oi-view-list`{.interpreted-text role="icon"} `(list)`{.interpreted-text
role="guilabel"} or `fa-bar-chart`{.interpreted-text role="icon"}
`(chart)`{.interpreted-text role="guilabel"} icon, followed by their ID
and name, e.g., `oi-view-pivot`{.interpreted-text role="icon"} *(#1)
Sales Analysis by Product*.

![Data sources listed in Data menu](insert/data-menu.png)

Clicking on a data source opens the related properties in a panel on the
right of the spreadsheet.

:::: tip
::: title
Tip
:::

\- The properties panel can also be opened by right-clicking any cell of
an inserted list or pivot table, then clicking
`oi-view-list`{.interpreted-text role="icon"}
`See list properties`{.interpreted-text role="guilabel"} or
`oi-view-pivot`{.interpreted-text role="icon"}
`See pivot properties`{.interpreted-text role="guilabel"}, or by
clicking the `fa-bars`{.interpreted-text role="icon"}
`(menu)`{.interpreted-text role="guilabel"} icon at the top right of an
inserted chart, then clicking `fa-pencil-square-o`{.interpreted-text
role="icon"} `Edit`{.interpreted-text role="guilabel"}. - Once the
properties of a specific data source are open, they remain open even
when navigating between spreadsheet tabs. To close the properties panel,
click the `fa-times`{.interpreted-text role="icon"}
`(close)`{.interpreted-text role="guilabel"} icon at the top right of
the panel. - Click `fa-thumb-tack`{.interpreted-text role="icon"}
`(pin)`{.interpreted-text role="guilabel"} at the top of the properties
panel to allow another panel, such as the
`global filters <work_with_data/global_filters>`{.interpreted-text
role="doc"} panel, to open beside it.
::::

:::: note
::: title
Note
:::

Deleting an inserted list or pivot table, or deleting the sheet into
which it was inserted, does not delete the underlying data source. The
data source of an inserted list or pivot table can only be deleted via
the data source\'s properties.

A warning in the `Data`{.interpreted-text role="guilabel"} menu
identifies any data sources for which the corresponding list or pivot
table no longer appears in the spreadsheet.

![Warning message about unused list](insert/list-deleted.png)

Deleting an inserted chart, on the other hand, also deletes the
underlying data source.
::::

### Accessing underlying data {#spreadsheet/insert/accessing-data}

The underlying data of an inserted list, pivot table, or chart can be
accessed at any time. To view:

- an individual record of an **inserted list**, right-click any cell of
  the relevant row, then select `fa-eye`{.interpreted-text role="icon"}
  `See record`{.interpreted-text role="guilabel"}
- a list of records referenced by an individual cell of an **inserted
  pivot table**, right-click the cell, then select
  `fa-eye`{.interpreted-text role="icon"}
  `See records`{.interpreted-text role="guilabel"}
- a list of records represented by a data point of an **inserted
  chart**, click the data point.

:::: tip
::: title
Tip
:::

Use the middle mouse button or [Ctrl]{.title-ref} + left-click
(Microsoft/Linux), or [Command]{.title-ref} + left-click (Mac OS) to
open the results in a new browser tab.
::::

To return to the spreadsheet after viewing the underlying data, click
the name of the spreadsheet in the breadcrumbs at the top of the page.

## Insert a list {#spreadsheet/insert/list}

:::: important
::: title
Important
:::

Before inserting a list in a spreadsheet, ensure the list is tailored to
your needs. Consider which fields should be visible as well as how the
records are filtered and/or sorted. This can impact both the loading
time and the user-friendliness of your spreadsheet.
::::

To insert a list:

1.  With the relevant list view open in your database, click the
    `fa-cog`{.interpreted-text role="icon"}
    `(Actions)`{.interpreted-text role="guilabel"} icon beside the name
    of the view, then `Spreadsheet -->`{.interpreted-text
    role="menuselection"} `oi-view-list`{.interpreted-text role="icon"}
    `Insert list in spreadsheet`{.interpreted-text
    role="menuselection"}.

    :::: note
    ::: title
    Note
    :::

    To insert only specific records, select the relevant records, click
    the `fa-cog`{.interpreted-text role="icon"}
    `Actions`{.interpreted-text role="guilabel"} button that appears at
    the top center of the screen, then `oi-view-list`{.interpreted-text
    role="icon"} `Insert in spreadsheet`{.interpreted-text
    role="guilabel"}.
    ::::

2.  In the window that opens, edit the
    `Name of the list`{.interpreted-text role="guilabel"} if needed.

    The list name is used in the sheet name and in the `list properties
    <spreadsheet/insert/list-properties>`{.interpreted-text role="ref"}.

    ![Inserting a list in a spreadsheet](insert/insert-list.png)

3.  Edit the number of records, i.e., rows, to be inserted if needed.

    By default, the number shown is the number of records visible on the
    first page of the list. For example, if the list contains 150
    records but only 80 are visible, this field will show 80.

    ::::: note
    ::: title
    Note
    :::

    While the data in your list is kept up to date thanks to the
    connection to your database, an inserted list will not automatically
    expand to accommodate new records, e.g., a new product category or a
    new salesperson.

    If you anticipate new records being added, consider adding extra
    rows when inserting the list. Records/rows can also be
    `added manually <spreadsheet/insert/list-add-records>`{.interpreted-text
    role="ref"} after the spreadsheet has been inserted.

    ::: example
    Your company currently has ten product categories and you insert
    this list in a spreadsheet. If an 11th product category is created
    and your inserted list only had ten rows, the new category will be
    inserted in the appropriate position in the spreadsheet, thereby
    removing an existing category.

    One way to avoid this is to
    `add extra rows <spreadsheet/insert/list-add-records>`{.interpreted-text
    role="ref"} when inserting the list.
    :::
    :::::

4.  Click `Blank spreadsheet`{.interpreted-text role="guilabel"} to
    create a new spreadsheet, or select in which existing spreadsheet
    the list should be inserted.

    :::: note
    ::: title
    Note
    :::

    When inserting a list into a new spreadsheet, the spreadsheet is
    saved in the **Odoo Documents** app in the
    `fa-hdd-o`{.interpreted-text role="icon"}
    `My Drive`{.interpreted-text role="guilabel"} personal folder.
    ::::

5.  Click `Confirm`{.interpreted-text role="guilabel"}.

The list is inserted into a new sheet in the spreadsheet. The sheet tab
in the bottom bar shows the name of the list followed by the list ID,
e.g., *Quotations by Total (List #1)*. A panel on the right side of the
screen shows the
`list properties <spreadsheet/insert/list-properties>`{.interpreted-text
role="ref"}.

:::: tip
::: title
Tip
:::

\- To sever the link between an inserted list and your database, select
the entire list, right-click and select `fa-clipboard`{.interpreted-text
role="icon"} `Copy`{.interpreted-text role="guilabel"} then right-click
again and select `Paste special --> Paste as value`{.interpreted-text
role="menuselection"}. - Do not modify the list ID in the sheet name, as
the inserted list retains this ID for the lifetime of the spreadsheet.
This list ID is used in the `spreadsheet functions
<spreadsheet/insert/list-functions>`{.interpreted-text role="ref"} that
retrieve data from your database.
::::

### List functions {#spreadsheet/insert/list-functions}

When a list is inserted into a spreadsheet, the following `functions
<work_with_data/functions>`{.interpreted-text role="doc"} are used to
retrieve the header and field values, respectively:

``` text
=ODOO.LIST.HEADER(list_id, field_name)
=ODOO.LIST(list_id, index, field_name)
```

The arguments of the function are as follows:

- \`list_id\`: the ID assigned when the list is inserted. The first list
  inserted into a spreadsheet is assigned list ID [1]{.title-ref}, the
  second, list ID [2]{.title-ref}, etc.
- \`index\`: identifies the line on which the record appeared in the
  list before insertion. The first line has an index of [1]{.title-ref},
  the second an index of [2]{.title-ref}, etc.
- \`field_name\`: the technical name of the field.

:::: tip
::: title
Tip
:::

Clicking on an individual cell displays the related formula, if
relevant, in the formula bar. To display all the formulas of a
spreadsheet at the same time, click `View -->`{.interpreted-text
role="menuselection"} `fa-eye`{.interpreted-text role="icon"}
`Show --> Formulas`{.interpreted-text role="menuselection"} on the menu
bar. The example below shows the functions used to retrieve list headers
and values.

![Viewing formulas of spreadsheet cells](insert/list-formulas.png)
::::

### List properties {#spreadsheet/insert/list-properties}

The list properties appear on the right side of the screen when a list
is inserted. They can be accessed at any time via the
`Data`{.interpreted-text role="guilabel"} menu by clicking the relevant
list, as prefaced by the `oi-view-list`{.interpreted-text role="icon"}
`(list)`{.interpreted-text role="guilabel"} icon, or by right-clicking
anywhere on the list and clicking `oi-view-list`{.interpreted-text
role="icon"} `See list properties`{.interpreted-text role="guilabel"}.

The following list properties are shown, some of which can be edited:

- `List #`{.interpreted-text role="guilabel"}: the list ID. List IDs are
  assigned sequentially as additional lists are inserted into the
  spreadsheet.

- `List Name`{.interpreted-text role="guilabel"}: the name of the list.
  Edit this if needed. Note that editing the list name in the list
  properties does not modify the list name shown in the sheet name, and
  vice versa.

- `Model`{.interpreted-text role="guilabel"}: the model from which the
  data has been extracted.

- `Columns`{.interpreted-text role="guilabel"}: the fields of the model
  that were visible when the list was inserted.

- `Domain`{.interpreted-text role="guilabel"}: the rules used to
  determine which records are shown. Click
  `Edit domain <search/custom-filters>`{.interpreted-text role="ref"} to
  add or edit rules.

  :::: note
  ::: title
  Note
  :::

  When
  `global filters <work_with_data/global_filters>`{.interpreted-text
  role="doc"} are used, this domain is combined with the selected values
  of the global filter before the data is loaded into the spreadsheet.
  ::::

- `Sorting`{.interpreted-text role="guilabel"}: how the data is sorted,
  if applicable. To add a sorting rule, click `Add`{.interpreted-text
  role="guilabel"}, select the field, then choose whether sorting should
  be `Ascending`{.interpreted-text role="guilabel"} or
  `Descending`{.interpreted-text role="guilabel"}. Delete a sorting rule
  by clicking the `fa-times`{.interpreted-text role="icon"}
  `(delete)`{.interpreted-text role="guilabel"} icon.

To `duplicate <spreadsheet/insert/list-duplicate>`{.interpreted-text
role="ref"} or `delete
<spreadsheet/insert/list-delete>`{.interpreted-text role="ref"} a
list\'s data source, click the `fa-cog`{.interpreted-text role="icon"}
`(gear)`{.interpreted-text role="guilabel"} icon, then click
`fa-clone`{.interpreted-text role="icon"} `Duplicate`{.interpreted-text
role="guilabel"} or `fa-trash`{.interpreted-text role="icon"}
`Delete`{.interpreted-text role="guilabel"} as relevant.

### Manage an inserted list {#spreadsheet/insert/list-manage}

After a list from an Odoo database has been inserted into an Odoo
spreadsheet, you can:

- `add records <spreadsheet/insert/list-add-records>`{.interpreted-text
  role="ref"}, i.e., rows
- `add fields <spreadsheet/insert/list-add-fields>`{.interpreted-text
  role="ref"}, i.e., columns
- `duplicate the list <spreadsheet/insert/list-duplicate>`{.interpreted-text
  role="ref"} to create a new, identical data source
- `delete the list and its underlying data source <spreadsheet/insert/list-delete>`{.interpreted-text
  role="ref"}

#### Add records/rows to a list {#spreadsheet/insert/list-add-records}

To add records to a list, use one of the following methods:

- Select the last row of the table, then hover over the blue square
  until the plus icon appears. Click and drag down to add the desired
  number of rows. The cells of the new rows are populated with the
  `appropriate formula <spreadsheet/insert/list-functions>`{.interpreted-text
  role="ref"} to retrieve the list values. If there is corresponding
  data in your database, the cells are populated.

  ![Add records by dragging the cell down](insert/list-add-records.png)

- Position your cursor in the top left cell of the sheet, click
  `Data --> Re-insert
  list`{.interpreted-text role="menuselection"} from the menu bar, then
  select the appropriate list. In the pop-up window, indicate the number
  of records to insert and click `Confirm`{.interpreted-text
  role="guilabel"}. An updated list is inserted, overwriting the
  previous list.

:::: tip
::: title
Tip
:::

The above methods can also be used to add additional blank rows to your
spreadsheet table. This may be useful for lists where you expect
additional records to be generated in your database, e.g., new product
categories or new salespersons.
::::

#### Add fields/columns to a list {#spreadsheet/insert/list-add-fields}

To add fields/columns to a list:

1.  Select the column to the right or left of where the new column
    should be inserted.

2.  Click `Insert -->`{.interpreted-text role="menuselection"}
    `os-insert-col`{.interpreted-text role="icon"}
    `Insert column`{.interpreted-text role="menuselection"} then
    `os-insert-col-before`{.interpreted-text role="icon"}
    `Column left`{.interpreted-text role="menuselection"} or
    `os-insert-col-after`{.interpreted-text role="icon"}
    `Column right`{.interpreted-text role="menuselection"} from the menu
    bar, or right-click then `os-insert-col-before`{.interpreted-text
    role="icon"} `Insert column left`{.interpreted-text role="guilabel"}
    or `os-insert-col-after`{.interpreted-text role="icon"}
    `Insert column right`{.interpreted-text role="guilabel"} as
    appropriate.

3.  Copy the header cell of any column, paste it into the header cell of
    the new column, and press [Enter]{.title-ref}.

4.  Double-click the new header cell then click on the field name that
    appears in quotation marks at the end of the formula; a list of all
    the technical names of the fields of the related model appears.

    ![Add fields/columns by editing the formula](insert/list-add-columns.png)

5.  Select the appropriate field name and press [Enter]{.title-ref}. The
    field\'s label appears in the header.

    :::: tip
    ::: title
    Tip
    :::

    To know a field\'s technical name, navigate to the relevant view,
    `activate developer mode
    <developer-mode>`{.interpreted-text role="ref"}, then check the
    field name by hovering over the question mark beside a field\'s
    label.
    ::::

6.  With the header cell selected, double-click on the blue square in
    the bottom-right corner. The cells of the column are populated with
    the appropriate formula to retrieve the list values. If there is
    corresponding data in your database, the cells are populated.

#### Duplicate a list {#spreadsheet/insert/list-duplicate}

Duplicating a list via the list\'s properties creates an additional data
source. This allows for different manipulations to be performed on the
same data within one spreadsheet.

With the
`list properties <spreadsheet/insert/list-properties>`{.interpreted-text
role="ref"} open, click the `fa-cog`{.interpreted-text role="icon"}
`(gear)`{.interpreted-text role="guilabel"} icon then
`fa-clone`{.interpreted-text role="icon"} `Duplicate`{.interpreted-text
role="guilabel"}.

The new data source is assigned the next available list ID. For example,
if no other lists have been inserted in the meantime, duplicating *List
#1* results in the creation of *List #2*.

Unlike when you insert a list, a duplicated list is not automatically
inserted into the spreadsheet. To insert it, perform the following
steps:

1.  Add a new sheet by clicking the `os-plus`{.interpreted-text
    role="icon"} `(add sheet)`{.interpreted-text role="guilabel"} icon
    at the bottom left of the spreadsheet.
2.  Click `Data --> Re-insert list`{.interpreted-text
    role="menuselection"} from the menu bar, then select the appropriate
    list.
3.  Define the number of records to insert and click
    `Confirm`{.interpreted-text role="guilabel"}.
4.  Edit the `List Name`{.interpreted-text role="guilabel"} in the
    properties panel if needed.
5.  Rename the sheet by right-clicking on the sheet tab, selecting
    `Rename`{.interpreted-text role="guilabel"}, and entering the new
    sheet name.

:::: note
::: title
Note
:::

Duplicating an inserted list by copying and pasting it or by duplicating
the sheet into which it has been inserted does not create a new data
source. Any changes made to the list\'s properties would therefore
impact any copies of the list.
::::

#### Delete a list {#spreadsheet/insert/list-delete}

To fully delete a list and the underlying data source from a
spreadsheet, perform the following steps in any order:

- Delete the spreadsheet table using your preferred means, e.g., via
  keyboard commands, spreadsheet menus, or by deleting the sheet. This
  deletes the visual representation of the data.
- From the
  `properties panel <spreadsheet/insert/list-properties>`{.interpreted-text
  role="ref"} of the relevant list, click the `fa-cog`{.interpreted-text
  role="icon"} `(gear)`{.interpreted-text role="guilabel"} icon then
  `fa-trash`{.interpreted-text role="icon"} `Delete`{.interpreted-text
  role="guilabel"}. This deletes the data source of the list from the
  spreadsheet.

## Insert a pivot table {#spreadsheet/insert/pivot-table}

:::: tip
::: title
Tip
:::

Converting an inserted pivot table to a `dynamic pivot table
<work_with_data/dynamic_pivot_tables>`{.interpreted-text role="doc"}
allows you to add, remove, and manipulate dimensions (i.e., columns and
rows) and measures. It is therefore possible to insert a basic pivot
table with minimal configuration, convert it to a dynamic pivot table,
then refine it directly in the spreadsheet.
::::

To insert a pivot table:

1.  With the relevant pivot view open in your database, click
    `Insert in Spreadsheet`{.interpreted-text role="guilabel"}.

2.  In the window that opens, edit the
    `Name of the pivot`{.interpreted-text role="guilabel"} if needed.

    This name is used in the sheet name and in the
    `pivot table properties
    <spreadsheet/insert/pivot-table-properties>`{.interpreted-text
    role="ref"}.

    ![Inserting a pivot table in a spreadsheet](insert/insert-pivot-table.png)

3.  Click `Blank spreadsheet`{.interpreted-text role="guilabel"} to
    create a new spreadsheet, or select in which existing spreadsheet
    the pivot table should be inserted.

    :::: note
    ::: title
    Note
    :::

    When inserting a pivot table into a new spreadsheet, the spreadsheet
    is saved in the **Odoo Documents** app in the
    `fa-hdd-o`{.interpreted-text role="icon"}
    `My Drive`{.interpreted-text role="guilabel"} personal folder.
    ::::

4.  Click `Confirm`{.interpreted-text role="guilabel"}.

The pivot table is inserted into a new sheet in the spreadsheet. The
sheet tab in the bottom bar shows the name of the pivot table followed
by the pivot table ID, e.g., *Sales Analysis by Sales Team (Pivot #1)*.
A panel on the right side of the screen shows the
`pivot table properties
<spreadsheet/insert/pivot-table-properties>`{.interpreted-text
role="ref"}.

:::: tip
::: title
Tip
:::

\- To sever the link between an inserted pivot table and your database,
select the entire pivot table, right-click and select
`fa-clone`{.interpreted-text role="icon"} `Copy`{.interpreted-text
role="guilabel"}, then right-click again and select
`Paste special --> Paste as value`{.interpreted-text
role="menuselection"}. - Do not modify the pivot table ID in the sheet
name, as the inserted pivot table retains this ID for the lifetime of
the spreadsheet. This pivot table ID is used in the `spreadsheet
functions <spreadsheet/insert/pivot-table-functions-static>`{.interpreted-text
role="ref"} that retrieve data from your database.
::::

### Pivot table functions {#spreadsheet/insert/pivot-table-functions-static}

An inserted pivot table that has not been converted to a
`dynamic pivot table
<work_with_data/dynamic_pivot_tables>`{.interpreted-text role="doc"}
uses the following `functions
<work_with_data/functions>`{.interpreted-text role="doc"} to retrieve
the header and field values, respectively:

> ``` text
> =PIVOT.HEADER(pivot_id, [domain_field_name, …], [domain_value, …])
> =PIVOT.VALUE(pivot_id, measure_name, [domain_field_name, …], [domain_value, …])
> ```

The arguments of the functions are as follows:

- \`pivot_id\`: the ID assigned when the pivot table is inserted. The
  first pivot table inserted in a spreadsheet is assigned pivot ID
  [1]{.title-ref}, the second, pivot ID [2]{.title-ref}, etc.
- \`measure_name\`: the technical name of what is being measured,
  followed by the type of aggregation, e.g.,
  [product_uom_qty:sum]{.title-ref}.
- \`domain_field_name\`: the technical name of the field used as a
  dimension, e.g., [user_id]{.title-ref}, or, if the dimension is a time
  period, the technical name of the date field, followed by the time
  period, e.g., [date_order:month]{.title-ref}.
- \`domain_value\`: the ID of the record, or, if the dimension is a time
  period, the date or time period targeted.

:::: tip
::: title
Tip
:::

Clicking on an individual cell displays the related formula, if
relevant, in the formula bar. To display all the formulas of a
spreadsheet at the same time, click `View -->`{.interpreted-text
role="menuselection"} `fa-eye`{.interpreted-text role="icon"}
`Show --> Formulas`{.interpreted-text role="menuselection"} on the menu
bar. The example below shows the functions used to retrieve headers and
values of a static pivot table.

![Functions of a static pivot table](insert/pivot-table-formulas.png)
::::

### Pivot table properties {#spreadsheet/insert/pivot-table-properties}

The pivot table properties appear on the right side of the screen when a
pivot table is inserted. They can be accessed at any time via the
`Data`{.interpreted-text role="guilabel"} menu by clicking the relevant
pivot table, as prefaced by the `oi-view-pivot`{.interpreted-text
role="icon"} `(pivot)`{.interpreted-text role="guilabel"} icon, or by
right-clicking anywhere on the pivot table and clicking
`oi-view-pivot`{.interpreted-text role="icon"}
`See pivot properties`{.interpreted-text role="guilabel"}.

The following pivot table properties are shown, some of which can be
edited:

- `Pivot #`{.interpreted-text role="guilabel"}: the pivot table ID.
  Pivot table IDs are assigned sequentially as additional pivot tables
  are inserted in the spreadsheet.

- `Name`{.interpreted-text role="guilabel"}: the name of the pivot
  table. Edit this if needed. Note that editing the name in the pivot
  table properties does not modify the name shown in the sheet name, and
  vice versa.

- `Model`{.interpreted-text role="guilabel"}: the model from which the
  data has been extracted.

- `Columns`{.interpreted-text role="guilabel"} and
  `Rows`{.interpreted-text role="guilabel"}: dimensions you are using to
  categorize or group data from the model.

- `Measures`{.interpreted-text role="guilabel"}: what you are measuring,
  or analyzing, based on the dimensions you have chosen.

  :::: tip
  ::: title
  Tip
  :::

  If you attempt to make changes to the columns, rows, or measures of a
  pivot table that has just been inserted into a spreadsheet, an error
  appears at the top right of the screen.

  ![Error message when trying to manipulate static pivot table](insert/pivot-table-error.png)

  To be able to manipulate a pivot table\'s properties, convert a static
  pivot table to a
  `dynamic pivot table <spreadsheet/dynamic-pivot-tables/create>`{.interpreted-text
  role="ref"}.
  ::::

- `Domain`{.interpreted-text role="guilabel"}: the rules used to
  determine which records are shown. Click
  `Edit domain <search/custom-filters>`{.interpreted-text role="ref"} to
  add or edit rules.

  :::: note
  ::: title
  Note
  :::

  When
  `global filters <work_with_data/global_filters>`{.interpreted-text
  role="doc"} are used, this domain is combined with the selected values
  of the global filter before the data is loaded into the spreadsheet.
  ::::

To
`duplicate <spreadsheet/insert/pivot-table-duplicate>`{.interpreted-text
role="ref"} or `delete
<spreadsheet/insert/pivot-table-delete>`{.interpreted-text role="ref"} a
pivot table\'s data source, click the `fa-cog`{.interpreted-text
role="icon"} `(gear)`{.interpreted-text role="guilabel"} icon then
`fa-clone`{.interpreted-text role="icon"} `Duplicate`{.interpreted-text
role="guilabel"} or `fa-trash`{.interpreted-text role="icon"}
`Delete`{.interpreted-text role="guilabel"}.

### Manage an inserted pivot table {#spreadsheet/insert/pivot-table-manage}

After a pivot table from an Odoo database has been inserted into an Odoo
spreadsheet, you can:

- `convert it to a dynamic pivot table <spreadsheet/dynamic-pivot-tables/create>`{.interpreted-text
  role="ref"} to be able to manipulate the dimensions and measures
- `duplicate the pivot table <spreadsheet/insert/pivot-table-duplicate>`{.interpreted-text
  role="ref"} to create a new, identical data source
- `delete the pivot table and its underlying data source
  <spreadsheet/insert/pivot-table-delete>`{.interpreted-text role="ref"}

#### Duplicate a pivot table {#spreadsheet/insert/pivot-table-duplicate}

Duplicating a pivot table via the pivot table\'s properties creates an
additional data source. This allows for different manipulations to be
performed on the same data within one spreadsheet.

For example, you can see the same data aggregated by different
dimensions or use `global
filters <work_with_data/global_filters>`{.interpreted-text role="doc"}
to offset the date and create pivot tables that compare the current
period\'s data with a previous period.

To duplicate a pivot table, perform the following steps:

1.  With the
    `pivot table properties <spreadsheet/insert/pivot-table-properties>`{.interpreted-text
    role="ref"} open, click the `fa-cog`{.interpreted-text role="icon"}
    `(gear)`{.interpreted-text role="guilabel"} icon then
    `fa-clone`{.interpreted-text role="icon"}
    `Duplicate`{.interpreted-text role="guilabel"}.

    The duplicated pivot table is automatically inserted into a new
    sheet in the spreadsheet, with the pivot table properties open in
    the right panel.

2.  Edit the `Name`{.interpreted-text role="guilabel"} in the properties
    panel and the sheet tab if needed.

The new data source is assigned the next available pivot table ID. For
example, if no other pivot tables have been inserted in the meantime,
duplicating *Pivot #1* results in the creation of *Pivot #2*.

:::: note
::: title
Note
:::

\- Duplicating an inserted pivot table by copying and pasting it or by
duplicating the sheet does not create a new data source. Any changes
made to the pivot table\'s properties would therefore impact any copies
of the pivot table. - When a pivot table is duplicated, the new pivot
table is by default a `dynamic pivot table
<work_with_data/dynamic_pivot_tables>`{.interpreted-text role="doc"}.
::::

#### Delete a pivot table {#spreadsheet/insert/pivot-table-delete}

To fully delete a pivot table and the underlying data source from a
spreadsheet, perform the following steps in any order:

- Delete the spreadsheet table using your preferred means, e.g., via
  keyboard commands, spreadsheet menus, or by deleting the sheet. This
  deletes the visual representation of the data.
- From the
  `properties panel <spreadsheet/insert/pivot-table-properties>`{.interpreted-text
  role="ref"} of the relevant pivot table, click the
  `fa-cog`{.interpreted-text role="icon"} `(gear)`{.interpreted-text
  role="guilabel"} icon then `fa-trash`{.interpreted-text role="icon"}
  `Delete`{.interpreted-text role="guilabel"}. This deletes the data
  source of the pivot table.

## Insert a chart {#spreadsheet/insert/chart}

To insert a chart from an Odoo database into an Odoo spreadsheet:

1.  With the relevant graph view open in your database, click
    `Insert in Spreadsheet`{.interpreted-text role="guilabel"}.

2.  In the window that opens, edit the
    `Name of the graph`{.interpreted-text role="guilabel"} if needed.

3.  Click `Blank spreadsheet`{.interpreted-text role="guilabel"} to
    create a new spreadsheet, or select in which existing spreadsheet
    the chart should be inserted.

    :::: note
    ::: title
    Note
    :::

    When inserting a chart into a new spreadsheet, the spreadsheet is
    saved in the **Odoo Documents** app in the
    `fa-hdd-o`{.interpreted-text role="icon"}
    `My Drive`{.interpreted-text role="guilabel"} personal folder.
    ::::

4.  Click `Confirm`{.interpreted-text role="guilabel"}.

Charts are inserted on the first sheet of the spreadsheet. A pane on the
right side of the screen shows the
`chart properties <spreadsheet/visualize/customize-charts>`{.interpreted-text
role="ref"}, where various aspects of the chart\'s configuration and
design can be modified.

::: seealso
`Manage charts <spreadsheet/visualize/manage-charts>`{.interpreted-text
role="ref"}
:::

:::: tip
::: title
Tip
:::

Clicking on a data point in a chart opens the relevant list view in the
database. In the example, clicking on `Jessica Childs`{.interpreted-text
role="guilabel"} opens the list view of all sales by this salesperson
that match the domain of the chart.

![A clickable link to an Odoo menu plus clickable data point](insert/clickable-link-chart.png)
::::

## Insert clickable links {#spreadsheet/insert/clickable-links}

Adding links to related or supporting information can make your report
or dashboard more user-friendly and effective.

You can `insert a clickable link from any spreadsheet cell
<spreadsheet/insert/clickable-links-cell>`{.interpreted-text role="ref"}
to:

- an Odoo menu item
- another sheet inside the same spreadsheet
- an external URL

You can
`insert a clickable link from any chart <spreadsheet/insert/clickable-links-chart>`{.interpreted-text
role="ref"} to an Odoo menu item.

:::: note
::: title
Note
:::

\- Clicking a link to a menu item provides the same result as navigating
via the Odoo menu within an app, e.g., the menu item
`Sales/Orders/Quotations`{.interpreted-text role="guilabel"} corresponds
to the default view when navigating to
`Sales --> Orders --> Quotations`{.interpreted-text
role="menuselection"}. - It is also possible to insert a clickable link
to a specific view of a model in a spreadsheet starting from the view
itself. However, as this method inserts each new link in a new sheet, it
is more efficient to create links to specific views starting from the
spreadsheet.
::::

:::: tip
::: title
Tip
:::

Use the middle mouse button or [Ctrl]{.title-ref} + left-click
(Microsoft/Linux), or [Command]{.title-ref} + left-click (Mac OS) to
open clickable links in a new browser tab.
::::

### Insert a clickable link from a cell {#spreadsheet/insert/clickable-links-cell}

To insert a clickable link from a cell:

1.  Click `Insert -->`{.interpreted-text role="menuselection"}
    `fa-link`{.interpreted-text role="icon"} `Link`{.interpreted-text
    role="menuselection"} from the menu bar or right-click on the cell,
    then click `fa-link`{.interpreted-text role="icon"}
    `Insert link`{.interpreted-text role="guilabel"}. Next, depending on
    the desired outcome, perform one of the following actions:
    - Click the `fa-bars`{.interpreted-text role="icon"}
      `(menu)`{.interpreted-text role="guilabel"} icon, then
      `Link an Odoo menu`{.interpreted-text role="guilabel"}. Select the
      relevant menu item from the list or click
      `Search more`{.interpreted-text role="guilabel"} to choose from a
      list of all menu items. Click `Confirm`{.interpreted-text
      role="guilabel"}.
    - Click the `fa-bars`{.interpreted-text role="icon"}
      `(menu)`{.interpreted-text role="guilabel"} icon, then
      `Link sheet`{.interpreted-text role="guilabel"}, then choose the
      relevant sheet from the current spreadsheet.
    - Under `Link`{.interpreted-text role="guilabel"}, type a URL.
2.  Enter or edit the label for the link in the `Text`{.interpreted-text
    role="guilabel"} field.
3.  Click `Confirm`{.interpreted-text role="guilabel"}.

### Insert a clickable link from a chart {#spreadsheet/insert/clickable-links-chart}

To insert a clickable link from a chart to an Odoo menu item:

1.  Hover over the top right of the chart\'s box, then click the
    `fa-bars`{.interpreted-text role="icon"} `(menu)`{.interpreted-text
    role="guilabel"} icon, then `fa-pencil-square-o`{.interpreted-text
    role="icon"} `Edit`{.interpreted-text role="guilabel"}. The chart
    properties appear at the right of the screen.
2.  At the bottom of the `fa-sliders`{.interpreted-text role="icon"}
    `Configuration`{.interpreted-text role="guilabel"} tab of the chart
    properties panel, click under `Link to Odoo menu`{.interpreted-text
    role="guilabel"}, then select a menu.

Hover over the top right of the chart\'s box to see that a new
`fa-external-link`{.interpreted-text role="icon"}
`(external link)`{.interpreted-text role="guilabel"} icon has been
added.

## Insert financial data {#spreadsheet/insert/financial-data}

When building reports and dashboards, it may be useful to include
certain accounting-related data, such as account IDs, credits and debits
for specific accounts, and dates of the start and end of the tax year.

`Odoo-specific spreadsheet functions <spreadsheet/functions/odoo>`{.interpreted-text
role="ref"} allow you to retrieve such accounting data from your
database and insert it into a spreadsheet.




--- SOURCE: productivity/spreadsheet/share_collaborate.md ---

# Share and collaborate

Odoo Spreadsheet offers various features that allow for efficient
real-time collaboration while ensuring the appropriate level of control
and traceability, including:

- `permission-based sharing <spreadsheet/collaboration/access-sharing>`{.interpreted-text
  role="ref"}
- `version history <spreadsheet/get-started/manage-spreadsheets-versioning>`{.interpreted-text
  role="ref"}
- discussions via `comments and the spreadsheet's chatter thread
  <spreadsheet/collaboration/chatter>`{.interpreted-text role="ref"}

## Access and sharing {#spreadsheet/collaboration/access-sharing}

In principle, the rights to access Odoo spreadsheets are handled like
`any other file in the
Documents app <documents/access-rights>`{.interpreted-text role="ref"}.
`Roles and permissions
<spreadsheet/collaboration/roles-permissions>`{.interpreted-text
role="ref"} are either inherited from the folder a spreadsheet is saved
in or controlled at the level of the spreadsheet itself.

However, there are important differences to consider between
`spreadsheets that contain only
static data <spreadsheet/collaboration/static-spreadsheet>`{.interpreted-text
role="ref"} and `spreadsheets that contain
dynamic Odoo data <spreadsheet/collaboration/dynamic-spreadsheet>`{.interpreted-text
role="ref"}, in terms of both access and data visibility.

:::: tip
::: title
Tip
:::

- Access to a folder or spreadsheet can be managed by its owner or any
  user with `Editor`{.interpreted-text role="guilabel"} rights.
- A user with `Viewer`{.interpreted-text role="guilabel"} rights cannot
  share a spreadsheet with a specific user directly, but can copy a link
  to the spreadsheet.
- Any user with access to a spreadsheet can download it as an
  [.xlsx]{.title-ref} file by clicking `File -->`{.interpreted-text
  role="menuselection"} `fa-download`{.interpreted-text role="icon"}
  `Download`{.interpreted-text role="menuselection"} from the menu bar.
  If the spreadsheet contained dynamic data, the values are frozen at
  the moment of download.
::::

### Roles and permissions {#spreadsheet/collaboration/roles-permissions}

Permissions are managed using the following roles:

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  Role     View                           Edit                           Delete                         Download .xlsx                 Share                          Manage roles                   Use comments                   Use chatter
  -------- ------------------------------ ------------------------------ ------------------------------ ------------------------------ ------------------------------ ------------------------------ ------------------------------ ------------------------------
  Owner    `fa-check`{.interpreted-text   `fa-check`{.interpreted-text   `fa-check`{.interpreted-text   `fa-check`{.interpreted-text   `fa-check`{.interpreted-text   `fa-check`{.interpreted-text   `fa-check`{.interpreted-text   `fa-check`{.interpreted-text
           role="icon"}                   role="icon"}                   role="icon"}                   role="icon"}                   role="icon"} with specific     role="icon"} including         role="icon"}                   role="icon"}
                                                                                                                                       people or via link             changing owner                                                

  Editor   `fa-check`{.interpreted-text   `fa-check`{.interpreted-text   `fa-check`{.interpreted-text   `fa-check`{.interpreted-text   `fa-check`{.interpreted-text   `fa-check`{.interpreted-text   `fa-check`{.interpreted-text   `fa-check`{.interpreted-text
           role="icon"}                   role="icon"}                   role="icon"}                   role="icon"}                   role="icon"} with specific     role="icon"} but cannot change role="icon"}                   role="icon"}
                                                                                                                                       people or via link             owner                                                         

  Viewer   `fa-check`{.interpreted-text   `oi-close`{.interpreted-text   `oi-close`{.interpreted-text   `fa-check`{.interpreted-text   `fa-check`{.interpreted-text   `oi-close`{.interpreted-text   `oi-close`{.interpreted-text   `fa-check`{.interpreted-text
           role="icon"}                   role="icon"}                   role="icon"}                   role="icon"}                   role="icon"} only via link     role="icon"}                   role="icon"}                   role="icon"}
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

### Share a static spreadsheet {#spreadsheet/collaboration/static-spreadsheet}

Spreadsheets containing only static data can be shared internally or
externally by the owner of the spreadsheet or any user with
`Editor`{.interpreted-text role="guilabel"} rights.

To do so, click `fa-share-alt`{.interpreted-text role="icon"}
`Share`{.interpreted-text role="guilabel"} in the upper-right corner
above the spreadsheet, then
`configure access as appropriate <documents/access-rights>`{.interpreted-text
role="ref"}.

### Share a dynamic spreadsheet {#spreadsheet/collaboration/dynamic-spreadsheet}

A spreadsheet is considered a *dynamic spreadsheet* if it contains any
of the following:

- formulas that retrieve live data from an Odoo database, e.g., in a
  `list or pivot table that
  has been inserted into the spreadsheet <insert>`{.interpreted-text
  role="doc"}
- a linked
  `data source <spreadsheet/insert/data-sources>`{.interpreted-text
  role="ref"}, even if the corresponding list or pivot table has been
  deleted from the spreadsheet
- links to Odoo menu items

#### Internal sharing

Spreadsheets containing dynamic Odoo data can be shared *with internal
users only* by the owner of the spreadsheet or any user with
`Editor`{.interpreted-text role="guilabel"} rights.

However, having access to a spreadsheet does not necessarily mean an
internal user *sees* all the data in the original spreadsheet. The
visibility of dynamic Odoo data is based on an internal user's access
rights to the model from which the data has been retrieved, and takes
into account any record rules that may restrict access.

::::: important
::: title
Important
:::

Permissions to view data are taken into account when an internal user
opens a spreadsheet, with the spreadsheet only being populated with data
the user is authorized to see.

::: example
A sales manager creates a spreadsheet that includes sales data for all
the salespeople in their team. Users with the permission [Sales / User:
Own Documents Only]{.title-ref} only see data related to their own
sales.
:::
:::::

To share a spreadsheet containing dynamic Odoo data, click
`fa-share-alt`{.interpreted-text role="icon"} `Share`{.interpreted-text
role="guilabel"} in the upper-right corner above the spreadsheet, then
`configure access as appropriate
<documents/access-rights>`{.interpreted-text role="ref"}.

#### External sharing

Spreadsheets containing dynamic Odoo data *cannot be accessed by
external users*.

:::: note
::: title
Note
:::

If an external user attempts to access a dynamic spreadsheet via a link,
an error message is shown.
::::

If a spreadsheet containing Odoo data needs to be shared with an
external user, the owner of the spreadsheet or a user with
`Editor`{.interpreted-text role="guilabel"} rights can create a frozen,
read-only version. In this version, all Odoo formulas are converted to
their value at the moment the frozen version is created, and any links
to Odoo menus are removed.

To create a frozen version of a spreadsheet that contains dynamic Odoo
data, click `File --> Share --> Freeze and share`{.interpreted-text
role="menuselection"} from the menu bar, then `configure access
as appropriate <documents/access-rights>`{.interpreted-text role="ref"}.

:::: tip
::: title
Tip
:::

It is also possible to download a frozen version of a spreadsheet that
contains Odoo data as an [.xlsx]{.title-ref} file by clicking
`File -->`{.interpreted-text role="menuselection"}
`fa-download`{.interpreted-text role="icon"}
`Download`{.interpreted-text role="menuselection"} from the menu bar.
The values of any dynamic data are frozen at the moment of download.
::::

## Comments and chatter {#spreadsheet/collaboration/comments-chatter}

Odoo Spreadsheet offers two ways to communicate with other users who
have access to the same spreadsheet, namely by using:

- `comments <spreadsheet/collaboration/comments>`{.interpreted-text
  role="ref"}
- the spreadsheet\'s
  `chatter thread <spreadsheet/collaboration/chatter>`{.interpreted-text
  role="ref"}

### Use comments in a spreadsheet {#spreadsheet/collaboration/comments}

Comments, which are added to individual spreadsheet cells, are useful
for discussing specific elements of a spreadsheet. Other collaborators
can be notified by typing [@]{.title-ref} followed by their name.

:::: important
::: title
Important
:::

Only the spreadsheet\'s owner or users with `Editor`{.interpreted-text
role="guilabel"} rights can use comments in a spreadsheet; both roles
can perform the same actions. Comments are not visible to users with
`Viewer`{.interpreted-text role="guilabel"} rights.
::::

#### Add or react to comments {#spreadsheet/collaboration/comments-add-react}

To add or react to a comment:

1.  If the comment is:

    - the first comment being added to the cell, right-click the cell
      then click `os-comments`{.interpreted-text role="icon"}
      `Insert comment`{.interpreted-text role="guilabel"} or click
      `Insert -->`{.interpreted-text role="menuselection"}
      `os-comments`{.interpreted-text role="icon"}
      `Insert comment`{.interpreted-text role="menuselection"} from the
      menu bar.
    - a reaction to an existing comment thread on a cell, click on the
      relevant cell or on the comment thread to open the thread.

2.  Type a comment in the text box.

    :::: tip
    ::: title
    Tip
    :::

    - Click the `fa-plus-circle`{.interpreted-text role="icon"} icon,
      then:
      - `Add from Documents`{.interpreted-text role="guilabel"} to add a
        file saved in the Documents app
      - `oi-gif-picker`{.interpreted-text role="icon"}
        `Add GIFS`{.interpreted-text role="guilabel"} to add GIFs (if
        this is enabled in the `General Settings`{.interpreted-text
        role="guilabel"})
    - Click `fa-smile-o`{.interpreted-text role="icon"}
      `(Add Emojis)`{.interpreted-text role="guilabel"} to add emojis.
    - Type [@]{.title-ref} followed by a user\'s name to tag them in the
      comment.
    ::::

3.  Click the `fa-send-o`{.interpreted-text role="icon"}
    `(Log)`{.interpreted-text role="guilabel"} icon or press
    [Enter]{.title-ref} to log the comment.

Click anywhere else in the spreadsheet to close the comment thread.

:::: tip
::: title
Tip
:::

To react to an individual comment with only an emoji, hover over the
comment, click the `oi-smile-add`{.interpreted-text role="icon"}
`(Add a Reaction)`{.interpreted-text role="guilabel"} icon, then select
the desired emoji.
::::

#### View comments {#spreadsheet/collaboration/comments-view}

When a comment has been added to a cell, a small yellow triangle appears
in the top right corner of the cell.

To view a comment thread on a single cell, hover over the cell; click
the cell or the comment thread to open the thread to be able to add a
comment.

To view all comments on a spreadsheet, click
`View -->`{.interpreted-text role="menuselection"}
`os-comments`{.interpreted-text role="icon"}
`All comments`{.interpreted-text role="menuselection"} from the menu
bar. Alternatively, after opening a comment thread, click
`Open all comments`{.interpreted-text role="guilabel"}.

The `Comments`{.interpreted-text role="guilabel"} panel opens on the
right side of the spreadsheet. By default, comment threads for
`All sheets`{.interpreted-text role="guilabel"} of the spreadsheet are
shown, grouped by sheet. To see only the comment threads for the current
sheet, select `This sheet`{.interpreted-text role="guilabel"} in the
`Filter
comments`{.interpreted-text role="guilabel"} field.

Click on a comment thread in the `Comments`{.interpreted-text
role="guilabel"} panel to open it.

#### Edit or delete comments {#spreadsheet/collaboration/comments-edit-delete}

:::: note
::: title
Note
:::

A spreadsheet\'s owner or users with `Editor`{.interpreted-text
role="guilabel"} rights can edit or delete any comment.
::::

To edit a comment:

1.  Hover over the comment, then click the
    `fa-ellipsis-v`{.interpreted-text role="icon"}
    `(ellipsis)`{.interpreted-text role="guilabel"} icon.
2.  Click `fa-pencil`{.interpreted-text role="icon"}
    `Edit`{.interpreted-text role="guilabel"}.
3.  Make the desired changes, then click `Save`{.interpreted-text
    role="guilabel"} or press [Enter]{.title-ref}. To abort the edit,
    click `Cancel`{.interpreted-text role="guilabel"} or press
    [Escape]{.title-ref}.

:::: tip
::: title
Tip
:::

A comment that has been modified has *(edited)* added to the end of the
text.
::::

To delete a comment:

1.  Hover over the comment, then click the
    `fa-ellipsis-v`{.interpreted-text role="icon"}
    `(ellipsis)`{.interpreted-text role="guilabel"} icon.
2.  Click `fa-trash`{.interpreted-text role="icon"}
    `Delete`{.interpreted-text role="guilabel"}.
3.  Click `Confirm`{.interpreted-text role="guilabel"} to confirm the
    deletion.

#### Resolve comment threads {#spreadsheet/collaboration/comments-resolve}

To resolve a comment thread:

1.  Access the `Comments`{.interpreted-text role="guilabel"} panel by
    clicking `View -->`{.interpreted-text role="menuselection"}
    `os-comments`{.interpreted-text role="icon"}
    `All comments`{.interpreted-text role="menuselection"} from the menu
    bar. Alternatively, with a comment thread open, click
    `Open all comments`{.interpreted-text role="guilabel"}.
2.  Click the `fa-ellipsis-v`{.interpreted-text role="icon"}
    `(ellipsis)`{.interpreted-text role="guilabel"} icon for the
    relevant comment thread, then click
    `Resolve this thread`{.interpreted-text role="guilabel"}.

Once resolved, the comment thread is no longer accessible directly on
the spreadsheet, but remains visible in the `Comments`{.interpreted-text
role="guilabel"} panel; resolved threads are identified by a
`fa-check`{.interpreted-text role="icon"} `(check)`{.interpreted-text
role="guilabel"} icon.

To reopen a resolved comment thread, from the
`Comments`{.interpreted-text role="guilabel"} panel, click the
`fa-ellipsis-v`{.interpreted-text role="icon"}
`(ellipsis)`{.interpreted-text role="guilabel"} icon for the relevant
comment thread, then click `Re-open this thread`{.interpreted-text
role="guilabel"}.

### Use a spreadsheet\'s chatter thread {#spreadsheet/collaboration/chatter}

Whereas
`comments <spreadsheet/collaboration/comments>`{.interpreted-text
role="ref"} on specific spreadsheet cells are suited for discussions
about specific elements of a spreadsheet, a spreadsheet's `chatter
thread <../discuss/chatter>`{.interpreted-text role="doc"} allows for a
more general discussion.

To access the chatter thread of a spreadsheet:

1.  With the **Documents** app open, navigate to the folder or section
    where the spreadsheet is saved.
2.  Select the `oi-view-list`{.interpreted-text role="icon"}
    `(List)`{.interpreted-text role="guilabel"} view in the upper-right
    corner.
3.  Select the relevant spreadsheet, then click the
    `fa-info-circle`{.interpreted-text role="icon"}
    `(Info & tags)`{.interpreted-text role="guilabel"} button in the
    upper-right corner next to the view selector. Alternatively, with
    the spreadsheet selected, click the `fa-cog`{.interpreted-text
    role="icon"} `Action`{.interpreted-text role="guilabel"} button,
    then select `fa-info-circle`{.interpreted-text role="icon"}
    `(Info & tags)`{.interpreted-text role="guilabel"}.

The spreadsheet's chatter thread opens on the right of the screen, below
the spreadsheet\'s
`details panel <documents/details-panel>`{.interpreted-text role="ref"}.




--- SOURCE: productivity/spreadsheet/visualize_data/charts.md ---

# Charts

Charts present data visually, making them a user-friendly way to show
patterns, trends, and relationships between data.

:::: tip
::: title
Tip
:::

Charts can be `created manually based on spreadsheet data
<spreadsheet/visualize/create-chart>`{.interpreted-text role="ref"} or
`inserted directly from an Odoo graph view
<spreadsheet/insert/chart>`{.interpreted-text role="ref"}.
::::

## Create a chart {#spreadsheet/visualize/create-chart}

To create a chart manually:

1.  Select the cells containing the data you want to represent using a
    chart.

2.  Click `Insert --> Chart`{.interpreted-text role="menuselection"}
    from the menu bar.

    :::: tip
    ::: title
    Tip
    :::

    Odoo uses the most appropriate
    `chart type <spreadsheet/visualize/chart-types>`{.interpreted-text
    role="ref"} for the selected data; this can be changed in the
    configuration section of the `chart
    properties <spreadsheet/visualize/customize-charts>`{.interpreted-text
    role="ref"}, which opens on the right side of the spreadsheet.
    ::::

3.  Make any desired changes to the configuration or design of the chart
    in the `chart
    properties <spreadsheet/visualize/customize-charts>`{.interpreted-text
    role="ref"}.

## Customize charts {#spreadsheet/visualize/customize-charts}

A chart that has been
`created manually <spreadsheet/visualize/create-chart>`{.interpreted-text
role="ref"} or `inserted
from an Odoo graph view <spreadsheet/insert/chart>`{.interpreted-text
role="ref"} can be further customized via the
`chart properties <spreadsheet/visualize/customize-charts>`{.interpreted-text
role="ref"}.

Here, it is possible to modify various aspects of the chart\'s
configuration and design via the `fa-sliders`{.interpreted-text
role="icon"}
`Configuration <spreadsheet/visualize/charts-configuration>`{.interpreted-text
role="ref"} and `fa-paint-brush`{.interpreted-text role="icon"}
`Design <spreadsheet/visualize/charts-design>`{.interpreted-text
role="ref"} tabs respectively.

:::: tip
::: title
Tip
:::

A chart\'s properties can be accessed at any time, as follows:

- For any chart, whether manually created or inserted from an Odoo view,
  hover over the chart then click the `fa-bars`{.interpreted-text
  role="icon"} `(menu)`{.interpreted-text role="guilabel"} icon and
  click `fa-pencil-square-o`{.interpreted-text role="icon"}
  `Edit`{.interpreted-text role="guilabel"}.
- For a chart inserted from an Odoo graph view, click
  `Data`{.interpreted-text role="guilabel"} on the menu bar then select
  the relevant chart, as prefaced by the
  `fa-bar-chart`{.interpreted-text role="icon"}
  `(chart)`{.interpreted-text role="guilabel"} icon, e.g.,
  `fa-bar-chart`{.interpreted-text role="icon"} *(#1) Sales Analysis*.
::::

### Configuration {#spreadsheet/visualize/charts-configuration}

The `fa-sliders`{.interpreted-text role="icon"}
`Configuration`{.interpreted-text role="guilabel"} tab includes the
following sections:

- `Chart type <spreadsheet/visualize/chart-types>`{.interpreted-text
  role="ref"}: the type of chart. For a chart that has been:

  - manually created, this is by default the chart type suggested by
    Odoo;
  - inserted from an Odoo graph view, this is by default the type of
    chart selected in the graph view before the chart was inserted in
    the spreadsheet.

  To change the chart type, click the dropdown menu to select the
  desired chart type.

- `Domain`{.interpreted-text role="guilabel"}: the rules used to
  determine which records are shown. Click `Edit domain
  <search/custom-filters>`{.interpreted-text role="ref"} to add or edit
  rules.

- `Link to Odoo menu`{.interpreted-text role="guilabel"}: to add a
  `clickable link <spreadsheet/insert/clickable-links>`{.interpreted-text
  role="ref"} from a chart to an Odoo menu item, i.e., a specific view
  of a model.

#### Chart types {#spreadsheet/visualize/chart-types}

When a chart is:

- `created manually <spreadsheet/visualize/create-chart>`{.interpreted-text
  role="ref"}, any of the chart types in the tabs below can be selected;
- `inserted directly from an Odoo graph view <spreadsheet/insert/chart>`{.interpreted-text
  role="ref"}, any chart type except those shown in the
  `Other`{.interpreted-text role="guilabel"} tab can be selected.

::::::::::: tabs
::: tab
Line

![Line chart icon](charts/chart-type-line.png)

`Line`{.interpreted-text role="guilabel"}: best for showing trends or
changes over time, such as sales growth across months or temperature
variations.

![Stacked line chart icon](charts/chart-type-line-stacked.png)

`Stacked Line`{.interpreted-text role="guilabel"}: useful for
visualizing cumulative trends where multiple series contribute to a
total, like revenue by department over time.

![Combo chart icon](charts/chart-type-line-combo.png)

`Combo`{.interpreted-text role="guilabel"}: combines multiple chart
types (e.g., bars and lines) to compare different data types or
highlight key metrics alongside trends.
:::

::: tab
Column

![Column chart icon](charts/chart-type-column.png)

`Column`{.interpreted-text role="guilabel"}: ideal for comparing values
across discrete categories, such as sales per product or revenue by
region.

![Stacked column chart icon](charts/chart-type-column-stacked.png)

`Stacked Column`{.interpreted-text role="guilabel"}: displays
part-to-whole relationships within categories, such as regional
contributions to total sales.
:::

::: tab
Bar

![Bar chart icon](charts/chart-type-bar.png)

`Bar`{.interpreted-text role="guilabel"}: similar to a column chart but
horizontal, making it better for comparing long category names or
datasets.

![Stacked bar chart icon](charts/chart-type-bar-stacked.png)

`Stacked Bar`{.interpreted-text role="guilabel"}: highlights cumulative
contributions across categories, often used in demographic or resource
allocation analysis.
:::

::: tab
Area

![Area chart icon](charts/chart-type-area.png)

`Area`{.interpreted-text role="guilabel"}: similar to a line chart but
fills the area beneath the lines to emphasize magnitude, perfect for
cumulative metrics over time.

![Stacked area chart icon](charts/chart-type-area-stacked.png)

`Stacked Area`{.interpreted-text role="guilabel"}: visualizes the
composition of changes over time, such as market share by product
category.
:::

::: tab
Pie

![Pie chart icon](charts/chart-type-pie.png)

`Pie`{.interpreted-text role="guilabel"}: best for showing proportions
or percentages of a whole, such as market share or budget allocation.

![Doughnut chart icon](charts/chart-type-doughnut.png)

`Doughnut`{.interpreted-text role="guilabel"}: A variation of the pie
chart with a hollow center, offering similar use cases but with a modern
aesthetic.
:::

::: tab
Hierarchical

![Sunburst chart icon](charts/chart-type-sunburst.png)

`Sunburst`{.interpreted-text role="guilabel"}: a variation of the
doughnut chart with hierarchical rings, showcasing part-to-whole
relationships across multiple levels.

![Treemap chart icon](charts/chart-type-treemap.png)

`Treemap`{.interpreted-text role="guilabel"}: a multi-level rectangular
chart that displays hierarchical data through nested rectangles, ideal
for illustrating proportions and categories.
:::

::: tab
Miscellaneous

![Scatter chart icon](charts/chart-type-scatter.png)

`Scatter`{.interpreted-text role="guilabel"}: ideal for analyzing
relationships or correlations between two numerical variables, such as
price vs. quantity sold.

![Waterfall chart icon](charts/chart-type-waterfall.png)

`Waterfall`{.interpreted-text role="guilabel"}: ideal for visualizing
cumulative effects of sequential positive and negative values, such as
profit/loss analysis.

![Population pyramid chart icon](charts/chart-type-population-pyramid.png)

`Population Pyramid`{.interpreted-text role="guilabel"}: a specialized
chart for comparing distributions, often used in demographics, such as
age and gender group analysis.

![Radar chart icon](charts/chart-type-radar.png)

`Radar`{.interpreted-text role="guilabel"}: displays multivariate data
as a polygon on axes radiating from a center, allowing for profile
comparisons across multiple variables.

![Filled radar chart icon](charts/chart-type-filled-radar.png)

`Filled radar`{.interpreted-text role="guilabel"}: fills the area within
the radar chart\'s polygon, emphasizing the overall magnitude of values
across different attributes for comparison.

![Geo chart icon](charts/chart-type-geo.png)

`Geo`{.interpreted-text role="guilabel"}: visualizes data on a map using
color variations to represent values or categories across different
geographical regions.

![Funnel chart icon](charts/chart-type-funnel.png)

`Funnel`{.interpreted-text role="guilabel"}: visualizes data that
progressively decreases over stages of a process, with the option to
display cumulative data for each stage.
:::

::: tab
Other

When creating a chart from spreadsheet data, rather than inserting one
from a graph view, the following chart types are also available:

![Gauge chart icon](charts/chart-type-gauge.png)

`Gauge`{.interpreted-text role="guilabel"}: displays progress toward a
goal or a single key metric, such as performance against a target.

![Scorecard icon](charts/chart-type-scorecard.png)

`Scorecard`{.interpreted-text role="guilabel"}: used to summarize key
performance indicators (KPIs) in a compact format, such as total sales
or conversion rates, and compare to a baseline or a previous value.
:::
:::::::::::

### Design {#spreadsheet/visualize/charts-design}

Depending on the chart type, the `fa-paint-brush`{.interpreted-text
role="icon"} `Design`{.interpreted-text role="guilabel"} tab has one or
more sections.

The `General`{.interpreted-text role="guilabel"} section allows you to
modify the following elements:

- `Background color`{.interpreted-text role="guilabel"}: Add or change
  the background color by clicking on the color dot. Choose one of the
  standard colors or click the `fa-plus`{.interpreted-text role="icon"}
  icon to manually select a custom color.
- `Chart title`{.interpreted-text role="guilabel"}: Edit the chart
  title, if needed. The font formatting, horizontal alignment, font
  size, and color of the title can be modified using the editor.
- `Legend position`{.interpreted-text role="guilabel"}: Change the
  position of the legend or opt to have no legend.
- Enable `Show values`{.interpreted-text role="guilabel"} to add numeric
  values to the data points on the chart.

The `Data Series`{.interpreted-text role="guilabel"} section allows you
to modify the following elements:

- `Series color`{.interpreted-text role="guilabel"}: With the relevant
  data series selected, change the color of the related data points on
  the chart by clicking on the color dot circle. Choose one of the
  standard colors or click the `fa-plus`{.interpreted-text role="icon"}
  icon to manually select a custom color.
- `Series name`{.interpreted-text role="guilabel"}: Edit the name of a
  data series, if needed.
- `Serie type`{.interpreted-text role="guilabel"}: For each data series
  of a `Combo`{.interpreted-text role="guilabel"} chart, determine
  whether the series is shown as a `Bar`{.interpreted-text
  role="guilabel"} or `Line`{.interpreted-text role="guilabel"}.
- `Vertical axis`{.interpreted-text role="guilabel"}: For the selected
  data series of a `Line`{.interpreted-text role="guilabel"},
  `Area`{.interpreted-text role="guilabel"}, or
  `Column`{.interpreted-text role="guilabel"} chart, select whether it
  should be displayed on the `Left`{.interpreted-text role="guilabel"}
  (primary) or `Right`{.interpreted-text role="guilabel"} (secondary)
  vertical axis.
- `Trend line`{.interpreted-text role="guilabel"}: With the relevant
  data series selected, enable `Show trend line`{.interpreted-text
  role="guilabel"} then select the type of trend line from the dropdown;
  the options are `Linear`{.interpreted-text role="guilabel"},
  `Exponential`{.interpreted-text role="guilabel"},
  `Polynomial`{.interpreted-text role="guilabel"},
  `Logarithmic`{.interpreted-text role="guilabel"}, and `Trailing
  moving average`{.interpreted-text role="guilabel"}. The color of the
  trend line can be changed by clicking on the color circle.

The `Axes`{.interpreted-text role="guilabel"} section allows you add a
title to one or both axes of a chart. The font formatting, horizontal
alignment, font size, and color of the title can be modified using the
editor.

Waterfall charts have a dedicated `Waterfall design`{.interpreted-text
role="guilabel"} section.

## Manage charts {#spreadsheet/visualize/manage-charts}

To reposition a chart within the same sheet, select the chart then drag
it to the desired position. Resize a chart by selecting it, then
clicking and dragging the blue markers until the chart is the desired
size.

Hovering over the chart reveals a `fa-bars`{.interpreted-text
role="icon"} `(menu)`{.interpreted-text role="guilabel"} icon in the top
right corner of the chart. Click the menu to reveal the following
options:

- `fa-edit`{.interpreted-text role="icon"} `Edit`{.interpreted-text
  role="guilabel"} to open the `chart properties
  <spreadsheet/visualize/customize-charts>`{.interpreted-text
  role="ref"}, where various aspects of the chart\'s configuration and
  design can be modified.

- `fa-clipboard`{.interpreted-text role="icon"} `Copy`{.interpreted-text
  role="guilabel"} or `os-cut`{.interpreted-text role="icon"}
  `Cut`{.interpreted-text role="guilabel"} to copy or cut a chart with
  the intention of pasting it *within the same spreadsheet*.
  Alternatively, with the chart selected, use the relevant keyboard
  shortcut to copy or cut the chart.

  Paste the chart in the desired location by clicking
  `Edit -->`{.interpreted-text role="menuselection"}
  `os-paste`{.interpreted-text role="icon"} `Paste`{.interpreted-text
  role="menuselection"} from the menu bar or use the relevant keyboard
  shortcut.

  :::: note
  ::: title
  Note
  :::

  For a chart inserted from an Odoo graph view, copying/cutting and
  pasting a chart in this way maintains the
  `link between the chart and your database
  <spreadsheet/insert/data-sources>`{.interpreted-text role="ref"}. The
  data in the pasted chart remains up-to-date, and
  `clicking on a data point <spreadsheet/insert/accessing-data>`{.interpreted-text
  role="ref"} opens the related list view in the database.
  ::::

- `os-copy-as-image`{.interpreted-text role="icon"}
  `Copy as image`{.interpreted-text role="guilabel"} to copy an image of
  a chart to your clipboard with the intention of pasting it *in any
  location within or outside your spreadsheet*.

  Paste the image in the desired location using the paste function of
  the destination program or the relevant keyboard shortcut.

  :::: note
  ::: title
  Note
  :::

  For a chart inserted from an Odoo graph view, copying and pasting a
  static image of a chart implies there is no longer any link between
  the chart and your database.
  ::::

- `fa-download`{.interpreted-text role="icon"}
  `Download`{.interpreted-text role="guilabel"} to download an image of
  the chart as as [.png]{.title-ref} file.

- `fa-trash-o`{.interpreted-text role="icon"} `Delete`{.interpreted-text
  role="guilabel"} to delete a chart from the spreadsheet.
  Alternatively, use your preferred keyboard command to delete a chart.

  :::: note
  ::: title
  Note
  :::

  For a chart inserted from an Odoo graph view, deleting a chart also
  deletes the chart\'s underlying
  `data source <spreadsheet/insert/data-sources>`{.interpreted-text
  role="ref"}.
  ::::




--- SOURCE: productivity/spreadsheet/visualize_data/conditional_formatting.md ---

# Conditional formatting

Conditional formatting applies specific formatting, such as a background
color or font color, to a range of cells that meet one or more defined
criteria, or rules. This allows you to visually highlight important
data, patterns, trends, or anomalies.

:::: note
::: title
Note
:::

When a spreadsheet containing dynamic Odoo data is reopened or
refreshed, any conditional formatting that has been defined is updated
to reflect any changes to the data.
::::

Different types of conditional formatting are possible:

- `Single color <spreadsheet/conditional-formatting/single-color>`{.interpreted-text
  role="ref"}: changes the color of the cell's background or font, or
  changes the font formatting if cell values meet the defined
  conditions, e.g., changes a cell to red if an invoice is overdue.
- `Color scale <spreadsheet/conditional-formatting/color-scale>`{.interpreted-text
  role="ref"}: uses color intensity to represent smaller and larger
  values on a two- or three-color scale, e.g., shows sales performance
  using increasingly dark tones of the same color.
- `Icon set <spreadsheet/conditional-formatting/icon-set>`{.interpreted-text
  role="ref"}: uses sets of arrows, smileys, or dots in green, orange,
  and red to visually show how cell values in a range compare to certain
  defined values, e.g., a green smiley to represent sales performance
  above a certain amount.
- `Data bar <spreadsheet/conditional-formatting/data-bar>`{.interpreted-text
  role="ref"}: inserts colored bars inside a cell to show how a value
  compares to the value of other cells in the defined range, e.g., the
  customer generating the highest sales has the longest bar, with bars
  of decreasing length for customers generating lower sales.

To add conditional formatting to a range of cells:

1.  Select the cells the formatting rule should apply to.

2.  Click `Format --> Conditional formatting`{.interpreted-text
    role="menuselection"} from the menu bar.

3.  In the `Conditional formatting`{.interpreted-text role="guilabel"}
    panel that opens to the right of the spreadsheet, click
    `+ Add another rule`{.interpreted-text role="guilabel"}.

    :::: tip
    ::: title
    Tip
    :::

    Click `Add range`{.interpreted-text role="guilabel"} to select
    additional ranges of cells if needed.
    ::::

4.  Select the type of `Format rules`{.interpreted-text
    role="guilabel"}, then enter the information required depending on
    the rule selected.

## Single color {#spreadsheet/conditional-formatting/single-color}

With the range selected and `Single color`{.interpreted-text
role="guilabel"} selected as the rule type:

1.  Define the conditions to be met for the formatting to be applied by
    choosing the desired value from the
    `Format cells if …`{.interpreted-text role="guilabel"} dropdown.
2.  Define the `Formatting style`{.interpreted-text role="guilabel"} to
    be applied by selecting the appropriate font formatting, font color,
    and/or background color.
3.  Click `Save`{.interpreted-text role="guilabel"}.

::: example
In the example, single-color conditional formatting changes the
background color of cells containing the value [FALSE]{.title-ref} to
red, showing at a glance which eLearning courses are not yet published.

![Single-color conditional formatting showing cells containing \'False\' colored red](conditional_formatting/single-color.png)
:::

## Color scale {#spreadsheet/conditional-formatting/color-scale}

With the range selected and `Color scale`{.interpreted-text
role="guilabel"} selected as the rule type:

1.  Define what is used as the `Minpoint`{.interpreted-text
    role="guilabel"}, i.e., the lowest value, and the
    `MaxPoint`{.interpreted-text role="guilabel"}, i.e., the highest
    value, by selecting the appropriate category from the dropdown.
2.  Optionally, to create a three-color scale, add a
    `MidPoint`{.interpreted-text role="guilabel"}, i.e., the middle
    value.
3.  Define the color range by choosing a color for the lowest value,
    i.e., the `Minpoint`{.interpreted-text role="guilabel"}, and the
    highest value, i.e., the `MaxPoint`{.interpreted-text
    role="guilabel"}. For a three-color scale, also choose a color for
    the `MidPoint`{.interpreted-text role="guilabel"}.
4.  Click `Save`{.interpreted-text role="guilabel"}.

::: example
In the example, sales performance by salesperson is shown using a
two-color scale, with white representing the lowest value, and
increasing amounts intensifying in color towards the selected green
color.

![Color scale conditional formatting showing sales performance by salesperson](conditional_formatting/color-scale.png)

Adding a `Midpoint`{.interpreted-text role="guilabel"}, with a
corresponding color, allows you to highlight performance in relation to
a defined target or neutral value, e.g., below or above a target %, or
to distinguish between positive or negative values.
:::

## Icon set {#spreadsheet/conditional-formatting/icon-set}

With the range selected and `Icon set`{.interpreted-text
role="guilabel"} selected as the rule type:

1.  Click on the set of `Icons`{.interpreted-text role="guilabel"} to
    use.

2.  For the first and second icons:

    - enter the value that represents the *lower* threshold for the icon
    - indicate whether the cell value must be [\>]{.title-ref}
      `(greater than)`{.interpreted-text role="guilabel"} or
      [≥]{.title-ref} `(greater than or equal to)`{.interpreted-text
      role="guilabel"} the threshold value
    - define whether the threshold value is a `Number`{.interpreted-text
      role="guilabel"}, `Percentage`{.interpreted-text role="guilabel"},
      `Percentile`{.interpreted-text role="guilabel"} or
      `Formula`{.interpreted-text role="guilabel"}

    The third icon is added to all cells whose values are below the
    threshold for the second icon.

    :::: tip
    ::: title
    Tip
    :::

    Click `Reverse icons`{.interpreted-text role="guilabel"} to reverse
    the order of the icons.
    ::::

3.  Click `Save`{.interpreted-text role="guilabel"}.

::: example
In the example, sales performance by salesperson is shown using a
three-scale set of colored dots:

- A **green** dot represents high performance, and is added to total
  sales amounts *greater than or equal to* \$50,000.
- An **orange** dot represents average performance, and is added to
  total sales amounts *greater than* \$25,000 (but less than \$50,000 as
  this is the lower threshold for the green dot).
- A **red** dot represents low performance, and is added to all other
  amounts (i.e., amounts below below \$25,000 as this is the lower
  threshold for the orange dot).

![Icon set conditional formatting applied to sales amounts](conditional_formatting/icon-set.png)
:::

## Data bar {#spreadsheet/conditional-formatting/data-bar}

:::: note
::: title
Note
:::

Unlike other conditional formatting rules in Odoo Spreadsheet, this rule
allows for the formatting to be applied either on the cells containing
the values the rule is based on, or on a corresponding range of cells,
e.g., on a column containing text. The
`Apply to range`{.interpreted-text role="guilabel"} determines *where
the formatting is shown*, while the `Range of values`{.interpreted-text
role="guilabel"} determines which cells the rule is based on.
::::

With `Data bar`{.interpreted-text role="guilabel"} selected as the rule
type:

1.  Click below `Apply to range`{.interpreted-text role="guilabel"},
    then, in the spreadsheet, select the range of cells *where the data
    bars should appear*. Click `Confirm`{.interpreted-text
    role="guilabel"}.
2.  Click on the `Color`{.interpreted-text role="guilabel"} dot to
    select the color of the data bars.
3.  Click below `Range of values`{.interpreted-text role="guilabel"},
    then, in the spreadsheet, select the range of cells *containing the
    values the rule should be based on*. Click
    `Confirm`{.interpreted-text role="guilabel"}.
4.  Click `Save`{.interpreted-text role="guilabel"}.

::: example
In the example, the rule is based on the [Total sales]{.title-ref}
amounts in column B (with the `Range of values`{.interpreted-text
role="guilabel"} being [B2:B14]{.title-ref}), while the formatting is
applied on the [Salesperson]{.title-ref} names in column A (with the
`Apply to range`{.interpreted-text role="guilabel"} being
[A2:A14]{.title-ref}).

![Data bar conditional formatting](conditional_formatting/data-bar.png)
:::




--- SOURCE: productivity/spreadsheet/visualize_data.md ---

nosearch

:   

# Present and visualize data

::: {.toctree titlesonly=""}
visualize_data/charts visualize_data/conditional_formatting
:::




--- SOURCE: productivity/spreadsheet/work_with_data/dynamic_pivot_tables.md ---

# Dynamic pivot tables

When a pivot view from an Odoo database is inserted in a spreadsheet, it
is by default a static pivot table. Each cell in a static pivot table
contains an `Odoo-specific function
<spreadsheet/insert/pivot-table-functions-static>`{.interpreted-text
role="ref"} that retrieves data from your database.

![Function of static pivot table cell](dynamic_pivot_tables/pivot-function-static.png)

When the corresponding data in your database changes, e.g., the sales
related to a given quarter or an individual salesperson, the cells of
your static pivot table are updated.

However, a static pivot table does not expand automatically to
accommodate new data, e.g., sales data for a new quarter or for a newly
hired salesperson. Neither is it possible to add or manipulate
dimensions (i.e., columns or rows) or measures via the pivot table
properties.

:::: note
::: title
Note
:::

If you attempt to update or manipulate the properties of a pivot table
that has just been inserted into a spreadsheet, an error message appears
in the top right corner of the screen:

![Error message when trying to manipulate static pivot table](dynamic_pivot_tables/pivot-table-error.png)
::::

To have more flexibility in how you can manipulate your pivot table, you
can `create a dynamic
pivot table <spreadsheet/dynamic-pivot-tables/create>`{.interpreted-text
role="ref"} from a static pivot table.

## Create a dynamic pivot table {#spreadsheet/dynamic-pivot-tables/create}

There are two main ways to create a dynamic pivot table from a static
pivot table:

- **Duplicate the static pivot table from the pivot table properties**:
  `Open the pivot table
  properties <spreadsheet/insert/pivot-table-properties>`{.interpreted-text
  role="ref"}, click the `fa-cog`{.interpreted-text role="icon"}
  (`gear`{.interpreted-text role="guilabel"}) icon at the top right of
  the pane, then click `fa-clone`{.interpreted-text role="icon"}
  `Duplicate`{.interpreted-text role="guilabel"}.

  A new data source is created and a dynamic version of the pivot table
  is inserted into a new sheet. The dynamic pivot table has the same
  styling as the original pivot table.

  :::: note
  ::: title
  Note
  :::

  When you use this method, your new dynamic pivot table gets the next
  available pivot ID. This means you can create multiple pivot views
  associated with the same model, but with distinct settings, groupings,
  or calculations.
  ::::

- **Re-insert the dynamic pivot table from the Data menu**: On the sheet
  that contains your static pivot table, position your cursor in an
  empty cell. Click `Data -->`{.interpreted-text role="menuselection"}
  `os-insert-pivot`{.interpreted-text role="icon"}
  `Re-insert dynamic pivot`{.interpreted-text role="menuselection"} from
  the menu bar, then select the relevant pivot table.

  A new, dynamic pivot table appears, with the same styling as the
  original pivot table.

  :::: note
  ::: title
  Note
  :::

  When you use this method, your static and dynamic pivot share the same
  data source, and, consequently, the same pivot ID. To avoid confusion,
  delete the original static pivot table.
  ::::

:::: tip
::: title
Tip
:::

It is also possible to directly enter the `function
<spreadsheet/dynamic-pivot-tables/functions>`{.interpreted-text
role="ref"} of the dynamic pivot table in an empty cell. However, with
this method, the table styling needs to be re-applied manually.
::::

### Dynamic pivot table functions {#spreadsheet/dynamic-pivot-tables/functions}

Instead of each cell containing a unique function that retrieves data
from your database, as in a
`static pivot table <spreadsheet/insert/pivot-table-functions-static>`{.interpreted-text
role="ref"}, a dynamic pivot table has a single function:

``` text
=PIVOT(pivot_id, [row_count], [include_total], [include_column_titles], [column_count] )
```

The arguments of the function are as follows:

- \`pivot_id\`: the ID assigned when the pivot table is inserted. The
  first pivot table inserted in a spreadsheet is assigned pivot ID
  [1]{.title-ref}, the second, pivot ID [2]{.title-ref}, etc.
- [row_count]{.title-ref} and \`column count\`: the number of rows and
  columns respectively.
- [include_total]{.title-ref} and \`include_column_titles\`: values of
  [0]{.title-ref} remove the total and column titles respectively.

This is an array function, which allows the pivot table to expand
automatically to accommodate the results of the function.

The top-left cell contains the editable function, while clicking on any
other cell reveals this formula greyed out.

![Array function of a dynamic pivot table](dynamic_pivot_tables/pivot-function-dynamic.png)

:::: tip
::: title
Tip
:::

If necessary, you can update the function of a dynamic pivot table to
remove elements like the total or column titles.

With the function open in the formula bar or the top-left cell of the
pivot table, position your cursor after the pivot ID then type
[,]{.title-ref} to advance to the optional field you want to modify. In
the example below, adding the value [0]{.title-ref} for
[\[include_total\]]{.title-ref} removes both the row total and column
total from the pivot table.

![Modifying the function of a dynamic pivot table](dynamic_pivot_tables/modify-function.png)
::::

## Manipulate a dynamic pivot table {#spreadsheet/dynamic-pivot-tables/manipulate}

To manipulate data in a dynamic pivot table,
`open the pivot table properties
<spreadsheet/insert/pivot-table-properties>`{.interpreted-text
role="ref"}.

The following options are available by clicking the
`fa-cog`{.interpreted-text role="icon"} (`gear`{.interpreted-text
role="guilabel"}) icon:

- `fa-exchange`{.interpreted-text role="icon"}
  `Flip axes`{.interpreted-text role="guilabel"}: to move all the
  dimensions represented in columns to rows and vice versa.

  :::: tip
  ::: title
  Tip
  :::

  Flipping the axes presents the data from a different perspective,
  possibly bringing new insights. However, depending on the volume of
  data, it can result in #SPILL errors. This happens when a formula
  tries to output a range of values, but something is blocking those
  cells, such as other data, merged cells, or the boundaries of the
  current sheet.

  Hovering over the cell containing `#SPILL`{.interpreted-text
  role="guilabel"} details the error.
  ::::

- `fa-clone`{.interpreted-text role="icon"}
  `Duplicate`{.interpreted-text role="guilabel"}: to duplicate the
  dynamic pivot table and create a new data source with distinct
  properties.

- `fa-trash`{.interpreted-text role="icon"} `Delete`{.interpreted-text
  role="guilabel"}: to delete the data source of the dynamic pivot
  table.

  :::: note
  ::: title
  Note
  :::

  Deleting the data source of a pivot table does not delete the visual
  representation of the data. Delete the table from the spreadsheet
  using your preferred means, e.g., via keyboard commands, spreadsheet
  menus, or by deleting the sheet.
  ::::

### Dimensions {#spreadsheet/dynamic-pivot-tables/manipulate-dimensions}

The dimensions of the pivot table, i.e., how the data is grouped, are
placed in `Columns`{.interpreted-text role="guilabel"} and
`Rows`{.interpreted-text role="guilabel"} according to how they appeared
in the pivot view in your database, i.e., before the pivot table was
inserted in the spreadsheet.

You can:

- add new dimensions by clicking `Add`{.interpreted-text
  role="guilabel"}
- delete existing dimensions by clicking the
  `fa-trash`{.interpreted-text role="icon"} `(delete)`{.interpreted-text
  role="guilabel"} icon on the relevant dimension
- change the order in which dimensions are displayed in
  `Columns`{.interpreted-text role="guilabel"} or
  `Rows`{.interpreted-text role="guilabel"} by clicking then dragging
  the dimension to the desired position within its respective section
- change the axis on which a dimension is shown by clicking then
  dragging the dimension from `Columns`{.interpreted-text
  role="guilabel"} to `Rows`{.interpreted-text role="guilabel"} or vice
  versa
- change how a dimension\'s values are ordered by selecting
  `Ascending`{.interpreted-text role="guilabel"},
  `Descending`{.interpreted-text role="guilabel"}, or
  `Unsorted`{.interpreted-text role="guilabel"} in the
  `Order by`{.interpreted-text role="guilabel"} field
- for date- or time-based dimensions, select the desired
  `Granularity`{.interpreted-text role="guilabel"} from the options in
  the dropdown menu

### Measures {#spreadsheet/dynamic-pivot-tables/manipulate-measures}

The measures of your pivot table, i.e., what you are measuring, or
analyzing, based on the dimensions you have chosen, are listed in the
order they appeared in the pivot view in your database.

You can:

- add new measures, including `calculated measures
  <spreadsheet/dynamic-pivot-tables/manipulate-measures-calculated-measures>`{.interpreted-text
  role="ref"}, by clicking `Add`{.interpreted-text role="guilabel"}
- hide (`fa-eye`{.interpreted-text role="icon"}), show
  (`fa-eye-slash`{.interpreted-text role="icon"}), or delete
  (`fa-trash`{.interpreted-text role="icon"}) existing measures
- edit the name of existing measures by clicking on the measure\'s name
- change the order in which measures are displayed by clicking then
  dragging the measure to the desired position
- change how measures are displayed by clicking the
  `fa-cog`{.interpreted-text role="icon"} `(gear)`{.interpreted-text
  role="guilabel"} icon, then selecting the desired option from the
  dropdown menu, e.g., `% of grand total`{.interpreted-text
  role="guilabel"} or `Rank smallest to largest`{.interpreted-text
  role="guilabel"}. The pivot table data updates dynamically as
  different options are selected.
- choose how measures are aggregated, e.g., by `Sum`{.interpreted-text
  role="guilabel"}, `Average`{.interpreted-text role="guilabel"},
  `Minimum`{.interpreted-text role="guilabel"}

:::: tip
::: title
Tip
:::

To sort the values of a dynamic pivot table by measure for a specific
dimension, right-click any pivot table value, then click
`os-sort-range`{.interpreted-text role="icon"}
`Sort pivot`{.interpreted-text role="guilabel"} and select
`Ascending`{.interpreted-text role="guilabel"} or
`Descending`{.interpreted-text role="guilabel"} from the dropdown. To
return to the default order, follow the same steps then select
`No sorting`{.interpreted-text role="guilabel"} from the dropdown.
::::

#### Calculated measures {#spreadsheet/dynamic-pivot-tables/manipulate-measures-calculated-measures}

It is possible to add calculated measures if the desired measure did not
exist in the original pivot view. For example, a calculated measure
could be added to show the average revenue per order or the profit
margin per product.

To add a calculated measure:

1.  From the `Measures`{.interpreted-text role="guilabel"} section of
    the pivot table properties, click `Add`{.interpreted-text
    role="guilabel"}.

2.  Below the scrollable list, click `os-formula`{.interpreted-text
    role="icon"} `Add calculated measure`{.interpreted-text
    role="guilabel"}.

3.  Rename the calculated measure by clicking on the name and typing.

4.  Click on the line starting with [=]{.title-ref} and enter the
    formula.

    ::: example
    In the below example, the average revenue per order is added by
    dividing the sum of the sales by the number of orders.

    ![Formula for a calculated measure](dynamic_pivot_tables/calculated-measure.png)
    :::

5.  Choose how the measure should be aggregated by selecting a value
    from the dropdown.

:::: tip
::: title
Tip
:::

There are advantages to using a static pivot table, for example, being
able to see the functions behind individual cells. To have this
possibility, select the relevant portion of your dynamic pivot table,
copy it, then paste it into an empty part of the sheet. Click on any
pasted cell to see the
`Odoo function <spreadsheet/functions/odoo>`{.interpreted-text
role="ref"} used to retrieve the data.
::::




--- SOURCE: productivity/spreadsheet/work_with_data/functions.md ---

# Functions

**Odoo Spreadsheet** supports formulas and functions found in most
spreadsheet solutions. This page presents the available functions by
category. Odoo-specific functions are included both in the relevant
category and in a dedicated
`Odoo <spreadsheet/functions/odoo>`{.interpreted-text role="ref"}
category:

- `Array <spreadsheet/functions/array>`{.interpreted-text role="ref"}
- `Database <spreadsheet/functions/database>`{.interpreted-text
  role="ref"}
- `Date <spreadsheet/functions/date>`{.interpreted-text role="ref"}
- `Engineering <spreadsheet/functions/engineering>`{.interpreted-text
  role="ref"}
- `Filter <spreadsheet/functions/filter>`{.interpreted-text role="ref"}
- `Financial <spreadsheet/functions/financial>`{.interpreted-text
  role="ref"}
- `Info <spreadsheet/functions/info>`{.interpreted-text role="ref"}
- `Logical <spreadsheet/functions/logical>`{.interpreted-text
  role="ref"}
- `Lookup <spreadsheet/functions/lookup>`{.interpreted-text role="ref"}
- `Math <spreadsheet/functions/math>`{.interpreted-text role="ref"}
- `Operators <spreadsheet/functions/operators>`{.interpreted-text
  role="ref"}
- `Parser <spreadsheet/functions/parser>`{.interpreted-text role="ref"}
- `Statistical <spreadsheet/functions/statistical>`{.interpreted-text
  role="ref"}
- `Text <spreadsheet/functions/text>`{.interpreted-text role="ref"}
- `Web <spreadsheet/functions/web>`{.interpreted-text role="ref"}
- `Odoo-specific functions <spreadsheet/functions/odoo>`{.interpreted-text
  role="ref"}

:::: note
::: title
Note
:::

Formulas containing functions that are not compatible with Excel are
replaced by their evaluated result when exporting a spreadsheet.
::::

## Array {#spreadsheet/functions/array}

  Name and arguments                               Description or link
  ------------------------------------------------ ---------------------------------------------------------------------------------------------------------------------------
  ARRAY.CONSTRAIN(input_range, rows, columns)      Returns a result array constrained to a specific width and height (not compatible with Excel)
  CHOOSECOLS(array, col_num, \[col_num2, \...\])   [Excel CHOOSECOLS article](https://support.microsoft.com/office/choosecols-function-bf117976-2722-4466-9b9a-1c01ed9aebff)
  CHOOSEROWS(array, row_num, \[row_num2, \...\])   [Excel CHOOSEROWS article](https://support.microsoft.com/office/chooserows-function-51ace882-9bab-4a44-9625-7274ef7507a3)
  EXPAND(array, rows, \[columns\], \[pad_with\])   [Excel EXPAND article](https://support.microsoft.com/office/expand-function-7433fba5-4ad1-41da-a904-d5d95808bc38)
  FLATTEN(range, \[range2, \...\])                 Flattens all the values from one or more ranges into a single column (not compatible with Excel)
  FREQUENCY(data, classes)                         [Excel FREQUENCY article](https://support.microsoft.com/office/frequency-function-44e3be2b-eca0-42cd-a3f7-fd9ea898fdb9)
  HSTACK(range1, \[range2, \...\])                 [Excel HSTACK article](https://support.microsoft.com/office/hstack-function-98c4ab76-10fe-4b4f-8d5f-af1c125fe8c2)
  MDETERM(square_matrix)                           [Excel MDETERM article](https://support.microsoft.com/office/mdeterm-function-e7bfa857-3834-422b-b871-0ffd03717020)
  MINVERSE(square_matrix)                          [Excel MINVERSE article](https://support.microsoft.com/office/minverse-function-11f55086-adde-4c9f-8eb9-59da2d72efc6)
  MMULT(matrix1, matrix2)                          [Excel MMULT article](https://support.microsoft.com/office/mmult-function-40593ed7-a3cd-4b6b-b9a3-e4ad3c7245eb)
  SUMPRODUCT(range1, \[range2, \...\])             [Excel SUMPRODUCT article](https://support.microsoft.com/office/sumproduct-function-16753e75-9f68-4874-94ac-4d2145a2fd2e)
  SUMX2MY2(array_x, array_y)                       [Excel SUMX2MY2 article](https://support.microsoft.com/office/sumx2my2-function-9e599cc5-5399-48e9-a5e0-e37812dfa3e9)
  SUMX2PY2(array_x, array_y)                       [Excel SUMX2PY2 article](https://support.microsoft.com/office/sumx2py2-function-826b60b4-0aa2-4e5e-81d2-be704d3d786f)
  SUMXMY2(array_x, array_y)                        [Excel SUMXMY2 article](https://support.microsoft.com/office/sumxmy2-function-9d144ac1-4d79-43de-b524-e2ecee23b299)
  TOCOL(array, \[ignore\], \[scan_by_column\])     [Excel TOCOL article](https://support.microsoft.com/office/tocol-function-22839d9b-0b55-4fc1-b4e6-2761f8f122ed)
  TOROW(array, \[ignore\], \[scan_by_column\])     [Excel TOROW article](https://support.microsoft.com/office/torow-function-b90d0964-a7d9-44b7-816b-ffa5c2fe2289)
  TRANSPOSE(range)                                 [Excel TRANSPOSE article](https://support.microsoft.com/office/transpose-function-ed039415-ed8a-4a81-93e9-4b6dfac76027)
  VSTACK(range1, \[range2, \...\])                 [Excel VSTACK article](https://support.microsoft.com/office/vstack-function-a4b86897-be0f-48fc-adca-fcc10d795a9c)
  WRAPCOLS(range, wrap_count, \[pad_with\])        [Excel WRAPCOLS article](https://support.microsoft.com/office/wrapcols-function-d038b05a-57b7-4ee0-be94-ded0792511e2)
  WRAPROWS(range, wrap_count, \[pad_with\])        [Excel WRAPROWS article](https://support.microsoft.com/office/wraprows-function-796825f3-975a-4cee-9c84-1bbddf60ade0)

## Database {#spreadsheet/functions/database}

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

## Date {#spreadsheet/functions/date}

  Name and arguments                                                  Description or link
  ------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------
  DATE(year, month, day)                                              [Excel DATE article](https://support.microsoft.com/office/date-function-e36c0c8c-4104-49da-ab83-82328b832349)
  DATEDIF(start_date, end_date, unit)                                 [Excel DATEDIF article](https://support.microsoft.com/office/datedif-function-25dba1a4-2812-480b-84dd-8b32a451b35c)
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
  MONTH.END(date)                                                     Last day of the month following a date (not compatible with Excel)
  MONTH.START(date)                                                   First day of the month preceding a date (not compatible with Excel)
  NETWORKDAYS(start_date, end_date, \[holidays\])                     [Excel NETWORKDAYS article](https://support.microsoft.com/office/networkdays-function-48e717bf-a7a3-495f-969e-5005e3eb18e7)
  NETWORKDAYS.INTL(start_date, end_date, \[weekend\], \[holidays\])   [Excel NETWORKDAYS.INTL article](https://support.microsoft.com/office/networkdays-intl-function-a9b26239-4f20-46a1-9ab8-4e925bfd5e28)
  NOW()                                                               [Excel NOW article](https://support.microsoft.com/office/now-function-3337fd29-145a-4347-b2e6-20c904739c46)
  QUARTER(date)                                                       Quarter of the year a specific date falls in (not compatible with Excel)
  QUARTER.END(date)                                                   Last day of the quarter of the year a specific date falls in (not compatible with Excel)
  QUARTER.START(date)                                                 First day of the quarter of the year a specific date falls in (not compatible with Excel)
  SECOND(time)                                                        [Excel SECOND article](https://support.microsoft.com/office/second-function-740d1cfc-553c-4099-b668-80eaa24e8af1)
  TIME(hour, minute, second)                                          [Excel TIME article](https://support.microsoft.com/office/time-function-9a5aff99-8f7d-4611-845e-747d0b8d5457)
  TIMEVALUE(time_string)                                              [Excel TIMEVALUE article](https://support.microsoft.com/office/timevalue-function-0b615c12-33d8-4431-bf3d-f3eb6d186645)
  TODAY()                                                             [Excel TODAY article](https://support.microsoft.com/office/today-function-5eb3078d-a82c-4736-8930-2f51a028fdd9)
  WEEKDAY(date, \[type\])                                             [Excel WEEKDAY article](https://support.microsoft.com/office/weekday-function-60e44483-2ed1-439f-8bd0-e404c190949a)
  WEEKNUM(date, \[type\])                                             [Excel WEEKNUM article](https://support.microsoft.com/office/weeknum-function-e5c43a03-b4ab-426c-b411-b18c13c75340)
  WORKDAY(start_date, num_days, \[holidays\])                         [Excel WORKDAY article](https://support.microsoft.com/office/workday-function-f764a5b7-05fc-4494-9486-60d494efbf33)
  WORKDAY.INTL(start_date, num_days, \[weekend\], \[holidays\])       [Excel WORKDAY.INTL article](https://support.microsoft.com/office/workday-intl-function-a378391c-9ba7-4678-8a39-39611a9bf81d)
  YEAR(date)                                                          [Excel YEAR article](https://support.microsoft.com/office/year-function-c64f017a-1354-490d-981f-578e8ec8d3b9)
  YEAR.END(date)                                                      Last day of the year a specific date falls in (not compatible with Excel)
  YEAR.START(date)                                                    First day of the year a specific date falls in (not compatible with Excel)
  YEARFRAC(start_date, end_date, \[day_count_convention\])            Exact number of years between two dates (not compatible with Excel)

## Engineering {#spreadsheet/functions/engineering}

  Name and arguments            Description or link
  ----------------------------- -----------------------------------------------------------------------------------------------------------------
  DELTA(number1, \[number2\])   [Excel DELTA article](https://support.microsoft.com/office/delta-function-2f763672-c959-4e07-ac33-fe03220ba432)

## Filter {#spreadsheet/functions/filter}

  Name and arguments                                           Description or link
  ------------------------------------------------------------ -------------------------------------------------------------------------------------------------------------------
  FILTER(range, condition1, \[condition2, \...\])              [Excel FILTER article](https://support.microsoft.com/office/filter-function-f4f7cb66-82eb-4767-8f7c-4877ad80c759)
  ODOO.FILTER.VALUE(filter_name)                               Returns the current value of a spreadsheet filter (not compatible with Excel)
  SORT(range, \[sort_column, \...\], \[is_ascending, \...\])   [Excel SORT article](https://support.microsoft.com/office/sort-function-22f63bd0-ccc8-492f-953d-c20e8e44b86c)
  UNIQUE(range, \[by_column\], \[exactly_once\])               [Excel UNIQUE article](https://support.microsoft.com/office/unique-function-c5ab87fd-30a3-4ce9-9d1a-40204fb85e1e)

## Financial {#spreadsheet/functions/financial}

  Name and arguments                                                                                                       Description or link
  ------------------------------------------------------------------------------------------------------------------------ -------------------------------------------------------------------------------------------------------------------------------------------------
  ACCRINTM(issue, maturity, rate, redemption, \[day_count_convention\])                                                    [Excel ACCRINTM article](https://support.microsoft.com/office/accrintm-function-f62f01f9-5754-4cc4-805b-0e70199328a7)
  AMORLINC(cost, purchase_date, first_period_end, salvage, period, rate, \[day_count_convention\])                         [Excel AMORLINC article](https://support.microsoft.com/office/amorlinc-function-7d417b45-f7f5-4dba-a0a5-3451a81079a8)
  COUPDAYBS(settlement, maturity, frequency, \[day_count_convention\])                                                     [Excel COUPDAYBS article](https://support.microsoft.com/office/coupdaybs-function-eb9a8dfb-2fb2-4c61-8e5d-690b320cf872)
  COUPDAYS(settlement, maturity, frequency, \[day_count_convention\])                                                      [Excel COUPDAYS article](https://support.microsoft.com/office/coupdays-function-cc64380b-315b-4e7b-950c-b30b0a76f671)
  COUPDAYSNC(settlement, maturity, frequency, \[day_count_convention\])                                                    [Excel COUPDAYSNC article](https://support.microsoft.com/office/coupdaysnc-function-5ab3f0b2-029f-4a8b-bb65-47d525eea547)
  COUPNCD(settlement, maturity, frequency, \[day_count_convention\])                                                       [Excel COUPNCD article](https://support.microsoft.com/office/coupncd-function-fd962fef-506b-4d9d-8590-16df5393691f)
  COUPNUM(settlement, maturity, frequency, \[day_count_convention\])                                                       [Excel COUPNUM article](https://support.microsoft.com/office/coupnum-function-a90af57b-de53-4969-9c99-dd6139db2522)
  COUPPCD(settlement, maturity, frequency, \[day_count_convention\])                                                       [Excel COUPPCD article](https://support.microsoft.com/office/couppcd-function-2eb50473-6ee9-4052-a206-77a9a385d5b3)
  CUMIPMT(rate, number_of_periods, present_value, first_period, last_period, \[end_or_beginning\])                         [Excel CUMIPMT article](https://support.microsoft.com/office/cumipmt-function-61067bb0-9016-427d-b95b-1a752af0e606)
  CUMPRINC(rate, number_of_periods, present_value, first_period, last_period, \[end_or_beginning\])                        [Excel CUMPRINC article](https://support.microsoft.com/office/cumprinc-function-94a4516d-bd65-41a1-bc16-053a6af4c04d)
  DB(cost, salvage, life, period, \[month\])                                                                               [Excel DB article](https://support.microsoft.com/office/db-function-354e7d28-5f93-4ff1-8a52-eb4ee549d9d7)
  DDB(cost, salvage, life, period, \[factor\])                                                                             [Excel DDB article](https://support.microsoft.com/office/ddb-function-519a7a37-8772-4c96-85c0-ed2c209717a5)
  DISC(settlement, maturity, price, redemption, \[day_count_convention\])                                                  [Excel DISC article](https://support.microsoft.com/office/disc-function-71fce9f3-3f05-4acf-a5a3-eac6ef4daa53)
  DOLLARDE(fractional_price, unit)                                                                                         [Excel DOLLARDE article](https://support.microsoft.com/office/dollarde-function-db85aab0-1677-428a-9dfd-a38476693427)
  DOLLARFR(decimal_price, unit)                                                                                            [Excel DOLLARFR article](https://support.microsoft.com/office/dollarfr-function-0835d163-3023-4a33-9824-3042c5d4f495)
  DURATION(settlement, maturity, rate, yield, frequency, \[day_count_convention\])                                         [Excel DURATION article](https://support.microsoft.com/office/duration-function-b254ea57-eadc-4602-a86a-c8e369334038)
  EFFECT(nominal_rate, periods_per_year)                                                                                   [Excel EFFECT article](https://support.microsoft.com/office/effect-function-910d4e4c-79e2-4009-95e6-507e04f11bc4)
  FV(rate, number_of_periods, payment_amount, \[present_value\], \[end_or_beginning\])                                     [Excel FV article](https://support.microsoft.com/office/fv-function-2eef9f44-a084-4c61-bdd8-4fe4bb1b71b3)
  FVSCHEDULE(principal, rate_schedule)                                                                                     [Excel FVSCHEDULE article](https://support.microsoft.com/office/fvschedule-function-bec29522-bd87-4082-bab9-a241f3fb251d)
  INTRATE(settlement, maturity, investment, redemption, \[day_count_convention\])                                          [Excel INTRATE article](https://support.microsoft.com/office/intrate-function-5cb34dde-a221-4cb6-b3eb-0b9e55e1316f)
  IPMT(rate, period, number_of_periods, present_value, \[future_value\], \[end_or_beginning\])                             [Excel IPMT article](https://support.microsoft.com/office/ipmt-function-5cce0ad6-8402-4a41-8d29-61a0b054cb6f)
  IRR(cashflow_amounts, \[rate_guess\])                                                                                    [Excel IRR article](https://support.microsoft.com/office/irr-function-64925eaa-9988-495b-b290-3ad0c163c1bc)
  ISPMT(rate, period, number_of_periods, present_value)                                                                    [Excel ISPMT article](https://support.microsoft.com/office/ispmt-function-fa58adb6-9d39-4ce0-8f43-75399cea56cc)
  MDURATION(settlement, maturity, rate, yield, frequency, \[day_count_convention\])                                        [Excel MDURATION article](https://support.microsoft.com/office/mduration-function-b3786a69-4f20-469a-94ad-33e5b90a763c)
  MIRR(cashflow_amounts, financing_rate, reinvestment_return_rate)                                                         [Excel MIRR article](https://support.microsoft.com/office/mirr-function-b020f038-7492-4fb4-93c1-35c345b53524)
  NOMINAL(effective_rate, periods_per_year)                                                                                [Excel NOMINAL article](https://support.microsoft.com/office/nominal-function-7f1ae29b-6b92-435e-b950-ad8b190ddd2b)
  NPER(rate, payment_amount, present_value, \[future_value\], \[end_or_beginning\])                                        [Excel NPER article](https://support.microsoft.com/office/nper-function-240535b5-6653-4d2d-bfcf-b6a38151d815)
  NPV(discount, cashflow1, \[cashflow2, \...\])                                                                            [Excel NPV article](https://support.microsoft.com/office/npv-function-8672cb67-2576-4d07-b67b-ac28acf2a568)
  ODOO.ACCOUNT.GROUP(type)                                                                                                 Returns the account ids of a given group (not compatible with Excel)
  ODOO.BALANCE(account_codes, date_range, \[offset\], \[company_id\], \[include_unposted\])                                Returns the total balance for the specified account(s) and period (not compatible with Excel)
  ODOO.BALANCE.TAG(account_tag_ids, \[date_range\], \[offset\], \[company_id\], \[include_unposted\])                      Returns the balance of accounts for the specified tag(s) and period (not compatible with Excel)
  ODOO.CREDIT(account_codes, date_range, \[offset\], \[company_id\], \[include_unposted\])                                 Returns the total credit for the specified account(s) and period (not compatible with Excel)
  ODOO.CURRENCY.RATE(currency_from, currency_to, \[date\])                                                                 Takes two currency codes as arguments, and returns the exchange rate from the first currency to the second as float (not compatible with Excel)
  ODOO.DEBIT(account_codes, date_range, \[offset\], \[company_id\], \[include_unposted\])                                  Returns the total debit for the specified account(s) and period (not compatible with Excel)
  ODOO.FISCALYEAR.END(day, \[company_id\])                                                                                 Returns the ending date of the fiscal year encompassing the provided date (not compatible with Excel)
  ODOO.FISCALYEAR.START(day, \[company_id\])                                                                               Returns the starting date of the fiscal year encompassing the provided date (not compatible with Excel)
  ODOO.PARTNER.BALANCE(partner_ids, \[account_codes\], \[date_range\], \[offset\], \[company_id\], \[include_unposted\])   Returns the partner balance for the specified account(s) and period (not compatible with Excel)
  ODOO.RESIDUAL(\[account_codes\], \[date_range\], \[offset\], \[company_id\], \[include_unposted\])                       Returns the residual amount for the specified account(s) and period (not compatible with Excel)
  PDURATION(rate, present_value, future_value)                                                                             [Excel PDURATION article](https://support.microsoft.com/office/pduration-function-44f33460-5be5-4c90-b857-22308892adaf)
  PMT(rate, number_of_periods, present_value, \[future_value\], \[end_or_beginning\])                                      [Excel PMT article](https://support.microsoft.com/office/pmt-function-0214da64-9a63-4996-bc20-214433fa6441)
  PPMT(rate, period, number_of_periods, present_value, \[future_value\], \[end_or_beginning\])                             [Excel PPMT article](https://support.microsoft.com/office/ppmt-function-c370d9e3-7749-4ca4-beea-b06c6ac95e1b)
  PRICE(settlement, maturity, rate, yield, redemption, frequency, \[day_count_convention\])                                [Excel PRICE article](https://support.microsoft.com/office/price-function-3ea9deac-8dfa-436f-a7c8-17ea02c21b0a)
  PRICEDISC(settlement, maturity, discount, redemption, \[day_count_convention\])                                          [Excel PRICEDISC article](https://support.microsoft.com/office/pricedisc-function-d06ad7c1-380e-4be7-9fd9-75e3079acfd3)
  PRICEMAT(settlement, maturity, issue, rate, yield, \[day_count_convention\])                                             [Excel PRICEMAT article](https://support.microsoft.com/office/pricemat-function-52c3b4da-bc7e-476a-989f-a95f675cae77)
  PV(rate, number_of_periods, payment_amount, \[future_value\], \[end_or_beginning\])                                      [Excel PV article](https://support.microsoft.com/office/pv-function-23879d31-0e02-4321-be01-da16e8168cbd)
  RATE(number_of_periods, payment_per_period, present_value, \[future_value\], \[end_or_beginning\], \[rate_guess\])       [Excel RATE article](https://support.microsoft.com/office/rate-function-9f665657-4a7e-4bb7-a030-83fc59e748ce)
  RECEIVED(settlement, maturity, investment, discount, \[day_count_convention\])                                           [Excel RECEIVED article](https://support.microsoft.com/office/received-function-7a3f8b93-6611-4f81-8576-828312c9b5e5)
  RRI(number_of_periods, present_value, future_value)                                                                      [Excel RRI article](https://support.microsoft.com/office/rri-function-6f5822d8-7ef1-4233-944c-79e8172930f4)
  SLN(cost, salvage, life)                                                                                                 [Excel SLN article](https://support.microsoft.com/office/sln-function-cdb666e5-c1c6-40a7-806a-e695edc2f1c8)
  SYD(cost, salvage, life, period)                                                                                         [Excel SYD article](https://support.microsoft.com/office/syd-function-069f8106-b60b-4ca2-98e0-2a0f206bdb27)
  TBILLEQ(settlement, maturity, discount)                                                                                  [Excel TBILLEQ article](https://support.microsoft.com/office/tbilleq-function-2ab72d90-9b4d-4efe-9fc2-0f81f2c19c8c)
  TBILLPRICE(settlement, maturity, discount)                                                                               [Excel TBILLPRICE article](https://support.microsoft.com/office/tbillprice-function-eacca992-c29d-425a-9eb8-0513fe6035a2)
  TBILLYIELD(settlement, maturity, price)                                                                                  [Excel TBILLYIELD article](https://support.microsoft.com/office/tbillyield-function-6d381232-f4b0-4cd5-8e97-45b9c03468ba)
  VDB(cost, salvage, life, start, end, \[factor\], \[no_switch\])                                                          [Excel VDB article](https://support.microsoft.com/office/vdb-function-dde4e207-f3fa-488d-91d2-66d55e861d73)
  XIRR(cashflow_amounts, cashflow_dates, \[rate_guess\])                                                                   [Excel XIRR article](https://support.microsoft.com/office/xirr-function-de1242ec-6477-445b-b11b-a303ad9adc9d)
  XNPV(discount, cashflow_amounts, cashflow_dates)                                                                         [Excel XNPV article](https://support.microsoft.com/office/xnpv-function-1b42bbf6-370f-4532-a0eb-d67c16b664b7)
  YIELD(settlement, maturity, rate, price, redemption, frequency, \[day_count_convention\])                                [Excel YIELD article](https://support.microsoft.com/office/yield-function-f5f5ca43-c4bd-434f-8bd2-ed3c9727a4fe)
  YIELDDISC(settlement, maturity, price, redemption, \[day_count_convention\])                                             [Excel YIELDDISC article](https://support.microsoft.com/office/yielddisc-function-a9dbdbae-7dae-46de-b995-615faffaaed7)
  YIELDMAT(settlement, maturity, issue, rate, price, \[day_count_convention\])                                             [Excel YIELDMAT article](https://support.microsoft.com/office/yieldmat-function-ba7d1809-0d33-4bcb-96c7-6c56ec62ef6f)

## Info {#spreadsheet/functions/info}

  Name and arguments           Description or link
  ---------------------------- ---------------------------------------------------------------------------------------------------------------
  CELL(info_type, reference)   [Excel CELL article](https://support.microsoft.com/office/cell-function-51bd39a5-f338-4dbe-a33f-955d67c2b2cf)
  ISBLANK(value)               [Excel IS article](https://support.microsoft.com/office/is-functions-0f2d7971-6019-40a0-a171-f2d869135665)
  ISERR(value)                 [Excel IS article](https://support.microsoft.com/office/is-functions-0f2d7971-6019-40a0-a171-f2d869135665)
  ISERROR(value)               [Excel IS article](https://support.microsoft.com/office/is-functions-0f2d7971-6019-40a0-a171-f2d869135665)
  ISLOGICAL(value)             [Excel IS article](https://support.microsoft.com/office/is-functions-0f2d7971-6019-40a0-a171-f2d869135665)
  ISNA(value)                  [Excel IS article](https://support.microsoft.com/office/is-functions-0f2d7971-6019-40a0-a171-f2d869135665)
  ISNONTEXT(value)             [Excel IS article](https://support.microsoft.com/office/is-functions-0f2d7971-6019-40a0-a171-f2d869135665)
  ISNUMBER(value)              [Excel IS article](https://support.microsoft.com/office/is-functions-0f2d7971-6019-40a0-a171-f2d869135665)
  ISTEXT(value)                [Excel IS article](https://support.microsoft.com/office/is-functions-0f2d7971-6019-40a0-a171-f2d869135665)
  NA()                         [Excel NA article](https://support.microsoft.com/office/na-function-5469c2d1-a90c-4fb5-9bbc-64bd9bb6b47c)

## Logical {#spreadsheet/functions/logical}

  Name and arguments                                                                  Description or link
  ----------------------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------
  AND(logical_expression1, \[logical_expression2, \...\])                             [Excel AND article](https://support.microsoft.com/office/and-function-5f19b2e8-e1df-4408-897a-ce285a19e9d9)
  FALSE()                                                                             [Excel FALSE article](https://support.microsoft.com/office/false-function-2d58dfa5-9c03-4259-bf8f-f0ae14346904)
  IF(logical_expression, value_if_true, \[value_if_false\])                           [Excel IF article](https://support.microsoft.com/office/if-function-69aed7c9-4e8a-4755-a9bc-aa8bbff73be2)
  IFERROR(value, \[value_if_error\])                                                  [Excel IFERROR article](https://support.microsoft.com/office/iferror-function-c526fd07-caeb-47b8-8bb6-63f3e417f611)
  IFNA(value, \[value_if_error\])                                                     [Excel IFNA article](https://support.microsoft.com/office/ifna-function-6626c961-a569-42fc-a49d-79b4951fd461)
  IFS(condition1, value1, \[condition2, \...\], \[value2, \...\])                     [Excel IFS article](https://support.microsoft.com/office/ifs-function-36329a26-37b2-467c-972b-4a39bd951d45)
  NOT(logical_expression)                                                             [Excel NOT article](https://support.microsoft.com/office/not-function-9cfc6011-a054-40c7-a140-cd4ba2d87d77)
  OR(logical_expression1, \[logical_expression2, \...\])                              [Excel OR article](https://support.microsoft.com/office/or-function-7d17ad14-8700-4281-b308-00b131e22af0)
  SWITCH(expression, case1, value1, \[case2, \...\], \[value2, \...\], \[default\])   [Excel SWITCH article](https://support.microsoft.com/office/switch-function-47ab33c0-28ce-4530-8a45-d532ec4aa25e)
  TRUE()                                                                              [Excel TRUE article](https://support.microsoft.com/office/true-function-7652c6e3-8987-48d0-97cd-ef223246b3fb)
  XOR(logical_expression1, \[logical_expression2, \...\])                             [Excel XOR article](https://support.microsoft.com/office/xor-function-1548d4c2-5e47-4f77-9a92-0533bba14f37)

## Lookup {#spreadsheet/functions/lookup}

  Name and arguments                                                                                   Description or link
  ---------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------
  ADDRESS(row, column, \[absolute_relative_mode\], \[use_a1_notation\], \[sheet\])                     [Excel ADDRESS article](https://support.microsoft.com/office/address-function-d0c26c0d-3991-446b-8de4-ab46431d4f89)
  COLUMN(\[cell_reference\])                                                                           [Excel COLUMN article](https://support.microsoft.com/office/column-function-44e8c754-711c-4df3-9da4-47a55042554b)
  COLUMNS(range)                                                                                       [Excel COLUMNS article](https://support.microsoft.com/office/columns-function-4e8e7b4e-e603-43e8-b177-956088fa48ca)
  HLOOKUP(search_key, range, index, \[is_sorted\])                                                     [Excel HLOOKUP article](https://support.microsoft.com/office/hlookup-function-a3034eec-b719-4ba3-bb65-e1ad662ed95f)
  INDEX(reference, row, column)                                                                        [Excel INDEX article](https://support.microsoft.com/office/index-function-a5dcf0dd-996d-40a4-a822-b56b061328bd)
  INDIRECT(reference, \[use_a1_notation\])                                                             [Excel INDIRECT article](https://support.microsoft.com/office/indirect-function-474b3a3a-8a26-4f44-b491-92b6306fa261)
  LOOKUP(search_key, search_array, \[result_range\])                                                   [Excel LOOKUP article](https://support.microsoft.com/office/lookup-function-446d94af-663b-451d-8251-369d5e3864cb)
  MATCH(search_key, range, \[search_type\])                                                            [Excel MATCH article](https://support.microsoft.com/office/match-function-e8dffd45-c762-47d6-bf89-533f4a37673a)
  OFFSET(reference, rows, cols, \[height\], \[width\])                                                 [Excel OFFSET article](https://support.microsoft.com/office/offset-function-c8de19ae-dd79-4b9b-a14e-b4d906d11b66)
  PIVOT(pivot_id, \[row_count\], \[include_total\], \[include_column_titles\], \[column_count\])       Creates a pivot table (not compatible with Excel)
  PIVOT.HEADER(pivot_id, \[domain_field_name, \...\], \[domain_value, \...\])                          Returns the header of a pivot table (not compatible with Excel)
  PIVOT.VALUE(pivot_id, measure_name, \[domain_field_name, \...\], \[domain_value, \...\])             Returns the value from a pivot table (not compatible with Excel)
  ROW(\[cell_reference\])                                                                              [Excel ROW article](https://support.microsoft.com/office/row-function-3a63b74a-c4d0-4093-b49a-e76eb49a6d8d)
  ROWS(range)                                                                                          [Excel ROWS article](https://support.microsoft.com/office/rows-function-b592593e-3fc2-47f2-bec1-bda493811597)
  VLOOKUP(search_key, range, index, \[is_sorted\])                                                     [Excel VLOOKUP article](https://support.microsoft.com/office/vlookup-function-0bbc8083-26fe-4963-8ab8-93a18ad188a1)
  XLOOKUP(search_key, lookup_range, return_range, \[if_not_found\], \[match_mode\], \[search_mode\])   [Excel XLOOKUP article](https://support.microsoft.com/office/xlookup-function-b7fd680e-6d10-43e6-84f9-88eae8bf5929)

## Math {#spreadsheet/functions/math}

  Name and arguments                                                                                Description or link
  ------------------------------------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------
  ABS(value)                                                                                        [Excel ABS article](https://support.microsoft.com/office/abs-function-3420200f-5628-4e8c-99da-c99d7c87713c)
  ACOS(value)                                                                                       [Excel ACOS article](https://support.microsoft.com/office/acos-function-cb73173f-d089-4582-afa1-76e5524b5d5b)
  ACOSH(value)                                                                                      [Excel ACOSH article](https://support.microsoft.com/office/acosh-function-e3992cc1-103f-4e72-9f04-624b9ef5ebfe)
  ACOT(value)                                                                                       [Excel ACOT article](https://support.microsoft.com/office/acot-function-dc7e5008-fe6b-402e-bdd6-2eea8383d905)
  ACOTH(value)                                                                                      [Excel ACOTH article](https://support.microsoft.com/office/acoth-function-cc49480f-f684-4171-9fc5-73e4e852300f)
  ASIN(value)                                                                                       [Excel ASIN article](https://support.microsoft.com/office/asin-function-81fb95e5-6d6f-48c4-bc45-58f955c6d347)
  ASINH(value)                                                                                      [Excel ASINH article](https://support.microsoft.com/office/asinh-function-4e00475a-067a-43cf-926a-765b0249717c)
  ATAN(value)                                                                                       [Excel ATAN article](https://support.microsoft.com/office/atan-function-50746fa8-630a-406b-81d0-4a2aed395543)
  ATAN2(x, y)                                                                                       [Excel ATAN2 article](https://support.microsoft.com/office/atan2-function-c04592ab-b9e3-4908-b428-c96b3a565033)
  ATANH(value)                                                                                      [Excel ATANH article](https://support.microsoft.com/office/atanh-function-3cd65768-0de7-4f1d-b312-d01c8c930d90)
  CEILING(value, \[factor\])                                                                        [Excel CEILING article](https://support.microsoft.com/office/ceiling-function-0a5cd7c8-0720-4f0a-bd2c-c943e510899f)
  CEILING.MATH(number, \[significance\], \[mode\])                                                  [Excel CEILING.MATH article](https://support.microsoft.com/office/ceiling-math-function-80f95d2f-b499-4eee-9f16-f795a8e306c8)
  CEILING.PRECISE(number, \[significance\])                                                         [Excel CEILING.PRECISE article](https://support.microsoft.com/office/ceiling-precise-function-f366a774-527a-4c92-ba49-af0a196e66cb)
  COS(angle)                                                                                        [Excel COS article](https://support.microsoft.com/office/cos-function-0fb808a5-95d6-4553-8148-22aebdce5f05)
  COSH(value)                                                                                       [Excel COSH article](https://support.microsoft.com/office/cosh-function-e460d426-c471-43e8-9540-a57ff3b70555)
  COT(angle)                                                                                        [Excel COT article](https://support.microsoft.com/office/cot-function-c446f34d-6fe4-40dc-84f8-cf59e5f5e31a)
  COTH(value)                                                                                       [Excel COTH article](https://support.microsoft.com/office/coth-function-2e0b4cb6-0ba0-403e-aed4-deaa71b49df5)
  COUNTBLANK(value1, \[value2, \...\])                                                              [Excel COUNTBLANK article](https://support.microsoft.com/office/countblank-function-6a92d772-675c-4bee-b346-24af6bd3ac22)
  COUNTIF(range, criterion)                                                                         [Excel COUNTIF article](https://support.microsoft.com/office/countif-function-e0de10c6-f885-4e71-abb4-1f464816df34)
  COUNTIFS(criteria_range1, criterion1, \[criteria_range2, \...\], \[criterion2, \...\])            [Excel COUNTIFS article](https://support.microsoft.com/office/countifs-function-dda3dc6e-f74e-4aee-88bc-aa8c2a866842)
  CSC(angle)                                                                                        [Excel CSC article](https://support.microsoft.com/office/csc-function-07379361-219a-4398-8675-07ddc4f135c1)
  CSCH(value)                                                                                       [Excel CSCH article](https://support.microsoft.com/office/csch-function-f58f2c22-eb75-4dd6-84f4-a503527f8eeb)
  DECIMAL(value, base)                                                                              [Excel DECIMAL article](https://support.microsoft.com/office/decimal-function-ee554665-6176-46ef-82de-0a283658da2e)
  DEGREES(angle)                                                                                    [Excel DEGREES article](https://support.microsoft.com/office/degrees-function-4d6ec4db-e694-4b94-ace0-1cc3f61f9ba1)
  EXP(value)                                                                                        [Excel EXP article](https://support.microsoft.com/office/exp-function-c578f034-2c45-4c37-bc8c-329660a63abe)
  FLOOR(value, \[factor\])                                                                          [Excel FLOOR article](https://support.microsoft.com/office/floor-function-14bb497c-24f2-4e04-b327-b0b4de5a8886)
  FLOOR.MATH(number, \[significance\], \[mode\])                                                    [Excel FLOOR.MATH article](https://support.microsoft.com/office/floor-math-function-c302b599-fbdb-4177-ba19-2c2b1249a2f5)
  FLOOR.PRECISE(number, \[significance\])                                                           [Excel FLOOR.PRECISE article](https://support.microsoft.com/office/floor-precise-function-f769b468-1452-4617-8dc3-02f842a0702e)
  INT(value)                                                                                        [Excel INT article](https://support.microsoft.com/office/int-function-a6c4af9e-356d-4369-ab6a-cb1fd9d343ef)
  ISEVEN(value)                                                                                     [Excel ISEVEN article](https://support.microsoft.com/office/iseven-function-aa15929a-d77b-4fbb-92f4-2f479af55356)
  ISO.CEILING(number, \[significance\])                                                             [Excel ISO.CEILING article](https://support.microsoft.com/office/iso-ceiling-function-e587bb73-6cc2-4113-b664-ff5b09859a83)
  ISODD(value)                                                                                      [Excel ISODD article](https://support.microsoft.com/office/isodd-function-1208a56d-4f10-4f44-a5fc-648cafd6c07a)
  LN(value)                                                                                         [Excel LN article](https://support.microsoft.com/office/ln-function-81fe1ed7-dac9-4acd-ba1d-07a142c6118f)
  LOG(value, \[base\])                                                                              Returns the logarithm of a number for a given base (not compatible with Excel)
  MOD(dividend, divisor)                                                                            [Excel MOD article](https://support.microsoft.com/office/mod-function-9b6cd169-b6ee-406a-a97b-edf2a9dc24f3)
  MUNIT(dimension)                                                                                  [Excel MUNIT article](https://support.microsoft.com/office/munit-function-c9fe916a-dc26-4105-997d-ba22799853a3)
  ODD(value)                                                                                        [Excel ODD article](https://support.microsoft.com/office/odd-function-deae64eb-e08a-4c88-8b40-6d0b42575c98)
  PI()                                                                                              [Excel PI article](https://support.microsoft.com/office/pi-function-264199d0-a3ba-46b8-975a-c4a04608989b)
  POWER(base, exponent)                                                                             [Excel POWER article](https://support.microsoft.com/office/power-function-d3f2908b-56f4-4c3f-895a-07fb519c362a)
  PRODUCT(factor1, \[factor2, \...\])                                                               [Excel PRODUCT article](https://support.microsoft.com/office/product-function-8e6b5b24-90ee-4650-aeec-80982a0512ce)
  RAND()                                                                                            [Excel RAND article](https://support.microsoft.com/office/rand-function-4cbfa695-8869-4788-8d90-021ea9f5be73)
  RANDARRAY(\[rows\], \[columns\], \[min\], \[max\], \[whole_number\])                              [Excel RANDARRAY article](https://support.microsoft.com/office/randarray-function-21261e55-3bec-4885-86a6-8b0a47fd4d33)
  RANDBETWEEN(low, high)                                                                            [Excel RANDBETWEEN article](https://support.microsoft.com/office/randbetween-function-4cc7f0d1-87dc-4eb7-987f-a469ab381685)
  ROUND(value, \[places\])                                                                          [Excel ROUND article](https://support.microsoft.com/office/round-function-c018c5d8-40fb-4053-90b1-b3e7f61a213c)
  ROUNDDOWN(value, \[places\])                                                                      [Excel ROUNDDOWN article](https://support.microsoft.com/office/rounddown-function-2ec94c73-241f-4b01-8c6f-17e6d7968f53)
  ROUNDUP(value, \[places\])                                                                        [Excel ROUNDUP article](https://support.microsoft.com/office/roundup-function-f8bc9b23-e795-47db-8703-db171d0c42a7)
  SEC(angle)                                                                                        [Excel SEC article](https://support.microsoft.com/office/sec-function-ff224717-9c87-4170-9b58-d069ced6d5f7)
  SECH(value)                                                                                       [Excel SECH article](https://support.microsoft.com/office/sech-function-e05a789f-5ff7-4d7f-984a-5edb9b09556f)
  SEQUENCE(rows, \[columns\], \[start\], \]\[step\])                                                [Excel SEQUENCE article](https://support.microsoft.com/office/sequence-function-57467a98-57e0-4817-9f14-2eb78519ca90)
  SIN(angle)                                                                                        [Excel SIN article](https://support.microsoft.com/office/sin-function-cf0e3432-8b9e-483c-bc55-a76651c95602)
  SINH(value)                                                                                       [Excel SINH article](https://support.microsoft.com/office/sinh-function-1e4e8b9f-2b65-43fc-ab8a-0a37f4081fa7)
  SQRT(value)                                                                                       [Excel SQRT article](https://support.microsoft.com/office/sqrt-function-654975c2-05c4-4831-9a24-2c65e4040fdf)
  SUBTOTAL(function_code, ref1, \[ref2, \...\])                                                     [Excel SUBTOTAL article](https://support.microsoft.com/en-us/office/subtotal-function-7b027003-f060-4ade-9040-e478765b9939)
  SUM(value1, \[value2, \...\])                                                                     [Excel SUM article](https://support.microsoft.com/office/sum-function-043e1c7d-7726-4e80-8f32-07b23e057f89)
  SUMIF(criteria_range, criterion, \[sum_range\])                                                   [Excel SUMIF article](https://support.microsoft.com/office/sumif-function-169b8c99-c05c-4483-a712-1697a653039b)
  SUMIFS(sum_range, criteria_range1, criterion1, \[criteria_range2, \...\], \[criterion2, \...\])   [Excel SUMIFS article](https://support.microsoft.com/office/sumifs-function-c9e748f5-7ea7-455d-9406-611cebce642b)
  TAN(angle)                                                                                        [Excel TAN article](https://support.microsoft.com/office/tan-function-08851a40-179f-4052-b789-d7f699447401)
  TANH(value)                                                                                       [Excel TANH article](https://support.microsoft.com/office/tanh-function-017222f0-a0c3-4f69-9787-b3202295dc6c)
  TRUNC(value, \[places\])                                                                          [Excel TRUNC article](https://support.microsoft.com/office/trunc-function-8b86a64c-3127-43db-ba14-aa5ceb292721)

## Operators {#spreadsheet/functions/operators}

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

## Parser {#spreadsheet/functions/parser}

  Name and arguments                    Description or link
  ------------------------------------- ---------------------------------------------------------------------------------------------------------------------
  CONVERT(number, from_unit, to_unit)   [Excel CONVERT article](https://support.microsoft.com/office/convert-function-d785bef1-808e-4aac-bdcd-666c810f9af2)

## Statistical {#spreadsheet/functions/statistical}

  Name and arguments                                                                                        Description or link
  --------------------------------------------------------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------
  AVEDEV(value1, \[value2, \...\])                                                                          [Excel AVEDEV article](https://support.microsoft.com/office/avedev-function-58fe8d65-2a84-4dc7-8052-f3f87b5c6639)
  AVERAGE(value1, \[value2, \...\])                                                                         [Excel AVERAGE article](https://support.microsoft.com/office/average-function-047bac88-d466-426c-a32b-8f33eb960cf6)
  AVERAGEA(value1, \[value2, \...\])                                                                        [Excel AVERAGEA article](https://support.microsoft.com/office/averagea-function-f5f84098-d453-4f4c-bbba-3d2c66356091)
  AVERAGEIF(criteria_range, criterion, \[average_range\])                                                   [Excel AVERAGEIF article](https://support.microsoft.com/office/averageif-function-faec8e2e-0dec-4308-af69-f5576d8ac642)
  AVERAGEIFS(average_range, criteria_range1, criterion1, \[criteria_range2, \...\], \[criterion2, \...\])   [Excel AVERAGEIFS article](https://support.microsoft.com/office/averageifs-function-48910c45-1fc0-4389-a028-f7c5c3001690)
  AVERAGE.WEIGHTED(values, weights, \[additional_values, \...\], \[additional_weights, \...\])              Weighted average (not compatible with Excel)
  CORREL(data_y, data_x)                                                                                    [Excel CORREL article](https://support.microsoft.com/office/correl-function-995dcef7-0c0a-4bed-a3fb-239d7b68ca92)
  COUNT(value1, \[value2, \...\])                                                                           [Excel COUNT article](https://support.microsoft.com/office/count-function-a59cd7fc-b623-4d93-87a4-d23bf411294c)
  COUNTA(value1, \[value2, \...\])                                                                          [Excel COUNTA article](https://support.microsoft.com/office/counta-function-7dc98875-d5c1-46f1-9a82-53f3219e2509)
  COVAR(data_y, data_x)                                                                                     [Excel COVAR article](https://support.microsoft.com/office/covar-function-50479552-2c03-4daf-bd71-a5ab88b2db03)
  COVARIANCE.P(data_y, data_x)                                                                              [Excel COVARIANCE.P article](https://support.microsoft.com/office/covariance-p-function-6f0e1e6d-956d-4e4b-9943-cfef0bf9edfc)
  COVARIANCE.S(data_y, data_x)                                                                              [Excel COVARIANCE.S article](https://support.microsoft.com/office/covariance-s-function-0a539b74-7371-42aa-a18f-1f5320314977)
  FORECAST(x, data_y, data_x)                                                                               [Excel FORECAST article](https://support.microsoft.com/office/forecast-and-forecast-linear-functions-50ca49c9-7b40-4892-94e4-7ad38bbeda99)
  GROWTH(known_data_y, \[known_data_x\], \[new_data_x\], \[b\])                                             Fits points to exponential growth trend (not compatible with Excel)
  INTERCEPT(data_y, data_x)                                                                                 [Excel INTERCEPT article](https://support.microsoft.com/office/intercept-function-2a9b74e2-9d47-4772-b663-3bca70bf63ef)
  LARGE(data, n)                                                                                            [Excel LARGE article](https://support.microsoft.com/office/large-function-3af0af19-1190-42bb-bb8b-01672ec00a64)
  LINEST(data_y, \[data_x\], \[calculate_b\], \[verbose\])                                                  [Excel LINEST article](https://support.microsoft.com/office/linest-function-84d7d0d9-6e50-4101-977a-fa7abf772b6d)
  LOGEST(data_y, \[data_x\], \[calculate_b\], \[verbose\])                                                  [Excel LOGEST article](https://support.microsoft.com/office/logest-function-f27462d8-3657-4030-866b-a272c1d18b4b)
  MATTHEWS(data_x, data_y)                                                                                  Computes the Matthews correlation coefficient of a dataset (not compatible with Excel)
  MAX(value1, \[value2, \...\])                                                                             [Excel MAX article](https://support.microsoft.com/office/max-function-e0012414-9ac8-4b34-9a47-73e662c08098)
  MAXA(value1, \[value2, \...\])                                                                            [Excel MAXA article](https://support.microsoft.com/office/maxa-function-814bda1e-3840-4bff-9365-2f59ac2ee62d)
  MAXIFS(range, criteria_range1, criterion1, \[criteria_range2, \...\], \[criterion2, \...\])               [Excel MAXIFS article](https://support.microsoft.com/office/maxifs-function-dfd611e6-da2c-488a-919b-9b6376b28883)
  MEDIAN(value1, \[value2, \...\])                                                                          [Excel MEDIAN article](https://support.microsoft.com/office/median-function-d0916313-4753-414c-8537-ce85bdd967d2)
  MIN(value1, \[value2, \...\])                                                                             [Excel MIN article](https://support.microsoft.com/office/min-function-61635d12-920f-4ce2-a70f-96f202dcc152)
  MINA(value1, \[value2, \...\])                                                                            [Excel MINA article](https://support.microsoft.com/office/mina-function-245a6f46-7ca5-4dc7-ab49-805341bc31d3)
  MINIFS(range, criteria_range1, criterion1, \[criteria_range2, \...\], \[criterion2, \...\])               [Excel MINIFS article](https://support.microsoft.com/office/minifs-function-6ca1ddaa-079b-4e74-80cc-72eef32e6599)
  PEARSON(data_y, data_x)                                                                                   [Excel PEARSON article](https://support.microsoft.com/office/pearson-function-0c3e30fc-e5af-49c4-808a-3ef66e034c18)
  PERCENTILE(data, percentile)                                                                              [Excel PERCENTILE article](https://support.microsoft.com/office/percentile-exc-function-bbaa7204-e9e1-4010-85bf-c31dc5dce4ba)
  PERCENTILE.EXC(data, percentile)                                                                          [Excel PERCENTILE.EXC article](https://support.microsoft.com/office/percentrank-exc-function-d8afee96-b7e2-4a2f-8c01-8fcdedaa6314)
  PERCENTILE.INC(data, percentile)                                                                          [Excel PERCENTILE.INC article](https://support.microsoft.com/office/percentile-inc-function-680f9539-45eb-410b-9a5e-c1355e5fe2ed)
  POLYFIT.COEFFS(data_y, data_x, order, \[intercept\])                                                      Computes the coefficients of polynomial regression of the dataset (not compatible with Excel)
  POLYFIT.FORECAST(x, data_y, data_x, order, \[intercept\])                                                 Predicts value by computing a polynomial regression of the dataset (not compatible with Excel)
  QUARTILE(data, quartile_number)                                                                           [Excel QUARTILE article](https://support.microsoft.com/office/quartile-function-93cf8f62-60cd-4fdb-8a92-8451041e1a2a)
  QUARTILE.EXC(data, quartile_number)                                                                       [Excel QUARTILE.EXC article](https://support.microsoft.com/office/quartile-exc-function-5a355b7a-840b-4a01-b0f1-f538c2864cad)
  QUARTILE.INC(data, quartile_number)                                                                       [Excel QUARTILE.INC article](https://support.microsoft.com/office/quartile-inc-function-1bbacc80-5075-42f1-aed6-47d735c4819d)
  RANK(value, data, \[is_ascending\])                                                                       [Excel RANK article](https://support.microsoft.com/office/rank-function-6a2fc49d-1831-4a03-9d8c-c279cf99f723)
  RSQ(data_y, data_x)                                                                                       [Excel RSQ article](https://support.microsoft.com/office/rsq-function-d7161715-250d-4a01-b80d-a8364f2be08f)
  SLOPE(data_y, data_x)                                                                                     [Excel SLOPE article](https://support.microsoft.com/office/slope-function-11fb8f97-3117-4813-98aa-61d7e01276b9)
  SMALL(data, n)                                                                                            [Excel SMALL article](https://support.microsoft.com/office/small-function-17da8222-7c82-42b2-961b-14c45384df07)
  SPEARMAN(data_y, data_x)                                                                                  Computes the Spearman rank correlation coefficient of a dataset (not compatible with Excel)
  STDEV(value1, \[value2, \...\])                                                                           [Excel STDEV article](https://support.microsoft.com/office/stdev-function-51fecaaa-231e-4bbb-9230-33650a72c9b0)
  STDEV.P(value1, \[value2, \...\])                                                                         [Excel STDEV.P article](https://support.microsoft.com/office/stdev-p-function-6e917c05-31a0-496f-ade7-4f4e7462f285)
  STDEV.S(value1, \[value2, \...\])                                                                         [Excel STDEV.S article](https://support.microsoft.com/office/stdev-s-function-7d69cf97-0c1f-4acf-be27-f3e83904cc23)
  STDEVA(value1, \[value2, \...\])                                                                          [Excel STDEVA article](https://support.microsoft.com/office/stdeva-function-5ff38888-7ea5-48de-9a6d-11ed73b29e9d)
  STDEVP(value1, \[value2, \...\])                                                                          [Excel STDEVP article](https://support.microsoft.com/office/stdevp-function-1f7c1c88-1bec-4422-8242-e9f7dc8bb195)
  STDEVPA(value1, \[value2, \...\])                                                                         [Excel STDEVPA article](https://support.microsoft.com/office/stdevpa-function-5578d4d6-455a-4308-9991-d405afe2c28c)
  STEYX(data_y, data_x)                                                                                     [Excel STEYX article](https://support.microsoft.com/office/steyx-function-6ce74b2c-449d-4a6e-b9ac-f9cef5ba48ab)
  TREND(known_data_y, \[known_data_x\], \[new_data_x\], \[b\])                                              Fits points to linear trend derived via least-squares (not compatible with Excel)
  VAR(value1, \[value2, \...\])                                                                             [Excel VAR article](https://support.microsoft.com/office/var-function-1f2b7ab2-954d-4e17-ba2c-9e58b15a7da2)
  VAR.P(value1, \[value2, \...\])                                                                           [Excel VAR.P article](https://support.microsoft.com/office/var-p-function-73d1285c-108c-4843-ba5d-a51f90656f3a)
  VAR.S(value1, \[value2, \...\])                                                                           [Excel VAR.S article](https://support.microsoft.com/office/var-s-function-913633de-136b-449d-813e-65a00b2b990b)
  VARA(value1, \[value2, \...\])                                                                            [Excel VARA article](https://support.microsoft.com/office/vara-function-3de77469-fa3a-47b4-85fd-81758a1e1d07)
  VARP(value1, \[value2, \...\])                                                                            [Excel VARP article](https://support.microsoft.com/office/varp-function-26a541c4-ecee-464d-a731-bd4c575b1a6b)
  VARPA(value1, \[value2, \...\])                                                                           [Excel VARPA article](https://support.microsoft.com/office/varpa-function-59a62635-4e89-4fad-88ac-ce4dc0513b96)

## Text {#spreadsheet/functions/text}

  Name and arguments                                                                                  Description or link
  --------------------------------------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------
  CHAR(table_number)                                                                                  [Excel CHAR article](https://support.microsoft.com/office/char-function-bbd249c8-b36e-4a91-8017-1c133f9b837a)
  CLEAN(text)                                                                                         [Excel CLEAN article](https://support.microsoft.com/office/clean-function-26f3d7c5-475f-4a9c-90e5-4b8ba987ba41)
  CONCATENATE(string1, \[string2, \...\])                                                             [Excel CONCATENATE article](https://support.microsoft.com/office/concatenate-function-8f8ae884-2ca8-4f7a-b093-75d702bea31d)
  EXACT(string1, string2)                                                                             [Excel EXACT article](https://support.microsoft.com/office/exact-function-d3087698-fc15-4a15-9631-12575cf29926)
  FIND(search_for, text_to_search, \[starting_at\])                                                   [Excel FIND article](https://support.microsoft.com/office/find-findb-functions-c7912941-af2a-4bdf-a553-d0d89b0a0628)
  JOIN(delimiter, value_or_array1, \[value_or_array2, \...\])                                         Concatenates elements of arrays with delimiter (not compatible with Excel)
  LEFT(text, \[number_of_characters\])                                                                [Excel LEFT article](https://support.microsoft.com/office/left-leftb-functions-9203d2d2-7960-479b-84c6-1ea52b99640c)
  LEN(text)                                                                                           [Excel LEN article](https://support.microsoft.com/office/len-lenb-functions-29236f94-cedc-429d-affd-b5e33d2c67cb)
  LOWER(text)                                                                                         [Excel LOWER article](https://support.microsoft.com/office/lower-function-3f21df02-a80c-44b2-afaf-81358f9fdeb4)
  MID(text, starting_at, extract_length)                                                              [Excel MID article](https://support.microsoft.com/office/mid-midb-functions-d5f9e25c-d7d6-472e-b568-4ecb12433028)
  PROPER(text_to_capitalize)                                                                          [Excel PROPER article](https://support.microsoft.com/office/proper-function-52a5a283-e8b2-49be-8506-b2887b889f94)
  REPLACE(text, position, length, new_text)                                                           [Excel REPLACE article](https://support.microsoft.com/office/replace-replaceb-functions-8d799074-2425-4a8a-84bc-82472868878a)
  REGEXEXTRACT(text, pattern, \[return_mode\], \[case_sensitivity\])                                  [Excel REGEXEXTRACT article](https://support.microsoft.com/en-us/office/regexextract-function-4b96c140-9205-4b6e-9fbe-6aa9e783ff57)
  RIGHT(text, \[number_of_characters\])                                                               [Excel RIGHT article](https://support.microsoft.com/office/right-rightb-functions-240267ee-9afa-4639-a02b-f19e1786cf2f)
  SEARCH(search_for, text_to_search, \[starting_at\])                                                 [Excel SEARCH article](https://support.microsoft.com/office/search-searchb-functions-9ab04538-0e55-4719-a72e-b6f54513b495)
  SPLIT(text, delimiter, \[split_by_each\], \[remove_empty_text\])                                    Splits text by specific character delimiter(s) (not compatible with Excel)
  SUBSTITUTE(text_to_search, search_for, replace_with, \[occurrence_number\])                         [Excel SUBSTITUTE article](https://support.microsoft.com/office/substitute-function-6434944e-a904-4336-a9b0-1e58df3bc332)
  TEXT(number, format)                                                                                [Excel TEXT article](https://support.microsoft.com/office/text-function-20d5ac4d-7b94-49fd-bb38-93d29371225c)
  TEXTAFTER(text, delimiter, \[instance_num\], \[match_mode\], \[match_end\], \[if_not_found\])       [Excel TEXTAFTER article](https://support.microsoft.com/en-us/office/textafter-function-c8db2546-5b51-416a-9690-c7e6722e90b4)
  TEXTBEFORE(text, delimiter, \[instance_num\], \[match_mode\], \[match_end\], \[if_not_found\])      [Excel TEXTBEFORE article](https://support.microsoft.com/en-us/office/textbefore-function-d099c28a-dba8-448e-ac6c-f086d0fa1b29)
  TEXTJOIN(delimiter, ignore_empty, text1, \[text2, \...\])                                           [Excel TEXTJOIN article](https://support.microsoft.com/office/textjoin-function-357b449a-ec91-49d0-80c3-0e8fc845691c)
  TEXTSPLIT(text, col_delimiter, \[row_delimiter\], \[ignore_empty\], \[match_mode\], \[pad_with\])   [Excel TEXTSPLIT article](https://support.microsoft.com/en-us/office/textsplit-function-b1ca414e-4c21-4ca0-b1b7-bdecace8a6e7)
  TRIM(text)                                                                                          [Excel TRIM article](https://support.microsoft.com/office/trim-function-410388fa-c5df-49c6-b16c-9e5630b479f9)
  UPPER(text)                                                                                         [Excel UPPER article](https://support.microsoft.com/office/upper-function-c11f29b3-d1a3-4537-8df6-04d0049963d6)
  VALUE(text)                                                                                         [Excel VALUE article](https://support.microsoft.com/office/value-function-257d0108-07dc-437d-ae1c-bc2d3953d8c2)

## Web {#spreadsheet/functions/web}

  Name and arguments               Description or link
  -------------------------------- -------------------------------------------------------------------------------------------------------------------------
  HYPERLINK(url, \[link_label\])   [Excel HYPERLINK article](https://support.microsoft.com/office/hyperlink-function-333c7ce6-c5ae-4164-9c47-7de9b76f577f)

## Odoo-specific functions {#spreadsheet/functions/odoo}

This section contains functions that interact directly with your Odoo
database.

### Array

  Name and arguments                            Description or link
  --------------------------------------------- --------------------------------------------------------------------------------------------------
  ARRAY.CONSTRAIN(input_range, rows, columns)   Returns a result array constrained to a specific width and height (not compatible with Excel)
  FLATTEN(range, \[range2, \...\])              Flattens all the values from one or more ranges into a single column (not compatible with Excel)

### Date

  Name and arguments                                         Description or link
  ---------------------------------------------------------- -------------------------------------------------------------------------------------------
  MONTH.END(date)                                            Last day of the month following a date (not compatible with Excel)
  MONTH.START(date)                                          First day of the month preceding a date (not compatible with Excel)
  QUARTER(date)                                              Quarter of the year a specific date falls in (not compatible with Excel)
  QUARTER.END(date)                                          Last day of the quarter of the year a specific date falls in (not compatible with Excel)
  QUARTER.START(date)                                        First day of the quarter of the year a specific date falls in (not compatible with Excel)
  YEAR.END(date)                                             Last day of the year a specific date falls in (not compatible with Excel)
  YEAR.START(date)                                           First day of the year a specific date falls in (not compatible with Excel)
  YEARFRAC(start_date, end_date, \[day_count_convention\])   Exact number of years between two dates (not compatible with Excel)

### Financial

  Name and arguments                                                                                                       Description or link
  ------------------------------------------------------------------------------------------------------------------------ -------------------------------------------------------------------------------------------------------------------------------------------------
  ODOO.ACCOUNT.GROUP(type)                                                                                                 Returns the account ids of a given group (not compatible with Excel)
  ODOO.BALANCE(account_codes, date_range, \[offset\], \[company_id\], \[include_unposted\])                                Returns the total balance for the specified account(s) and period (not compatible with Excel)
  ODOO.BALANCE.TAG(account_tag_ids, \[date_range\], \[offset\], \[company_id\], \[include_unposted\])                      Returns the balance of accounts for the specified tag(s) and period (not compatible with Excel)
  ODOO.CREDIT(account_codes, date_range, \[offset\], \[company_id\], \[include_unposted\])                                 Returns the total credit for the specified account(s) and period (not compatible with Excel)
  ODOO.CURRENCY.RATE(currency_from, currency_to, \[date\])                                                                 Takes two currency codes as arguments, and returns the exchange rate from the first currency to the second as float (not compatible with Excel)
  ODOO.DEBIT(account_codes, date_range, \[offset\], \[company_id\], \[include_unposted\])                                  Returns the total debit for the specified account(s) and period (not compatible with Excel)
  ODOO.FISCALYEAR.START(day, \[company_id\])                                                                               Returns the starting date of the fiscal year encompassing the provided date (not compatible with Excel)
  ODOO.FISCALYEAR.END(day, \[company_id\])                                                                                 Returns the ending date of the fiscal year encompassing the provided date (not compatible with Excel)
  ODOO.PARTNER.BALANCE(partner_ids, \[account_codes\], \[date_range\], \[offset\], \[company_id\], \[include_unposted\])   Returns the partner balance for the specified account(s) and period (not compatible with Excel)
  ODOO.RESIDUAL(\[account_codes\], \[date_range\], \[offset\], \[company_id\], \[include_unposted\])                       Returns the residual amount for the specified account(s) and period (not compatible with Excel)

### Lookup

  Name and arguments                                                                               Description or link
  ------------------------------------------------------------------------------------------------ ------------------------------------------------------------------
  PIVOT(pivot_id, \[row_count\], \[include_total\], \[include_column_titles\], \[column_count\])   Creates a pivot table (not compatible with Excel)
  PIVOT.HEADER(pivot_id, \[domain_field_name, \...\], \[domain_value, \...\])                      Returns the header of a pivot table (not compatible with Excel)
  PIVOT.VALUE(pivot_id, measure_name, \[domain_field_name, \...\], \[domain_value, \...\])         Returns the value from a pivot table (not compatible with Excel)

### Math

  Name and arguments                                                                                    Description or link
  ----------------------------------------------------------------------------------------------------- ------------------------------------------------------------------------------------------------------
  COUNTUNIQUE(value1, \[value2, \...\])                                                                 Counts number of unique values in a range (not compatible with Excel)
  COUNTUNIQUEIFS(range, criteria_range1, criterion1, \[criteria_range2, \...\], \[criterion2, \...\])   Counts number of unique values in a range, filtered by a set of criteria (not compatible with Excel)

### Misc

  Name and arguments                      Description or link
  --------------------------------------- -----------------------------------------------------------
  FORMAT.LARGE.NUMBER(value, \[unit\])    Applies a large number format (not compatible with Excel)
  ODOO.LIST(list_id, index, field_name)   Returns the value from a list (not compatible with Excel)
  ODOO.LIST.HEADER(list_id, field_name)   Returns the header of a list (not compatible with Excel)

### Operators

  Name and arguments           Description or link
  ---------------------------- ---------------------------------------------------------------
  ADD(value1, value2)          Sum of two numbers (not compatible with Excel)
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

### Statistical

  Name and arguments                                                                             Description or link
  ---------------------------------------------------------------------------------------------- ------------------------------------------------------------------------------------------------
  AVERAGE.WEIGHTED(values, weights, \[additional_values, \...\], \[additional_weights, \...\])   Weighted average (not compatible with Excel)
  GROWTH(known_data_y, \[known_data_x\], \[new_data_x\], \[b\])                                  Fits points to exponential growth trend (not compatible with Excel)
  MATTHEWS(data_x, data_y)                                                                       Computes the Matthews correlation coefficient of a dataset (not compatible with Excel)
  POLYFIT.COEFFS(data_y, data_x, order, \[intercept\])                                           Computes the coefficients of polynomial regression of the dataset (not compatible with Excel)
  POLYFIT.FORECAST(x, data_y, data_x, order, \[intercept\])                                      Predicts value by computing a polynomial regression of the dataset (not compatible with Excel)
  SPEARMAN(data_y, data_x)                                                                       Computes the Spearman rank correlation coefficient of a dataset (not compatible with Excel)
  TREND(known_data_y, \[known_data_x\], \[new_data_x\], \[b\])                                   Fits points to linear trend derived via least-squares (not compatible with Excel)

### Text

  Name and arguments                                            Description or link
  ------------------------------------------------------------- ----------------------------------------------------------------------------
  JOIN(delimiter, value_or_array1, \[value_or_array2, \...\])   Concatenates elements of arrays with delimiter (not compatible with Excel)




--- SOURCE: productivity/spreadsheet/work_with_data/global_filters.md ---

# Global filters

Global filters, represented by the `os-global-filters`{.interpreted-text
role="icon"} `Filters`{.interpreted-text role="guilabel"} icon at the
top right of an Odoo spreadsheet, allow you to apply one or more filters
to all the Odoo data that has been
`inserted in that spreadsheet <../insert>`{.interpreted-text
role="doc"}.

These filters are particularly useful for reports and dashboards as
users can easily and dynamically customize the view to answer complex
business questions spanning multiple data sources.

:::: tip
::: title
Tip
:::

On a dashboard, global filters that have been
`created in the underlying spreadsheet
<spreadsheet/global-filters/create>`{.interpreted-text role="ref"} are
applied via the search bar at the top of the dashboard.

![Global filters at the top of a dashboard](global_filters/dashboard-global-filters.png)
::::

Four types of global filters are available:

- `Date <spreadsheet/global-filters/create-date>`{.interpreted-text
  role="ref"}: filters data based on a specific time range, with the
  options `Month / Quarter`{.interpreted-text role="guilabel"},
  `Relative Period`{.interpreted-text role="guilabel"}, or `From /
  To`{.interpreted-text role="guilabel"}.
- `Relation <spreadsheet/global-filters/create-relation>`{.interpreted-text
  role="ref"}: filters data based on a relational field in a related
  model, e.g., by `Salesperson`{.interpreted-text role="guilabel"} with
  the *User* model set as the related model.
- `Text <spreadsheet/global-filters/create-text>`{.interpreted-text
  role="ref"}: filters data based on a string of text or a range of
  predefined values, e.g., a product reference or barcode.
- `Yes/No <spreadsheet/global-filters/create-checkbox>`{.interpreted-text
  role="ref"}: filters data based on whether or not a checkbox, or
  boolean, field is set, e.g., lead is active.

Unlike the standard `fa-filter`{.interpreted-text role="icon"}
`(Add filters)`{.interpreted-text role="guilabel"} spreadsheet function,
which lets you sort and temporarily hide data, global filters act on the
underlying `data sources
<spreadsheet/insert/data-sources>`{.interpreted-text role="ref"},
filtering data *before* it is loaded into the spreadsheet.

When a global filter is created,
`field matching <spreadsheet/global-filters/field-matching>`{.interpreted-text
role="ref"} for each data source ensures the filter acts on the correct
database `fields
</applications/studio/fields>`{.interpreted-text role="doc"}.

:::: tip
::: title
Tip
:::

\- Global filters work by adding extra conditions to the domains of all
the data sources in the spreadsheet. Therefore, if you intend to use
global filters, do not use the same conditions when configuring the
initial list, pivot table, or chart in your database. - Setting default
values, where relevant, ensures that the spreadsheet or dashboard loads
quickly and provides a useful initial view that can be further
customized if needed. For example, a `Date`{.interpreted-text
role="guilabel"} filter could be set to show data from the last 30 days
by default.
::::

## Field matching {#spreadsheet/global-filters/field-matching}

:::: important
::: title
Important
:::

This process is crucial, as matching the wrong fields, or not setting
matching fields at all, results in global filters that do not show the
desired results.
::::

To function as intended, a global filter needs to act on the correct
database fields. Consider a `Date`{.interpreted-text role="guilabel"}
filter applied to sales data. As the *Sales Order* model contains
several date fields, it is crucial to determine which field is relevant
for the filter, e.g., the order date, the delivery date, the expected
date, or the expiration date.

When
`creating a global filter <spreadsheet/global-filters/create>`{.interpreted-text
role="ref"}, the `Field
matching`{.interpreted-text role="guilabel"} section of the
`Filter properties`{.interpreted-text role="guilabel"} allows you to
determine, for each
`data source <spreadsheet/insert/data-sources>`{.interpreted-text
role="ref"} in the spreadsheet, which database field the filter should
act on, or match with.

Field matching is further explained in the relevant sections on creating
`Date <spreadsheet/global-filters/create-date>`{.interpreted-text
role="ref"},
`Relation <spreadsheet/global-filters/create-relation>`{.interpreted-text
role="ref"},
`Text <spreadsheet/global-filters/create-text>`{.interpreted-text
role="ref"}, and
`Yes/No <spreadsheet/global-filters/create-checkbox>`{.interpreted-text
role="ref"} global filters.

## Create global filters {#spreadsheet/global-filters/create}

Open the desired spreadsheet from the **Odoo Documents** app or via the
**Odoo Dashboards** app if you are adding filters to a dashboard.

To add a new filter, click `os-global-filters`{.interpreted-text
role="icon"} `Filters`{.interpreted-text role="guilabel"} to open the
`Filters`{.interpreted-text role="guilabel"} panel. Under
`Create filter`{.interpreted-text role="guilabel"}, click
`fa-calendar`{.interpreted-text role="icon"} `Date`{.interpreted-text
role="guilabel"}, `fa-link`{.interpreted-text role="icon"}
`Relation`{.interpreted-text role="guilabel"},
`fa-font`{.interpreted-text role="icon"} `Text`{.interpreted-text
role="guilabel"}, or `fa-toggle-off`{.interpreted-text role="icon"}
`Yes/No`{.interpreted-text role="guilabel"} as appropriate.

:::: note
::: title
Note
:::

Depending on the data source(s) present in the spreadsheet, suggested
`relation filters
<spreadsheet/global-filters/create-relation>`{.interpreted-text
role="ref"} may be shown. Clicking on a suggested filter opens the
`Filter properties`{.interpreted-text role="guilabel"} panel with
certain values preconfigured.
::::

When saving a global filter, if any required information is missing or
if any information provided in the
`Field matching <spreadsheet/global-filters/field-matching>`{.interpreted-text
role="ref"} section is not appropriate, an error is shown stating
`Some required fields are not valid`{.interpreted-text role="guilabel"}.

:::: tip
::: title
Tip
:::

\- To access the underlying spreadsheet of a dashboard,
`activate developer mode
<developer-mode>`{.interpreted-text role="ref"}, then click the
`fa-pencil`{.interpreted-text role="icon"} `(Edit)`{.interpreted-text
role="guilabel"} icon that appears when hovering over the dashboard name
in the left panel. - Click `fa-thumb-tack`{.interpreted-text
role="icon"} `(pin)`{.interpreted-text role="guilabel"} at the top of
the `Filters`{.interpreted-text role="guilabel"} panel to allow another
panel, such as the `Filter properties`{.interpreted-text
role="guilabel"} panel, to open beside it.
::::

### Date {#spreadsheet/global-filters/create-date}

:::: note
::: title
Note
:::

A `Date`{.interpreted-text role="guilabel"} filter can only match with a
`Date <studio/fields/simple-fields-date>`{.interpreted-text role="ref"}
or
`Date & Time <studio/fields/simple-fields-date-time>`{.interpreted-text
role="ref"} field.
::::

With the `Filter properties`{.interpreted-text role="guilabel"} panel
open:

1.  Enter a name for the new date filter in the
    `Label`{.interpreted-text role="guilabel"} field.

2.  To set a `Default value`{.interpreted-text role="guilabel"}, select
    one of the available values, e.g, [Last 30 Days]{.title-ref} or
    [Month to Date]{.title-ref}. When applying the global filter, any of
    the available values can be selected.

3.  In the `Field matching`{.interpreted-text role="guilabel"} section,
    for each data source, click beside `Date
    field`{.interpreted-text role="guilabel"} and select the field the
    filter should match with.

    The `Period offset`{.interpreted-text role="guilabel"} option, which
    appears when a date field is chosen, enables comparisons to be made
    by shifting the time range by one or more periods in the past or
    future. By default, no period offset is defined. To define a period
    offset, select `Previous`{.interpreted-text role="guilabel"} or
    `Next`{.interpreted-text role="guilabel"}, then select the desired
    number of periods in the past or future.

    :::: tip
    ::: title
    Tip
    :::

    To compare data effectively using the
    `Period offset`{.interpreted-text role="guilabel"} feature,
    `duplicate the
    relevant inserted list <spreadsheet/insert/list-duplicate>`{.interpreted-text
    role="ref"} or `pivot table
    <spreadsheet/insert/pivot-table-duplicate>`{.interpreted-text
    role="ref"}, then, when setting up field matching, set a period
    offset for the second data source but not the first.

    When applying the filter, the original list or pivot table shows
    data for the time range selected, while the second shows data for a
    period before or after that time range, as defined.
    ::::

4.  Click `Save`{.interpreted-text role="guilabel"}.

::: example
In the example below, a `Date`{.interpreted-text role="guilabel"} global
filter allows the pivot table and chart to show sales data for any
defined time period, in this case, [July 2025]{.title-ref}. The
`Custom Range`{.interpreted-text role="guilabel"} always shows the
actual dates corresponding to the chosen period; it can also be updated
directly.

![A date filter filters data for July 2025](global_filters/example-date.png)

In the `Field matching`{.interpreted-text role="guilabel"} section of
the `Filter properties`{.interpreted-text role="guilabel"}, the field
`Order Date`{.interpreted-text role="guilabel"} has been selected as the
matching date field.

![A date filter with the Order Date selected as the matching field](global_filters/field-matching-date.png)
:::

### Relation {#spreadsheet/global-filters/create-relation}

:::: note
::: title
Note
:::

A `Relation`{.interpreted-text role="guilabel"} filter can only match
with a `Many2One
<studio/fields/relational-fields-many2one>`{.interpreted-text
role="ref"}, `One2Many
<studio/fields/relational-fields-one2many>`{.interpreted-text
role="ref"}, or `Many2Many
<studio/fields/relational-fields-many2many>`{.interpreted-text
role="ref"} field.
::::

With the `Filter properties`{.interpreted-text role="guilabel"} panel
open:

1.  Enter a name for the new relation filter in the
    `Label`{.interpreted-text role="guilabel"} field.
2.  In the `Related model`{.interpreted-text role="guilabel"} field,
    start typing the model name to reveal a list of all models, then
    select the appropriate one. Once a model is selected, the
    `Default value`{.interpreted-text role="guilabel"} and
    `Possible values`{.interpreted-text role="guilabel"} fields appear,
    as well as the `Field matching`{.interpreted-text role="guilabel"}
    section.
3.  To set a `Default value`{.interpreted-text role="guilabel"}, select
    one of the available values; these are records from the model. If
    the related model is the *User* model, the option
    `Automatically filter
    on the current user`{.interpreted-text role="guilabel"} can be
    enabled.
4.  To limit the values that can be shown, enable
    `Restrict values with a domain`{.interpreted-text role="guilabel"},
    then click `Edit domain <search/custom-filters>`{.interpreted-text
    role="ref"} to add or edit rules.
5.  In the `Field matching`{.interpreted-text role="guilabel"} section,
    check if the correct matching field has been assigned for each data
    source. If this is not the case, click below the data source name to
    select the correct field.
6.  Click `Save`{.interpreted-text role="guilabel"}.

::: example
In the example below, a `Relation`{.interpreted-text role="guilabel"}
filter allows the pivot table and chart to show sales data related to
selected salespeople only. The *User* model is set as the
`Related model`{.interpreted-text role="guilabel"}.

![Relation filter set on a pivot table](global_filters/example-relation.png)

In the `Field matching`{.interpreted-text role="guilabel"} section of
the `Filter properties`{.interpreted-text role="guilabel"}, the field
`Salesperson`{.interpreted-text role="guilabel"} was automatically
assigned as the matching field for both the pivot table and the chart.

![A relation filter with the User model configured](global_filters/field-matching-relation.png)
:::

### Text {#spreadsheet/global-filters/create-text}

:::: note
::: title
Note
:::

A `Text`{.interpreted-text role="guilabel"} filter can only match with a
`Text
<studio/fields/simple-fields-text>`{.interpreted-text role="ref"}
(char),
`Integer <studio/fields/simple-fields-integer>`{.interpreted-text
role="ref"}, or
`Decimal <studio/fields/simple-fields-decimal>`{.interpreted-text
role="ref"} (float) field.
::::

With the `Filter properties`{.interpreted-text role="guilabel"} panel
open:

1.  Enter a name for the new text filter in the
    `Label`{.interpreted-text role="guilabel"} field.
2.  Optionally, enable `Restrict values to a range`{.interpreted-text
    role="guilabel"}. Doing so allows you to input a spreadsheet range
    either by typing the range or selecting it from the relevant sheet.
    The referenced range must be in the same spreadsheet.
3.  Optionally, enter a `Default value`{.interpreted-text
    role="guilabel"}.
4.  In the `Field matching`{.interpreted-text role="guilabel"} section,
    for each data source click below the data source name and select the
    field the `Text`{.interpreted-text role="guilabel"} filter should
    match with.
5.  Click `Save`{.interpreted-text role="guilabel"}.

::::: example
In the example below, a `Text`{.interpreted-text role="guilabel"} global
filter allows the pivot table and chart to show sales data only for
products whose internal reference matches or contains the entered value,
in this case, [FURN]{.title-ref}. Multiple values can be entered if
desired.

![Global filters set on a pivot table](global_filters/example-text.png)

In the `Field matching`{.interpreted-text role="guilabel"} section of
the `Filter properties`{.interpreted-text role="guilabel"}, the
`Internal Reference`{.interpreted-text role="guilabel"} of the
`Product Variant`{.interpreted-text role="guilabel"} was selected as the
matching field for both the pivot table and the chart.

![A text filter matched to the product\'s internal reference](global_filters/field-matching-text.png)

:::: tip
::: title
Tip
:::

If you selected `Restrict values to range`{.interpreted-text
role="guilabel"} when configuring the text filter and defined a range,
you select the value of the text field from a dropdown.
::::
:::::

### Yes/No {#spreadsheet/global-filters/create-checkbox}

:::: note
::: title
Note
:::

A `Yes/No`{.interpreted-text role="guilabel"} filter can only match with
a `Checkbox
<studio/fields/simple-fields-checkbox>`{.interpreted-text role="ref"}
(boolean) field.
::::

With the `Filter properties`{.interpreted-text role="guilabel"} pane
open:

1.  Enter a name for the new `Yes/No`{.interpreted-text role="guilabel"}
    filter in the `Label`{.interpreted-text role="guilabel"} field.
2.  Optionally, select `Is set`{.interpreted-text role="guilabel"} or
    `Is not set`{.interpreted-text role="guilabel"} as the
    `Default value`{.interpreted-text role="guilabel"}.
3.  In the `Field matching`{.interpreted-text role="guilabel"} section,
    for each data source, click below the data source name and select
    the field the `Yes/No`{.interpreted-text role="guilabel"} filter
    should match with.
4.  Click `Save`{.interpreted-text role="guilabel"}.

::: example
In the example below, a `Yes/No`{.interpreted-text role="guilabel"}
global filter was created to allow the user to see all active
opportunities, i.e., for which the `Active`{.interpreted-text
role="guilabel"} checkbox is enabled on the record, or all inactive
opportunities, i.e., for which the `Active`{.interpreted-text
role="guilabel"} checkbox is disabled. Leaving the filter empty shows
both active and inactive opportunities.

![Global filters set on a pivot table](global_filters/example-boolean.png)

In the `Field matching`{.interpreted-text role="guilabel"} section of
the `Filter properties`{.interpreted-text role="guilabel"}, the field
`Active`{.interpreted-text role="guilabel"} was assigned as the matching
field for the pivot table.

![A yes/no filter with the Active field set as matching field](global_filters/field-matching-checkbox.png)
:::

## Manage and use global filters {#spreadsheet/global-filters/manage}

Click the `os-global-filters`{.interpreted-text role="icon"}
`Filters`{.interpreted-text role="guilabel"} icon at the top right of an
Odoo spreadsheet to access the global filters that have been created for
that spreadsheet.

It is possible to:

- **Apply one or more global filters** by selecting appropriate values
  per filter, as relevant.

  :::: tip
  ::: title
  Tip
  :::

  Reloading the browser will cause any global filters to reset to their
  initial state or default value, as relevant. To refresh data in an
  inserted list, pivot table, or chart without losing global filters
  that have been applied, click `Data -->`{.interpreted-text
  role="menuselection"} `os-refresh-data`{.interpreted-text role="icon"}
  `Refresh all data`{.interpreted-text role="menuselection"} from the
  menu bar.
  ::::

- **Change the order** of existing filters by hovering over a filter and
  using the `os-thin-drag-handle`{.interpreted-text role="icon"}
  `(drag handle)`{.interpreted-text role="guilabel"} icon to change the
  position.

- **Clear filter values** (whether default or selected values) by
  clicking the `fa-times`{.interpreted-text role="icon"}
  `(Clear)`{.interpreted-text role="guilabel"} icon next to the value in
  the filter.

- **Edit an existing filter** by selecting the
  `fa-cog`{.interpreted-text role="icon"} `(Edit)`{.interpreted-text
  role="guilabel"} icon to open the filter\'s
  `Filter properties`{.interpreted-text role="guilabel"} then editing as
  needed.

- **Delete an existing filter** by selecting the
  `fa-cog`{.interpreted-text role="icon"} `(Edit)`{.interpreted-text
  role="guilabel"} icon to open the filter\'s
  `Filter properties`{.interpreted-text role="guilabel"} then clicking
  `Remove`{.interpreted-text role="guilabel"}.




--- SOURCE: productivity/spreadsheet/work_with_data.md ---

nosearch

:   

# Work with data

::: {.toctree titlesonly=""}
work_with_data/dynamic_pivot_tables work_with_data/functions
work_with_data/global_filters
:::




--- SOURCE: productivity/spreadsheet.md ---

nosearch

:   

show-content

:   

hide-page-toc

:   

# Spreadsheet

::: {.toctree titlesonly=""}
spreadsheet/get_started spreadsheet/insert spreadsheet/work_with_data
spreadsheet/visualize_data spreadsheet/share_collaborate
:::

**Odoo Spreadsheet** allows you to organize, manipulate, analyze, and
visualize data. It offers similar functionality to other spreadsheet
solutions with the added benefit of integrating directly with your Odoo
database.

With Odoo Spreadsheet, you can:

- `create spreadsheets <spreadsheet/get-started/create-spreadsheet>`{.interpreted-text
  role="ref"} or `upload files
  <spreadsheet/get-started/upload-files>`{.interpreted-text role="ref"}
  and open them as Odoo spreadsheets
- `create and use templates <spreadsheet/get-started/templates>`{.interpreted-text
  role="ref"}
- `use functions, including Odoo-specific functions <spreadsheet/work_with_data/functions>`{.interpreted-text
  role="doc"}
- `insert and link to Odoo data <spreadsheet/insert>`{.interpreted-text
  role="doc"}
- `create and use dynamic pivot tables <spreadsheet/work_with_data/dynamic_pivot_tables>`{.interpreted-text
  role="doc"}
- filter data across multiple Odoo data sources using `global filters
  <spreadsheet/work_with_data/global_filters>`{.interpreted-text
  role="doc"}
- visualize data using
  `charts <spreadsheet/visualize_data/charts>`{.interpreted-text
  role="doc"} and `formatting
  <spreadsheet/visualize_data/conditional_formatting>`{.interpreted-text
  role="doc"}
- `share files internally and externally <spreadsheet/share_collaborate>`{.interpreted-text
  role="doc"}

The Spreadsheet module is part of **Odoo Documents**.

:::: tip
::: title
Tip
:::

Within a spreadsheet, opening the command palette, using the
`keyboard shortcut
<../essentials/keyboard_shortcuts>`{.interpreted-text role="doc"}
[Ctrl]{.title-ref} + [K]{.title-ref} or [Command]{.title-ref} +
[K]{.title-ref}, allows you to browse and execute spreadsheet commands
via the keyboard, without having to navigate menus.
::::

:::: note
::: title
Note
:::

Odoo spreadsheets serve as the foundation for the
`dashboards available in Odoo Dashboards
<dashboards>`{.interpreted-text role="doc"}. On a dashboard, charts and
data tables are used to display dynamic Odoo data and provide an
overview of key business metrics.

`Standard, pre-configured dashboards
<dashboards/standard>`{.interpreted-text role="ref"} can be
`customized <build_and_customize_dashboards/customize>`{.interpreted-text
role="ref"} by editing the dashboard\'s underlying spreadsheet via
Dashboards. `Custom dashboards
<build_and_customize_dashboards/build>`{.interpreted-text role="ref"}
can also be created from scratch, starting from an Odoo spreadsheet; any
subsequent
`modifications <build_and_customize_dashboards/customize>`{.interpreted-text
role="ref"} are performed via Dashboards.
::::




--- SOURCE: productivity/to_do.md ---

# To-do

To-do assists you in organizing and managing personal tasks.

## Creating to-dos

To create a to-do, click `New`{.interpreted-text role="guilabel"} or the
plus button (`➕`{.interpreted-text role="guilabel"}) next to a stage
name. Add a title to your to-do, then click `Add`{.interpreted-text
role="guilabel"} to save it or `Edit`{.interpreted-text role="guilabel"}
to access more options.

If you choose to `Edit`{.interpreted-text role="guilabel"} a to-do, you
have the option to add `Tags`{.interpreted-text role="guilabel"},
`Assignees`{.interpreted-text role="guilabel"}, or more information
using the Odoo Editor.

:::: note
::: title
Note
:::

\- Adding `Assignees`{.interpreted-text role="guilabel"} shares the
to-do with the users selected. - Type [/]{.title-ref} in the editor box
to structure and format your content. You can also add media, links, and
widgets.
::::

:::: tip
::: title
Tip
:::

You can create a new to-do on the fly from anywhere in Odoo by opening
the **command palette tool** with the keyboard shortcut ´ctrl+k´ and
clicking `Add a To-Do`{.interpreted-text role="guilabel"}, or by
clicking the clock button and then `Add a To-Do`{.interpreted-text
role="guilabel"}.

![Adding a to-do on the fly](to_do/add-on-the-fly.png)
::::

### Converting to-dos into project tasks

If you use the `Project app <../services/project>`{.interpreted-text
role="doc"}, you can convert to-dos into project tasks. To do so, open a
to-do and click the gear button (`⚙`{.interpreted-text
role="guilabel"}), then `Convert to Task`{.interpreted-text
role="guilabel"}.

Next, select the `Project`{.interpreted-text role="guilabel"},
`Assignees`{.interpreted-text role="guilabel"}, and
`Tags`{.interpreted-text role="guilabel"}, then click
`Convert to Task`{.interpreted-text role="guilabel"}. The to-do is now a
project task and appears in the selected project.

![Converting a to-do into a task](to_do/convert-task-button.png)

## Managing the to-do pipeline

Your assigned **to-dos** are displayed on the app dashboard. You can
drag and drop a to-do to move it from one stage to another.

![Example of a to-do pipeline](to_do/to-do-pipeline.png)

:::: tip
::: title
Tip
:::

\- Click the `+ Personal Stage`{.interpreted-text role="guilabel"}
button on the left of the pipeline to create a new stage. - Click the
gear button (`⚙`{.interpreted-text role="guilabel"}) next to a stage to
`Fold`{.interpreted-text role="guilabel"}, `Edit`{.interpreted-text
role="guilabel"}, or `Delete`{.interpreted-text role="guilabel"} it.

![Stage settings button](to_do/stage-options.png)
::::

### Scheduling activities

To schedule an activity on a to-do, click the clock button on the app
dashboard, then the `+ Schedule an activity`{.interpreted-text
role="guilabel"} button.

![Scheduling an activity from the To-do dashboard](to_do/schedule-activity.png)

To create the activity:

- Select an `Activity Type`{.interpreted-text role="guilabel"}.
- Select a `Due date`{.interpreted-text role="guilabel"}.
- Choose who the activity should be `Assigned to`{.interpreted-text
  role="guilabel"}.
- Add a brief `Summary`{.interpreted-text role="guilabel"} if needed.
  You can add a more elaborate description in the
  `Log a note`{.interpreted-text role="guilabel"} box.

Click `Schedule`{.interpreted-text role="guilabel"} to complete the
action.

:::: note
::: title
Note
:::

The `To Do`{.interpreted-text role="guilabel"} activity is *not* a to-do
task. Selecting it does not create a to-do task.
::::

### Viewing to-dos in the Project app

If you use the `Project app <../services/project>`{.interpreted-text
role="doc"}, your to-dos also appear as private tasks under the
`My Tasks`{.interpreted-text role="guilabel"} view.

![Example of a \"My Tasks\" pipeline in the Project app](to_do/my-task-pipeline.png)

:::: note
::: title
Note
:::

A padlock icon is visible on your private tasks to quickly identify them
among your project tasks.
::::




--- SOURCE: productivity/voip/axivox/axivox_config.md ---

# VoIP services in Odoo with Axivox

## Introduction

Odoo VoIP (Voice over Internet Protocol) can be set up to work together
with [Axivox](https://www.axivox.com/). In that case, a VoIP server is
**not** necessary, as the infrastructure is hosted and managed by
Axivox.

To use this service, [contact Axivox](https://www.axivox.com/en/contact)
to open an account. Before doing so, verify that Axivox covers the
company\'s area, along with the areas the company\'s users wish to call.

## Configuration

To configure Axivox in Odoo, go to the `Apps`{.interpreted-text
role="menuselection"} application, and search for [VoIP]{.title-ref}.
Then, install the `VoIP`{.interpreted-text role="guilabel"} module.

Next, go to
`Settings app --> General Settings --> Integrations section --> VoIP`{.interpreted-text
role="menuselection"}. Click `Manage Providers`{.interpreted-text
role="guilabel"}, then `New`{.interpreted-text role="guilabel"}. Fill in
the following information:

- `Name`{.interpreted-text role="guilabel"}: type [Axivox]{.title-ref}
- `WebSocket`{.interpreted-text role="guilabel"}: type in
  [wss://pabx.axivox.com:3443]{.title-ref}
- `OnSIP Domain`{.interpreted-text role="guilabel"}: set the domain
  created by Axivox for the account (e.g.,
  [yourcompany.axivox.com]{.title-ref})
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
  `Extension number`{.interpreted-text role="guilabel"}: (Axivox)
  `SIP username`{.interpreted-text role="guilabel"}
- `OnSip Auth Username`{.interpreted-text role="guilabel"}: (Axivox)
  `SIP username`{.interpreted-text role="guilabel"}
- `VoIP Secret`{.interpreted-text role="guilabel"}: (Axivox)
  `SIP Password`{.interpreted-text role="guilabel"}
- `Call from another device`{.interpreted-text role="guilabel"}: option
  to always transfer phone calls to handset
- `External device number`{.interpreted-text role="guilabel"}: SIP
  external phone extension
- `Reject incoming calls`{.interpreted-text role="guilabel"}: option to
  reject all incoming calls
- `How to place calls on mobile`{.interpreted-text role="guilabel"}:
  method to make calls on a mobile device

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

A call queue organizes and routes incoming calls when all agents are
busy, placing callers on hold in the order they called. This system
helps manage high call volumes more efficiently, ensures fair workload
distribution, and provides a more predictable experience for both
callers and agents.

This document explains how to configure call queue settings and log into
a queue from the Odoo database.

::: seealso
`Set up on hold music <voip/axivox/music_on_hold>`{.interpreted-text
role="ref"}
:::

## Add a queue

To add a call queue in Axivox, navigate to the [Axivox management
console](https://manage.axivox.com). In the left menu, click
`Queues`{.interpreted-text role="guilabel"}. Next, click
`Add a queue`{.interpreted-text role="guilabel"}. From here, set up the
call queue.

- `Name`{.interpreted-text role="guilabel"}: The call queue\'s name. A
  required field.
- `Internal Extension`{.interpreted-text role="guilabel"}: The extension
  agents can transfer callers to. A required field.
- `Strategy`{.interpreted-text role="guilabel"}: How calls are routed.
  Choose the option that best matches the company\'s needs for this call
  queue:
  - `Call all available agents`{.interpreted-text role="guilabel"}: The
    call is sent to every agent.
  - `Calls the agent who has received the call for the longest time`{.interpreted-text
    role="guilabel"}: The call is sent to the agent with the longest
    idle time.
  - `Calls the agent who has received the least call`{.interpreted-text
    role="guilabel"}: The call is sent to the agent who has handled the
    fewest calls in a time window.
  - `Call a random agent`{.interpreted-text role="guilabel"}: The call
    is sent to a random agent.
  - `Call agents one after the other`{.interpreted-text
    role="guilabel"}: The call is sent to the next agent in a specified
    order. This order is remembered, and the order does not reset after
    each call.
  - `Call agents one after the other starting with the first in the list`{.interpreted-text
    role="guilabel"}: The call is sent to the next agent in a specified
    order. This order is remembered, and the order does reset after each
    call.
- `Maximum waiting time in seconds`{.interpreted-text role="guilabel"}:
  How long a customer can wait in the queue before getting forwarded to
  voicemail or a specific agent.
- `Maximum duration of ringing at an agent`{.interpreted-text
  role="guilabel"}: How long an individual agent\'s phone rings before
  the call gets moved onto the next step in the dial plan. Learn more
  about `dial plans
  <dial_plan_basics>`{.interpreted-text role="doc"}.
- `Static agents`{.interpreted-text role="guilabel"}: Agents in the
  queue who receive calls without logging in.
- `Dynamic agents`{.interpreted-text role="guilabel"}: Agents who must
  log into the queue to receive calls from it.

::: seealso
\- `voip/axivox/music_on_hold`{.interpreted-text role="ref"} -
`dial_plan_basics`{.interpreted-text role="doc"} -
`dial_plan_advanced`{.interpreted-text role="doc"}
:::

## Agent connection

Agents have three ways to join a call queue:

- Static agents connect automatically.
  - Static agents are always signed into the call queue.
- Manager logs in specific agents, via the [Axivox management
  console](https://manage.axivox.com).
- Agent connects to the queue in Odoo, via the **VoIP** widget.

### Connect to the queue through Axivox

Once the call queue is set up and the changes are applied, a manager can
log into the [Axivox management console](https://manage.axivox.com) and
connect dynamic agents to the queue manually.

To connect an agent, click `Queues`{.interpreted-text role="guilabel"},
located in the left-hand menu. Doing so opens the
`Queues`{.interpreted-text role="guilabel"} dashboard, with a few
different columns listed:

- `Name`{.interpreted-text role="guilabel"}: name of the queue.
- `Extension`{.interpreted-text role="guilabel"}: number of the
  extension to be dialed to reach the queue.
- `Agent Connection`{.interpreted-text role="guilabel"}: number to dial
  for dynamic agents to log into the queue.
- `Agent disconnection`{.interpreted-text role="guilabel"}: number to
  dial for dynamic agents to log out of the queue.
- `Connected Agents`{.interpreted-text role="guilabel"}: name of agents
  connected to the queue.

The following buttons are also available on the
`Queues`{.interpreted-text role="guilabel"} dashboard:

- `Connect an agent`{.interpreted-text role="guilabel"}: manually
  connect an agent to the queue.
- `Report`{.interpreted-text role="guilabel"}: run a report on the
  queue.
- `Delete`{.interpreted-text role="guilabel"}: delete the queue.
- `Edit`{.interpreted-text role="guilabel"}: make changes to the
  queue\'s settings.

When agents are connected to the queue, or are live with a customer,
they are displayed under the `Connected Agents`{.interpreted-text
role="guilabel"} column.

If they are static agents, they **always** show up as connected.

Connect an agent by clicking the orange button labeled
`Connect an agent`{.interpreted-text role="guilabel"}. Then, select the
desired agent\'s name from the drop-down menu, and click
`Connect`{.interpreted-text role="guilabel"}.

To manually log a dynamic agent out of a call queue, navigate to the
[Axivox management console](https://manage.axivox.com), and click
`Queues`{.interpreted-text role="guilabel"} from the left-hand menu.
Then, click the green `Refresh`{.interpreted-text role="guilabel"}
button at the top of the `Connected agents`{.interpreted-text
role="guilabel"} column. From here, click the red
`Disconnect`{.interpreted-text role="guilabel"} button, and they are
immediately disconnected. This can be helpful in situations where agents
forget to log out at the end of the day.

![Call queue with connected agents column highlighted and connect an agent and report buttons
highlighted.](call_queues/call-queue.png)

#### Report

Click `Report`{.interpreted-text role="guilabel"} to open a
`Queue report`{.interpreted-text role="guilabel"} page that shows queue
activity. This report includes who connected and when when, as well as
what phone calls were handled by the queue.f This information is
showcased on a separate `Queue report`{.interpreted-text
role="guilabel"} page.

Set the report\'s date in the `Period`{.interpreted-text
role="guilabel"} field. To pick a specific date range, use the
`From`{.interpreted-text role="guilabel"} and `to`{.interpreted-text
role="guilabel"} fields. The information can be organized by `Event
type`{.interpreted-text role="guilabel"} (covered below), and
`Call ID`{.interpreted-text role="guilabel"}.

Generate the report by clicking `Apply`{.interpreted-text
role="guilabel"}.

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
- `Blind Transfer`{.interpreted-text role="guilabel"} (when the caller
  is transferred without interacting with an agent)

Any or all of the thirteen options can be selected from the
`Event type`{.interpreted-text role="guilabel"} drop-down menu. Clicking
`Check all`{.interpreted-text role="guilabel"} selects all the available
options from the drop-down menu, and clicking
`Uncheck all`{.interpreted-text role="guilabel"} removes all selections
from the drop-down menu.

To select an individual `Event type`{.interpreted-text role="guilabel"},
click on the desired option in the drop-down menu.

![Axivox queue report with result, event type, and period highlighted.](call_queues/report.png)

### Connect to queue on Odoo

Dynamic agents can connect manually to the Axivox call queue from the
Odoo **VoIP** widget once the **VoIP** app is configured for the
individual user in Odoo.

To access the Odoo **VoIP** widget, click the
`oi-voip`{.interpreted-text role="icon"} `(VoIP)`{.interpreted-text
role="guilabel"} icon in the upper-right corner of the screen anywhere
in an Odoo database.

::: seealso
\- `axivox_config`{.interpreted-text role="doc"} -
`../voip_widget`{.interpreted-text role="doc"}
:::

For an agent to connect to the call queue, dial the
`Agent connection`{.interpreted-text role="guilabel"} number, and then
press the green call button `fa-phone`{.interpreted-text role="icon"}
`(phone)`{.interpreted-text role="guilabel"} icon in the **VoIP**
widget. Then, the agent hears a short, two-second message indicating the
agent is logged in. The call automatically ends.

To view the connected agents in a call queue, navigate to the [Axivox
management console](https://manage.axivox.com), and click
`Queues`{.interpreted-text role="guilabel"} from the left-hand menu.

Then, click the green `Refresh`{.interpreted-text role="guilabel"}
button at the top of the `Connected agents`{.interpreted-text
role="guilabel"} column. Any agent, static or dynamic, that is connected
to the queue currently appears in the column next to the queue they are
logged into.

To log out of the queue, open the Odoo **VoIP** widget, dial the
`Agent disconnection`{.interpreted-text role="guilabel"} number, and
then press the green call button `fa-phone`{.interpreted-text
role="icon"} `(phone)`{.interpreted-text role="guilabel"} icon. The
agent is disconnected from the queue after a short, two-second message.




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




--- SOURCE: productivity/voip/didww.md ---

# VoIP services in Odoo with DIDWW

*DIDWW* is a global *VoIP* and SIP trunking provider. An active account
with DIDWW is required to use this service.

Before creating an account with DIDWW, make sure that the company\'s
location and the applicable regions are supported by DIDWW\'s services.

## DIDWW setup

After verifying country coverage and availability, create an account
with [DIDWW](https://www.didww.com/). Then navigate to the [DIDWW
Dashboard](https://my.didww.com/#/dashboard).

To transfer existing numbers from an existing telephone network service
provider, follow the steps outlined on the [DIDWW
website](https://doc.didww.com/phone-numbers/number-porting/index.html).

### Purchase new numbers

To puchase new phone numbers, click `Buy Numbers`{.interpreted-text
role="guilabel"} in the dashboard, then follow the instructions to
complete the purchase.

When buying a new number, it **must** support both inbound calls and
Local CLI.

![The purchase dashboard in DIDWW.](didww/didww-purchase-numbers.png)

### Enable phone.systems

Next, click `Cloud Phone System`{.interpreted-text role="guilabel"} in
the dashboard sidebar. Then, click `Launch
admin UI`{.interpreted-text role="guilabel"}.

:::: important
::: title
Important
:::

The *phone.systems PBX* feature is an extra paid service in DIDWW, and
may require additional fees.
::::

To create a new user, click `Users`{.interpreted-text role="guilabel"},
click the plus sign, then enter the necessary information.

![The add a new user screen in DIDWW.](didww/add-user.png)

Click `Contact Methods`{.interpreted-text role="guilabel"}, then click
the plus sign to add a new *SIP Device Route*.

Configure or add the following parameters:

- `Allowed Codecs`{.interpreted-text role="guilabel"}:
  [OPUS]{.title-ref}, [PCMU]{.title-ref}, [PCMA]{.title-ref},
  [telephone-event]{.title-ref}, [g722]{.title-ref}, [g729]{.title-ref}.
- `Allowed media types`{.interpreted-text role="guilabel"}:
  [SRTP-DTLS]{.title-ref}
- `Default media type`{.interpreted-text role="guilabel"}:
  [SRTP-DTLS]{.title-ref}
- `Transport protocol`{.interpreted-text role="guilabel"}:
  [UDP]{.title-ref}, [TCP]{.title-ref}, [WSS]{.title-ref},
  [TLS]{.title-ref}

:::: important
::: title
Important
:::

The SRTP media encryption and TLS SIP transport are disabled by default
in DIDWW. Contact the DIDWW sales team <sales@didww.com> to allow
traffic encryption for your account.
::::

![The settings for a new contact method in DIDWW.](didww/sip-device-route.png)

:::: tip
::: title
Tip
:::

If no phone number available from drop-down selection in *Inbound and
Outbound DID/Caller ID* selection, the
`Inbound voice trunk`{.interpreted-text role="guilabel"} needs to be
modified. Navigate to the dashboard, then click
`My Numbers`{.interpreted-text role="guilabel"}. Scroll to
`Configuration`{.interpreted-text role="guilabel"}. In the `Inbound
voice trunk`{.interpreted-text role="guilabel"} field, select
`phone.systems`{.interpreted-text role="guilabel"}.
::::

Lastly, verify that the DID number is selected in the *Inbound Calls*
section of the SIP Device Route settings.

![The DID numbers field in DIDWW.](didww/did-number.png)

## Odoo setup

In *Odoo*, navigate to
`Settings app --> Integrations --> VoIP --> Manage Providers`{.interpreted-text
role="menuselection"}. Click `New`{.interpreted-text role="guilabel"}.

Enter the name, [DIDWW]{.title-ref}, then update the
`WebSocket`{.interpreted-text role="guilabel"} field with
[wss://sip.phone.systems]{.title-ref}. Under
`PBX Server IP`{.interpreted-text role="guilabel"}, enter
[sip.phone.systems]{.title-ref}.

![The VoIP providers page in Odoo.](didww/new-provider.png)

To configure a user\'s VoIP provider, click the user avatar icon in the
top-right corner of the database, and then choose
`My Preferences`{.interpreted-text role="guilabel"} from the sub-menu.
Then click into the `VoIP`{.interpreted-text role="guilabel"} tab, and
under the `Voip Provider`{.interpreted-text role="guilabel"} field,
select `DIDWW`{.interpreted-text role="guilabel"}. Finally, enter the
`Voip Username`{.interpreted-text role="guilabel"} and
`Voip Secret`{.interpreted-text role="guilabel"}, then save.

![DIDWW provider, username, and secret credentials entered.](didww/odoo-credentials.png)




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
role="guilabel"} bar, and search for [OnSIP]{.title-ref}.

Next, activate the `VOIP OnSIP`{.interpreted-text role="guilabel"}
module.

![View of OnSIP app in the app search results.](onsip/install-onsip.png){.align-center}

### Odoo VoIP setting

After installing the *VOIP OnSIP* module, go to the
`Settings app`{.interpreted-text role="menuselection"}, scroll down to
the `Integrations`{.interpreted-text role="guilabel"} section, and
locate the `VoIP`{.interpreted-text role="guilabel"} fields. Then,
proceed to fill in those three fields with the following information:

- `OnSIP Domain`{.interpreted-text role="guilabel"}: the domain that was
  assigned when creating an account on [OnSIP](https://www.onsip.com/).
- `WebSocket`{.interpreted-text role="guilabel"}:
  [wss://edge.sip.onsip.com]{.title-ref}
- `VoIP Environment`{.interpreted-text role="guilabel"}:
  `Production`{.interpreted-text role="guilabel"}

![VoIP configuration settings in Odoo Settings app.](onsip/voip-setting.png){.align-center}

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
`VoIP Configuration`{.interpreted-text role="guilabel"} section.

In this section, fill in the fields with OnSIP credentials.

Fill in the following fields with the associated credentials listed
below:

- `Voip Username`{.interpreted-text role="guilabel"} = OnSIP
  `Username`{.interpreted-text role="guilabel"}
- `OnSIP Auth Username`{.interpreted-text role="guilabel"} = OnSIP
  `Auth Username`{.interpreted-text role="guilabel"}
- `VoIP Secret`{.interpreted-text role="guilabel"} = OnSIP
  `SIP Password`{.interpreted-text role="guilabel"}

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




--- SOURCE: productivity/voip/sales_calls.md ---

# Sales calls with VoIP

Using `VoIP (Voice over Internet Protocol)`{.interpreted-text
role="abbr"} increases call efficiency, reduces costs, and allows a
salesperson to access the Odoo database while on a call. Instead of
relying on a separate phone for sales calls, a salesperson can make
calls directly from the Odoo database.

This article goes over setting up Odoo
`VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"} for
a sales team that already has
`VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"}
configured. If `VoIP (Voice over Internet Protocol)`{.interpreted-text
role="abbr"} is **not** configured, refer to the
`configure VoIP <../voip>`{.interpreted-text role="doc"} documentation
to get started.

::: seealso
[Odoo Tutorial: Sales calls with
VoIP](https://www.odoo.com/slides/slide/sales-calls-with-voip-4562)
:::

## Make a sales call

This workflow begins in the **CRM** app. As a salesperson, click into a
sales opportunity. If it does not already have a call activity
scheduled, click `Activities`{.interpreted-text role="guilabel"} in the
opportunity\'s chatter, then set the activity\'s
`Activity Type`{.interpreted-text role="guilabel"} to
`Call`{.interpreted-text role="guilabel"}, and then fill out the rest of
the activity form, and finally click `Schedule`{.interpreted-text
role="guilabel"}.

From here, there are three ways to begin a phone call with the customer:

- Hover over the `Phone`{.interpreted-text role="guilabel"} field in the
  opportunity form, then click `fa-phone`{.interpreted-text role="icon"}
  `Call`{.interpreted-text role="guilabel"}.
- In the opportunity\'s chatter, click the customer\'s phone number.
- In the upper-right corner, click the `oi-voip`{.interpreted-text
  role="icon"} `(VoIP)`{.interpreted-text role="guilabel"} icon to open
  the `VoIP (Voice over Internet Protocol)`{.interpreted-text
  role="abbr"} widget. From the `Next Activities`{.interpreted-text
  role="guilabel"} tab, select the call, and finally click the
  `fa-phone`{.interpreted-text role="icon"} `(phone)`{.interpreted-text
  role="guilabel"} icon near the bottom of the widget.

### Work during a call

Once the call with the customer begins, the salesperson can still move
about the Odoo database. Also, there are shortcut icons in the
`VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"}
widget that the salesperson can use to access common actions, like
sending an email to the customer, or pulling up their profile. Learn
more about
`the documents a salesperson can access <voip_widget>`{.interpreted-text
role="doc"} during a call.

The salesperson can also take some actions during the call:

- `fa-arrows-h`{.interpreted-text role="icon"}
  `(transfer)`{.interpreted-text role="guilabel"}: Transfer a call to
  another team member.
- `fa-microphone`{.interpreted-text role="icon"}
  `(microphone)`{.interpreted-text role="guilabel"}: The salesperson can
  mute themselves during a call.
- `fa-pause`{.interpreted-text role="icon"} `(pause)`{.interpreted-text
  role="guilabel"}: Place the caller on hold.

![The VoIP widget opened to a call, showing the shortcut icons a salesperson has access to.](sales_calls/voip-widget-call.png)

### Handle call follow-ups

The `VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"}
widget can handle some common follow-up tasks, but salespeople can still
navigate Odoo for tasks not available in the widget.

Here are some of the common follow-up tasks that can be managed from the
`VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"}
widget:

- Send a follow-up email sharing new product offerings to the customer
  using the `fa-envelope`{.interpreted-text role="icon"}
  `(envelope)`{.interpreted-text role="guilabel"} icon.
- Update the customer\'s mailing address by clicking on the
  `fa-user`{.interpreted-text role="icon"} `(user)`{.interpreted-text
  role="guilabel"} icon, which opens their profile.
- Schedule a second call with the customer by clicking the
  `fa-clock-o`{.interpreted-text role="icon"}
  `(clock)`{.interpreted-text role="guilabel"} icon, setting the
  `Activity Type`{.interpreted-text role="guilabel"} field to
  `Call`{.interpreted-text role="guilabel"}, and then filling out the
  rest of the form.

### Send a quotation while on a call

If the customer is ready to see a sales quotation while on the call, the
salesperson can send that quotation without leaving the call.

To send a quotation while on a call, the salesperson should be in the
sales opportunity they initiated the call from. From here, they will
`send the quotation as they normally would
<../../sales/sales/sales_quotations/create_quotations>`{.interpreted-text
role="doc"}.

An added benefit of being on the call with the customer while the
salesperson is sending the quotation is that any specific questions are
answered in real-time.

### End the sales call

When it is time to end the call, the salesperson clicks the red
`fa-phone`{.interpreted-text role="icon"} `(phone)`{.interpreted-text
role="guilabel"} icon in the lower-right corner of the
`VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"}
widget. When they do, the call is logged in the opportunity\'s chatter.

If they have not done so already, the salesperson then marks the phone
call activity as done. To do so, navigate to the opportunity\'s chatter
and find the `Planned Activities`{.interpreted-text role="guilabel"}
section, then click `fa-check`{.interpreted-text role="icon"}
`Mark Done`{.interpreted-text role="guilabel"} on the planned call to
remove it from the `Next Activities`{.interpreted-text role="guilabel"}
tab in the `VoIP (Voice over Internet Protocol)`{.interpreted-text
role="abbr"} widget.




--- SOURCE: productivity/voip/support_calls.md ---

# Support calls with VoIP

A useful tool for support teams, Odoo
`VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"} is
used as a way to get in contact with customers that need some help.
Using `VoIP (Voice over Internet Protocol)`{.interpreted-text
role="abbr"} can help improve customer satisfaction, reduce support
costs, and allows support agents to navigate an Odoo database while on a
call.

Instead of being tied to their desks, support agents can take calls from
anywhere they have access to Odoo `VoIP <../voip>`{.interpreted-text
role="doc"}.

:::: important
::: title
Important
:::

This feature requires at least one
`call queue <axivox/call_queues>`{.interpreted-text role="doc"} to be
configured.
::::

::: seealso
[Odoo Tutorial: Working as a Support
Agent](https://www.odoo.com/slides/slide/working-as-a-support-agent-odoo-voip-4617)
:::

## Log into a support queue

If `call queues <axivox/call_queues>`{.interpreted-text role="doc"} are
set up, begin a support shift by logging into a call queue.

Begin by clicking `oi-voip`{.interpreted-text role="icon"}
`(VoIP)`{.interpreted-text role="guilabel"} in the top-right corner of
the Odoo database. From there, click `fa-keyboard-o`{.interpreted-text
role="icon"} `(keyboard)`{.interpreted-text role="guilabel"}, then dial
the *agent connection* number and click `fa-phone`{.interpreted-text
role="icon"} `(phone)`{.interpreted-text role="guilabel"}.

Once the support agent calls their *agent connection code*, they\'ll
hear a short message letting them know they are logged into the queue.
From here, the agent receives support calls according to the
administrator\'s
`call queue strategy <axivox/call_queues>`{.interpreted-text
role="doc"}. When a support agent receives a call, the Odoo
`VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"}
widget appears in the bottom-right corner of their screen with the
caller\'s phone number, as well as their name if the number is tied to a
customer profile.

:::: note
::: title
Note
:::

When support staff are added as
`static agents <axivox/call_queues>`{.interpreted-text role="doc"} to a
call queue, they do not need to log into the queue to receive calls from
that queue.
::::

## Call a customer from a support ticket

As part of a support agent\'s daily tasks, they might be asked to call
customers with open support tickets. With Odoo
`VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"},
the support agent can stay in the Odoo database throughout the entire
workflow.

From the database\'s home page, click the **Helpdesk** app, click into a
helpdesk, and then open a ticket. If the ticket does not already have a
call activity scheduled, click `Activities`{.interpreted-text
role="guilabel"} in the ticket\'s chatter, then set the activity\'s
`Activity Type`{.interpreted-text role="guilabel"} to
`Call`{.interpreted-text role="guilabel"}, and then fill out the rest of
the activity form, and finally click `Schedule`{.interpreted-text
role="guilabel"}.

![Scheduling a call activity for a support ticket.](support_calls/create-call-activity.png)

From here, the agent has three ways to make a call:

- Hover over the `Phone`{.interpreted-text role="guilabel"} field in the
  ticket, then click `fa-phone`{.interpreted-text role="icon"}
  `Call`{.interpreted-text role="guilabel"}.
- In the ticket\'s chatter, click the customer\'s phone number.
- In the upper-right corner, click the `oi-voip`{.interpreted-text
  role="icon"} `(VoIP)`{.interpreted-text role="guilabel"} icon to open
  the `VoIP (Voice over Internet Protocol)`{.interpreted-text
  role="abbr"} widget. From the `Next Activities`{.interpreted-text
  role="guilabel"} tab, select the call, and finally click the
  `fa-phone`{.interpreted-text role="icon"} `(phone)`{.interpreted-text
  role="guilabel"} icon near the bottom of the widget.

### Work during a call

Once the call with the customer begins, the support agent can still move
about the Odoo database. Also, there are shortcut icons in the
`VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"}
widget that the support agent can use to access common actions, like
sending an email to the customer, or pulling up their profile. Learn
more about
`the documents a support agent can access <voip_widget>`{.interpreted-text
role="doc"} during a call.

The support agent can also take some actions during the call:

- `fa-arrows-h`{.interpreted-text role="icon"}
  `(transfer)`{.interpreted-text role="guilabel"}: Transfer a call to
  another team member.
- `fa-microphone`{.interpreted-text role="icon"}
  `(microphone)`{.interpreted-text role="guilabel"}: The support agent
  can mute themselves during a call.
- `fa-pause`{.interpreted-text role="icon"} `(pause)`{.interpreted-text
  role="guilabel"}: Place the caller on hold.

### Handle call follow-ups

The `VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"}
widget can handle some common follow-up tasks, but support agents can
still navigate Odoo for tasks not available in the widget.

Here are some of the common follow-up tasks that can be managed from the
`VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"}
widget:

- Send a follow-up email sharing troubleshooting steps with the customer
  using the `fa-envelope`{.interpreted-text role="icon"}
  `(envelope)`{.interpreted-text role="guilabel"} icon.
- Update the customer\'s mailing address by clicking on the
  `fa-user`{.interpreted-text role="icon"} `(user)`{.interpreted-text
  role="guilabel"} icon, which opens their profile.
- Schedule a second call with the customer by clicking the
  `fa-clock-o`{.interpreted-text role="icon"}
  `(clock)`{.interpreted-text role="guilabel"} icon, setting the
  `Activity Type`{.interpreted-text role="guilabel"} field to
  `Call`{.interpreted-text role="guilabel"}, and then filling out the
  rest of the form.

### End the support call

When it is time to end the call, the support agent clicks the red
`fa-phone`{.interpreted-text role="icon"} `(phone)`{.interpreted-text
role="guilabel"} icon in the lower-right corner of the
`VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"}
widget. When they do, the call is logged in the ticket\'s chatter.

If they have not done so already, the support agent then marks the phone
call activity as done. To do so, navigate to the ticket\'s chatter and
find the `Planned Activities`{.interpreted-text role="guilabel"}
section, then click `fa-check`{.interpreted-text role="icon"}
`Mark Done`{.interpreted-text role="guilabel"} on the planned call to
remove it from the `Next Activities`{.interpreted-text role="guilabel"}
tab in the `VoIP (Voice over Internet Protocol)`{.interpreted-text
role="abbr"} widget.

## Log out of a support queue

Once the agent\'s shift ends, or if they are taking a break, they can
log out of the support call queue.

Begin by clicking `oi-voip`{.interpreted-text role="icon"}
`(VoIP)`{.interpreted-text role="guilabel"} in the top-right corner of
the Odoo database. From there, click `fa-keyboard-o`{.interpreted-text
role="icon"} `(keyboard)`{.interpreted-text role="guilabel"}, then dial
the *agent disconnection* number and click `fa-phone`{.interpreted-text
role="icon"} `phone`{.interpreted-text role="guilabel"}.

Once the support agent calls their *agent disconnection code*, they\'ll
hear a short message letting them know they are logged out of the queue.
From here, the agent will no longer receive support calls until they log
back in.




--- SOURCE: productivity/voip/voip_widget.md ---

# VoIP actions

The `VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"}
widget is an add-on made available to Odoo users by installing the
`VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"}
module. Instead of managing mobile devices for every salesperson,
fumbling through call transfers for upset customers, or needing a
meeting room to handle a conference call, utilize the
`VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"}
widget to tackle any of these business needs.

## Navigate the VoIP widget

The `VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"}
widget contains three tabs: `Recent`{.interpreted-text role="guilabel"},
`Next Activities`{.interpreted-text role="guilabel"}, and
`Contacts`{.interpreted-text role="guilabel"}, which are used for
managing calls and day-to-day activities in Odoo. Use the search bar to
find contacts faster.

![VoIP tabs that can be clicked on.](voip_widget/voip-tabs.png)

### Recent tab

Under the `Recent`{.interpreted-text role="guilabel"} tab of the
`VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"}
widget, the call history for the user is available. This includes
incoming and outgoing calls. Any number can be clicked to begin a call.

### Next activities tab

Under the `Next Activities`{.interpreted-text role="guilabel"} tab of
the `VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"}
widget, a user can see any calls assigned to them, and which ones are
due to be completed for the day.

Click an activity from this tab to perform any of these actions to
prepare for and complete (found under the **Documents** heading):

- `fa-envelope`{.interpreted-text role="icon"}
  `(envelope)`{.interpreted-text role="guilabel"}: send an email to a
  contact (e.g., coworkers or clients)
- `fa-user`{.interpreted-text role="icon"} `(user)`{.interpreted-text
  role="guilabel"}: shows the contact information for this contact
- `fa-file-text-o`{.interpreted-text role="icon"}
  `(documents)`{.interpreted-text role="guilabel"}: shows the attached
  record in Odoo (like sales orders)
- `fa-clock-o`{.interpreted-text role="icon"}
  `(Activities)`{.interpreted-text role="guilabel"}: schedule an
  activity

When viewing the activity, the user can also manage the activity\'s
details and status:

- `fa-check`{.interpreted-text role="icon"} `(check)`{.interpreted-text
  role="guilabel"}: marks the activity as complete
- `fa-pencil`{.interpreted-text role="icon"} `(edit)`{.interpreted-text
  role="guilabel"}: edits the activity (like its due date)
- `oi-close`{.interpreted-text role="icon"} `(close)`{.interpreted-text
  role="guilabel"}: cancels the activity

To call the customer related to a scheduled activity, click the
`fa-phone`{.interpreted-text role="icon"} `(phone)`{.interpreted-text
role="guilabel"} icon. Click the `fa-keyboard-o`{.interpreted-text
role="icon"} `(keyboard)`{.interpreted-text role="guilabel"} icon to
dial another number.

#### Add a call

From the database home page, click `CRM app`{.interpreted-text
role="menuselection"}. On the `Pipeline`{.interpreted-text
role="guilabel"}, make sure it is open to the Kanban view. Next, near
the top of the screen, click the `oi-voip`{.interpreted-text
role="icon"} `VoIP`{.interpreted-text role="guilabel"} icon and make
sure the `VoIP (Voice over Internet Protocol)`{.interpreted-text
role="abbr"} widget is opened to the `Next Activites`{.interpreted-text
role="guilabel"} tab. After that, hover over the opportunity that should
have a call and click the `fa-phone`{.interpreted-text role="icon"}
`(phone)`{.interpreted-text role="guilabel"} with the small green
`fa-plus`{.interpreted-text role="icon"} `plus`{.interpreted-text
role="guilabel"} icon.

![A sales opportunity with the option to add a call to the VoIP widget.](voip_widget/add-call.png)

To remove a call from the `Next activities`{.interpreted-text
role="guilabel"} tab, hover over the opportunity that has a call
scheduled, and click the red `fa-phone`{.interpreted-text role="icon"}
`(phone)`{.interpreted-text role="guilabel"} icon that appears with the
`fa-minus`{.interpreted-text role="icon"} `(minus)`{.interpreted-text
role="guilabel"} icon.

![A sales opportunity with the option to remove a call from the VoIP widget.](voip_widget/remove-call.png)

### Contacts tab

Under the `Contacts`{.interpreted-text role="guilabel"} tab of the
`VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"}
widget, a user can access a contact in the **Contacts** app.

Any contact that has a saved phone number can be called by clicking into
the contact from the
`VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"}
widget\'s `Contacts`{.interpreted-text role="guilabel"} tab.

A search feature is also available at the top of the widget, represented
by a `fa-search`{.interpreted-text role="icon"}
`(search)`{.interpreted-text role="guilabel"} icon. Use this tool to
find a specific contact. Scheduled activities will not appear as search
results.

## Make a phone call with VoIP

One of the primary purposes of
`VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"} is
to make phone calls without needing a phone. Here are the three ways to
make a phone call in the Odoo database. First, click the
`oi-voip`{.interpreted-text role="icon"} `(VoIP)`{.interpreted-text
role="guilabel"} icon, located in the top-right of the navigation bar.
From here:

- Enter the phone number to be called by clicking the
  `fa-keyboard-o`{.interpreted-text role="icon"}
  `(keyboard)`{.interpreted-text role="guilabel"} icon, and then
  entering the phone number.
- Click the `fa-phone`{.interpreted-text role="icon"}
  `(phone)`{.interpreted-text role="guilabel"} icon to redial the last
  called contact.
- Search for a specific contact\'s name or go to the
  `Contacts`{.interpreted-text role="guilabel"} tab. Then, select the
  contact and click the `fa-phone`{.interpreted-text role="icon"}
  `(phone)`{.interpreted-text role="guilabel"} icon.

When receiving calls in Odoo, the
`VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"}
widget rings, and displays a notification. To close the widget, click
the `oi-close`{.interpreted-text role="icon"}
`(close)`{.interpreted-text role="guilabel"} icon in the upper-right of
the widget\'s screen.

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

### Transfer a phone call

Manually transferring a call only happens when on a call. To transfer a
call within the `VoIP (Voice over Internet Protocol)`{.interpreted-text
role="abbr"} widget, first, answer the call using the green
`fa-phone`{.interpreted-text role="icon"} `(phone)`{.interpreted-text
role="guilabel"} icon.

Once the incoming call is answered, click the
`fa-arrows-h`{.interpreted-text role="icon"}
`(left-right arrows)`{.interpreted-text role="guilabel"} icon. Then,
enter the extension of the user the call should be forwarded to.
Finally, click `Transfer`{.interpreted-text role="guilabel"} to route
the call to that phone number.

:::: tip
::: title
Tip
:::

To find the extension for a user, consult the
`VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"}
administrator. If the user has `Administration`{.interpreted-text
role="guilabel"} access rights set to `Settings`{.interpreted-text
role="guilabel"}, find extensions by going to
`Settings app`{.interpreted-text role="menuselection"} and click the
`fa-arrow-right`{.interpreted-text role="icon"}
`Manage Users`{.interpreted-text role="guilabel"} button. Select the
user, and go to the `VoIP`{.interpreted-text role="guilabel"} tab. That
user\'s extension is their `VoIP username`{.interpreted-text
role="guilabel"}.
::::

If the user does not pick up the call or is busy with another call, then
calls can be automatically transferred. This gets configured with the
`VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"}
service provider.

### Forward a phone call

To forward a call within the
`VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"}
widget, first, answer the call using the green
`fa-phone`{.interpreted-text role="icon"} `(phone)`{.interpreted-text
role="guilabel"} icon.

Then, click the `fa-arrows-h`{.interpreted-text role="icon"}
`(left-right arrows)`{.interpreted-text role="guilabel"} icon. Enter the
full phone number of the user the call should be forwarded to. Finally,
click `Transfer`{.interpreted-text role="guilabel"} to route the call to
that phone number.

## Send an email through the VoIP widget

Emails can also be sent through the
`VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"}
widget. This is helpful for sending follow-up emails to the call
participants, emailing a question to a coworker, or reminding a vendor
to send over some components during a check-in call.

To send an email through the
`VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"}
widget, click the `oi-voip`{.interpreted-text role="icon"}
`(VoIP)`{.interpreted-text role="guilabel"} icon, located in the top
navigation bar. When this is clicked, the
`VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"}
widget will appear in the bottom-left corner of the page. Then, search
for a contact to email or find them in the `Contacts`{.interpreted-text
role="guilabel"} tab of the
`VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"}
widget.

Next, click the `fa-envelope-o`{.interpreted-text role="icon"}
`(envelope)`{.interpreted-text role="guilabel"} icon, and then select
the email recipients, enter the email\'s subject line, and write the
email. When it is ready to be sent, click `Send`{.interpreted-text
role="guilabel"}. To schedule an email to send later, click the
`fa-caret-down`{.interpreted-text role="icon"}
`(dropdown)`{.interpreted-text role="guilabel"} icon next to
`Send`{.interpreted-text role="guilabel"}, click
`Send Later`{.interpreted-text role="guilabel"}, pick the scheduled
time, and click `Schedule`{.interpreted-text role="guilabel"}.

## Troubleshooting the VoIP widget {#voip/voip_widget/troubleshooting_voip}

Each section below goes through common issues with the
`VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"}
widget and how to resolve them.

### Missing parameter

If a *Missing Parameter* error message appears in the
`VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"}
widget, refresh the window, and try again.

### Incorrect number

If an *Incorrect Number* error message appears in the
`VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"}
widget, make sure to use the international format, leading with the
`fa-plus`{.interpreted-text role="icon"} `(plus)`{.interpreted-text
role="guilabel"}, followed by the international country code (e.g.,
+16506913277, where [+1]{.title-ref} is the international prefix for the
United States.)

### The websocket connection with the server has been lost

If a *The websocket connection with the server has been lost. Please try
to refresh the page.* error message appears in the
`VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"}
widget, then refresh the page close other browser tabs.

This error is caused by returning to the database after a period of
inactivity, like lunch, or if there are too many browser tabs open.

### Failed to start the user agent

If a *Failed to start the user agent. The URL of the websocket may be
wrong. Please have an administrator verify the websocket server URL in
the General Settings.* error message appears in the
`VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"}
widget, then update the browser and computer.

This error is caused by the browser or computer not being up-to-date
(and can also cause issues with the microphone).

### Grayed-out VoIP widget

If the `VoIP (Voice over Internet Protocol)`{.interpreted-text
role="abbr"} widget is completely grayed out and cannot be interacted
with, then update the browser and computer, and delete the Google Chrome
extension causing the problem.

### Cannot connect to the VoIP phone number

If the user cannot connect to their
`VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"}
phone number, then their Odoo profile is missing their
`Voip Secret`{.interpreted-text role="guilabel"}. To add this, click the
user avatar, and then click `My Profile`{.interpreted-text
role="guilabel"}. From here, click the `VoIP`{.interpreted-text
role="guilabel"} tab, and then enter the user\'s
`Voip Secret`{.interpreted-text role="guilabel"}. This is the user\'s
password to their account for their
`VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"}
service provider.




--- SOURCE: productivity/voip.md ---

show-content

:   

# VoIP (Voice over Internet Protocol)

`VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"} in
Odoo enables businesses to handle calls over the internet by integrating
directly with Odoo apps like **CRM**, **Helpdesk**, and more. Calls and
messages are logged within these apps, keeping records linked to
customer interactions.

::: seealso
[Odoo Tutorials:
VoIP](https://www.odoo.com/slides/voip-voice-over-ip-315)
:::

Users can make and receive calls, track communication history, and
automate call routing based on predefined rules. Features like call
recording and analytics provide insights into call volume and response
times, helping teams track communication efficiency.

:::: {.cards target="voip/voip_widget" large=""}
.. card:: VoIP actions

Get oriented with the features of the VoIP widget, like what actions can
be taken during a call.

::: card
Devices and integrations
:::

target
:   voip/devices_integrations

large

:   

Learn about accessing the VoIP widget from different devices (like
phones) and apps (like Linphone).
::::

## VoIP terms

- **VoIP**: Voice over Internet Protocol. Technology that is used to
  handle calls that are not made from a phone line.
- **SIP**: Session Initiation Protocol. Technology included in
  `VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"}
  that specifically handles the setup, management, and termination of
  calls.
- **Call queue**: A system to route calls (usually in a support team).
  This allows customers to wait for help if no support agents are
  available.
- **Dial plans**: A system to define how
  `VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"}
  calls are routed, based on set rules.

## Configure VoIP

To use `VoIP (Voice over Internet Protocol)`{.interpreted-text
role="abbr"}, first `install <general/install>`{.interpreted-text
role="ref"} the `VoIP`{.interpreted-text role="guilabel"} module.

Once the module is installed, a `oi-voip`{.interpreted-text role="icon"}
(`VoIP`{.interpreted-text role="guilabel"}) icon will appear at the top
of the screen. This is where phone calls are made from within Odoo. When
this icon is clicked, a
`VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"}
pop-up widget appears on the screen, and is where emails can be sent,
user and employee info can be edited, and activities can be managed.
While this pop-up widget is open, the user can navigate through their
Odoo apps.

Using `VoIP (Voice over Internet Protocol)`{.interpreted-text
role="abbr"} also requires a service provider. The next section explains
how to connect a service provider to the Odoo database.

### VoIP providers

While `VoIP (Voice over Internet Protocol)`{.interpreted-text
role="abbr"} setup is minimal in Odoo, most configuration happens in the
external `VoIP (Voice over Internet Protocol)`{.interpreted-text
role="abbr"} service provider. Two verified providers are
`OnSIP <voip/onsip>`{.interpreted-text role="doc"} and
`Axivox <voip/axivox>`{.interpreted-text role="doc"}. Click on the cards
below to learn how to configure these service providers in the Odoo
database. If these providers cannot be used, an alternate provider must
meet these requirements to connect with Odoo:

- `VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"}
  host must provide access to a SIP server via a websocket connection
- `VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"}
  host must support WebRTC protocol

To add the credentials for the alternate provider, go to the
**Settings** app and search for [VoIP]{.title-ref}. In the
`Integrations`{.interpreted-text role="guilabel"} section under
`VoIP`{.interpreted-text role="guilabel"}, click
`Manage Providers`{.interpreted-text role="guilabel"}. And then, click
`New`{.interpreted-text role="guilabel"} and enter the requested
information (like the websocket\'s URL). Note that the
`OnSIP Domain`{.interpreted-text role="guilabel"} field is where the
domain created by the alternate provider goes.

If any issues with the
`VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"}
service provider are encountered, then reach out to their support team.
If any issues when setting up the
`VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"}
service provider are encountered in Odoo, then follow the
`relevant troubleshooting steps <voip/voip_widget/troubleshooting_voip>`{.interpreted-text
role="ref"}.

:::: warning
::: title
Warning
:::

Odoo **cannot** verify that every alternate provider is compatible with
Odoo\'s systems. However, if the above requirements are met, then no
issues should be found.
::::

:::: {.cards target="voip/axivox" large=""}
.. card:: Axivox configuration

Learn how to set up Axivox in Odoo. This includes adding users to
Axivox, setting up call queues, and more.

::: card
OnSIP configuration
:::

target
:   voip/onsip

large

:   

Learn how to set up OnSIP in Odoo. This includes entering OnSIP
credentials into Odoo and handling troubleshooting.
::::

## VoIP workflows

> Here are a few commonly used workflows for Odoo
> `VoIP (Voice over Internet Protocol)`{.interpreted-text role="abbr"}.
> This technology is especially popular with sales teams and support
> teams, but can be useful for other teams as well.

:::: {.cards target="voip/sales_calls" large=""}
.. card:: Sales teams and VoIP

Learn how to use VoIP for a sales team. This includes making sales
calls, handling follow-ups, and sending a sales quotation while on a
call.

::: card
Support queues and VoIP
:::

target
:   voip/support_calls

large

:   

Learn how to use VoIP for a support team. This includes joining a call
queue as an agent and handling support tickets that require calls.
::::

::: {.toctree titlesonly=""}
voip/onsip voip/axivox voip/didww voip/voip_widget
voip/devices_integrations voip/sales_calls voip/support_calls
:::




--- SOURCE: productivity/whatsapp.md ---

# WhatsApp

**WhatsApp** is an instant messaging and voice-over-IP app that allows
users to send messages, make calls, and share content. Businesses can
use [WhatsApp
Business](https://developers.facebook.com/products/whatsapp/) to
communicate with their customers by text, send documents and provide
support.

:::: warning
::: title
Warning
:::

WhatsApp is an Odoo Enterprise-only application that does not work in
Odoo Community edition. To sign up for Odoo Enterprise edition, click
here: [Odoo Free Trial](https://www.odoo.com/trial).
::::

::: seealso
For more information on migrating from Odoo Community version to Odoo
Enterprise version see this documentation:
`/administration/on_premise/community_to_enterprise`{.interpreted-text
role="doc"}.
:::

With the **Odoo WhatsApp** app, a company can connect a WhatsApp
Business Account (WABA) to an Odoo database, which allows for the
following:

- Receive and reply to WhatsApp messages directly from an Odoo database
- Create new templates with dynamic placeholders/variables
- Send pre-approved templates that use dynamic variables, such as:
  - Quotations from the **Sales** app
  - Receipts and invoices from the **Point of Sale** app
  - Tickets from the **Events** app

::: seealso
\- [Meta Business: create message templates for the WhatsApp Business
account](https://www.facebook.com/business/help/2055875911147364). -
[Meta Business: connect a phone number to the WhatsApp Business
account](https://www.facebook.com/business/help/456220311516626). -
[Meta Business: change the WhatsApp Business display
name](https://www.facebook.com/business/help/378834799515077).
:::

WhatsApp is a messaging service operated by Meta, which is the parent
company of Facebook. WhatsApp is commonly used as a communication tool
in many countries and by many businesses. This documentation will cover
the integration of a WhatsApp Business Account with Odoo. The company\'s
Meta account is configured in Odoo via an
`API (Application Programming Interface)`{.interpreted-text role="abbr"}
connection.

The WhatsApp connector supports two flows: company initiated, and
customer initiated. A company can initiate a discussion by sending a
template to one or more people. Once the template is sent, the recipient
can answer in order to trigger a discussion between the sender and the
receiver (a **Discuss** chat window appears if the customer answers
within 15 days).

If the discussion is initiated by the client (e.g. by sending to the
company\'s public WhatsApp number), then Odoo will open a group chat
with all operators responsible for this WhatsApp channel.

:::: tip
::: title
Tip
:::

It is recommended to set up multiple WhatsApp accounts for different
departments. For example, the help desk team and sales teams can chat on
different channels.
::::

::: seealso
[Magic Sheet - WhatsApp configuration
\[PDF\]](https://drive.google.com/drive/folders/1hHEYq6jxmqKGFOeM3UQ7vOfiF7KuGX5W)
:::

## WhatsApp configuration in Meta

A WhatsApp integration with Odoo uses a standard
`API (Application Programming Interface)`{.interpreted-text role="abbr"}
connection, and is configured on Meta in the following steps:

1.  Create a Meta business account
2.  Create a Meta developer account
3.  Setup an *app* and WhatsApp *product* on Meta\'s developer console
4.  Test the API connection.

Once connected, messages are then sent and received through Odoo\'s
*Discuss* application using the WhatsApp
`API (Application Programming Interface)`{.interpreted-text
role="abbr"}.

### Meta business account setup

To create a Business account with Meta (owner of Facebook) navigate to:
[Facebook Business Manager](https://business.facebook.com/overview).
Begin by clicking `Create account`{.interpreted-text role="guilabel"}
and then enter the business name, the administrator\'s name, and a work
email address. Then click `Next`{.interpreted-text role="guilabel"}, and
a pop-up window will appear prompting to confirm the email address.
After confirming, click `Done`{.interpreted-text role="guilabel"} to
close the window.

Next, follow the instructions in the email sent by Facebook to confirm
the creation of the business account and to complete the setup process.

::: seealso
[Set up a Meta business
account](https://www.facebook.com/business/help/1710077379203657?id=180505742745347).
:::

:::: important
::: title
Important
:::

If the business account is linked to a personal Facebook account then
the administrator must toggle between the personal account to the
business account for the remainder of the configuration.

To toggle to the business account navigate to the [Facebook Developer
Console](https://developers.facebook.com) and click on the *account
name* in the upper right corner. Under the
`Business Accounts`{.interpreted-text role="guilabel"} heading, click on
the desired business that the WhatsApp configuration should take place
in. This is the account for which Odoo will send and receive WhatsApp
messages.

![Toggle between Meta personal and business accounts.](whatsapp/toggle.png)
::::

:::: important
::: title
Important
:::

In order to create a Meta business account, the user must already have a
personal Facebook account that has existed for a minimum of one hour
prior to setting up the Facebook Business account. Trying to create the
business account prior to this time will result in an error.
::::

### App creation

On the [Meta for Developers](https://developers.facebook.com) dashboard,
sign in with the Meta developer account. If no account is configured
yet, link a Facebook account to create a Meta developer account.

:::: note
::: title
Note
:::

A Facebook *developer* account is different than a Facebook *business*
account. While developer accounts are made up of personal Facebook
accounts, business accounts are **not** as they represent a business and
manage all of the business\'s assets in Meta, such as apps.
::::

::: seealso
[Set up the WhatsApp Business
Platform](https://www.facebookblueprint.com/student/collection/409587/path/360218).
:::

Click on `My Apps`{.interpreted-text role="guilabel"} in the top-right
corner after successfully signing in to the Meta developer account. This
will redirect the administrator to all the apps the developer has
configured in this specific developer account. Click on
`Create App`{.interpreted-text role="guilabel"} to begin the process of
configuring a new Meta application.

### App type

On the `Create an app`{.interpreted-text role="menuselection"} page,
select `Other`{.interpreted-text role="guilabel"} under the section
labeled, `Looking for something else?`{.interpreted-text
role="guilabel"}, and then click `Next`{.interpreted-text
role="guilabel"} to be directed to another page in order to select the
app type. Then, click on the first option listed under the
`Select an app type`{.interpreted-text role="guilabel"} label, titled
`Business`{.interpreted-text role="guilabel"}. This selection allows for
the creation and management of the WhatsApp
`API (Application Programming Interface)`{.interpreted-text
role="abbr"}.

Now, click `Next`{.interpreted-text role="guilabel"} to configure the
app, as desired. When the app *type* has been configured, the
administrator will move onto the app *details* section.

### App details

On the `Details`{.interpreted-text role="guilabel"} section of the
`Create an app`{.interpreted-text role="guilabel"} process, enter
[Odoo]{.title-ref} in the field under the
`Add an app name`{.interpreted-text role="guilabel"} label.

:::: note
::: title
Note
:::

The app name can be changed at a later time in the settings, if
necessary.
::::

:::: warning
::: title
Warning
:::

Trademarks and branded elements may not be used in this text section.
These include the Meta group of companies. Do not include the word:
[WhatsApp]{.title-ref} or the system will flag this in error.
::::

Next, enter the developer email address in the field under the
`App contact email`{.interpreted-text role="guilabel"} label.

Lastly, set the `Business Account - Optional`{.interpreted-text
role="guilabel"} field to the Meta business account profile, using the
drop-down menu. To finish, click `Create app`{.interpreted-text
role="guilabel"}. This action will create the app and prompts the *Meta
Platform Terms* and *Developer Policies* agreements.

To accept the agreements, enter the Facebook password for security
purposes, and click `Submit`{.interpreted-text role="guilabel"} to
finalize the app creation. The browser will then direct to the `Meta
for Developers`{.interpreted-text role="guilabel"} dashboard.

:::: note
::: title
Note
:::

If the Meta business account is prohibited from advertising, claiming an
app is not allowed. To resolve this issue navigate to
<https://business.facebook.com/business> for assistance.

For more information, see [Meta\'s documentation on advertising
restrictions](https://www.facebook.com/business/help/975570072950669).
::::

### Add a WhatsApp product to the app

Now that the basic structure of the app has been created, a product will
need to be added to the app. Begin by accessing the Meta app dashboard
by navigating to <https://developers.facebook.com/apps>, and clicking on
the app that is being configured.

On the next page: since WhatsApp is used, click
`Set up`{.interpreted-text role="guilabel"} next to the box containing
WhatsApp, located towards the bottom of the page.

::: seealso
[Meta\'s WhatsApp developer
documentation](https://developers.facebook.com/docs/whatsapp/).
:::

The page then directs to the configuration page for the
`WhatsApp Business Platform API`{.interpreted-text role="guilabel"}. Use
the drop-down menu to select the Meta business to be configured for the
`Select a Meta
Business Account`{.interpreted-text role="guilabel"} option, and then
click `Continue`{.interpreted-text role="guilabel"} to confirm the
selection.

:::: note
::: title
Note
:::

When `Continue`{.interpreted-text role="guilabel"} is clicked, the
administrator agrees to Meta\'s terms and conditions as linked on the
`Meta App Dashboard`{.interpreted-text role="guilabel"}.
::::

:::: note
::: title
Note
:::

Once the WhatsApp product is added to the app, Meta will provide a
WhatsApp test phone number with 5 test messages.
::::

### Start using the WhatsApp API

After finishing the previous WhatsApp product wizard, and clicking
`Continue`{.interpreted-text role="guilabel"}, the browser should have
directed to the WhatsApp `Quickstart`{.interpreted-text role="guilabel"}
page; this `Quickstart`{.interpreted-text role="guilabel"} page is where
to begin configuring the WhatsApp API by adding a phone number and then
sending an initial test message.

![Navigating to the WhatsApp quickstart wizard in Meta for Developer dashboard.](whatsapp/quickstart.png)

:::: note
::: title
Note
:::

If the browser is not on the `Quickstart`{.interpreted-text
role="guilabel"} page for WhatsApp, navigate to
<https://developers.facebook.com/apps> and click on the app that is
being configured, (the app name is [Odoo]{.title-ref} if the
instructions above were followed).

Then, in the menu on the left-hand side of the page, click the
`v (menu toggle)`{.interpreted-text role="guilabel"} icon next to the
`WhatsApp`{.interpreted-text role="guilabel"} section heading. A small
menu will open, containing the following options:

- `Quickstart`{.interpreted-text role="guilabel"}
- `API Setup`{.interpreted-text role="guilabel"}
- `Configuration`{.interpreted-text role="guilabel"}

Click the `Quickstart`{.interpreted-text role="guilabel"} option, and
then click `Start using the API`{.interpreted-text role="guilabel"}.
::::

#### API Setup

After clicking on `Start using the API`{.interpreted-text
role="guilabel"}, the page navigates to the
`API Setup`{.interpreted-text role="guilabel"}. Now that the test number
has been created, a test message can be sent to confirm that WhatsApp is
working properly. To begin, navigate to the section on the page labeled
`Send and receive
messages`{.interpreted-text role="guilabel"} and click the drop-down
menu next to `To`{.interpreted-text role="guilabel"}, under
`Step 1 Select phone
numbers`{.interpreted-text role="guilabel"}.

Now, select the only option available:
`Manage phone number list`{.interpreted-text role="guilabel"}. Follow
the steps and add up to five numbers to send the free test messages to.
After entering the appropriate country code and phone number, click on
`Next`{.interpreted-text role="guilabel"}.

:::: important
::: title
Important
:::

Adding a phone number to send to in this step will allow for a
successful test to be sent by the terminal. This is critical to ensure
the WhatsApp `API (Application Programming Interface)`{.interpreted-text
role="abbr"} is working.
::::

A verification code from WhatsApp Business is then sent to the phone
number, which needs to be input on the next screen to verify ownership
of the number. Enter the verification code and click
`Next`{.interpreted-text role="guilabel"} to verify the number.

#### Send a test message via terminal

Next, send a test message via the terminal. Under the section labeled
`Step 2 Send
messages with the API`{.interpreted-text role="guilabel"}, click
`Send Message`{.interpreted-text role="guilabel"}. A test message will
then be sent to the phone number that was set in the previous section.

Upon successfully receiving the message to the number, move onto the
next section to produce and configure webhooks.

## WhatsApp configuration in Odoo {#productivity/whatsapp/webhooks}

The next steps configured in this section are all within the Odoo
database. A few different values for a token, phone number, and account
IDs all need to be configured in Odoo; these values are necessary in
order to create a `Callback URL`{.interpreted-text role="guilabel"} and
`Webhook Verify Token`{.interpreted-text role="guilabel"}, which are
then used to configure the webhooks (in order to receive messages back
into the database).

In Odoo, navigate to
`WhatsApp app --> Configuration --> WhatsApp Business Accounts`{.interpreted-text
role="menuselection"}. Then click `New`{.interpreted-text
role="guilabel"} to configure the WhatsApp business account in Odoo.

In another browser tab, navigate to
`https://developers.facebook.com --> My Apps -->
WhatsApp --> API Configuration`{.interpreted-text role="menuselection"},
and then copy the following values from the Meta developer console into
the corresponding fields in Odoo:

  Name         Meta Console                                                        Odoo Interface
  ------------ ------------------------------------------------------------------- ------------------------------------------------------
  Phone        `Phone number ID`{.interpreted-text role="guilabel"}                `Phone Number ID`{.interpreted-text role="guilabel"}
  Token        `Temporary access token`{.interpreted-text role="guilabel"}         `Access Token`{.interpreted-text role="guilabel"}
  App ID       `App ID`{.interpreted-text role="guilabel"}                         `App ID`{.interpreted-text role="guilabel"}
  Account ID   `WhatsApp Business Account ID`{.interpreted-text role="guilabel"}   `Account ID`{.interpreted-text role="guilabel"}

To retrieve the `App Secret`{.interpreted-text role="guilabel"},
navigate to the Meta developer console,
<https://developers.facebook.com/apps> and select the app that Odoo is
being configured in. Then in the left-side menu, under
`App settings`{.interpreted-text role="guilabel"}, select
`Basic`{.interpreted-text role="guilabel"}.

Next, click `Show`{.interpreted-text role="guilabel"} next to the field
`App secret`{.interpreted-text role="guilabel"}, and enter the account
password to verify ownership. Copy the `App secret`{.interpreted-text
role="guilabel"} and then paste that copied value into the
`App Secret`{.interpreted-text role="guilabel"} field on the Odoo
`WhatsApp Business Account`{.interpreted-text role="guilabel"}
configuration dashboard.

To complete the setup of the WhatsApp business account in Odoo, click
`Test Connection`{.interpreted-text role="guilabel"}. A successful
message in green will populate in the upper-right corner of the
dashboard if the configuration is set correctly.

### Configuring webhooks

To configure the webhooks for WhatsApp in Odoo, navigate to
<https://developers.facebook.com/apps> and select the app that Odoo is
being configured in. Next under the `WhatsApp`{.interpreted-text
role="guilabel"} menu heading on the left side of the screen, click on
the `API Setup`{.interpreted-text role="guilabel"} menu item. Finally go
to the section marked `Step 3: Configure
webhooks to receive messages`{.interpreted-text role="guilabel"} and
click on `Configure webhooks`{.interpreted-text role="guilabel"}.

:::: tip
::: title
Tip
:::

Another way to configure *Webhooks* is to navigate to
<https://developers.facebook.com/apps> and select the app that Odoo is
being configured in. Then select `Webhooks`{.interpreted-text
role="guilabel"} in the left hand menu.

![Manually navigating to the Whatsapp webhooks configuration.](whatsapp/webhooks.png)
::::

On the `Webhook configuration`{.interpreted-text role="menuselection"}
page, click on `Edit`{.interpreted-text role="guilabel"}, where both the
`Callback URL`{.interpreted-text role="guilabel"} and
`Webhook Verify Token`{.interpreted-text role="guilabel"} values from
Odoo are added.

:::: note
::: title
Note
:::

Both the `Callback URL`{.interpreted-text role="guilabel"} and
`Webhook Verify Token`{.interpreted-text role="guilabel"} values were
automatically populated after clicking on
`Test Connection`{.interpreted-text role="guilabel"} in the previous
step.
::::

In a separate browser window, retrieve the necessary values in Odoo by
navigating to
`WhatsApp app --> Configuration --> WhatsApp Business Accounts`{.interpreted-text
role="menuselection"} and select the account that is being configured.
Locate the values under the section labeled `Receiving
Messages`{.interpreted-text role="guilabel"}.

Copy and paste the `Callback URL`{.interpreted-text role="guilabel"}
from Odoo into the `Callback URL`{.interpreted-text role="guilabel"}
field in Meta. Similarly, copy and paste the
`Webhook Verify Token`{.interpreted-text role="guilabel"} into the
`Verify
Token`{.interpreted-text role="guilabel"} field on the Meta developer
console, as well.

Finally, click `Verify and save`{.interpreted-text role="guilabel"} to
record the values in the Meta developer console.

#### Webhook fields

Now input individual webhook fields into Meta\'s developer console,
under the `Webhook
fields`{.interpreted-text role="guilabel"} section. Click
`Manage`{.interpreted-text role="guilabel"} and when the pop-up window
appears, check the boxes in the `Subscribe`{.interpreted-text
role="guilabel"} column for the following field names:

- [account_update]{.title-ref}
- [message_template_quality_update]{.title-ref}
- [message_template_status_update]{.title-ref}
- [messages]{.title-ref}
- [template_category_update]{.title-ref}

After making the selections, click `Done`{.interpreted-text
role="guilabel"}.

The finished `Webhooks`{.interpreted-text role="guilabel"} configuration
will appear like this in the Meta developer console:

![WhatsApp webhooks set in the Meta developer console.](whatsapp/webhooks-done.png)

:::: important
::: title
Important
:::

The `Webhook fields`{.interpreted-text role="guilabel"} will only appear
once the subscription is confirmed using the
`Callback URL`{.interpreted-text role="guilabel"} and
`Webhook Verify Token`{.interpreted-text role="guilabel"}.
::::

::: seealso
[Meta\'s WhatsApp documentation on setting
webhooks](https://developers.facebook.com/docs/whatsapp/cloud-api/guides/set-up-webhooks).
:::

#### Add phone number

To configure the phone number to use for WhatsApp in Odoo, navigate back
to the Meta developer console (<https://developers.facebook.com/apps>)
and again select the app that Odoo is being configured in. Under the
`WhatsApp`{.interpreted-text role="guilabel"} menu heading on the left
side of the screen, click on the `API Setup`{.interpreted-text
role="guilabel"} menu item. From there, go to the section marked:
`Step 5: Add a
phone number`{.interpreted-text role="guilabel"}, and click on
`Add phone number`{.interpreted-text role="guilabel"}.

In the fields, enter a `Business name`{.interpreted-text
role="guilabel"} as well as a `Business website or profile
page`{.interpreted-text role="guilabel"}.

:::: tip
::: title
Tip
:::

The `Business website or profile page`{.interpreted-text
role="guilabel"} field can be a social media page\'s `URL
(Uniform Resource Locator)`{.interpreted-text role="abbr"}.
::::

Complete filling out the business information by next selecting the
country that the company does business in from the drop-down menu in the
`Country`{.interpreted-text role="guilabel"} section. Add an address if
desired, however, this information is optional. After adding the
location, click `Next`{.interpreted-text role="guilabel"} to continue.

The following page contains information for the
`WhatsApp Business profile`{.interpreted-text role="guilabel"}. Complete
the following sections, accordingly:

- `WhatsApp Business Profile Display Name`{.interpreted-text
  role="guilabel"}
- `Timezone`{.interpreted-text role="guilabel"}
- `Category`{.interpreted-text role="guilabel"}
- `Business description`{.interpreted-text role="guilabel"} (optional)

Once these sections are complete, click `Next`{.interpreted-text
role="guilabel"}. The page refreshes and then prompts the administrator
to `Add a phone number for WhatsApp`{.interpreted-text role="guilabel"}
in the respective field. Here, enter the phone number to configure in
WhatsApp.

::: seealso
[Migrate an Existing WhatsApp Number to a Business
Account](https://developers.facebook.com/docs/whatsapp/cloud-api/get-started/migrate-existing-whatsapp-number-to-a-business-account).
:::

Next, choose a verification method for the phone number. Select either
`Text message`{.interpreted-text role="guilabel"} or
`Phone call`{.interpreted-text role="guilabel"}, and then click
`Next`{.interpreted-text role="guilabel"} proceed.

The phone number entered will receive either a text or a phone call by
WhatsApp with a code, depending on the verification method chosen. Enter
that verification code into the `Verification code`{.interpreted-text
role="guilabel"} field and click `Next`{.interpreted-text
role="guilabel"} to finish.

:::: warning
::: title
Warning
:::

If a payment method has not been added, this is necessary to proceed.
[Visit Meta\'s documentation on how to add a payment method in Meta\'s
Business
Manager](https://www.facebook.com/business/help/915454841921082?id=180505742745347).
This is part of Meta\'s fraud detection system, in order to ensure that
the account/company are real a payment method is required to proceed.
::::

::: seealso
[Meta for Developers: Add a Phone
Number](https://developers.facebook.com/docs/whatsapp/cloud-api/get-started/add-a-phone-number).
:::

#### Permanent token {#productivity/whatsapp/token}

After configuration and testing are complete, a permanent token should
be created to replace the `Temporary token`{.interpreted-text
role="guilabel"}.

::: seealso
[Meta for Developers: System User Access
Tokens](https://developers.facebook.com/docs/whatsapp/business-management-api/get-started#system-user-access-tokens).
:::

Begin by navigating to <https://business.facebook.com/> and then go to
`Business
settings --> User --> System Users`{.interpreted-text
role="menuselection"}. Select an existing system user or create a new
system user by clicking on `Add`{.interpreted-text role="guilabel"}.

Assets now must be added to the system user and then a permanent token
can be generated.

:::: warning
::: title
Warning
:::

This is a mandatory step. If the permanent token is not added, the Odoo
database shows a `token error <whatsapp/token_error>`{.interpreted-text
role="ref"}.
::::

Click on `Add assets`{.interpreted-text role="guilabel"}, and when the
pop-up window appears select `Apps`{.interpreted-text role="guilabel"}
under the `Select asset type`{.interpreted-text role="guilabel"}. Then,
select the Odoo app and toggle the permissions to *On* under the
`Full control`{.interpreted-text role="guilabel"} option. Set this new
permission setting by clicking `Save Changes`{.interpreted-text
role="guilabel"}, to which a confirmation window will appear,
acknowledging the addition of the asset to the system user. Finish by
clicking `Done`{.interpreted-text role="guilabel"}.

Next, the permanent token gets generated. Click on
`Generate new token`{.interpreted-text role="guilabel"}, and a pop-up
window will appear asking which app this token should be generated for.
Select the `App`{.interpreted-text role="guilabel"} that this token is
for. Then determine the expiration date of either
`60 days`{.interpreted-text role="guilabel"} or
`Never`{.interpreted-text role="guilabel"}.

Finally, when Meta asks which permissions should the system user allow,
add all of the following permissions:

- [business_management]{.title-ref}
- [whatsapp_business_messaging]{.title-ref}
- [whatsapp_business_management]{.title-ref}
- [whatsapp_business_manage_events]{.title-ref}

When permissions are set, click `Generate token`{.interpreted-text
role="guilabel"}. Copy the token value that populates on the screen that
follows.

With that token value, update the `Access Token`{.interpreted-text
role="guilabel"} field in the WhatsApp business account in Odoo by
navigating to `WhatsApp app --> Configuration --> WhatsApp Business
Accounts`{.interpreted-text role="menuselection"}.

## Go live with the Meta app

Finally, to launch the app, the Meta app must be set to
`Live`{.interpreted-text role="guilabel"} in the Meta developer console.
Navigate to <https://developers.facebook.com/apps> and click on the app
that is being configured. In the top menu, toggle the
`App Mode`{.interpreted-text role="guilabel"} field from
`Development`{.interpreted-text role="guilabel"} to
`Live`{.interpreted-text role="guilabel"}.

:::: important
::: title
Important
:::

If the app status is not set to *live*, then the database will only be
able to contact the test numbers specified in the developer console.
::::

:::: warning
::: title
Warning
:::

A privacy policy URL must be set in order for the app to be set to live.
Go to the Meta developer console, <https://developers.facebook.com/apps>
and select the app that Odoo is being configured in. Then, using the
menu on the left side of the screen, go to `App
Settings --> Basic`{.interpreted-text role="menuselection"}. Then, enter
the privacy policy hyperlink address under the
`Privacy Policy URL`{.interpreted-text role="guilabel"} field of the
form. Click `Save changes`{.interpreted-text role="guilabel"} to apply
the privacy policy to the app.
::::

Once the app has gone live in the Meta developer console, a confirmation
email is sent to the administrator.

## WhatsApp templates {#productivity/whatsapp/templates}

WhatsApp templates are saved messages that are used repeatedly to send
messages from the database. They allow users to send quality
communications, without having to compose the same text repeatedly.

Creating different templates that are tailored to specific situations
lets users choose the right message for the right audience. This
increases the quality of the message and the overall engagement rate
with the customer.

WhatsApp templates can be created on both the Odoo and Meta consoles.
The following process will overview the process for creating templates
in Odoo and then afterward in Meta.

:::: important
::: title
Important
:::

WhatsApp has an approval process that must be completed before the
template can be used. `productivity/whatsapp/approval`{.interpreted-text
role="ref"}.
::::

### Creating templates in Odoo {#WhatsApp/templates}

To access and create WhatsApp templates, begin by navigating to the
`WhatsApp app -->
Templates`{.interpreted-text role="menuselection"} dashboard.

At the bottom of an individual template\'s form, there are three tabs:
`Body`{.interpreted-text role="guilabel"}, `Buttons`{.interpreted-text
role="guilabel"}, and `Variables`{.interpreted-text role="guilabel"};
these three tabs combined create the WhatsApp template.

The text is entered into the `Body`{.interpreted-text role="guilabel"}
tab, and dynamic content that is called out in the
`Body`{.interpreted-text role="guilabel"} tab is specified in the
`Variables`{.interpreted-text role="guilabel"} tab. Every piece of
dynamic content (e.g., placeholders) in the message (body) is
specifically called out and specified in the
`Variables`{.interpreted-text role="guilabel"} tab.

Templates are prefabricated layouts that allow users to send
professional looking messages to customers. These templates are capable
of containing dynamic data that will populate in the end message using
variables that are set in the template configuration. For example,
messages can contain the end user\'s name, call out specific products,
or reference a sales order, to name a few convenient and impactful
variables.

To create a WhatsApp template, go to the
`WhatsApp app --> Templates`{.interpreted-text role="menuselection"}
dashboard and click `New`{.interpreted-text role="guilabel"}. On the
form, enter a `Name`{.interpreted-text role="guilabel"} for the
template, and select a `Language`{.interpreted-text role="guilabel"}.

:::: important
::: title
Important
:::

In order to complete this next task, administrator access rights are
needed to edit the `Applies to`{.interpreted-text role="guilabel"}
field. See this `access rights documentation
<../general/users/access_rights>`{.interpreted-text role="doc"} for more
information.
::::

In the `Account`{.interpreted-text role="guilabel"} drop-down menu,
select the *WhatsApp business account* in Odoo that this template should
link to. Next, under the `Applies to`{.interpreted-text role="guilabel"}
field select the *model* the server action will apply to for this
template.

:::: tip
::: title
Tip
:::

These models can also be accessed in
`developer mode <developer-mode>`{.interpreted-text role="ref"}. On a
contact form (or similar relevant form in Odoo), navigate to the model
that is referenced, and hover over any field name. The backend
information box displays the Odoo `Model`{.interpreted-text
role="guilabel"} name. Search (using the front-end name) for this model
in the `Applies to`{.interpreted-text role="guilabel"} drop-down menu in
the WhatsApp template.
::::

:::: warning
::: title
Warning
:::

Often when changing the model or `Applies to`{.interpreted-text
role="guilabel"} field, the `Phone Field`{.interpreted-text
role="guilabel"} may produce an error The
`Phone Field`{.interpreted-text role="guilabel"} should always be set to
the [Phone]{.title-ref} or [Mobile]{.title-ref} model.
::::

To search available fields, type in the front-end name in the search
box. This finds a result from all of the available fields for the model
(`Applies to`{.interpreted-text role="guilabel"}) that the template is
created for.

:::: note
::: title
Note
:::

In order to find specific fields, multiple levels may need to be
navigated in the search results box. Use the
`> (right chevron)`{.interpreted-text role="guilabel"} and
`⬅️ (left arrow)`{.interpreted-text role="guilabel"} icons to navigate
between the menu levels.
::::

![Searching for the phone field in the search bar.](whatsapp/phone-field.png)

Change the `Category`{.interpreted-text role="guilabel"} to fit either a
`Marketing`{.interpreted-text role="guilabel"},
`Utility`{.interpreted-text role="guilabel"}, or
`Authentication`{.interpreted-text role="guilabel"} category. In most
instances the first two options are used, unless the user would like to
send a password reset or something security related. Set to
`Marketing`{.interpreted-text role="guilabel"} should there be anything
promotional being sent and set to `Utility`{.interpreted-text
role="guilabel"} should there be general transactional messages being
sent (i.e., sales order, event ticket, etc).

:::: important
::: title
Important
:::

Specifying an incorrect category can cause a flag/rejected status from
Meta during the approval process.
::::

Add any `Users`{.interpreted-text role="guilabel"} that are allowed to
use this template. In the right-side column, a
`Header type`{.interpreted-text role="guilabel"} can be configured along
with a `Header message`{.interpreted-text role="guilabel"}, as well.

The available `Header types`{.interpreted-text role="guilabel"} are as
follows:

- Text
- Image
- Video
- Document
- Location (variables need to be set)

Navigate to the `Body`{.interpreted-text role="guilabel"} tab to
configure the main message of the template.

When all the necessary changes are made to the template, click on the
`Submit for
approval`{.interpreted-text role="guilabel"} button in the upper-left
corner. This will cause the status of the template to change to
`Pending`{.interpreted-text role="guilabel"}.

The status will remain in `Pending`{.interpreted-text role="guilabel"}
until a decision has been made by Meta, whereby a confirmation email
will then be sent indicating that the template has been approved (or
rejected). The templates will then need to be synced from the Odoo
database.

See this section for more information on
`syncing templates <productivity/whatsapp/sync>`{.interpreted-text
role="ref"}.

:::: tip
::: title
Tip
:::

Consider the preconfigured demo data templates available in Odoo to use
or modify. These templates can be used as-is or modified to suit a
specific business need.

To use these templates, navigate to
`WhatsApp app --> Templates`{.interpreted-text role="menuselection"} and
select a preconfigured template. Click
`Submit for Approval`{.interpreted-text role="guilabel"} to start the
approval process. An email gets sent to the administrator of the Meta
account when the template has been approved.
::::

#### Buttons

Buttons can be added into the message from the
`Buttons`{.interpreted-text role="guilabel"} tab. Enter the
`Type`{.interpreted-text role="guilabel"} (either
`Visit Website`{.interpreted-text role="guilabel"},
`Call Number`{.interpreted-text role="guilabel"}, or
`Quick Reply`{.interpreted-text role="guilabel"}), and then specify the
`Button Text`{.interpreted-text role="guilabel"},
`Call Number`{.interpreted-text role="guilabel"} or
`Website URL`{.interpreted-text role="guilabel"} (including
`Url Type`{.interpreted-text role="guilabel"}), depending on the
`Type`{.interpreted-text role="guilabel"} of button.

:::: note
::: title
Note
:::

Buttons can also be added on the Meta business console. See Meta\'s
WhatsApp template dashboard by navigating to
<https://business.facebook.com/wa/manage/home>. Then go to
`Account tools --> Message templates`{.interpreted-text
role="menuselection"}.
::::

#### Using placeholders and variables

Dynamic variables reference certain fields within the Odoo database to
produce unique data in the WhatsApp message when using a template.
Dynamic variables are encoded to display fields from within the
database, referencing fields from within a model.

::: example
Many companies like to customize their WhatsApp messages with a
personalized piece of customer information to grab attention. This can
be accomplished in Odoo by referencing a field within a model by setting
a dynamic variable. For example, a customer\'s name can be referenced in
the email from the `Customer`{.interpreted-text role="guilabel"} field
on the `Sales Order`{.interpreted-text role="guilabel"} model.
:::

![WhatsApp message with dynamic variables highlighted.](whatsapp/message.png)

Dynamic variables can be added in to the `Body`{.interpreted-text
role="guilabel"} by adding `placeholders`{.interpreted-text
role="guilabel"} in the *text*. To add a placeholder in the *message
body* enter the following text [{{1}}]{.title-ref}. For the second
placeholder enter [{{2}}]{.title-ref} and increase incrementally as more
placeholders are added to the text.

::: example
*The following is the text from payment receipt template body:*

Dear {{1}},

| Here is your invoice *{{2}}* from *{{3}}* for a total of *{{4}}{{5}}*.
| To review your invoice or pay online: {{6}}

Thank you
:::

::: seealso
`productivity/whatsapp/templates`{.interpreted-text role="ref"}.
:::

These placeholders must be configured on the
`Variables`{.interpreted-text role="guilabel"} tab of the template
before submitting for approval from Meta. To edit the dynamic variables
on a template, first change the `Type`{.interpreted-text
role="guilabel"} to `Field of Model`{.interpreted-text role="guilabel"}.
This allows Odoo to reference a field within a model to produce unique
data in the message being sent.

Next, edit the `Field`{.interpreted-text role="guilabel"} of the dynamic
variables. The `Applies to`{.interpreted-text role="guilabel"} field in
the template should be edited prior to ensure the correct model and
field are referenced.

To search the available fields, type in the front-end name of the field
in the search box. This will find a result from all of the available
fields for the model (`Applies to`{.interpreted-text role="guilabel"})
that the template is created for. There may be multiple levels that need
to be configured.

::: example
The following is an example of the variables set for the above
placeholders in the payment receipt noted above:

  Name           Sample Value     Type             Field
  -------------- ---------------- ---------------- ----------------------------------
  body - {{1}}   Azure Interior   Field of Model   [Partner]{.title-ref}
  body - {{2}}   INV/2022/00001   Field of Model   [Number]{.title-ref}
  body - {{3}}   My Company       Field of Model   [Company]{.title-ref}
  body - {{4}}   \$               Field of Model   [Currency \> Symbol]{.title-ref}
  body - {{5}}   4000             Field of Model   [Amount]{.title-ref}
  body - {{6}}   https://..       Portal link      
:::

::: example
For example, in the `Body`{.interpreted-text role="guilabel"} tab, if
the following is typed, \"Hello {{1}},\", then [{{1}}]{.title-ref} must
be set in the `Variables`{.interpreted-text role="guilabel"} tab. For
this specific case, the message should greet the customer by name, so
the [{{1}}]{.title-ref} should be configured to populate the
[{{1}}]{.title-ref} `Field`{.interpreted-text role="guilabel"} with the
`Customer`{.interpreted-text role="guilabel"} name.
:::

:::: warning
::: title
Warning
:::

Customizing WhatsApp templates is out of the scope of Odoo Support.
::::

#### Meta template approval {#productivity/whatsapp/approval}

After updating the dynamic variables on the template, the template needs
to be submitted to Meta for approval again. Click
`Submit for Approval`{.interpreted-text role="guilabel"} to start the
approval process. An email will be sent to the administrator of the Meta
account when the template has been approved.

Following the approval from Meta, sync the templates again in the Odoo
database. See this documentation:
`productivity/whatsapp/sync`{.interpreted-text role="ref"}.

:::: tip
::: title
Tip
:::

To see the status to Meta\'s WhatsApp template dashboard by navigating
to <https://business.facebook.com/wa/manage/home>. Then go to
`Account tools -->
Message templates`{.interpreted-text role="menuselection"}.
::::

#### Syncing templates {#productivity/whatsapp/sync}

Templates must be synced on the Odoo database once they are approved by
the Meta team. To do so, begin by navigating to
`WhatsApp app --> Configuration --> WhatsApp Business
Accounts`{.interpreted-text role="menuselection"} and select the
configuration that should be synced. Under the section marked
`Sending messages`{.interpreted-text role="menuselection"}, towards the
bottom, click on `Sync Templates`{.interpreted-text role="guilabel"}.
Meta will update the templates that are approved so that they can be
utilized with various apps in the database.

![Syncing Meta WhatsApp templates to the Odoo database, with the \'Sync Templates\'
highlighted.](whatsapp/sync-template.png)

A successful message in green appears in the upper-right corner with the
number of templates updated.

:::: tip
::: title
Tip
:::

Templates can also be synced individually from the template itself.
Navigate to the `WhatsApp app --> Templates`{.interpreted-text
role="menuselection"} dashboard and select the template to sync. Then,
click on the `Sync Template`{.interpreted-text role="guilabel"} button
located in the top menu of the template\'s form.
::::

### Creating templates in Meta

First, navigate to [Meta\'s WhatsApp template
dashboard](https://business.facebook.com/wa/manage/home), and then go to
`Account tools -->
Message templates`{.interpreted-text role="menuselection"}.

![Account tools highlighted in business manager with the manage templates link highlighted.](whatsapp/account-tools.png)

To create a WhatsApp template, click on the blue
`Create template`{.interpreted-text role="guilabel"} button, and then
select the `Category`{.interpreted-text role="guilabel"}. The options
listed include: `Marketing`{.interpreted-text role="guilabel"},
`Utility`{.interpreted-text role="guilabel"}, and
`Authentication`{.interpreted-text role="guilabel"}. In most instances
the first two options are used, unless the user would like to send a
password reset or something security related.

Enter the `Name`{.interpreted-text role="guilabel"} of the template and
then select the `Language`{.interpreted-text role="guilabel"} for the
template.

:::: note
::: title
Note
:::

Multiple languages can be selected.
::::

![Template configuration options listed, with Marketing, Utility, Name and Language
highlighted.](whatsapp/template-config.png)

After making the appropriate selections, click on
`Continue`{.interpreted-text role="guilabel"} in the upper-right corner.
The page redirects to the `Edit template`{.interpreted-text
role="guilabel"} page. Here the `Header`{.interpreted-text
role="guilabel"}, `Body`{.interpreted-text role="guilabel"},
`Footer`{.interpreted-text role="guilabel"} and
`Buttons`{.interpreted-text role="guilabel"} are configured. To the
right of the template is a preview of what the template will look like
in production.

![Edit the template using a header, body, footer and buttons.](whatsapp/edit-template.png)

When all the necessary changes are made to the template, click on the
`Submit`{.interpreted-text role="guilabel"} button in the upper-right
corner. A confirmation window appears to confirm the language--- click
`Confirm`{.interpreted-text role="guilabel"} to approve and then another
window appears stating that the template gets submitted to Meta for
review and approval.

The `Status`{.interpreted-text role="guilabel"} of the template will
remain in `In review`{.interpreted-text role="guilabel"} until a
decision has been made by Meta. Once an email confirmation is received
approving the template, the templates will need to be synced from within
the Odoo database.

::: seealso
For more information on configuring templates on the Meta developer
console visit [Meta\'s WhatsApp template
documentation](https://developers.facebook.com/docs/whatsapp/business-management-api/message-templates/).
:::

## Notifications

Notifications in WhatsApp are handled similar to a message conversation
in Odoo. A pop-up window appears with the received conversation from the
customer. By default, notifications are set in the WhatsApp business
account configuration in Odoo.

Notification settings can be adjusted by navigating to `WhatsApp app -->
Configuration --> WhatsApp Business Accounts`{.interpreted-text
role="menuselection"}. From there, select the account and scroll down to
the `Control`{.interpreted-text role="menuselection"} section where
notifications are handled. Under the `Notify users`{.interpreted-text
role="guilabel"} heading, type in the field which users should be
notified for this particular WhatsApp channel.

:::: note
::: title
Note
:::

Once a conversation is initiated between a user and a customer,
notifications to all the users specified in the WhatsApp business
account configuration will not occur. Only notifications to the users in
the conversation will occur. Should the user not respond within 15 days,
the customer\'s reply after the 15 days will populate once again to all
the users specified in the WhatsApp configuration.
::::

## Adding users to chat

Users can be added to a WhatsApp chat by expanding the WhatsApp pop-up
window. WhatsApp conversations are located in the *Discuss* app. Click
on the `👤+ (add user)`{.interpreted-text role="guilabel"} icon next to
it, and a window appears to invite users to the conversation.

![Adding users to a WhatsApp conversation, with the add user icon highlighted.](whatsapp/add-users.png)

## WhatsApp API FAQ

### Verification

As of February 1, 2023, if the Meta app requires advanced level access
to permissions, a complete business verification may need to be
completed. This includes submitting office business documents to Meta.
[See this
documentation](https://developers.facebook.com/docs/development/release/business-verification).

::: seealso
[Meta\'s WhatsApp access verification
documentation](https://developers.facebook.com/docs/development/release/access-verification/).
:::

### Template errors

Editing templates can cause tracebacks and errors unless the exact
process is followed above, here:
(`productivity/whatsapp/templates`{.interpreted-text role="ref"}).

#### Duplicate validation error

When syncing the templates there may be an instance when there are
multiple templates with the same name on Meta\'s business manager and in
Odoo. This causes a duplicate validation error. To correct this issue,
rename the duplicate template name on Odoo and sync the templates once
again by following the steps here:
`productivity/whatsapp/sync`{.interpreted-text role="ref"}.

![User error populated in Odoo when a duplicate template exists.](whatsapp/validation-error-2.png)

### Token errors {#whatsapp/token_error}

#### User error

Should the temporary token not be replaced with a permanent token a user
error will populate in Odoo when testing the connection after sending
fails. To correct this issues see
`productivity/whatsapp/token`{.interpreted-text role="ref"}.

![User error populated in Odoo when token expires.](whatsapp/user-error.png)

#### System user error 100

Should the system user be an `Employee`{.interpreted-text
role="guilabel"} when setting up the permanent token, a user error 100
will populate.

To correct this error, create an `Admin`{.interpreted-text
role="guilabel"} system user, following the process outlined here:
`productivity/whatsapp/token`{.interpreted-text role="ref"}.

![User error populated in Odoo when an employee token is generated instead of a Admin user.](whatsapp/user-error-2.png)


