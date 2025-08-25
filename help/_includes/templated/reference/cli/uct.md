# bin/uct

<!-- All the assigned and captured content is used in the included template -->



<!-- The template to render with above values -->
**Version**: 3.0.23

This reference contains 9 commands available through the `bin/uct` command-line tool.
The initial list is auto generated using the `bin/uct list` command at Adobe Commerce.

## General

Learn more about the tool in [Overview](/help/upgrade/upgrade-compatibility-tool/overview.md).

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
bin/uct _complete [-s|--shell SHELL] [-i|--input INPUT] [-c|--current CURRENT] [-a|--api-version API-VERSION] [-S|--symfony SYMFONY]
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
bin/uct completion [--debug] [--] [<shell>]
```

Dump the shell completion script

```
The completion command dumps the shell completion script required
to use shell autocompletion (currently, bash, fish, zsh completion are supported).

Static installation
-------------------

Dump the script to a global completion file and restart your shell:

    uct/bin/uct completion  | sudo tee /etc/bash_completion.d/uct

Or dump the script to a local file and source it:

    uct/bin/uct completion  > completion.sh

    # source the file whenever you use the project
    source completion.sh

    # or add this line at the end of your "~/.bashrc" file:
    source /path/to/completion.sh

Dynamic installation
--------------------

Add this to the end of your shell configuration file (e.g. "~/.bashrc"):

    eval "$(/var/jenkins/workspace/gendocs-uct-cli/uct/bin/uct completion )"
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
bin/uct help [--format FORMAT] [--raw] [--] [<command_name>]
```

Display help for a command

```
The help command displays help for a given command:

  uct/bin/uct help list

You can also output the help in other formats by using the --format option:

  uct/bin/uct help --format=xml list

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
bin/uct list [--raw] [--format FORMAT] [--short] [--] [<namespace>]
```

List commands

```
The list command lists all commands:

  uct/bin/uct list

You can also display the commands for a specific namespace:

  uct/bin/uct list test

You can also output the information in other formats by using the --format option:

  uct/bin/uct list --format=xml

It's also possible to get raw list of commands (useful for embedding command runner):

  uct/bin/uct list --raw
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


## `refactor`

```bash
bin/uct refactor <path>
```

Resolves the issues that can be fixed automatically. The code in the path provided will be updated.

### Arguments

#### `path`

Path to resolve issues in.

- Required

### Options

For global options, see [Global options](#global-options).


## `core:code:changes`

```bash
bin/uct core:code:changes [-o|--output [OUTPUT]] [--] <dir> [<vanilla-dir>]
```

The Upgrade Compatibility Tool is a command-line tool that checks a Adobe Commerce instance against a specific version by analyzing all the non-Adobe Commerce modules installed in it. Returns a list of errors and warnings that you must address before upgrading to a new version of Adobe Commerce code.

### Arguments

#### `dir`

Adobe Commerce installation directory.

- Required


#### `vanilla-dir`

Adobe Commerce vanilla installation directory.

### Options

For global options, see [Global options](#global-options).

#### `--output`, `-o`

Path of the file where the output will be exported (Json Format)

- Accepts a value


## `dbschema:diff`

```bash
bin/uct dbschema:diff <current-version> <target-version>
```

Allow to list Adobe Commerce DB schema differences between two selected versions. Available versions: 2.3.0 | 2.3.1 | 2.3.2 | 2.3.2-p2 | 2.3.3 | 2.3.3-p1 | 2.3.4 | 2.3.4-p1 | 2.3.4-p2 | 2.3.5 | 2.3.5-p1 | 2.3.5-p2 | 2.3.6 | 2.3.6-p1 | 2.3.7 | 2.3.7-p1 | 2.3.7-p2 | 2.3.7-p3 | 2.3.7-p4 | 2.4.0 | 2.4.0-p1 | 2.4.1 | 2.4.1-p1 | 2.4.2 | 2.4.2-p1 | 2.4.2-p2 | 2.4.3 | 2.4.3-p1 | 2.4.3-p2 | 2.4.3-p3 | 2.4.4 | 2.4.4-p1 | 2.4.5 | 2.4.4-p2 | 2.4.5-p1 | 2.4.4-p3 | 2.4.4-p4 | 2.4.4-p5 | 2.4.5-p2 | 2.4.5-p3 | 2.4.5-p4 | 2.4.6 | 2.4.6-p1 | 2.4.6-p2 | 2.4.7-beta1 | 2.4.4-p6 | 2.4.5-p5 | 2.4.6-p3 | 2.4.7-beta2 | 2.4.4-p7 | 2.4.5-p6 | 2.4.6-p4 | 2.4.7-beta3 | 2.4.7 | 2.4.6-p5 | 2.4.5-p7 | 2.4.4-p8 | 2.4.4-p9 | 2.4.5-p8 | 2.4.6-p6 | 2.4.7-p1 | 2.4.4-p10 | 2.4.5-p9 | 2.4.6-p7 | 2.4.7-p2 | 2.4.4-p11 | 2.4.5-p10 | 2.4.6-p8 | 2.4.7-p3 | 2.4.8-beta1 | 2.4.4-p12 | 2.4.5-p11 | 2.4.6-p9 | 2.4.7-p4 | 2.4.8-beta2 | 2.4.4-p13 | 2.4.5-p12 | 2.4.6-p10 | 2.4.7-p5 | 2.4.8 | 2.4.9-alpha2 | 2.4.8-p2 | 2.4.7-p7 | 2.4.6-p12 | 2.4.5-p14 | 2.4.4-p15 | 2.4.9-alpha1 | 2.4.8-p1 | 2.4.7-p6 | 2.4.6-p11 | 2.4.5-p13 | 2.4.4-p14

### Arguments

#### `current-version`

current version (e.g. 2.3.2).

- Required


#### `target-version`

target version (e.g. 2.4.5).

- Required

### Options

For global options, see [Global options](#global-options).


## `graphql:compare`

```bash
bin/uct graphql:compare [-o|--output [OUTPUT]] [--] <schema1> <schema2>
```

GraphQL schema compatibility verification

### Arguments

#### `schema1`

Endpoint URL pointing to the first GraphQL schema.

- Required


#### `schema2`

Endpoint URL pointing to the second GraphQL schema.

- Required

### Options

For global options, see [Global options](#global-options).

#### `--output`, `-o`

Path of the file where the output will be exported (JSON Format)

- Accepts a value


## `upgrade:check`

```bash
bin/uct upgrade:check [-a|--current-version [CURRENT-VERSION]] [-c|--coming-version [COMING-VERSION]] [--json-output-path [JSON-OUTPUT-PATH]] [--html-output-path [HTML-OUTPUT-PATH]] [--min-issue-level [MIN-ISSUE-LEVEL]] [-i|--ignore-current-version-compatibility-issues] [--context CONTEXT] [--] <dir>
```

The Upgrade Compatibility Tool is a command-line tool that checks an Adobe Commerce customized instance against a specific version by analyzing all modules installed in it. Returns a list of errors and warnings that must be addressed before upgrading to the latest version of Adobe Commerce.

### Arguments

#### `dir`

Adobe Commerce installation directory.

- Required

### Options

For global options, see [Global options](#global-options).

#### `--current-version`, `-a`

Current Adobe Commerce version, version of the Adobe Commerce installation will be used if omitted.

- Accepts a value

#### `--coming-version`, `-c`

Target Adobe Commerce version. The latest released stable version of Adobe Commerce will be used if omitted. Available Adobe Commerce versions: 2.3.0 \| 2.3.1 \| 2.3.2 \| 2.3.2-p2 \| 2.3.3 \| 2.3.3-p1 \| 2.3.4 \| 2.3.4-p1 \| 2.3.4-p2 \| 2.3.5 \| 2.3.5-p1 \| 2.3.5-p2 \| 2.3.6 \| 2.3.6-p1 \| 2.3.7 \| 2.3.7-p1 \| 2.3.7-p2 \| 2.3.7-p3 \| 2.3.7-p4 \| 2.4.0 \| 2.4.0-p1 \| 2.4.1 \| 2.4.1-p1 \| 2.4.2 \| 2.4.2-p1 \| 2.4.2-p2 \| 2.4.3 \| 2.4.3-p1 \| 2.4.3-p2 \| 2.4.3-p3 \| 2.4.4 \| 2.4.4-p1 \| 2.4.4-p2 \| 2.4.4-p3 \| 2.4.4-p4 \| 2.4.4-p5 \| 2.4.4-p6 \| 2.4.4-p7 \| 2.4.4-p8 \| 2.4.4-p9 \| 2.4.4-p10 \| 2.4.4-p11 \| 2.4.4-p12 \| 2.4.4-p13 \| 2.4.4-p14 \| 2.4.4-p15 \| 2.4.5 \| 2.4.5-p1 \| 2.4.5-p2 \| 2.4.5-p3 \| 2.4.5-p4 \| 2.4.5-p5 \| 2.4.5-p6 \| 2.4.5-p7 \| 2.4.5-p8 \| 2.4.5-p9 \| 2.4.5-p10 \| 2.4.5-p11 \| 2.4.5-p12 \| 2.4.5-p13 \| 2.4.5-p14 \| 2.4.6 \| 2.4.6-p1 \| 2.4.6-p2 \| 2.4.6-p3 \| 2.4.6-p4 \| 2.4.6-p5 \| 2.4.6-p6 \| 2.4.6-p7 \| 2.4.6-p8 \| 2.4.6-p9 \| 2.4.6-p10 \| 2.4.6-p11 \| 2.4.6-p12 \| 2.4.7-beta1 \| 2.4.7-beta2 \| 2.4.7-beta3 \| 2.4.7 \| 2.4.7-p1 \| 2.4.7-p2 \| 2.4.7-p3 \| 2.4.7-p4 \| 2.4.7-p5 \| 2.4.7-p6 \| 2.4.7-p7 \| 2.4.8-beta1 \| 2.4.8-beta2 \| 2.4.8 \| 2.4.8-p1 \| 2.4.8-p2 \| 2.4.9-alpha1 \| 2.4.9-alpha2

- Accepts a value

#### `--json-output-path`

Path of the file where the output will be exported in json format

- Accepts a value

#### `--html-output-path`

Path of the file where the output will be exported in HTML format

- Accepts a value

#### `--min-issue-level`

Minimal issue level you want to see in the report (warning, error or critical).

- Default: `warning`
- Accepts a value

#### `--ignore-current-version-compatibility-issues`, `-i`

Ignore common issues for current and coming version

- Default: `false`
- Does not accept a value

#### `--context`

Execution context. This option is for integration purposes and does not affect the execution result.

- Requires a value

