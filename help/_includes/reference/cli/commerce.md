# magento-cloud (Adobe Commerce on cloud infrastructure)

<!-- All the assigned and captured content is used in the included template -->

<!-- The template to render with above values -->
**Version**: 1.38.1 <!-- app.version -->

This reference contains 127 commands available through the `magento-cloud` command-line tool.
The initial list is auto generated using the `magento-cloud list` command at the  edition.

>[!NOTE]
>
>This reference is generated from the application codebase. To change the content, you can update the source code for the corresponding command implementation in the [codebase](https://github.com/magento) repository and submit your changes for review. Another way is to _Give us feedback_ (find the link at the upper right). For contribution guidelines, see [Code Contributions](https://developer.adobe.com/commerce/contributor/guides/code-contributions/).

## `_completion`

BASH completion hook.

```bash
_completion [-g|--generate-hook] [-p|--program PROGRAM] [-m|--multiple] [--shell-type [SHELL-TYPE]]
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->




### `--generate-hook`, `-g`



Generate BASH code that sets up completion for this application.
-  Default: `false`
-  Does not accept a value



### `--program`, `-p`



Program name that should trigger completion &lt;comment&gt;(defaults to the absolute application path)&lt;/comment&gt;.
-  Requires a value



### `--multiple`, `-m`



Generated hook can be used for multiple applications.
-  Default: `false`
-  Does not accept a value


### `--shell-type`

Set the shell type (zsh or bash). Otherwise this is determined automatically.
-  Accepts a value <!-- options --> <!-- options.size -->

## `bot`

The Magento Cloud Bot

```bash
magento-cloud bot [--party] [--parrot]
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->



### `--party`


-  Default: `false`
-  Does not accept a value


### `--parrot`


-  Default: `false`
-  Does not accept a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `clear-cache`

Clear the CLI cache

```bash
magento-cloud clear-cache
```

 <!-- app.name -->

```bash
clearcache
```

 <!-- app.name -->

```bash
cc
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->




### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `decode`

Decode an encoded string such as MAGENTO_CLOUD_VARIABLES

```bash
magento-cloud decode [-P|--property PROPERTY] [--] <value>
```

 <!-- app.name --> <!-- command.usage -->

### `value`

The variable value to decode
-  Required
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->




### `--property`, `-P`



The property to view within the variable
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `docs`

Open the online documentation

```bash
magento-cloud docs [--browser BROWSER] [--pipe] [--] [<search>]...
```

 <!-- app.name --> <!-- command.usage -->

### `search`

Search term(s)

-  Default: `[]`
   
-  Array <!-- argument --> <!-- arguments --> <!-- arguments.size -->



### `--browser`

The browser to use to open the URL. Set 0 for none.
-  Requires a value


### `--pipe`

Output the URL to stdout.
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `help`

Displays help for a command

```bash
help [--format FORMAT] [--raw] [--] [<command_name>]
```

 <!-- app.name --> <!-- command.usage -->

### `command_name`

The command name
-  Default: `help`
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->



### `--format`

The output format (txt, xml, json, or md)
-  Default: `txt`
-  Requires a value


### `--raw`

To output raw command help
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `legacy-migrate`

Migrate from the legacy file structure

```bash
magento-cloud legacy-migrate [--no-backup]
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->



### `--no-backup`

Do not create a backup of the project.
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `list`

Lists commands

```bash
list [--raw] [--format FORMAT] [--all] [--] [<namespace>]
```

 <!-- app.name --> <!-- command.usage -->

### `namespace`

The namespace name
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->



### `--raw`

To output raw command list
-  Default: `false`
-  Does not accept a value


### `--format`

The output format (txt, xml, json, or md)
-  Default: `txt`
-  Requires a value <!-- options --> <!-- options.size -->

## `multi`

Execute a command on multiple projects

```bash
magento-cloud multi [-p|--projects PROJECTS] [--continue] [--sort SORT] [--reverse] [--] <cmd>
```

 <!-- app.name --> <!-- command.usage -->

### `cmd`

The command to execute
-  Required
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->




### `--projects`, `-p`



A list of project IDs, separated by commas and/or whitespace
-  Requires a value


### `--continue`

Continue running commands even if an exception is encountered
-  Default: `false`
-  Does not accept a value


### `--sort`

A property by which to sort the list of project options
-  Default: `title`
-  Requires a value


### `--reverse`

Reverse the order of project options
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `web`

Open the Web UI

```bash
magento-cloud web [--browser BROWSER] [--pipe] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT]
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->



### `--browser`

The browser to use to open the URL. Set 0 for none.
-  Requires a value


### `--pipe`

Output the URL to stdout.
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `welcome`

Welcome to Magento Cloud

```bash
magento-cloud welcome
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->




### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `winky`



```bash
magento-cloud winky
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->




### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `activity:cancel`

Cancel an activity

```bash
magento-cloud activity:cancel [--type TYPE] [-a|--all] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [--] [<id>]
```

 <!-- app.name --> <!-- command.usage -->

### `id`

The activity ID. Defaults to the most recent cancellable activity.
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->



### `--type`

Filter by type (when selecting a default activity)
-  Requires a value



### `--all`, `-a`



Check recent activities on all environments (when selecting a default activity)
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `activity:get`

View detailed information on a single activity

```bash
magento-cloud activity:get [-P|--property PROPERTY] [--type TYPE] [--state STATE] [--result RESULT] [-i|--incomplete] [-a|--all] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [--format FORMAT] [--columns COLUMNS] [--no-header] [--date-fmt DATE-FMT] [--] [<id>]
```

 <!-- app.name --> <!-- command.usage -->

### `id`

The activity ID. Defaults to the most recent activity.
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->




### `--property`, `-P`



The property to view
-  Requires a value


### `--type`

Filter by type (when selecting a default activity)
-  Requires a value


### `--state`

Filter by state (when selecting a default activity): in_progress, pending, complete, or cancelled
-  Default: `[]`
-  Requires a value


### `--result`

Filter by result (when selecting a default activity): success or failure
-  Requires a value



### `--incomplete`, `-i`



Include only incomplete activities (when selecting a default activity). This is a shorthand for &lt;info&gt;--state=in_progress,pending&lt;/info&gt;
-  Default: `false`
-  Does not accept a value



### `--all`, `-a`



Check recent activities on all environments (when selecting a default activity)
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value


### `--format`

The output format (&quot;table&quot;, &quot;csv&quot;, &quot;tsv&quot;, or &quot;plain&quot;)
-  Default: `table`
-  Requires a value


### `--columns`

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`

Do not output the table header
-  Default: `false`
-  Does not accept a value


### `--date-fmt`

The date format (as a PHP date format string)
-  Default: `c`
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `activity:list`

Get a list of activities for an environment or project

```bash
magento-cloud activity:list [--type TYPE] [--limit LIMIT] [--start START] [--state STATE] [--result RESULT] [-i|--incomplete] [-a|--all] [--format FORMAT] [--columns COLUMNS] [--no-header] [--date-fmt DATE-FMT] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT]
```

 <!-- app.name -->

```bash
activities
```

 <!-- app.name -->

```bash
act
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->



### `--type`

Filter activities by type
-  Requires a value


### `--limit`

Limit the number of results displayed
-  Default: `10`
-  Requires a value


### `--start`

Only activities created before this date will be listed
-  Requires a value


### `--state`

Filter activities by state: in_progress, pending, complete, or cancelled
-  Default: `[]`
-  Requires a value


### `--result`

Filter activities by result: success or failure
-  Requires a value



### `--incomplete`, `-i`



Only list incomplete activities
-  Default: `false`
-  Does not accept a value



### `--all`, `-a`



List activities on all environments
-  Default: `false`
-  Does not accept a value


### `--format`

The output format (&quot;table&quot;, &quot;csv&quot;, &quot;tsv&quot;, or &quot;plain&quot;)
-  Default: `table`
-  Requires a value


### `--columns`

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`

Do not output the table header
-  Default: `false`
-  Does not accept a value


### `--date-fmt`

The date format (as a PHP date format string)
-  Default: `c`
-  Requires a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `activity:log`

Display the log for an activity

```bash
magento-cloud activity:log [--refresh REFRESH] [-t|--timestamps] [--type TYPE] [--state STATE] [--result RESULT] [-i|--incomplete] [-a|--all] [--date-fmt DATE-FMT] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [--] [<id>]
```

 <!-- app.name --> <!-- command.usage -->

### `id`

The activity ID. Defaults to the most recent activity.
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->



### `--refresh`

Activity refresh interval (seconds). Set to 0 to disable refreshing.
-  Default: `3`
-  Requires a value



### `--timestamps`, `-t`



Display a timestamp next to each message
-  Default: `false`
-  Does not accept a value


### `--type`

Filter by type (when selecting a default activity)
-  Requires a value


### `--state`

Filter by state (when selecting a default activity): in_progress, pending, complete, or cancelled
-  Default: `[]`
-  Requires a value


### `--result`

Filter by result (when selecting a default activity): success or failure
-  Requires a value



### `--incomplete`, `-i`



Include only incomplete activities (when selecting a default activity). This is a shorthand for &lt;info&gt;--state=in_progress,pending&lt;/info&gt;
-  Default: `false`
-  Does not accept a value



### `--all`, `-a`



Check recent activities on all environments (when selecting a default activity)
-  Default: `false`
-  Does not accept a value


### `--date-fmt`

The date format (as a PHP date format string)
-  Default: `c`
-  Requires a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `api:curl`

Run an authenticated cURL request on the Magento Cloud API

```bash
magento-cloud api:curl [-X|--request REQUEST] [-d|--data DATA] [-i|--include] [-I|--head] [--disable-compression] [--enable-glob] [-H|--header HEADER] [--] [<path>]
```

 <!-- app.name --> <!-- command.usage -->

### `path`

The API path
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->




### `--request`, `-X`



The request method to use
-  Requires a value



### `--data`, `-d`



Data to send
-  Requires a value



### `--include`, `-i`



Include headers in the output
-  Default: `false`
-  Does not accept a value



### `--head`, `-I`



Fetch headers only
-  Default: `false`
-  Does not accept a value


### `--disable-compression`

Do not use the curl --compressed flag
-  Default: `false`
-  Does not accept a value


### `--enable-glob`

Enable curl globbing (remove the --globoff flag)
-  Default: `false`
-  Does not accept a value



### `--header`, `-H`



Extra header(s)
-  Default: `[]`
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `app:config-get`

View the configuration of an app

```bash
magento-cloud app:config-get [-P|--property PROPERTY] [--refresh] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [-A|--app APP] [-i|--identity-file IDENTITY-FILE]
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->




### `--property`, `-P`



The configuration property to view
-  Requires a value


### `--refresh`

Whether to refresh the cache
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value



### `--app`, `-A`



The remote application name
-  Requires a value



### `--identity-file`, `-i`



[Deprecated option, no longer used]
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `app:list`

List apps in the project

```bash
magento-cloud apps [--refresh] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [--format FORMAT] [--columns COLUMNS] [--no-header]
```

 <!-- app.name -->

```bash
apps
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->



### `--refresh`

Whether to refresh the cache
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value


### `--format`

The output format (&quot;table&quot;, &quot;csv&quot;, &quot;tsv&quot;, or &quot;plain&quot;)
-  Default: `table`
-  Requires a value


### `--columns`

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`

Do not output the table header
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `auth:api-token-login`

Log in to Magento Cloud using an API token

```bash
magento-cloud auth:api-token-login
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->




### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `auth:browser-login`

Log in to Magento Cloud via a browser

```bash
magento-cloud login [-f|--force] [--browser BROWSER] [--pipe]
```

 <!-- app.name -->

```bash
login
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->




### `--force`, `-f`



Log in again, even if already logged in
-  Default: `false`
-  Does not accept a value


### `--browser`

The browser to use to open the URL. Set 0 for none.
-  Requires a value


### `--pipe`

Output the URL to stdout.
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `auth:info`

Display your account information

```bash
magento-cloud auth:info [-P|--property PROPERTY] [--refresh] [--format FORMAT] [--columns COLUMNS] [--no-header] [--] [<property>]
```

 <!-- app.name --> <!-- command.usage -->

### `property`

The account property to view
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->




### `--property`, `-P`



The account property to view (alternate syntax)
-  Requires a value


### `--refresh`

Whether to refresh the cache
-  Default: `false`
-  Does not accept a value


### `--format`

The output format (&quot;table&quot;, &quot;csv&quot;, &quot;tsv&quot;, or &quot;plain&quot;)
-  Default: `table`
-  Requires a value


### `--columns`

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`

Do not output the table header
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `auth:logout`

Log out of Magento Cloud

```bash
magento-cloud logout [-a|--all] [--other]
```

 <!-- app.name -->

```bash
logout
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->




### `--all`, `-a`



Log out from all local sessions
-  Default: `false`
-  Does not accept a value


### `--other`

Log out from other local sessions
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `auth:password-login`

&lt;fg=white;bg=red&gt;[ DEPRECATED ]&lt;/&gt; Log in to Magento Cloud using a username and password

```bash
magento-cloud auth:password-login
```

 <!-- app.name -->

```bash
auth:login
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->




### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `auth:token`

Obtain an OAuth 2 access token for requests to Magento Cloud APIs

```bash
magento-cloud auth:token
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->




### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `blackfire:setup`

Setup Blackfire.io integration for the project

```bash
magento-cloud blackfire:setup [--server_id SERVER_ID] [--server_token SERVER_TOKEN] [-p|--project PROJECT] [--host HOST] [-W|--no-wait] [--wait]
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->



### `--server_id`

The server id
-  Requires a value


### `--server_token`

The server token
-  Requires a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--no-wait`, `-W`



Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `certificate:add`

Add an SSL certificate to the project

```bash
magento-cloud certificate:add [--cert CERT] [--key KEY] [--chain CHAIN] [-p|--project PROJECT] [--host HOST] [-W|--no-wait] [--wait]
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->



### `--cert`

The path to the certificate file
-  Requires a value


### `--key`

The path to the certificate private key file
-  Requires a value


### `--chain`

The path to the certificate chain file
-  Default: `[]`
-  Requires a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--no-wait`, `-W`



Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `certificate:delete`

Delete a certificate from the project

```bash
magento-cloud certificate:delete [-p|--project PROJECT] [--host HOST] [-W|--no-wait] [--wait] [--] <id>
```

 <!-- app.name --> <!-- command.usage -->

### `id`

The certificate ID (or the start of it)
-  Required
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->




### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--no-wait`, `-W`



Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `certificate:get`

View a certificate

```bash
magento-cloud certificate:get [-P|--property PROPERTY] [--date-fmt DATE-FMT] [-p|--project PROJECT] [--host HOST] [--] <id>
```

 <!-- app.name --> <!-- command.usage -->

### `id`

The certificate ID (or the start of it)
-  Required
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->




### `--property`, `-P`



The certificate property to view
-  Requires a value


### `--date-fmt`

The date format (as a PHP date format string)
-  Default: `c`
-  Requires a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `certificate:list`

List project certificates

```bash
magento-cloud certificate:list [--domain DOMAIN] [--exclude-domain EXCLUDE-DOMAIN] [--issuer ISSUER] [--only-auto] [--no-auto] [--ignore-expiry] [--only-expired] [--no-expired] [--pipe-domains] [--date-fmt DATE-FMT] [--format FORMAT] [--columns COLUMNS] [--no-header] [-p|--project PROJECT] [--host HOST]
```

 <!-- app.name -->

```bash
certificates
```

 <!-- app.name -->

```bash
certs
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->



### `--domain`

Filter by domain name (case-insensitive search)
-  Requires a value


### `--exclude-domain`

Exclude certificates, matching by domain name (case-insensitive search)
-  Requires a value


### `--issuer`

Filter by issuer
-  Requires a value


### `--only-auto`

Show only auto-provisioned certificates
-  Default: `false`
-  Does not accept a value


### `--no-auto`

Show only manually added certificates
-  Default: `false`
-  Does not accept a value


### `--ignore-expiry`

Show both expired and non-expired certificates
-  Default: `false`
-  Does not accept a value


### `--only-expired`

Show only expired certificates
-  Default: `false`
-  Does not accept a value


### `--no-expired`

Show only non-expired certificates (default)
-  Default: `false`
-  Does not accept a value


### `--pipe-domains`

Only return a list of domain names covered by the certificates
-  Default: `false`
-  Does not accept a value


### `--date-fmt`

The date format (as a PHP date format string)
-  Default: `c`
-  Requires a value


### `--format`

The output format (&quot;table&quot;, &quot;csv&quot;, &quot;tsv&quot;, or &quot;plain&quot;)
-  Default: `table`
-  Requires a value


### `--columns`

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`

Do not output the table header
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `commit:get`

Show commit details

```bash
magento-cloud commit:get [-P|--property PROPERTY] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [--date-fmt DATE-FMT] [--format FORMAT] [--columns COLUMNS] [--no-header] [--] [<commit>]
```

 <!-- app.name --> <!-- command.usage -->

### `commit`

The commit SHA. This can also accept &quot;HEAD&quot;, and caret (^) or tilde (~) suffixes for parent commits.
-  Default: `HEAD`
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->




### `--property`, `-P`



The commit property to display.
-  Requires a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value


### `--date-fmt`

The date format (as a PHP date format string)
-  Default: `c`
-  Requires a value


### `--format`

DEPRECATED
-  Requires a value


### `--columns`

DEPRECATED
-  Default: `[]`
-  Requires a value


### `--no-header`

DEPRECATED
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `commit:list`

List commits

```bash
magento-cloud commits [--limit LIMIT] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [--format FORMAT] [--columns COLUMNS] [--no-header] [--date-fmt DATE-FMT] [--] [<commit>]
```

 <!-- app.name -->

```bash
commits
```

 <!-- app.name --> <!-- command.usage -->

### `commit`

The starting Git commit SHA. This can also accept &quot;HEAD&quot;, and caret (^) or tilde (~) suffixes for parent commits.
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->



### `--limit`

The number of commits to display.
-  Default: `10`
-  Requires a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value


### `--format`

The output format (&quot;table&quot;, &quot;csv&quot;, &quot;tsv&quot;, or &quot;plain&quot;)
-  Default: `table`
-  Requires a value


### `--columns`

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`

Do not output the table header
-  Default: `false`
-  Does not accept a value


### `--date-fmt`

The date format (as a PHP date format string)
-  Default: `c`
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `db:dump`

Create a local dump of the remote database

```bash
magento-cloud db:dump [--schema SCHEMA] [-f|--file FILE] [-d|--directory DIRECTORY] [-z|--gzip] [-t|--timestamp] [-o|--stdout] [--table TABLE] [--exclude-table EXCLUDE-TABLE] [--schema-only] [--charset CHARSET] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [-A|--app APP] [-r|--relationship RELATIONSHIP] [-i|--identity-file IDENTITY-FILE]
```

 <!-- app.name -->

```bash
sql-dump
```

 <!-- app.name -->

```bash
environment:sql-dump
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->



### `--schema`

The schema to dump. Omit to use the default schema (usually &quot;main&quot;).
-  Requires a value



### `--file`, `-f`



A custom filename for the dump
-  Requires a value



### `--directory`, `-d`



A custom directory for the dump
-  Requires a value



### `--gzip`, `-z`



Compress the dump using gzip
-  Default: `false`
-  Does not accept a value



### `--timestamp`, `-t`



Add a timestamp to the dump filename
-  Default: `false`
-  Does not accept a value



### `--stdout`, `-o`



Output to STDOUT instead of a file
-  Default: `false`
-  Does not accept a value


### `--table`

Table(s) to include
-  Default: `[]`
-  Requires a value


### `--exclude-table`

Table(s) to exclude
-  Default: `[]`
-  Requires a value


### `--schema-only`

Dump only schemas, no data
-  Default: `false`
-  Does not accept a value


### `--charset`

The character set encoding for the dump
-  Requires a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value



### `--app`, `-A`



The remote application name
-  Requires a value



### `--relationship`, `-r`



The service relationship to use
-  Requires a value



### `--identity-file`, `-i`



An SSH identity (private key) to use
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `db:size`

Estimate the disk usage of a database

```bash
magento-cloud db:size [-B|--bytes] [-C|--cleanup] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [-A|--app APP] [-r|--relationship RELATIONSHIP] [--format FORMAT] [--columns COLUMNS] [--no-header] [-i|--identity-file IDENTITY-FILE]
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->




### `--bytes`, `-B`



Show sizes in bytes.
-  Default: `false`
-  Does not accept a value



### `--cleanup`, `-C`



Check if tables can be cleaned up and show me recommendations (InnoDb only).
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value



### `--app`, `-A`



The remote application name
-  Requires a value



### `--relationship`, `-r`



The service relationship to use
-  Requires a value


### `--format`

The output format (&quot;table&quot;, &quot;csv&quot;, &quot;tsv&quot;, or &quot;plain&quot;)
-  Default: `table`
-  Requires a value


### `--columns`

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`

Do not output the table header
-  Default: `false`
-  Does not accept a value



### `--identity-file`, `-i`



An SSH identity (private key) to use
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `db:sql`

Run SQL on the remote database

```bash
magento-cloud sql [--raw] [--schema SCHEMA] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [-A|--app APP] [-r|--relationship RELATIONSHIP] [-i|--identity-file IDENTITY-FILE] [--] [<query>]
```

 <!-- app.name -->

```bash
sql
```

 <!-- app.name -->

```bash
environment:sql
```

 <!-- app.name --> <!-- command.usage -->

### `query`

An SQL statement to execute
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->



### `--raw`

Produce raw, non-tabular output
-  Default: `false`
-  Does not accept a value


### `--schema`

The schema to use. Omit to use the default schema (usually &quot;main&quot;). Pass an empty string to not use any schema.
-  Requires a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value



### `--app`, `-A`



The remote application name
-  Requires a value



### `--relationship`, `-r`



The service relationship to use
-  Requires a value



### `--identity-file`, `-i`



An SSH identity (private key) to use
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `domain:add`

Add a new domain to the project

```bash
magento-cloud domain:add [--cert CERT] [--key KEY] [--chain CHAIN] [-p|--project PROJECT] [--host HOST] [-W|--no-wait] [--wait] [--] <name>
```

 <!-- app.name --> <!-- command.usage -->

### `name`

The domain name
-  Required
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->



### `--cert`

The path to the certificate file for this domain
-  Requires a value


### `--key`

The path to the private key file for the provided certificate.
-  Requires a value


### `--chain`

The path to the certificate chain file or files for the provided certificate
-  Default: `[]`
-  Requires a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--no-wait`, `-W`



Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `domain:delete`

Delete a domain from the project

```bash
magento-cloud domain:delete [-p|--project PROJECT] [--host HOST] [-W|--no-wait] [--wait] [--] <name>
```

 <!-- app.name --> <!-- command.usage -->

### `name`

The domain name
-  Required
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->




### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--no-wait`, `-W`



Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `domain:get`

Show detailed information for a domain

```bash
magento-cloud domain:get [-P|--property PROPERTY] [--format FORMAT] [--columns COLUMNS] [--no-header] [--date-fmt DATE-FMT] [-p|--project PROJECT] [--host HOST] [--] [<name>]
```

 <!-- app.name --> <!-- command.usage -->

### `name`

The domain name
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->




### `--property`, `-P`



The domain property to view
-  Requires a value


### `--format`

The output format (&quot;table&quot;, &quot;csv&quot;, &quot;tsv&quot;, or &quot;plain&quot;)
-  Default: `table`
-  Requires a value


### `--columns`

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`

Do not output the table header
-  Default: `false`
-  Does not accept a value


### `--date-fmt`

The date format (as a PHP date format string)
-  Default: `c`
-  Requires a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `domain:list`

Get a list of all domains

```bash
magento-cloud domains [--format FORMAT] [--columns COLUMNS] [--no-header] [-p|--project PROJECT] [--host HOST]
```

 <!-- app.name -->

```bash
domains
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->



### `--format`

The output format (&quot;table&quot;, &quot;csv&quot;, &quot;tsv&quot;, or &quot;plain&quot;)
-  Default: `table`
-  Requires a value


### `--columns`

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`

Do not output the table header
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `domain:update`

Update a domain

```bash
magento-cloud domain:update [--cert CERT] [--key KEY] [--chain CHAIN] [-p|--project PROJECT] [--host HOST] [-W|--no-wait] [--wait] [--] <name>
```

 <!-- app.name --> <!-- command.usage -->

### `name`

The domain name
-  Required
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->



### `--cert`

The path to the certificate file for this domain
-  Requires a value


### `--key`

The path to the private key file for the provided certificate.
-  Requires a value


### `--chain`

The path to the certificate chain file or files for the provided certificate
-  Default: `[]`
-  Requires a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--no-wait`, `-W`



Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `environment:activate`

Activate an environment

```bash
magento-cloud environment:activate [--parent PARENT] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [-W|--no-wait] [--wait] [--] [<environment>]...
```

 <!-- app.name --> <!-- command.usage -->

### `environment`

The environment(s) to activate

-  Default: `[]`
   
-  Array <!-- argument --> <!-- arguments --> <!-- arguments.size -->



### `--parent`

Set a new environment parent before activating
-  Requires a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value



### `--no-wait`, `-W`



Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `environment:branch`

Branch an environment

```bash
magento-cloud branch [--title TITLE] [--force] [--no-clone-parent] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [-W|--no-wait] [--wait] [-i|--identity-file IDENTITY-FILE] [--] [<id>] [<parent>]
```

 <!-- app.name -->

```bash
branch
```

 <!-- app.name --> <!-- command.usage -->

### `id`

The ID (branch name) of the new environment
    <!-- argument -->

### `parent`

The parent of the new environment
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->



### `--title`

The title of the new environment
-  Requires a value


### `--force`

Create the new environment even if the branch cannot be checked out locally
-  Default: `false`
-  Does not accept a value


### `--no-clone-parent`

Do not clone the parent branch's data
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value



### `--no-wait`, `-W`



Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--identity-file`, `-i`



An SSH identity (private key) to use
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `environment:checkout`

Check out an environment

```bash
magento-cloud checkout [-i|--identity-file IDENTITY-FILE] [--] [<id>]
```

 <!-- app.name -->

```bash
checkout
```

 <!-- app.name --> <!-- command.usage -->

### `id`

The ID of the environment to check out. For example: &quot;sprint2&quot;
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->




### `--identity-file`, `-i`



An SSH identity (private key) to use
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `environment:delete`

Delete an environment

```bash
magento-cloud environment:deactivate [--delete-branch] [--no-delete-branch] [--inactive] [--merged] [--exclude EXCLUDE] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [-W|--no-wait] [--wait] [--] [<environment>]...
```

 <!-- app.name -->

```bash
environment:deactivate
```

 <!-- app.name --> <!-- command.usage -->

### `environment`

The environment(s) to delete

-  Default: `[]`
   
-  Array <!-- argument --> <!-- arguments --> <!-- arguments.size -->



### `--delete-branch`

Delete the remote Git branch(es) too
-  Default: `false`
-  Does not accept a value


### `--no-delete-branch`

Do not delete the remote Git branch(es)
-  Default: `false`
-  Does not accept a value


### `--inactive`

Delete all inactive environments
-  Default: `false`
-  Does not accept a value


### `--merged`

Delete all merged environments
-  Default: `false`
-  Does not accept a value


### `--exclude`

Environments not to delete
-  Default: `[]`
-  Requires a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value



### `--no-wait`, `-W`



Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `environment:http-access`

Update HTTP access settings for an environment

```bash
magento-cloud httpaccess [--access ACCESS] [--auth AUTH] [--enabled ENABLED] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [-W|--no-wait] [--wait]
```

 <!-- app.name -->

```bash
httpaccess
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->



### `--access`

Access restriction in the format &quot;permission:address&quot;. Use 0 to clear all addresses.
-  Default: `[]`
-  Requires a value


### `--auth`

HTTP Basic auth credentials in the format &quot;username:password&quot;. Use 0 to clear all credentials.
-  Default: `[]`
-  Requires a value


### `--enabled`

Whether access control should be enabled: 1 to enable, 0 to disable
-  Requires a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value



### `--no-wait`, `-W`



Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `environment:info`

Read or set properties for an environment

```bash
magento-cloud environment:info [--refresh] [--date-fmt DATE-FMT] [--format FORMAT] [--columns COLUMNS] [--no-header] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [-W|--no-wait] [--wait] [--] [<property>] [<value>]
```

 <!-- app.name -->

```bash
environment:metadata
```

 <!-- app.name --> <!-- command.usage -->

### `property`

The name of the property
    <!-- argument -->

### `value`

Set a new value for the property
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->



### `--refresh`

Whether to refresh the cache
-  Default: `false`
-  Does not accept a value


### `--date-fmt`

The date format (as a PHP date format string)
-  Default: `c`
-  Requires a value


### `--format`

The output format (&quot;table&quot;, &quot;csv&quot;, &quot;tsv&quot;, or &quot;plain&quot;)
-  Default: `table`
-  Requires a value


### `--columns`

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`

Do not output the table header
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value



### `--no-wait`, `-W`



Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `environment:init`

Initialize an environment from a public Git repository

```bash
magento-cloud environment:init [--profile PROFILE] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [-W|--no-wait] [--wait] [--] <url>
```

 <!-- app.name --> <!-- command.usage -->

### `url`

A URL to a Git repository
-  Required
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->



### `--profile`

The name of the profile
-  Requires a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value



### `--no-wait`, `-W`



Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `environment:list`

Get a list of environments

```bash
magento-cloud environment:list [-I|--no-inactive] [--pipe] [--refresh REFRESH] [--sort SORT] [--reverse] [--format FORMAT] [--columns COLUMNS] [--no-header] [-p|--project PROJECT] [--host HOST]
```

 <!-- app.name -->

```bash
environments
```

 <!-- app.name -->

```bash
env
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->




### `--no-inactive`, `-I`



Do not show inactive environments
-  Default: `false`
-  Does not accept a value


### `--pipe`

Output a simple list of environment IDs.
-  Default: `false`
-  Does not accept a value


### `--refresh`

Whether to refresh the list.
-  Default: `1`
-  Requires a value


### `--sort`

A property to sort by
-  Default: `title`
-  Requires a value


### `--reverse`

Sort in reverse (descending) order
-  Default: `false`
-  Does not accept a value


### `--format`

The output format (&quot;table&quot;, &quot;csv&quot;, &quot;tsv&quot;, or &quot;plain&quot;)
-  Default: `table`
-  Requires a value


### `--columns`

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`

Do not output the table header
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `environment:logs`

Read an environment's logs

```bash
magento-cloud log [--lines LINES] [--tail] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [-A|--app APP] [--worker WORKER] [--] [<type>]
```

 <!-- app.name -->

```bash
log
```

 <!-- app.name -->

```bash
logs
```

 <!-- app.name --> <!-- command.usage -->

### `type`

The log type, e.g. &quot;access&quot; or &quot;error&quot;
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->



### `--lines`

The number of lines to show
-  Default: `100`
-  Requires a value


### `--tail`

Continuously tail the log
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value



### `--app`, `-A`



The remote application name
-  Requires a value


### `--worker`

A worker name
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `environment:merge`

Merge an environment

```bash
magento-cloud merge [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [-W|--no-wait] [--wait] [--] [<environment>]
```

 <!-- app.name -->

```bash
merge
```

 <!-- app.name --> <!-- command.usage -->

### `environment`

The environment to merge
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->




### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value



### `--no-wait`, `-W`



Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `environment:push`

Push code to an environment

```bash
magento-cloud push [--target TARGET] [-f|--force] [--force-with-lease] [-u|--set-upstream] [--activate] [--branch] [--parent PARENT] [-W|--no-wait] [--wait] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [-i|--identity-file IDENTITY-FILE] [--] [<source>]
```

 <!-- app.name -->

```bash
push
```

 <!-- app.name --> <!-- command.usage -->

### `source`

The source ref: a branch name or commit hash
-  Default: `HEAD`
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->



### `--target`

The target branch name
-  Requires a value



### `--force`, `-f`



Allow non-fast-forward updates
-  Default: `false`
-  Does not accept a value


### `--force-with-lease`

Allow non-fast-forward updates, if the remote-tracking branch is up to date
-  Default: `false`
-  Does not accept a value



### `--set-upstream`, `-u`



Set the target environment as the upstream for the source branch
-  Default: `false`
-  Does not accept a value


### `--activate`

Activate the environment before pushing
-  Default: `false`
-  Does not accept a value


### `--branch`

DEPRECATED: alias of --activate
-  Default: `false`
-  Does not accept a value


### `--parent`

Set a new environment parent (only used with --activate or --branch)
-  Requires a value



### `--no-wait`, `-W`



Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value



### `--identity-file`, `-i`



An SSH identity (private key) to use
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `environment:redeploy`

Redeploy an environment

```bash
magento-cloud redeploy [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [-W|--no-wait] [--wait]
```

 <!-- app.name -->

```bash
redeploy
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->




### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value



### `--no-wait`, `-W`



Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `environment:relationships`

Show an environment's relationships

```bash
magento-cloud relationships [-P|--property PROPERTY] [--refresh] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [-A|--app APP] [-i|--identity-file IDENTITY-FILE] [--] [<environment>]
```

 <!-- app.name -->

```bash
relationships
```

 <!-- app.name --> <!-- command.usage -->

### `environment`

The environment
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->




### `--property`, `-P`



The relationship property to view
-  Requires a value


### `--refresh`

Whether to refresh the relationships
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value



### `--app`, `-A`



The remote application name
-  Requires a value



### `--identity-file`, `-i`



An SSH identity (private key) to use
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `environment:scp`

Copy files to and from current environment using scp

```bash
magento-cloud scp [-r|--recursive] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [-A|--app APP] [--worker WORKER] [-i|--identity-file IDENTITY-FILE] [--] [<files>]...
```

 <!-- app.name -->

```bash
scp
```

 <!-- app.name --> <!-- command.usage -->

### `files`

Files to copy. Use the remote: prefix to define remote locations.

-  Default: `[]`
   
-  Array <!-- argument --> <!-- arguments --> <!-- arguments.size -->




### `--recursive`, `-r`



Recursively copy entire directories
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value



### `--app`, `-A`



The remote application name
-  Requires a value


### `--worker`

A worker name
-  Requires a value



### `--identity-file`, `-i`



An SSH identity (private key) to use
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `environment:set-remote`

Set the remote environment to map to a branch

```bash
magento-cloud environment:set-remote <environment> [<branch>]
```

 <!-- app.name --> <!-- command.usage -->

### `environment`

The environment machine name. Set to 0 to remove the mapping for a branch
-  Required
    <!-- argument -->

### `branch`

The Git branch to map (defaults to the current branch)
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->




### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `environment:ssh`

SSH to the current environment

```bash
magento-cloud ssh [--pipe] [--all] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [-A|--app APP] [--worker WORKER] [-i|--identity-file IDENTITY-FILE] [--] [<cmd>]...
```

 <!-- app.name -->

```bash
ssh
```

 <!-- app.name --> <!-- command.usage -->

### `cmd`

A command to run on the environment.

-  Default: `[]`
   
-  Array <!-- argument --> <!-- arguments --> <!-- arguments.size -->



### `--pipe`

Output the SSH URL only.
-  Default: `false`
-  Does not accept a value


### `--all`

Output all SSH URLs (for every app).
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value



### `--app`, `-A`



The remote application name
-  Requires a value


### `--worker`

A worker name
-  Requires a value



### `--identity-file`, `-i`



An SSH identity (private key) to use
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `environment:synchronize`

Synchronize an environment's code and/or data from its parent

```bash
magento-cloud sync [--rebase] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [-W|--no-wait] [--wait] [--] [<synchronize>]...
```

 <!-- app.name -->

```bash
sync
```

 <!-- app.name --> <!-- command.usage -->

### `synchronize`

What to synchronize: &quot;code&quot;, &quot;data&quot; or both

-  Default: `[]`
   
-  Array <!-- argument --> <!-- arguments --> <!-- arguments.size -->



### `--rebase`

Synchronize code by rebasing instead of merging
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value



### `--no-wait`, `-W`



Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `environment:url`

Get the public URLs of an environment

```bash
magento-cloud url [-1|--primary] [--browser BROWSER] [--pipe] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT]
```

 <!-- app.name -->

```bash
url
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->




### `--primary`, `-1`



Only return the URL for the primary route
-  Default: `false`
-  Does not accept a value


### `--browser`

The browser to use to open the URL. Set 0 for none.
-  Requires a value


### `--pipe`

Output the URL to stdout.
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `environment:xdebug`

Open a tunnel to Xdebug on the environment

```bash
magento-cloud xdebug [--port PORT] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [-A|--app APP] [--worker WORKER] [-i|--identity-file IDENTITY-FILE]
```

 <!-- app.name -->

```bash
xdebug
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->



### `--port`

The local port
-  Default: `9000`
-  Requires a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value



### `--app`, `-A`



The remote application name
-  Requires a value


### `--worker`

A worker name
-  Requires a value



### `--identity-file`, `-i`



An SSH identity (private key) to use
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `integration:activity:get`

View detailed information on a single integration activity

```bash
magento-cloud integration:activity:get [-P|--property PROPERTY] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [--format FORMAT] [--columns COLUMNS] [--no-header] [--date-fmt DATE-FMT] [--] [<integration>] [<activity>]
```

 <!-- app.name --> <!-- command.usage -->

### `integration`

An integration ID. Leave blank to choose from a list.
    <!-- argument -->

### `activity`

The activity ID. Defaults to the most recent integration activity.
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->




### `--property`, `-P`



The property to view
-  Requires a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



[Deprecated option, not used]
-  Requires a value


### `--format`

The output format (&quot;table&quot;, &quot;csv&quot;, &quot;tsv&quot;, or &quot;plain&quot;)
-  Default: `table`
-  Requires a value


### `--columns`

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`

Do not output the table header
-  Default: `false`
-  Does not accept a value


### `--date-fmt`

The date format (as a PHP date format string)
-  Default: `c`
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `integration:activity:list`

Get a list of activities for an integration

```bash
magento-cloud i:act [--type TYPE] [--limit LIMIT] [--start START] [--state STATE] [--result RESULT] [--format FORMAT] [--columns COLUMNS] [--no-header] [--date-fmt DATE-FMT] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [--] [<id>]
```

 <!-- app.name -->

```bash
i:act
```

 <!-- app.name -->

```bash
integration:activities
```

 <!-- app.name --> <!-- command.usage -->

### `id`

An integration ID. Leave blank to choose from a list.
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->



### `--type`

Filter activities by type
-  Requires a value


### `--limit`

Limit the number of results displayed
-  Default: `10`
-  Requires a value


### `--start`

Only activities created before this date will be listed
-  Requires a value


### `--state`

Filter activities by state
-  Default: `[]`
-  Requires a value


### `--result`

Filter activities by result
-  Requires a value


### `--format`

The output format (&quot;table&quot;, &quot;csv&quot;, &quot;tsv&quot;, or &quot;plain&quot;)
-  Default: `table`
-  Requires a value


### `--columns`

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`

Do not output the table header
-  Default: `false`
-  Does not accept a value


### `--date-fmt`

The date format (as a PHP date format string)
-  Default: `c`
-  Requires a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



[Deprecated option, not used]
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `integration:activity:log`

Display the log for an integration activity

```bash
magento-cloud integration:activity:log [-t|--timestamps] [--date-fmt DATE-FMT] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [--] [<integration>] [<activity>]
```

 <!-- app.name --> <!-- command.usage -->

### `integration`

An integration ID. Leave blank to choose from a list.
    <!-- argument -->

### `activity`

The activity ID. Defaults to the most recent integration activity.
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->




### `--timestamps`, `-t`



Display a timestamp next to each message
-  Default: `false`
-  Does not accept a value


### `--date-fmt`

The date format (as a PHP date format string)
-  Default: `c`
-  Requires a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



[Deprecated option, not used]
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `integration:add`

Add an integration to the project

```bash
magento-cloud integration:add [--type TYPE] [--base-url BASE-URL] [--username USERNAME] [--token TOKEN] [--key KEY] [--secret SECRET] [--server-project SERVER-PROJECT] [--repository REPOSITORY] [--build-merge-requests BUILD-MERGE-REQUESTS] [--build-pull-requests BUILD-PULL-REQUESTS] [--build-draft-pull-requests BUILD-DRAFT-PULL-REQUESTS] [--build-pull-requests-post-merge BUILD-PULL-REQUESTS-POST-MERGE] [--build-wip-merge-requests BUILD-WIP-MERGE-REQUESTS] [--merge-requests-clone-parent-data MERGE-REQUESTS-CLONE-PARENT-DATA] [--pull-requests-clone-parent-data PULL-REQUESTS-CLONE-PARENT-DATA] [--resync-pull-requests RESYNC-PULL-REQUESTS] [--fetch-branches FETCH-BRANCHES] [--prune-branches PRUNE-BRANCHES] [--room ROOM] [--url URL] [--shared-key SHARED-KEY] [--file FILE] [--events EVENTS] [--states STATES] [--environments ENVIRONMENTS] [--excluded-environments EXCLUDED-ENVIRONMENTS] [--from-address FROM-ADDRESS] [--recipients RECIPIENTS] [--channel CHANNEL] [--routing-key ROUTING-KEY] [-p|--project PROJECT] [--host HOST] [-W|--no-wait] [--wait]
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->



### `--type`

The integration type ('bitbucket', 'bitbucket_server', 'github', 'gitlab', 'hipchat', 'webhook', 'health.email', 'health.pagerduty', 'health.slack', 'health.webhook', 'script')
-  Requires a value


### `--base-url`

The base URL of the server installation
-  Requires a value


### `--username`

The Bitbucket Server username
-  Requires a value


### `--token`

An access token for the integration
-  Requires a value


### `--key`

A Bitbucket OAuth consumer key
-  Requires a value


### `--secret`

A Bitbucket OAuth consumer secret
-  Requires a value


### `--server-project`

The project (e.g. 'namespace/repo')
-  Requires a value


### `--repository`

The repository to track (e.g. 'owner/repository')
-  Requires a value


### `--build-merge-requests`

GitLab: build merge requests as environments
-  Default: `true`
-  Requires a value


### `--build-pull-requests`

Build every pull request as an environment
-  Default: `true`
-  Requires a value


### `--build-draft-pull-requests`

Build draft pull requests
-  Default: `true`
-  Requires a value


### `--build-pull-requests-post-merge`

Build pull requests based on their post-merge state
-  Default: `false`
-  Requires a value


### `--build-wip-merge-requests`

GitLab: build WIP merge requests
-  Default: `true`
-  Requires a value


### `--merge-requests-clone-parent-data`

GitLab: clone data for merge requests
-  Default: `true`
-  Requires a value


### `--pull-requests-clone-parent-data`

Clone the parent environment's data for pull requests
-  Default: `true`
-  Requires a value


### `--resync-pull-requests`

Re-sync pull request environment data on every build
-  Default: `false`
-  Requires a value


### `--fetch-branches`

Fetch all branches from the remote (as inactive environments)
-  Default: `true`
-  Requires a value


### `--prune-branches`

Delete branches that do not exist on the remote
-  Default: `true`
-  Requires a value


### `--room`

HipChat room ID
-  Requires a value


### `--url`

Webhook: a URL to receive JSON data
-  Requires a value


### `--shared-key`

Webhook: the JWS shared secret key
-  Requires a value


### `--file`

The name of a local file that contains the script to upload
-  Requires a value


### `--events`

A list of events to act on, e.g. environment.push
-  Default: `*`
-  Requires a value


### `--states`

A list of states to act on, e.g. pending, in_progress, complete
-  Default: `complete`
-  Requires a value


### `--environments`

The environment IDs to include
-  Default: `*`
-  Requires a value


### `--excluded-environments`

The environment IDs to exclude
-  Default: `[]`
-  Requires a value


### `--from-address`

[Optional] Custom From address for alert emails
-  Requires a value


### `--recipients`

The recipient email address(es)
-  Default: `[]`
-  Requires a value


### `--channel`

The Slack channel
-  Requires a value


### `--routing-key`

The PagerDuty routing key
-  Requires a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--no-wait`, `-W`



Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `integration:delete`

Delete an integration from a project

```bash
magento-cloud integration:delete [-p|--project PROJECT] [--host HOST] [-W|--no-wait] [--wait] [--] [<id>]
```

 <!-- app.name --> <!-- command.usage -->

### `id`

The integration ID. Leave blank to choose from a list.
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->




### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--no-wait`, `-W`



Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `integration:get`

View details of an integration

```bash
magento-cloud integration:get [-P|--property [PROPERTY]] [--format FORMAT] [--columns COLUMNS] [--no-header] [-p|--project PROJECT] [--host HOST] [--] [<id>]
```

 <!-- app.name --> <!-- command.usage -->

### `id`

An integration ID. Leave blank to choose from a list.
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->




### `--property`, `-P`



The integration property to view
-  Accepts a value


### `--format`

The output format (&quot;table&quot;, &quot;csv&quot;, &quot;tsv&quot;, or &quot;plain&quot;)
-  Default: `table`
-  Requires a value


### `--columns`

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`

Do not output the table header
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `integration:list`

View a list of project integration(s)

```bash
magento-cloud integrations [--format FORMAT] [--columns COLUMNS] [--no-header] [-p|--project PROJECT] [--host HOST]
```

 <!-- app.name -->

```bash
integrations
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->



### `--format`

The output format (&quot;table&quot;, &quot;csv&quot;, &quot;tsv&quot;, or &quot;plain&quot;)
-  Default: `table`
-  Requires a value


### `--columns`

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`

Do not output the table header
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `integration:update`

Update an integration

```bash
magento-cloud integration:update [--type TYPE] [--base-url BASE-URL] [--username USERNAME] [--token TOKEN] [--key KEY] [--secret SECRET] [--server-project SERVER-PROJECT] [--repository REPOSITORY] [--build-merge-requests BUILD-MERGE-REQUESTS] [--build-pull-requests BUILD-PULL-REQUESTS] [--build-draft-pull-requests BUILD-DRAFT-PULL-REQUESTS] [--build-pull-requests-post-merge BUILD-PULL-REQUESTS-POST-MERGE] [--build-wip-merge-requests BUILD-WIP-MERGE-REQUESTS] [--merge-requests-clone-parent-data MERGE-REQUESTS-CLONE-PARENT-DATA] [--pull-requests-clone-parent-data PULL-REQUESTS-CLONE-PARENT-DATA] [--resync-pull-requests RESYNC-PULL-REQUESTS] [--fetch-branches FETCH-BRANCHES] [--prune-branches PRUNE-BRANCHES] [--room ROOM] [--url URL] [--shared-key SHARED-KEY] [--file FILE] [--events EVENTS] [--states STATES] [--environments ENVIRONMENTS] [--excluded-environments EXCLUDED-ENVIRONMENTS] [--from-address FROM-ADDRESS] [--recipients RECIPIENTS] [--channel CHANNEL] [--routing-key ROUTING-KEY] [-p|--project PROJECT] [--host HOST] [-W|--no-wait] [--wait] [--] [<id>]
```

 <!-- app.name --> <!-- command.usage -->

### `id`

The ID of the integration to update
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->



### `--type`

The integration type ('bitbucket', 'bitbucket_server', 'github', 'gitlab', 'hipchat', 'webhook', 'health.email', 'health.pagerduty', 'health.slack', 'health.webhook', 'script')
-  Requires a value


### `--base-url`

The base URL of the server installation
-  Requires a value


### `--username`

The Bitbucket Server username
-  Requires a value


### `--token`

An access token for the integration
-  Requires a value


### `--key`

A Bitbucket OAuth consumer key
-  Requires a value


### `--secret`

A Bitbucket OAuth consumer secret
-  Requires a value


### `--server-project`

The project (e.g. 'namespace/repo')
-  Requires a value


### `--repository`

The repository to track (e.g. 'owner/repository')
-  Requires a value


### `--build-merge-requests`

GitLab: build merge requests as environments
-  Default: `true`
-  Requires a value


### `--build-pull-requests`

Build every pull request as an environment
-  Default: `true`
-  Requires a value


### `--build-draft-pull-requests`

Build draft pull requests
-  Default: `true`
-  Requires a value


### `--build-pull-requests-post-merge`

Build pull requests based on their post-merge state
-  Default: `false`
-  Requires a value


### `--build-wip-merge-requests`

GitLab: build WIP merge requests
-  Default: `true`
-  Requires a value


### `--merge-requests-clone-parent-data`

GitLab: clone data for merge requests
-  Default: `true`
-  Requires a value


### `--pull-requests-clone-parent-data`

Clone the parent environment's data for pull requests
-  Default: `true`
-  Requires a value


### `--resync-pull-requests`

Re-sync pull request environment data on every build
-  Default: `false`
-  Requires a value


### `--fetch-branches`

Fetch all branches from the remote (as inactive environments)
-  Default: `true`
-  Requires a value


### `--prune-branches`

Delete branches that do not exist on the remote
-  Default: `true`
-  Requires a value


### `--room`

HipChat room ID
-  Requires a value


### `--url`

Webhook: a URL to receive JSON data
-  Requires a value


### `--shared-key`

Webhook: the JWS shared secret key
-  Requires a value


### `--file`

The name of a local file that contains the script to upload
-  Requires a value


### `--events`

A list of events to act on, e.g. environment.push
-  Default: `*`
-  Requires a value


### `--states`

A list of states to act on, e.g. pending, in_progress, complete
-  Default: `complete`
-  Requires a value


### `--environments`

The environment IDs to include
-  Default: `*`
-  Requires a value


### `--excluded-environments`

The environment IDs to exclude
-  Default: `[]`
-  Requires a value


### `--from-address`

[Optional] Custom From address for alert emails
-  Requires a value


### `--recipients`

The recipient email address(es)
-  Default: `[]`
-  Requires a value


### `--channel`

The Slack channel
-  Requires a value


### `--routing-key`

The PagerDuty routing key
-  Requires a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--no-wait`, `-W`



Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `integration:validate`

Validate an existing integration

```bash
magento-cloud integration:validate [-p|--project PROJECT] [--host HOST] [--] [<id>]
```

 <!-- app.name --> <!-- command.usage -->

### `id`

An integration ID. Leave blank to choose from a list.
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->




### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `local:build`

Build the current project locally

```bash
magento-cloud build [-a|--abslinks] [-s|--source SOURCE] [-d|--destination DESTINATION] [-c|--copy] [--clone] [--run-deploy-hooks] [--no-clean] [--no-archive] [--no-backup] [--no-cache] [--no-build-hooks] [--no-deps] [--working-copy] [--concurrency CONCURRENCY] [--lock] [--] [<app>]...
```

 <!-- app.name -->

```bash
build
```

 <!-- app.name --> <!-- command.usage -->

### `app`

Specify application(s) to build

-  Default: `[]`
   
-  Array <!-- argument --> <!-- arguments --> <!-- arguments.size -->




### `--abslinks`, `-a`



Use absolute links
-  Default: `false`
-  Does not accept a value



### `--source`, `-s`



The source directory. Defaults to the current project root.
-  Requires a value



### `--destination`, `-d`



The destination, to which the web root of each app will be symlinked. Default: _www
-  Requires a value



### `--copy`, `-c`



Copy to a build directory, instead of symlinking from the source
-  Default: `false`
-  Does not accept a value


### `--clone`

Use Git to clone the current HEAD to the build directory
-  Default: `false`
-  Does not accept a value


### `--run-deploy-hooks`

Run deploy and/or post_deploy hooks
-  Default: `false`
-  Does not accept a value


### `--no-clean`

Do not remove old builds
-  Default: `false`
-  Does not accept a value


### `--no-archive`

Do not create or use a build archive
-  Default: `false`
-  Does not accept a value


### `--no-backup`

Do not back up the previous build
-  Default: `false`
-  Does not accept a value


### `--no-cache`

Disable caching
-  Default: `false`
-  Does not accept a value


### `--no-build-hooks`

Do not run post-build hooks
-  Default: `false`
-  Does not accept a value


### `--no-deps`

Do not install build dependencies locally
-  Default: `false`
-  Does not accept a value


### `--working-copy`

Drush: use git to clone a repository of each Drupal module rather than simply downloading a version
-  Default: `false`
-  Does not accept a value


### `--concurrency`

Drush: set the number of concurrent projects that will be processed at the same time
-  Default: `4`
-  Requires a value


### `--lock`

Drush: create or update a lock file (only available with Drush version 7+)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `local:clean`

Remove old project builds

```bash
magento-cloud clean [--keep KEEP] [--max-age MAX-AGE] [--include-active]
```

 <!-- app.name -->

```bash
clean
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->



### `--keep`

The maximum number of builds to keep
-  Default: `5`
-  Requires a value


### `--max-age`

The maximum age of builds, in seconds. Ignored if not set.
-  Requires a value


### `--include-active`

Delete active build(s) too
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `local:dir`

Find the local project root

```bash
magento-cloud dir [<subdir>]
```

 <!-- app.name -->

```bash
dir
```

 <!-- app.name --> <!-- command.usage -->

### `subdir`

The subdirectory to find ('local', 'web' or 'shared')
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->




### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `mount:download`

Download files from a mount, using rsync

```bash
magento-cloud mount:download [-a|--all] [-m|--mount MOUNT] [--target TARGET] [--source-path] [--delete] [--exclude EXCLUDE] [--include INCLUDE] [--refresh] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [-A|--app APP] [--worker WORKER] [-i|--identity-file IDENTITY-FILE]
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->




### `--all`, `-a`



Download from all mounts
-  Default: `false`
-  Does not accept a value



### `--mount`, `-m`



The mount (as an app-relative path)
-  Requires a value


### `--target`

The directory to which files will be downloaded. If --all is used, the mount path will be appended
-  Requires a value


### `--source-path`

Use the mount's source path (rather than the mount path) as a subdirectory of the target, when --all is used
-  Default: `false`
-  Does not accept a value


### `--delete`

Whether to delete extraneous files in the target directory
-  Default: `false`
-  Does not accept a value


### `--exclude`

File(s) to exclude from the download (pattern)
-  Default: `[]`
-  Requires a value


### `--include`

File(s) to include in the download (pattern)
-  Default: `[]`
-  Requires a value


### `--refresh`

Whether to refresh the cache
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value



### `--app`, `-A`



The remote application name
-  Requires a value


### `--worker`

A worker name
-  Requires a value



### `--identity-file`, `-i`



An SSH identity (private key) to use
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `mount:list`

Get a list of mounts

```bash
magento-cloud mounts [--paths] [--refresh] [--format FORMAT] [--columns COLUMNS] [--no-header] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [-A|--app APP] [--worker WORKER]
```

 <!-- app.name -->

```bash
mounts
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->



### `--paths`

Output the mount paths only (one per line)
-  Default: `false`
-  Does not accept a value


### `--refresh`

Whether to refresh the cache
-  Default: `false`
-  Does not accept a value


### `--format`

The output format (&quot;table&quot;, &quot;csv&quot;, &quot;tsv&quot;, or &quot;plain&quot;)
-  Default: `table`
-  Requires a value


### `--columns`

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`

Do not output the table header
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value



### `--app`, `-A`



The remote application name
-  Requires a value


### `--worker`

A worker name
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `mount:size`

Check the disk usage of mounts

```bash
magento-cloud mount:size [-B|--bytes] [--refresh] [--format FORMAT] [--columns COLUMNS] [--no-header] [-i|--identity-file IDENTITY-FILE] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [-A|--app APP] [--worker WORKER]
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->




### `--bytes`, `-B`



Show sizes in bytes
-  Default: `false`
-  Does not accept a value


### `--refresh`

Refresh the cache
-  Default: `false`
-  Does not accept a value


### `--format`

The output format (&quot;table&quot;, &quot;csv&quot;, &quot;tsv&quot;, or &quot;plain&quot;)
-  Default: `table`
-  Requires a value


### `--columns`

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`

Do not output the table header
-  Default: `false`
-  Does not accept a value



### `--identity-file`, `-i`



An SSH identity (private key) to use
-  Requires a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value



### `--app`, `-A`



The remote application name
-  Requires a value


### `--worker`

A worker name
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `mount:upload`

Upload files to a mount, using rsync

```bash
magento-cloud mount:upload [--source SOURCE] [-m|--mount MOUNT] [--delete] [--exclude EXCLUDE] [--include INCLUDE] [--refresh] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [-A|--app APP] [--worker WORKER] [-i|--identity-file IDENTITY-FILE]
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->



### `--source`

A directory containing files to upload
-  Requires a value



### `--mount`, `-m`



The mount (as an app-relative path)
-  Requires a value


### `--delete`

Whether to delete extraneous files in the mount
-  Default: `false`
-  Does not accept a value


### `--exclude`

File(s) to exclude from the upload (pattern)
-  Default: `[]`
-  Requires a value


### `--include`

File(s) to include in the upload (pattern)
-  Default: `[]`
-  Requires a value


### `--refresh`

Whether to refresh the cache
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value



### `--app`, `-A`



The remote application name
-  Requires a value


### `--worker`

A worker name
-  Requires a value



### `--identity-file`, `-i`



An SSH identity (private key) to use
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `project:clear-build-cache`

Clear a project's build cache

```bash
magento-cloud project:clear-build-cache [-p|--project PROJECT] [--host HOST]
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->




### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `project:curl`

Run an authenticated cURL request on a project's API

```bash
magento-cloud project:curl [-X|--request REQUEST] [-d|--data DATA] [-i|--include] [-I|--head] [--disable-compression] [--enable-glob] [-H|--header HEADER] [-p|--project PROJECT] [--host HOST] [--] [<path>]
```

 <!-- app.name --> <!-- command.usage -->

### `path`

The API path
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->




### `--request`, `-X`



The request method to use
-  Requires a value



### `--data`, `-d`



Data to send
-  Requires a value



### `--include`, `-i`



Include headers in the output
-  Default: `false`
-  Does not accept a value



### `--head`, `-I`



Fetch headers only
-  Default: `false`
-  Does not accept a value


### `--disable-compression`

Do not use the curl --compressed flag
-  Default: `false`
-  Does not accept a value


### `--enable-glob`

Enable curl globbing (remove the --globoff flag)
-  Default: `false`
-  Does not accept a value



### `--header`, `-H`



Extra header(s)
-  Default: `[]`
-  Requires a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `project:get`

Clone a project locally

```bash
magento-cloud get [-e|--environment ENVIRONMENT] [--depth DEPTH] [--build] [-p|--project PROJECT] [--host HOST] [-i|--identity-file IDENTITY-FILE] [--] [<project>] [<directory>]
```

 <!-- app.name -->

```bash
get
```

 <!-- app.name --> <!-- command.usage -->

### `project`

The project ID
    <!-- argument -->

### `directory`

The directory to clone to. Defaults to the project title
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->




### `--environment`, `-e`



The environment ID to clone. Defaults to the project default, or the first available environment
-  Requires a value


### `--depth`

Create a shallow clone: limit the number of commits in the history
-  Requires a value


### `--build`

Build the project after cloning
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--identity-file`, `-i`



An SSH identity (private key) to use
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `project:info`

Read or set properties for a project

```bash
magento-cloud project:info [--refresh] [--date-fmt DATE-FMT] [--format FORMAT] [--columns COLUMNS] [--no-header] [-p|--project PROJECT] [--host HOST] [-W|--no-wait] [--wait] [--] [<property>] [<value>]
```

 <!-- app.name -->

```bash
project:metadata
```

 <!-- app.name --> <!-- command.usage -->

### `property`

The name of the property
    <!-- argument -->

### `value`

Set a new value for the property
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->



### `--refresh`

Whether to refresh the cache
-  Default: `false`
-  Does not accept a value


### `--date-fmt`

The date format (as a PHP date format string)
-  Default: `c`
-  Requires a value


### `--format`

The output format (&quot;table&quot;, &quot;csv&quot;, &quot;tsv&quot;, or &quot;plain&quot;)
-  Default: `table`
-  Requires a value


### `--columns`

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`

Do not output the table header
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--no-wait`, `-W`



Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `project:list`

Get a list of all active projects

```bash
magento-cloud project:list [--pipe] [--host HOST] [--title TITLE] [--my] [--refresh REFRESH] [--sort SORT] [--reverse] [--format FORMAT] [--columns COLUMNS] [--no-header]
```

 <!-- app.name -->

```bash
projects
```

 <!-- app.name -->

```bash
pro
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->



### `--pipe`

Output a simple list of project IDs
-  Default: `false`
-  Does not accept a value


### `--host`

Filter by region hostname (exact match)
-  Requires a value


### `--title`

Filter by title (case-insensitive search)
-  Requires a value


### `--my`

Display only the projects you own
-  Default: `false`
-  Does not accept a value


### `--refresh`

Whether to refresh the list
-  Default: `1`
-  Requires a value


### `--sort`

A property to sort by
-  Default: `title`
-  Requires a value


### `--reverse`

Sort in reverse (descending) order
-  Default: `false`
-  Does not accept a value


### `--format`

The output format (&quot;table&quot;, &quot;csv&quot;, &quot;tsv&quot;, or &quot;plain&quot;)
-  Default: `table`
-  Requires a value


### `--columns`

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`

Do not output the table header
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `project:set-remote`

Set the remote project for the current Git repository

```bash
magento-cloud project:set-remote [<project>]
```

 <!-- app.name --> <!-- command.usage -->

### `project`

The project ID
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->




### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `project:variable:delete`

&lt;fg=white;bg=red&gt;[ DEPRECATED ]&lt;/&gt; Delete a variable from a project

```bash
magento-cloud project:variable:delete [-p|--project PROJECT] [--host HOST] [-W|--no-wait] [--wait] [--] <name>
```

 <!-- app.name --> <!-- command.usage -->

### `name`

The variable name
-  Required
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->




### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--no-wait`, `-W`



Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `project:variable:get`

&lt;fg=white;bg=red&gt;[ DEPRECATED ]&lt;/&gt; View variable(s) for a project

```bash
magento-cloud project:variable:get [--pipe] [--format FORMAT] [--columns COLUMNS] [--no-header] [-p|--project PROJECT] [--host HOST] [--] [<name>]
```

 <!-- app.name -->

```bash
project-variables
```

 <!-- app.name -->

```bash
pvget
```

 <!-- app.name -->

```bash
project:variable:list
```

 <!-- app.name --> <!-- command.usage -->

### `name`

The name of the variable
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->



### `--pipe`

Output the full variable value only (a &quot;name&quot; must be specified)
-  Default: `false`
-  Does not accept a value


### `--format`

The output format (&quot;table&quot;, &quot;csv&quot;, &quot;tsv&quot;, or &quot;plain&quot;)
-  Default: `table`
-  Requires a value


### `--columns`

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`

Do not output the table header
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `project:variable:set`

&lt;fg=white;bg=red&gt;[ DEPRECATED ]&lt;/&gt; Set a variable for a project

```bash
magento-cloud pvset [--json] [--no-visible-build] [--no-visible-runtime] [-p|--project PROJECT] [--host HOST] [-W|--no-wait] [--wait] [--] <name> <value>
```

 <!-- app.name -->

```bash
pvset
```

 <!-- app.name --> <!-- command.usage -->

### `name`

The variable name
-  Required
    <!-- argument -->

### `value`

The variable value
-  Required
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->



### `--json`

Mark the value as JSON
-  Default: `false`
-  Does not accept a value


### `--no-visible-build`

Do not expose this variable at build time
-  Default: `false`
-  Does not accept a value


### `--no-visible-runtime`

Do not expose this variable at runtime
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--no-wait`, `-W`



Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `repo:cat`

Read a file in the project repository

```bash
magento-cloud repo:cat [-c|--commit COMMIT] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [--] <path>
```

 <!-- app.name --> <!-- command.usage -->

### `path`

The path to the file
-  Required
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->




### `--commit`, `-c`



The commit SHA. This can also accept &quot;HEAD&quot;, and caret (^) or tilde (~) suffixes for parent commits.
-  Requires a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `repo:ls`

List files in the project repository

```bash
magento-cloud repo:ls [-d|--directories] [-f|--files] [--git-style] [-c|--commit COMMIT] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [--] [<path>]
```

 <!-- app.name --> <!-- command.usage -->

### `path`

The path to a subdirectory
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->




### `--directories`, `-d`



Show directories only
-  Default: `false`
-  Does not accept a value



### `--files`, `-f`



Show files only
-  Default: `false`
-  Does not accept a value


### `--git-style`

Style output similar to &quot;git ls-tree&quot;
-  Default: `false`
-  Does not accept a value



### `--commit`, `-c`



The commit SHA. This can also accept &quot;HEAD&quot;, and caret (^) or tilde (~) suffixes for parent commits.
-  Requires a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `route:get`

View detailed information about a route

```bash
magento-cloud route:get [--id ID] [-1|--primary] [-P|--property PROPERTY] [--refresh] [--date-fmt DATE-FMT] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [-A|--app APP] [-i|--identity-file IDENTITY-FILE] [--] [<route>]
```

 <!-- app.name --> <!-- command.usage -->

### `route`

The route's original URL
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->



### `--id`

A route ID to select
-  Requires a value



### `--primary`, `-1`



Select the primary route
-  Default: `false`
-  Does not accept a value



### `--property`, `-P`



The property to display
-  Requires a value


### `--refresh`

Bypass the cache of routes
-  Default: `false`
-  Does not accept a value


### `--date-fmt`

The date format (as a PHP date format string)
-  Default: `c`
-  Requires a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value



### `--app`, `-A`



[Deprecated option, no longer used]
-  Requires a value



### `--identity-file`, `-i`



[Deprecated option, no longer used]
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `route:list`

List all routes for an environment

```bash
magento-cloud routes [--refresh] [--format FORMAT] [--columns COLUMNS] [--no-header] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [--] [<environment>]
```

 <!-- app.name -->

```bash
routes
```

 <!-- app.name -->

```bash
environment:routes
```

 <!-- app.name --> <!-- command.usage -->

### `environment`

The environment ID
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->



### `--refresh`

Bypass the cache of routes
-  Default: `false`
-  Does not accept a value


### `--format`

The output format (&quot;table&quot;, &quot;csv&quot;, &quot;tsv&quot;, or &quot;plain&quot;)
-  Default: `table`
-  Requires a value


### `--columns`

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`

Do not output the table header
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `self:install`

Install or update CLI configuration files

```bash
magento-cloud self:install [--shell-type SHELL-TYPE]
```

 <!-- app.name -->

```bash
local:install
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->



### `--shell-type`

The shell type for autocompletion (bash or zsh)
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `self:stats`

View stats on GitHub package downloads

```bash
magento-cloud self:stats [-p|--page PAGE] [-c|--count COUNT] [--format FORMAT] [--columns COLUMNS] [--no-header] [--date-fmt DATE-FMT]
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->




### `--page`, `-p`



Page number
-  Default: `1`
-  Requires a value



### `--count`, `-c`



Results per page (max: 100)
-  Default: `20`
-  Requires a value


### `--format`

The output format (&quot;table&quot;, &quot;csv&quot;, &quot;tsv&quot;, or &quot;plain&quot;)
-  Default: `table`
-  Requires a value


### `--columns`

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`

Do not output the table header
-  Default: `false`
-  Does not accept a value


### `--date-fmt`

The date format (as a PHP date format string)
-  Default: `c`
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `self:update`

Update the CLI to the latest version

```bash
magento-cloud self-update [--no-major] [--unstable] [--manifest MANIFEST] [--current-version CURRENT-VERSION] [--timeout TIMEOUT]
```

 <!-- app.name -->

```bash
self-update
```

 <!-- app.name -->

```bash
update
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->



### `--no-major`

Only update between minor or patch versions
-  Default: `false`
-  Does not accept a value


### `--unstable`

Update to a new unstable version, if available
-  Default: `false`
-  Does not accept a value


### `--manifest`

Override the manifest file location
-  Requires a value


### `--current-version`

Override the current version
-  Requires a value


### `--timeout`

A timeout for the version check
-  Default: `30`
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `service:list`

List services in the project

```bash
magento-cloud services [--refresh] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [--format FORMAT] [--columns COLUMNS] [--no-header]
```

 <!-- app.name -->

```bash
services
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->



### `--refresh`

Whether to refresh the cache
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value


### `--format`

The output format (&quot;table&quot;, &quot;csv&quot;, &quot;tsv&quot;, or &quot;plain&quot;)
-  Default: `table`
-  Requires a value


### `--columns`

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`

Do not output the table header
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `service:mongo:dump`

Create a binary archive dump of data from MongoDB

```bash
magento-cloud mongodump [-c|--collection COLLECTION] [-z|--gzip] [-o|--stdout] [-r|--relationship RELATIONSHIP] [-i|--identity-file IDENTITY-FILE] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [-A|--app APP]
```

 <!-- app.name -->

```bash
mongodump
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->




### `--collection`, `-c`



The collection to dump
-  Requires a value



### `--gzip`, `-z`



Compress the dump using gzip
-  Default: `false`
-  Does not accept a value



### `--stdout`, `-o`



Output to STDOUT instead of a file
-  Default: `false`
-  Does not accept a value



### `--relationship`, `-r`



The service relationship to use
-  Requires a value



### `--identity-file`, `-i`



An SSH identity (private key) to use
-  Requires a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value



### `--app`, `-A`



The remote application name
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `service:mongo:export`

Export data from MongoDB

```bash
magento-cloud mongoexport [-c|--collection COLLECTION] [--jsonArray] [--type TYPE] [-f|--fields FIELDS] [-r|--relationship RELATIONSHIP] [-i|--identity-file IDENTITY-FILE] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [-A|--app APP]
```

 <!-- app.name -->

```bash
mongoexport
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->




### `--collection`, `-c`



The collection to export
-  Requires a value


### `--jsonArray`

Export data as a single JSON array
-  Default: `false`
-  Does not accept a value


### `--type`

The export type, e.g. &quot;csv&quot;
-  Requires a value



### `--fields`, `-f`



The fields to export
-  Default: `[]`
-  Requires a value



### `--relationship`, `-r`



The service relationship to use
-  Requires a value



### `--identity-file`, `-i`



An SSH identity (private key) to use
-  Requires a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value



### `--app`, `-A`



The remote application name
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `service:mongo:restore`

Restore a binary archive dump of data into MongoDB

```bash
magento-cloud mongorestore [-c|--collection COLLECTION] [-r|--relationship RELATIONSHIP] [-i|--identity-file IDENTITY-FILE] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [-A|--app APP]
```

 <!-- app.name -->

```bash
mongorestore
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->




### `--collection`, `-c`



The collection to restore
-  Requires a value



### `--relationship`, `-r`



The service relationship to use
-  Requires a value



### `--identity-file`, `-i`



An SSH identity (private key) to use
-  Requires a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value



### `--app`, `-A`



The remote application name
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `service:mongo:shell`

Use the MongoDB shell

```bash
magento-cloud mongo [--eval EVAL] [-r|--relationship RELATIONSHIP] [-i|--identity-file IDENTITY-FILE] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [-A|--app APP]
```

 <!-- app.name -->

```bash
mongo
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->



### `--eval`

Pass a JavaScript fragment to the shell
-  Requires a value



### `--relationship`, `-r`



The service relationship to use
-  Requires a value



### `--identity-file`, `-i`



An SSH identity (private key) to use
-  Requires a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value



### `--app`, `-A`



The remote application name
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `service:redis-cli`

Access the Redis CLI

```bash
magento-cloud redis [-r|--relationship RELATIONSHIP] [-i|--identity-file IDENTITY-FILE] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [-A|--app APP] [--] [<args>]
```

 <!-- app.name -->

```bash
redis
```

 <!-- app.name --> <!-- command.usage -->

### `args`

Arguments to add to the Redis command
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->




### `--relationship`, `-r`



The service relationship to use
-  Requires a value



### `--identity-file`, `-i`



An SSH identity (private key) to use
-  Requires a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value



### `--app`, `-A`



The remote application name
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `session:switch`

&lt;fg=white;bg=red&gt;[ BETA ]&lt;/&gt; Switch between sessions

```bash
magento-cloud session:switch [<id>]
```

 <!-- app.name --> <!-- command.usage -->

### `id`

The new session ID
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->




### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `snapshot:create`

Make a snapshot of an environment

```bash
magento-cloud backup [--live] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [-W|--no-wait] [--wait] [--] [<environment>]
```

 <!-- app.name -->

```bash
backup
```

 <!-- app.name -->

```bash
backup:create
```

 <!-- app.name -->

```bash
environment:backup
```

 <!-- app.name --> <!-- command.usage -->

### `environment`

The environment
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->



### `--live`

Live backup: do not stop the environment. If set, this leaves the environment running and open to connections during the backup. This reduces downtime, at the risk of backing up data in an inconsistent state.
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value



### `--no-wait`, `-W`



Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `snapshot:list`

List available snapshots of an environment

```bash
magento-cloud snapshots [--limit LIMIT] [--start START] [--format FORMAT] [--columns COLUMNS] [--no-header] [--date-fmt DATE-FMT] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT]
```

 <!-- app.name -->

```bash
snapshots
```

 <!-- app.name -->

```bash
backups
```

 <!-- app.name -->

```bash
backup:list
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->



### `--limit`

Limit the number of snapshots to list
-  Default: `10`
-  Requires a value


### `--start`

Only snapshots created before this date will be listed
-  Requires a value


### `--format`

The output format (&quot;table&quot;, &quot;csv&quot;, &quot;tsv&quot;, or &quot;plain&quot;)
-  Default: `table`
-  Requires a value


### `--columns`

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`

Do not output the table header
-  Default: `false`
-  Does not accept a value


### `--date-fmt`

The date format (as a PHP date format string)
-  Default: `c`
-  Requires a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `snapshot:restore`

Restore an environment snapshot

```bash
magento-cloud snapshot:restore [--target TARGET] [--branch-from BRANCH-FROM] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [-W|--no-wait] [--wait] [--] [<snapshot>]
```

 <!-- app.name -->

```bash
environment:restore
```

 <!-- app.name -->

```bash
snapshot:restore
```

 <!-- app.name --> <!-- command.usage -->

### `snapshot`

The name of the snapshot. Defaults to the most recent one
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->



### `--target`

The environment to restore to. Defaults to the snapshot's current environment
-  Requires a value


### `--branch-from`

If the --target does not yet exist, this specifies the parent of the new environment
-  Requires a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value



### `--no-wait`, `-W`



Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `source-operation:run`

&lt;fg=white;bg=red&gt;[ BETA ]&lt;/&gt; Run a source operation

```bash
magento-cloud source-operation:run [--variable VARIABLE] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [-W|--no-wait] [--wait] [--] <operation>
```

 <!-- app.name --> <!-- command.usage -->

### `operation`

The operation name
-  Required
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->



### `--variable`

A variable to set during the operation, in the format &lt;info&gt;type:name=value&lt;/info&gt;
-  Default: `[]`
-  Requires a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value



### `--no-wait`, `-W`



Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `ssh-cert:info`

Display information about the current SSH certificate

```bash
magento-cloud ssh-cert:info [--no-refresh] [-P|--property PROPERTY] [--date-fmt DATE-FMT]
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->



### `--no-refresh`

Do not refresh the certificate if it is invalid
-  Default: `false`
-  Does not accept a value



### `--property`, `-P`



The certificate property to display
-  Requires a value


### `--date-fmt`

The date format (as a PHP date format string)
-  Default: `c`
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `ssh-cert:load`

Generate an SSH certificate

```bash
magento-cloud ssh-cert:load [--refresh-only] [--new] [--new-key]
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->



### `--refresh-only`

Only refresh the certificate, if necessary (do not write SSH config)
-  Default: `false`
-  Does not accept a value


### `--new`

Force the certificate to be refreshed
-  Default: `false`
-  Does not accept a value


### `--new-key`

[Deprecated] Use --new instead
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `ssh-key:add`

Add a new SSH key

```bash
magento-cloud ssh-key:add [--name NAME] [--] [<path>]
```

 <!-- app.name --> <!-- command.usage -->

### `path`

The path to an existing SSH public key
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->



### `--name`

A name to identify the key
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `ssh-key:delete`

Delete an SSH key

```bash
magento-cloud ssh-key:delete [<id>]
```

 <!-- app.name --> <!-- command.usage -->

### `id`

The ID of the SSH key to delete
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->




### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `ssh-key:list`

Get a list of SSH keys in your account

```bash
magento-cloud ssh-keys [--format FORMAT] [--columns COLUMNS] [--no-header]
```

 <!-- app.name -->

```bash
ssh-keys
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->



### `--format`

The output format (&quot;table&quot;, &quot;csv&quot;, &quot;tsv&quot;, or &quot;plain&quot;)
-  Default: `table`
-  Requires a value


### `--columns`

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`

Do not output the table header
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `subscription:info`

Read or modify subscription properties

```bash
magento-cloud subscription:info [-s|--id ID] [--date-fmt DATE-FMT] [--format FORMAT] [--columns COLUMNS] [--no-header] [-p|--project PROJECT] [--host HOST] [--] [<property>] [<value>]
```

 <!-- app.name --> <!-- command.usage -->

### `property`

The name of the property
    <!-- argument -->

### `value`

Set a new value for the property
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->




### `--id`, `-s`



The subscription ID
-  Requires a value


### `--date-fmt`

The date format (as a PHP date format string)
-  Default: `c`
-  Requires a value


### `--format`

The output format (&quot;table&quot;, &quot;csv&quot;, &quot;tsv&quot;, or &quot;plain&quot;)
-  Default: `table`
-  Requires a value


### `--columns`

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`

Do not output the table header
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `tunnel:close`

Close SSH tunnels

```bash
magento-cloud tunnel:close [-a|--all] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [-A|--app APP]
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->




### `--all`, `-a`



Close all tunnels
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value



### `--app`, `-A`



The remote application name
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `tunnel:info`

View relationship info for SSH tunnels

```bash
magento-cloud tunnel:info [-P|--property PROPERTY] [-c|--encode] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [-A|--app APP] [--format FORMAT] [--columns COLUMNS] [--no-header]
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->




### `--property`, `-P`



The relationship property to view
-  Requires a value



### `--encode`, `-c`



Output as base64-encoded JSON
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value



### `--app`, `-A`



The remote application name
-  Requires a value


### `--format`

The output format (&quot;table&quot;, &quot;csv&quot;, &quot;tsv&quot;, or &quot;plain&quot;)
-  Default: `table`
-  Requires a value


### `--columns`

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`

Do not output the table header
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `tunnel:list`

List SSH tunnels

```bash
magento-cloud tunnels [-a|--all] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [-A|--app APP] [--format FORMAT] [--columns COLUMNS] [--no-header]
```

 <!-- app.name -->

```bash
tunnels
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->




### `--all`, `-a`



View all tunnels
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value



### `--app`, `-A`



The remote application name
-  Requires a value


### `--format`

The output format (&quot;table&quot;, &quot;csv&quot;, &quot;tsv&quot;, or &quot;plain&quot;)
-  Default: `table`
-  Requires a value


### `--columns`

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`

Do not output the table header
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `tunnel:open`

Open SSH tunnels to an app's relationships

```bash
magento-cloud tunnel:open [-g|--gateway-ports] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [-A|--app APP] [-i|--identity-file IDENTITY-FILE]
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->




### `--gateway-ports`, `-g`



Allow remote hosts to connect to local forwarded ports
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value



### `--app`, `-A`



The remote application name
-  Requires a value



### `--identity-file`, `-i`



An SSH identity (private key) to use
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `tunnel:single`

Open a single SSH tunnel to an app relationship

```bash
magento-cloud tunnel:single [--port PORT] [-g|--gateway-ports] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [-A|--app APP] [-r|--relationship RELATIONSHIP] [-i|--identity-file IDENTITY-FILE]
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->



### `--port`

The local port
-  Requires a value



### `--gateway-ports`, `-g`



Allow remote hosts to connect to local forwarded ports
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value



### `--app`, `-A`



The remote application name
-  Requires a value



### `--relationship`, `-r`



The service relationship to use
-  Requires a value



### `--identity-file`, `-i`



An SSH identity (private key) to use
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `user:add`

Add a user to the project

```bash
magento-cloud user:add [-r|--role ROLE] [-p|--project PROJECT] [--host HOST] [-W|--no-wait] [--wait] [--] [<email>]
```

 <!-- app.name --> <!-- command.usage -->

### `email`

The user's email address
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->




### `--role`, `-r`



The user's project role ('admin' or 'viewer') or environment-specific role (e.g. 'master:contributor' or 'stage:viewer'). The character % can be used as a wildcard in the environment ID e.g. '%:viewer'. The role can be abbreviated, e.g. 'master:c'.
-  Default: `[]`
-  Requires a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--no-wait`, `-W`



Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `user:delete`

Delete a user from the project

```bash
magento-cloud user:delete [-p|--project PROJECT] [--host HOST] [-W|--no-wait] [--wait] [--] <email>
```

 <!-- app.name --> <!-- command.usage -->

### `email`

The user's email address
-  Required
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->




### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--no-wait`, `-W`



Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `user:get`

View a user's role(s)

```bash
magento-cloud user:get [-l|--level LEVEL] [--pipe] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [-W|--no-wait] [--wait] [-r|--role ROLE] [--] [<email>]
```

 <!-- app.name -->

```bash
user:role
```

 <!-- app.name --> <!-- command.usage -->

### `email`

The user's email address
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->




### `--level`, `-l`



The role level ('project' or 'environment')
-  Requires a value


### `--pipe`

Output the role to stdout (after making any changes)
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value



### `--no-wait`, `-W`



Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--role`, `-r`



[Deprecated: use user:update to change a user's role(s)]
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `user:list`

List project users

```bash
magento-cloud users [--format FORMAT] [--columns COLUMNS] [--no-header] [-p|--project PROJECT] [--host HOST]
```

 <!-- app.name -->

```bash
users
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->



### `--format`

The output format (&quot;table&quot;, &quot;csv&quot;, &quot;tsv&quot;, or &quot;plain&quot;)
-  Default: `table`
-  Requires a value


### `--columns`

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`

Do not output the table header
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `user:update`

Update user role(s) on a project

```bash
magento-cloud user:update [-r|--role ROLE] [-p|--project PROJECT] [--host HOST] [-W|--no-wait] [--wait] [--] [<email>]
```

 <!-- app.name --> <!-- command.usage -->

### `email`

The user's email address
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->




### `--role`, `-r`



The user's project role ('admin' or 'viewer') or environment-specific role (e.g. 'master:contributor' or 'stage:viewer'). The character % can be used as a wildcard in the environment ID e.g. '%:viewer'. The role can be abbreviated, e.g. 'master:c'.
-  Default: `[]`
-  Requires a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--no-wait`, `-W`



Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `variable:create`

Create a variable

```bash
magento-cloud variable:create [-l|--level LEVEL] [--name NAME] [--value VALUE] [--json JSON] [--sensitive SENSITIVE] [--prefix PREFIX] [--enabled ENABLED] [--inheritable INHERITABLE] [--visible-build VISIBLE-BUILD] [--visible-runtime VISIBLE-RUNTIME] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [-W|--no-wait] [--wait] [--] [<name>]
```

 <!-- app.name --> <!-- command.usage -->

### `name`

The variable name
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->




### `--level`, `-l`



The level at which to set the variable ('project' or 'environment')
-  Requires a value


### `--name`

The variable name
-  Requires a value


### `--value`

The variable's value
-  Requires a value


### `--json`

Whether the variable is JSON-formatted
-  Default: `false`
-  Requires a value


### `--sensitive`

Whether the variable is sensitive
-  Default: `false`
-  Requires a value


### `--prefix`

The variable name's prefix (e.g. 'none' or 'env:')
-  Default: `none`
-  Requires a value


### `--enabled`

Whether the variable should be enabled
-  Default: `true`
-  Requires a value


### `--inheritable`

Whether the variable is inheritable by child environments
-  Default: `true`
-  Requires a value


### `--visible-build`

Whether the variable should be visible at build time
-  Default: `true`
-  Requires a value


### `--visible-runtime`

Whether the variable should be visible at runtime
-  Default: `true`
-  Requires a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value



### `--no-wait`, `-W`



Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `variable:delete`

Delete a variable

```bash
magento-cloud variable:delete [-l|--level LEVEL] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [-W|--no-wait] [--wait] [--] <name>
```

 <!-- app.name --> <!-- command.usage -->

### `name`

The variable name
-  Required
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->




### `--level`, `-l`



The variable level ('project', 'environment', 'p' or 'e')
-  Requires a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value



### `--no-wait`, `-W`



Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `variable:disable`

&lt;fg=white;bg=red&gt;[ DEPRECATED ]&lt;/&gt; Disable an enabled environment-level variable

```bash
magento-cloud variable:disable [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [-W|--no-wait] [--wait] [--] <name>
```

 <!-- app.name --> <!-- command.usage -->

### `name`

The name of the variable
-  Required
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->




### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value



### `--no-wait`, `-W`



Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `variable:enable`

&lt;fg=white;bg=red&gt;[ DEPRECATED ]&lt;/&gt; Enable a disabled environment-level variable

```bash
magento-cloud variable:enable [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [-W|--no-wait] [--wait] [--] <name>
```

 <!-- app.name --> <!-- command.usage -->

### `name`

The name of the variable
-  Required
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->




### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value



### `--no-wait`, `-W`



Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `variable:get`

View a variable

```bash
magento-cloud vget [-P|--property PROPERTY] [-l|--level LEVEL] [--format FORMAT] [--columns COLUMNS] [--no-header] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [--pipe] [--] [<name>]
```

 <!-- app.name -->

```bash
vget
```

 <!-- app.name --> <!-- command.usage -->

### `name`

The name of the variable
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->




### `--property`, `-P`



View a single variable property
-  Requires a value



### `--level`, `-l`



The variable level ('project', 'environment', 'p' or 'e')
-  Requires a value


### `--format`

The output format (&quot;table&quot;, &quot;csv&quot;, &quot;tsv&quot;, or &quot;plain&quot;)
-  Default: `table`
-  Requires a value


### `--columns`

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`

Do not output the table header
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value


### `--pipe`

[Deprecated option] Output the variable value only
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `variable:list`

List variables

```bash
magento-cloud variable:list [-l|--level LEVEL] [--format FORMAT] [--columns COLUMNS] [--no-header] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT]
```

 <!-- app.name -->

```bash
variables
```

 <!-- app.name -->

```bash
var
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->




### `--level`, `-l`



The variable level ('project', 'environment', 'p' or 'e')
-  Requires a value


### `--format`

The output format (&quot;table&quot;, &quot;csv&quot;, &quot;tsv&quot;, or &quot;plain&quot;)
-  Default: `table`
-  Requires a value


### `--columns`

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`

Do not output the table header
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `variable:set`

&lt;fg=white;bg=red&gt;[ DEPRECATED ]&lt;/&gt; Set a variable for an environment

```bash
magento-cloud vset [--json] [--disabled] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [-W|--no-wait] [--wait] [--] <name> <value>
```

 <!-- app.name -->

```bash
vset
```

 <!-- app.name --> <!-- command.usage -->

### `name`

The variable name
-  Required
    <!-- argument -->

### `value`

The variable value
-  Required
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->



### `--json`

Mark the value as JSON
-  Default: `false`
-  Does not accept a value


### `--disabled`

Mark the variable as disabled
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value



### `--no-wait`, `-W`



Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `variable:update`

Update a variable

```bash
magento-cloud variable:update [-l|--level LEVEL] [--value VALUE] [--json JSON] [--sensitive SENSITIVE] [--enabled ENABLED] [--inheritable INHERITABLE] [--visible-build VISIBLE-BUILD] [--visible-runtime VISIBLE-RUNTIME] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [-W|--no-wait] [--wait] [--] <name>
```

 <!-- app.name --> <!-- command.usage -->

### `name`

The variable name
-  Required
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->




### `--level`, `-l`



The variable level ('project', 'environment', 'p' or 'e')
-  Requires a value


### `--value`

The variable's value
-  Requires a value


### `--json`

Whether the variable is JSON-formatted
-  Default: `false`
-  Requires a value


### `--sensitive`

Whether the variable is sensitive
-  Default: `false`
-  Requires a value


### `--enabled`

Whether the variable should be enabled
-  Default: `true`
-  Requires a value


### `--inheritable`

Whether the variable is inheritable by child environments
-  Default: `true`
-  Requires a value


### `--visible-build`

Whether the variable should be visible at build time
-  Default: `true`
-  Requires a value


### `--visible-runtime`

Whether the variable should be visible at runtime
-  Default: `true`
-  Requires a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value



### `--no-wait`, `-W`



Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `worker:list`

Get a list of all deployed workers

```bash
magento-cloud workers [--refresh] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [--format FORMAT] [--columns COLUMNS] [--no-header]
```

 <!-- app.name -->

```bash
workers
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->



### `--refresh`

Whether to refresh the cache
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`



The project ID or URL
-  Requires a value


### `--host`

The project's API hostname
-  Requires a value



### `--environment`, `-e`



The environment ID
-  Requires a value


### `--format`

The output format (&quot;table&quot;, &quot;csv&quot;, &quot;tsv&quot;, or &quot;plain&quot;)
-  Default: `table`
-  Requires a value


### `--columns`

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`

Do not output the table header
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`



Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`



Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`



Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`



Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`



Answer &quot;yes&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`



Answer &quot;no&quot; to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size --> <!-- commands --> <!-- file -->