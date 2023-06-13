# bin/magento (Magento Open Source)

<!-- All the assigned and captured content is used in the included template -->

<!-- The template to render with above values -->
**Version**: 2.4.7-beta1

This reference contains 115 commands available through the `bin/magento` command-line tool.
The initial list is auto generated using the `bin/magento list` command at Magento Open Source.
Use the ["Add CLI commands"](https://developer.adobe.com/commerce/php/development/cli-commands/) guide to add a custom CLI command.

>[!NOTE]
>
>You can call `bin/magento` CLI commands using shortcuts instead of the full command name. For example, you can call `bin/magento setup:upgrade` using `bin/magento s:up`, `bin/magento s:upg`. See [shortcut syntax](https://symfony.com/doc/current/components/console/usage.html#shortcut-syntax) to understand how to use shortcuts with any CLI command.

>[!NOTE]
>
>This reference is generated from the application codebase. To change the content, you can update the source code for the corresponding command implementation in the [codebase](https://github.com/magento) repository and submit your changes for review. Another way is to _Give us feedback_ (find the link at the upper right). For contribution guidelines, see [Code Contributions](https://developer.adobe.com/commerce/contributor/guides/code-contributions/).

## `_complete`

Internal command to provide shell completion suggestions

```bash
bin/magento _complete [-s|--shell SHELL] [-i|--input INPUT] [-c|--current CURRENT] [-S|--symfony SYMFONY]
```

### `--shell`, `-s`

The shell type (&quot;bash&quot;)
   
-  Requires a value

### `--input`, `-i`

An array of input tokens (e.g. COMP_WORDS or argv)
   
-  Default: `[]`
-  Requires a value

### `--current`, `-c`

The index of the &quot;input&quot; array that the cursor is in (e.g. COMP_CWORD)
   
-  Requires a value

### `--symfony`, `-S`

The version of the completion script
   
-  Requires a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `completion`

Dump the shell completion script

```bash
bin/magento completion [--debug] [--] [<shell>]
```


### `shell`

The shell type (e.g. &quot;bash&quot;), the value of the &quot;$SHELL&quot; env var will be used if this is not given
   

### `--debug`

Tail the completion debug log
   
-  Default: `false`
-  Does not accept a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `help`

Display help for a command

```bash
bin/magento help [--format FORMAT] [--raw] [--] [<command_name>]
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

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `list`

List commands

```bash
bin/magento list [--raw] [--format FORMAT] [--short] [--] [<namespace>]
```


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

### `--short`

To skip describing commands' arguments
   
-  Default: `false`
-  Does not accept a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `admin:adobe-ims:disable`

Disable Adobe IMS Module

```bash
bin/magento admin:adobe-ims:disable
```

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `admin:adobe-ims:enable`

Enable Adobe IMS Module.

```bash
bin/magento admin:adobe-ims:enable [-o|--organization-id [ORGANIZATION-ID]] [-c|--client-id [CLIENT-ID]] [-s|--client-secret [CLIENT-SECRET]] [-t|--2fa [2FA]]
```

### `--organization-id`, `-o`

Set Organization ID for Adobe IMS configuration. Required when enabling the module
   
-  Accepts a value

### `--client-id`, `-c`

Set the client ID for Adobe IMS configuration. Required when enabling the module
   
-  Accepts a value

### `--client-secret`, `-s`

Set the client Secret for Adobe IMS configuration. Required when enabling the module
   
-  Accepts a value

### `--2fa`, `-t`

Check if 2FA is enabled for Organization in Adobe Admin Console. Required when enabling the module
   
-  Accepts a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `admin:adobe-ims:info`

Information of Adobe IMS Module configuration

```bash
bin/magento admin:adobe-ims:info
```

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `admin:adobe-ims:status`

Status of Adobe IMS Module

```bash
bin/magento admin:adobe-ims:status
```

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `admin:user:create`

Creates an administrator

```bash
bin/magento admin:user:create [--admin-user ADMIN-USER] [--admin-password ADMIN-PASSWORD] [--admin-email ADMIN-EMAIL] [--admin-firstname ADMIN-FIRSTNAME] [--admin-lastname ADMIN-LASTNAME] [--magento-init-params MAGENTO-INIT-PARAMS]
```

### `--admin-user`

(Required) Admin user
   
-  Requires a value

### `--admin-password`

(Required) Admin password
   
-  Requires a value

### `--admin-email`

(Required) Admin email
   
-  Requires a value

### `--admin-firstname`

(Required) Admin first name
   
-  Requires a value

### `--admin-lastname`

(Required) Admin last name
   
-  Requires a value

### `--magento-init-params`

Add to any command to customize Magento initialization parameters For example: &quot;MAGE_MODE=developer&amp;MAGE_DIRS[base][path]=/var/www/example.com&amp;MAGE_DIRS[cache][path]=/var/tmp/cache&quot;
   
-  Requires a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `admin:user:unlock`

Unlock Admin Account

```bash
bin/magento admin:user:unlock <username>
```


### `username`

The admin username to unlock
   
-  Required

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `app:config:dump`

Create dump of application

```bash
bin/magento app:config:dump [<config-types>...]
```


### `config-types`

Space-separated list of config types or omit to dump all [scopes, system, themes, i18n]
   
-  Default: `[]`
   
-  Array

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `app:config:import`

Import data from shared configuration files to appropriate data storage

```bash
bin/magento app:config:import
```

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `app:config:status`

Checks if config propagation requires update

```bash
bin/magento app:config:status
```

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `braintree:migrate`

Migrate stored cards from a Magento 1 database

```bash
bin/magento braintree:migrate [--host HOST] [--dbname DBNAME] [--username USERNAME] [--password PASSWORD]
```

### `--host`

Hostname/IP. Port is optional
   
-  Requires a value

### `--dbname`

Database name
   
-  Requires a value

### `--username`

Database username. Must have read access
   
-  Requires a value

### `--password`

Password
   
-  Requires a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `cache:clean`

Cleans cache type(s)

```bash
bin/magento cache:clean [--bootstrap BOOTSTRAP] [--] [<types>...]
```


### `types`

Space-separated list of cache types or omit to apply to all cache types.
   
-  Default: `[]`
   
-  Array

### `--bootstrap`

add or override parameters of the bootstrap
   
-  Requires a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `cache:disable`

Disables cache type(s)

```bash
bin/magento cache:disable [--bootstrap BOOTSTRAP] [--] [<types>...]
```


### `types`

Space-separated list of cache types or omit to apply to all cache types.
   
-  Default: `[]`
   
-  Array

### `--bootstrap`

add or override parameters of the bootstrap
   
-  Requires a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `cache:enable`

Enables cache type(s)

```bash
bin/magento cache:enable [--bootstrap BOOTSTRAP] [--] [<types>...]
```


### `types`

Space-separated list of cache types or omit to apply to all cache types.
   
-  Default: `[]`
   
-  Array

### `--bootstrap`

add or override parameters of the bootstrap
   
-  Requires a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `cache:flush`

Flushes cache storage used by cache type(s)

```bash
bin/magento cache:flush [--bootstrap BOOTSTRAP] [--] [<types>...]
```


### `types`

Space-separated list of cache types or omit to apply to all cache types.
   
-  Default: `[]`
   
-  Array

### `--bootstrap`

add or override parameters of the bootstrap
   
-  Requires a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `cache:status`

Checks cache status

```bash
bin/magento cache:status [--bootstrap BOOTSTRAP]
```

### `--bootstrap`

add or override parameters of the bootstrap
   
-  Requires a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `catalog:images:resize`

Creates resized product images

```bash
bin/magento catalog:images:resize [-a|--async] [--skip_hidden_images]
```

### `--async`, `-a`

Resize image in asynchronous mode
   
-  Default: `false`
-  Does not accept a value

### `--skip_hidden_images`

Do not process images marked as hidden from product page
   
-  Default: `false`
-  Does not accept a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `catalog:product:attributes:cleanup`

Removes unused product attributes.

```bash
bin/magento catalog:product:attributes:cleanup
```

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `cms:wysiwyg:restrict`

Set whether to enforce user HTML content validation or show a warning instead

```bash
bin/magento cms:wysiwyg:restrict <restrict>
```


### `restrict`

y\n
   
-  Required

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `config:sensitive:set`

Set sensitive configuration values

```bash
bin/magento config:sensitive:set [-i|--interactive] [--scope [SCOPE]] [--scope-code [SCOPE-CODE]] [--] [<path> [<value>]]
```


### `path`

Configuration path for example group/section/field_name
   

### `value`

Configuration value
   

### `--interactive`, `-i`

Enable interactive mode to set all sensitive variables
   
-  Default: `false`
-  Does not accept a value

### `--scope`

Scope for configuration, if not set use 'default'
   
-  Default: `default`
-  Accepts a value

### `--scope-code`

Scope code for configuration, empty string by default
   
-  Default: ``
-  Accepts a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `config:set`

Change system configuration

```bash
bin/magento config:set [--scope SCOPE] [--scope-code SCOPE-CODE] [-e|--lock-env] [-c|--lock-config] [-l|--lock] [--] <path> <value>
```


### `path`

Configuration path in format section/group/field_name
   
-  Required

### `value`

Configuration value
   
-  Required

### `--scope`

Configuration scope (default, website, or store)
   
-  Default: `default`
-  Requires a value

### `--scope-code`

Scope code (required only if scope is not 'default')
   
-  Requires a value

### `--lock-env`, `-e`

Lock value which prevents modification in the Admin (will be saved in app/etc/env.php)
   
-  Default: `false`
-  Does not accept a value

### `--lock-config`, `-c`

Lock and share value with other installations, prevents modification in the Admin (will be saved in app/etc/config.php)
   
-  Default: `false`
-  Does not accept a value

### `--lock`, `-l`

Deprecated, use the --lock-env option instead.
   
-  Default: `false`
-  Does not accept a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `config:show`

Shows configuration value for given path. If path is not specified, all saved values will be shown

```bash
bin/magento config:show [--scope [SCOPE]] [--scope-code [SCOPE-CODE]] [--] [<path>]
```


### `path`

Configuration path, for example section_id/group_id/field_id
   

### `--scope`

Scope for configuration, if not specified, then 'default' scope will be used
   
-  Default: `default`
-  Accepts a value

### `--scope-code`

Scope code (required only if scope is not `default`)
   
-  Default: ``
-  Accepts a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `cron:install`

Generates and installs crontab for current user

```bash
bin/magento cron:install [-f|--force] [-d|--non-optional]
```

### `--force`, `-f`

Force install tasks
   
-  Default: `false`
-  Does not accept a value

### `--non-optional`, `-d`

Install only the non-optional (default) tasks
   
-  Default: `false`
-  Does not accept a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `cron:remove`

Removes tasks from crontab

```bash
bin/magento cron:remove
```

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `cron:run`

Runs jobs by schedule

```bash
bin/magento cron:run [--group GROUP] [--exclude-group [EXCLUDE-GROUP]] [--bootstrap BOOTSTRAP]
```

### `--group`

Run jobs only from specified group
   
-  Requires a value

### `--exclude-group`

Exclude jobs from the specified group
   
-  Default: `[]`
-  Accepts multiple values

### `--bootstrap`

Add or override parameters of the bootstrap
   
-  Requires a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `customer:hash:upgrade`

Upgrade customer's hash according to the latest algorithm

```bash
bin/magento customer:hash:upgrade
```

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `deploy:mode:set`

Set application mode.

```bash
bin/magento deploy:mode:set [-s|--skip-compilation] [--] <mode>
```


### `mode`

The application mode to set. Available options are &quot;developer&quot; or &quot;production&quot;
   
-  Required

### `--skip-compilation`, `-s`

Skips the clearing and regeneration of static content (generated code, preprocessed CSS, and assets in pub/static/)
   
-  Default: `false`
-  Does not accept a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `deploy:mode:show`

Displays current application mode.

```bash
bin/magento deploy:mode:show
```

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `dev:di:info`

Provides information on Dependency Injection configuration for the Command.

```bash
bin/magento dev:di:info <class>
```


### `class`

Class name
   
-  Required

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `dev:email:newsletter-compatibility-check`

Scans newsletter templates for potential variable usage compatibility issues

```bash
bin/magento dev:email:newsletter-compatibility-check
```

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `dev:email:override-compatibility-check`

Scans email template overrides for potential variable usage compatibility issues

```bash
bin/magento dev:email:override-compatibility-check
```

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `dev:profiler:disable`

Disable the profiler.

```bash
bin/magento dev:profiler:disable
```

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `dev:profiler:enable`

Enable the profiler.

```bash
bin/magento dev:profiler:enable [<type>]
```


### `type`

Profiler type
   

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `dev:query-log:disable`

Disable DB query logging

```bash
bin/magento dev:query-log:disable
```

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `dev:query-log:enable`

Enable DB query logging

```bash
bin/magento dev:query-log:enable [--include-all-queries [INCLUDE-ALL-QUERIES]] [--query-time-threshold [QUERY-TIME-THRESHOLD]] [--include-call-stack [INCLUDE-CALL-STACK]]
```

### `--include-all-queries`

Log all queries. [true\|false]
   
-  Default: `true`
-  Accepts a value

### `--query-time-threshold`

Query time thresholds.
   
-  Default: `0.001`
-  Accepts a value

### `--include-call-stack`

Include call stack. [true\|false]
   
-  Default: `true`
-  Accepts a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `dev:source-theme:deploy`

Collects and publishes source files for theme.

```bash
bin/magento dev:source-theme:deploy [--type TYPE] [--locale LOCALE] [--area AREA] [--theme THEME] [--] [<file>...]
```


### `file`

Files to pre-process (file should be specified without extension)
   
-  Default: `css/styles-mcss/styles-l`
   
-  Array

### `--type`

Type of source files: [less]
   
-  Default: `less`
-  Requires a value

### `--locale`

Locale: [en_US]
   
-  Default: `en_US`
-  Requires a value

### `--area`

Area: [frontend\|adminhtml]
   
-  Default: `frontend`
-  Requires a value

### `--theme`

Theme: [Vendor/theme]
   
-  Default: `Magento/luma`
-  Requires a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `dev:template-hints:disable`

Disable frontend template hints. A cache flush might be required.

```bash
bin/magento dev:template-hints:disable
```

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `dev:template-hints:enable`

Enable frontend template hints. A cache flush might be required.

```bash
bin/magento dev:template-hints:enable
```

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `dev:template-hints:status`

Show frontend template hints status.

```bash
bin/magento dev:template-hints:status
```

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `dev:tests:run`

Runs tests

```bash
bin/magento dev:tests:run [-c|--arguments ARGUMENTS] [--] [<type>]
```


### `type`

Type of test to run. Available types: all, unit, integration, integration-all, static, static-all, integrity, legacy, default
   
-  Default: `default`
   

### `--arguments`, `-c`

Additional arguments for PHPUnit. Example: &quot;-c'--filter=MyTest'&quot; (no spaces)
   
-  Default: ``
-  Requires a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `dev:urn-catalog:generate`

Generates the catalog of URNs to *.xsd mappings for the IDE to highlight xml.

```bash
bin/magento dev:urn-catalog:generate [--ide IDE] [--] <path>
```


### `path`

Path to file to output the catalog. For PhpStorm use .idea/misc.xml
   
-  Required

### `--ide`

Format in which catalog will be generated. Supported: [phpstorm, vscode]
   
-  Default: `phpstorm`
-  Requires a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `dev:xml:convert`

Converts XML file using XSL style sheets

```bash
bin/magento dev:xml:convert [-o|--overwrite] [--] <xml-file> <processor>
```


### `xml-file`

Path to XML file that going to be transformed
   
-  Required

### `processor`

Path to XSL style sheet that going to be applied to XML file
   
-  Required

### `--overwrite`, `-o`

Overwrite XML file
   
-  Default: `false`
-  Does not accept a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `downloadable:domains:add`

Add domains to the downloadable domains whitelist

```bash
bin/magento downloadable:domains:add [<domains>...]
```


### `domains`

Domains name
   
-  Default: `[]`
   
-  Array

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `downloadable:domains:remove`

Remove domains from the downloadable domains whitelist

```bash
bin/magento downloadable:domains:remove [<domains>...]
```


### `domains`

Domain names
   
-  Default: `[]`
   
-  Array

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `downloadable:domains:show`

Display downloadable domains whitelist

```bash
bin/magento downloadable:domains:show
```

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `encryption:payment-data:update`

Re-encrypts encrypted credit card data with latest encryption cipher.

```bash
bin/magento encryption:payment-data:update
```

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `i18n:collect-phrases`

Discovers phrases in the codebase

```bash
bin/magento i18n:collect-phrases [-o|--output OUTPUT] [-m|--magento] [--] [<directory>]
```


### `directory`

Directory path to parse. Not needed if --magento flag is set
   

### `--output`, `-o`

Path (including filename) to an output file. With no file specified, defaults to stdout.
   
-  Requires a value

### `--magento`, `-m`

Use the --magento parameter to parse the current Magento codebase. Omit the parameter if a directory is specified.
   
-  Default: `false`
-  Does not accept a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `i18n:pack`

Saves language package

```bash
bin/magento i18n:pack [-m|--mode MODE] [-d|--allow-duplicates] [--] <source> <locale>
```


### `source`

Path to source dictionary file with translations
   
-  Required

### `locale`

Target locale for dictionary, for example &quot;de_DE&quot;
   
-  Required

### `--mode`, `-m`

Save mode for dictionary - &quot;replace&quot; - replace language pack by new one - &quot;merge&quot; - merge language packages, by default &quot;replace&quot;
   
-  Default: `replace`
-  Requires a value

### `--allow-duplicates`, `-d`

Use the --allow-duplicates parameter to allow saving duplicates of translate. Otherwise omit the parameter.
   
-  Default: `false`
-  Does not accept a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `i18n:uninstall`

Uninstalls language packages

```bash
bin/magento i18n:uninstall [-b|--backup-code] [--] <package>...
```


### `package`

Language package name
   
-  Default: `[]`
   
-  Required
-  Array

### `--backup-code`, `-b`

Take code and configuration files backup (excluding temporary files)
   
-  Default: `false`
-  Does not accept a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `indexer:info`

Shows allowed Indexers

```bash
bin/magento indexer:info
```

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `indexer:reindex`

Reindexes Data

```bash
bin/magento indexer:reindex [<index>...]
```


### `index`

Space-separated list of index types or omit to apply to all indexes.
   
-  Default: `[]`
   
-  Array

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `indexer:reset`

Resets indexer status to invalid

```bash
bin/magento indexer:reset [<index>...]
```


### `index`

Space-separated list of index types or omit to apply to all indexes.
   
-  Default: `[]`
   
-  Array

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `indexer:set-dimensions-mode`

Set Indexer Dimensions Mode

```bash
bin/magento indexer:set-dimensions-mode [<indexer> [<mode>]]
```


### `indexer`

Indexer name [catalog_product_price]
   

### `mode`

Indexer dimension modes catalog_product_price          none,website,customer_group,website_and_customer_group 
   

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `indexer:set-mode`

Sets index mode type

```bash
bin/magento indexer:set-mode [<mode> [<index>...]]
```


### `mode`

Indexer mode type [realtime|schedule]
   

### `index`

Space-separated list of index types or omit to apply to all indexes.
   
-  Default: `[]`
   
-  Array

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `indexer:show-dimensions-mode`

Shows Indexer Dimension Mode

```bash
bin/magento indexer:show-dimensions-mode [<indexer>...]
```


### `indexer`

Space-separated list of index types or omit to apply to all indexes (catalog_product_price)
   
-  Default: `[]`
   
-  Array

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `indexer:show-mode`

Shows Index Mode

```bash
bin/magento indexer:show-mode [<index>...]
```


### `index`

Space-separated list of index types or omit to apply to all indexes.
   
-  Default: `[]`
   
-  Array

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `indexer:status`

Shows status of Indexer

```bash
bin/magento indexer:status [<index>...]
```


### `index`

Space-separated list of index types or omit to apply to all indexes.
   
-  Default: `[]`
   
-  Array

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `info:adminuri`

Displays the Magento Admin URI

```bash
bin/magento info:adminuri
```

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `info:backups:list`

Prints list of available backup files

```bash
bin/magento info:backups:list
```

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `info:currency:list`

Displays the list of available currencies

```bash
bin/magento info:currency:list
```

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `info:dependencies:show-framework`

Shows number of dependencies on Magento framework

```bash
bin/magento info:dependencies:show-framework [-o|--output OUTPUT]
```

### `--output`, `-o`

Report filename
   
-  Default: `framework-dependencies.csv`
-  Requires a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `info:dependencies:show-modules`

Shows number of dependencies between modules

```bash
bin/magento info:dependencies:show-modules [-o|--output OUTPUT]
```

### `--output`, `-o`

Report filename
   
-  Default: `modules-dependencies.csv`
-  Requires a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `info:dependencies:show-modules-circular`

Shows number of circular dependencies between modules

```bash
bin/magento info:dependencies:show-modules-circular [-o|--output OUTPUT]
```

### `--output`, `-o`

Report filename
   
-  Default: `modules-circular-dependencies.csv`
-  Requires a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `info:language:list`

Displays the list of available language locales

```bash
bin/magento info:language:list
```

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `info:timezone:list`

Displays the list of available timezones

```bash
bin/magento info:timezone:list
```

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `inventory:reservation:create-compensations`

Create reservations by provided compensation arguments

```bash
bin/magento inventory:reservation:create-compensations [-r|--raw] [--] [<compensations>...]
```


### `compensations`

List of compensation arguments in format &quot;&lt;ORDER_INCREMENT_ID&gt;:&lt;SKU&gt;:&lt;QUANTITY&gt;:&lt;STOCK-ID&gt;&quot;
   
-  Default: `[]`
   
-  Array

### `--raw`, `-r`

Raw output
   
-  Default: `false`
-  Does not accept a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `inventory:reservation:list-inconsistencies`

Show all orders and products with salable quantity inconsistencies

```bash
bin/magento inventory:reservation:list-inconsistencies [-c|--complete-orders] [-i|--incomplete-orders] [-b|--bunch-size [BUNCH-SIZE]] [-r|--raw]
```

### `--complete-orders`, `-c`

Show only inconsistencies for complete orders
   
-  Default: `false`
-  Does not accept a value

### `--incomplete-orders`, `-i`

Show only inconsistencies for incomplete orders
   
-  Default: `false`
-  Does not accept a value

### `--bunch-size`, `-b`

Defines how many orders will be loaded at once
   
-  Default: `50`
-  Accepts a value

### `--raw`, `-r`

Raw output
   
-  Default: `false`
-  Does not accept a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `inventory-geonames:import`

Download and import geo names for source selection algorithm

```bash
bin/magento inventory-geonames:import <countries>...
```


### `countries`

List of country codes to import
   
-  Default: `[]`
   
-  Required
-  Array

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `maintenance:allow-ips`

Sets maintenance mode exempt IPs

```bash
bin/magento maintenance:allow-ips [--none] [--add] [--magento-init-params MAGENTO-INIT-PARAMS] [--] [<ip>...]
```


### `ip`

Allowed IP addresses
   
-  Default: `[]`
   
-  Array

### `--none`

Clear allowed IP addresses
   
-  Default: `false`
-  Does not accept a value

### `--add`

Add the IP address to existing list
   
-  Default: `false`
-  Does not accept a value

### `--magento-init-params`

Add to any command to customize Magento initialization parameters For example: &quot;MAGE_MODE=developer&amp;MAGE_DIRS[base][path]=/var/www/example.com&amp;MAGE_DIRS[cache][path]=/var/tmp/cache&quot;
   
-  Requires a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `maintenance:disable`

Disables maintenance mode

```bash
bin/magento maintenance:disable [--ip IP] [--magento-init-params MAGENTO-INIT-PARAMS]
```

### `--ip`

Allowed IP addresses (use 'none' to clear allowed IP list)
   
-  Default: `[]`
-  Requires a value

### `--magento-init-params`

Add to any command to customize Magento initialization parameters For example: &quot;MAGE_MODE=developer&amp;MAGE_DIRS[base][path]=/var/www/example.com&amp;MAGE_DIRS[cache][path]=/var/tmp/cache&quot;
   
-  Requires a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `maintenance:enable`

Enables maintenance mode

```bash
bin/magento maintenance:enable [--ip IP] [--magento-init-params MAGENTO-INIT-PARAMS]
```

### `--ip`

Allowed IP addresses (use 'none' to clear allowed IP list)
   
-  Default: `[]`
-  Requires a value

### `--magento-init-params`

Add to any command to customize Magento initialization parameters For example: &quot;MAGE_MODE=developer&amp;MAGE_DIRS[base][path]=/var/www/example.com&amp;MAGE_DIRS[cache][path]=/var/tmp/cache&quot;
   
-  Requires a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `maintenance:status`

Displays maintenance mode status

```bash
bin/magento maintenance:status [--magento-init-params MAGENTO-INIT-PARAMS]
```

### `--magento-init-params`

Add to any command to customize Magento initialization parameters For example: &quot;MAGE_MODE=developer&amp;MAGE_DIRS[base][path]=/var/www/example.com&amp;MAGE_DIRS[cache][path]=/var/tmp/cache&quot;
   
-  Requires a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `media-content:sync`

Synchronize content with assets

```bash
bin/magento media-content:sync
```

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `media-gallery:sync`

Synchronize media storage and media assets in the database

```bash
bin/magento media-gallery:sync
```

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `module:config:status`

Checks the modules configuration in the 'app/etc/config.php' file and reports if they are up to date or not

```bash
bin/magento module:config:status
```

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `module:disable`

Disables specified modules

```bash
bin/magento module:disable [-f|--force] [--all] [-c|--clear-static-content] [--magento-init-params MAGENTO-INIT-PARAMS] [--] [<module>...]
```


### `module`

Name of the module
   
-  Default: `[]`
   
-  Array

### `--force`, `-f`

Bypass dependencies check
   
-  Default: `false`
-  Does not accept a value

### `--all`

Disable all modules
   
-  Default: `false`
-  Does not accept a value

### `--clear-static-content`, `-c`

Clear generated static view files. Necessary, if the module(s) have static view files
   
-  Default: `false`
-  Does not accept a value

### `--magento-init-params`

Add to any command to customize Magento initialization parameters For example: &quot;MAGE_MODE=developer&amp;MAGE_DIRS[base][path]=/var/www/example.com&amp;MAGE_DIRS[cache][path]=/var/tmp/cache&quot;
   
-  Requires a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `module:enable`

Enables specified modules

```bash
bin/magento module:enable [-f|--force] [--all] [-c|--clear-static-content] [--magento-init-params MAGENTO-INIT-PARAMS] [--] [<module>...]
```


### `module`

Name of the module
   
-  Default: `[]`
   
-  Array

### `--force`, `-f`

Bypass dependencies check
   
-  Default: `false`
-  Does not accept a value

### `--all`

Enable all modules
   
-  Default: `false`
-  Does not accept a value

### `--clear-static-content`, `-c`

Clear generated static view files. Necessary, if the module(s) have static view files
   
-  Default: `false`
-  Does not accept a value

### `--magento-init-params`

Add to any command to customize Magento initialization parameters For example: &quot;MAGE_MODE=developer&amp;MAGE_DIRS[base][path]=/var/www/example.com&amp;MAGE_DIRS[cache][path]=/var/tmp/cache&quot;
   
-  Requires a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `module:status`

Displays status of modules

```bash
bin/magento module:status [--enabled] [--disabled] [--magento-init-params MAGENTO-INIT-PARAMS] [--] [<module-names>...]
```


### `module-names`

Optional module name
   
-  Default: `[]`
   
-  Array

### `--enabled`

Print only enabled modules
   
-  Default: `false`
-  Does not accept a value

### `--disabled`

Print only disabled modules
   
-  Default: `false`
-  Does not accept a value

### `--magento-init-params`

Add to any command to customize Magento initialization parameters For example: &quot;MAGE_MODE=developer&amp;MAGE_DIRS[base][path]=/var/www/example.com&amp;MAGE_DIRS[cache][path]=/var/tmp/cache&quot;
   
-  Requires a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `module:uninstall`

Uninstalls modules installed by composer

```bash
bin/magento module:uninstall [-r|--remove-data] [--backup-code] [--backup-media] [--backup-db] [--non-composer] [-c|--clear-static-content] [--magento-init-params MAGENTO-INIT-PARAMS] [--] <module>...
```


### `module`

Name of the module
   
-  Default: `[]`
   
-  Required
-  Array

### `--remove-data`, `-r`

Remove data installed by module(s)
   
-  Default: `false`
-  Does not accept a value

### `--backup-code`

Take code and configuration files backup (excluding temporary files)
   
-  Default: `false`
-  Does not accept a value

### `--backup-media`

Take media backup
   
-  Default: `false`
-  Does not accept a value

### `--backup-db`

Take complete database backup
   
-  Default: `false`
-  Does not accept a value

### `--non-composer`

All modules, that will be past here will be non composer based
   
-  Default: `false`
-  Does not accept a value

### `--clear-static-content`, `-c`

Clear generated static view files. Necessary, if the module(s) have static view files
   
-  Default: `false`
-  Does not accept a value

### `--magento-init-params`

Add to any command to customize Magento initialization parameters For example: &quot;MAGE_MODE=developer&amp;MAGE_DIRS[base][path]=/var/www/example.com&amp;MAGE_DIRS[cache][path]=/var/tmp/cache&quot;
   
-  Requires a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `newrelic:create:deploy-marker`

Check the deploy queue for entries and create an appropriate deploy marker.

```bash
bin/magento newrelic:create:deploy-marker <message> <change_log> [<user> [<revision>]]
```


### `message`

Deploy Message?
   
-  Required

### `change_log`

Change Log?
   
-  Required

### `user`

Deployment User
   

### `revision`

Revision
   

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `queue:consumers:list`

List of MessageQueue consumers

```bash
bin/magento queue:consumers:list
```

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `queue:consumers:restart`

Restart MessageQueue consumers

```bash
bin/magento queue:consumers:restart
```

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `queue:consumers:start`

Start MessageQueue consumer

```bash
bin/magento queue:consumers:start [--max-messages MAX-MESSAGES] [--batch-size BATCH-SIZE] [--area-code AREA-CODE] [--single-thread] [--multi-process [MULTI-PROCESS]] [--pid-file-path PID-FILE-PATH] [--] <consumer>
```


### `consumer`

The name of the consumer to be started.
   
-  Required

### `--max-messages`

The number of messages to be processed by the consumer before process termination. If not specified - terminate after processing all queued messages.
   
-  Requires a value

### `--batch-size`

The number of messages per batch. Applicable for the batch consumer only.
   
-  Requires a value

### `--area-code`

The preferred area (global, adminhtml, etc...) default is global.
   
-  Requires a value

### `--single-thread`

This option prevents running multiple copies of one consumer simultaneously.
   
-  Default: `false`
-  Does not accept a value

### `--multi-process`

The number of processes per consumer.
   
-  Accepts a value

### `--pid-file-path`

The file path for saving PID (This option is deprecated, use --single-thread instead)
   
-  Requires a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `remote-storage:sync`

Synchronize media files with remote storage.

```bash
bin/magento remote-storage:sync
```

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `saas:resync`

Re-syncs feed data to SaaS service.

```bash
bin/magento saas:resync [--no-reindex] [--feed FEED] [--cleanup-feed]
```

### `--no-reindex`

Run re-submission of feed data to SaaS service only. Does not re-index.
   
-  Default: `false`
-  Does not accept a value

### `--feed`

Feed name to fully re-sync to SaaS service. Available feeds: 
   
-  Requires a value

### `--cleanup-feed`

Force to cleanup feed indexer table before sync.
   
-  Default: `false`
-  Does not accept a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `sampledata:deploy`

Deploy sample data modules for composer-based Magento installations

```bash
bin/magento sampledata:deploy [--no-update]
```

### `--no-update`

Update composer.json without executing composer update
   
-  Default: `false`
-  Does not accept a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `sampledata:remove`

Remove all sample data packages from composer.json

```bash
bin/magento sampledata:remove [--no-update]
```

### `--no-update`

Update composer.json without executing composer update
   
-  Default: `false`
-  Does not accept a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `sampledata:reset`

Reset all sample data modules for re-installation

```bash
bin/magento sampledata:reset
```

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `security:recaptcha:disable-for-user-forgot-password`

Disable reCAPTCHA for admin user forgot password form

```bash
bin/magento security:recaptcha:disable-for-user-forgot-password
```

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `security:recaptcha:disable-for-user-login`

Disable reCAPTCHA for admin user login form

```bash
bin/magento security:recaptcha:disable-for-user-login
```

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `security:tfa:google:set-secret`

Set the secret used for Google OTP generation.

```bash
bin/magento security:tfa:google:set-secret <user> <secret>
```


### `user`

Username
   
-  Required

### `secret`

Secret
   
-  Required

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `security:tfa:providers`

List all available providers

```bash
bin/magento security:tfa:providers
```

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `security:tfa:reset`

Reset configuration for one user

```bash
bin/magento security:tfa:reset <user> <provider>
```


### `user`

Username
   
-  Required

### `provider`

Provider code
   
-  Required

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `setup:backup`

Takes backup of Magento Application code base, media and database

```bash
bin/magento setup:backup [--code] [--media] [--db] [--magento-init-params MAGENTO-INIT-PARAMS]
```

### `--code`

Take code and configuration files backup (excluding temporary files)
   
-  Default: `false`
-  Does not accept a value

### `--media`

Take media backup
   
-  Default: `false`
-  Does not accept a value

### `--db`

Take complete database backup
   
-  Default: `false`
-  Does not accept a value

### `--magento-init-params`

Add to any command to customize Magento initialization parameters For example: &quot;MAGE_MODE=developer&amp;MAGE_DIRS[base][path]=/var/www/example.com&amp;MAGE_DIRS[cache][path]=/var/tmp/cache&quot;
   
-  Requires a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `setup:config:set`

Creates or modifies the deployment configuration

```bash
bin/magento setup:config:set [--backend-frontname BACKEND-FRONTNAME] [--enable-debug-logging ENABLE-DEBUG-LOGGING] [--enable-syslog-logging ENABLE-SYSLOG-LOGGING] [--remote-storage-driver REMOTE-STORAGE-DRIVER] [--remote-storage-prefix REMOTE-STORAGE-PREFIX] [--remote-storage-endpoint REMOTE-STORAGE-ENDPOINT] [--remote-storage-bucket REMOTE-STORAGE-BUCKET] [--remote-storage-region REMOTE-STORAGE-REGION] [--remote-storage-key REMOTE-STORAGE-KEY] [--remote-storage-secret REMOTE-STORAGE-SECRET] [--remote-storage-path-style REMOTE-STORAGE-PATH-STYLE] [--id_salt ID_SALT] [--amqp-host AMQP-HOST] [--amqp-port AMQP-PORT] [--amqp-user AMQP-USER] [--amqp-password AMQP-PASSWORD] [--amqp-virtualhost AMQP-VIRTUALHOST] [--amqp-ssl AMQP-SSL] [--amqp-ssl-options AMQP-SSL-OPTIONS] [--config-async CONFIG-ASYNC] [--consumers-wait-for-messages CONSUMERS-WAIT-FOR-MESSAGES] [--queue-default-connection QUEUE-DEFAULT-CONNECTION] [--key KEY] [--db-host DB-HOST] [--db-name DB-NAME] [--db-user DB-USER] [--db-engine DB-ENGINE] [--db-password DB-PASSWORD] [--db-prefix DB-PREFIX] [--db-model DB-MODEL] [--db-init-statements DB-INIT-STATEMENTS] [-s|--skip-db-validation] [--http-cache-hosts HTTP-CACHE-HOSTS] [--db-ssl-key DB-SSL-KEY] [--db-ssl-cert DB-SSL-CERT] [--db-ssl-ca DB-SSL-CA] [--db-ssl-verify] [--session-save SESSION-SAVE] [--session-save-redis-host SESSION-SAVE-REDIS-HOST] [--session-save-redis-port SESSION-SAVE-REDIS-PORT] [--session-save-redis-password SESSION-SAVE-REDIS-PASSWORD] [--session-save-redis-timeout SESSION-SAVE-REDIS-TIMEOUT] [--session-save-redis-persistent-id SESSION-SAVE-REDIS-PERSISTENT-ID] [--session-save-redis-db SESSION-SAVE-REDIS-DB] [--session-save-redis-compression-threshold SESSION-SAVE-REDIS-COMPRESSION-THRESHOLD] [--session-save-redis-compression-lib SESSION-SAVE-REDIS-COMPRESSION-LIB] [--session-save-redis-log-level SESSION-SAVE-REDIS-LOG-LEVEL] [--session-save-redis-max-concurrency SESSION-SAVE-REDIS-MAX-CONCURRENCY] [--session-save-redis-break-after-frontend SESSION-SAVE-REDIS-BREAK-AFTER-FRONTEND] [--session-save-redis-break-after-adminhtml SESSION-SAVE-REDIS-BREAK-AFTER-ADMINHTML] [--session-save-redis-first-lifetime SESSION-SAVE-REDIS-FIRST-LIFETIME] [--session-save-redis-bot-first-lifetime SESSION-SAVE-REDIS-BOT-FIRST-LIFETIME] [--session-save-redis-bot-lifetime SESSION-SAVE-REDIS-BOT-LIFETIME] [--session-save-redis-disable-locking SESSION-SAVE-REDIS-DISABLE-LOCKING] [--session-save-redis-min-lifetime SESSION-SAVE-REDIS-MIN-LIFETIME] [--session-save-redis-max-lifetime SESSION-SAVE-REDIS-MAX-LIFETIME] [--session-save-redis-sentinel-master SESSION-SAVE-REDIS-SENTINEL-MASTER] [--session-save-redis-sentinel-servers SESSION-SAVE-REDIS-SENTINEL-SERVERS] [--session-save-redis-sentinel-verify-master SESSION-SAVE-REDIS-SENTINEL-VERIFY-MASTER] [--session-save-redis-sentinel-connect-retries SESSION-SAVE-REDIS-SENTINEL-CONNECT-RETRIES] [--cache-backend CACHE-BACKEND] [--cache-backend-redis-server CACHE-BACKEND-REDIS-SERVER] [--cache-backend-redis-db CACHE-BACKEND-REDIS-DB] [--cache-backend-redis-port CACHE-BACKEND-REDIS-PORT] [--cache-backend-redis-password CACHE-BACKEND-REDIS-PASSWORD] [--cache-backend-redis-compress-data CACHE-BACKEND-REDIS-COMPRESS-DATA] [--cache-backend-redis-compression-lib CACHE-BACKEND-REDIS-COMPRESSION-LIB] [--cache-id-prefix CACHE-ID-PREFIX] [--allow-parallel-generation] [--page-cache PAGE-CACHE] [--page-cache-redis-server PAGE-CACHE-REDIS-SERVER] [--page-cache-redis-db PAGE-CACHE-REDIS-DB] [--page-cache-redis-port PAGE-CACHE-REDIS-PORT] [--page-cache-redis-password PAGE-CACHE-REDIS-PASSWORD] [--page-cache-redis-compress-data PAGE-CACHE-REDIS-COMPRESS-DATA] [--page-cache-redis-compression-lib PAGE-CACHE-REDIS-COMPRESSION-LIB] [--page-cache-id-prefix PAGE-CACHE-ID-PREFIX] [--lock-provider LOCK-PROVIDER] [--lock-db-prefix LOCK-DB-PREFIX] [--lock-zookeeper-host LOCK-ZOOKEEPER-HOST] [--lock-zookeeper-path LOCK-ZOOKEEPER-PATH] [--lock-file-path LOCK-FILE-PATH] [--document-root-is-pub DOCUMENT-ROOT-IS-PUB] [--backpressure-logger BACKPRESSURE-LOGGER] [--backpressure-logger-redis-server BACKPRESSURE-LOGGER-REDIS-SERVER] [--backpressure-logger-redis-port BACKPRESSURE-LOGGER-REDIS-PORT] [--backpressure-logger-redis-timeout BACKPRESSURE-LOGGER-REDIS-TIMEOUT] [--backpressure-logger-redis-persistent BACKPRESSURE-LOGGER-REDIS-PERSISTENT] [--backpressure-logger-redis-db BACKPRESSURE-LOGGER-REDIS-DB] [--backpressure-logger-redis-password BACKPRESSURE-LOGGER-REDIS-PASSWORD] [--backpressure-logger-redis-user BACKPRESSURE-LOGGER-REDIS-USER] [--backpressure-logger-id-prefix BACKPRESSURE-LOGGER-ID-PREFIX] [--magento-init-params MAGENTO-INIT-PARAMS]
```

### `--backend-frontname`

Backend frontname (will be autogenerated if missing)
   
-  Requires a value

### `--enable-debug-logging`

Enable debug logging
   
-  Requires a value

### `--enable-syslog-logging`

Enable syslog logging
   
-  Requires a value

### `--remote-storage-driver`

Remote storage driver
   
-  Requires a value

### `--remote-storage-prefix`

Remote storage prefix
   
-  Default: ``
-  Requires a value

### `--remote-storage-endpoint`

Remote storage endpoint
   
-  Requires a value

### `--remote-storage-bucket`

Remote storage bucket
   
-  Requires a value

### `--remote-storage-region`

Remote storage region
   
-  Requires a value

### `--remote-storage-key`

Remote storage access key
   
-  Default: ``
-  Requires a value

### `--remote-storage-secret`

Remote storage secret key
   
-  Default: ``
-  Requires a value

### `--remote-storage-path-style`

Remote storage path style
   
-  Default: `0`
-  Requires a value

### `--id_salt`

GraphQl Salt
   
-  Requires a value

### `--amqp-host`

Amqp server host
   
-  Default: ``
-  Requires a value

### `--amqp-port`

Amqp server port
   
-  Default: `5672`
-  Requires a value

### `--amqp-user`

Amqp server username
   
-  Default: ``
-  Requires a value

### `--amqp-password`

Amqp server password
   
-  Default: ``
-  Requires a value

### `--amqp-virtualhost`

Amqp virtualhost
   
-  Default: `/`
-  Requires a value

### `--amqp-ssl`

Amqp SSL
   
-  Default: ``
-  Requires a value

### `--amqp-ssl-options`

Amqp SSL Options (JSON)
   
-  Default: ``
-  Requires a value

### `--config-async`

Enable async Admin Config Save? 1 - Yes, 0 - No
   
-  Requires a value

### `--consumers-wait-for-messages`

Should consumers wait for a message from the queue? 1 - Yes, 0 - No
   
-  Requires a value

### `--queue-default-connection`

Message queues default connection. Can be 'db', 'amqp' or a custom queue system.The queue system must be installed and configured, otherwise messages won't be processed correctly.
   
-  Requires a value

### `--key`

Encryption key
   
-  Requires a value

### `--db-host`

Database server host
   
-  Requires a value

### `--db-name`

Database name
   
-  Requires a value

### `--db-user`

Database server username
   
-  Requires a value

### `--db-engine`

Database server engine
   
-  Requires a value

### `--db-password`

Database server password
   
-  Requires a value

### `--db-prefix`

Database table prefix
   
-  Requires a value

### `--db-model`

Database type
   
-  Requires a value

### `--db-init-statements`

Database  initial set of commands
   
-  Requires a value

### `--skip-db-validation`, `-s`

If specified, then db connection validation will be skipped
   
-  Default: `false`
-  Does not accept a value

### `--http-cache-hosts`

http Cache hosts
   
-  Requires a value

### `--db-ssl-key`

Full path of client key file in order to establish db connection through SSL
   
-  Default: ``
-  Requires a value

### `--db-ssl-cert`

Full path of client certificate file in order to establish db connection through SSL
   
-  Default: ``
-  Requires a value

### `--db-ssl-ca`

Full path of server certificate file in order to establish db connection through SSL
   
-  Default: ``
-  Requires a value

### `--db-ssl-verify`

Verify server certification
   
-  Default: `false`
-  Does not accept a value

### `--session-save`

Session save handler
   
-  Requires a value

### `--session-save-redis-host`

Fully qualified host name, IP address, or absolute path if using UNIX sockets
   
-  Requires a value

### `--session-save-redis-port`

Redis server listen port
   
-  Requires a value

### `--session-save-redis-password`

Redis server password
   
-  Requires a value

### `--session-save-redis-timeout`

Connection timeout, in seconds
   
-  Requires a value

### `--session-save-redis-persistent-id`

Unique string to enable persistent connections
   
-  Requires a value

### `--session-save-redis-db`

Redis database number
   
-  Requires a value

### `--session-save-redis-compression-threshold`

Redis compression threshold
   
-  Requires a value

### `--session-save-redis-compression-lib`

Redis compression library. Values: gzip (default), lzf, lz4, snappy
   
-  Requires a value

### `--session-save-redis-log-level`

Redis log level. Values: 0 (least verbose) to 7 (most verbose)
   
-  Requires a value

### `--session-save-redis-max-concurrency`

Maximum number of processes that can wait for a lock on one session
   
-  Requires a value

### `--session-save-redis-break-after-frontend`

Number of seconds to wait before trying to break a lock for frontend session
   
-  Requires a value

### `--session-save-redis-break-after-adminhtml`

Number of seconds to wait before trying to break a lock for Admin session
   
-  Requires a value

### `--session-save-redis-first-lifetime`

Lifetime, in seconds, of session for non-bots on the first write (use 0 to disable)
   
-  Requires a value

### `--session-save-redis-bot-first-lifetime`

Lifetime, in seconds, of session for bots on the first write (use 0 to disable)
   
-  Requires a value

### `--session-save-redis-bot-lifetime`

Lifetime of session for bots on subsequent writes (use 0 to disable)
   
-  Requires a value

### `--session-save-redis-disable-locking`

Redis disable locking. Values: false (default), true
   
-  Requires a value

### `--session-save-redis-min-lifetime`

Redis min session lifetime, in seconds
   
-  Requires a value

### `--session-save-redis-max-lifetime`

Redis max session lifetime, in seconds
   
-  Requires a value

### `--session-save-redis-sentinel-master`

Redis Sentinel master
   
-  Requires a value

### `--session-save-redis-sentinel-servers`

Redis Sentinel servers, comma separated
   
-  Requires a value

### `--session-save-redis-sentinel-verify-master`

Redis Sentinel verify master. Values: false (default), true
   
-  Requires a value

### `--session-save-redis-sentinel-connect-retries`

Redis Sentinel connect retries.
   
-  Requires a value

### `--cache-backend`

Default cache handler
   
-  Requires a value

### `--cache-backend-redis-server`

Redis server
   
-  Requires a value

### `--cache-backend-redis-db`

Database number for the cache
   
-  Requires a value

### `--cache-backend-redis-port`

Redis server listen port
   
-  Requires a value

### `--cache-backend-redis-password`

Redis server password
   
-  Requires a value

### `--cache-backend-redis-compress-data`

Set to 0 to disable compression (default is 1, enabled)
   
-  Requires a value

### `--cache-backend-redis-compression-lib`

Compression lib to use [snappy,lzf,l4z,zstd,gzip] (leave blank to determine automatically)
   
-  Requires a value

### `--cache-id-prefix`

ID prefix for cache keys
   
-  Requires a value

### `--allow-parallel-generation`

Allow generate cache in non-blocking way
   
-  Default: `false`
-  Does not accept a value

### `--page-cache`

Default cache handler
   
-  Requires a value

### `--page-cache-redis-server`

Redis server
   
-  Requires a value

### `--page-cache-redis-db`

Database number for the cache
   
-  Requires a value

### `--page-cache-redis-port`

Redis server listen port
   
-  Requires a value

### `--page-cache-redis-password`

Redis server password
   
-  Requires a value

### `--page-cache-redis-compress-data`

Set to 1 to compress the full page cache (use 0 to disable)
   
-  Requires a value

### `--page-cache-redis-compression-lib`

Compression library to use [snappy,lzf,l4z,zstd,gzip] (leave blank to determine automatically)
   
-  Requires a value

### `--page-cache-id-prefix`

ID prefix for cache keys
   
-  Requires a value

### `--lock-provider`

Lock provider name
   
-  Requires a value

### `--lock-db-prefix`

Installation specific lock prefix to avoid lock conflicts
   
-  Requires a value

### `--lock-zookeeper-host`

Host and port to connect to Zookeeper cluster. For example: 127.0.0.1:2181
   
-  Requires a value

### `--lock-zookeeper-path`

The path where Zookeeper will save locks. The default path is: /magento/locks
   
-  Requires a value

### `--lock-file-path`

The path where file locks will be saved.
   
-  Requires a value

### `--document-root-is-pub`

Flag to show is Pub is on root, can be true or false only
   
-  Requires a value

### `--backpressure-logger`

Backpressure logger handler
   
-  Requires a value

### `--backpressure-logger-redis-server`

Redis server
   
-  Requires a value

### `--backpressure-logger-redis-port`

Redis server listen port
   
-  Requires a value

### `--backpressure-logger-redis-timeout`

Redis server timeout
   
-  Requires a value

### `--backpressure-logger-redis-persistent`

Redis persistent
   
-  Requires a value

### `--backpressure-logger-redis-db`

Redis db number
   
-  Requires a value

### `--backpressure-logger-redis-password`

Redis server password
   
-  Requires a value

### `--backpressure-logger-redis-user`

Redis server user
   
-  Requires a value

### `--backpressure-logger-id-prefix`

ID prefix for keys
   
-  Requires a value

### `--magento-init-params`

Add to any command to customize Magento initialization parameters For example: &quot;MAGE_MODE=developer&amp;MAGE_DIRS[base][path]=/var/www/example.com&amp;MAGE_DIRS[cache][path]=/var/tmp/cache&quot;
   
-  Requires a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `setup:db-data:upgrade`

Installs and upgrades data in the DB

```bash
bin/magento setup:db-data:upgrade [--magento-init-params MAGENTO-INIT-PARAMS]
```

### `--magento-init-params`

Add to any command to customize Magento initialization parameters For example: &quot;MAGE_MODE=developer&amp;MAGE_DIRS[base][path]=/var/www/example.com&amp;MAGE_DIRS[cache][path]=/var/tmp/cache&quot;
   
-  Requires a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `setup:db-declaration:generate-patch`

Generate patch and put it in specific folder.

```bash
bin/magento setup:db-declaration:generate-patch [--revertable [REVERTABLE]] [--type [TYPE]] [--] <module> <patch>
```


### `module`

Module name
   
-  Required

### `patch`

Patch name
   
-  Required

### `--revertable`

Check whether patch is revertable or not.
   
-  Default: `false`
-  Accepts a value

### `--type`

Find out what type of patch should be generated. Available values: `data`, `schema`.
   
-  Default: `data`
-  Accepts a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `setup:db-declaration:generate-whitelist`

Generate whitelist of tables and columns that are allowed to be edited by declaration installer

```bash
bin/magento setup:db-declaration:generate-whitelist [--module-name [MODULE-NAME]]
```

### `--module-name`

Name of the module where whitelist will be generated
   
-  Default: `all`
-  Accepts a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `setup:db-schema:upgrade`

Installs and upgrades the DB schema

```bash
bin/magento setup:db-schema:upgrade [--convert-old-scripts [CONVERT-OLD-SCRIPTS]] [--magento-init-params MAGENTO-INIT-PARAMS]
```

### `--convert-old-scripts`

Allows to convert old scripts (InstallSchema, UpgradeSchema) to db_schema.xml format
   
-  Default: `false`
-  Accepts a value

### `--magento-init-params`

Add to any command to customize Magento initialization parameters For example: &quot;MAGE_MODE=developer&amp;MAGE_DIRS[base][path]=/var/www/example.com&amp;MAGE_DIRS[cache][path]=/var/tmp/cache&quot;
   
-  Requires a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `setup:db:status`

Checks if DB schema or data requires upgrade

```bash
bin/magento setup:db:status [--magento-init-params MAGENTO-INIT-PARAMS]
```

### `--magento-init-params`

Add to any command to customize Magento initialization parameters For example: &quot;MAGE_MODE=developer&amp;MAGE_DIRS[base][path]=/var/www/example.com&amp;MAGE_DIRS[cache][path]=/var/tmp/cache&quot;
   
-  Requires a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `setup:di:compile`

Generates DI configuration and all missing classes that can be auto-generated

```bash
bin/magento setup:di:compile
```

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `setup:install`

Installs the Magento application

```bash
bin/magento setup:install [--backend-frontname BACKEND-FRONTNAME] [--enable-debug-logging ENABLE-DEBUG-LOGGING] [--enable-syslog-logging ENABLE-SYSLOG-LOGGING] [--remote-storage-driver REMOTE-STORAGE-DRIVER] [--remote-storage-prefix REMOTE-STORAGE-PREFIX] [--remote-storage-endpoint REMOTE-STORAGE-ENDPOINT] [--remote-storage-bucket REMOTE-STORAGE-BUCKET] [--remote-storage-region REMOTE-STORAGE-REGION] [--remote-storage-key REMOTE-STORAGE-KEY] [--remote-storage-secret REMOTE-STORAGE-SECRET] [--remote-storage-path-style REMOTE-STORAGE-PATH-STYLE] [--id_salt ID_SALT] [--amqp-host AMQP-HOST] [--amqp-port AMQP-PORT] [--amqp-user AMQP-USER] [--amqp-password AMQP-PASSWORD] [--amqp-virtualhost AMQP-VIRTUALHOST] [--amqp-ssl AMQP-SSL] [--amqp-ssl-options AMQP-SSL-OPTIONS] [--config-async CONFIG-ASYNC] [--consumers-wait-for-messages CONSUMERS-WAIT-FOR-MESSAGES] [--queue-default-connection QUEUE-DEFAULT-CONNECTION] [--key KEY] [--db-host DB-HOST] [--db-name DB-NAME] [--db-user DB-USER] [--db-engine DB-ENGINE] [--db-password DB-PASSWORD] [--db-prefix DB-PREFIX] [--db-model DB-MODEL] [--db-init-statements DB-INIT-STATEMENTS] [-s|--skip-db-validation] [--http-cache-hosts HTTP-CACHE-HOSTS] [--db-ssl-key DB-SSL-KEY] [--db-ssl-cert DB-SSL-CERT] [--db-ssl-ca DB-SSL-CA] [--db-ssl-verify] [--session-save SESSION-SAVE] [--session-save-redis-host SESSION-SAVE-REDIS-HOST] [--session-save-redis-port SESSION-SAVE-REDIS-PORT] [--session-save-redis-password SESSION-SAVE-REDIS-PASSWORD] [--session-save-redis-timeout SESSION-SAVE-REDIS-TIMEOUT] [--session-save-redis-persistent-id SESSION-SAVE-REDIS-PERSISTENT-ID] [--session-save-redis-db SESSION-SAVE-REDIS-DB] [--session-save-redis-compression-threshold SESSION-SAVE-REDIS-COMPRESSION-THRESHOLD] [--session-save-redis-compression-lib SESSION-SAVE-REDIS-COMPRESSION-LIB] [--session-save-redis-log-level SESSION-SAVE-REDIS-LOG-LEVEL] [--session-save-redis-max-concurrency SESSION-SAVE-REDIS-MAX-CONCURRENCY] [--session-save-redis-break-after-frontend SESSION-SAVE-REDIS-BREAK-AFTER-FRONTEND] [--session-save-redis-break-after-adminhtml SESSION-SAVE-REDIS-BREAK-AFTER-ADMINHTML] [--session-save-redis-first-lifetime SESSION-SAVE-REDIS-FIRST-LIFETIME] [--session-save-redis-bot-first-lifetime SESSION-SAVE-REDIS-BOT-FIRST-LIFETIME] [--session-save-redis-bot-lifetime SESSION-SAVE-REDIS-BOT-LIFETIME] [--session-save-redis-disable-locking SESSION-SAVE-REDIS-DISABLE-LOCKING] [--session-save-redis-min-lifetime SESSION-SAVE-REDIS-MIN-LIFETIME] [--session-save-redis-max-lifetime SESSION-SAVE-REDIS-MAX-LIFETIME] [--session-save-redis-sentinel-master SESSION-SAVE-REDIS-SENTINEL-MASTER] [--session-save-redis-sentinel-servers SESSION-SAVE-REDIS-SENTINEL-SERVERS] [--session-save-redis-sentinel-verify-master SESSION-SAVE-REDIS-SENTINEL-VERIFY-MASTER] [--session-save-redis-sentinel-connect-retries SESSION-SAVE-REDIS-SENTINEL-CONNECT-RETRIES] [--cache-backend CACHE-BACKEND] [--cache-backend-redis-server CACHE-BACKEND-REDIS-SERVER] [--cache-backend-redis-db CACHE-BACKEND-REDIS-DB] [--cache-backend-redis-port CACHE-BACKEND-REDIS-PORT] [--cache-backend-redis-password CACHE-BACKEND-REDIS-PASSWORD] [--cache-backend-redis-compress-data CACHE-BACKEND-REDIS-COMPRESS-DATA] [--cache-backend-redis-compression-lib CACHE-BACKEND-REDIS-COMPRESSION-LIB] [--cache-id-prefix CACHE-ID-PREFIX] [--allow-parallel-generation] [--page-cache PAGE-CACHE] [--page-cache-redis-server PAGE-CACHE-REDIS-SERVER] [--page-cache-redis-db PAGE-CACHE-REDIS-DB] [--page-cache-redis-port PAGE-CACHE-REDIS-PORT] [--page-cache-redis-password PAGE-CACHE-REDIS-PASSWORD] [--page-cache-redis-compress-data PAGE-CACHE-REDIS-COMPRESS-DATA] [--page-cache-redis-compression-lib PAGE-CACHE-REDIS-COMPRESSION-LIB] [--page-cache-id-prefix PAGE-CACHE-ID-PREFIX] [--lock-provider LOCK-PROVIDER] [--lock-db-prefix LOCK-DB-PREFIX] [--lock-zookeeper-host LOCK-ZOOKEEPER-HOST] [--lock-zookeeper-path LOCK-ZOOKEEPER-PATH] [--lock-file-path LOCK-FILE-PATH] [--document-root-is-pub DOCUMENT-ROOT-IS-PUB] [--backpressure-logger BACKPRESSURE-LOGGER] [--backpressure-logger-redis-server BACKPRESSURE-LOGGER-REDIS-SERVER] [--backpressure-logger-redis-port BACKPRESSURE-LOGGER-REDIS-PORT] [--backpressure-logger-redis-timeout BACKPRESSURE-LOGGER-REDIS-TIMEOUT] [--backpressure-logger-redis-persistent BACKPRESSURE-LOGGER-REDIS-PERSISTENT] [--backpressure-logger-redis-db BACKPRESSURE-LOGGER-REDIS-DB] [--backpressure-logger-redis-password BACKPRESSURE-LOGGER-REDIS-PASSWORD] [--backpressure-logger-redis-user BACKPRESSURE-LOGGER-REDIS-USER] [--backpressure-logger-id-prefix BACKPRESSURE-LOGGER-ID-PREFIX] [--base-url BASE-URL] [--language LANGUAGE] [--timezone TIMEZONE] [--currency CURRENCY] [--use-rewrites USE-REWRITES] [--use-secure USE-SECURE] [--base-url-secure BASE-URL-SECURE] [--use-secure-admin USE-SECURE-ADMIN] [--admin-use-security-key ADMIN-USE-SECURITY-KEY] [--admin-user [ADMIN-USER]] [--admin-password [ADMIN-PASSWORD]] [--admin-email [ADMIN-EMAIL]] [--admin-firstname [ADMIN-FIRSTNAME]] [--admin-lastname [ADMIN-LASTNAME]] [--search-engine SEARCH-ENGINE] [--elasticsearch-host ELASTICSEARCH-HOST] [--elasticsearch-port ELASTICSEARCH-PORT] [--elasticsearch-enable-auth ELASTICSEARCH-ENABLE-AUTH] [--elasticsearch-username ELASTICSEARCH-USERNAME] [--elasticsearch-password ELASTICSEARCH-PASSWORD] [--elasticsearch-index-prefix ELASTICSEARCH-INDEX-PREFIX] [--elasticsearch-timeout ELASTICSEARCH-TIMEOUT] [--opensearch-host OPENSEARCH-HOST] [--opensearch-port OPENSEARCH-PORT] [--opensearch-enable-auth OPENSEARCH-ENABLE-AUTH] [--opensearch-username OPENSEARCH-USERNAME] [--opensearch-password OPENSEARCH-PASSWORD] [--opensearch-index-prefix OPENSEARCH-INDEX-PREFIX] [--opensearch-timeout OPENSEARCH-TIMEOUT] [--cleanup-database] [--sales-order-increment-prefix SALES-ORDER-INCREMENT-PREFIX] [--use-sample-data] [--enable-modules [ENABLE-MODULES]] [--disable-modules [DISABLE-MODULES]] [--convert-old-scripts [CONVERT-OLD-SCRIPTS]] [-i|--interactive] [--safe-mode [SAFE-MODE]] [--data-restore [DATA-RESTORE]] [--dry-run [DRY-RUN]] [--magento-init-params MAGENTO-INIT-PARAMS]
```

### `--backend-frontname`

Backend frontname (will be autogenerated if missing)
   
-  Requires a value

### `--enable-debug-logging`

Enable debug logging
   
-  Requires a value

### `--enable-syslog-logging`

Enable syslog logging
   
-  Requires a value

### `--remote-storage-driver`

Remote storage driver
   
-  Requires a value

### `--remote-storage-prefix`

Remote storage prefix
   
-  Default: ``
-  Requires a value

### `--remote-storage-endpoint`

Remote storage endpoint
   
-  Requires a value

### `--remote-storage-bucket`

Remote storage bucket
   
-  Requires a value

### `--remote-storage-region`

Remote storage region
   
-  Requires a value

### `--remote-storage-key`

Remote storage access key
   
-  Default: ``
-  Requires a value

### `--remote-storage-secret`

Remote storage secret key
   
-  Default: ``
-  Requires a value

### `--remote-storage-path-style`

Remote storage path style
   
-  Default: `0`
-  Requires a value

### `--id_salt`

GraphQl Salt
   
-  Requires a value

### `--amqp-host`

Amqp server host
   
-  Default: ``
-  Requires a value

### `--amqp-port`

Amqp server port
   
-  Default: `5672`
-  Requires a value

### `--amqp-user`

Amqp server username
   
-  Default: ``
-  Requires a value

### `--amqp-password`

Amqp server password
   
-  Default: ``
-  Requires a value

### `--amqp-virtualhost`

Amqp virtualhost
   
-  Default: `/`
-  Requires a value

### `--amqp-ssl`

Amqp SSL
   
-  Default: ``
-  Requires a value

### `--amqp-ssl-options`

Amqp SSL Options (JSON)
   
-  Default: ``
-  Requires a value

### `--config-async`

Enable async Admin Config Save? 1 - Yes, 0 - No
   
-  Requires a value

### `--consumers-wait-for-messages`

Should consumers wait for a message from the queue? 1 - Yes, 0 - No
   
-  Requires a value

### `--queue-default-connection`

Message queues default connection. Can be 'db', 'amqp' or a custom queue system.The queue system must be installed and configured, otherwise messages won't be processed correctly.
   
-  Requires a value

### `--key`

Encryption key
   
-  Requires a value

### `--db-host`

Database server host
   
-  Requires a value

### `--db-name`

Database name
   
-  Requires a value

### `--db-user`

Database server username
   
-  Requires a value

### `--db-engine`

Database server engine
   
-  Requires a value

### `--db-password`

Database server password
   
-  Requires a value

### `--db-prefix`

Database table prefix
   
-  Requires a value

### `--db-model`

Database type
   
-  Requires a value

### `--db-init-statements`

Database  initial set of commands
   
-  Requires a value

### `--skip-db-validation`, `-s`

If specified, then db connection validation will be skipped
   
-  Default: `false`
-  Does not accept a value

### `--http-cache-hosts`

http Cache hosts
   
-  Requires a value

### `--db-ssl-key`

Full path of client key file in order to establish db connection through SSL
   
-  Default: ``
-  Requires a value

### `--db-ssl-cert`

Full path of client certificate file in order to establish db connection through SSL
   
-  Default: ``
-  Requires a value

### `--db-ssl-ca`

Full path of server certificate file in order to establish db connection through SSL
   
-  Default: ``
-  Requires a value

### `--db-ssl-verify`

Verify server certification
   
-  Default: `false`
-  Does not accept a value

### `--session-save`

Session save handler
   
-  Requires a value

### `--session-save-redis-host`

Fully qualified host name, IP address, or absolute path if using UNIX sockets
   
-  Requires a value

### `--session-save-redis-port`

Redis server listen port
   
-  Requires a value

### `--session-save-redis-password`

Redis server password
   
-  Requires a value

### `--session-save-redis-timeout`

Connection timeout, in seconds
   
-  Requires a value

### `--session-save-redis-persistent-id`

Unique string to enable persistent connections
   
-  Requires a value

### `--session-save-redis-db`

Redis database number
   
-  Requires a value

### `--session-save-redis-compression-threshold`

Redis compression threshold
   
-  Requires a value

### `--session-save-redis-compression-lib`

Redis compression library. Values: gzip (default), lzf, lz4, snappy
   
-  Requires a value

### `--session-save-redis-log-level`

Redis log level. Values: 0 (least verbose) to 7 (most verbose)
   
-  Requires a value

### `--session-save-redis-max-concurrency`

Maximum number of processes that can wait for a lock on one session
   
-  Requires a value

### `--session-save-redis-break-after-frontend`

Number of seconds to wait before trying to break a lock for frontend session
   
-  Requires a value

### `--session-save-redis-break-after-adminhtml`

Number of seconds to wait before trying to break a lock for Admin session
   
-  Requires a value

### `--session-save-redis-first-lifetime`

Lifetime, in seconds, of session for non-bots on the first write (use 0 to disable)
   
-  Requires a value

### `--session-save-redis-bot-first-lifetime`

Lifetime, in seconds, of session for bots on the first write (use 0 to disable)
   
-  Requires a value

### `--session-save-redis-bot-lifetime`

Lifetime of session for bots on subsequent writes (use 0 to disable)
   
-  Requires a value

### `--session-save-redis-disable-locking`

Redis disable locking. Values: false (default), true
   
-  Requires a value

### `--session-save-redis-min-lifetime`

Redis min session lifetime, in seconds
   
-  Requires a value

### `--session-save-redis-max-lifetime`

Redis max session lifetime, in seconds
   
-  Requires a value

### `--session-save-redis-sentinel-master`

Redis Sentinel master
   
-  Requires a value

### `--session-save-redis-sentinel-servers`

Redis Sentinel servers, comma separated
   
-  Requires a value

### `--session-save-redis-sentinel-verify-master`

Redis Sentinel verify master. Values: false (default), true
   
-  Requires a value

### `--session-save-redis-sentinel-connect-retries`

Redis Sentinel connect retries.
   
-  Requires a value

### `--cache-backend`

Default cache handler
   
-  Requires a value

### `--cache-backend-redis-server`

Redis server
   
-  Requires a value

### `--cache-backend-redis-db`

Database number for the cache
   
-  Requires a value

### `--cache-backend-redis-port`

Redis server listen port
   
-  Requires a value

### `--cache-backend-redis-password`

Redis server password
   
-  Requires a value

### `--cache-backend-redis-compress-data`

Set to 0 to disable compression (default is 1, enabled)
   
-  Requires a value

### `--cache-backend-redis-compression-lib`

Compression lib to use [snappy,lzf,l4z,zstd,gzip] (leave blank to determine automatically)
   
-  Requires a value

### `--cache-id-prefix`

ID prefix for cache keys
   
-  Requires a value

### `--allow-parallel-generation`

Allow generate cache in non-blocking way
   
-  Default: `false`
-  Does not accept a value

### `--page-cache`

Default cache handler
   
-  Requires a value

### `--page-cache-redis-server`

Redis server
   
-  Requires a value

### `--page-cache-redis-db`

Database number for the cache
   
-  Requires a value

### `--page-cache-redis-port`

Redis server listen port
   
-  Requires a value

### `--page-cache-redis-password`

Redis server password
   
-  Requires a value

### `--page-cache-redis-compress-data`

Set to 1 to compress the full page cache (use 0 to disable)
   
-  Requires a value

### `--page-cache-redis-compression-lib`

Compression library to use [snappy,lzf,l4z,zstd,gzip] (leave blank to determine automatically)
   
-  Requires a value

### `--page-cache-id-prefix`

ID prefix for cache keys
   
-  Requires a value

### `--lock-provider`

Lock provider name
   
-  Requires a value

### `--lock-db-prefix`

Installation specific lock prefix to avoid lock conflicts
   
-  Requires a value

### `--lock-zookeeper-host`

Host and port to connect to Zookeeper cluster. For example: 127.0.0.1:2181
   
-  Requires a value

### `--lock-zookeeper-path`

The path where Zookeeper will save locks. The default path is: /magento/locks
   
-  Requires a value

### `--lock-file-path`

The path where file locks will be saved.
   
-  Requires a value

### `--document-root-is-pub`

Flag to show is Pub is on root, can be true or false only
   
-  Requires a value

### `--backpressure-logger`

Backpressure logger handler
   
-  Requires a value

### `--backpressure-logger-redis-server`

Redis server
   
-  Requires a value

### `--backpressure-logger-redis-port`

Redis server listen port
   
-  Requires a value

### `--backpressure-logger-redis-timeout`

Redis server timeout
   
-  Requires a value

### `--backpressure-logger-redis-persistent`

Redis persistent
   
-  Requires a value

### `--backpressure-logger-redis-db`

Redis db number
   
-  Requires a value

### `--backpressure-logger-redis-password`

Redis server password
   
-  Requires a value

### `--backpressure-logger-redis-user`

Redis server user
   
-  Requires a value

### `--backpressure-logger-id-prefix`

ID prefix for keys
   
-  Requires a value

### `--base-url`

URL the store is supposed to be available at. Deprecated, use config:set with path web/unsecure/base_url
   
-  Requires a value

### `--language`

Default language code. Deprecated, use config:set with path general/locale/code
   
-  Requires a value

### `--timezone`

Default time zone code. Deprecated, use config:set with path general/locale/timezone
   
-  Requires a value

### `--currency`

Default currency code. Deprecated, use config:set with path currency/options/base, currency/options/default and currency/options/allow
   
-  Requires a value

### `--use-rewrites`

Use rewrites. Deprecated, use config:set with path web/seo/use_rewrites
   
-  Requires a value

### `--use-secure`

Use secure URLs. Enable this option only if SSL is available. Deprecated, use config:set with path web/secure/use_in_frontend
   
-  Requires a value

### `--base-url-secure`

Base URL for SSL connection. Deprecated, use config:set with path web/secure/base_url
   
-  Requires a value

### `--use-secure-admin`

Run admin interface with SSL. Deprecated, use config:set with path web/secure/use_in_adminhtml
   
-  Requires a value

### `--admin-use-security-key`

Whether to use a &quot;security key&quot; feature in Magento Admin URLs and forms. Deprecated, use config:set with path admin/security/use_form_key
   
-  Requires a value

### `--admin-user`

Admin user
   
-  Accepts a value

### `--admin-password`

Admin password
   
-  Accepts a value

### `--admin-email`

Admin email
   
-  Accepts a value

### `--admin-firstname`

Admin first name
   
-  Accepts a value

### `--admin-lastname`

Admin last name
   
-  Accepts a value

### `--search-engine`

Search engine. Values: elasticsearch5, elasticsearch7, elasticsearch8, opensearch
   
-  Requires a value

### `--elasticsearch-host`

Elasticsearch server host.
   
-  Requires a value

### `--elasticsearch-port`

Elasticsearch server port.
   
-  Requires a value

### `--elasticsearch-enable-auth`

Set to 1 to enable authentication. (default is 0, disabled)
   
-  Requires a value

### `--elasticsearch-username`

Elasticsearch username. Only applicable if HTTP auth is enabled
   
-  Requires a value

### `--elasticsearch-password`

Elasticsearch password. Only applicable if HTTP auth is enabled
   
-  Requires a value

### `--elasticsearch-index-prefix`

Elasticsearch index prefix.
   
-  Requires a value

### `--elasticsearch-timeout`

Elasticsearch server timeout.
   
-  Requires a value

### `--opensearch-host`

OpenSearch server host.
   
-  Requires a value

### `--opensearch-port`

OpenSearch server port.
   
-  Requires a value

### `--opensearch-enable-auth`

Set to 1 to enable authentication. (default is 0, disabled)
   
-  Requires a value

### `--opensearch-username`

OpenSearch username. Only applicable if HTTP auth is enabled
   
-  Requires a value

### `--opensearch-password`

OpenSearch password. Only applicable if HTTP auth is enabled
   
-  Requires a value

### `--opensearch-index-prefix`

OpenSearch index prefix.
   
-  Requires a value

### `--opensearch-timeout`

OpenSearch server timeout.
   
-  Requires a value

### `--cleanup-database`

Cleanup the database before installation
   
-  Default: `false`
-  Does not accept a value

### `--sales-order-increment-prefix`

Sales order number prefix
   
-  Requires a value

### `--use-sample-data`

Use sample data
   
-  Default: `false`
-  Does not accept a value

### `--enable-modules`

List of comma-separated module names. That must be included during installation. Available magic param &quot;all&quot;.
   
-  Accepts a value

### `--disable-modules`

List of comma-separated module names. That must be avoided during installation. Available magic param &quot;all&quot;.
   
-  Accepts a value

### `--convert-old-scripts`

Allows to convert old scripts (InstallSchema, UpgradeSchema) to db_schema.xml format
   
-  Default: `false`
-  Accepts a value

### `--interactive`, `-i`

Interactive Magento installation
   
-  Default: `false`
-  Does not accept a value

### `--safe-mode`

Safe installation of Magento with dumps on destructive operations, like column removal
   
-  Accepts a value

### `--data-restore`

Restore removed data from dumps
   
-  Accepts a value

### `--dry-run`

Magento Installation will be run in dry-run mode
   
-  Default: `false`
-  Accepts a value

### `--magento-init-params`

Add to any command to customize Magento initialization parameters For example: &quot;MAGE_MODE=developer&amp;MAGE_DIRS[base][path]=/var/www/example.com&amp;MAGE_DIRS[cache][path]=/var/tmp/cache&quot;
   
-  Requires a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `setup:performance:generate-fixtures`

Generates fixtures

```bash
bin/magento setup:performance:generate-fixtures [-s|--skip-reindex] [--] <profile>
```


### `profile`

Path to profile configuration file
   
-  Required

### `--skip-reindex`, `-s`

Skip reindex
   
-  Default: `false`
-  Does not accept a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `setup:rollback`

Rolls back Magento Application codebase, media and database

```bash
bin/magento setup:rollback [-c|--code-file CODE-FILE] [-m|--media-file MEDIA-FILE] [-d|--db-file DB-FILE] [--magento-init-params MAGENTO-INIT-PARAMS]
```

### `--code-file`, `-c`

Basename of the code backup file in var/backups
   
-  Requires a value

### `--media-file`, `-m`

Basename of the media backup file in var/backups
   
-  Requires a value

### `--db-file`, `-d`

Basename of the db backup file in var/backups
   
-  Requires a value

### `--magento-init-params`

Add to any command to customize Magento initialization parameters For example: &quot;MAGE_MODE=developer&amp;MAGE_DIRS[base][path]=/var/www/example.com&amp;MAGE_DIRS[cache][path]=/var/tmp/cache&quot;
   
-  Requires a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `setup:static-content:deploy`

Deploys static view files

```bash
bin/magento setup:static-content:deploy [-f|--force] [-s|--strategy [STRATEGY]] [-a|--area [AREA]] [--exclude-area [EXCLUDE-AREA]] [-t|--theme [THEME]] [--exclude-theme [EXCLUDE-THEME]] [-l|--language [LANGUAGE]] [--exclude-language [EXCLUDE-LANGUAGE]] [-j|--jobs [JOBS]] [--max-execution-time [MAX-EXECUTION-TIME]] [--symlink-locale] [--content-version CONTENT-VERSION] [--refresh-content-version-only] [--no-javascript] [--no-js-bundle] [--no-css] [--no-less] [--no-images] [--no-fonts] [--no-html] [--no-misc] [--no-html-minify] [--no-parent] [--] [<languages>...]
```


### `languages`

Space-separated list of ISO-639 language codes for which to output static view files.
   
-  Default: `[]`
   
-  Array

### `--force`, `-f`

Deploy files in any mode.
   
-  Default: `false`
-  Does not accept a value

### `--strategy`, `-s`

Deploy files using specified strategy.
   
-  Default: `quick`
-  Accepts a value

### `--area`, `-a`

Generate files only for the specified areas.
   
-  Default: `all`
-  Accepts multiple values

### `--exclude-area`

Do not generate files for the specified areas.
   
-  Default: `none`
-  Accepts multiple values

### `--theme`, `-t`

Generate static view files for only the specified themes.
   
-  Default: `all`
-  Accepts multiple values

### `--exclude-theme`

Do not generate files for the specified themes.
   
-  Default: `none`
-  Accepts multiple values

### `--language`, `-l`

Generate files only for the specified languages.
   
-  Default: `all`
-  Accepts multiple values

### `--exclude-language`

Do not generate files for the specified languages.
   
-  Default: `none`
-  Accepts multiple values

### `--jobs`, `-j`

Enable parallel processing using the specified number of jobs.
   
-  Default: `0`
-  Accepts a value

### `--max-execution-time`

The maximum expected execution time of deployment static process (in seconds).
   
-  Default: `900`
-  Accepts a value

### `--symlink-locale`

Create symlinks for the files of those locales, which are passed for deployment, but have no customizations.
   
-  Default: `false`
-  Does not accept a value

### `--content-version`

Custom version of static content can be used if running deployment on multiple nodes to ensure that static content version is identical and caching works properly.
   
-  Requires a value

### `--refresh-content-version-only`

Refreshing the version of static content only can be used to refresh static content in browser cache and CDN cache.
   
-  Default: `false`
-  Does not accept a value

### `--no-javascript`

Do not deploy JavaScript files.
   
-  Default: `false`
-  Does not accept a value

### `--no-js-bundle`

Do not deploy JavaScript bundle files.
   
-  Default: `false`
-  Does not accept a value

### `--no-css`

Do not deploy CSS files.
   
-  Default: `false`
-  Does not accept a value

### `--no-less`

Do not deploy LESS files.
   
-  Default: `false`
-  Does not accept a value

### `--no-images`

Do not deploy images.
   
-  Default: `false`
-  Does not accept a value

### `--no-fonts`

Do not deploy font files.
   
-  Default: `false`
-  Does not accept a value

### `--no-html`

Do not deploy HTML files.
   
-  Default: `false`
-  Does not accept a value

### `--no-misc`

Do not deploy files of other types (.md, .jbf, .csv, etc.).
   
-  Default: `false`
-  Does not accept a value

### `--no-html-minify`

Do not minify HTML files.
   
-  Default: `false`
-  Does not accept a value

### `--no-parent`

Do not compile parent themes. Supported only in quick and standard strategies.
   
-  Default: `false`
-  Does not accept a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `setup:store-config:set`

Installs the store configuration. Deprecated since 2.2.0. Use config:set instead

```bash
bin/magento setup:store-config:set [--base-url BASE-URL] [--language LANGUAGE] [--timezone TIMEZONE] [--currency CURRENCY] [--use-rewrites USE-REWRITES] [--use-secure USE-SECURE] [--base-url-secure BASE-URL-SECURE] [--use-secure-admin USE-SECURE-ADMIN] [--admin-use-security-key ADMIN-USE-SECURITY-KEY] [--magento-init-params MAGENTO-INIT-PARAMS]
```

### `--base-url`

URL the store is supposed to be available at. Deprecated, use config:set with path web/unsecure/base_url
   
-  Requires a value

### `--language`

Default language code. Deprecated, use config:set with path general/locale/code
   
-  Requires a value

### `--timezone`

Default time zone code. Deprecated, use config:set with path general/locale/timezone
   
-  Requires a value

### `--currency`

Default currency code. Deprecated, use config:set with path currency/options/base, currency/options/default and currency/options/allow
   
-  Requires a value

### `--use-rewrites`

Use rewrites. Deprecated, use config:set with path web/seo/use_rewrites
   
-  Requires a value

### `--use-secure`

Use secure URLs. Enable this option only if SSL is available. Deprecated, use config:set with path web/secure/use_in_frontend
   
-  Requires a value

### `--base-url-secure`

Base URL for SSL connection. Deprecated, use config:set with path web/secure/base_url
   
-  Requires a value

### `--use-secure-admin`

Run admin interface with SSL. Deprecated, use config:set with path web/secure/use_in_adminhtml
   
-  Requires a value

### `--admin-use-security-key`

Whether to use a &quot;security key&quot; feature in Magento Admin URLs and forms. Deprecated, use config:set with path admin/security/use_form_key
   
-  Requires a value

### `--magento-init-params`

Add to any command to customize Magento initialization parameters For example: &quot;MAGE_MODE=developer&amp;MAGE_DIRS[base][path]=/var/www/example.com&amp;MAGE_DIRS[cache][path]=/var/tmp/cache&quot;
   
-  Requires a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `setup:uninstall`

Uninstalls the Magento application

```bash
bin/magento setup:uninstall [--magento-init-params MAGENTO-INIT-PARAMS]
```

### `--magento-init-params`

Add to any command to customize Magento initialization parameters For example: &quot;MAGE_MODE=developer&amp;MAGE_DIRS[base][path]=/var/www/example.com&amp;MAGE_DIRS[cache][path]=/var/tmp/cache&quot;
   
-  Requires a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `setup:upgrade`

Upgrades the Magento application, DB data, and schema

```bash
bin/magento setup:upgrade [--keep-generated] [--convert-old-scripts [CONVERT-OLD-SCRIPTS]] [--safe-mode [SAFE-MODE]] [--data-restore [DATA-RESTORE]] [--dry-run [DRY-RUN]] [--magento-init-params MAGENTO-INIT-PARAMS]
```

### `--keep-generated`

Prevents generated files from being deleted. We discourage using this option except when deploying to production. Consult your system integrator or administrator for more information.
   
-  Default: `false`
-  Does not accept a value

### `--convert-old-scripts`

Allows to convert old scripts (InstallSchema, UpgradeSchema) to db_schema.xml format
   
-  Default: `false`
-  Accepts a value

### `--safe-mode`

Safe installation of Magento with dumps on destructive operations, like column removal
   
-  Accepts a value

### `--data-restore`

Restore removed data from dumps
   
-  Accepts a value

### `--dry-run`

Magento Installation will be run in dry-run mode
   
-  Default: `false`
-  Accepts a value

### `--magento-init-params`

Add to any command to customize Magento initialization parameters For example: &quot;MAGE_MODE=developer&amp;MAGE_DIRS[base][path]=/var/www/example.com&amp;MAGE_DIRS[cache][path]=/var/tmp/cache&quot;
   
-  Requires a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `store:list`

Displays the list of stores

```bash
bin/magento store:list
```

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `store:website:list`

Displays the list of websites

```bash
bin/magento store:website:list
```

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `theme:uninstall`

Uninstalls theme

```bash
bin/magento theme:uninstall [--backup-code] [-c|--clear-static-content] [--] <theme>...
```


### `theme`

Path of the theme. Theme path should be specified as full path which is area/vendor/name. For example, frontend/Magento/blank
   
-  Default: `[]`
   
-  Required
-  Array

### `--backup-code`

Take code backup (excluding temporary files)
   
-  Default: `false`
-  Does not accept a value

### `--clear-static-content`, `-c`

Clear generated static view files.
   
-  Default: `false`
-  Does not accept a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value


## `varnish:vcl:generate`

Generates Varnish VCL and echos it to the command line

```bash
bin/magento varnish:vcl:generate [--access-list ACCESS-LIST] [--backend-host BACKEND-HOST] [--backend-port BACKEND-PORT] [--export-version EXPORT-VERSION] [--grace-period GRACE-PERIOD] [--output-file OUTPUT-FILE]
```

### `--access-list`

IPs access list that can purge Varnish
   
-  Default: `localhost`
-  Requires a value

### `--backend-host`

Host of the web backend
   
-  Default: `localhost`
-  Requires a value

### `--backend-port`

Port of the web backend
   
-  Default: `8080`
-  Requires a value

### `--export-version`

The version of Varnish file
   
-  Default: `4`
-  Requires a value

### `--grace-period`

Grace period in seconds
   
-  Default: `300`
-  Requires a value

### `--output-file`

Path to the file to write vcl
   
-  Requires a value

### `--help`, `-h`

Display help for the given command. When no command is given display help for the &lt;info&gt;list&lt;/info&gt; command
   
-  Default: `false`
-  Does not accept a value

### `--quiet`, `-q`

Do not output any message
   
-  Default: `false`
-  Does not accept a value

### `--verbose`, `-v|-vv|-vvv`

Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
   
-  Default: `false`
-  Does not accept a value

### `--version`, `-V`

Display this application version
   
-  Default: `false`
-  Does not accept a value

### `--ansi`

Force (or disable --no-ansi) ANSI output
   
-  Does not accept a value

### `--no-ansi`

Negate the &quot;--ansi&quot; option
   
-  Default: `false`
-  Does not accept a value

### `--no-interaction`, `-n`

Do not ask any interactive question
   
-  Default: `false`
-  Does not accept a value
