# magento-cloud (Adobe Commerce on cloud infrastructure)

<!-- All the assigned and captured content is used in the included template -->

<!-- The template to render with above values -->
**Version**: 1.42.0

This reference contains 134 commands available through the `magento-cloud` command-line tool.
The initial list is auto generated using the `magento-cloud list` command at the  edition.

>[!NOTE]
>
>This reference is generated from the application codebase. To change the content, you can update the source code for the corresponding command implementation in the [codebase](https://github.com/magento) repository and submit your changes for review. Another way is to _Give us feedback_ (find the link at the upper right). For contribution guidelines, see [Code Contributions](https://developer.adobe.com/commerce/contributor/guides/code-contributions/).

## `_completion`

BASH completion hook.

```bash
_completion [-g|--generate-hook] [-p|--program PROGRAM] [-m|--multiple] [--shell-type [SHELL-TYPE]]
```

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
   
-  Accepts a value


## `bot`

The Magento Cloud Bot

```bash
magento-cloud bot [--party] [--parrot]
```

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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `clear-cache`

Clear the CLI cache

```bash
magento-cloud clear-cache
```


```bash
clearcache
```


```bash
cc
```

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `decode`

Decode an encoded string such as MAGENTO_CLOUD_VARIABLES

```bash
magento-cloud decode [-P|--property PROPERTY] [--] <value>
```


### `value`

The variable value to decode
   
-  Required

### `--property`, `-P`

The property to view within the variable
   
-  Requires a value

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `docs`

Open the online documentation

```bash
magento-cloud docs [--browser BROWSER] [--pipe] [--] [<search>]...
```


### `search`

Search term(s)
   
-  Default: `[]`
   
-  Array

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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `help`

Displays help for a command

```bash
magento-cloud help [--format FORMAT] [--raw] [--] [<command_name>]
```


### `command_name`

The command name
   
-  Default: `help`
   

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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `legacy-migrate`

Migrate from the legacy file structure

```bash
magento-cloud legacy-migrate [--no-backup]
```

### `--no-backup`

Do not create a backup of the project.
   
-  Default: `false`
-  Does not accept a value

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `list`

Lists commands

```bash
magento-cloud list [--raw] [--format FORMAT] [--all] [--] [<namespace>]
```


### `command`

The command to execute
   
-  Required

### `namespace`

The namespace name
   

### `--raw`

To output raw command list
   
-  Default: `false`
-  Does not accept a value

### `--format`

The output format (txt, xml, json, or md)
   
-  Default: `txt`
-  Requires a value

### `--all`

Show all commands, including hidden ones
   
-  Default: `false`
-  Does not accept a value

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `multi`

Execute a command on multiple projects

```bash
magento-cloud multi [-p|--projects PROJECTS] [--continue] [--sort SORT] [--reverse] [--] <cmd> (<cmd>)...
```


### `cmd`

The command to execute
   
-  Default: `[]`
   
-  Required
-  Array

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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `web`

Open the Web UI

```bash
magento-cloud web [--browser BROWSER] [--pipe] [-p|--project PROJECT] [-e|--environment ENVIRONMENT]
```

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

Deprecated option, no longer used
   
-  Requires a value

### `--environment`, `-e`

The environment ID
   
-  Requires a value

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `welcome`

Welcome to Magento Cloud

```bash
magento-cloud welcome
```

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `winky`



```bash
magento-cloud winky
```

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `activity:cancel`

Cancel an activity

```bash
magento-cloud activity:cancel [--type TYPE] [--exclude-type EXCLUDE-TYPE] [-a|--all] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [--] [<id>]
```


### `id`

The activity ID. Defaults to the most recent cancellable activity.
   

### `--type`

Filter by type (when selecting a default activity). If a list is given as a single value (e.g. &quot;a,b,c&quot;) it will be split by commas and/or whitespace. The % character can be used as a wildcard for the type, e.g. &apos;%var%&apos; to select variable-related activities.
   
-  Default: `[]`
-  Requires a value

### `--exclude-type`

Exclude by type (when selecting a default activity). If a list is given as a single value (e.g. &quot;a,b,c&quot;) it will be split by commas and/or whitespace. The % character can be used as a wildcard to exclude types.
   
-  Default: `[]`
-  Requires a value

### `--all`, `-a`

Check recent activities on all environments (when selecting a default activity)
   
-  Default: `false`
-  Does not accept a value

### `--project`, `-p`

The project ID or URL
   
-  Requires a value

### `--host`

Deprecated option, no longer used
   
-  Requires a value

### `--environment`, `-e`

The environment ID
   
-  Requires a value

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `activity:get`

View detailed information on a single activity

```bash
magento-cloud activity:get [-P|--property PROPERTY] [--type TYPE] [--exclude-type EXCLUDE-TYPE] [--state STATE] [--result RESULT] [-i|--incomplete] [-a|--all] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [--format FORMAT] [-c|--columns COLUMNS] [--no-header] [--date-fmt DATE-FMT] [--] [<id>]
```


### `id`

The activity ID. Defaults to the most recent activity.
   

### `--property`, `-P`

The property to view
   
-  Requires a value

### `--type`

Filter by type (when selecting a default activity). If a list is given as a single value (e.g. &quot;a,b,c&quot;) it will be split by commas and/or whitespace. The % character can be used as a wildcard for the type, e.g. &apos;%var%&apos; to select variable-related activities.
   
-  Default: `[]`
-  Requires a value

### `--exclude-type`

Exclude by type (when selecting a default activity). If a list is given as a single value (e.g. &quot;a,b,c&quot;) it will be split by commas and/or whitespace. The % character can be used as a wildcard to exclude types.
   
-  Default: `[]`
-  Requires a value

### `--state`

Filter by state (when selecting a default activity): in_progress, pending, complete, or cancelled. If a list is given as a single value (e.g. &quot;a,b,c&quot;) it will be split by commas and/or whitespace.
   
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

Deprecated option, no longer used
   
-  Requires a value

### `--environment`, `-e`

The environment ID
   
-  Requires a value

### `--format`

The output format: table, csv, tsv, or plain
   
-  Default: `table`
-  Requires a value

### `--columns`, `-c`

Columns to display. If a list is given as a single value (e.g. &quot;a,b,c&quot;) it will be split by commas and/or whitespace.
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `activity:list`

Get a list of activities for an environment or project

```bash
magento-cloud activity:list [-t|--type TYPE] [-x|--exclude-type EXCLUDE-TYPE] [--limit LIMIT] [--start START] [--state STATE] [--result RESULT] [-i|--incomplete] [-a|--all] [--format FORMAT] [-c|--columns COLUMNS] [--no-header] [--date-fmt DATE-FMT] [-p|--project PROJECT] [-e|--environment ENVIRONMENT]
```


```bash
activities
```


```bash
act
```

### `--type`, `-t`

Filter activities by type If a list is given as a single value (e.g. &quot;a,b,c&quot;) it will be split by commas and/or whitespace. The % character can be used as a wildcard for the type, e.g. &apos;%var%&apos; to select variable-related activities.
   
-  Default: `[]`
-  Requires a value

### `--exclude-type`, `-x`

Exclude activities by type. If a list is given as a single value (e.g. &quot;a,b,c&quot;) it will be split by commas and/or whitespace. The % character can be used as a wildcard to exclude types.
   
-  Default: `[]`
-  Requires a value

### `--limit`

Limit the number of results displayed
   
-  Default: `10`
-  Requires a value

### `--start`

Only activities created before this date will be listed
   
-  Requires a value

### `--state`

Filter activities by state: in_progress, pending, complete, or cancelled. If a list is given as a single value (e.g. &quot;a,b,c&quot;) it will be split by commas and/or whitespace.
   
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

The output format: table, csv, tsv, or plain
   
-  Default: `table`
-  Requires a value

### `--columns`, `-c`

Columns to display. Available columns: id*, created*, description*, progress*, state*, result*, completed, environments, type (* = default columns). The character &quot;+&quot; can be used as a placeholder for the default columns. If a list is given as a single value (e.g. &quot;a,b,c&quot;) it will be split by commas and/or whitespace.
   
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

Deprecated option, no longer used
   
-  Requires a value

### `--environment`, `-e`

The environment ID
   
-  Requires a value

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `activity:log`

Display the log for an activity

```bash
magento-cloud activity:log [--refresh REFRESH] [-t|--timestamps] [--type TYPE] [--exclude-type EXCLUDE-TYPE] [--state STATE] [--result RESULT] [-i|--incomplete] [-a|--all] [--date-fmt DATE-FMT] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [--] [<id>]
```


### `id`

The activity ID. Defaults to the most recent activity.
   

### `--refresh`

Activity refresh interval (seconds). Set to 0 to disable refreshing.
   
-  Default: `3`
-  Requires a value

### `--timestamps`, `-t`

Display a timestamp next to each message
   
-  Default: `false`
-  Does not accept a value

### `--type`

Filter by type (when selecting a default activity). If a list is given as a single value (e.g. &quot;a,b,c&quot;) it will be split by commas and/or whitespace. The % character can be used as a wildcard for the type, e.g. &apos;%var%&apos; to select variable-related activities.
   
-  Default: `[]`
-  Requires a value

### `--exclude-type`

Exclude by type (when selecting a default activity). If a list is given as a single value (e.g. &quot;a,b,c&quot;) it will be split by commas and/or whitespace. The % character can be used as a wildcard to exclude types.
   
-  Default: `[]`
-  Requires a value

### `--state`

Filter by state (when selecting a default activity): in_progress, pending, complete, or cancelled. If a list is given as a single value (e.g. &quot;a,b,c&quot;) it will be split by commas and/or whitespace.
   
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

Deprecated option, no longer used
   
-  Requires a value

### `--environment`, `-e`

The environment ID
   
-  Requires a value

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `api:curl`

Run an authenticated cURL request on the Magento Cloud API

```bash
magento-cloud api:curl [-X|--request REQUEST] [-d|--data DATA] [--json JSON] [-i|--include] [-I|--head] [--disable-compression] [--enable-glob] [-f|--fail] [-H|--header HEADER] [--] [<path>]
```


### `path`

The API path
   

### `--request`, `-X`

The request method to use
   
-  Requires a value

### `--data`, `-d`

Data to send
   
-  Requires a value

### `--json`

JSON data to send
   
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

### `--fail`, `-f`

Fail with no output on an error response
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `app:config-get`

View the configuration of an app

```bash
magento-cloud app:config-get [-P|--property PROPERTY] [--refresh] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [-A|--app APP] [-i|--identity-file IDENTITY-FILE]
```

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

Deprecated option, no longer used
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `app:list`

List apps in the project

```bash
magento-cloud apps [--refresh] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [--format FORMAT] [-c|--columns COLUMNS] [--no-header]
```


```bash
apps
```

### `--refresh`

Whether to refresh the cache
   
-  Default: `false`
-  Does not accept a value

### `--project`, `-p`

The project ID or URL
   
-  Requires a value

### `--host`

Deprecated option, no longer used
   
-  Requires a value

### `--environment`, `-e`

The environment ID
   
-  Requires a value

### `--format`

The output format: table, csv, tsv, or plain
   
-  Default: `table`
-  Requires a value

### `--columns`, `-c`

Columns to display. Available columns: name*, type*, disk, path, size (* = default columns). The character &quot;+&quot; can be used as a placeholder for the default columns. If a list is given as a single value (e.g. &quot;a,b,c&quot;) it will be split by commas and/or whitespace.
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `auth:api-token-login`

Log in to Magento Cloud using an API token

```bash
magento-cloud auth:api-token-login
```

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `auth:browser-login`

Log in to Magento Cloud via a browser

```bash
magento-cloud login [-f|--force] [--browser BROWSER] [--pipe]
```


```bash
login
```

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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `auth:info`

Display your account information

```bash
magento-cloud auth:info [--no-auto-login] [-P|--property PROPERTY] [--refresh] [--format FORMAT] [-c|--columns COLUMNS] [--no-header] [--] [<property>]
```


### `property`

The account property to view
   

### `--no-auto-login`

Skips auto login. Nothing will be output if not logged in, and the exit code will be 0, assuming no other errors.
   
-  Default: `false`
-  Does not accept a value

### `--property`, `-P`

The account property to view (alternate syntax)
   
-  Requires a value

### `--refresh`

Whether to refresh the cache
   
-  Default: `false`
-  Does not accept a value

### `--format`

The output format: table, csv, tsv, or plain
   
-  Default: `table`
-  Requires a value

### `--columns`, `-c`

Columns to display. If a list is given as a single value (e.g. &quot;a,b,c&quot;) it will be split by commas and/or whitespace.
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `auth:logout`

Log out of Magento Cloud

```bash
magento-cloud logout [-a|--all] [--other]
```


```bash
logout
```

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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `auth:password-login`

&lt;fg=white;bg=red&gt;[ DEPRECATED ]&lt;/&gt; Log in to Magento Cloud using a username and password

```bash
magento-cloud auth:password-login
```


```bash
auth:login
```

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `auth:token`

Obtain an OAuth 2 access token for requests to Magento Cloud APIs

```bash
magento-cloud auth:token [-H|--header] [-W|--no-warn]
```

### `--header`, `-H`

Prefix the token with &quot;Authorization: Bearer &quot; to make an RFC 6750 header
   
-  Default: `false`
-  Does not accept a value

### `--no-warn`, `-W`

Suppress the warning that is printed by default to stderr. This option is preferred over redirecting stderr, as that would hide other potentially useful messages.
   
-  Default: `false`
-  Does not accept a value

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `blackfire:setup`

Setup Blackfire.io integration for the project

```bash
magento-cloud blackfire:setup [--server_id SERVER_ID] [--server_token SERVER_TOKEN] [-p|--project PROJECT] [-W|--no-wait] [--wait]
```

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

Deprecated option, no longer used
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `blue-green:conclude`

&lt;fg=white;bg=red&gt;[ ALPHA ]&lt;/&gt; Conclude a blue/green deployment

```bash
magento-cloud blue-green:conclude [-p|--project PROJECT] [-e|--environment ENVIRONMENT]
```

### `--project`, `-p`

The project ID or URL
   
-  Requires a value

### `--host`

Deprecated option, no longer used
   
-  Requires a value

### `--environment`, `-e`

The environment ID
   
-  Requires a value

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `blue-green:deploy`

&lt;fg=white;bg=red&gt;[ ALPHA ]&lt;/&gt; Perform a blue/green deployment

```bash
magento-cloud blue-green:deploy [--routing-percentage ROUTING-PERCENTAGE] [-p|--project PROJECT] [-e|--environment ENVIRONMENT]
```

### `--routing-percentage`

Set the latest version&apos;s routing percentage
   
-  Default: `100`
-  Requires a value

### `--project`, `-p`

The project ID or URL
   
-  Requires a value

### `--host`

Deprecated option, no longer used
   
-  Requires a value

### `--environment`, `-e`

The environment ID
   
-  Requires a value

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `blue-green:enable`

&lt;fg=white;bg=red&gt;[ ALPHA ]&lt;/&gt; Enable blue/green deployments

```bash
magento-cloud blue-green:enable [-%|--routing-percentage ROUTING-PERCENTAGE] [-p|--project PROJECT] [-e|--environment ENVIRONMENT]
```

### `--routing-percentage`, `-%`

Set the latest version&apos;s routing percentage
   
-  Default: `100`
-  Requires a value

### `--project`, `-p`

The project ID or URL
   
-  Requires a value

### `--host`

Deprecated option, no longer used
   
-  Requires a value

### `--environment`, `-e`

The environment ID
   
-  Requires a value

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `certificate:add`

Add an SSL certificate to the project

```bash
magento-cloud certificate:add [--cert CERT] [--key KEY] [--chain CHAIN] [-p|--project PROJECT] [-W|--no-wait] [--wait]
```

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

Deprecated option, no longer used
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `certificate:delete`

Delete a certificate from the project

```bash
magento-cloud certificate:delete [-p|--project PROJECT] [-W|--no-wait] [--wait] [--] <id>
```


### `id`

The certificate ID (or the start of it)
   
-  Required

### `--project`, `-p`

The project ID or URL
   
-  Requires a value

### `--host`

Deprecated option, no longer used
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `certificate:get`

View a certificate

```bash
magento-cloud certificate:get [-P|--property PROPERTY] [--date-fmt DATE-FMT] [-p|--project PROJECT] [--] <id>
```


### `id`

The certificate ID (or the start of it)
   
-  Required

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

Deprecated option, no longer used
   
-  Requires a value

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `certificate:list`

List project certificates

```bash
magento-cloud certificate:list [--domain DOMAIN] [--exclude-domain EXCLUDE-DOMAIN] [--issuer ISSUER] [--only-auto] [--no-auto] [--ignore-expiry] [--only-expired] [--no-expired] [--pipe-domains] [--date-fmt DATE-FMT] [--format FORMAT] [-c|--columns COLUMNS] [--no-header] [-p|--project PROJECT]
```


```bash
certificates
```


```bash
certs
```

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

The output format: table, csv, tsv, or plain
   
-  Default: `table`
-  Requires a value

### `--columns`, `-c`

Columns to display. Available columns: created, domains, expires, id, issuer. If a list is given as a single value (e.g. &quot;a,b,c&quot;) it will be split by commas and/or whitespace.
   
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

Deprecated option, no longer used
   
-  Requires a value

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `commit:get`

Show commit details

```bash
magento-cloud commit:get [-P|--property PROPERTY] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [--date-fmt DATE-FMT] [--] [<commit>]
```


### `commit`

The commit SHA. This can also accept &quot;HEAD&quot;, and caret (^) or tilde (~) suffixes for parent commits.
   
-  Default: `HEAD`
   

### `--property`, `-P`

The commit property to display.
   
-  Requires a value

### `--project`, `-p`

The project ID or URL
   
-  Requires a value

### `--host`

Deprecated option, no longer used
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `commit:list`

List commits

```bash
magento-cloud commits [--limit LIMIT] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [--format FORMAT] [-c|--columns COLUMNS] [--no-header] [--date-fmt DATE-FMT] [--] [<commit>]
```


```bash
commits
```


### `commit`

The starting Git commit SHA. This can also accept &quot;HEAD&quot;, and caret (^) or tilde (~) suffixes for parent commits.
   

### `--limit`

The number of commits to display.
   
-  Default: `10`
-  Requires a value

### `--project`, `-p`

The project ID or URL
   
-  Requires a value

### `--host`

Deprecated option, no longer used
   
-  Requires a value

### `--environment`, `-e`

The environment ID
   
-  Requires a value

### `--format`

The output format: table, csv, tsv, or plain
   
-  Default: `table`
-  Requires a value

### `--columns`, `-c`

Columns to display. Available columns: author, date, sha, summary. If a list is given as a single value (e.g. &quot;a,b,c&quot;) it will be split by commas and/or whitespace.
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `db:dump`

Create a local dump of the remote database

```bash
magento-cloud db:dump [--schema SCHEMA] [-f|--file FILE] [-d|--directory DIRECTORY] [-z|--gzip] [-t|--timestamp] [-o|--stdout] [--table TABLE] [--exclude-table EXCLUDE-TABLE] [--schema-only] [--charset CHARSET] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [-A|--app APP] [-r|--relationship RELATIONSHIP] [-i|--identity-file IDENTITY-FILE]
```


```bash
sql-dump
```


```bash
environment:sql-dump
```

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

Deprecated option, no longer used
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `db:size`

Estimate the disk usage of a database

```bash
magento-cloud db:size [-B|--bytes] [-C|--cleanup] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [-A|--app APP] [-r|--relationship RELATIONSHIP] [--format FORMAT] [-c|--columns COLUMNS] [--no-header] [-i|--identity-file IDENTITY-FILE]
```

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

Deprecated option, no longer used
   
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

The output format: table, csv, tsv, or plain
   
-  Default: `table`
-  Requires a value

### `--columns`, `-c`

Columns to display. Available columns: max, percent_used, used. If a list is given as a single value (e.g. &quot;a,b,c&quot;) it will be split by commas and/or whitespace.
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `db:sql`

Run SQL on the remote database

```bash
magento-cloud sql [--raw] [--schema SCHEMA] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [-A|--app APP] [-r|--relationship RELATIONSHIP] [-i|--identity-file IDENTITY-FILE] [--] [<query>]
```


```bash
sql
```


```bash
environment:sql
```


### `query`

An SQL statement to execute
   

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

Deprecated option, no longer used
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `domain:add`

Add a new domain to the project

```bash
magento-cloud domain:add [--cert CERT] [--key KEY] [--chain CHAIN] [-p|--project PROJECT] [-W|--no-wait] [--wait] [--] <name>
```


### `name`

The domain name
   
-  Required

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

Deprecated option, no longer used
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `domain:delete`

Delete a domain from the project

```bash
magento-cloud domain:delete [-p|--project PROJECT] [-W|--no-wait] [--wait] [--] <name>
```


### `name`

The domain name
   
-  Required

### `--project`, `-p`

The project ID or URL
   
-  Requires a value

### `--host`

Deprecated option, no longer used
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `domain:get`

Show detailed information for a domain

```bash
magento-cloud domain:get [-P|--property PROPERTY] [--format FORMAT] [-c|--columns COLUMNS] [--no-header] [--date-fmt DATE-FMT] [-p|--project PROJECT] [--] [<name>]
```


### `name`

The domain name
   

### `--property`, `-P`

The domain property to view
   
-  Requires a value

### `--format`

The output format: table, csv, tsv, or plain
   
-  Default: `table`
-  Requires a value

### `--columns`, `-c`

Columns to display. If a list is given as a single value (e.g. &quot;a,b,c&quot;) it will be split by commas and/or whitespace.
   
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

Deprecated option, no longer used
   
-  Requires a value

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `domain:list`

Get a list of all domains

```bash
magento-cloud domains [--format FORMAT] [-c|--columns COLUMNS] [--no-header] [-p|--project PROJECT]
```


```bash
domains
```

### `--format`

The output format: table, csv, tsv, or plain
   
-  Default: `table`
-  Requires a value

### `--columns`, `-c`

Columns to display. Available columns: name*, ssl*, created_at*, updated_at (* = default columns). The character &quot;+&quot; can be used as a placeholder for the default columns. If a list is given as a single value (e.g. &quot;a,b,c&quot;) it will be split by commas and/or whitespace.
   
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

Deprecated option, no longer used
   
-  Requires a value

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `domain:update`

Update a domain

```bash
magento-cloud domain:update [--cert CERT] [--key KEY] [--chain CHAIN] [-p|--project PROJECT] [-W|--no-wait] [--wait] [--] <name>
```


### `name`

The domain name
   
-  Required

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

Deprecated option, no longer used
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `environment:activate`

Activate an environment

```bash
magento-cloud environment:activate [--parent PARENT] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [-W|--no-wait] [--wait] [--] [<environment>]...
```


### `environment`

The environment(s) to activate
   
-  Default: `[]`
   
-  Array

### `--parent`

Set a new environment parent before activating
   
-  Requires a value

### `--project`, `-p`

The project ID or URL
   
-  Requires a value

### `--host`

Deprecated option, no longer used
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `environment:branch`

Branch an environment

```bash
magento-cloud branch [--title TITLE] [--type TYPE] [--force] [--no-clone-parent] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [-W|--no-wait] [--wait] [-i|--identity-file IDENTITY-FILE] [--] [<id>] [<parent>]
```


```bash
branch
```


### `id`

The ID (branch name) of the new environment
   

### `parent`

The parent of the new environment
   

### `--title`

The title of the new environment
   
-  Requires a value

### `--type`

The type of the new environment
   
-  Requires a value

### `--force`

Create the new environment even if the branch cannot be checked out locally
   
-  Default: `false`
-  Does not accept a value

### `--no-clone-parent`

Do not clone the parent branch&apos;s data
   
-  Default: `false`
-  Does not accept a value

### `--project`, `-p`

The project ID or URL
   
-  Requires a value

### `--host`

Deprecated option, no longer used
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `environment:checkout`

Check out an environment

```bash
magento-cloud checkout [-i|--identity-file IDENTITY-FILE] [--] [<id>]
```


```bash
checkout
```


### `id`

The ID of the environment to check out. For example: &quot;sprint2&quot;
   

### `--identity-file`, `-i`

An SSH identity (private key) to use
   
-  Requires a value

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `environment:curl`

Run an authenticated cURL request on an environment&apos;s API

```bash
magento-cloud environment:curl [-X|--request REQUEST] [-d|--data DATA] [--json JSON] [-i|--include] [-I|--head] [--disable-compression] [--enable-glob] [-f|--fail] [-H|--header HEADER] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [--] [<path>]
```


### `path`

The API path
   

### `--request`, `-X`

The request method to use
   
-  Requires a value

### `--data`, `-d`

Data to send
   
-  Requires a value

### `--json`

JSON data to send
   
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

### `--fail`, `-f`

Fail with no output on an error response
   
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

Deprecated option, no longer used
   
-  Requires a value

### `--environment`, `-e`

The environment ID
   
-  Requires a value

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `environment:delete`

Delete one or more environments

```bash
magento-cloud environment:delete [--delete-branch] [--no-delete-branch] [--type TYPE] [-t|--only-type ONLY-TYPE] [--exclude EXCLUDE] [--exclude-type EXCLUDE-TYPE] [--inactive] [--merged] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [-W|--no-wait] [--wait] [--] [<environment>]...
```


```bash
environment:deactivate
```


### `environment`

The environment(s) to delete. The % character may be used as a wildcard. If a list is given as a single value (e.g. &quot;a,b,c&quot;) it will be split by commas and/or whitespace.
   
-  Default: `[]`
   
-  Array

### `--delete-branch`

Delete Git branch(es) (inactive environments)
   
-  Default: `false`
-  Does not accept a value

### `--no-delete-branch`

Do not delete Git branch(es) (inactive environments)
   
-  Default: `false`
-  Does not accept a value

### `--type`

Delete all environments of a type (adding to any others selected) If a list is given as a single value (e.g. &quot;a,b,c&quot;) it will be split by commas and/or whitespace.
   
-  Default: `[]`
-  Requires a value

### `--only-type`, `-t`

Only delete environment(s) of a specific type If a list is given as a single value (e.g. &quot;a,b,c&quot;) it will be split by commas and/or whitespace.
   
-  Default: `[]`
-  Requires a value

### `--exclude`

Environment(s) not to delete. The % character may be used as a wildcard. If a list is given as a single value (e.g. &quot;a,b,c&quot;) it will be split by commas and/or whitespace.
   
-  Default: `[]`
-  Requires a value

### `--exclude-type`

Environment type(s) of which not to delete If a list is given as a single value (e.g. &quot;a,b,c&quot;) it will be split by commas and/or whitespace.
   
-  Default: `[]`
-  Requires a value

### `--inactive`

Delete all inactive environments (adding to any others selected
   
-  Default: `false`
-  Does not accept a value

### `--merged`

Delete all merged environments (adding to any others selected)
   
-  Default: `false`
-  Does not accept a value

### `--project`, `-p`

The project ID or URL
   
-  Requires a value

### `--host`

Deprecated option, no longer used
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `environment:http-access`

Update HTTP access settings for an environment

```bash
magento-cloud httpaccess [--access ACCESS] [--auth AUTH] [--enabled ENABLED] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [-W|--no-wait] [--wait]
```


```bash
httpaccess
```

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

Deprecated option, no longer used
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `environment:info`

Read or set properties for an environment

```bash
magento-cloud environment:info [--refresh] [--date-fmt DATE-FMT] [--format FORMAT] [-c|--columns COLUMNS] [--no-header] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [-W|--no-wait] [--wait] [--] [<property>] [<value>]
```


```bash
environment:metadata
```


### `property`

The name of the property
   

### `value`

Set a new value for the property
   

### `--refresh`

Whether to refresh the cache
   
-  Default: `false`
-  Does not accept a value

### `--date-fmt`

The date format (as a PHP date format string)
   
-  Default: `c`
-  Requires a value

### `--format`

The output format: table, csv, tsv, or plain
   
-  Default: `table`
-  Requires a value

### `--columns`, `-c`

Columns to display. If a list is given as a single value (e.g. &quot;a,b,c&quot;) it will be split by commas and/or whitespace.
   
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

Deprecated option, no longer used
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `environment:init`

Initialize an environment from a public Git repository

```bash
magento-cloud environment:init [--profile PROFILE] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [-W|--no-wait] [--wait] [--] <url>
```


### `url`

A URL to a Git repository
   
-  Required

### `--profile`

The name of the profile
   
-  Requires a value

### `--project`, `-p`

The project ID or URL
   
-  Requires a value

### `--host`

Deprecated option, no longer used
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `environment:list`

Get a list of environments

```bash
magento-cloud environment:list [-I|--no-inactive] [--pipe] [--refresh REFRESH] [--sort SORT] [--reverse] [--type TYPE] [--format FORMAT] [-c|--columns COLUMNS] [--no-header] [-p|--project PROJECT]
```


```bash
environments
```


```bash
env
```

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

### `--type`

Filter the list by environment type(s). If a list is given as a single value (e.g. &quot;a,b,c&quot;) it will be split by commas and/or whitespace.
   
-  Default: `[]`
-  Requires a value

### `--format`

The output format: table, csv, tsv, or plain
   
-  Default: `table`
-  Requires a value

### `--columns`, `-c`

Columns to display. Available columns: id*, title*, status*, type*, created, machine_name, updated (* = default columns). The character &quot;+&quot; can be used as a placeholder for the default columns. If a list is given as a single value (e.g. &quot;a,b,c&quot;) it will be split by commas and/or whitespace.
   
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

Deprecated option, no longer used
   
-  Requires a value

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `environment:logs`

Read an environment&apos;s logs

```bash
magento-cloud log [--lines LINES] [--tail] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [-A|--app APP] [--worker WORKER] [-I|--instance INSTANCE] [--] [<type>]
```


```bash
log
```


```bash
logs
```


### `type`

The log type, e.g. &quot;access&quot; or &quot;error&quot;
   

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

Deprecated option, no longer used
   
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

### `--instance`, `-I`

An instance ID
   
-  Requires a value

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `environment:merge`

Merge an environment

```bash
magento-cloud merge [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [-W|--no-wait] [--wait] [--] [<environment>]
```


```bash
merge
```


### `environment`

The environment to merge
   

### `--project`, `-p`

The project ID or URL
   
-  Requires a value

### `--host`

Deprecated option, no longer used
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `environment:push`

Push code to an environment

```bash
magento-cloud push [--target TARGET] [-f|--force] [--force-with-lease] [-u|--set-upstream] [--activate] [--parent PARENT] [--type TYPE] [--no-clone-parent] [-W|--no-wait] [--wait] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [-i|--identity-file IDENTITY-FILE] [--] [<source>]
```


```bash
push
```


### `source`

The source ref: a branch name or commit hash
   
-  Default: `HEAD`
   

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

Set the new environment parent (only used with --activate)
   
-  Requires a value

### `--type`

Set the environment type (only used with --activate )
   
-  Requires a value

### `--no-clone-parent`

Do not clone the parent branch&apos;s data (only used with --activate)
   
-  Default: `false`
-  Does not accept a value

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

Deprecated option, no longer used
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `environment:redeploy`

Redeploy an environment

```bash
magento-cloud redeploy [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [-W|--no-wait] [--wait]
```


```bash
redeploy
```

### `--project`, `-p`

The project ID or URL
   
-  Requires a value

### `--host`

Deprecated option, no longer used
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `environment:relationships`

Show an environment&apos;s relationships

```bash
magento-cloud relationships [-P|--property PROPERTY] [--refresh] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [-A|--app APP] [-i|--identity-file IDENTITY-FILE] [--] [<environment>]
```


```bash
relationships
```


### `environment`

The environment
   

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

Deprecated option, no longer used
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `environment:scp`

Copy files to and from current environment using scp

```bash
magento-cloud scp [-r|--recursive] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [-A|--app APP] [--worker WORKER] [-I|--instance INSTANCE] [-i|--identity-file IDENTITY-FILE] [--] [<files>]...
```


```bash
scp
```


### `files`

Files to copy. Use the remote: prefix to define remote locations.
   
-  Default: `[]`
   
-  Array

### `--recursive`, `-r`

Recursively copy entire directories
   
-  Default: `false`
-  Does not accept a value

### `--project`, `-p`

The project ID or URL
   
-  Requires a value

### `--host`

Deprecated option, no longer used
   
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

### `--instance`, `-I`

An instance ID
   
-  Requires a value

### `--identity-file`, `-i`

An SSH identity (private key) to use
   
-  Requires a value

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `environment:set-remote`

Set the remote environment to map to a branch

```bash
magento-cloud environment:set-remote <environment> [<branch>]
```


### `environment`

The environment machine name. Set to 0 to remove the mapping for a branch
   
-  Required

### `branch`

The Git branch to map (defaults to the current branch)
   

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `environment:ssh`

SSH to the current environment

```bash
magento-cloud ssh [--pipe] [--all] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [-A|--app APP] [--worker WORKER] [-I|--instance INSTANCE] [-i|--identity-file IDENTITY-FILE] [--] [<cmd>]...
```


```bash
ssh
```


### `cmd`

A command to run on the environment.
   
-  Default: `[]`
   
-  Array

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

Deprecated option, no longer used
   
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

### `--instance`, `-I`

An instance ID
   
-  Requires a value

### `--identity-file`, `-i`

An SSH identity (private key) to use
   
-  Requires a value

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `environment:synchronize`

Synchronize an environment&apos;s code and/or data from its parent

```bash
magento-cloud sync [--rebase] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [-W|--no-wait] [--wait] [--] [<synchronize>]...
```


```bash
sync
```


### `synchronize`

What to synchronize: &quot;code&quot;, &quot;data&quot; or both
   
-  Default: `[]`
   
-  Array

### `--rebase`

Synchronize code by rebasing instead of merging
   
-  Default: `false`
-  Does not accept a value

### `--project`, `-p`

The project ID or URL
   
-  Requires a value

### `--host`

Deprecated option, no longer used
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `environment:url`

Get the public URLs of an environment

```bash
magento-cloud url [-1|--primary] [--browser BROWSER] [--pipe] [-p|--project PROJECT] [-e|--environment ENVIRONMENT]
```


```bash
url
```

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

Deprecated option, no longer used
   
-  Requires a value

### `--environment`, `-e`

The environment ID
   
-  Requires a value

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `environment:xdebug`

Open a tunnel to Xdebug on the environment

```bash
magento-cloud xdebug [--port PORT] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [-A|--app APP] [--worker WORKER] [-I|--instance INSTANCE] [-i|--identity-file IDENTITY-FILE]
```


```bash
xdebug
```

### `--port`

The local port
   
-  Default: `9000`
-  Requires a value

### `--project`, `-p`

The project ID or URL
   
-  Requires a value

### `--host`

Deprecated option, no longer used
   
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

### `--instance`, `-I`

An instance ID
   
-  Requires a value

### `--identity-file`, `-i`

An SSH identity (private key) to use
   
-  Requires a value

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `integration:activity:get`

View detailed information on a single integration activity

```bash
magento-cloud integration:activity:get [-P|--property PROPERTY] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [--format FORMAT] [-c|--columns COLUMNS] [--no-header] [--date-fmt DATE-FMT] [--] [<integration>] [<activity>]
```


### `integration`

An integration ID. Leave blank to choose from a list.
   

### `activity`

The activity ID. Defaults to the most recent integration activity.
   

### `--property`, `-P`

The property to view
   
-  Requires a value

### `--project`, `-p`

The project ID or URL
   
-  Requires a value

### `--host`

Deprecated option, no longer used
   
-  Requires a value

### `--environment`, `-e`

[Deprecated option, not used]
   
-  Requires a value

### `--format`

The output format: table, csv, tsv, or plain
   
-  Default: `table`
-  Requires a value

### `--columns`, `-c`

Columns to display. If a list is given as a single value (e.g. &quot;a,b,c&quot;) it will be split by commas and/or whitespace.
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `integration:activity:list`

Get a list of activities for an integration

```bash
magento-cloud i:act [--type TYPE] [-x|--exclude-type EXCLUDE-TYPE] [--limit LIMIT] [--start START] [--state STATE] [--result RESULT] [-i|--incomplete] [--format FORMAT] [-c|--columns COLUMNS] [--no-header] [--date-fmt DATE-FMT] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [--] [<id>]
```


```bash
i:act
```


```bash
integration:activities
```


### `id`

An integration ID. Leave blank to choose from a list.
   

### `--type`

Filter activities by type. If a list is given as a single value (e.g. &quot;a,b,c&quot;) it will be split by commas and/or whitespace.
   
-  Default: `[]`
-  Requires a value

### `--exclude-type`, `-x`

Exclude activities by type. If a list is given as a single value (e.g. &quot;a,b,c&quot;) it will be split by commas and/or whitespace. The % character can be used as a wildcard to exclude types.
   
-  Default: `[]`
-  Requires a value

### `--limit`

Limit the number of results displayed
   
-  Default: `10`
-  Requires a value

### `--start`

Only activities created before this date will be listed
   
-  Requires a value

### `--state`

Filter activities by state. If a list is given as a single value (e.g. &quot;a,b,c&quot;) it will be split by commas and/or whitespace.
   
-  Default: `[]`
-  Requires a value

### `--result`

Filter activities by result
   
-  Requires a value

### `--incomplete`, `-i`

Only list incomplete activities
   
-  Default: `false`
-  Does not accept a value

### `--format`

The output format: table, csv, tsv, or plain
   
-  Default: `table`
-  Requires a value

### `--columns`, `-c`

Columns to display. Available columns: id*, created*, description*, type*, state*, result*, completed (* = default columns). The character &quot;+&quot; can be used as a placeholder for the default columns. If a list is given as a single value (e.g. &quot;a,b,c&quot;) it will be split by commas and/or whitespace.
   
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

Deprecated option, no longer used
   
-  Requires a value

### `--environment`, `-e`

[Deprecated option, not used]
   
-  Requires a value

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `integration:activity:log`

Display the log for an integration activity

```bash
magento-cloud integration:activity:log [-t|--timestamps] [--date-fmt DATE-FMT] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [--] [<integration>] [<activity>]
```


### `integration`

An integration ID. Leave blank to choose from a list.
   

### `activity`

The activity ID. Defaults to the most recent integration activity.
   

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

Deprecated option, no longer used
   
-  Requires a value

### `--environment`, `-e`

[Deprecated option, not used]
   
-  Requires a value

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `integration:add`

Add an integration to the project

```bash
magento-cloud integration:add [--type TYPE] [--base-url BASE-URL] [--username USERNAME] [--token TOKEN] [--key KEY] [--secret SECRET] [--license-key LICENSE-KEY] [--server-project SERVER-PROJECT] [--repository REPOSITORY] [--build-merge-requests BUILD-MERGE-REQUESTS] [--build-pull-requests BUILD-PULL-REQUESTS] [--build-draft-pull-requests BUILD-DRAFT-PULL-REQUESTS] [--build-pull-requests-post-merge BUILD-PULL-REQUESTS-POST-MERGE] [--build-wip-merge-requests BUILD-WIP-MERGE-REQUESTS] [--merge-requests-clone-parent-data MERGE-REQUESTS-CLONE-PARENT-DATA] [--pull-requests-clone-parent-data PULL-REQUESTS-CLONE-PARENT-DATA] [--resync-pull-requests RESYNC-PULL-REQUESTS] [--fetch-branches FETCH-BRANCHES] [--prune-branches PRUNE-BRANCHES] [--url URL] [--shared-key SHARED-KEY] [--file FILE] [--events EVENTS] [--states STATES] [--environments ENVIRONMENTS] [--excluded-environments EXCLUDED-ENVIRONMENTS] [--from-address FROM-ADDRESS] [--recipients RECIPIENTS] [--channel CHANNEL] [--routing-key ROUTING-KEY] [--category CATEGORY] [--index INDEX] [--sourcetype SOURCETYPE] [--protocol PROTOCOL] [--syslog-host SYSLOG-HOST] [--syslog-port SYSLOG-PORT] [--facility FACILITY] [--message-format MESSAGE-FORMAT] [--auth-mode AUTH-MODE] [--auth-token AUTH-TOKEN] [--verify-tls VERIFY-TLS] [-p|--project PROJECT] [-W|--no-wait] [--wait]
```

### `--type`

The integration type (&apos;bitbucket&apos;, &apos;bitbucket_server&apos;, &apos;github&apos;, &apos;gitlab&apos;, &apos;webhook&apos;, &apos;health.email&apos;, &apos;health.pagerduty&apos;, &apos;health.slack&apos;, &apos;health.webhook&apos;, &apos;script&apos;, &apos;newrelic&apos;, &apos;splunk&apos;, &apos;sumologic&apos;, &apos;syslog&apos;)
   
-  Requires a value

### `--base-url`

The base URL of the server installation
   
-  Requires a value

### `--username`

The Bitbucket Server username
   
-  Requires a value

### `--token`

An authentication or access token for the integration
   
-  Requires a value

### `--key`

A Bitbucket OAuth consumer key
   
-  Requires a value

### `--secret`

A Bitbucket OAuth consumer secret
   
-  Requires a value

### `--license-key`

The New Relic Logs license key
   
-  Requires a value

### `--server-project`

The project (e.g. &apos;namespace/repo&apos;)
   
-  Requires a value

### `--repository`

The repository to track (e.g. &apos;owner/repository&apos;)
   
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

Clone the parent environment&apos;s data for pull requests
   
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

### `--url`

The URL or API endpoint for the integration
   
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

### `--category`

The Sumo Logic category, used for filtering
   
-  Requires a value

### `--index`

The Splunk index
   
-  Requires a value

### `--sourcetype`

The Splunk event source type
   
-  Requires a value

### `--protocol`

Syslog transport protocol (&apos;tcp&apos;, &apos;udp&apos;, &apos;tls&apos;)
   
-  Default: `tls`
-  Requires a value

### `--syslog-host`

Syslog relay/collector host
   
-  Requires a value

### `--syslog-port`

Syslog relay/collector port
   
-  Requires a value

### `--facility`

Syslog facility
   
-  Default: `1`
-  Requires a value

### `--message-format`

Syslog message format (&apos;rfc3164&apos; or &apos;rfc5424&apos;)
   
-  Default: `rfc5424`
-  Requires a value

### `--auth-mode`

Authentication mode (&apos;prefix&apos; or &apos;structured_data&apos;)
   
-  Default: `prefix`
-  Requires a value

### `--auth-token`

Authentication token
   
-  Requires a value

### `--verify-tls`

Whether HTTPS certificate verification should be enabled (recommended)
   
-  Default: `true`
-  Requires a value

### `--project`, `-p`

The project ID or URL
   
-  Requires a value

### `--host`

Deprecated option, no longer used
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `integration:delete`

Delete an integration from a project

```bash
magento-cloud integration:delete [-p|--project PROJECT] [-W|--no-wait] [--wait] [--] [<id>]
```


### `id`

The integration ID. Leave blank to choose from a list.
   

### `--project`, `-p`

The project ID or URL
   
-  Requires a value

### `--host`

Deprecated option, no longer used
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `integration:get`

View details of an integration

```bash
magento-cloud integration:get [-P|--property [PROPERTY]] [--format FORMAT] [-c|--columns COLUMNS] [--no-header] [-p|--project PROJECT] [--] [<id>]
```


### `id`

An integration ID. Leave blank to choose from a list.
   

### `--property`, `-P`

The integration property to view
   
-  Accepts a value

### `--format`

The output format: table, csv, tsv, or plain
   
-  Default: `table`
-  Requires a value

### `--columns`, `-c`

Columns to display. If a list is given as a single value (e.g. &quot;a,b,c&quot;) it will be split by commas and/or whitespace.
   
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

Deprecated option, no longer used
   
-  Requires a value

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `integration:list`

View a list of project integration(s)

```bash
magento-cloud integrations [--format FORMAT] [-c|--columns COLUMNS] [--no-header] [-p|--project PROJECT]
```


```bash
integrations
```

### `--format`

The output format: table, csv, tsv, or plain
   
-  Default: `table`
-  Requires a value

### `--columns`, `-c`

Columns to display. Available columns: id, summary, type. If a list is given as a single value (e.g. &quot;a,b,c&quot;) it will be split by commas and/or whitespace.
   
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

Deprecated option, no longer used
   
-  Requires a value

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `integration:update`

Update an integration

```bash
magento-cloud integration:update [--type TYPE] [--base-url BASE-URL] [--username USERNAME] [--token TOKEN] [--key KEY] [--secret SECRET] [--license-key LICENSE-KEY] [--server-project SERVER-PROJECT] [--repository REPOSITORY] [--build-merge-requests BUILD-MERGE-REQUESTS] [--build-pull-requests BUILD-PULL-REQUESTS] [--build-draft-pull-requests BUILD-DRAFT-PULL-REQUESTS] [--build-pull-requests-post-merge BUILD-PULL-REQUESTS-POST-MERGE] [--build-wip-merge-requests BUILD-WIP-MERGE-REQUESTS] [--merge-requests-clone-parent-data MERGE-REQUESTS-CLONE-PARENT-DATA] [--pull-requests-clone-parent-data PULL-REQUESTS-CLONE-PARENT-DATA] [--resync-pull-requests RESYNC-PULL-REQUESTS] [--fetch-branches FETCH-BRANCHES] [--prune-branches PRUNE-BRANCHES] [--url URL] [--shared-key SHARED-KEY] [--file FILE] [--events EVENTS] [--states STATES] [--environments ENVIRONMENTS] [--excluded-environments EXCLUDED-ENVIRONMENTS] [--from-address FROM-ADDRESS] [--recipients RECIPIENTS] [--channel CHANNEL] [--routing-key ROUTING-KEY] [--category CATEGORY] [--index INDEX] [--sourcetype SOURCETYPE] [--protocol PROTOCOL] [--syslog-host SYSLOG-HOST] [--syslog-port SYSLOG-PORT] [--facility FACILITY] [--message-format MESSAGE-FORMAT] [--auth-mode AUTH-MODE] [--auth-token AUTH-TOKEN] [--verify-tls VERIFY-TLS] [-p|--project PROJECT] [-W|--no-wait] [--wait] [--] [<id>]
```


### `id`

The ID of the integration to update
   

### `--type`

The integration type (&apos;bitbucket&apos;, &apos;bitbucket_server&apos;, &apos;github&apos;, &apos;gitlab&apos;, &apos;webhook&apos;, &apos;health.email&apos;, &apos;health.pagerduty&apos;, &apos;health.slack&apos;, &apos;health.webhook&apos;, &apos;script&apos;, &apos;newrelic&apos;, &apos;splunk&apos;, &apos;sumologic&apos;, &apos;syslog&apos;)
   
-  Requires a value

### `--base-url`

The base URL of the server installation
   
-  Requires a value

### `--username`

The Bitbucket Server username
   
-  Requires a value

### `--token`

An authentication or access token for the integration
   
-  Requires a value

### `--key`

A Bitbucket OAuth consumer key
   
-  Requires a value

### `--secret`

A Bitbucket OAuth consumer secret
   
-  Requires a value

### `--license-key`

The New Relic Logs license key
   
-  Requires a value

### `--server-project`

The project (e.g. &apos;namespace/repo&apos;)
   
-  Requires a value

### `--repository`

The repository to track (e.g. &apos;owner/repository&apos;)
   
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

Clone the parent environment&apos;s data for pull requests
   
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

### `--url`

The URL or API endpoint for the integration
   
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

### `--category`

The Sumo Logic category, used for filtering
   
-  Requires a value

### `--index`

The Splunk index
   
-  Requires a value

### `--sourcetype`

The Splunk event source type
   
-  Requires a value

### `--protocol`

Syslog transport protocol (&apos;tcp&apos;, &apos;udp&apos;, &apos;tls&apos;)
   
-  Default: `tls`
-  Requires a value

### `--syslog-host`

Syslog relay/collector host
   
-  Requires a value

### `--syslog-port`

Syslog relay/collector port
   
-  Requires a value

### `--facility`

Syslog facility
   
-  Default: `1`
-  Requires a value

### `--message-format`

Syslog message format (&apos;rfc3164&apos; or &apos;rfc5424&apos;)
   
-  Default: `rfc5424`
-  Requires a value

### `--auth-mode`

Authentication mode (&apos;prefix&apos; or &apos;structured_data&apos;)
   
-  Default: `prefix`
-  Requires a value

### `--auth-token`

Authentication token
   
-  Requires a value

### `--verify-tls`

Whether HTTPS certificate verification should be enabled (recommended)
   
-  Default: `true`
-  Requires a value

### `--project`, `-p`

The project ID or URL
   
-  Requires a value

### `--host`

Deprecated option, no longer used
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `integration:validate`

Validate an existing integration

```bash
magento-cloud integration:validate [-p|--project PROJECT] [--] [<id>]
```


### `id`

An integration ID. Leave blank to choose from a list.
   

### `--project`, `-p`

The project ID or URL
   
-  Requires a value

### `--host`

Deprecated option, no longer used
   
-  Requires a value

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `local:build`

Build the current project locally

```bash
magento-cloud build [-a|--abslinks] [-s|--source SOURCE] [-d|--destination DESTINATION] [-c|--copy] [--clone] [--run-deploy-hooks] [--no-clean] [--no-archive] [--no-backup] [--no-cache] [--no-build-hooks] [--no-deps] [--working-copy] [--concurrency CONCURRENCY] [--lock] [--] [<app>]...
```


```bash
build
```


### `app`

Specify application(s) to build
   
-  Default: `[]`
   
-  Array

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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `local:clean`

Remove old project builds

```bash
magento-cloud clean [--keep KEEP] [--max-age MAX-AGE] [--include-active]
```


```bash
clean
```

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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `local:dir`

Find the local project root

```bash
magento-cloud dir [<subdir>]
```


```bash
dir
```


### `subdir`

The subdirectory to find (&apos;local&apos;, &apos;web&apos; or &apos;shared&apos;)
   

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `metrics:disk-usage`

Show disk usage on a service

```bash
magento-cloud disk [-s|--service SERVICE] [--type TYPE] [-r|--range RANGE] [-i|--interval INTERVAL] [--to TO] [-B|--bytes] [-1|--latest] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [--format FORMAT] [-c|--columns COLUMNS] [--no-header] [--date-fmt DATE-FMT]
```


```bash
disk
```

### `--service`, `-s`

The service name
   
-  Requires a value

### `--type`

The service type (if the service name is not provided), e.g. mysql, pgsql, mongodb, etc. The type version is not required.
   
-  Requires a value

### `--range`, `-r`

The time range. Metrics will be loaded for this duration until the end time (--to). You can specify units: hours (h), minutes (m), or seconds (s). Minimum &lt;comment&gt;5m&lt;/comment&gt;, maximum &lt;comment&gt;8h&lt;/comment&gt; or more (depending on the project), default &lt;comment&gt;10m&lt;/comment&gt;.
   
-  Requires a value

### `--interval`, `-i`

The time interval. Defaults to a division of the range. You can specify units: hours (h), minutes (m), or seconds (s). Minimum &lt;comment&gt;1m&lt;/comment&gt;, maximum &lt;comment&gt;1h&lt;/comment&gt;.
   
-  Requires a value

### `--to`

The end time. Defaults to now.
   
-  Requires a value

### `--bytes`, `-B`

Show sizes in bytes
   
-  Default: `false`
-  Does not accept a value

### `--latest`, `-1`

Show only the latest single data point
   
-  Default: `false`
-  Does not accept a value

### `--project`, `-p`

The project ID or URL
   
-  Requires a value

### `--host`

Deprecated option, no longer used
   
-  Requires a value

### `--environment`, `-e`

The environment ID
   
-  Requires a value

### `--format`

The output format: table, csv, tsv, or plain
   
-  Default: `table`
-  Requires a value

### `--columns`, `-c`

Columns to display. Available columns: timestamp*, used*, limit*, percent*, ipercent*, ilimit, interval, iused (* = default columns). The character &quot;+&quot; can be used as a placeholder for the default columns. If a list is given as a single value (e.g. &quot;a,b,c&quot;) it will be split by commas and/or whitespace.
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `mount:download`

Download files from a mount, using rsync

```bash
magento-cloud mount:download [-a|--all] [-m|--mount MOUNT] [--target TARGET] [--source-path] [--delete] [--exclude EXCLUDE] [--include INCLUDE] [--refresh] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [-A|--app APP] [--worker WORKER] [-I|--instance INSTANCE] [-i|--identity-file IDENTITY-FILE]
```

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

Use the mount&apos;s source path (rather than the mount path) as a subdirectory of the target, when --all is used
   
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

Deprecated option, no longer used
   
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

### `--instance`, `-I`

An instance ID
   
-  Requires a value

### `--identity-file`, `-i`

An SSH identity (private key) to use
   
-  Requires a value

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `mount:list`

Get a list of mounts

```bash
magento-cloud mounts [--paths] [--refresh] [--format FORMAT] [-c|--columns COLUMNS] [--no-header] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [-A|--app APP] [--worker WORKER] [-I|--instance INSTANCE]
```


```bash
mounts
```

### `--paths`

Output the mount paths only (one per line)
   
-  Default: `false`
-  Does not accept a value

### `--refresh`

Whether to refresh the cache
   
-  Default: `false`
-  Does not accept a value

### `--format`

The output format: table, csv, tsv, or plain
   
-  Default: `table`
-  Requires a value

### `--columns`, `-c`

Columns to display. Available columns: definition, path. If a list is given as a single value (e.g. &quot;a,b,c&quot;) it will be split by commas and/or whitespace.
   
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

Deprecated option, no longer used
   
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

### `--instance`, `-I`

An instance ID
   
-  Requires a value

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `mount:size`

Check the disk usage of mounts

```bash
magento-cloud mount:size [-B|--bytes] [--refresh] [--format FORMAT] [-c|--columns COLUMNS] [--no-header] [-i|--identity-file IDENTITY-FILE] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [-A|--app APP] [--worker WORKER] [-I|--instance INSTANCE]
```

### `--bytes`, `-B`

Show sizes in bytes
   
-  Default: `false`
-  Does not accept a value

### `--refresh`

Refresh the cache
   
-  Default: `false`
-  Does not accept a value

### `--format`

The output format: table, csv, tsv, or plain
   
-  Default: `table`
-  Requires a value

### `--columns`, `-c`

Columns to display. Available columns: available, max, mounts, percent_used, sizes, used. If a list is given as a single value (e.g. &quot;a,b,c&quot;) it will be split by commas and/or whitespace.
   
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

Deprecated option, no longer used
   
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

### `--instance`, `-I`

An instance ID
   
-  Requires a value

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `mount:upload`

Upload files to a mount, using rsync

```bash
magento-cloud mount:upload [--source SOURCE] [-m|--mount MOUNT] [--delete] [--exclude EXCLUDE] [--include INCLUDE] [--refresh] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [-A|--app APP] [--worker WORKER] [-I|--instance INSTANCE] [-i|--identity-file IDENTITY-FILE]
```

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

Deprecated option, no longer used
   
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

### `--instance`, `-I`

An instance ID
   
-  Requires a value

### `--identity-file`, `-i`

An SSH identity (private key) to use
   
-  Requires a value

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `project:clear-build-cache`

Clear a project&apos;s build cache

```bash
magento-cloud project:clear-build-cache [-p|--project PROJECT]
```

### `--project`, `-p`

The project ID or URL
   
-  Requires a value

### `--host`

Deprecated option, no longer used
   
-  Requires a value

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `project:curl`

Run an authenticated cURL request on a project&apos;s API

```bash
magento-cloud project:curl [-X|--request REQUEST] [-d|--data DATA] [--json JSON] [-i|--include] [-I|--head] [--disable-compression] [--enable-glob] [-f|--fail] [-H|--header HEADER] [-p|--project PROJECT] [--] [<path>]
```


### `path`

The API path
   

### `--request`, `-X`

The request method to use
   
-  Requires a value

### `--data`, `-d`

Data to send
   
-  Requires a value

### `--json`

JSON data to send
   
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

### `--fail`, `-f`

Fail with no output on an error response
   
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

Deprecated option, no longer used
   
-  Requires a value

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `project:get`

Clone a project locally

```bash
magento-cloud get [-e|--environment ENVIRONMENT] [--depth DEPTH] [--build] [-p|--project PROJECT] [-i|--identity-file IDENTITY-FILE] [--] [<project>] [<directory>]
```


```bash
get
```


### `project`

The project ID
   

### `directory`

The directory to clone to. Defaults to the project title
   

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

Deprecated option, no longer used
   
-  Requires a value

### `--identity-file`, `-i`

An SSH identity (private key) to use
   
-  Requires a value

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `project:info`

Read or set properties for a project

```bash
magento-cloud project:info [--refresh] [--date-fmt DATE-FMT] [--format FORMAT] [-c|--columns COLUMNS] [--no-header] [-p|--project PROJECT] [-W|--no-wait] [--wait] [--] [<property>] [<value>]
```


```bash
project:metadata
```


### `property`

The name of the property
   

### `value`

Set a new value for the property
   

### `--refresh`

Whether to refresh the cache
   
-  Default: `false`
-  Does not accept a value

### `--date-fmt`

The date format (as a PHP date format string)
   
-  Default: `c`
-  Requires a value

### `--format`

The output format: table, csv, tsv, or plain
   
-  Default: `table`
-  Requires a value

### `--columns`, `-c`

Columns to display. If a list is given as a single value (e.g. &quot;a,b,c&quot;) it will be split by commas and/or whitespace.
   
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

Deprecated option, no longer used
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `project:list`

Get a list of all active projects

```bash
magento-cloud project:list [--pipe] [--host HOST] [--title TITLE] [--my] [--refresh REFRESH] [--sort SORT] [--reverse] [--page PAGE] [-c|--count COUNT] [--format FORMAT] [--columns COLUMNS] [--no-header] [--date-fmt DATE-FMT]
```


```bash
projects
```


```bash
pro
```

### `--pipe`

Output a simple list of project IDs. Disables pagination.
   
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

### `--page`

Page number. This enables pagination, despite configuration or --count. Ignored if --pipe is specified.
   
-  Requires a value

### `--count`, `-c`

The number of projects to display per page. Use 0 to disable pagination. Ignored if --page is specified.
   
-  Requires a value

### `--format`

The output format: table, csv, tsv, or plain
   
-  Default: `table`
-  Requires a value

### `--columns`

Columns to display. Available columns: id*, title*, region*, created_at, endpoint, organization_id, organization_label, organization_name, region_label, status, ui_url (* = default columns). The character &quot;+&quot; can be used as a placeholder for the default columns. If a list is given as a single value (e.g. &quot;a,b,c&quot;) it will be split by commas and/or whitespace.
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `project:set-remote`

Set the remote project for the current Git repository

```bash
magento-cloud project:set-remote [<project>]
```


### `project`

The project ID
   

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `project:variable:delete`

&lt;fg=white;bg=red&gt;[ DEPRECATED ]&lt;/&gt; Delete a variable from a project

```bash
magento-cloud project:variable:delete [-p|--project PROJECT] [-W|--no-wait] [--wait] [--] <name>
```


### `name`

The variable name
   
-  Required

### `--project`, `-p`

The project ID or URL
   
-  Requires a value

### `--host`

Deprecated option, no longer used
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `project:variable:get`

&lt;fg=white;bg=red&gt;[ DEPRECATED ]&lt;/&gt; View variable(s) for a project

```bash
magento-cloud project:variable:get [--pipe] [--format FORMAT] [-c|--columns COLUMNS] [--no-header] [-p|--project PROJECT] [--] [<name>]
```


```bash
project-variables
```


```bash
pvget
```


```bash
project:variable:list
```


### `name`

The name of the variable
   

### `--pipe`

Output the full variable value only (a &quot;name&quot; must be specified)
   
-  Default: `false`
-  Does not accept a value

### `--format`

The output format: table, csv, tsv, or plain
   
-  Default: `table`
-  Requires a value

### `--columns`, `-c`

Columns to display. If a list is given as a single value (e.g. &quot;a,b,c&quot;) it will be split by commas and/or whitespace.
   
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

Deprecated option, no longer used
   
-  Requires a value

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `project:variable:set`

&lt;fg=white;bg=red&gt;[ DEPRECATED ]&lt;/&gt; Set a variable for a project

```bash
magento-cloud pvset [--json] [--no-visible-build] [--no-visible-runtime] [-p|--project PROJECT] [-W|--no-wait] [--wait] [--] <name> <value>
```


```bash
pvset
```


### `name`

The variable name
   
-  Required

### `value`

The variable value
   
-  Required

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

Deprecated option, no longer used
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `repo:cat`

Read a file in the project repository

```bash
magento-cloud repo:cat [-c|--commit COMMIT] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [--] <path>
```


### `path`

The path to the file
   
-  Required

### `--commit`, `-c`

The commit SHA. This can also accept &quot;HEAD&quot;, and caret (^) or tilde (~) suffixes for parent commits.
   
-  Requires a value

### `--project`, `-p`

The project ID or URL
   
-  Requires a value

### `--host`

Deprecated option, no longer used
   
-  Requires a value

### `--environment`, `-e`

The environment ID
   
-  Requires a value

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `repo:ls`

List files in the project repository

```bash
magento-cloud repo:ls [-d|--directories] [-f|--files] [--git-style] [-c|--commit COMMIT] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [--] [<path>]
```


### `path`

The path to a subdirectory
   

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

Deprecated option, no longer used
   
-  Requires a value

### `--environment`, `-e`

The environment ID
   
-  Requires a value

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `repo:read`

Read a directory or file in the project repository

```bash
magento-cloud read [-c|--commit COMMIT] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [--] [<path>]
```


```bash
read
```


### `path`

The path to the directory or file
   

### `--commit`, `-c`

The commit SHA. This can also accept &quot;HEAD&quot;, and caret (^) or tilde (~) suffixes for parent commits.
   
-  Requires a value

### `--project`, `-p`

The project ID or URL
   
-  Requires a value

### `--host`

Deprecated option, no longer used
   
-  Requires a value

### `--environment`, `-e`

The environment ID
   
-  Requires a value

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `route:get`

View detailed information about a route

```bash
magento-cloud route:get [--id ID] [-1|--primary] [-P|--property PROPERTY] [--refresh] [--date-fmt DATE-FMT] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [-A|--app APP] [-i|--identity-file IDENTITY-FILE] [--] [<route>]
```


### `route`

The route&apos;s original URL
   

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

Deprecated option, no longer used
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `route:list`

List all routes for an environment

```bash
magento-cloud routes [--refresh] [--format FORMAT] [-c|--columns COLUMNS] [--no-header] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [--] [<environment>]
```


```bash
routes
```


```bash
environment:routes
```


### `environment`

The environment ID
   

### `--refresh`

Bypass the cache of routes
   
-  Default: `false`
-  Does not accept a value

### `--format`

The output format: table, csv, tsv, or plain
   
-  Default: `table`
-  Requires a value

### `--columns`, `-c`

Columns to display. Available columns: route*, type*, to*, url (* = default columns). The character &quot;+&quot; can be used as a placeholder for the default columns. If a list is given as a single value (e.g. &quot;a,b,c&quot;) it will be split by commas and/or whitespace.
   
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

Deprecated option, no longer used
   
-  Requires a value

### `--environment`, `-e`

The environment ID
   
-  Requires a value

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `self:install`

Install or update CLI configuration files

```bash
magento-cloud self:install [--shell-type SHELL-TYPE]
```


```bash
local:install
```

### `--shell-type`

The shell type for autocompletion (bash or zsh)
   
-  Requires a value

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `self:stats`

View stats on GitHub package downloads

```bash
magento-cloud self:stats [-p|--page PAGE] [-c|--count COUNT] [--format FORMAT] [--columns COLUMNS] [--no-header] [--date-fmt DATE-FMT]
```

### `--page`, `-p`

Page number
   
-  Default: `1`
-  Requires a value

### `--count`, `-c`

Results per page (max: 100)
   
-  Default: `20`
-  Requires a value

### `--format`

The output format: table, csv, tsv, or plain
   
-  Default: `table`
-  Requires a value

### `--columns`

Columns to display. Available columns: asset, date, downloads, release. If a list is given as a single value (e.g. &quot;a,b,c&quot;) it will be split by commas and/or whitespace.
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `self:update`

Update the CLI to the latest version

```bash
magento-cloud self-update [--no-major] [--unstable] [--manifest MANIFEST] [--current-version CURRENT-VERSION] [--timeout TIMEOUT]
```


```bash
self-update
```


```bash
update
```

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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `service:list`

List services in the project

```bash
magento-cloud services [--refresh] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [--format FORMAT] [-c|--columns COLUMNS] [--no-header]
```


```bash
services
```

### `--refresh`

Whether to refresh the cache
   
-  Default: `false`
-  Does not accept a value

### `--project`, `-p`

The project ID or URL
   
-  Requires a value

### `--host`

Deprecated option, no longer used
   
-  Requires a value

### `--environment`, `-e`

The environment ID
   
-  Requires a value

### `--format`

The output format: table, csv, tsv, or plain
   
-  Default: `table`
-  Requires a value

### `--columns`, `-c`

Columns to display. Available columns: disk, name, size, type. If a list is given as a single value (e.g. &quot;a,b,c&quot;) it will be split by commas and/or whitespace.
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `service:mongo:dump`

Create a binary archive dump of data from MongoDB

```bash
magento-cloud mongodump [-c|--collection COLLECTION] [-z|--gzip] [-o|--stdout] [-r|--relationship RELATIONSHIP] [-i|--identity-file IDENTITY-FILE] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [-A|--app APP]
```


```bash
mongodump
```

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

Deprecated option, no longer used
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `service:mongo:export`

Export data from MongoDB

```bash
magento-cloud mongoexport [-c|--collection COLLECTION] [--jsonArray] [--type TYPE] [-f|--fields FIELDS] [-r|--relationship RELATIONSHIP] [-i|--identity-file IDENTITY-FILE] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [-A|--app APP]
```


```bash
mongoexport
```

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

Deprecated option, no longer used
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `service:mongo:restore`

Restore a binary archive dump of data into MongoDB

```bash
magento-cloud mongorestore [-c|--collection COLLECTION] [-r|--relationship RELATIONSHIP] [-i|--identity-file IDENTITY-FILE] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [-A|--app APP]
```


```bash
mongorestore
```

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

Deprecated option, no longer used
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `service:mongo:shell`

Use the MongoDB shell

```bash
magento-cloud mongo [--eval EVAL] [-r|--relationship RELATIONSHIP] [-i|--identity-file IDENTITY-FILE] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [-A|--app APP]
```


```bash
mongo
```

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

Deprecated option, no longer used
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `service:redis-cli`

Access the Redis CLI

```bash
magento-cloud redis [-r|--relationship RELATIONSHIP] [-i|--identity-file IDENTITY-FILE] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [-A|--app APP] [--] [<args>]
```


```bash
redis
```


### `args`

Arguments to add to the Redis command
   

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

Deprecated option, no longer used
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `session:switch`

&lt;fg=white;bg=red&gt;[ BETA ]&lt;/&gt; Switch between sessions

```bash
magento-cloud session:switch [<id>]
```


### `id`

The new session ID
   

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `snapshot:create`

Make a snapshot of an environment

```bash
magento-cloud backup [--live] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [-W|--no-wait] [--wait] [--] [<environment>]
```


```bash
backup
```


```bash
backup:create
```


```bash
environment:backup
```


### `environment`

The environment
   

### `--live`

Live backup: do not stop the environment. If set, this leaves the environment running and open to connections during the backup. This reduces downtime, at the risk of backing up data in an inconsistent state.
   
-  Default: `false`
-  Does not accept a value

### `--project`, `-p`

The project ID or URL
   
-  Requires a value

### `--host`

Deprecated option, no longer used
   
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

### `--unsafe`

Deprecated option: use --live instead
   
-  Default: `false`
-  Does not accept a value

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `snapshot:list`

List available snapshots of an environment

```bash
magento-cloud snapshots [--format FORMAT] [-c|--columns COLUMNS] [--no-header] [--date-fmt DATE-FMT] [-p|--project PROJECT] [-e|--environment ENVIRONMENT]
```


```bash
snapshots
```


```bash
backups
```


```bash
backup:list
```

### `--limit`

[Deprecated] - this option is unused
   
-  Requires a value

### `--start`

[Deprecated] - this option is unused
   
-  Requires a value

### `--format`

The output format: table, csv, tsv, or plain
   
-  Default: `table`
-  Requires a value

### `--columns`, `-c`

Columns to display. If a list is given as a single value (e.g. &quot;a,b,c&quot;) it will be split by commas and/or whitespace.
   
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

Deprecated option, no longer used
   
-  Requires a value

### `--environment`, `-e`

The environment ID
   
-  Requires a value

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `snapshot:restore`

Restore an environment snapshot

```bash
magento-cloud snapshot:restore [--target TARGET] [--branch-from BRANCH-FROM] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [-W|--no-wait] [--wait] [--] [<snapshot>]
```


```bash
environment:restore
```


```bash
backup:restore
```


### `snapshot`

The name of the snapshot. Defaults to the most recent one
   

### `--target`

The environment to restore to. Defaults to the snapshot&apos;s current environment
   
-  Requires a value

### `--branch-from`

If the --target does not yet exist, this specifies the parent of the new environment
   
-  Requires a value

### `--project`, `-p`

The project ID or URL
   
-  Requires a value

### `--host`

Deprecated option, no longer used
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `source-operation:run`

&lt;fg=white;bg=red&gt;[ BETA ]&lt;/&gt; Run a source operation

```bash
magento-cloud source-operation:run [--variable VARIABLE] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [-W|--no-wait] [--wait] [--] <operation>
```


### `operation`

The operation name
   
-  Required

### `--variable`

A variable to set during the operation, in the format &lt;info&gt;type:name=value&lt;/info&gt;
   
-  Default: `[]`
-  Requires a value

### `--project`, `-p`

The project ID or URL
   
-  Requires a value

### `--host`

Deprecated option, no longer used
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `ssh-cert:info`

Display information about the current SSH certificate

```bash
magento-cloud ssh-cert:info [--no-refresh] [-P|--property PROPERTY] [--date-fmt DATE-FMT]
```

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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `ssh-cert:load`

Generate an SSH certificate

```bash
magento-cloud ssh-cert:load [--refresh-only] [--new] [--new-key]
```

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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `ssh-key:add`

Add a new SSH key

```bash
magento-cloud ssh-key:add [--name NAME] [--] [<path>]
```


### `path`

The path to an existing SSH public key
   

### `--name`

A name to identify the key
   
-  Requires a value

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `ssh-key:delete`

Delete an SSH key

```bash
magento-cloud ssh-key:delete [<id>]
```


### `id`

The ID of the SSH key to delete
   

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `ssh-key:list`

Get a list of SSH keys in your account

```bash
magento-cloud ssh-keys [--format FORMAT] [-c|--columns COLUMNS] [--no-header]
```


```bash
ssh-keys
```

### `--format`

The output format: table, csv, tsv, or plain
   
-  Default: `table`
-  Requires a value

### `--columns`, `-c`

Columns to display. Available columns: id*, title*, path*, fingerprint (* = default columns). The character &quot;+&quot; can be used as a placeholder for the default columns. If a list is given as a single value (e.g. &quot;a,b,c&quot;) it will be split by commas and/or whitespace.
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `subscription:info`

Read or modify subscription properties

```bash
magento-cloud subscription:info [-s|--id ID] [--date-fmt DATE-FMT] [--format FORMAT] [-c|--columns COLUMNS] [--no-header] [-p|--project PROJECT] [--] [<property>] [<value>]
```


### `property`

The name of the property
   

### `value`

Set a new value for the property
   

### `--id`, `-s`

The subscription ID
   
-  Requires a value

### `--date-fmt`

The date format (as a PHP date format string)
   
-  Default: `c`
-  Requires a value

### `--format`

The output format: table, csv, tsv, or plain
   
-  Default: `table`
-  Requires a value

### `--columns`, `-c`

Columns to display. If a list is given as a single value (e.g. &quot;a,b,c&quot;) it will be split by commas and/or whitespace.
   
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

Deprecated option, no longer used
   
-  Requires a value

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `tunnel:close`

Close SSH tunnels

```bash
magento-cloud tunnel:close [-a|--all] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [-A|--app APP]
```

### `--all`, `-a`

Close all tunnels
   
-  Default: `false`
-  Does not accept a value

### `--project`, `-p`

The project ID or URL
   
-  Requires a value

### `--host`

Deprecated option, no longer used
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `tunnel:info`

View relationship info for SSH tunnels

```bash
magento-cloud tunnel:info [-P|--property PROPERTY] [-c|--encode] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [-A|--app APP] [--format FORMAT] [--columns COLUMNS] [--no-header]
```

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

Deprecated option, no longer used
   
-  Requires a value

### `--environment`, `-e`

The environment ID
   
-  Requires a value

### `--app`, `-A`

The remote application name
   
-  Requires a value

### `--format`

The output format: table, csv, tsv, or plain
   
-  Default: `table`
-  Requires a value

### `--columns`

Columns to display. If a list is given as a single value (e.g. &quot;a,b,c&quot;) it will be split by commas and/or whitespace.
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `tunnel:list`

List SSH tunnels

```bash
magento-cloud tunnels [-a|--all] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [-A|--app APP] [--format FORMAT] [-c|--columns COLUMNS] [--no-header]
```


```bash
tunnels
```

### `--all`, `-a`

View all tunnels
   
-  Default: `false`
-  Does not accept a value

### `--project`, `-p`

The project ID or URL
   
-  Requires a value

### `--host`

Deprecated option, no longer used
   
-  Requires a value

### `--environment`, `-e`

The environment ID
   
-  Requires a value

### `--app`, `-A`

The remote application name
   
-  Requires a value

### `--format`

The output format: table, csv, tsv, or plain
   
-  Default: `table`
-  Requires a value

### `--columns`, `-c`

Columns to display. If a list is given as a single value (e.g. &quot;a,b,c&quot;) it will be split by commas and/or whitespace.
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `tunnel:open`

Open SSH tunnels to an app&apos;s relationships

```bash
magento-cloud tunnel:open [-g|--gateway-ports] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [-A|--app APP] [-i|--identity-file IDENTITY-FILE]
```

### `--gateway-ports`, `-g`

Allow remote hosts to connect to local forwarded ports
   
-  Default: `false`
-  Does not accept a value

### `--project`, `-p`

The project ID or URL
   
-  Requires a value

### `--host`

Deprecated option, no longer used
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `tunnel:single`

Open a single SSH tunnel to an app relationship

```bash
magento-cloud tunnel:single [--port PORT] [-g|--gateway-ports] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [-A|--app APP] [-r|--relationship RELATIONSHIP] [-i|--identity-file IDENTITY-FILE]
```

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

Deprecated option, no longer used
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `user:add`

Add a user to the project

```bash
magento-cloud user:add [-r|--role ROLE] [-p|--project PROJECT] [-W|--no-wait] [--wait] [--] [<email>]
```


### `email`

The user&apos;s email address
   

### `--role`, `-r`

The user&apos;s project role (&apos;admin&apos; or &apos;viewer&apos;) or environment type role (e.g. &apos;staging:contributor&apos; or &apos;production:viewer&apos;). To remove a user from an environment type, set the role as &apos;none&apos;. The % character can be used as a wildcard for the environment type, e.g. &apos;%:viewer&apos; to give the user the &apos;viewer&apos; role on all types. The role can be abbreviated, e.g. &apos;production:v&apos;.
   
-  Default: `[]`
-  Requires a value

### `--project`, `-p`

The project ID or URL
   
-  Requires a value

### `--host`

Deprecated option, no longer used
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `user:delete`

Delete a user from the project

```bash
magento-cloud user:delete [-p|--project PROJECT] [-W|--no-wait] [--wait] [--] <email>
```


### `email`

The user&apos;s email address
   
-  Required

### `--project`, `-p`

The project ID or URL
   
-  Requires a value

### `--host`

Deprecated option, no longer used
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `user:get`

View a user&apos;s role(s)

```bash
magento-cloud user:get [-l|--level LEVEL] [--pipe] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [-W|--no-wait] [--wait] [-r|--role ROLE] [--] [<email>]
```


```bash
user:role
```


### `email`

The user&apos;s email address
   

### `--level`, `-l`

The role level (&apos;project&apos; or &apos;environment&apos;)
   
-  Requires a value

### `--pipe`

Output the role to stdout (after making any changes)
   
-  Default: `false`
-  Does not accept a value

### `--project`, `-p`

The project ID or URL
   
-  Requires a value

### `--host`

Deprecated option, no longer used
   
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

[Deprecated: use user:update to change a user&apos;s role(s)]
   
-  Requires a value

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `user:list`

List project users

```bash
magento-cloud users [--format FORMAT] [-c|--columns COLUMNS] [--no-header] [-p|--project PROJECT]
```


```bash
users
```

### `--format`

The output format: table, csv, tsv, or plain
   
-  Default: `table`
-  Requires a value

### `--columns`, `-c`

Columns to display. Available columns: email, id, name, role. If a list is given as a single value (e.g. &quot;a,b,c&quot;) it will be split by commas and/or whitespace.
   
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

Deprecated option, no longer used
   
-  Requires a value

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `user:update`

Update user role(s) on a project

```bash
magento-cloud user:update [-r|--role ROLE] [-p|--project PROJECT] [-W|--no-wait] [--wait] [--] [<email>]
```


### `email`

The user&apos;s email address
   

### `--role`, `-r`

The user&apos;s project role (&apos;admin&apos; or &apos;viewer&apos;) or environment type role (e.g. &apos;staging:contributor&apos; or &apos;production:viewer&apos;). To remove a user from an environment type, set the role as &apos;none&apos;. The % character can be used as a wildcard for the environment type, e.g. &apos;%:viewer&apos; to give the user the &apos;viewer&apos; role on all types. The role can be abbreviated, e.g. &apos;production:v&apos;.
   
-  Default: `[]`
-  Requires a value

### `--project`, `-p`

The project ID or URL
   
-  Requires a value

### `--host`

Deprecated option, no longer used
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `variable:create`

Create a variable

```bash
magento-cloud variable:create [-l|--level LEVEL] [--name NAME] [--value VALUE] [--json JSON] [--sensitive SENSITIVE] [--prefix PREFIX] [--enabled ENABLED] [--inheritable INHERITABLE] [--visible-build VISIBLE-BUILD] [--visible-runtime VISIBLE-RUNTIME] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [-W|--no-wait] [--wait] [--] [<name>]
```


### `name`

The variable name
   

### `--level`, `-l`

The level at which to set the variable (&apos;project&apos; or &apos;environment&apos;)
   
-  Requires a value

### `--name`

The variable name
   
-  Requires a value

### `--value`

The variable&apos;s value
   
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

The variable name&apos;s prefix (e.g. &apos;none&apos; or &apos;env:&apos;)
   
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
   
-  Requires a value

### `--visible-runtime`

Whether the variable should be visible at runtime
   
-  Default: `true`
-  Requires a value

### `--project`, `-p`

The project ID or URL
   
-  Requires a value

### `--host`

Deprecated option, no longer used
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `variable:delete`

Delete a variable

```bash
magento-cloud variable:delete [-l|--level LEVEL] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [-W|--no-wait] [--wait] [--] <name>
```


### `name`

The variable name
   
-  Required

### `--level`, `-l`

The variable level (&apos;project&apos;, &apos;environment&apos;, &apos;p&apos; or &apos;e&apos;)
   
-  Requires a value

### `--project`, `-p`

The project ID or URL
   
-  Requires a value

### `--host`

Deprecated option, no longer used
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `variable:disable`

&lt;fg=white;bg=red&gt;[ DEPRECATED ]&lt;/&gt; Disable an enabled environment-level variable

```bash
magento-cloud variable:disable [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [-W|--no-wait] [--wait] [--] <name>
```


### `name`

The name of the variable
   
-  Required

### `--project`, `-p`

The project ID or URL
   
-  Requires a value

### `--host`

Deprecated option, no longer used
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `variable:enable`

&lt;fg=white;bg=red&gt;[ DEPRECATED ]&lt;/&gt; Enable a disabled environment-level variable

```bash
magento-cloud variable:enable [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [-W|--no-wait] [--wait] [--] <name>
```


### `name`

The name of the variable
   
-  Required

### `--project`, `-p`

The project ID or URL
   
-  Requires a value

### `--host`

Deprecated option, no longer used
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `variable:get`

View a variable

```bash
magento-cloud vget [-P|--property PROPERTY] [-l|--level LEVEL] [--format FORMAT] [-c|--columns COLUMNS] [--no-header] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [--pipe] [--] [<name>]
```


```bash
vget
```


### `name`

The name of the variable
   

### `--property`, `-P`

View a single variable property
   
-  Requires a value

### `--level`, `-l`

The variable level (&apos;project&apos;, &apos;environment&apos;, &apos;p&apos; or &apos;e&apos;)
   
-  Requires a value

### `--format`

The output format: table, csv, tsv, or plain
   
-  Default: `table`
-  Requires a value

### `--columns`, `-c`

Columns to display. If a list is given as a single value (e.g. &quot;a,b,c&quot;) it will be split by commas and/or whitespace.
   
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

Deprecated option, no longer used
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `variable:list`

List variables

```bash
magento-cloud variable:list [-l|--level LEVEL] [--format FORMAT] [-c|--columns COLUMNS] [--no-header] [-p|--project PROJECT] [-e|--environment ENVIRONMENT]
```


```bash
variables
```


```bash
var
```

### `--level`, `-l`

The variable level (&apos;project&apos;, &apos;environment&apos;, &apos;p&apos; or &apos;e&apos;)
   
-  Requires a value

### `--format`

The output format: table, csv, tsv, or plain
   
-  Default: `table`
-  Requires a value

### `--columns`, `-c`

Columns to display. Available columns: is_enabled, level, name, value. If a list is given as a single value (e.g. &quot;a,b,c&quot;) it will be split by commas and/or whitespace.
   
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

Deprecated option, no longer used
   
-  Requires a value

### `--environment`, `-e`

The environment ID
   
-  Requires a value

### `--help`, `-h`

Display this help message
   
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

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `variable:set`

&lt;fg=white;bg=red&gt;[ DEPRECATED ]&lt;/&gt; Set a variable for an environment

```bash
magento-cloud vset [--json] [--disabled] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [-W|--no-wait] [--wait] [--] <name> <value>
```


```bash
vset
```


### `name`

The variable name
   
-  Required

### `value`

The variable value
   
-  Required

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

Deprecated option, no longer used
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `variable:update`

Update a variable

```bash
magento-cloud variable:update [-l|--level LEVEL] [--value VALUE] [--json JSON] [--sensitive SENSITIVE] [--enabled ENABLED] [--inheritable INHERITABLE] [--visible-build VISIBLE-BUILD] [--visible-runtime VISIBLE-RUNTIME] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [-W|--no-wait] [--wait] [--] <name>
```


### `name`

The variable name
   
-  Required

### `--level`, `-l`

The variable level (&apos;project&apos;, &apos;environment&apos;, &apos;p&apos; or &apos;e&apos;)
   
-  Requires a value

### `--value`

The variable&apos;s value
   
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
   
-  Requires a value

### `--visible-runtime`

Whether the variable should be visible at runtime
   
-  Default: `true`
-  Requires a value

### `--project`, `-p`

The project ID or URL
   
-  Requires a value

### `--host`

Deprecated option, no longer used
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `version:list`

&lt;fg=white;bg=red&gt;[ ALPHA ]&lt;/&gt; List environment versions

```bash
magento-cloud versions [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [--format FORMAT] [-c|--columns COLUMNS] [--no-header]
```


```bash
versions
```

### `--project`, `-p`

The project ID or URL
   
-  Requires a value

### `--host`

Deprecated option, no longer used
   
-  Requires a value

### `--environment`, `-e`

The environment ID
   
-  Requires a value

### `--format`

The output format: table, csv, tsv, or plain
   
-  Default: `table`
-  Requires a value

### `--columns`, `-c`

Columns to display. If a list is given as a single value (e.g. &quot;a,b,c&quot;) it will be split by commas and/or whitespace.
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value


## `worker:list`

Get a list of all deployed workers

```bash
magento-cloud workers [--refresh] [-p|--project PROJECT] [-e|--environment ENVIRONMENT] [--format FORMAT] [-c|--columns COLUMNS] [--no-header]
```


```bash
workers
```

### `--refresh`

Whether to refresh the cache
   
-  Default: `false`
-  Does not accept a value

### `--project`, `-p`

The project ID or URL
   
-  Requires a value

### `--host`

Deprecated option, no longer used
   
-  Requires a value

### `--environment`, `-e`

The environment ID
   
-  Requires a value

### `--format`

The output format: table, csv, tsv, or plain
   
-  Default: `table`
-  Requires a value

### `--columns`, `-c`

Columns to display. Available columns: commands, name, type. If a list is given as a single value (e.g. &quot;a,b,c&quot;) it will be split by commas and/or whitespace.
   
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

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--yes`, `-y`

Answer &quot;yes&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`

Do not ask any interactive questions; accept default values. Equivalent to using the environment variable: &lt;comment&gt;MAGENTO_CLOUD_CLI_NO_INTERACTION=1&lt;/comment&gt;
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no-ansi`

Disable ANSI output
   
-  Default: `false`
-  Does not accept a value

### `--no`, `-n`

Answer &quot;no&quot; to confirmation questions; accept the default value for other questions; disable interaction
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value
