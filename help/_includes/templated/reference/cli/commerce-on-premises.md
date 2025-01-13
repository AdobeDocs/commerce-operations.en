# bin/magento (Adobe Commerce on-premises)

<!-- All the assigned and captured content is used in the included template -->



<!-- The template to render with above values -->

**Version**: 2.4.7-p1

This reference contains 141 commands available through the `bin/magento` command-line tool.
The initial list is auto generated using the `bin/magento list` command at Adobe Commerce.

## General

Use the ["Add CLI commands"](https://developer.adobe.com/commerce/php/development/cli-commands/) guide to add a custom CLI command.

You can call `bin/magento` CLI commands using shortcuts instead of the full command name. For example, you can call `bin/magento setup:upgrade` using `bin/magento s:up`, `bin/magento s:upg`. See [shortcut syntax](https://symfony.com/doc/current/components/console/usage.html#shortcut-syntax) to understand how to use shortcuts with any CLI command.

This reference documentation is generated from the application source code. To change the documentation, you should open a pull request for the corresponding command in the relevant [codebase](https://github.com/magento) repository. See [Code Contributions](https://developer.adobe.com/commerce/contributor/guides/code-contributions/) for more information.

### Global options

#### `--help`, `-h`

Display help for the given command. When no command is given display help for the list command

- Default: `false`
- Does not accept a value

#### `--quiet`, `-q`

Do not output any message

- Default: `false`
- Does not accept a value

#### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug

- Default: `false`
- Does not accept a value

#### `--version`, `-V`

Display this application version

- Default: `false`
- Does not accept a value

#### `--ansi`

Force (or disable --no-ansi) ANSI output

- Does not accept a value

#### `--no-ansi`

Negate the "--ansi" option

- Default: `false`
- Does not accept a value

#### `--no-interaction`, `-n`

Do not ask any interactive question

- Default: `false`
- Does not accept a value


## `_complete`

```bash
bin/magento _complete [-s|--shell SHELL] [-i|--input INPUT] [-c|--current CURRENT] [-a|--api-version API-VERSION] [-S|--symfony SYMFONY]
```

Internal command to provide shell completion suggestions

### Options

For global options, see [Global options](#global-options).

#### `--shell`, `-s`

The shell type ("bash", "fish", "zsh")

- Requires a value

#### `--input`, `-i`

An array of input tokens (e.g. COMP_WORDS or argv)

- Default: `[]`
- Requires a value

#### `--current`, `-c`

The index of the "input" array that the cursor is in (e.g. COMP_CWORD)

- Requires a value

#### `--api-version`, `-a`

The API version of the completion script

- Requires a value

#### `--symfony`, `-S`

deprecated

- Requires a value


## `completion`

```bash
bin/magento completion [--debug] [--] [<shell>]
```

Dump the shell completion script

```
The completion command dumps the shell completion script required
to use shell autocompletion (currently, bash, fish, zsh completion are supported).

Static installation
-------------------

Dump the script to a global completion file and restart your shell:

    bin/magento completion  | sudo tee /etc/bash_completion.d/magento

Or dump the script to a local file and source it:

    bin/magento completion  > completion.sh

    # source the file whenever you use the project
    source completion.sh

    # or add this line at the end of your "~/.bashrc" file:
    source /path/to/completion.sh

Dynamic installation
--------------------

Add this to the end of your shell configuration file (e.g. "~/.bashrc"):

    eval "$(/var/www/html/magento2/bin/magento completion )"
```

### Arguments

#### `shell`

The shell type (e.g. "bash"), the value of the "$SHELL" env var will be used if this is not given

### Options

For global options, see [Global options](#global-options).

#### `--debug`

Tail the completion debug log

- Default: `false`
- Does not accept a value


## `help`

```bash
bin/magento help [--format FORMAT] [--raw] [--] [<command_name>]
```

Display help for a command

```
The help command displays help for a given command:

  bin/magento help list

You can also output the help in other formats by using the --format option:

  bin/magento help --format=xml list

To display the list of available commands, please use the list command.
```

### Arguments

#### `command_name`

The command name

- Default: `help`

### Options

For global options, see [Global options](#global-options).

#### `--format`

The output format (txt, xml, json, or md)

- Default: `txt`
- Requires a value

#### `--raw`

To output raw command help

- Default: `false`
- Does not accept a value


## `list`

```bash
bin/magento list [--raw] [--format FORMAT] [--short] [--] [<namespace>]
```

List commands

```
The list command lists all commands:

  bin/magento list

You can also display the commands for a specific namespace:

  bin/magento list test

You can also output the information in other formats by using the --format option:

  bin/magento list --format=xml

It's also possible to get raw list of commands (useful for embedding command runner):

  bin/magento list --raw
```

### Arguments

#### `namespace`

The namespace name

### Options

For global options, see [Global options](#global-options).

#### `--raw`

To output raw command list

- Default: `false`
- Does not accept a value

#### `--format`

The output format (txt, xml, json, or md)

- Default: `txt`
- Requires a value

#### `--short`

To skip describing commands' arguments

- Default: `false`
- Does not accept a value


## `admin:adobe-ims:disable`

```bash
bin/magento admin:adobe-ims:disable
```

Disable Adobe IMS Module

### Options

For global options, see [Global options](#global-options).


## `admin:adobe-ims:enable`

```bash
bin/magento admin:adobe-ims:enable [-o|--organization-id [ORGANIZATION-ID]] [-c|--client-id [CLIENT-ID]] [-s|--client-secret [CLIENT-SECRET]] [-t|--2fa [2FA]]
```

Enable Adobe IMS Module.

### Options

For global options, see [Global options](#global-options).

#### `--organization-id`, `-o`

Set Organization ID for Adobe IMS configuration. Required when enabling the module

- Accepts a value

#### `--client-id`, `-c`

Set the client ID for Adobe IMS configuration. Required when enabling the module

- Accepts a value

#### `--client-secret`, `-s`

Set the client Secret for Adobe IMS configuration. Required when enabling the module

- Accepts a value

#### `--2fa`, `-t`

Check if 2FA is enabled for Organization in Adobe Admin Console. Required when enabling the module

- Accepts a value


## `admin:adobe-ims:info`

```bash
bin/magento admin:adobe-ims:info
```

Information of Adobe IMS Module configuration

### Options

For global options, see [Global options](#global-options).


## `admin:adobe-ims:status`

```bash
bin/magento admin:adobe-ims:status
```

Status of Adobe IMS Module

### Options

For global options, see [Global options](#global-options).


## `admin:user:create`

```bash
bin/magento admin:user:create [--admin-user ADMIN-USER] [--admin-password ADMIN-PASSWORD] [--admin-email ADMIN-EMAIL] [--admin-firstname ADMIN-FIRSTNAME] [--admin-lastname ADMIN-LASTNAME] [--magento-init-params MAGENTO-INIT-PARAMS]
```

Creates an administrator

### Options

For global options, see [Global options](#global-options).

#### `--admin-user`

(Required) Admin user

- Requires a value

#### `--admin-password`

(Required) Admin password

- Requires a value

#### `--admin-email`

(Required) Admin email

- Requires a value

#### `--admin-firstname`

(Required) Admin first name

- Requires a value

#### `--admin-lastname`

(Required) Admin last name

- Requires a value

#### `--magento-init-params`

Add to any command to customize Magento initialization parameters For example: "MAGE_MODE=developer&MAGE_DIRS[base][path]=/var/www/example.com&MAGE_DIRS[cache][path]=/var/tmp/cache"

- Requires a value


## `admin:user:unlock`

```bash
bin/magento admin:user:unlock <username>
```

Unlock Admin Account

```
This command unlocks an admin account by its username.
To unlock:
      bin/magento admin:user:unlock username
```

### Arguments

#### `username`

The admin username to unlock

- Required

### Options

For global options, see [Global options](#global-options).


## `app:config:dump`

```bash
bin/magento app:config:dump [<config-types>...]
```

Create dump of application

### Arguments

#### `config-types`

Space-separated list of config types or omit to dump all [scopes, system, themes, i18n]

- Default: `[]`
- Array
   
### Options

For global options, see [Global options](#global-options).


## `app:config:import`

```bash
bin/magento app:config:import
```

Import data from shared configuration files to appropriate data storage

### Options

For global options, see [Global options](#global-options).


## `app:config:status`

```bash
bin/magento app:config:status
```

Checks if config propagation requires update

### Options

For global options, see [Global options](#global-options).


## `braintree:migrate`

```bash
bin/magento braintree:migrate [--host HOST] [--dbname DBNAME] [--username USERNAME] [--password PASSWORD]
```

Migrate stored cards from a Magento 1 database

### Options

For global options, see [Global options](#global-options).

#### `--host`

Hostname/IP. Port is optional

- Requires a value

#### `--dbname`

Database name

- Requires a value

#### `--username`

Database username. Must have read access

- Requires a value

#### `--password`

Password

- Requires a value


## `cache:clean`

```bash
bin/magento cache:clean [--bootstrap BOOTSTRAP] [--] [<types>...]
```

Cleans cache type(s)

### Arguments

#### `types`

Space-separated list of cache types or omit to apply to all cache types.

- Default: `[]`
- Array
   
### Options

For global options, see [Global options](#global-options).

#### `--bootstrap`

add or override parameters of the bootstrap

- Requires a value


## `cache:disable`

```bash
bin/magento cache:disable [--bootstrap BOOTSTRAP] [--] [<types>...]
```

Disables cache type(s)

### Arguments

#### `types`

Space-separated list of cache types or omit to apply to all cache types.

- Default: `[]`
- Array
   
### Options

For global options, see [Global options](#global-options).

#### `--bootstrap`

add or override parameters of the bootstrap

- Requires a value


## `cache:enable`

```bash
bin/magento cache:enable [--bootstrap BOOTSTRAP] [--] [<types>...]
```

Enables cache type(s)

### Arguments

#### `types`

Space-separated list of cache types or omit to apply to all cache types.

- Default: `[]`
- Array
   
### Options

For global options, see [Global options](#global-options).

#### `--bootstrap`

add or override parameters of the bootstrap

- Requires a value


## `cache:flush`

```bash
bin/magento cache:flush [--bootstrap BOOTSTRAP] [--] [<types>...]
```

Flushes cache storage used by cache type(s)

### Arguments

#### `types`

Space-separated list of cache types or omit to apply to all cache types.

- Default: `[]`
- Array
   
### Options

For global options, see [Global options](#global-options).

#### `--bootstrap`

add or override parameters of the bootstrap

- Requires a value


## `cache:status`

```bash
bin/magento cache:status [--bootstrap BOOTSTRAP]
```

Checks cache status

### Options

For global options, see [Global options](#global-options).

#### `--bootstrap`

add or override parameters of the bootstrap

- Requires a value


## `catalog:images:resize`

```bash
bin/magento catalog:images:resize [-a|--async] [--skip_hidden_images]
```

Creates resized product images

### Options

For global options, see [Global options](#global-options).

#### `--async`, `-a`

Resize image in asynchronous mode

- Default: `false`
- Does not accept a value

#### `--skip_hidden_images`

Do not process images marked as hidden from product page

- Default: `false`
- Does not accept a value


## `catalog:product:attributes:cleanup`

```bash
bin/magento catalog:product:attributes:cleanup
```

Removes unused product attributes.

### Options

For global options, see [Global options](#global-options).


## `cms:wysiwyg:restrict`

```bash
bin/magento cms:wysiwyg:restrict <restrict>
```

Set whether to enforce user HTML content validation or show a warning instead

### Arguments

#### `restrict`

y\n

- Required

### Options

For global options, see [Global options](#global-options).


## `config:sensitive:set`

```bash
bin/magento config:sensitive:set [-i|--interactive] [--scope [SCOPE]] [--scope-code [SCOPE-CODE]] [--] [<path> [<value>]]
```

Set sensitive configuration values

### Arguments

#### `path`

Configuration path for example group/section/field_name


#### `value`

Configuration value

### Options

For global options, see [Global options](#global-options).

#### `--interactive`, `-i`

Enable interactive mode to set all sensitive variables

- Default: `false`
- Does not accept a value

#### `--scope`

Scope for configuration, if not set use 'default'

- Default: `default`
- Accepts a value

#### `--scope-code`

Scope code for configuration, empty string by default

- Default: ``
- Accepts a value


## `config:set`

```bash
bin/magento config:set [--scope SCOPE] [--scope-code SCOPE-CODE] [-e|--lock-env] [-c|--lock-config] [-l|--lock] [--] <path> <value>
```

Change system configuration

### Arguments

#### `path`

Configuration path in format section/group/field_name

- Required


#### `value`

Configuration value

- Required

### Options

For global options, see [Global options](#global-options).

#### `--scope`

Configuration scope (default, website, or store)

- Default: `default`
- Requires a value

#### `--scope-code`

Scope code (required only if scope is not 'default')

- Requires a value

#### `--lock-env`, `-e`

Lock value which prevents modification in the Admin (will be saved in app/etc/env.php)

- Default: `false`
- Does not accept a value

#### `--lock-config`, `-c`

Lock and share value with other installations, prevents modification in the Admin (will be saved in app/etc/config.php)

- Default: `false`
- Does not accept a value

#### `--lock`, `-l`

Deprecated, use the --lock-env option instead.

- Default: `false`
- Does not accept a value


## `config:show`

```bash
bin/magento config:show [--scope [SCOPE]] [--scope-code [SCOPE-CODE]] [--] [<path>]
```

Shows configuration value for given path. If path is not specified, all saved values will be shown

### Arguments

#### `path`

Configuration path, for example section_id/group_id/field_id

### Options

For global options, see [Global options](#global-options).

#### `--scope`

Scope for configuration, if not specified, then 'default' scope will be used

- Default: `default`
- Accepts a value

#### `--scope-code`

Scope code (required only if scope is not `default`)

- Default: ``
- Accepts a value


## `cron:install`

```bash
bin/magento cron:install [-f|--force] [-d|--non-optional]
```

Generates and installs crontab for current user

### Options

For global options, see [Global options](#global-options).

#### `--force`, `-f`

Force install tasks

- Default: `false`
- Does not accept a value

#### `--non-optional`, `-d`

Install only the non-optional (default) tasks

- Default: `false`
- Does not accept a value


## `cron:remove`

```bash
bin/magento cron:remove
```

Removes tasks from crontab

### Options

For global options, see [Global options](#global-options).


## `cron:run`

```bash
bin/magento cron:run [--group GROUP] [--exclude-group [EXCLUDE-GROUP]] [--bootstrap BOOTSTRAP]
```

Runs jobs by schedule

### Options

For global options, see [Global options](#global-options).

#### `--group`

Run jobs only from specified group

- Requires a value

#### `--exclude-group`

Exclude jobs from the specified group

- Default: `[]`
- Accepts multiple values

#### `--bootstrap`

Add or override parameters of the bootstrap

- Requires a value


## `customer:hash:upgrade`

```bash
bin/magento customer:hash:upgrade
```

Upgrade customer's hash according to the latest algorithm

### Options

For global options, see [Global options](#global-options).


## `deploy:mode:set`

```bash
bin/magento deploy:mode:set [-s|--skip-compilation] [--] <mode>
```

Set application mode.

### Arguments

#### `mode`

The application mode to set. Available options are "developer" or "production"

- Required

### Options

For global options, see [Global options](#global-options).

#### `--skip-compilation`, `-s`

Skips the clearing and regeneration of static content (generated code, preprocessed CSS, and assets in pub/static/)

- Default: `false`
- Does not accept a value


## `deploy:mode:show`

```bash
bin/magento deploy:mode:show
```

Displays current application mode.

### Options

For global options, see [Global options](#global-options).


## `dev:di:info`

```bash
bin/magento dev:di:info <class>
```

Provides information on Dependency Injection configuration for the Command.

### Arguments

#### `class`

Class name

- Required

### Options

For global options, see [Global options](#global-options).


## `dev:email:newsletter-compatibility-check`

```bash
bin/magento dev:email:newsletter-compatibility-check
```

Scans newsletter templates for potential variable usage compatibility issues

### Options

For global options, see [Global options](#global-options).


## `dev:email:override-compatibility-check`

```bash
bin/magento dev:email:override-compatibility-check
```

Scans email template overrides for potential variable usage compatibility issues

### Options

For global options, see [Global options](#global-options).


## `dev:profiler:disable`

```bash
bin/magento dev:profiler:disable
```

Disable the profiler.

### Options

For global options, see [Global options](#global-options).


## `dev:profiler:enable`

```bash
bin/magento dev:profiler:enable [<type>]
```

Enable the profiler.

### Arguments

#### `type`

Profiler type

### Options

For global options, see [Global options](#global-options).


## `dev:query-log:disable`

```bash
bin/magento dev:query-log:disable
```

Disable DB query logging

### Options

For global options, see [Global options](#global-options).


## `dev:query-log:enable`

```bash
bin/magento dev:query-log:enable [--include-all-queries [INCLUDE-ALL-QUERIES]] [--query-time-threshold [QUERY-TIME-THRESHOLD]] [--include-call-stack [INCLUDE-CALL-STACK]]
```

Enable DB query logging

### Options

For global options, see [Global options](#global-options).

#### `--include-all-queries`

Log all queries. [true\|false]

- Default: `true`
- Accepts a value

#### `--query-time-threshold`

Query time thresholds.

- Default: `0.001`
- Accepts a value

#### `--include-call-stack`

Include call stack. [true\|false]

- Default: `true`
- Accepts a value


## `dev:source-theme:deploy`

```bash
bin/magento dev:source-theme:deploy [--type TYPE] [--locale LOCALE] [--area AREA] [--theme THEME] [--] [<file>...]
```

Collects and publishes source files for theme.

### Arguments

#### `file`

Files to pre-process (file should be specified without extension)

- Default: `css/styles-mcss/styles-l`

- Array
   
### Options

For global options, see [Global options](#global-options).

#### `--type`

Type of source files: [less]

- Default: `less`
- Requires a value

#### `--locale`

Locale: [en_US]

- Default: `en_US`
- Requires a value

#### `--area`

Area: [frontend\|adminhtml]

- Default: `frontend`
- Requires a value

#### `--theme`

Theme: [Vendor/theme]

- Default: `Magento/luma`
- Requires a value


## `dev:template-hints:disable`

```bash
bin/magento dev:template-hints:disable
```

Disable frontend template hints. A cache flush might be required.

### Options

For global options, see [Global options](#global-options).


## `dev:template-hints:enable`

```bash
bin/magento dev:template-hints:enable
```

Enable frontend template hints. A cache flush might be required.

### Options

For global options, see [Global options](#global-options).


## `dev:template-hints:status`

```bash
bin/magento dev:template-hints:status
```

Show frontend template hints status.

### Options

For global options, see [Global options](#global-options).


## `dev:tests:run`

```bash
bin/magento dev:tests:run [-c|--arguments ARGUMENTS] [--] [<type>]
```

Runs tests

### Arguments

#### `type`

Type of test to run. Available types: all, unit, integration, integration-all, static, static-all, integrity, legacy, default

- Default: `default`

### Options

For global options, see [Global options](#global-options).

#### `--arguments`, `-c`

Additional arguments for PHPUnit. Example: "-c'--filter=MyTest'" (no spaces)

- Default: ``
- Requires a value


## `dev:urn-catalog:generate`

```bash
bin/magento dev:urn-catalog:generate [--ide IDE] [--] <path>
```

Generates the catalog of URNs to *.xsd mappings for the IDE to highlight xml.

### Arguments

#### `path`

Path to file to output the catalog. For PhpStorm use .idea/misc.xml

- Required

### Options

For global options, see [Global options](#global-options).

#### `--ide`

Format in which catalog will be generated. Supported: [phpstorm, vscode]

- Default: `phpstorm`
- Requires a value


## `dev:xml:convert`

```bash
bin/magento dev:xml:convert [-o|--overwrite] [--] <xml-file> <processor>
```

Converts XML file using XSL style sheets

### Arguments

#### `xml-file`

Path to XML file that going to be transformed

- Required


#### `processor`

Path to XSL style sheet that going to be applied to XML file

- Required

### Options

For global options, see [Global options](#global-options).

#### `--overwrite`, `-o`

Overwrite XML file

- Default: `false`
- Does not accept a value


## `downloadable:domains:add`

```bash
bin/magento downloadable:domains:add [<domains>...]
```

Add domains to the downloadable domains whitelist

### Arguments

#### `domains`

Domains name

- Default: `[]`
- Array
   
### Options

For global options, see [Global options](#global-options).


## `downloadable:domains:remove`

```bash
bin/magento downloadable:domains:remove [<domains>...]
```

Remove domains from the downloadable domains whitelist

### Arguments

#### `domains`

Domain names

- Default: `[]`
- Array
   
### Options

For global options, see [Global options](#global-options).


## `downloadable:domains:show`

```bash
bin/magento downloadable:domains:show
```

Display downloadable domains whitelist

### Options

For global options, see [Global options](#global-options).


## `encryption:payment-data:update`

```bash
bin/magento encryption:payment-data:update
```

Re-encrypts encrypted credit card data with latest encryption cipher.

### Options

For global options, see [Global options](#global-options).


## `events:create-event-provider`

```bash
bin/magento events:create-event-provider [--label [LABEL]] [--description [DESCRIPTION]]events:provider:create 
```

Create a custom event provider in Adobe I/O Events for this instance. If you do not specify the label and description options, they must be defined in the system app/etc/event-types.json file.

### Options

For global options, see [Global options](#global-options).

#### `--label`

A label to define your custom provider.

- Accepts a value

#### `--description`

A description of your provider.

- Accepts a value


## `events:generate:module`

```bash
bin/magento events:generate:module
```

Generate module based on plugins list

### Options

For global options, see [Global options](#global-options).


## `events:info`

```bash
bin/magento events:info [--depth [DEPTH]] [--] <event-code>
```

Returns the payload of the specified event.

### Arguments

#### `event-code`

Event code

- Required

### Options

For global options, see [Global options](#global-options).

#### `--depth`

The number of levels in the event payload to return

- Default: `2`
- Accepts a value


## `events:list`

```bash
bin/magento events:list
```

Shows list of subscribed events

### Options

For global options, see [Global options](#global-options).


## `events:list:all`

```bash
bin/magento events:list:all <module_name>
```

Returns a list of subscribable events defined in the specified module

### Arguments

#### `module_name`

Module name

- Required

### Options

For global options, see [Global options](#global-options).


## `events:metadata:populate`

```bash
bin/magento events:metadata:populate
```

Creates metadata in Adobe I/O from the configuration list (XML and application configurations)

### Options

For global options, see [Global options](#global-options).


## `events:provider:info`

```bash
bin/magento events:provider:info
```

Returns details about the configured event provider

### Options

For global options, see [Global options](#global-options).


## `events:registrations:list`

```bash
bin/magento events:registrations:list
```

Lists event registrations in your App Builder project

### Options

For global options, see [Global options](#global-options).


## `events:subscribe`

```bash
bin/magento events:subscribe [-f|--force] [--fields FIELDS] [--parent PARENT] [--rules RULES] [-p|--priority] [-d|--destination DESTINATION] [--hipaaAuditRequired] [--] <event-code>
```

Subscribes to the event

### Arguments

#### `event-code`

Event code

- Required

### Options

For global options, see [Global options](#global-options).

#### `--force`, `-f`

Forces the specified event to be subscribed, even if it hasn't been defined locally.

- Default: `false`
- Does not accept a value

#### `--fields`

The list of fields in the event data payload.

- Default: `[]`
- Requires a value

#### `--parent`

The parent event code for an event subscription with rules.

- Requires a value

#### `--rules`

The list of rules for the event subscription, where each rule is formatted as "field\|operator\|value".

- Default: `[]`
- Requires a value

#### `--priority`, `-p`

Expedites the transmission of this event. Specify this option for events that need to be delivered immediately. By default, events are sent by cron once per minute.

- Default: `false`
- Does not accept a value

#### `--destination`, `-d`

The destination of this event. Specify this option for the events that should be delivered to the custom destination.

- Default: `default`
- Requires a value

#### `--hipaaAuditRequired`

Indicates the event contains data that is subject to HIPAA auditing.

- Default: `false`
- Does not accept a value


## `events:sync-events-metadata`

```bash
bin/magento events:sync-events-metadata [-d|--delete]
```

Synchronise event metadata for this instance

### Options

For global options, see [Global options](#global-options).

#### `--delete`, `-d`

Delete events metadata no longer required

- Default: `false`
- Does not accept a value


## `events:unsubscribe`

```bash
bin/magento events:unsubscribe <event-code>
```

Removes the subscription to the supplied event

### Arguments

#### `event-code`

Event code to unsubscribe from

- Required

### Options

For global options, see [Global options](#global-options).


## `i18n:collect-phrases`

```bash
bin/magento i18n:collect-phrases [-o|--output OUTPUT] [-m|--magento] [--] [<directory>]
```

Discovers phrases in the codebase

### Arguments

#### `directory`

Directory path to parse. Not needed if --magento flag is set

### Options

For global options, see [Global options](#global-options).

#### `--output`, `-o`

Path (including filename) to an output file. With no file specified, defaults to stdout.

- Requires a value

#### `--magento`, `-m`

Use the --magento parameter to parse the current Magento codebase. Omit the parameter if a directory is specified.

- Default: `false`
- Does not accept a value


## `i18n:pack`

```bash
bin/magento i18n:pack [-m|--mode MODE] [-d|--allow-duplicates] [--] <source> <locale>
```

Saves language package

### Arguments

#### `source`

Path to source dictionary file with translations

- Required


#### `locale`

Target locale for dictionary, for example "de_DE"

- Required

### Options

For global options, see [Global options](#global-options).

#### `--mode`, `-m`

Save mode for dictionary - "replace" - replace language pack by new one - "merge" - merge language packages, by default "replace"

- Default: `replace`
- Requires a value

#### `--allow-duplicates`, `-d`

Use the --allow-duplicates parameter to allow saving duplicates of translate. Otherwise omit the parameter.

- Default: `false`
- Does not accept a value


## `i18n:uninstall`

```bash
bin/magento i18n:uninstall [-b|--backup-code] [--] <package>...
```

Uninstalls language packages

### Arguments

#### `package`

Language package name

- Default: `[]`
- Required

- Array
   
### Options

For global options, see [Global options](#global-options).

#### `--backup-code`, `-b`

Take code and configuration files backup (excluding temporary files)

- Default: `false`
- Does not accept a value


## `indexer:info`

```bash
bin/magento indexer:info
```

Shows allowed Indexers

### Options

For global options, see [Global options](#global-options).


## `indexer:reindex`

```bash
bin/magento indexer:reindex [<index>...]
```

Reindexes Data

### Arguments

#### `index`

Space-separated list of index types or omit to apply to all indexes.

- Default: `[]`
- Array
   
### Options

For global options, see [Global options](#global-options).


## `indexer:reset`

```bash
bin/magento indexer:reset [<index>...]
```

Resets indexer status to invalid

### Arguments

#### `index`

Space-separated list of index types or omit to apply to all indexes.

- Default: `[]`
- Array
   
### Options

For global options, see [Global options](#global-options).


## `indexer:set-dimensions-mode`

```bash
bin/magento indexer:set-dimensions-mode [<indexer> [<mode>]]
```

Set Indexer Dimensions Mode

### Arguments

#### `indexer`

Indexer name [catalog_product_price|catalogpermissions_category]


#### `mode`

Indexer dimension modes catalog_product_price          none,website,customer_group,website_and_customer_group catalogpermissions_category    none,customer_group 

### Options

For global options, see [Global options](#global-options).


## `indexer:set-mode`

```bash
bin/magento indexer:set-mode [<mode> [<index>...]]
```

Sets index mode type

### Arguments

#### `mode`

Indexer mode type [realtime|schedule]


#### `index`

Space-separated list of index types or omit to apply to all indexes.

- Default: `[]`
- Array
   
### Options

For global options, see [Global options](#global-options).


## `indexer:set-status`

```bash
bin/magento indexer:set-status <status> [<index>...]
```

Sets the specified indexer status

### Arguments

#### `status`

Indexer status type [invalid|suspended|valid]

- Required


#### `index`

Space-separated list of index types or omit to apply to all indexes.

- Default: `[]`
- Array
   
### Options

For global options, see [Global options](#global-options).


## `indexer:show-dimensions-mode`

```bash
bin/magento indexer:show-dimensions-mode [<indexer>...]
```

Shows Indexer Dimension Mode

### Arguments

#### `indexer`

Space-separated list of index types or omit to apply to all indexes (catalog_product_price,catalogpermissions_category)

- Default: `[]`
- Array
   
### Options

For global options, see [Global options](#global-options).


## `indexer:show-mode`

```bash
bin/magento indexer:show-mode [<index>...]
```

Shows Index Mode

### Arguments

#### `index`

Space-separated list of index types or omit to apply to all indexes.

- Default: `[]`
- Array
   
### Options

For global options, see [Global options](#global-options).


## `indexer:status`

```bash
bin/magento indexer:status [<index>...]
```

Shows status of Indexer

### Arguments

#### `index`

Space-separated list of index types or omit to apply to all indexes.

- Default: `[]`
- Array
   
### Options

For global options, see [Global options](#global-options).


## `info:adminuri`

```bash
bin/magento info:adminuri
```

Displays the Magento Admin URI

### Options

For global options, see [Global options](#global-options).


## `info:backups:list`

```bash
bin/magento info:backups:list
```

Prints list of available backup files

### Options

For global options, see [Global options](#global-options).


## `info:currency:list`

```bash
bin/magento info:currency:list
```

Displays the list of available currencies

### Options

For global options, see [Global options](#global-options).


## `info:dependencies:show-framework`

```bash
bin/magento info:dependencies:show-framework [-o|--output OUTPUT]
```

Shows number of dependencies on Magento framework

### Options

For global options, see [Global options](#global-options).

#### `--output`, `-o`

Report filename

- Default: `framework-dependencies.csv`
- Requires a value


## `info:dependencies:show-modules`

```bash
bin/magento info:dependencies:show-modules [-o|--output OUTPUT]
```

Shows number of dependencies between modules

### Options

For global options, see [Global options](#global-options).

#### `--output`, `-o`

Report filename

- Default: `modules-dependencies.csv`
- Requires a value


## `info:dependencies:show-modules-circular`

```bash
bin/magento info:dependencies:show-modules-circular [-o|--output OUTPUT]
```

Shows number of circular dependencies between modules

### Options

For global options, see [Global options](#global-options).

#### `--output`, `-o`

Report filename

- Default: `modules-circular-dependencies.csv`
- Requires a value


## `info:language:list`

```bash
bin/magento info:language:list
```

Displays the list of available language locales

### Options

For global options, see [Global options](#global-options).


## `info:timezone:list`

```bash
bin/magento info:timezone:list
```

Displays the list of available timezones

### Options

For global options, see [Global options](#global-options).


## `inventory:reservation:create-compensations`

```bash
bin/magento inventory:reservation:create-compensations [-r|--raw] [--] [<compensations>...]
```

Create reservations by provided compensation arguments

### Arguments

#### `compensations`

List of compensation arguments in format ":::"

- Default: `[]`
- Array
   
### Options

For global options, see [Global options](#global-options).

#### `--raw`, `-r`

Raw output

- Default: `false`
- Does not accept a value


## `inventory:reservation:list-inconsistencies`

```bash
bin/magento inventory:reservation:list-inconsistencies [-c|--complete-orders] [-i|--incomplete-orders] [-b|--bunch-size [BUNCH-SIZE]] [-r|--raw]
```

Show all orders and products with salable quantity inconsistencies

### Options

For global options, see [Global options](#global-options).

#### `--complete-orders`, `-c`

Show only inconsistencies for complete orders

- Default: `false`
- Does not accept a value

#### `--incomplete-orders`, `-i`

Show only inconsistencies for incomplete orders

- Default: `false`
- Does not accept a value

#### `--bunch-size`, `-b`

Defines how many orders will be loaded at once

- Default: `50`
- Accepts a value

#### `--raw`, `-r`

Raw output

- Default: `false`
- Does not accept a value


## `inventory-geonames:import`

```bash
bin/magento inventory-geonames:import <countries>...
```

Download and import geo names for source selection algorithm

### Arguments

#### `countries`

List of country codes to import

- Default: `[]`
- Required

- Array
   
### Options

For global options, see [Global options](#global-options).


## `maintenance:allow-ips`

```bash
bin/magento maintenance:allow-ips [--none] [--add] [--magento-init-params MAGENTO-INIT-PARAMS] [--] [<ip>...]
```

Sets maintenance mode exempt IPs

### Arguments

#### `ip`

Allowed IP addresses

- Default: `[]`
- Array
   
### Options

For global options, see [Global options](#global-options).

#### `--none`

Clear allowed IP addresses

- Default: `false`
- Does not accept a value

#### `--add`

Add the IP address to existing list

- Default: `false`
- Does not accept a value

#### `--magento-init-params`

Add to any command to customize Magento initialization parameters For example: "MAGE_MODE=developer&MAGE_DIRS[base][path]=/var/www/example.com&MAGE_DIRS[cache][path]=/var/tmp/cache"

- Requires a value


## `maintenance:disable`

```bash
bin/magento maintenance:disable [--ip IP] [--magento-init-params MAGENTO-INIT-PARAMS]
```

Disables maintenance mode

### Options

For global options, see [Global options](#global-options).

#### `--ip`

Allowed IP addresses (use 'none' to clear allowed IP list)

- Default: `[]`
- Requires a value

#### `--magento-init-params`

Add to any command to customize Magento initialization parameters For example: "MAGE_MODE=developer&MAGE_DIRS[base][path]=/var/www/example.com&MAGE_DIRS[cache][path]=/var/tmp/cache"

- Requires a value


## `maintenance:enable`

```bash
bin/magento maintenance:enable [--ip IP] [--magento-init-params MAGENTO-INIT-PARAMS]
```

Enables maintenance mode

### Options

For global options, see [Global options](#global-options).

#### `--ip`

Allowed IP addresses (use 'none' to clear allowed IP list)

- Default: `[]`
- Requires a value

#### `--magento-init-params`

Add to any command to customize Magento initialization parameters For example: "MAGE_MODE=developer&MAGE_DIRS[base][path]=/var/www/example.com&MAGE_DIRS[cache][path]=/var/tmp/cache"

- Requires a value


## `maintenance:status`

```bash
bin/magento maintenance:status [--magento-init-params MAGENTO-INIT-PARAMS]
```

Displays maintenance mode status

### Options

For global options, see [Global options](#global-options).

#### `--magento-init-params`

Add to any command to customize Magento initialization parameters For example: "MAGE_MODE=developer&MAGE_DIRS[base][path]=/var/www/example.com&MAGE_DIRS[cache][path]=/var/tmp/cache"

- Requires a value


## `media-content:sync`

```bash
bin/magento media-content:sync
```

Synchronize content with assets

### Options

For global options, see [Global options](#global-options).


## `media-gallery:sync`

```bash
bin/magento media-gallery:sync
```

Synchronize media storage and media assets in the database

### Options

For global options, see [Global options](#global-options).


## `module:config:status`

```bash
bin/magento module:config:status
```

Checks the modules configuration in the 'app/etc/config.php' file and reports if they are up to date or not

### Options

For global options, see [Global options](#global-options).


## `module:disable`

```bash
bin/magento module:disable [-f|--force] [--all] [-c|--clear-static-content] [--magento-init-params MAGENTO-INIT-PARAMS] [--] [<module>...]
```

Disables specified modules

### Arguments

#### `module`

Name of the module

- Default: `[]`
- Array
   
### Options

For global options, see [Global options](#global-options).

#### `--force`, `-f`

Bypass dependencies check

- Default: `false`
- Does not accept a value

#### `--all`

Disable all modules

- Default: `false`
- Does not accept a value

#### `--clear-static-content`, `-c`

Clear generated static view files. Necessary, if the module(s) have static view files

- Default: `false`
- Does not accept a value

#### `--magento-init-params`

Add to any command to customize Magento initialization parameters For example: "MAGE_MODE=developer&MAGE_DIRS[base][path]=/var/www/example.com&MAGE_DIRS[cache][path]=/var/tmp/cache"

- Requires a value


## `module:enable`

```bash
bin/magento module:enable [-f|--force] [--all] [-c|--clear-static-content] [--magento-init-params MAGENTO-INIT-PARAMS] [--] [<module>...]
```

Enables specified modules

### Arguments

#### `module`

Name of the module

- Default: `[]`
- Array
   
### Options

For global options, see [Global options](#global-options).

#### `--force`, `-f`

Bypass dependencies check

- Default: `false`
- Does not accept a value

#### `--all`

Enable all modules

- Default: `false`
- Does not accept a value

#### `--clear-static-content`, `-c`

Clear generated static view files. Necessary, if the module(s) have static view files

- Default: `false`
- Does not accept a value

#### `--magento-init-params`

Add to any command to customize Magento initialization parameters For example: "MAGE_MODE=developer&MAGE_DIRS[base][path]=/var/www/example.com&MAGE_DIRS[cache][path]=/var/tmp/cache"

- Requires a value


## `module:status`

```bash
bin/magento module:status [--enabled] [--disabled] [--magento-init-params MAGENTO-INIT-PARAMS] [--] [<module-names>...]
```

Displays status of modules

### Arguments

#### `module-names`

Optional module name

- Default: `[]`
- Array
   
### Options

For global options, see [Global options](#global-options).

#### `--enabled`

Print only enabled modules

- Default: `false`
- Does not accept a value

#### `--disabled`

Print only disabled modules

- Default: `false`
- Does not accept a value

#### `--magento-init-params`

Add to any command to customize Magento initialization parameters For example: "MAGE_MODE=developer&MAGE_DIRS[base][path]=/var/www/example.com&MAGE_DIRS[cache][path]=/var/tmp/cache"

- Requires a value


## `module:uninstall`

```bash
bin/magento module:uninstall [-r|--remove-data] [--backup-code] [--backup-media] [--backup-db] [--non-composer] [-c|--clear-static-content] [--magento-init-params MAGENTO-INIT-PARAMS] [--] <module>...
```

Uninstalls modules installed by composer

### Arguments

#### `module`

Name of the module

- Default: `[]`
- Required

- Array
   
### Options

For global options, see [Global options](#global-options).

#### `--remove-data`, `-r`

Remove data installed by module(s)

- Default: `false`
- Does not accept a value

#### `--backup-code`

Take code and configuration files backup (excluding temporary files)

- Default: `false`
- Does not accept a value

#### `--backup-media`

Take media backup

- Default: `false`
- Does not accept a value

#### `--backup-db`

Take complete database backup

- Default: `false`
- Does not accept a value

#### `--non-composer`

All modules, that will be past here will be non composer based

- Default: `false`
- Does not accept a value

#### `--clear-static-content`, `-c`

Clear generated static view files. Necessary, if the module(s) have static view files

- Default: `false`
- Does not accept a value

#### `--magento-init-params`

Add to any command to customize Magento initialization parameters For example: "MAGE_MODE=developer&MAGE_DIRS[base][path]=/var/www/example.com&MAGE_DIRS[cache][path]=/var/tmp/cache"

- Requires a value


## `newrelic:create:deploy-marker`

```bash
bin/magento newrelic:create:deploy-marker <message> <change_log> [<user> [<revision>]]
```

Check the deploy queue for entries and create an appropriate deploy marker.

### Arguments

#### `message`

Deploy Message?

- Required


#### `change_log`

Change Log?

- Required


#### `user`

Deployment User


#### `revision`

Revision

### Options

For global options, see [Global options](#global-options).


## `queue:consumers:list`

```bash
bin/magento queue:consumers:list
```

List of MessageQueue consumers

```
This command shows list of MessageQueue consumers.
```

### Options

For global options, see [Global options](#global-options).


## `queue:consumers:restart`

```bash
bin/magento queue:consumers:restart
```

Restart MessageQueue consumers

```
Command put poison pill for MessageQueue consumers and force to restart them after next status check.
```

### Options

For global options, see [Global options](#global-options).


## `queue:consumers:start`

```bash
bin/magento queue:consumers:start [--max-messages MAX-MESSAGES] [--batch-size BATCH-SIZE] [--area-code AREA-CODE] [--single-thread] [--multi-process [MULTI-PROCESS]] [--pid-file-path PID-FILE-PATH] [--] <consumer>
```

Start MessageQueue consumer

```
This command starts MessageQueue consumer by its name.

To start consumer which will process all queued messages and terminate execution:

    bin/magento queue:consumers:start someConsumer

To specify the number of messages which should be processed by consumer before its termination:

    bin/magento queue:consumers:start someConsumer --max-messages=50

To specify the number of messages per batch for the batch consumer:

    bin/magento queue:consumers:start someConsumer --batch-size=500

To specify the preferred area:

    bin/magento queue:consumers:start someConsumer --area-code='adminhtml'

To do not run multiple copies of one consumer simultaneously:

    bin/magento queue:consumers:start someConsumer --single-thread

To save PID enter path (This option is deprecated, use --single-thread instead):

    bin/magento queue:consumers:start someConsumer --pid-file-path='/var/someConsumer.pid'

To define the number of processes per consumer:

    bin/magento queue:consumers:start someConsumer --multi-process=4
```

### Arguments

#### `consumer`

The name of the consumer to be started.

- Required

### Options

For global options, see [Global options](#global-options).

#### `--max-messages`

The number of messages to be processed by the consumer before process termination. If not specified - terminate after processing all queued messages.

- Requires a value

#### `--batch-size`

The number of messages per batch. Applicable for the batch consumer only.

- Requires a value

#### `--area-code`

The preferred area (global, adminhtml, etc...) default is global.

- Requires a value

#### `--single-thread`

This option prevents running multiple copies of one consumer simultaneously.

- Default: `false`
- Does not accept a value

#### `--multi-process`

The number of processes per consumer.

- Accepts a value

#### `--pid-file-path`

The file path for saving PID (This option is deprecated, use --single-thread instead)

- Requires a value


## `remote-storage:sync`

```bash
bin/magento remote-storage:sync
```

Synchronize media files with remote storage.

### Options

For global options, see [Global options](#global-options).


## `saas:resync`

```bash
bin/magento saas:resync [--feed FEED] [--no-reindex] [--cleanup-feed] [--dry-run] [--thread-count THREAD-COUNT] [--batch-size BATCH-SIZE] [--continue-resync]
```

Re-syncs feed data to SaaS service.

### Options

For global options, see [Global options](#global-options).

#### `--feed`

Feed name to fully re-sync to SaaS service. Available feeds: Payment Services Order Production, Payment Services Order Sandbox, Payment Services Order Status Production, Payment Services Order Status Sandbox, Payment Services Store Production, Payment Services Store Sandbox

- Requires a value

#### `--no-reindex`

Run re-submission of feed data to SaaS service only. Does not re-index. (This option is not applicable to the products, productoverrides, prices feeds)

- Default: `false`
- Does not accept a value

#### `--cleanup-feed`

Force to cleanup feed indexer table before sync.

- Default: `false`
- Does not accept a value

#### `--dry-run`

Dry run. Data will not be exported. To save payload to log file var/log/saas-export.log run with env variable EXPORTER_EXTENDED_LOG=1.

- Default: `false`
- Does not accept a value

#### `--thread-count`

Set synchronization thread count.

- Requires a value

#### `--batch-size`

Set synchronization batch size

- Requires a value

#### `--continue-resync`

Continue resync from the last stored position (This option is applicable to the products, productoverrides, prices feeds)

- Default: `false`
- Does not accept a value


## `sampledata:deploy`

```bash
bin/magento sampledata:deploy [--no-update]
```

Deploy sample data modules for composer-based Magento installations

### Options

For global options, see [Global options](#global-options).

#### `--no-update`

Update composer.json without executing composer update

- Default: `false`
- Does not accept a value


## `sampledata:remove`

```bash
bin/magento sampledata:remove [--no-update]
```

Remove all sample data packages from composer.json

### Options

For global options, see [Global options](#global-options).

#### `--no-update`

Update composer.json without executing composer update

- Default: `false`
- Does not accept a value


## `sampledata:reset`

```bash
bin/magento sampledata:reset
```

Reset all sample data modules for re-installation

### Options

For global options, see [Global options](#global-options).


## `security:recaptcha:disable-for-user-forgot-password`

```bash
bin/magento security:recaptcha:disable-for-user-forgot-password
```

Disable reCAPTCHA for admin user forgot password form

### Options

For global options, see [Global options](#global-options).


## `security:recaptcha:disable-for-user-login`

```bash
bin/magento security:recaptcha:disable-for-user-login
```

Disable reCAPTCHA for admin user login form

### Options

For global options, see [Global options](#global-options).


## `security:tfa:google:set-secret`

```bash
bin/magento security:tfa:google:set-secret <user> <secret>
```

Set the secret used for Google OTP generation.

### Arguments

#### `user`

Username

- Required


#### `secret`

Secret

- Required

### Options

For global options, see [Global options](#global-options).


## `security:tfa:providers`

```bash
bin/magento security:tfa:providers
```

List all available providers

### Options

For global options, see [Global options](#global-options).


## `security:tfa:reset`

```bash
bin/magento security:tfa:reset <user> <provider>
```

Reset configuration for one user

### Arguments

#### `user`

Username

- Required


#### `provider`

Provider code

- Required

### Options

For global options, see [Global options](#global-options).


## `server:run`

```bash
bin/magento server:run [-p|--port [PORT]] [-b|--background [BACKGROUND]] [-wn|--workerNum [WORKERNUM]] [-dm|--dispatchMode [DISPATCHMODE]] [-mr|--maxRequests [MAXREQUESTS]] [-a|--area [AREA]] [-mip|--magento-init-params [MAGENTO-INIT-PARAMS]] [-mwt|--maxWaitTime [MAXWAITTIME]] [--state-monitor]
```

Run application server

### Options

For global options, see [Global options](#global-options).

#### `--port`, `-p`

port to serv on

- Default: `9501`
- Accepts a value

#### `--background`, `-b`

background mode flag

- Default: `0`
- Accepts a value

#### `--workerNum`, `-wn`

number of worker processes to start

- Default: `4`
- Accepts a value

#### `--dispatchMode`, `-dm`

mode of dispatching connections to the worker processes

- Default: `3`
- Accepts a value

#### `--maxRequests`, `-mr`

max requests before worker process would be restarted

- Default: `10000`
- Accepts a value

#### `--area`, `-a`

application server area

- Default: `graphql`
- Accepts a value

#### `--magento-init-params`, `-mip`

magento bootstrap init params

- Default: ``
- Accepts a value

#### `--maxWaitTime`, `-mwt`

how long to wait for workers after reload (eg. config change) before killing them

- Default: `3600`
- Accepts a value

#### `--state-monitor`

Enable state monitoring. Use this only for debugging state issues!

- Default: `false`
- Does not accept a value


## `server:state-monitor:aggregate-output`

```bash
bin/magento server:state-monitor:aggregate-output
```

Aggregate output from state monitor of ApplicationServer

### Options

For global options, see [Global options](#global-options).


## `setup:backup`

```bash
bin/magento setup:backup [--code] [--media] [--db] [--magento-init-params MAGENTO-INIT-PARAMS]
```

Takes backup of Magento Application code base, media and database

### Options

For global options, see [Global options](#global-options).

#### `--code`

Take code and configuration files backup (excluding temporary files)

- Default: `false`
- Does not accept a value

#### `--media`

Take media backup

- Default: `false`
- Does not accept a value

#### `--db`

Take complete database backup

- Default: `false`
- Does not accept a value

#### `--magento-init-params`

Add to any command to customize Magento initialization parameters For example: "MAGE_MODE=developer&MAGE_DIRS[base][path]=/var/www/example.com&MAGE_DIRS[cache][path]=/var/tmp/cache"

- Requires a value


## `setup:config:set`

```bash
bin/magento setup:config:set [--enable-debug-logging ENABLE-DEBUG-LOGGING] [--enable-syslog-logging ENABLE-SYSLOG-LOGGING] [--backend-frontname BACKEND-FRONTNAME] [--remote-storage-driver REMOTE-STORAGE-DRIVER] [--remote-storage-prefix REMOTE-STORAGE-PREFIX] [--remote-storage-endpoint REMOTE-STORAGE-ENDPOINT] [--remote-storage-bucket REMOTE-STORAGE-BUCKET] [--remote-storage-region REMOTE-STORAGE-REGION] [--remote-storage-key REMOTE-STORAGE-KEY] [--remote-storage-secret REMOTE-STORAGE-SECRET] [--remote-storage-path-style REMOTE-STORAGE-PATH-STYLE] [--id_salt ID_SALT] [--config-async CONFIG-ASYNC] [--checkout-async CHECKOUT-ASYNC] [--amqp-host AMQP-HOST] [--amqp-port AMQP-PORT] [--amqp-user AMQP-USER] [--amqp-password AMQP-PASSWORD] [--amqp-virtualhost AMQP-VIRTUALHOST] [--amqp-ssl AMQP-SSL] [--amqp-ssl-options AMQP-SSL-OPTIONS] [--consumers-wait-for-messages CONSUMERS-WAIT-FOR-MESSAGES] [--queue-default-connection QUEUE-DEFAULT-CONNECTION] [--deferred-total-calculating DEFERRED-TOTAL-CALCULATING] [--key KEY] [--db-host DB-HOST] [--db-name DB-NAME] [--db-user DB-USER] [--db-engine DB-ENGINE] [--db-password DB-PASSWORD] [--db-prefix DB-PREFIX] [--db-model DB-MODEL] [--db-init-statements DB-INIT-STATEMENTS] [-s|--skip-db-validation] [--http-cache-hosts HTTP-CACHE-HOSTS] [--db-ssl-key DB-SSL-KEY] [--db-ssl-cert DB-SSL-CERT] [--db-ssl-ca DB-SSL-CA] [--db-ssl-verify] [--session-save SESSION-SAVE] [--session-save-redis-host SESSION-SAVE-REDIS-HOST] [--session-save-redis-port SESSION-SAVE-REDIS-PORT] [--session-save-redis-password SESSION-SAVE-REDIS-PASSWORD] [--session-save-redis-timeout SESSION-SAVE-REDIS-TIMEOUT] [--session-save-redis-persistent-id SESSION-SAVE-REDIS-PERSISTENT-ID] [--session-save-redis-db SESSION-SAVE-REDIS-DB] [--session-save-redis-compression-threshold SESSION-SAVE-REDIS-COMPRESSION-THRESHOLD] [--session-save-redis-compression-lib SESSION-SAVE-REDIS-COMPRESSION-LIB] [--session-save-redis-log-level SESSION-SAVE-REDIS-LOG-LEVEL] [--session-save-redis-max-concurrency SESSION-SAVE-REDIS-MAX-CONCURRENCY] [--session-save-redis-break-after-frontend SESSION-SAVE-REDIS-BREAK-AFTER-FRONTEND] [--session-save-redis-break-after-adminhtml SESSION-SAVE-REDIS-BREAK-AFTER-ADMINHTML] [--session-save-redis-first-lifetime SESSION-SAVE-REDIS-FIRST-LIFETIME] [--session-save-redis-bot-first-lifetime SESSION-SAVE-REDIS-BOT-FIRST-LIFETIME] [--session-save-redis-bot-lifetime SESSION-SAVE-REDIS-BOT-LIFETIME] [--session-save-redis-disable-locking SESSION-SAVE-REDIS-DISABLE-LOCKING] [--session-save-redis-min-lifetime SESSION-SAVE-REDIS-MIN-LIFETIME] [--session-save-redis-max-lifetime SESSION-SAVE-REDIS-MAX-LIFETIME] [--session-save-redis-sentinel-master SESSION-SAVE-REDIS-SENTINEL-MASTER] [--session-save-redis-sentinel-servers SESSION-SAVE-REDIS-SENTINEL-SERVERS] [--session-save-redis-sentinel-verify-master SESSION-SAVE-REDIS-SENTINEL-VERIFY-MASTER] [--session-save-redis-sentinel-connect-retries SESSION-SAVE-REDIS-SENTINEL-CONNECT-RETRIES] [--cache-backend CACHE-BACKEND] [--cache-backend-redis-server CACHE-BACKEND-REDIS-SERVER] [--cache-backend-redis-db CACHE-BACKEND-REDIS-DB] [--cache-backend-redis-port CACHE-BACKEND-REDIS-PORT] [--cache-backend-redis-password CACHE-BACKEND-REDIS-PASSWORD] [--cache-backend-redis-compress-data CACHE-BACKEND-REDIS-COMPRESS-DATA] [--cache-backend-redis-compression-lib CACHE-BACKEND-REDIS-COMPRESSION-LIB] [--cache-backend-redis-use-lua CACHE-BACKEND-REDIS-USE-LUA] [--cache-id-prefix CACHE-ID-PREFIX] [--allow-parallel-generation] [--page-cache PAGE-CACHE] [--page-cache-redis-server PAGE-CACHE-REDIS-SERVER] [--page-cache-redis-db PAGE-CACHE-REDIS-DB] [--page-cache-redis-port PAGE-CACHE-REDIS-PORT] [--page-cache-redis-password PAGE-CACHE-REDIS-PASSWORD] [--page-cache-redis-compress-data PAGE-CACHE-REDIS-COMPRESS-DATA] [--page-cache-redis-compression-lib PAGE-CACHE-REDIS-COMPRESSION-LIB] [--page-cache-id-prefix PAGE-CACHE-ID-PREFIX] [--lock-provider LOCK-PROVIDER] [--lock-db-prefix LOCK-DB-PREFIX] [--lock-zookeeper-host LOCK-ZOOKEEPER-HOST] [--lock-zookeeper-path LOCK-ZOOKEEPER-PATH] [--lock-file-path LOCK-FILE-PATH] [--document-root-is-pub DOCUMENT-ROOT-IS-PUB] [--backpressure-logger BACKPRESSURE-LOGGER] [--backpressure-logger-redis-server BACKPRESSURE-LOGGER-REDIS-SERVER] [--backpressure-logger-redis-port BACKPRESSURE-LOGGER-REDIS-PORT] [--backpressure-logger-redis-timeout BACKPRESSURE-LOGGER-REDIS-TIMEOUT] [--backpressure-logger-redis-persistent BACKPRESSURE-LOGGER-REDIS-PERSISTENT] [--backpressure-logger-redis-db BACKPRESSURE-LOGGER-REDIS-DB] [--backpressure-logger-redis-password BACKPRESSURE-LOGGER-REDIS-PASSWORD] [--backpressure-logger-redis-user BACKPRESSURE-LOGGER-REDIS-USER] [--backpressure-logger-id-prefix BACKPRESSURE-LOGGER-ID-PREFIX] [--magento-init-params MAGENTO-INIT-PARAMS]
```

Creates or modifies the deployment configuration

### Options

For global options, see [Global options](#global-options).

#### `--enable-debug-logging`

Enable debug logging

- Requires a value

#### `--enable-syslog-logging`

Enable syslog logging

- Requires a value

#### `--backend-frontname`

Backend frontname (will be autogenerated if missing)

- Requires a value

#### `--remote-storage-driver`

Remote storage driver

- Requires a value

#### `--remote-storage-prefix`

Remote storage prefix

- Default: ``
- Requires a value

#### `--remote-storage-endpoint`

Remote storage endpoint

- Requires a value

#### `--remote-storage-bucket`

Remote storage bucket

- Requires a value

#### `--remote-storage-region`

Remote storage region

- Requires a value

#### `--remote-storage-key`

Remote storage access key

- Default: ``
- Requires a value

#### `--remote-storage-secret`

Remote storage secret key

- Default: ``
- Requires a value

#### `--remote-storage-path-style`

Remote storage path style

- Default: `0`
- Requires a value

#### `--id_salt`

GraphQl Salt

- Requires a value

#### `--config-async`

Enable async Admin Config Save? 1 - Yes, 0 - No

- Requires a value

#### `--checkout-async`

Enable async order processing? 1 - Yes, 0 - No

- Requires a value

#### `--amqp-host`

Amqp server host

- Default: ``
- Requires a value

#### `--amqp-port`

Amqp server port

- Default: `5672`
- Requires a value

#### `--amqp-user`

Amqp server username

- Default: ``
- Requires a value

#### `--amqp-password`

Amqp server password

- Default: ``
- Requires a value

#### `--amqp-virtualhost`

Amqp virtualhost

- Default: `/`
- Requires a value

#### `--amqp-ssl`

Amqp SSL

- Default: ``
- Requires a value

#### `--amqp-ssl-options`

Amqp SSL Options (JSON)

- Default: ``
- Requires a value

#### `--consumers-wait-for-messages`

Should consumers wait for a message from the queue? 1 - Yes, 0 - No

- Requires a value

#### `--queue-default-connection`

Message queues default connection. Can be 'db', 'amqp' or a custom queue system.The queue system must be installed and configured, otherwise messages won't be processed correctly.

- Requires a value

#### `--deferred-total-calculating`

Enable deferred total calculating? 1 - Yes, 0 - No

- Requires a value

#### `--key`

Encryption key

- Requires a value

#### `--db-host`

Database server host

- Requires a value

#### `--db-name`

Database name

- Requires a value

#### `--db-user`

Database server username

- Requires a value

#### `--db-engine`

Database server engine

- Requires a value

#### `--db-password`

Database server password

- Requires a value

#### `--db-prefix`

Database table prefix

- Requires a value

#### `--db-model`

Database type

- Requires a value

#### `--db-init-statements`

Database  initial set of commands

- Requires a value

#### `--skip-db-validation`, `-s`

If specified, then db connection validation will be skipped

- Default: `false`
- Does not accept a value

#### `--http-cache-hosts`

http Cache hosts

- Requires a value

#### `--db-ssl-key`

Full path of client key file in order to establish db connection through SSL

- Default: ``
- Requires a value

#### `--db-ssl-cert`

Full path of client certificate file in order to establish db connection through SSL

- Default: ``
- Requires a value

#### `--db-ssl-ca`

Full path of server certificate file in order to establish db connection through SSL

- Default: ``
- Requires a value

#### `--db-ssl-verify`

Verify server certification

- Default: `false`
- Does not accept a value

#### `--session-save`

Session save handler

- Requires a value

#### `--session-save-redis-host`

Fully qualified host name, IP address, or absolute path if using UNIX sockets

- Requires a value

#### `--session-save-redis-port`

Redis server listen port

- Requires a value

#### `--session-save-redis-password`

Redis server password

- Requires a value

#### `--session-save-redis-timeout`

Connection timeout, in seconds

- Requires a value

#### `--session-save-redis-persistent-id`

Unique string to enable persistent connections

- Requires a value

#### `--session-save-redis-db`

Redis database number

- Requires a value

#### `--session-save-redis-compression-threshold`

Redis compression threshold

- Requires a value

#### `--session-save-redis-compression-lib`

Redis compression library. Values: gzip (default), lzf, lz4, snappy

- Requires a value

#### `--session-save-redis-log-level`

Redis log level. Values: 0 (least verbose) to 7 (most verbose)

- Requires a value

#### `--session-save-redis-max-concurrency`

Maximum number of processes that can wait for a lock on one session

- Requires a value

#### `--session-save-redis-break-after-frontend`

Number of seconds to wait before trying to break a lock for frontend session

- Requires a value

#### `--session-save-redis-break-after-adminhtml`

Number of seconds to wait before trying to break a lock for Admin session

- Requires a value

#### `--session-save-redis-first-lifetime`

Lifetime, in seconds, of session for non-bots on the first write (use 0 to disable)

- Requires a value

#### `--session-save-redis-bot-first-lifetime`

Lifetime, in seconds, of session for bots on the first write (use 0 to disable)

- Requires a value

#### `--session-save-redis-bot-lifetime`

Lifetime of session for bots on subsequent writes (use 0 to disable)

- Requires a value

#### `--session-save-redis-disable-locking`

Redis disable locking. Values: false (default), true

- Requires a value

#### `--session-save-redis-min-lifetime`

Redis min session lifetime, in seconds

- Requires a value

#### `--session-save-redis-max-lifetime`

Redis max session lifetime, in seconds

- Requires a value

#### `--session-save-redis-sentinel-master`

Redis Sentinel master

- Requires a value

#### `--session-save-redis-sentinel-servers`

Redis Sentinel servers, comma separated

- Requires a value

#### `--session-save-redis-sentinel-verify-master`

Redis Sentinel verify master. Values: false (default), true

- Requires a value

#### `--session-save-redis-sentinel-connect-retries`

Redis Sentinel connect retries.

- Requires a value

#### `--cache-backend`

Default cache handler

- Requires a value

#### `--cache-backend-redis-server`

Redis server

- Requires a value

#### `--cache-backend-redis-db`

Database number for the cache

- Requires a value

#### `--cache-backend-redis-port`

Redis server listen port

- Requires a value

#### `--cache-backend-redis-password`

Redis server password

- Requires a value

#### `--cache-backend-redis-compress-data`

Set to 0 to disable compression (default is 1, enabled)

- Requires a value

#### `--cache-backend-redis-compression-lib`

Compression lib to use [snappy,lzf,l4z,zstd,gzip] (leave blank to determine automatically)

- Requires a value

#### `--cache-backend-redis-use-lua`

Set to 1 to enable lua (default is 0, disabled)

- Requires a value

#### `--cache-id-prefix`

ID prefix for cache keys

- Requires a value

#### `--allow-parallel-generation`

Allow generate cache in non-blocking way

- Default: `false`
- Does not accept a value

#### `--page-cache`

Default cache handler

- Requires a value

#### `--page-cache-redis-server`

Redis server

- Requires a value

#### `--page-cache-redis-db`

Database number for the cache

- Requires a value

#### `--page-cache-redis-port`

Redis server listen port

- Requires a value

#### `--page-cache-redis-password`

Redis server password

- Requires a value

#### `--page-cache-redis-compress-data`

Set to 1 to compress the full page cache (use 0 to disable)

- Requires a value

#### `--page-cache-redis-compression-lib`

Compression library to use [snappy,lzf,l4z,zstd,gzip] (leave blank to determine automatically)

- Requires a value

#### `--page-cache-id-prefix`

ID prefix for cache keys

- Requires a value

#### `--lock-provider`

Lock provider name

- Requires a value

#### `--lock-db-prefix`

Installation specific lock prefix to avoid lock conflicts

- Requires a value

#### `--lock-zookeeper-host`

Host and port to connect to Zookeeper cluster. For example: 127.0.0.1:2181

- Requires a value

#### `--lock-zookeeper-path`

The path where Zookeeper will save locks. The default path is: /magento/locks

- Requires a value

#### `--lock-file-path`

The path where file locks will be saved.

- Requires a value

#### `--document-root-is-pub`

Flag to show is Pub is on root, can be true or false only

- Requires a value

#### `--backpressure-logger`

Backpressure logger handler

- Requires a value

#### `--backpressure-logger-redis-server`

Redis server

- Requires a value

#### `--backpressure-logger-redis-port`

Redis server listen port

- Requires a value

#### `--backpressure-logger-redis-timeout`

Redis server timeout

- Requires a value

#### `--backpressure-logger-redis-persistent`

Redis persistent

- Requires a value

#### `--backpressure-logger-redis-db`

Redis db number

- Requires a value

#### `--backpressure-logger-redis-password`

Redis server password

- Requires a value

#### `--backpressure-logger-redis-user`

Redis server user

- Requires a value

#### `--backpressure-logger-id-prefix`

ID prefix for keys

- Requires a value

#### `--magento-init-params`

Add to any command to customize Magento initialization parameters For example: "MAGE_MODE=developer&MAGE_DIRS[base][path]=/var/www/example.com&MAGE_DIRS[cache][path]=/var/tmp/cache"

- Requires a value


## `setup:db-data:upgrade`

```bash
bin/magento setup:db-data:upgrade [--magento-init-params MAGENTO-INIT-PARAMS]
```

Installs and upgrades data in the DB

### Options

For global options, see [Global options](#global-options).

#### `--magento-init-params`

Add to any command to customize Magento initialization parameters For example: "MAGE_MODE=developer&MAGE_DIRS[base][path]=/var/www/example.com&MAGE_DIRS[cache][path]=/var/tmp/cache"

- Requires a value


## `setup:db-declaration:generate-patch`

```bash
bin/magento setup:db-declaration:generate-patch [--revertable [REVERTABLE]] [--type [TYPE]] [--] <module> <patch>
```

Generate patch and put it in specific folder.

### Arguments

#### `module`

Module name

- Required


#### `patch`

Patch name

- Required

### Options

For global options, see [Global options](#global-options).

#### `--revertable`

Check whether patch is revertable or not.

- Default: `false`
- Accepts a value

#### `--type`

Find out what type of patch should be generated. Available values: `data`, `schema`.

- Default: `data`
- Accepts a value


## `setup:db-declaration:generate-whitelist`

```bash
bin/magento setup:db-declaration:generate-whitelist [--module-name [MODULE-NAME]]
```

Generate whitelist of tables and columns that are allowed to be edited by declaration installer

### Options

For global options, see [Global options](#global-options).

#### `--module-name`

Name of the module where whitelist will be generated

- Default: `all`
- Accepts a value


## `setup:db-schema:add-slave`

```bash
bin/magento setup:db-schema:add-slave [--host HOST] [--dbname DBNAME] [--username USERNAME] [--password [PASSWORD]] [--connection [CONNECTION]] [--resource [RESOURCE]] [--maxAllowedLag [MAXALLOWEDLAG]] [--magento-init-params MAGENTO-INIT-PARAMS]
```

Move checkout quote related tables to a separate DB server

### Options

For global options, see [Global options](#global-options).

#### `--host`

Slave DB Server host

- Default: `localhost`
- Requires a value

#### `--dbname`

Slave Database Name

- Requires a value

#### `--username`

Slave DB user name

- Default: `root`
- Requires a value

#### `--password`

Slave DB user password

- Accepts a value

#### `--connection`

Slave connection name

- Default: `default`
- Accepts a value

#### `--resource`

Slave Resource name

- Default: `default`
- Accepts a value

#### `--maxAllowedLag`

Max Allowed Lag Slave Connection (in seconds)

- Default: ``
- Accepts a value

#### `--magento-init-params`

Add to any command to customize Magento initialization parameters For example: "MAGE_MODE=developer&MAGE_DIRS[base][path]=/var/www/example.com&MAGE_DIRS[cache][path]=/var/tmp/cache"

- Requires a value


## `setup:db-schema:split-quote`

```bash
bin/magento setup:db-schema:split-quote [--host HOST] [--dbname DBNAME] [--username USERNAME] [--password [PASSWORD]] [--connection [CONNECTION]] [--resource [RESOURCE]] [--magento-init-params MAGENTO-INIT-PARAMS]
```

Move checkout quote related tables to a separate DB server. Deprecated since 2.4.2 and will be removed

### Options

For global options, see [Global options](#global-options).

#### `--host`

Checkout DB Server host

- Requires a value

#### `--dbname`

Checkout Database Name

- Requires a value

#### `--username`

Checkout DB user name

- Requires a value

#### `--password`

Checkout DB user password

- Accepts a value

#### `--connection`

Checkout connection name

- Default: `checkout`
- Accepts a value

#### `--resource`

Checkout resource name

- Default: `checkout`
- Accepts a value

#### `--magento-init-params`

Add to any command to customize Magento initialization parameters For example: "MAGE_MODE=developer&MAGE_DIRS[base][path]=/var/www/example.com&MAGE_DIRS[cache][path]=/var/tmp/cache"

- Requires a value


## `setup:db-schema:split-sales`

```bash
bin/magento setup:db-schema:split-sales [--host HOST] [--dbname DBNAME] [--username USERNAME] [--password [PASSWORD]] [--connection [CONNECTION]] [--resource [RESOURCE]] [--magento-init-params MAGENTO-INIT-PARAMS]
```

Move sales related tables to a separate DB server. Deprecated since 2.4.2 and will be removed

### Options

For global options, see [Global options](#global-options).

#### `--host`

Sales DB Server host

- Requires a value

#### `--dbname`

Sales Database Name

- Requires a value

#### `--username`

Sales DB user name

- Requires a value

#### `--password`

Sales DB user passowrd

- Accepts a value

#### `--connection`

Sales connection name

- Default: `sales`
- Accepts a value

#### `--resource`

Sales resource name

- Default: `sales`
- Accepts a value

#### `--magento-init-params`

Add to any command to customize Magento initialization parameters For example: "MAGE_MODE=developer&MAGE_DIRS[base][path]=/var/www/example.com&MAGE_DIRS[cache][path]=/var/tmp/cache"

- Requires a value


## `setup:db-schema:upgrade`

```bash
bin/magento setup:db-schema:upgrade [--convert-old-scripts [CONVERT-OLD-SCRIPTS]] [--magento-init-params MAGENTO-INIT-PARAMS]
```

Installs and upgrades the DB schema

### Options

For global options, see [Global options](#global-options).

#### `--convert-old-scripts`

Allows to convert old scripts (InstallSchema, UpgradeSchema) to db_schema.xml format

- Default: `false`
- Accepts a value

#### `--magento-init-params`

Add to any command to customize Magento initialization parameters For example: "MAGE_MODE=developer&MAGE_DIRS[base][path]=/var/www/example.com&MAGE_DIRS[cache][path]=/var/tmp/cache"

- Requires a value


## `setup:db:status`

```bash
bin/magento setup:db:status [--magento-init-params MAGENTO-INIT-PARAMS]
```

Checks if DB schema or data requires upgrade

### Options

For global options, see [Global options](#global-options).

#### `--magento-init-params`

Add to any command to customize Magento initialization parameters For example: "MAGE_MODE=developer&MAGE_DIRS[base][path]=/var/www/example.com&MAGE_DIRS[cache][path]=/var/tmp/cache"

- Requires a value


## `setup:di:compile`

```bash
bin/magento setup:di:compile
```

Generates DI configuration and all missing classes that can be auto-generated

### Options

For global options, see [Global options](#global-options).


## `setup:install`

```bash
bin/magento setup:install [--enable-debug-logging ENABLE-DEBUG-LOGGING] [--enable-syslog-logging ENABLE-SYSLOG-LOGGING] [--backend-frontname BACKEND-FRONTNAME] [--remote-storage-driver REMOTE-STORAGE-DRIVER] [--remote-storage-prefix REMOTE-STORAGE-PREFIX] [--remote-storage-endpoint REMOTE-STORAGE-ENDPOINT] [--remote-storage-bucket REMOTE-STORAGE-BUCKET] [--remote-storage-region REMOTE-STORAGE-REGION] [--remote-storage-key REMOTE-STORAGE-KEY] [--remote-storage-secret REMOTE-STORAGE-SECRET] [--remote-storage-path-style REMOTE-STORAGE-PATH-STYLE] [--id_salt ID_SALT] [--config-async CONFIG-ASYNC] [--checkout-async CHECKOUT-ASYNC] [--amqp-host AMQP-HOST] [--amqp-port AMQP-PORT] [--amqp-user AMQP-USER] [--amqp-password AMQP-PASSWORD] [--amqp-virtualhost AMQP-VIRTUALHOST] [--amqp-ssl AMQP-SSL] [--amqp-ssl-options AMQP-SSL-OPTIONS] [--consumers-wait-for-messages CONSUMERS-WAIT-FOR-MESSAGES] [--queue-default-connection QUEUE-DEFAULT-CONNECTION] [--deferred-total-calculating DEFERRED-TOTAL-CALCULATING] [--key KEY] [--db-host DB-HOST] [--db-name DB-NAME] [--db-user DB-USER] [--db-engine DB-ENGINE] [--db-password DB-PASSWORD] [--db-prefix DB-PREFIX] [--db-model DB-MODEL] [--db-init-statements DB-INIT-STATEMENTS] [-s|--skip-db-validation] [--http-cache-hosts HTTP-CACHE-HOSTS] [--db-ssl-key DB-SSL-KEY] [--db-ssl-cert DB-SSL-CERT] [--db-ssl-ca DB-SSL-CA] [--db-ssl-verify] [--session-save SESSION-SAVE] [--session-save-redis-host SESSION-SAVE-REDIS-HOST] [--session-save-redis-port SESSION-SAVE-REDIS-PORT] [--session-save-redis-password SESSION-SAVE-REDIS-PASSWORD] [--session-save-redis-timeout SESSION-SAVE-REDIS-TIMEOUT] [--session-save-redis-persistent-id SESSION-SAVE-REDIS-PERSISTENT-ID] [--session-save-redis-db SESSION-SAVE-REDIS-DB] [--session-save-redis-compression-threshold SESSION-SAVE-REDIS-COMPRESSION-THRESHOLD] [--session-save-redis-compression-lib SESSION-SAVE-REDIS-COMPRESSION-LIB] [--session-save-redis-log-level SESSION-SAVE-REDIS-LOG-LEVEL] [--session-save-redis-max-concurrency SESSION-SAVE-REDIS-MAX-CONCURRENCY] [--session-save-redis-break-after-frontend SESSION-SAVE-REDIS-BREAK-AFTER-FRONTEND] [--session-save-redis-break-after-adminhtml SESSION-SAVE-REDIS-BREAK-AFTER-ADMINHTML] [--session-save-redis-first-lifetime SESSION-SAVE-REDIS-FIRST-LIFETIME] [--session-save-redis-bot-first-lifetime SESSION-SAVE-REDIS-BOT-FIRST-LIFETIME] [--session-save-redis-bot-lifetime SESSION-SAVE-REDIS-BOT-LIFETIME] [--session-save-redis-disable-locking SESSION-SAVE-REDIS-DISABLE-LOCKING] [--session-save-redis-min-lifetime SESSION-SAVE-REDIS-MIN-LIFETIME] [--session-save-redis-max-lifetime SESSION-SAVE-REDIS-MAX-LIFETIME] [--session-save-redis-sentinel-master SESSION-SAVE-REDIS-SENTINEL-MASTER] [--session-save-redis-sentinel-servers SESSION-SAVE-REDIS-SENTINEL-SERVERS] [--session-save-redis-sentinel-verify-master SESSION-SAVE-REDIS-SENTINEL-VERIFY-MASTER] [--session-save-redis-sentinel-connect-retries SESSION-SAVE-REDIS-SENTINEL-CONNECT-RETRIES] [--cache-backend CACHE-BACKEND] [--cache-backend-redis-server CACHE-BACKEND-REDIS-SERVER] [--cache-backend-redis-db CACHE-BACKEND-REDIS-DB] [--cache-backend-redis-port CACHE-BACKEND-REDIS-PORT] [--cache-backend-redis-password CACHE-BACKEND-REDIS-PASSWORD] [--cache-backend-redis-compress-data CACHE-BACKEND-REDIS-COMPRESS-DATA] [--cache-backend-redis-compression-lib CACHE-BACKEND-REDIS-COMPRESSION-LIB] [--cache-backend-redis-use-lua CACHE-BACKEND-REDIS-USE-LUA] [--cache-id-prefix CACHE-ID-PREFIX] [--allow-parallel-generation] [--page-cache PAGE-CACHE] [--page-cache-redis-server PAGE-CACHE-REDIS-SERVER] [--page-cache-redis-db PAGE-CACHE-REDIS-DB] [--page-cache-redis-port PAGE-CACHE-REDIS-PORT] [--page-cache-redis-password PAGE-CACHE-REDIS-PASSWORD] [--page-cache-redis-compress-data PAGE-CACHE-REDIS-COMPRESS-DATA] [--page-cache-redis-compression-lib PAGE-CACHE-REDIS-COMPRESSION-LIB] [--page-cache-id-prefix PAGE-CACHE-ID-PREFIX] [--lock-provider LOCK-PROVIDER] [--lock-db-prefix LOCK-DB-PREFIX] [--lock-zookeeper-host LOCK-ZOOKEEPER-HOST] [--lock-zookeeper-path LOCK-ZOOKEEPER-PATH] [--lock-file-path LOCK-FILE-PATH] [--document-root-is-pub DOCUMENT-ROOT-IS-PUB] [--backpressure-logger BACKPRESSURE-LOGGER] [--backpressure-logger-redis-server BACKPRESSURE-LOGGER-REDIS-SERVER] [--backpressure-logger-redis-port BACKPRESSURE-LOGGER-REDIS-PORT] [--backpressure-logger-redis-timeout BACKPRESSURE-LOGGER-REDIS-TIMEOUT] [--backpressure-logger-redis-persistent BACKPRESSURE-LOGGER-REDIS-PERSISTENT] [--backpressure-logger-redis-db BACKPRESSURE-LOGGER-REDIS-DB] [--backpressure-logger-redis-password BACKPRESSURE-LOGGER-REDIS-PASSWORD] [--backpressure-logger-redis-user BACKPRESSURE-LOGGER-REDIS-USER] [--backpressure-logger-id-prefix BACKPRESSURE-LOGGER-ID-PREFIX] [--base-url BASE-URL] [--language LANGUAGE] [--timezone TIMEZONE] [--currency CURRENCY] [--use-rewrites USE-REWRITES] [--use-secure USE-SECURE] [--base-url-secure BASE-URL-SECURE] [--use-secure-admin USE-SECURE-ADMIN] [--admin-use-security-key ADMIN-USE-SECURITY-KEY] [--admin-user [ADMIN-USER]] [--admin-password [ADMIN-PASSWORD]] [--admin-email [ADMIN-EMAIL]] [--admin-firstname [ADMIN-FIRSTNAME]] [--admin-lastname [ADMIN-LASTNAME]] [--search-engine SEARCH-ENGINE] [--elasticsearch-host ELASTICSEARCH-HOST] [--elasticsearch-port ELASTICSEARCH-PORT] [--elasticsearch-enable-auth ELASTICSEARCH-ENABLE-AUTH] [--elasticsearch-username ELASTICSEARCH-USERNAME] [--elasticsearch-password ELASTICSEARCH-PASSWORD] [--elasticsearch-index-prefix ELASTICSEARCH-INDEX-PREFIX] [--elasticsearch-timeout ELASTICSEARCH-TIMEOUT] [--opensearch-host OPENSEARCH-HOST] [--opensearch-port OPENSEARCH-PORT] [--opensearch-enable-auth OPENSEARCH-ENABLE-AUTH] [--opensearch-username OPENSEARCH-USERNAME] [--opensearch-password OPENSEARCH-PASSWORD] [--opensearch-index-prefix OPENSEARCH-INDEX-PREFIX] [--opensearch-timeout OPENSEARCH-TIMEOUT] [--cleanup-database] [--sales-order-increment-prefix SALES-ORDER-INCREMENT-PREFIX] [--use-sample-data] [--enable-modules [ENABLE-MODULES]] [--disable-modules [DISABLE-MODULES]] [--convert-old-scripts [CONVERT-OLD-SCRIPTS]] [-i|--interactive] [--safe-mode [SAFE-MODE]] [--data-restore [DATA-RESTORE]] [--dry-run [DRY-RUN]] [--magento-init-params MAGENTO-INIT-PARAMS]
```

Installs the Magento application

### Options

For global options, see [Global options](#global-options).

#### `--enable-debug-logging`

Enable debug logging

- Requires a value

#### `--enable-syslog-logging`

Enable syslog logging

- Requires a value

#### `--backend-frontname`

Backend frontname (will be autogenerated if missing)

- Requires a value

#### `--remote-storage-driver`

Remote storage driver

- Requires a value

#### `--remote-storage-prefix`

Remote storage prefix

- Default: ``
- Requires a value

#### `--remote-storage-endpoint`

Remote storage endpoint

- Requires a value

#### `--remote-storage-bucket`

Remote storage bucket

- Requires a value

#### `--remote-storage-region`

Remote storage region

- Requires a value

#### `--remote-storage-key`

Remote storage access key

- Default: ``
- Requires a value

#### `--remote-storage-secret`

Remote storage secret key

- Default: ``
- Requires a value

#### `--remote-storage-path-style`

Remote storage path style

- Default: `0`
- Requires a value

#### `--id_salt`

GraphQl Salt

- Requires a value

#### `--config-async`

Enable async Admin Config Save? 1 - Yes, 0 - No

- Requires a value

#### `--checkout-async`

Enable async order processing? 1 - Yes, 0 - No

- Requires a value

#### `--amqp-host`

Amqp server host

- Default: ``
- Requires a value

#### `--amqp-port`

Amqp server port

- Default: `5672`
- Requires a value

#### `--amqp-user`

Amqp server username

- Default: ``
- Requires a value

#### `--amqp-password`

Amqp server password

- Default: ``
- Requires a value

#### `--amqp-virtualhost`

Amqp virtualhost

- Default: `/`
- Requires a value

#### `--amqp-ssl`

Amqp SSL

- Default: ``
- Requires a value

#### `--amqp-ssl-options`

Amqp SSL Options (JSON)

- Default: ``
- Requires a value

#### `--consumers-wait-for-messages`

Should consumers wait for a message from the queue? 1 - Yes, 0 - No

- Requires a value

#### `--queue-default-connection`

Message queues default connection. Can be 'db', 'amqp' or a custom queue system.The queue system must be installed and configured, otherwise messages won't be processed correctly.

- Requires a value

#### `--deferred-total-calculating`

Enable deferred total calculating? 1 - Yes, 0 - No

- Requires a value

#### `--key`

Encryption key

- Requires a value

#### `--db-host`

Database server host

- Requires a value

#### `--db-name`

Database name

- Requires a value

#### `--db-user`

Database server username

- Requires a value

#### `--db-engine`

Database server engine

- Requires a value

#### `--db-password`

Database server password

- Requires a value

#### `--db-prefix`

Database table prefix

- Requires a value

#### `--db-model`

Database type

- Requires a value

#### `--db-init-statements`

Database  initial set of commands

- Requires a value

#### `--skip-db-validation`, `-s`

If specified, then db connection validation will be skipped

- Default: `false`
- Does not accept a value

#### `--http-cache-hosts`

http Cache hosts

- Requires a value

#### `--db-ssl-key`

Full path of client key file in order to establish db connection through SSL

- Default: ``
- Requires a value

#### `--db-ssl-cert`

Full path of client certificate file in order to establish db connection through SSL

- Default: ``
- Requires a value

#### `--db-ssl-ca`

Full path of server certificate file in order to establish db connection through SSL

- Default: ``
- Requires a value

#### `--db-ssl-verify`

Verify server certification

- Default: `false`
- Does not accept a value

#### `--session-save`

Session save handler

- Requires a value

#### `--session-save-redis-host`

Fully qualified host name, IP address, or absolute path if using UNIX sockets

- Requires a value

#### `--session-save-redis-port`

Redis server listen port

- Requires a value

#### `--session-save-redis-password`

Redis server password

- Requires a value

#### `--session-save-redis-timeout`

Connection timeout, in seconds

- Requires a value

#### `--session-save-redis-persistent-id`

Unique string to enable persistent connections

- Requires a value

#### `--session-save-redis-db`

Redis database number

- Requires a value

#### `--session-save-redis-compression-threshold`

Redis compression threshold

- Requires a value

#### `--session-save-redis-compression-lib`

Redis compression library. Values: gzip (default), lzf, lz4, snappy

- Requires a value

#### `--session-save-redis-log-level`

Redis log level. Values: 0 (least verbose) to 7 (most verbose)

- Requires a value

#### `--session-save-redis-max-concurrency`

Maximum number of processes that can wait for a lock on one session

- Requires a value

#### `--session-save-redis-break-after-frontend`

Number of seconds to wait before trying to break a lock for frontend session

- Requires a value

#### `--session-save-redis-break-after-adminhtml`

Number of seconds to wait before trying to break a lock for Admin session

- Requires a value

#### `--session-save-redis-first-lifetime`

Lifetime, in seconds, of session for non-bots on the first write (use 0 to disable)

- Requires a value

#### `--session-save-redis-bot-first-lifetime`

Lifetime, in seconds, of session for bots on the first write (use 0 to disable)

- Requires a value

#### `--session-save-redis-bot-lifetime`

Lifetime of session for bots on subsequent writes (use 0 to disable)

- Requires a value

#### `--session-save-redis-disable-locking`

Redis disable locking. Values: false (default), true

- Requires a value

#### `--session-save-redis-min-lifetime`

Redis min session lifetime, in seconds

- Requires a value

#### `--session-save-redis-max-lifetime`

Redis max session lifetime, in seconds

- Requires a value

#### `--session-save-redis-sentinel-master`

Redis Sentinel master

- Requires a value

#### `--session-save-redis-sentinel-servers`

Redis Sentinel servers, comma separated

- Requires a value

#### `--session-save-redis-sentinel-verify-master`

Redis Sentinel verify master. Values: false (default), true

- Requires a value

#### `--session-save-redis-sentinel-connect-retries`

Redis Sentinel connect retries.

- Requires a value

#### `--cache-backend`

Default cache handler

- Requires a value

#### `--cache-backend-redis-server`

Redis server

- Requires a value

#### `--cache-backend-redis-db`

Database number for the cache

- Requires a value

#### `--cache-backend-redis-port`

Redis server listen port

- Requires a value

#### `--cache-backend-redis-password`

Redis server password

- Requires a value

#### `--cache-backend-redis-compress-data`

Set to 0 to disable compression (default is 1, enabled)

- Requires a value

#### `--cache-backend-redis-compression-lib`

Compression lib to use [snappy,lzf,l4z,zstd,gzip] (leave blank to determine automatically)

- Requires a value

#### `--cache-backend-redis-use-lua`

Set to 1 to enable lua (default is 0, disabled)

- Requires a value

#### `--cache-id-prefix`

ID prefix for cache keys

- Requires a value

#### `--allow-parallel-generation`

Allow generate cache in non-blocking way

- Default: `false`
- Does not accept a value

#### `--page-cache`

Default cache handler

- Requires a value

#### `--page-cache-redis-server`

Redis server

- Requires a value

#### `--page-cache-redis-db`

Database number for the cache

- Requires a value

#### `--page-cache-redis-port`

Redis server listen port

- Requires a value

#### `--page-cache-redis-password`

Redis server password

- Requires a value

#### `--page-cache-redis-compress-data`

Set to 1 to compress the full page cache (use 0 to disable)

- Requires a value

#### `--page-cache-redis-compression-lib`

Compression library to use [snappy,lzf,l4z,zstd,gzip] (leave blank to determine automatically)

- Requires a value

#### `--page-cache-id-prefix`

ID prefix for cache keys

- Requires a value

#### `--lock-provider`

Lock provider name

- Requires a value

#### `--lock-db-prefix`

Installation specific lock prefix to avoid lock conflicts

- Requires a value

#### `--lock-zookeeper-host`

Host and port to connect to Zookeeper cluster. For example: 127.0.0.1:2181

- Requires a value

#### `--lock-zookeeper-path`

The path where Zookeeper will save locks. The default path is: /magento/locks

- Requires a value

#### `--lock-file-path`

The path where file locks will be saved.

- Requires a value

#### `--document-root-is-pub`

Flag to show is Pub is on root, can be true or false only

- Requires a value

#### `--backpressure-logger`

Backpressure logger handler

- Requires a value

#### `--backpressure-logger-redis-server`

Redis server

- Requires a value

#### `--backpressure-logger-redis-port`

Redis server listen port

- Requires a value

#### `--backpressure-logger-redis-timeout`

Redis server timeout

- Requires a value

#### `--backpressure-logger-redis-persistent`

Redis persistent

- Requires a value

#### `--backpressure-logger-redis-db`

Redis db number

- Requires a value

#### `--backpressure-logger-redis-password`

Redis server password

- Requires a value

#### `--backpressure-logger-redis-user`

Redis server user

- Requires a value

#### `--backpressure-logger-id-prefix`

ID prefix for keys

- Requires a value

#### `--base-url`

URL the store is supposed to be available at. Deprecated, use config:set with path web/unsecure/base_url

- Requires a value

#### `--language`

Default language code. Deprecated, use config:set with path general/locale/code

- Requires a value

#### `--timezone`

Default time zone code. Deprecated, use config:set with path general/locale/timezone

- Requires a value

#### `--currency`

Default currency code. Deprecated, use config:set with path currency/options/base, currency/options/default and currency/options/allow

- Requires a value

#### `--use-rewrites`

Use rewrites. Deprecated, use config:set with path web/seo/use_rewrites

- Requires a value

#### `--use-secure`

Use secure URLs. Enable this option only if SSL is available. Deprecated, use config:set with path web/secure/use_in_frontend

- Requires a value

#### `--base-url-secure`

Base URL for SSL connection. Deprecated, use config:set with path web/secure/base_url

- Requires a value

#### `--use-secure-admin`

Run admin interface with SSL. Deprecated, use config:set with path web/secure/use_in_adminhtml

- Requires a value

#### `--admin-use-security-key`

Whether to use a "security key" feature in Magento Admin URLs and forms. Deprecated, use config:set with path admin/security/use_form_key

- Requires a value

#### `--admin-user`

Admin user

- Accepts a value

#### `--admin-password`

Admin password

- Accepts a value

#### `--admin-email`

Admin email

- Accepts a value

#### `--admin-firstname`

Admin first name

- Accepts a value

#### `--admin-lastname`

Admin last name

- Accepts a value

#### `--search-engine`

Search engine. Values: elasticsearch7, elasticsearch8, opensearch

- Requires a value

#### `--elasticsearch-host`

Elasticsearch server host.

- Requires a value

#### `--elasticsearch-port`

Elasticsearch server port.

- Requires a value

#### `--elasticsearch-enable-auth`

Set to 1 to enable authentication. (default is 0, disabled)

- Requires a value

#### `--elasticsearch-username`

Elasticsearch username. Only applicable if HTTP auth is enabled

- Requires a value

#### `--elasticsearch-password`

Elasticsearch password. Only applicable if HTTP auth is enabled

- Requires a value

#### `--elasticsearch-index-prefix`

Elasticsearch index prefix.

- Requires a value

#### `--elasticsearch-timeout`

Elasticsearch server timeout.

- Requires a value

#### `--opensearch-host`

OpenSearch server host.

- Requires a value

#### `--opensearch-port`

OpenSearch server port.

- Requires a value

#### `--opensearch-enable-auth`

Set to 1 to enable authentication. (default is 0, disabled)

- Requires a value

#### `--opensearch-username`

OpenSearch username. Only applicable if HTTP auth is enabled

- Requires a value

#### `--opensearch-password`

OpenSearch password. Only applicable if HTTP auth is enabled

- Requires a value

#### `--opensearch-index-prefix`

OpenSearch index prefix.

- Requires a value

#### `--opensearch-timeout`

OpenSearch server timeout.

- Requires a value

#### `--cleanup-database`

Cleanup the database before installation

- Default: `false`
- Does not accept a value

#### `--sales-order-increment-prefix`

Sales order number prefix

- Requires a value

#### `--use-sample-data`

Use sample data

- Default: `false`
- Does not accept a value

#### `--enable-modules`

List of comma-separated module names. That must be included during installation. Available magic param "all".

- Accepts a value

#### `--disable-modules`

List of comma-separated module names. That must be avoided during installation. Available magic param "all".

- Accepts a value

#### `--convert-old-scripts`

Allows to convert old scripts (InstallSchema, UpgradeSchema) to db_schema.xml format

- Default: `false`
- Accepts a value

#### `--interactive`, `-i`

Interactive Magento installation

- Default: `false`
- Does not accept a value

#### `--safe-mode`

Safe installation of Magento with dumps on destructive operations, like column removal

- Accepts a value

#### `--data-restore`

Restore removed data from dumps

- Accepts a value

#### `--dry-run`

Magento Installation will be run in dry-run mode

- Default: `false`
- Accepts a value

#### `--magento-init-params`

Add to any command to customize Magento initialization parameters For example: "MAGE_MODE=developer&MAGE_DIRS[base][path]=/var/www/example.com&MAGE_DIRS[cache][path]=/var/tmp/cache"

- Requires a value


## `setup:performance:generate-fixtures`

```bash
bin/magento setup:performance:generate-fixtures [-s|--skip-reindex] [--] <profile>
```

Generates fixtures

### Arguments

#### `profile`

Path to profile configuration file

- Required

### Options

For global options, see [Global options](#global-options).

#### `--skip-reindex`, `-s`

Skip reindex

- Default: `false`
- Does not accept a value


## `setup:rollback`

```bash
bin/magento setup:rollback [-c|--code-file CODE-FILE] [-m|--media-file MEDIA-FILE] [-d|--db-file DB-FILE] [--magento-init-params MAGENTO-INIT-PARAMS]
```

Rolls back Magento Application codebase, media and database

### Options

For global options, see [Global options](#global-options).

#### `--code-file`, `-c`

Basename of the code backup file in var/backups

- Requires a value

#### `--media-file`, `-m`

Basename of the media backup file in var/backups

- Requires a value

#### `--db-file`, `-d`

Basename of the db backup file in var/backups

- Requires a value

#### `--magento-init-params`

Add to any command to customize Magento initialization parameters For example: "MAGE_MODE=developer&MAGE_DIRS[base][path]=/var/www/example.com&MAGE_DIRS[cache][path]=/var/tmp/cache"

- Requires a value


## `setup:static-content:deploy`

```bash
bin/magento setup:static-content:deploy [-f|--force] [-s|--strategy [STRATEGY]] [-a|--area [AREA]] [--exclude-area [EXCLUDE-AREA]] [-t|--theme [THEME]] [--exclude-theme [EXCLUDE-THEME]] [-l|--language [LANGUAGE]] [--exclude-language [EXCLUDE-LANGUAGE]] [-j|--jobs [JOBS]] [--max-execution-time [MAX-EXECUTION-TIME]] [--symlink-locale] [--content-version CONTENT-VERSION] [--refresh-content-version-only] [--no-javascript] [--no-js-bundle] [--no-css] [--no-less] [--no-images] [--no-fonts] [--no-html] [--no-misc] [--no-html-minify] [--no-parent] [--] [<languages>...]
```

Deploys static view files

### Arguments

#### `languages`

Space-separated list of ISO-639 language codes for which to output static view files.

- Default: `[]`
- Array
   
### Options

For global options, see [Global options](#global-options).

#### `--force`, `-f`

Deploy files in any mode.

- Default: `false`
- Does not accept a value

#### `--strategy`, `-s`

Deploy files using specified strategy.

- Default: `quick`
- Accepts a value

#### `--area`, `-a`

Generate files only for the specified areas.

- Default: `all`
- Accepts multiple values

#### `--exclude-area`

Do not generate files for the specified areas.

- Default: `none`
- Accepts multiple values

#### `--theme`, `-t`

Generate static view files for only the specified themes.

- Default: `all`
- Accepts multiple values

#### `--exclude-theme`

Do not generate files for the specified themes.

- Default: `none`
- Accepts multiple values

#### `--language`, `-l`

Generate files only for the specified languages.

- Default: `all`
- Accepts multiple values

#### `--exclude-language`

Do not generate files for the specified languages.

- Default: `none`
- Accepts multiple values

#### `--jobs`, `-j`

Enable parallel processing using the specified number of jobs.

- Default: `0`
- Accepts a value

#### `--max-execution-time`

The maximum expected execution time of deployment static process (in seconds).

- Default: `900`
- Accepts a value

#### `--symlink-locale`

Create symlinks for the files of those locales, which are passed for deployment, but have no customizations.

- Default: `false`
- Does not accept a value

#### `--content-version`

Custom version of static content can be used if running deployment on multiple nodes to ensure that static content version is identical and caching works properly.

- Requires a value

#### `--refresh-content-version-only`

Refreshing the version of static content only can be used to refresh static content in browser cache and CDN cache.

- Default: `false`
- Does not accept a value

#### `--no-javascript`

Do not deploy JavaScript files.

- Default: `false`
- Does not accept a value

#### `--no-js-bundle`

Do not deploy JavaScript bundle files.

- Default: `false`
- Does not accept a value

#### `--no-css`

Do not deploy CSS files.

- Default: `false`
- Does not accept a value

#### `--no-less`

Do not deploy LESS files.

- Default: `false`
- Does not accept a value

#### `--no-images`

Do not deploy images.

- Default: `false`
- Does not accept a value

#### `--no-fonts`

Do not deploy font files.

- Default: `false`
- Does not accept a value

#### `--no-html`

Do not deploy HTML files.

- Default: `false`
- Does not accept a value

#### `--no-misc`

Do not deploy files of other types (.md, .jbf, .csv, etc.).

- Default: `false`
- Does not accept a value

#### `--no-html-minify`

Do not minify HTML files.

- Default: `false`
- Does not accept a value

#### `--no-parent`

Do not compile parent themes. Supported only in quick and standard strategies.

- Default: `false`
- Does not accept a value


## `setup:store-config:set`

```bash
bin/magento setup:store-config:set [--base-url BASE-URL] [--language LANGUAGE] [--timezone TIMEZONE] [--currency CURRENCY] [--use-rewrites USE-REWRITES] [--use-secure USE-SECURE] [--base-url-secure BASE-URL-SECURE] [--use-secure-admin USE-SECURE-ADMIN] [--admin-use-security-key ADMIN-USE-SECURITY-KEY] [--magento-init-params MAGENTO-INIT-PARAMS]
```

Installs the store configuration. Deprecated since 2.2.0. Use config:set instead

### Options

For global options, see [Global options](#global-options).

#### `--base-url`

URL the store is supposed to be available at. Deprecated, use config:set with path web/unsecure/base_url

- Requires a value

#### `--language`

Default language code. Deprecated, use config:set with path general/locale/code

- Requires a value

#### `--timezone`

Default time zone code. Deprecated, use config:set with path general/locale/timezone

- Requires a value

#### `--currency`

Default currency code. Deprecated, use config:set with path currency/options/base, currency/options/default and currency/options/allow

- Requires a value

#### `--use-rewrites`

Use rewrites. Deprecated, use config:set with path web/seo/use_rewrites

- Requires a value

#### `--use-secure`

Use secure URLs. Enable this option only if SSL is available. Deprecated, use config:set with path web/secure/use_in_frontend

- Requires a value

#### `--base-url-secure`

Base URL for SSL connection. Deprecated, use config:set with path web/secure/base_url

- Requires a value

#### `--use-secure-admin`

Run admin interface with SSL. Deprecated, use config:set with path web/secure/use_in_adminhtml

- Requires a value

#### `--admin-use-security-key`

Whether to use a "security key" feature in Magento Admin URLs and forms. Deprecated, use config:set with path admin/security/use_form_key

- Requires a value

#### `--magento-init-params`

Add to any command to customize Magento initialization parameters For example: "MAGE_MODE=developer&MAGE_DIRS[base][path]=/var/www/example.com&MAGE_DIRS[cache][path]=/var/tmp/cache"

- Requires a value


## `setup:uninstall`

```bash
bin/magento setup:uninstall [--magento-init-params MAGENTO-INIT-PARAMS]
```

Uninstalls the Magento application

### Options

For global options, see [Global options](#global-options).

#### `--magento-init-params`

Add to any command to customize Magento initialization parameters For example: "MAGE_MODE=developer&MAGE_DIRS[base][path]=/var/www/example.com&MAGE_DIRS[cache][path]=/var/tmp/cache"

- Requires a value


## `setup:upgrade`

```bash
bin/magento setup:upgrade [--keep-generated] [--convert-old-scripts [CONVERT-OLD-SCRIPTS]] [--safe-mode [SAFE-MODE]] [--data-restore [DATA-RESTORE]] [--dry-run [DRY-RUN]] [--magento-init-params MAGENTO-INIT-PARAMS]
```

Upgrades the Magento application, DB data, and schema

### Options

For global options, see [Global options](#global-options).

#### `--keep-generated`

Prevents generated files from being deleted. We discourage using this option except when deploying to production. Consult your system integrator or administrator for more information.

- Default: `false`
- Does not accept a value

#### `--convert-old-scripts`

Allows to convert old scripts (InstallSchema, UpgradeSchema) to db_schema.xml format

- Default: `false`
- Accepts a value

#### `--safe-mode`

Safe installation of Magento with dumps on destructive operations, like column removal

- Accepts a value

#### `--data-restore`

Restore removed data from dumps

- Accepts a value

#### `--dry-run`

Magento Installation will be run in dry-run mode

- Default: `false`
- Accepts a value

#### `--magento-init-params`

Add to any command to customize Magento initialization parameters For example: "MAGE_MODE=developer&MAGE_DIRS[base][path]=/var/www/example.com&MAGE_DIRS[cache][path]=/var/tmp/cache"

- Requires a value


## `store:list`

```bash
bin/magento store:list
```

Displays the list of stores

### Options

For global options, see [Global options](#global-options).


## `store:website:list`

```bash
bin/magento store:website:list
```

Displays the list of websites

### Options

For global options, see [Global options](#global-options).


## `support:backup:code`

```bash
bin/magento support:backup:code [--name [NAME]] [-o|--output [OUTPUT]] [-l|--logs]
```

Create Code backup

### Options

For global options, see [Global options](#global-options).

#### `--name`

Dump name

- Accepts a value

#### `--output`, `-o`

Output path

- Accepts a value

#### `--logs`, `-l`

Include logs

- Default: `false`
- Does not accept a value


## `support:backup:db`

```bash
bin/magento support:backup:db [--name [NAME]] [-o|--output [OUTPUT]] [-l|--logs] [-i|--ignore-sanitize]
```

Create DB backup

### Options

For global options, see [Global options](#global-options).

#### `--name`

Dump name

- Accepts a value

#### `--output`, `-o`

Output path

- Accepts a value

#### `--logs`, `-l`

Include logs

- Default: `false`
- Does not accept a value

#### `--ignore-sanitize`, `-i`

Ignore sanitize

- Default: `false`
- Does not accept a value


## `support:utility:check`

```bash
bin/magento support:utility:check [--hide-paths]
```

Check required backup utilities

### Options

For global options, see [Global options](#global-options).

#### `--hide-paths`

Only check required console utilities

- Default: `false`
- Does not accept a value


## `support:utility:paths`

```bash
bin/magento support:utility:paths [-f|--force]
```

Create utilities paths list

### Options

For global options, see [Global options](#global-options).

#### `--force`, `-f`

Force

- Default: `false`
- Does not accept a value


## `theme:uninstall`

```bash
bin/magento theme:uninstall [--backup-code] [-c|--clear-static-content] [--] <theme>...
```

Uninstalls theme

### Arguments

#### `theme`

Path of the theme. Theme path should be specified as full path which is area/vendor/name. For example, frontend/Magento/blank

- Default: `[]`
- Required

- Array
   
### Options

For global options, see [Global options](#global-options).

#### `--backup-code`

Take code backup (excluding temporary files)

- Default: `false`
- Does not accept a value

#### `--clear-static-content`, `-c`

Clear generated static view files.

- Default: `false`
- Does not accept a value


## `varnish:vcl:generate`

```bash
bin/magento varnish:vcl:generate [--access-list ACCESS-LIST] [--backend-host BACKEND-HOST] [--backend-port BACKEND-PORT] [--export-version EXPORT-VERSION] [--grace-period GRACE-PERIOD] [--input-file INPUT-FILE] [--output-file OUTPUT-FILE]
```

Generates Varnish VCL and echos it to the command line

### Options

For global options, see [Global options](#global-options).

#### `--access-list`

IPs access list that can purge Varnish

- Default: `localhost`
- Requires a value

#### `--backend-host`

Host of the web backend

- Default: `localhost`
- Requires a value

#### `--backend-port`

Port of the web backend

- Default: `8080`
- Requires a value

#### `--export-version`

The version of Varnish file

- Default: `6`
- Requires a value

#### `--grace-period`

Grace period in seconds

- Default: `300`
- Requires a value

#### `--input-file`

Input file to generate vcl from

- Requires a value

#### `--output-file`

Path to the file to write vcl

- Requires a value


## `webhooks:dev:run`

```bash
bin/magento webhooks:dev:run <name> <payload>
```

Runs a registered webhook for development purposes.

### Arguments

#### `name`

Webhook name

- Required


#### `payload`

The webhook payload in JSON format

- Required

### Options

For global options, see [Global options](#global-options).


## `webhooks:generate:module`

```bash
bin/magento webhooks:generate:module
```

Generate plugins based on webhook registrations

### Options

For global options, see [Global options](#global-options).


## `webhooks:info`

```bash
bin/magento webhooks:info [--depth [DEPTH]] [--] <webhook-name> [<webhook-type>]
```

Returns the payload of the specified webhook.

### Arguments

#### `webhook-name`

Webhook method name

- Required


#### `webhook-type`

Webhook type (before, after)

- Default: `before`

### Options

For global options, see [Global options](#global-options).

#### `--depth`

The number of levels in the webhook payload to return

- Default: `3`
- Accepts a value


## `webhooks:list`

```bash
bin/magento webhooks:list
```

Shows list of subscribed webhooks

### Options

For global options, see [Global options](#global-options).


## `webhooks:list:all`

```bash
bin/magento webhooks:list:all <module_name>
```

Returns a list of supported webhook method names for the specified module

### Arguments

#### `module_name`

Module name

- Required

### Options

For global options, see [Global options](#global-options).
