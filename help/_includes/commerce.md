# magento-cloud (Adobe Commerce on cloud infrastructure)

<!-- All the assigned and captured content is used in the included template -->

<!-- The template to render with above values -->
**Version**: 1.38.1
{:style="color:gray; font-size: 120%"} <!-- app.version -->

This reference contains 127 commands available through the `magento-cloud` command-line tool.
The initial list is auto generated using the `magento-cloud list` command at the  edition.

{:.bs-callout-info}
This reference is generated from the Magento codebase. To change the content, you can update the source code for the corresponding command implementation in [Magento codebase](https://github.com/magento) repository and submit your changes for review. Another way is to _Give us feedback_ (find the link at the upper right). For contribution guidelines, see [Magento Code Contributions](/contributor-guide/contributing.html).

## `_completion`

BASH completion hook.

```bash
_completion [-g|--generate-hook] [-p|--program PROGRAM] [-m|--multiple] [--shell-type [SHELL-TYPE]]
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->




### `--generate-hook`, `-g`
{: .no_toc }


Generate BASH code that sets up completion for this application.
-  Default: `false`
-  Does not accept a value



### `--program`, `-p`
{: .no_toc }


Program name that should trigger completion <comment>(defaults to the absolute application path)</comment>.
-  Requires a value



### `--multiple`, `-m`
{: .no_toc }


Generated hook can be used for multiple applications.
-  Default: `false`
-  Does not accept a value


### `--shell-type`
{: .no_toc }

Set the shell type (zsh or bash). Otherwise this is determined automatically.
-  Accepts a value <!-- options --> <!-- options.size -->

## `bot`

The Magento Cloud Bot

```bash
magento-cloud bot [--party] [--parrot]
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->



### `--party`
{: .no_toc }


-  Default: `false`
-  Does not accept a value


### `--parrot`
{: .no_toc }


-  Default: `false`
-  Does not accept a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }


The property to view within the variable
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }

The browser to use to open the URL. Set 0 for none.
-  Requires a value


### `--pipe`
{: .no_toc }

Output the URL to stdout.
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }

The output format (txt, xml, json, or md)
-  Default: `txt`
-  Requires a value


### `--raw`
{: .no_toc }

To output raw command help
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `legacy-migrate`

Migrate from the legacy file structure

```bash
magento-cloud legacy-migrate [--no-backup]
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->



### `--no-backup`
{: .no_toc }

Do not create a backup of the project.
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }

To output raw command list
-  Default: `false`
-  Does not accept a value


### `--format`
{: .no_toc }

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
{: .no_toc }


A list of project IDs, separated by commas and/or whitespace
-  Requires a value


### `--continue`
{: .no_toc }

Continue running commands even if an exception is encountered
-  Default: `false`
-  Does not accept a value


### `--sort`
{: .no_toc }

A property by which to sort the list of project options
-  Default: `title`
-  Requires a value


### `--reverse`
{: .no_toc }

Reverse the order of project options
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `web`

Open the Web UI

```bash
magento-cloud web [--browser BROWSER] [--pipe] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT]
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->



### `--browser`
{: .no_toc }

The browser to use to open the URL. Set 0 for none.
-  Requires a value


### `--pipe`
{: .no_toc }

Output the URL to stdout.
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `welcome`

Welcome to Magento Cloud

```bash
magento-cloud welcome
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->




### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `winky`



```bash
magento-cloud winky
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->




### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }

Filter by type (when selecting a default activity)
-  Requires a value



### `--all`, `-a`
{: .no_toc }


Check recent activities on all environments (when selecting a default activity)
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }


The property to view
-  Requires a value


### `--type`
{: .no_toc }

Filter by type (when selecting a default activity)
-  Requires a value


### `--state`
{: .no_toc }

Filter by state (when selecting a default activity): in_progress, pending, complete, or cancelled
-  Default: `[]`
-  Requires a value


### `--result`
{: .no_toc }

Filter by result (when selecting a default activity): success or failure
-  Requires a value



### `--incomplete`, `-i`
{: .no_toc }


Include only incomplete activities (when selecting a default activity). This is a shorthand for <info>--state=in_progress,pending</info>
-  Default: `false`
-  Does not accept a value



### `--all`, `-a`
{: .no_toc }


Check recent activities on all environments (when selecting a default activity)
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value


### `--format`
{: .no_toc }

The output format ("table", "csv", "tsv", or "plain")
-  Default: `table`
-  Requires a value


### `--columns`
{: .no_toc }

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`
{: .no_toc }

Do not output the table header
-  Default: `false`
-  Does not accept a value


### `--date-fmt`
{: .no_toc }

The date format (as a PHP date format string)
-  Default: `c`
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }

Filter activities by type
-  Requires a value


### `--limit`
{: .no_toc }

Limit the number of results displayed
-  Default: `10`
-  Requires a value


### `--start`
{: .no_toc }

Only activities created before this date will be listed
-  Requires a value


### `--state`
{: .no_toc }

Filter activities by state: in_progress, pending, complete, or cancelled
-  Default: `[]`
-  Requires a value


### `--result`
{: .no_toc }

Filter activities by result: success or failure
-  Requires a value



### `--incomplete`, `-i`
{: .no_toc }


Only list incomplete activities
-  Default: `false`
-  Does not accept a value



### `--all`, `-a`
{: .no_toc }


List activities on all environments
-  Default: `false`
-  Does not accept a value


### `--format`
{: .no_toc }

The output format ("table", "csv", "tsv", or "plain")
-  Default: `table`
-  Requires a value


### `--columns`
{: .no_toc }

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`
{: .no_toc }

Do not output the table header
-  Default: `false`
-  Does not accept a value


### `--date-fmt`
{: .no_toc }

The date format (as a PHP date format string)
-  Default: `c`
-  Requires a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }

Activity refresh interval (seconds). Set to 0 to disable refreshing.
-  Default: `3`
-  Requires a value



### `--timestamps`, `-t`
{: .no_toc }


Display a timestamp next to each message
-  Default: `false`
-  Does not accept a value


### `--type`
{: .no_toc }

Filter by type (when selecting a default activity)
-  Requires a value


### `--state`
{: .no_toc }

Filter by state (when selecting a default activity): in_progress, pending, complete, or cancelled
-  Default: `[]`
-  Requires a value


### `--result`
{: .no_toc }

Filter by result (when selecting a default activity): success or failure
-  Requires a value



### `--incomplete`, `-i`
{: .no_toc }


Include only incomplete activities (when selecting a default activity). This is a shorthand for <info>--state=in_progress,pending</info>
-  Default: `false`
-  Does not accept a value



### `--all`, `-a`
{: .no_toc }


Check recent activities on all environments (when selecting a default activity)
-  Default: `false`
-  Does not accept a value


### `--date-fmt`
{: .no_toc }

The date format (as a PHP date format string)
-  Default: `c`
-  Requires a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }


The request method to use
-  Requires a value



### `--data`, `-d`
{: .no_toc }


Data to send
-  Requires a value



### `--include`, `-i`
{: .no_toc }


Include headers in the output
-  Default: `false`
-  Does not accept a value



### `--head`, `-I`
{: .no_toc }


Fetch headers only
-  Default: `false`
-  Does not accept a value


### `--disable-compression`
{: .no_toc }

Do not use the curl --compressed flag
-  Default: `false`
-  Does not accept a value


### `--enable-glob`
{: .no_toc }

Enable curl globbing (remove the --globoff flag)
-  Default: `false`
-  Does not accept a value



### `--header`, `-H`
{: .no_toc }


Extra header(s)
-  Default: `[]`
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `app:config-get`

View the configuration of an app

```bash
magento-cloud app:config-get [-P|--property PROPERTY] [--refresh] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [-A|--app APP] [-i|--identity-file IDENTITY-FILE]
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->




### `--property`, `-P`
{: .no_toc }


The configuration property to view
-  Requires a value


### `--refresh`
{: .no_toc }

Whether to refresh the cache
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value



### `--app`, `-A`
{: .no_toc }


The remote application name
-  Requires a value



### `--identity-file`, `-i`
{: .no_toc }


[Deprecated option, no longer used]
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }

Whether to refresh the cache
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value


### `--format`
{: .no_toc }

The output format ("table", "csv", "tsv", or "plain")
-  Default: `table`
-  Requires a value


### `--columns`
{: .no_toc }

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`
{: .no_toc }

Do not output the table header
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `auth:api-token-login`

Log in to Magento Cloud using an API token

```bash
magento-cloud auth:api-token-login
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->




### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }


Log in again, even if already logged in
-  Default: `false`
-  Does not accept a value


### `--browser`
{: .no_toc }

The browser to use to open the URL. Set 0 for none.
-  Requires a value


### `--pipe`
{: .no_toc }

Output the URL to stdout.
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }


The account property to view (alternate syntax)
-  Requires a value


### `--refresh`
{: .no_toc }

Whether to refresh the cache
-  Default: `false`
-  Does not accept a value


### `--format`
{: .no_toc }

The output format ("table", "csv", "tsv", or "plain")
-  Default: `table`
-  Requires a value


### `--columns`
{: .no_toc }

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`
{: .no_toc }

Do not output the table header
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }


Log out from all local sessions
-  Default: `false`
-  Does not accept a value


### `--other`
{: .no_toc }

Log out from other local sessions
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `auth:password-login`

<fg=white;bg=red>[ DEPRECATED ]</> Log in to Magento Cloud using a username and password

```bash
magento-cloud auth:password-login
```

 <!-- app.name -->

```bash
auth:login
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->




### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `auth:token`

Obtain an OAuth 2 access token for requests to Magento Cloud APIs

```bash
magento-cloud auth:token
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->




### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `blackfire:setup`

Setup Blackfire.io integration for the project

```bash
magento-cloud blackfire:setup [--server_id SERVER_ID] [--server_token SERVER_TOKEN] [-p|--project PROJECT] [--host HOST] [-W|--no-wait] [--wait]
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->



### `--server_id`
{: .no_toc }

The server id
-  Requires a value


### `--server_token`
{: .no_toc }

The server token
-  Requires a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--no-wait`, `-W`
{: .no_toc }


Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`
{: .no_toc }

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `certificate:add`

Add an SSL certificate to the project

```bash
magento-cloud certificate:add [--cert CERT] [--key KEY] [--chain CHAIN] [-p|--project PROJECT] [--host HOST] [-W|--no-wait] [--wait]
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->



### `--cert`
{: .no_toc }

The path to the certificate file
-  Requires a value


### `--key`
{: .no_toc }

The path to the certificate private key file
-  Requires a value


### `--chain`
{: .no_toc }

The path to the certificate chain file
-  Default: `[]`
-  Requires a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--no-wait`, `-W`
{: .no_toc }


Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`
{: .no_toc }

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--no-wait`, `-W`
{: .no_toc }


Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`
{: .no_toc }

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }


The certificate property to view
-  Requires a value


### `--date-fmt`
{: .no_toc }

The date format (as a PHP date format string)
-  Default: `c`
-  Requires a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }

Filter by domain name (case-insensitive search)
-  Requires a value


### `--exclude-domain`
{: .no_toc }

Exclude certificates, matching by domain name (case-insensitive search)
-  Requires a value


### `--issuer`
{: .no_toc }

Filter by issuer
-  Requires a value


### `--only-auto`
{: .no_toc }

Show only auto-provisioned certificates
-  Default: `false`
-  Does not accept a value


### `--no-auto`
{: .no_toc }

Show only manually added certificates
-  Default: `false`
-  Does not accept a value


### `--ignore-expiry`
{: .no_toc }

Show both expired and non-expired certificates
-  Default: `false`
-  Does not accept a value


### `--only-expired`
{: .no_toc }

Show only expired certificates
-  Default: `false`
-  Does not accept a value


### `--no-expired`
{: .no_toc }

Show only non-expired certificates (default)
-  Default: `false`
-  Does not accept a value


### `--pipe-domains`
{: .no_toc }

Only return a list of domain names covered by the certificates
-  Default: `false`
-  Does not accept a value


### `--date-fmt`
{: .no_toc }

The date format (as a PHP date format string)
-  Default: `c`
-  Requires a value


### `--format`
{: .no_toc }

The output format ("table", "csv", "tsv", or "plain")
-  Default: `table`
-  Requires a value


### `--columns`
{: .no_toc }

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`
{: .no_toc }

Do not output the table header
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `commit:get`

Show commit details

```bash
magento-cloud commit:get [-P|--property PROPERTY] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [--date-fmt DATE-FMT] [--format FORMAT] [--columns COLUMNS] [--no-header] [--] [<commit>]
```

 <!-- app.name --> <!-- command.usage -->

### `commit`

The commit SHA. This can also accept "HEAD", and caret (^) or tilde (~) suffixes for parent commits.
-  Default: `HEAD`
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->




### `--property`, `-P`
{: .no_toc }


The commit property to display.
-  Requires a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value


### `--date-fmt`
{: .no_toc }

The date format (as a PHP date format string)
-  Default: `c`
-  Requires a value


### `--format`
{: .no_toc }

DEPRECATED
-  Requires a value


### `--columns`
{: .no_toc }

DEPRECATED
-  Default: `[]`
-  Requires a value


### `--no-header`
{: .no_toc }

DEPRECATED
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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

The starting Git commit SHA. This can also accept "HEAD", and caret (^) or tilde (~) suffixes for parent commits.
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->



### `--limit`
{: .no_toc }

The number of commits to display.
-  Default: `10`
-  Requires a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value


### `--format`
{: .no_toc }

The output format ("table", "csv", "tsv", or "plain")
-  Default: `table`
-  Requires a value


### `--columns`
{: .no_toc }

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`
{: .no_toc }

Do not output the table header
-  Default: `false`
-  Does not accept a value


### `--date-fmt`
{: .no_toc }

The date format (as a PHP date format string)
-  Default: `c`
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }

The schema to dump. Omit to use the default schema (usually "main").
-  Requires a value



### `--file`, `-f`
{: .no_toc }


A custom filename for the dump
-  Requires a value



### `--directory`, `-d`
{: .no_toc }


A custom directory for the dump
-  Requires a value



### `--gzip`, `-z`
{: .no_toc }


Compress the dump using gzip
-  Default: `false`
-  Does not accept a value



### `--timestamp`, `-t`
{: .no_toc }


Add a timestamp to the dump filename
-  Default: `false`
-  Does not accept a value



### `--stdout`, `-o`
{: .no_toc }


Output to STDOUT instead of a file
-  Default: `false`
-  Does not accept a value


### `--table`
{: .no_toc }

Table(s) to include
-  Default: `[]`
-  Requires a value


### `--exclude-table`
{: .no_toc }

Table(s) to exclude
-  Default: `[]`
-  Requires a value


### `--schema-only`
{: .no_toc }

Dump only schemas, no data
-  Default: `false`
-  Does not accept a value


### `--charset`
{: .no_toc }

The character set encoding for the dump
-  Requires a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value



### `--app`, `-A`
{: .no_toc }


The remote application name
-  Requires a value



### `--relationship`, `-r`
{: .no_toc }


The service relationship to use
-  Requires a value



### `--identity-file`, `-i`
{: .no_toc }


An SSH identity (private key) to use
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `db:size`

Estimate the disk usage of a database

```bash
magento-cloud db:size [-B|--bytes] [-C|--cleanup] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [-A|--app APP] [-r|--relationship RELATIONSHIP] [--format FORMAT] [--columns COLUMNS] [--no-header] [-i|--identity-file IDENTITY-FILE]
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->




### `--bytes`, `-B`
{: .no_toc }


Show sizes in bytes.
-  Default: `false`
-  Does not accept a value



### `--cleanup`, `-C`
{: .no_toc }


Check if tables can be cleaned up and show me recommendations (InnoDb only).
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value



### `--app`, `-A`
{: .no_toc }


The remote application name
-  Requires a value



### `--relationship`, `-r`
{: .no_toc }


The service relationship to use
-  Requires a value


### `--format`
{: .no_toc }

The output format ("table", "csv", "tsv", or "plain")
-  Default: `table`
-  Requires a value


### `--columns`
{: .no_toc }

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`
{: .no_toc }

Do not output the table header
-  Default: `false`
-  Does not accept a value



### `--identity-file`, `-i`
{: .no_toc }


An SSH identity (private key) to use
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }

Produce raw, non-tabular output
-  Default: `false`
-  Does not accept a value


### `--schema`
{: .no_toc }

The schema to use. Omit to use the default schema (usually "main"). Pass an empty string to not use any schema.
-  Requires a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value



### `--app`, `-A`
{: .no_toc }


The remote application name
-  Requires a value



### `--relationship`, `-r`
{: .no_toc }


The service relationship to use
-  Requires a value



### `--identity-file`, `-i`
{: .no_toc }


An SSH identity (private key) to use
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }

The path to the certificate file for this domain
-  Requires a value


### `--key`
{: .no_toc }

The path to the private key file for the provided certificate.
-  Requires a value


### `--chain`
{: .no_toc }

The path to the certificate chain file or files for the provided certificate
-  Default: `[]`
-  Requires a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--no-wait`, `-W`
{: .no_toc }


Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`
{: .no_toc }

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--no-wait`, `-W`
{: .no_toc }


Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`
{: .no_toc }

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }


The domain property to view
-  Requires a value


### `--format`
{: .no_toc }

The output format ("table", "csv", "tsv", or "plain")
-  Default: `table`
-  Requires a value


### `--columns`
{: .no_toc }

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`
{: .no_toc }

Do not output the table header
-  Default: `false`
-  Does not accept a value


### `--date-fmt`
{: .no_toc }

The date format (as a PHP date format string)
-  Default: `c`
-  Requires a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }

The output format ("table", "csv", "tsv", or "plain")
-  Default: `table`
-  Requires a value


### `--columns`
{: .no_toc }

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`
{: .no_toc }

Do not output the table header
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }

The path to the certificate file for this domain
-  Requires a value


### `--key`
{: .no_toc }

The path to the private key file for the provided certificate.
-  Requires a value


### `--chain`
{: .no_toc }

The path to the certificate chain file or files for the provided certificate
-  Default: `[]`
-  Requires a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--no-wait`, `-W`
{: .no_toc }


Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`
{: .no_toc }

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }

Set a new environment parent before activating
-  Requires a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value



### `--no-wait`, `-W`
{: .no_toc }


Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`
{: .no_toc }

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }

The title of the new environment
-  Requires a value


### `--force`
{: .no_toc }

Create the new environment even if the branch cannot be checked out locally
-  Default: `false`
-  Does not accept a value


### `--no-clone-parent`
{: .no_toc }

Do not clone the parent branch's data
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value



### `--no-wait`, `-W`
{: .no_toc }


Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`
{: .no_toc }

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--identity-file`, `-i`
{: .no_toc }


An SSH identity (private key) to use
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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

The ID of the environment to check out. For example: "sprint2"
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->




### `--identity-file`, `-i`
{: .no_toc }


An SSH identity (private key) to use
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }

Delete the remote Git branch(es) too
-  Default: `false`
-  Does not accept a value


### `--no-delete-branch`
{: .no_toc }

Do not delete the remote Git branch(es)
-  Default: `false`
-  Does not accept a value


### `--inactive`
{: .no_toc }

Delete all inactive environments
-  Default: `false`
-  Does not accept a value


### `--merged`
{: .no_toc }

Delete all merged environments
-  Default: `false`
-  Does not accept a value


### `--exclude`
{: .no_toc }

Environments not to delete
-  Default: `[]`
-  Requires a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value



### `--no-wait`, `-W`
{: .no_toc }


Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`
{: .no_toc }

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }

Access restriction in the format "permission:address". Use 0 to clear all addresses.
-  Default: `[]`
-  Requires a value


### `--auth`
{: .no_toc }

HTTP Basic auth credentials in the format "username:password". Use 0 to clear all credentials.
-  Default: `[]`
-  Requires a value


### `--enabled`
{: .no_toc }

Whether access control should be enabled: 1 to enable, 0 to disable
-  Requires a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value



### `--no-wait`, `-W`
{: .no_toc }


Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`
{: .no_toc }

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }

Whether to refresh the cache
-  Default: `false`
-  Does not accept a value


### `--date-fmt`
{: .no_toc }

The date format (as a PHP date format string)
-  Default: `c`
-  Requires a value


### `--format`
{: .no_toc }

The output format ("table", "csv", "tsv", or "plain")
-  Default: `table`
-  Requires a value


### `--columns`
{: .no_toc }

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`
{: .no_toc }

Do not output the table header
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value



### `--no-wait`, `-W`
{: .no_toc }


Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`
{: .no_toc }

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }

The name of the profile
-  Requires a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value



### `--no-wait`, `-W`
{: .no_toc }


Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`
{: .no_toc }

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }


Do not show inactive environments
-  Default: `false`
-  Does not accept a value


### `--pipe`
{: .no_toc }

Output a simple list of environment IDs.
-  Default: `false`
-  Does not accept a value


### `--refresh`
{: .no_toc }

Whether to refresh the list.
-  Default: `1`
-  Requires a value


### `--sort`
{: .no_toc }

A property to sort by
-  Default: `title`
-  Requires a value


### `--reverse`
{: .no_toc }

Sort in reverse (descending) order
-  Default: `false`
-  Does not accept a value


### `--format`
{: .no_toc }

The output format ("table", "csv", "tsv", or "plain")
-  Default: `table`
-  Requires a value


### `--columns`
{: .no_toc }

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`
{: .no_toc }

Do not output the table header
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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

The log type, e.g. "access" or "error"
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->



### `--lines`
{: .no_toc }

The number of lines to show
-  Default: `100`
-  Requires a value


### `--tail`
{: .no_toc }

Continuously tail the log
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value



### `--app`, `-A`
{: .no_toc }


The remote application name
-  Requires a value


### `--worker`
{: .no_toc }

A worker name
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value



### `--no-wait`, `-W`
{: .no_toc }


Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`
{: .no_toc }

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }

The target branch name
-  Requires a value



### `--force`, `-f`
{: .no_toc }


Allow non-fast-forward updates
-  Default: `false`
-  Does not accept a value


### `--force-with-lease`
{: .no_toc }

Allow non-fast-forward updates, if the remote-tracking branch is up to date
-  Default: `false`
-  Does not accept a value



### `--set-upstream`, `-u`
{: .no_toc }


Set the target environment as the upstream for the source branch
-  Default: `false`
-  Does not accept a value


### `--activate`
{: .no_toc }

Activate the environment before pushing
-  Default: `false`
-  Does not accept a value


### `--branch`
{: .no_toc }

DEPRECATED: alias of --activate
-  Default: `false`
-  Does not accept a value


### `--parent`
{: .no_toc }

Set a new environment parent (only used with --activate or --branch)
-  Requires a value



### `--no-wait`, `-W`
{: .no_toc }


Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`
{: .no_toc }

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value



### `--identity-file`, `-i`
{: .no_toc }


An SSH identity (private key) to use
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value



### `--no-wait`, `-W`
{: .no_toc }


Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`
{: .no_toc }

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }


The relationship property to view
-  Requires a value


### `--refresh`
{: .no_toc }

Whether to refresh the relationships
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value



### `--app`, `-A`
{: .no_toc }


The remote application name
-  Requires a value



### `--identity-file`, `-i`
{: .no_toc }


An SSH identity (private key) to use
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }


Recursively copy entire directories
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value



### `--app`, `-A`
{: .no_toc }


The remote application name
-  Requires a value


### `--worker`
{: .no_toc }

A worker name
-  Requires a value



### `--identity-file`, `-i`
{: .no_toc }


An SSH identity (private key) to use
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }

Output the SSH URL only.
-  Default: `false`
-  Does not accept a value


### `--all`
{: .no_toc }

Output all SSH URLs (for every app).
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value



### `--app`, `-A`
{: .no_toc }


The remote application name
-  Requires a value


### `--worker`
{: .no_toc }

A worker name
-  Requires a value



### `--identity-file`, `-i`
{: .no_toc }


An SSH identity (private key) to use
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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

What to synchronize: "code", "data" or both

-  Default: `[]`
   
-  Array <!-- argument --> <!-- arguments --> <!-- arguments.size -->



### `--rebase`
{: .no_toc }

Synchronize code by rebasing instead of merging
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value



### `--no-wait`, `-W`
{: .no_toc }


Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`
{: .no_toc }

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }


Only return the URL for the primary route
-  Default: `false`
-  Does not accept a value


### `--browser`
{: .no_toc }

The browser to use to open the URL. Set 0 for none.
-  Requires a value


### `--pipe`
{: .no_toc }

Output the URL to stdout.
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }

The local port
-  Default: `9000`
-  Requires a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value



### `--app`, `-A`
{: .no_toc }


The remote application name
-  Requires a value


### `--worker`
{: .no_toc }

A worker name
-  Requires a value



### `--identity-file`, `-i`
{: .no_toc }


An SSH identity (private key) to use
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }


The property to view
-  Requires a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


[Deprecated option, not used]
-  Requires a value


### `--format`
{: .no_toc }

The output format ("table", "csv", "tsv", or "plain")
-  Default: `table`
-  Requires a value


### `--columns`
{: .no_toc }

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`
{: .no_toc }

Do not output the table header
-  Default: `false`
-  Does not accept a value


### `--date-fmt`
{: .no_toc }

The date format (as a PHP date format string)
-  Default: `c`
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }

Filter activities by type
-  Requires a value


### `--limit`
{: .no_toc }

Limit the number of results displayed
-  Default: `10`
-  Requires a value


### `--start`
{: .no_toc }

Only activities created before this date will be listed
-  Requires a value


### `--state`
{: .no_toc }

Filter activities by state
-  Default: `[]`
-  Requires a value


### `--result`
{: .no_toc }

Filter activities by result
-  Requires a value


### `--format`
{: .no_toc }

The output format ("table", "csv", "tsv", or "plain")
-  Default: `table`
-  Requires a value


### `--columns`
{: .no_toc }

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`
{: .no_toc }

Do not output the table header
-  Default: `false`
-  Does not accept a value


### `--date-fmt`
{: .no_toc }

The date format (as a PHP date format string)
-  Default: `c`
-  Requires a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


[Deprecated option, not used]
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }


Display a timestamp next to each message
-  Default: `false`
-  Does not accept a value


### `--date-fmt`
{: .no_toc }

The date format (as a PHP date format string)
-  Default: `c`
-  Requires a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


[Deprecated option, not used]
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `integration:add`

Add an integration to the project

```bash
magento-cloud integration:add [--type TYPE] [--base-url BASE-URL] [--username USERNAME] [--token TOKEN] [--key KEY] [--secret SECRET] [--server-project SERVER-PROJECT] [--repository REPOSITORY] [--build-merge-requests BUILD-MERGE-REQUESTS] [--build-pull-requests BUILD-PULL-REQUESTS] [--build-draft-pull-requests BUILD-DRAFT-PULL-REQUESTS] [--build-pull-requests-post-merge BUILD-PULL-REQUESTS-POST-MERGE] [--build-wip-merge-requests BUILD-WIP-MERGE-REQUESTS] [--merge-requests-clone-parent-data MERGE-REQUESTS-CLONE-PARENT-DATA] [--pull-requests-clone-parent-data PULL-REQUESTS-CLONE-PARENT-DATA] [--resync-pull-requests RESYNC-PULL-REQUESTS] [--fetch-branches FETCH-BRANCHES] [--prune-branches PRUNE-BRANCHES] [--room ROOM] [--url URL] [--shared-key SHARED-KEY] [--file FILE] [--events EVENTS] [--states STATES] [--environments ENVIRONMENTS] [--excluded-environments EXCLUDED-ENVIRONMENTS] [--from-address FROM-ADDRESS] [--recipients RECIPIENTS] [--channel CHANNEL] [--routing-key ROUTING-KEY] [-p|--project PROJECT] [--host HOST] [-W|--no-wait] [--wait]
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->



### `--type`
{: .no_toc }

The integration type ('bitbucket', 'bitbucket_server', 'github', 'gitlab', 'hipchat', 'webhook', 'health.email', 'health.pagerduty', 'health.slack', 'health.webhook', 'script')
-  Requires a value


### `--base-url`
{: .no_toc }

The base URL of the server installation
-  Requires a value


### `--username`
{: .no_toc }

The Bitbucket Server username
-  Requires a value


### `--token`
{: .no_toc }

An access token for the integration
-  Requires a value


### `--key`
{: .no_toc }

A Bitbucket OAuth consumer key
-  Requires a value


### `--secret`
{: .no_toc }

A Bitbucket OAuth consumer secret
-  Requires a value


### `--server-project`
{: .no_toc }

The project (e.g. 'namespace/repo')
-  Requires a value


### `--repository`
{: .no_toc }

The repository to track (e.g. 'owner/repository')
-  Requires a value


### `--build-merge-requests`
{: .no_toc }

GitLab: build merge requests as environments
-  Default: `true`
-  Requires a value


### `--build-pull-requests`
{: .no_toc }

Build every pull request as an environment
-  Default: `true`
-  Requires a value


### `--build-draft-pull-requests`
{: .no_toc }

Build draft pull requests
-  Default: `true`
-  Requires a value


### `--build-pull-requests-post-merge`
{: .no_toc }

Build pull requests based on their post-merge state
-  Default: `false`
-  Requires a value


### `--build-wip-merge-requests`
{: .no_toc }

GitLab: build WIP merge requests
-  Default: `true`
-  Requires a value


### `--merge-requests-clone-parent-data`
{: .no_toc }

GitLab: clone data for merge requests
-  Default: `true`
-  Requires a value


### `--pull-requests-clone-parent-data`
{: .no_toc }

Clone the parent environment's data for pull requests
-  Default: `true`
-  Requires a value


### `--resync-pull-requests`
{: .no_toc }

Re-sync pull request environment data on every build
-  Default: `false`
-  Requires a value


### `--fetch-branches`
{: .no_toc }

Fetch all branches from the remote (as inactive environments)
-  Default: `true`
-  Requires a value


### `--prune-branches`
{: .no_toc }

Delete branches that do not exist on the remote
-  Default: `true`
-  Requires a value


### `--room`
{: .no_toc }

HipChat room ID
-  Requires a value


### `--url`
{: .no_toc }

Webhook: a URL to receive JSON data
-  Requires a value


### `--shared-key`
{: .no_toc }

Webhook: the JWS shared secret key
-  Requires a value


### `--file`
{: .no_toc }

The name of a local file that contains the script to upload
-  Requires a value


### `--events`
{: .no_toc }

A list of events to act on, e.g. environment.push
-  Default: `*`
-  Requires a value


### `--states`
{: .no_toc }

A list of states to act on, e.g. pending, in_progress, complete
-  Default: `complete`
-  Requires a value


### `--environments`
{: .no_toc }

The environment IDs to include
-  Default: `*`
-  Requires a value


### `--excluded-environments`
{: .no_toc }

The environment IDs to exclude
-  Default: `[]`
-  Requires a value


### `--from-address`
{: .no_toc }

[Optional] Custom From address for alert emails
-  Requires a value


### `--recipients`
{: .no_toc }

The recipient email address(es)
-  Default: `[]`
-  Requires a value


### `--channel`
{: .no_toc }

The Slack channel
-  Requires a value


### `--routing-key`
{: .no_toc }

The PagerDuty routing key
-  Requires a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--no-wait`, `-W`
{: .no_toc }


Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`
{: .no_toc }

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--no-wait`, `-W`
{: .no_toc }


Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`
{: .no_toc }

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }


The integration property to view
-  Accepts a value


### `--format`
{: .no_toc }

The output format ("table", "csv", "tsv", or "plain")
-  Default: `table`
-  Requires a value


### `--columns`
{: .no_toc }

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`
{: .no_toc }

Do not output the table header
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }

The output format ("table", "csv", "tsv", or "plain")
-  Default: `table`
-  Requires a value


### `--columns`
{: .no_toc }

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`
{: .no_toc }

Do not output the table header
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }

The integration type ('bitbucket', 'bitbucket_server', 'github', 'gitlab', 'hipchat', 'webhook', 'health.email', 'health.pagerduty', 'health.slack', 'health.webhook', 'script')
-  Requires a value


### `--base-url`
{: .no_toc }

The base URL of the server installation
-  Requires a value


### `--username`
{: .no_toc }

The Bitbucket Server username
-  Requires a value


### `--token`
{: .no_toc }

An access token for the integration
-  Requires a value


### `--key`
{: .no_toc }

A Bitbucket OAuth consumer key
-  Requires a value


### `--secret`
{: .no_toc }

A Bitbucket OAuth consumer secret
-  Requires a value


### `--server-project`
{: .no_toc }

The project (e.g. 'namespace/repo')
-  Requires a value


### `--repository`
{: .no_toc }

The repository to track (e.g. 'owner/repository')
-  Requires a value


### `--build-merge-requests`
{: .no_toc }

GitLab: build merge requests as environments
-  Default: `true`
-  Requires a value


### `--build-pull-requests`
{: .no_toc }

Build every pull request as an environment
-  Default: `true`
-  Requires a value


### `--build-draft-pull-requests`
{: .no_toc }

Build draft pull requests
-  Default: `true`
-  Requires a value


### `--build-pull-requests-post-merge`
{: .no_toc }

Build pull requests based on their post-merge state
-  Default: `false`
-  Requires a value


### `--build-wip-merge-requests`
{: .no_toc }

GitLab: build WIP merge requests
-  Default: `true`
-  Requires a value


### `--merge-requests-clone-parent-data`
{: .no_toc }

GitLab: clone data for merge requests
-  Default: `true`
-  Requires a value


### `--pull-requests-clone-parent-data`
{: .no_toc }

Clone the parent environment's data for pull requests
-  Default: `true`
-  Requires a value


### `--resync-pull-requests`
{: .no_toc }

Re-sync pull request environment data on every build
-  Default: `false`
-  Requires a value


### `--fetch-branches`
{: .no_toc }

Fetch all branches from the remote (as inactive environments)
-  Default: `true`
-  Requires a value


### `--prune-branches`
{: .no_toc }

Delete branches that do not exist on the remote
-  Default: `true`
-  Requires a value


### `--room`
{: .no_toc }

HipChat room ID
-  Requires a value


### `--url`
{: .no_toc }

Webhook: a URL to receive JSON data
-  Requires a value


### `--shared-key`
{: .no_toc }

Webhook: the JWS shared secret key
-  Requires a value


### `--file`
{: .no_toc }

The name of a local file that contains the script to upload
-  Requires a value


### `--events`
{: .no_toc }

A list of events to act on, e.g. environment.push
-  Default: `*`
-  Requires a value


### `--states`
{: .no_toc }

A list of states to act on, e.g. pending, in_progress, complete
-  Default: `complete`
-  Requires a value


### `--environments`
{: .no_toc }

The environment IDs to include
-  Default: `*`
-  Requires a value


### `--excluded-environments`
{: .no_toc }

The environment IDs to exclude
-  Default: `[]`
-  Requires a value


### `--from-address`
{: .no_toc }

[Optional] Custom From address for alert emails
-  Requires a value


### `--recipients`
{: .no_toc }

The recipient email address(es)
-  Default: `[]`
-  Requires a value


### `--channel`
{: .no_toc }

The Slack channel
-  Requires a value


### `--routing-key`
{: .no_toc }

The PagerDuty routing key
-  Requires a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--no-wait`, `-W`
{: .no_toc }


Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`
{: .no_toc }

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }


Use absolute links
-  Default: `false`
-  Does not accept a value



### `--source`, `-s`
{: .no_toc }


The source directory. Defaults to the current project root.
-  Requires a value



### `--destination`, `-d`
{: .no_toc }


The destination, to which the web root of each app will be symlinked. Default: _www
-  Requires a value



### `--copy`, `-c`
{: .no_toc }


Copy to a build directory, instead of symlinking from the source
-  Default: `false`
-  Does not accept a value


### `--clone`
{: .no_toc }

Use Git to clone the current HEAD to the build directory
-  Default: `false`
-  Does not accept a value


### `--run-deploy-hooks`
{: .no_toc }

Run deploy and/or post_deploy hooks
-  Default: `false`
-  Does not accept a value


### `--no-clean`
{: .no_toc }

Do not remove old builds
-  Default: `false`
-  Does not accept a value


### `--no-archive`
{: .no_toc }

Do not create or use a build archive
-  Default: `false`
-  Does not accept a value


### `--no-backup`
{: .no_toc }

Do not back up the previous build
-  Default: `false`
-  Does not accept a value


### `--no-cache`
{: .no_toc }

Disable caching
-  Default: `false`
-  Does not accept a value


### `--no-build-hooks`
{: .no_toc }

Do not run post-build hooks
-  Default: `false`
-  Does not accept a value


### `--no-deps`
{: .no_toc }

Do not install build dependencies locally
-  Default: `false`
-  Does not accept a value


### `--working-copy`
{: .no_toc }

Drush: use git to clone a repository of each Drupal module rather than simply downloading a version
-  Default: `false`
-  Does not accept a value


### `--concurrency`
{: .no_toc }

Drush: set the number of concurrent projects that will be processed at the same time
-  Default: `4`
-  Requires a value


### `--lock`
{: .no_toc }

Drush: create or update a lock file (only available with Drush version 7+)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }

The maximum number of builds to keep
-  Default: `5`
-  Requires a value


### `--max-age`
{: .no_toc }

The maximum age of builds, in seconds. Ignored if not set.
-  Requires a value


### `--include-active`
{: .no_toc }

Delete active build(s) too
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `mount:download`

Download files from a mount, using rsync

```bash
magento-cloud mount:download [-a|--all] [-m|--mount MOUNT] [--target TARGET] [--source-path] [--delete] [--exclude EXCLUDE] [--include INCLUDE] [--refresh] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [-A|--app APP] [--worker WORKER] [-i|--identity-file IDENTITY-FILE]
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->




### `--all`, `-a`
{: .no_toc }


Download from all mounts
-  Default: `false`
-  Does not accept a value



### `--mount`, `-m`
{: .no_toc }


The mount (as an app-relative path)
-  Requires a value


### `--target`
{: .no_toc }

The directory to which files will be downloaded. If --all is used, the mount path will be appended
-  Requires a value


### `--source-path`
{: .no_toc }

Use the mount's source path (rather than the mount path) as a subdirectory of the target, when --all is used
-  Default: `false`
-  Does not accept a value


### `--delete`
{: .no_toc }

Whether to delete extraneous files in the target directory
-  Default: `false`
-  Does not accept a value


### `--exclude`
{: .no_toc }

File(s) to exclude from the download (pattern)
-  Default: `[]`
-  Requires a value


### `--include`
{: .no_toc }

File(s) to include in the download (pattern)
-  Default: `[]`
-  Requires a value


### `--refresh`
{: .no_toc }

Whether to refresh the cache
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value



### `--app`, `-A`
{: .no_toc }


The remote application name
-  Requires a value


### `--worker`
{: .no_toc }

A worker name
-  Requires a value



### `--identity-file`, `-i`
{: .no_toc }


An SSH identity (private key) to use
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }

Output the mount paths only (one per line)
-  Default: `false`
-  Does not accept a value


### `--refresh`
{: .no_toc }

Whether to refresh the cache
-  Default: `false`
-  Does not accept a value


### `--format`
{: .no_toc }

The output format ("table", "csv", "tsv", or "plain")
-  Default: `table`
-  Requires a value


### `--columns`
{: .no_toc }

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`
{: .no_toc }

Do not output the table header
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value



### `--app`, `-A`
{: .no_toc }


The remote application name
-  Requires a value


### `--worker`
{: .no_toc }

A worker name
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `mount:size`

Check the disk usage of mounts

```bash
magento-cloud mount:size [-B|--bytes] [--refresh] [--format FORMAT] [--columns COLUMNS] [--no-header] [-i|--identity-file IDENTITY-FILE] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [-A|--app APP] [--worker WORKER]
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->




### `--bytes`, `-B`
{: .no_toc }


Show sizes in bytes
-  Default: `false`
-  Does not accept a value


### `--refresh`
{: .no_toc }

Refresh the cache
-  Default: `false`
-  Does not accept a value


### `--format`
{: .no_toc }

The output format ("table", "csv", "tsv", or "plain")
-  Default: `table`
-  Requires a value


### `--columns`
{: .no_toc }

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`
{: .no_toc }

Do not output the table header
-  Default: `false`
-  Does not accept a value



### `--identity-file`, `-i`
{: .no_toc }


An SSH identity (private key) to use
-  Requires a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value



### `--app`, `-A`
{: .no_toc }


The remote application name
-  Requires a value


### `--worker`
{: .no_toc }

A worker name
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `mount:upload`

Upload files to a mount, using rsync

```bash
magento-cloud mount:upload [--source SOURCE] [-m|--mount MOUNT] [--delete] [--exclude EXCLUDE] [--include INCLUDE] [--refresh] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [-A|--app APP] [--worker WORKER] [-i|--identity-file IDENTITY-FILE]
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->



### `--source`
{: .no_toc }

A directory containing files to upload
-  Requires a value



### `--mount`, `-m`
{: .no_toc }


The mount (as an app-relative path)
-  Requires a value


### `--delete`
{: .no_toc }

Whether to delete extraneous files in the mount
-  Default: `false`
-  Does not accept a value


### `--exclude`
{: .no_toc }

File(s) to exclude from the upload (pattern)
-  Default: `[]`
-  Requires a value


### `--include`
{: .no_toc }

File(s) to include in the upload (pattern)
-  Default: `[]`
-  Requires a value


### `--refresh`
{: .no_toc }

Whether to refresh the cache
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value



### `--app`, `-A`
{: .no_toc }


The remote application name
-  Requires a value


### `--worker`
{: .no_toc }

A worker name
-  Requires a value



### `--identity-file`, `-i`
{: .no_toc }


An SSH identity (private key) to use
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `project:clear-build-cache`

Clear a project's build cache

```bash
magento-cloud project:clear-build-cache [-p|--project PROJECT] [--host HOST]
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->




### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }


The request method to use
-  Requires a value



### `--data`, `-d`
{: .no_toc }


Data to send
-  Requires a value



### `--include`, `-i`
{: .no_toc }


Include headers in the output
-  Default: `false`
-  Does not accept a value



### `--head`, `-I`
{: .no_toc }


Fetch headers only
-  Default: `false`
-  Does not accept a value


### `--disable-compression`
{: .no_toc }

Do not use the curl --compressed flag
-  Default: `false`
-  Does not accept a value


### `--enable-glob`
{: .no_toc }

Enable curl globbing (remove the --globoff flag)
-  Default: `false`
-  Does not accept a value



### `--header`, `-H`
{: .no_toc }


Extra header(s)
-  Default: `[]`
-  Requires a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }


The environment ID to clone. Defaults to the project default, or the first available environment
-  Requires a value


### `--depth`
{: .no_toc }

Create a shallow clone: limit the number of commits in the history
-  Requires a value


### `--build`
{: .no_toc }

Build the project after cloning
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--identity-file`, `-i`
{: .no_toc }


An SSH identity (private key) to use
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }

Whether to refresh the cache
-  Default: `false`
-  Does not accept a value


### `--date-fmt`
{: .no_toc }

The date format (as a PHP date format string)
-  Default: `c`
-  Requires a value


### `--format`
{: .no_toc }

The output format ("table", "csv", "tsv", or "plain")
-  Default: `table`
-  Requires a value


### `--columns`
{: .no_toc }

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`
{: .no_toc }

Do not output the table header
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--no-wait`, `-W`
{: .no_toc }


Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`
{: .no_toc }

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }

Output a simple list of project IDs
-  Default: `false`
-  Does not accept a value


### `--host`
{: .no_toc }

Filter by region hostname (exact match)
-  Requires a value


### `--title`
{: .no_toc }

Filter by title (case-insensitive search)
-  Requires a value


### `--my`
{: .no_toc }

Display only the projects you own
-  Default: `false`
-  Does not accept a value


### `--refresh`
{: .no_toc }

Whether to refresh the list
-  Default: `1`
-  Requires a value


### `--sort`
{: .no_toc }

A property to sort by
-  Default: `title`
-  Requires a value


### `--reverse`
{: .no_toc }

Sort in reverse (descending) order
-  Default: `false`
-  Does not accept a value


### `--format`
{: .no_toc }

The output format ("table", "csv", "tsv", or "plain")
-  Default: `table`
-  Requires a value


### `--columns`
{: .no_toc }

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`
{: .no_toc }

Do not output the table header
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `project:variable:delete`

<fg=white;bg=red>[ DEPRECATED ]</> Delete a variable from a project

```bash
magento-cloud project:variable:delete [-p|--project PROJECT] [--host HOST] [-W|--no-wait] [--wait] [--] <name>
```

 <!-- app.name --> <!-- command.usage -->

### `name`

The variable name
-  Required
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->




### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--no-wait`, `-W`
{: .no_toc }


Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`
{: .no_toc }

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `project:variable:get`

<fg=white;bg=red>[ DEPRECATED ]</> View variable(s) for a project

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
{: .no_toc }

Output the full variable value only (a "name" must be specified)
-  Default: `false`
-  Does not accept a value


### `--format`
{: .no_toc }

The output format ("table", "csv", "tsv", or "plain")
-  Default: `table`
-  Requires a value


### `--columns`
{: .no_toc }

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`
{: .no_toc }

Do not output the table header
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `project:variable:set`

<fg=white;bg=red>[ DEPRECATED ]</> Set a variable for a project

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
{: .no_toc }

Mark the value as JSON
-  Default: `false`
-  Does not accept a value


### `--no-visible-build`
{: .no_toc }

Do not expose this variable at build time
-  Default: `false`
-  Does not accept a value


### `--no-visible-runtime`
{: .no_toc }

Do not expose this variable at runtime
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--no-wait`, `-W`
{: .no_toc }


Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`
{: .no_toc }

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }


The commit SHA. This can also accept "HEAD", and caret (^) or tilde (~) suffixes for parent commits.
-  Requires a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }


Show directories only
-  Default: `false`
-  Does not accept a value



### `--files`, `-f`
{: .no_toc }


Show files only
-  Default: `false`
-  Does not accept a value


### `--git-style`
{: .no_toc }

Style output similar to "git ls-tree"
-  Default: `false`
-  Does not accept a value



### `--commit`, `-c`
{: .no_toc }


The commit SHA. This can also accept "HEAD", and caret (^) or tilde (~) suffixes for parent commits.
-  Requires a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }

A route ID to select
-  Requires a value



### `--primary`, `-1`
{: .no_toc }


Select the primary route
-  Default: `false`
-  Does not accept a value



### `--property`, `-P`
{: .no_toc }


The property to display
-  Requires a value


### `--refresh`
{: .no_toc }

Bypass the cache of routes
-  Default: `false`
-  Does not accept a value


### `--date-fmt`
{: .no_toc }

The date format (as a PHP date format string)
-  Default: `c`
-  Requires a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value



### `--app`, `-A`
{: .no_toc }


[Deprecated option, no longer used]
-  Requires a value



### `--identity-file`, `-i`
{: .no_toc }


[Deprecated option, no longer used]
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }

Bypass the cache of routes
-  Default: `false`
-  Does not accept a value


### `--format`
{: .no_toc }

The output format ("table", "csv", "tsv", or "plain")
-  Default: `table`
-  Requires a value


### `--columns`
{: .no_toc }

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`
{: .no_toc }

Do not output the table header
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }

The shell type for autocompletion (bash or zsh)
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `self:stats`

View stats on GitHub package downloads

```bash
magento-cloud self:stats [-p|--page PAGE] [-c|--count COUNT] [--format FORMAT] [--columns COLUMNS] [--no-header] [--date-fmt DATE-FMT]
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->




### `--page`, `-p`
{: .no_toc }


Page number
-  Default: `1`
-  Requires a value



### `--count`, `-c`
{: .no_toc }


Results per page (max: 100)
-  Default: `20`
-  Requires a value


### `--format`
{: .no_toc }

The output format ("table", "csv", "tsv", or "plain")
-  Default: `table`
-  Requires a value


### `--columns`
{: .no_toc }

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`
{: .no_toc }

Do not output the table header
-  Default: `false`
-  Does not accept a value


### `--date-fmt`
{: .no_toc }

The date format (as a PHP date format string)
-  Default: `c`
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }

Only update between minor or patch versions
-  Default: `false`
-  Does not accept a value


### `--unstable`
{: .no_toc }

Update to a new unstable version, if available
-  Default: `false`
-  Does not accept a value


### `--manifest`
{: .no_toc }

Override the manifest file location
-  Requires a value


### `--current-version`
{: .no_toc }

Override the current version
-  Requires a value


### `--timeout`
{: .no_toc }

A timeout for the version check
-  Default: `30`
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }

Whether to refresh the cache
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value


### `--format`
{: .no_toc }

The output format ("table", "csv", "tsv", or "plain")
-  Default: `table`
-  Requires a value


### `--columns`
{: .no_toc }

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`
{: .no_toc }

Do not output the table header
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }


The collection to dump
-  Requires a value



### `--gzip`, `-z`
{: .no_toc }


Compress the dump using gzip
-  Default: `false`
-  Does not accept a value



### `--stdout`, `-o`
{: .no_toc }


Output to STDOUT instead of a file
-  Default: `false`
-  Does not accept a value



### `--relationship`, `-r`
{: .no_toc }


The service relationship to use
-  Requires a value



### `--identity-file`, `-i`
{: .no_toc }


An SSH identity (private key) to use
-  Requires a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value



### `--app`, `-A`
{: .no_toc }


The remote application name
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }


The collection to export
-  Requires a value


### `--jsonArray`
{: .no_toc }

Export data as a single JSON array
-  Default: `false`
-  Does not accept a value


### `--type`
{: .no_toc }

The export type, e.g. "csv"
-  Requires a value



### `--fields`, `-f`
{: .no_toc }


The fields to export
-  Default: `[]`
-  Requires a value



### `--relationship`, `-r`
{: .no_toc }


The service relationship to use
-  Requires a value



### `--identity-file`, `-i`
{: .no_toc }


An SSH identity (private key) to use
-  Requires a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value



### `--app`, `-A`
{: .no_toc }


The remote application name
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }


The collection to restore
-  Requires a value



### `--relationship`, `-r`
{: .no_toc }


The service relationship to use
-  Requires a value



### `--identity-file`, `-i`
{: .no_toc }


An SSH identity (private key) to use
-  Requires a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value



### `--app`, `-A`
{: .no_toc }


The remote application name
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }

Pass a JavaScript fragment to the shell
-  Requires a value



### `--relationship`, `-r`
{: .no_toc }


The service relationship to use
-  Requires a value



### `--identity-file`, `-i`
{: .no_toc }


An SSH identity (private key) to use
-  Requires a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value



### `--app`, `-A`
{: .no_toc }


The remote application name
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }


The service relationship to use
-  Requires a value



### `--identity-file`, `-i`
{: .no_toc }


An SSH identity (private key) to use
-  Requires a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value



### `--app`, `-A`
{: .no_toc }


The remote application name
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `session:switch`

<fg=white;bg=red>[ BETA ]</> Switch between sessions

```bash
magento-cloud session:switch [<id>]
```

 <!-- app.name --> <!-- command.usage -->

### `id`

The new session ID
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->




### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }

Live backup: do not stop the environment. If set, this leaves the environment running and open to connections during the backup. This reduces downtime, at the risk of backing up data in an inconsistent state.
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value



### `--no-wait`, `-W`
{: .no_toc }


Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`
{: .no_toc }

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }

Limit the number of snapshots to list
-  Default: `10`
-  Requires a value


### `--start`
{: .no_toc }

Only snapshots created before this date will be listed
-  Requires a value


### `--format`
{: .no_toc }

The output format ("table", "csv", "tsv", or "plain")
-  Default: `table`
-  Requires a value


### `--columns`
{: .no_toc }

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`
{: .no_toc }

Do not output the table header
-  Default: `false`
-  Does not accept a value


### `--date-fmt`
{: .no_toc }

The date format (as a PHP date format string)
-  Default: `c`
-  Requires a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }

The environment to restore to. Defaults to the snapshot's current environment
-  Requires a value


### `--branch-from`
{: .no_toc }

If the --target does not yet exist, this specifies the parent of the new environment
-  Requires a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value



### `--no-wait`, `-W`
{: .no_toc }


Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`
{: .no_toc }

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `source-operation:run`

<fg=white;bg=red>[ BETA ]</> Run a source operation

```bash
magento-cloud source-operation:run [--variable VARIABLE] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [-W|--no-wait] [--wait] [--] <operation>
```

 <!-- app.name --> <!-- command.usage -->

### `operation`

The operation name
-  Required
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->



### `--variable`
{: .no_toc }

A variable to set during the operation, in the format <info>type:name=value</info>
-  Default: `[]`
-  Requires a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value



### `--no-wait`, `-W`
{: .no_toc }


Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`
{: .no_toc }

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `ssh-cert:info`

Display information about the current SSH certificate

```bash
magento-cloud ssh-cert:info [--no-refresh] [-P|--property PROPERTY] [--date-fmt DATE-FMT]
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->



### `--no-refresh`
{: .no_toc }

Do not refresh the certificate if it is invalid
-  Default: `false`
-  Does not accept a value



### `--property`, `-P`
{: .no_toc }


The certificate property to display
-  Requires a value


### `--date-fmt`
{: .no_toc }

The date format (as a PHP date format string)
-  Default: `c`
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `ssh-cert:load`

Generate an SSH certificate

```bash
magento-cloud ssh-cert:load [--refresh-only] [--new] [--new-key]
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->



### `--refresh-only`
{: .no_toc }

Only refresh the certificate, if necessary (do not write SSH config)
-  Default: `false`
-  Does not accept a value


### `--new`
{: .no_toc }

Force the certificate to be refreshed
-  Default: `false`
-  Does not accept a value


### `--new-key`
{: .no_toc }

[Deprecated] Use --new instead
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }

A name to identify the key
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }

The output format ("table", "csv", "tsv", or "plain")
-  Default: `table`
-  Requires a value


### `--columns`
{: .no_toc }

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`
{: .no_toc }

Do not output the table header
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }


The subscription ID
-  Requires a value


### `--date-fmt`
{: .no_toc }

The date format (as a PHP date format string)
-  Default: `c`
-  Requires a value


### `--format`
{: .no_toc }

The output format ("table", "csv", "tsv", or "plain")
-  Default: `table`
-  Requires a value


### `--columns`
{: .no_toc }

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`
{: .no_toc }

Do not output the table header
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `tunnel:close`

Close SSH tunnels

```bash
magento-cloud tunnel:close [-a|--all] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [-A|--app APP]
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->




### `--all`, `-a`
{: .no_toc }


Close all tunnels
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value



### `--app`, `-A`
{: .no_toc }


The remote application name
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `tunnel:info`

View relationship info for SSH tunnels

```bash
magento-cloud tunnel:info [-P|--property PROPERTY] [-c|--encode] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [-A|--app APP] [--format FORMAT] [--columns COLUMNS] [--no-header]
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->




### `--property`, `-P`
{: .no_toc }


The relationship property to view
-  Requires a value



### `--encode`, `-c`
{: .no_toc }


Output as base64-encoded JSON
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value



### `--app`, `-A`
{: .no_toc }


The remote application name
-  Requires a value


### `--format`
{: .no_toc }

The output format ("table", "csv", "tsv", or "plain")
-  Default: `table`
-  Requires a value


### `--columns`
{: .no_toc }

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`
{: .no_toc }

Do not output the table header
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }


View all tunnels
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value



### `--app`, `-A`
{: .no_toc }


The remote application name
-  Requires a value


### `--format`
{: .no_toc }

The output format ("table", "csv", "tsv", or "plain")
-  Default: `table`
-  Requires a value


### `--columns`
{: .no_toc }

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`
{: .no_toc }

Do not output the table header
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `tunnel:open`

Open SSH tunnels to an app's relationships

```bash
magento-cloud tunnel:open [-g|--gateway-ports] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [-A|--app APP] [-i|--identity-file IDENTITY-FILE]
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->




### `--gateway-ports`, `-g`
{: .no_toc }


Allow remote hosts to connect to local forwarded ports
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value



### `--app`, `-A`
{: .no_toc }


The remote application name
-  Requires a value



### `--identity-file`, `-i`
{: .no_toc }


An SSH identity (private key) to use
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `tunnel:single`

Open a single SSH tunnel to an app relationship

```bash
magento-cloud tunnel:single [--port PORT] [-g|--gateway-ports] [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [-A|--app APP] [-r|--relationship RELATIONSHIP] [-i|--identity-file IDENTITY-FILE]
```

 <!-- app.name --> <!-- command.usage --> <!-- arguments.size -->



### `--port`
{: .no_toc }

The local port
-  Requires a value



### `--gateway-ports`, `-g`
{: .no_toc }


Allow remote hosts to connect to local forwarded ports
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value



### `--app`, `-A`
{: .no_toc }


The remote application name
-  Requires a value



### `--relationship`, `-r`
{: .no_toc }


The service relationship to use
-  Requires a value



### `--identity-file`, `-i`
{: .no_toc }


An SSH identity (private key) to use
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }


The user's project role ('admin' or 'viewer') or environment-specific role (e.g. 'master:contributor' or 'stage:viewer'). The character % can be used as a wildcard in the environment ID e.g. '%:viewer'. The role can be abbreviated, e.g. 'master:c'.
-  Default: `[]`
-  Requires a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--no-wait`, `-W`
{: .no_toc }


Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`
{: .no_toc }

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--no-wait`, `-W`
{: .no_toc }


Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`
{: .no_toc }

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }


The role level ('project' or 'environment')
-  Requires a value


### `--pipe`
{: .no_toc }

Output the role to stdout (after making any changes)
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value



### `--no-wait`, `-W`
{: .no_toc }


Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`
{: .no_toc }

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--role`, `-r`
{: .no_toc }


[Deprecated: use user:update to change a user's role(s)]
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }

The output format ("table", "csv", "tsv", or "plain")
-  Default: `table`
-  Requires a value


### `--columns`
{: .no_toc }

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`
{: .no_toc }

Do not output the table header
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }


The user's project role ('admin' or 'viewer') or environment-specific role (e.g. 'master:contributor' or 'stage:viewer'). The character % can be used as a wildcard in the environment ID e.g. '%:viewer'. The role can be abbreviated, e.g. 'master:c'.
-  Default: `[]`
-  Requires a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--no-wait`, `-W`
{: .no_toc }


Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`
{: .no_toc }

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }


The level at which to set the variable ('project' or 'environment')
-  Requires a value


### `--name`
{: .no_toc }

The variable name
-  Requires a value


### `--value`
{: .no_toc }

The variable's value
-  Requires a value


### `--json`
{: .no_toc }

Whether the variable is JSON-formatted
-  Default: `false`
-  Requires a value


### `--sensitive`
{: .no_toc }

Whether the variable is sensitive
-  Default: `false`
-  Requires a value


### `--prefix`
{: .no_toc }

The variable name's prefix (e.g. 'none' or 'env:')
-  Default: `none`
-  Requires a value


### `--enabled`
{: .no_toc }

Whether the variable should be enabled
-  Default: `true`
-  Requires a value


### `--inheritable`
{: .no_toc }

Whether the variable is inheritable by child environments
-  Default: `true`
-  Requires a value


### `--visible-build`
{: .no_toc }

Whether the variable should be visible at build time
-  Default: `true`
-  Requires a value


### `--visible-runtime`
{: .no_toc }

Whether the variable should be visible at runtime
-  Default: `true`
-  Requires a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value



### `--no-wait`, `-W`
{: .no_toc }


Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`
{: .no_toc }

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }


The variable level ('project', 'environment', 'p' or 'e')
-  Requires a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value



### `--no-wait`, `-W`
{: .no_toc }


Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`
{: .no_toc }

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `variable:disable`

<fg=white;bg=red>[ DEPRECATED ]</> Disable an enabled environment-level variable

```bash
magento-cloud variable:disable [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [-W|--no-wait] [--wait] [--] <name>
```

 <!-- app.name --> <!-- command.usage -->

### `name`

The name of the variable
-  Required
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->




### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value



### `--no-wait`, `-W`
{: .no_toc }


Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`
{: .no_toc }

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `variable:enable`

<fg=white;bg=red>[ DEPRECATED ]</> Enable a disabled environment-level variable

```bash
magento-cloud variable:enable [-p|--project PROJECT] [--host HOST] [-e|--environment ENVIRONMENT] [-W|--no-wait] [--wait] [--] <name>
```

 <!-- app.name --> <!-- command.usage -->

### `name`

The name of the variable
-  Required
    <!-- argument --> <!-- arguments --> <!-- arguments.size -->




### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value



### `--no-wait`, `-W`
{: .no_toc }


Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`
{: .no_toc }

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }


View a single variable property
-  Requires a value



### `--level`, `-l`
{: .no_toc }


The variable level ('project', 'environment', 'p' or 'e')
-  Requires a value


### `--format`
{: .no_toc }

The output format ("table", "csv", "tsv", or "plain")
-  Default: `table`
-  Requires a value


### `--columns`
{: .no_toc }

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`
{: .no_toc }

Do not output the table header
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value


### `--pipe`
{: .no_toc }

[Deprecated option] Output the variable value only
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }


The variable level ('project', 'environment', 'p' or 'e')
-  Requires a value


### `--format`
{: .no_toc }

The output format ("table", "csv", "tsv", or "plain")
-  Default: `table`
-  Requires a value


### `--columns`
{: .no_toc }

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`
{: .no_toc }

Do not output the table header
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size -->

## `variable:set`

<fg=white;bg=red>[ DEPRECATED ]</> Set a variable for an environment

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
{: .no_toc }

Mark the value as JSON
-  Default: `false`
-  Does not accept a value


### `--disabled`
{: .no_toc }

Mark the variable as disabled
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value



### `--no-wait`, `-W`
{: .no_toc }


Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`
{: .no_toc }

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }


The variable level ('project', 'environment', 'p' or 'e')
-  Requires a value


### `--value`
{: .no_toc }

The variable's value
-  Requires a value


### `--json`
{: .no_toc }

Whether the variable is JSON-formatted
-  Default: `false`
-  Requires a value


### `--sensitive`
{: .no_toc }

Whether the variable is sensitive
-  Default: `false`
-  Requires a value


### `--enabled`
{: .no_toc }

Whether the variable should be enabled
-  Default: `true`
-  Requires a value


### `--inheritable`
{: .no_toc }

Whether the variable is inheritable by child environments
-  Default: `true`
-  Requires a value


### `--visible-build`
{: .no_toc }

Whether the variable should be visible at build time
-  Default: `true`
-  Requires a value


### `--visible-runtime`
{: .no_toc }

Whether the variable should be visible at runtime
-  Default: `true`
-  Requires a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value



### `--no-wait`, `-W`
{: .no_toc }


Do not wait for the operation to complete
-  Default: `false`
-  Does not accept a value


### `--wait`
{: .no_toc }

Wait for the operation to complete (default)
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
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
{: .no_toc }

Whether to refresh the cache
-  Default: `false`
-  Does not accept a value



### `--project`, `-p`
{: .no_toc }


The project ID or URL
-  Requires a value


### `--host`
{: .no_toc }

The project's API hostname
-  Requires a value



### `--environment`, `-e`
{: .no_toc }


The environment ID
-  Requires a value


### `--format`
{: .no_toc }

The output format ("table", "csv", "tsv", or "plain")
-  Default: `table`
-  Requires a value


### `--columns`
{: .no_toc }

Columns to display (comma-separated list, or multiple values)
-  Default: `[]`
-  Requires a value


### `--no-header`
{: .no_toc }

Do not output the table header
-  Default: `false`
-  Does not accept a value



### `--help`, `-h`
{: .no_toc }


Display this help message
-  Default: `false`
-  Does not accept a value



### `--quiet`, `-q`
{: .no_toc }


Do not output any message
-  Default: `false`
-  Does not accept a value



### `--verbose`, `-v|-vv|-vvv`
{: .no_toc }


Increase the verbosity of messages
-  Default: `false`
-  Does not accept a value



### `--version`, `-V`
{: .no_toc }


Display this application version
-  Default: `false`
-  Does not accept a value



### `--yes`, `-y`
{: .no_toc }


Answer "yes" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value



### `--no`, `-n`
{: .no_toc }


Answer "no" to any yes/no questions; disable interaction
-  Default: `false`
-  Does not accept a value <!-- options --> <!-- options.size --> <!-- commands --> <!-- file -->