---
title: Run the [!DNL Upgrade Compatibility Tool]
description: Follow these steps to run the [!DNL Upgrade Compatibility Tool] in a command-line interface for your Adobe Commerce project.
exl-id: ea467a74-18eb-476b-96e2-23f4fc257d73
---
# Download the [!DNL Upgrade Compatibility Tool]

{{commerce-only}}

To get started with the [!DNL Upgrade Compatibility Tool] in a command-line interface, download it by running the following command:

```bash
composer create-project magento/upgrade-compatibility-tool uct --repository https://repo.magento.com
```

You may need to give the tool executable permissions with the `chmod` command:

```bash
chmod +x ./uct/bin/uct
```

## The [!DNL Upgrade Compatibility Tool] in a command-line interface

The [!DNL Upgrade Compatibility Tool] is a tool that checks an Adobe Commerce customized instance against a specific version by analyzing all modules installed in it. It returns a list of critical issues, errors, and warnings that must be addressed before upgrading to the latest version of Adobe Commerce.

See this [video tutorial](https://experienceleague.adobe.com/docs/commerce-learn/tutorials/upgrade/upgrade-compatibility-tool-overview.html) (06:02) to learn more about the [!DNL Upgrade Compatibility Tool].

Available commands for the [!DNL Upgrade Compatibility Tool] in a command-line interface:

| **Command** | **Description** |
|----------------|-----------------|
| `upgrade:check` |This command runs the [!DNL Upgrade Compatibility Tool] by analyzing all modules installed in it. |
| `dbschema:diff` |This command displays all the differences of database schema between two specified Adobe Commerce versions. |
| `core:code:changes` | This command compares your current Adobe Commerce installation with a clean vanilla installation. |
| `refactor` | This command automatically fixes a reduced set of issues. |
| `graphql:compare` | This command provides the option to introspect two GraphQL endpoints and compare their schemas. |
| `list` | This command returns a list of all the [!DNL Upgrade Compatibility Tool] available commands. |
| `help` | This command returns all available `help`options for the [!DNL Upgrade Compatibility Tool]. This command can be run as well as an option with the previous commands. |

## Use the `upgrade:check` command

The `upgrade:check` command checks for core code changes for that specific Adobe Commerce instance, and all custom code changes installed in it.

The `upgrade:check` command is the main command to execute the tool:

```bash
bin/uct upgrade:check <dir>
```

Where `<dir>` value is the directory where your Adobe Commerce instance is located.

Available options for the `upgrade:check` command:

| **Command** | **Available options** |
|----------------|-----------------|
| `upgrade:check` |<ul><li>--help: Returns all available options.</li><li>--current-version: Current Adobe Commerce version. Version of the Adobe Commerce installation will be used if omitted.</li><li>--min-issue-level: You can filter issues according to the minimum issue level (default value is WARNING).</li><li>--ignore-current-version-compatibility-issues (or -i): If you do not want to include critical issues, errors, and warnings from the current version in your report.</li><li>--coming-version (or -c): Target a specific Adobe Commerce version. Latest available will be used if omitted.</li></ul> |

The [!DNL Upgrade Compatibility Tool] allows you to run the `upgrade:check` command with an `--ignore-current-version-compatibility-issues` option. Use this option when you only want to get new issues that are introduced with the update from your current version to the targeted version in your [!DNL Upgrade Compatibility Tool] report:

```bash
bin/uct upgrade:check --ignore-current-version-compatibility-issues <dir>
```

>[!NOTE]
>
> This applies only to PHP API validations.

### Adding the `--coming-version` option

You can compare your current Adobe Commerce installation with any Adobe Commerce version `>=2.3` by using the `--coming-version` option.

You must provide the version as a parameter when running the `upgrade:check` command:

```bash
bin/uct upgrade:check <dir> -c 2.4.3
```

Where `-c, --coming-version[=COMING-VERSION]` refers to the Adobe Commerce targeted version.

There are some limitations when running the `--coming-version`:

- This parameter refers to any tag that identifies a specific version of Adobe Commerce.
- It is a requirement to provide this one explicitly; providing only the value of it does not work.
- Provide the tag version without any quotation marks (neither single nor double): ~~'2.4.1-develop'~~.
- You should NOT provide older versions than the one you have currently installed, nor older than 2.3, which is the oldest one supported at the moment.

## Use the `dbschema:diff` command

You can retrieve the difference between the database schema of two Adobe Commerce versions.

```bash
bin/uct dbschema:diff <current-version> <target-version>
```

Where arguments are as follows:

- `<current-version>`: any Adobe Commerce version for comparison.
- `<target-version>`: also any Adobe Commerce version for comparison.

Example of execution:

```bash
bin/uct dbschema:diff 2.4.3 2.4.3-p3

DB schema differences between versions 2.4.3 and 2.4.3-p3:

Table klarna_payments_quote constraint QUOTE_ID_KLARNA_PAYMENTS_QUOTE_QUOTE_ID_QUOTE_ENTITY_ID is present only in version 2.4.3-p3
Table klarna_payments_quote index KLARNA_PAYMENTS_QUOTE_SESSION_ID is present only in version 2.4.3-p3
Table customer_entity column session_cutoff is present only in version 2.4.3-p3
Table customer_visitor column session_id length value is different. 2.4.3: "64", 2.4.3-p3: "1"
Table customer_visitor column session_id comment value is different. 2.4.3: "Session ID", 2.4.3-p3: "Deprecated: Session ID value no longer used"
Table customer_visitor column created_at is present only in version 2.4.3-p3
Table oauth_consumer column secret length value is different. 2.4.3: "32", 2.4.3-p3: "128"
Table oauth_token column secret length value is different. 2.4.3: "32", 2.4.3-p3: "128"
Table admin_user_session column session_id nullable value is different. 2.4.3: "false", 2.4.3-p3: "true"
Table admin_user_session column session_id length value is different. 2.4.3: "128", 2.4.3-p3: "1"
Table admin_user_session column session_id comment value is different. 2.4.3: "Session ID value", 2.4.3-p3: "Deprecated: Session ID value no longer used"

Total detected differences between version 2.4.3 and 2.4.3-p3: 11
```

## Use the `core:code:changes` command

You can compare your current Adobe Commerce installation to validate if the core code of Adobe Commerce was modified to implement a customization. This command shows a list of core modifications only:

```bash
bin/uct core:code:changes <dir> <vanilla dir>
```

Where arguments are as follows:

- `<dir>`: Adobe Commerce installation directory.
- `<vanilla dir>`: Adobe Commerce vanilla installation directory.

Available options for the `core:code:changes` command:

| **Command** | **Available options** |
|----------------|-----------------|
| `core:code:changes` | `--help`: Returns all available `--help` options. |

>[!NOTE]
>
> It is a best practice to keep custom code out of the core code. See the Adobe Commerce 2.4 [upgrade guide](https://experienceleague.adobe.com/docs/commerce-operations/assets/adobe-commerce-2-4-upgrade-guide.pdf) for more upgrade best practices.

### Vanilla installation

A _vanilla_ installation is a clean installation of a specified version tag or branch for a specific release version.

The `bin/uct core:code:changes` command checks if there is a vanilla instance in your system. If this is the first time using a vanilla installation, an interactive command-line question prompts you to download the vanilla project from the Adobe Commerce repository (`https://repo.magento.com/`).

You can run an [!DNL Upgrade Compatibility Tool] command with the `--vanilla-dir` option to specify the Adobe Commerce vanilla installation directory.

See the [Deploy vanilla instance](https://developer.adobe.com/commerce/contributor/guides/code-contributions#deploy-vanilla-magento-open-source-instance) topic for more information.

## Use the `refactor` command

The [!DNL Upgrade Compatibility Tool] has the ability to automatically fix a reduced set of issues:

- Functions that were allowed to be used without passing an argument, but with such usage now deprecated.
- Usage of `$this` in Magento templates.
- Usage of PHP keyword `final` in private methods.

For that, execute the `refactor` command:

```bash
bin/uct refactor <dir>
```

Where `<dir>` value is the directory where your Adobe Commerce instance is located.

Available options for the `refactor` command:

| **Command** | **Available options** |
|----------------|-----------------|
| `refactor` | `--help`: Returns all available `--help` options. |

## Use the `graphql:compare` command

This command provides the option to the [!DNL Upgrade Compatibility Tool] to introspect two GraphQL endpoints and compare their schemas looking for breaking and dangerous changes between them:

```bash
bin/uct graphql:compare <schema1> <schema2>
```

Where arguments are as follows:

- `<schema1>`: Endpoint URL for the existing installation.
- `<schema2>`: Endpoint URL for the vanilla installation.

Available options for the `graphql:compare` command:

| **Command** | **Available options** |
|----------------|-----------------|
| `graphql:compare` | `--help`: Returns all available `--help` options. |

## Use the `list` command

To return a list of the [!DNL Upgrade Compatibility Tool] available commands, run:

```bash
bin/uct list
```

## Use the `help` command

To see the [!DNL Upgrade Compatibility Tool] command general options and help, run:

```bash
bin/uct --help
```

That returns a list with all available `help` options for the [!DNL Upgrade Compatibility Tool] in a command-line interface:

```
- --raw             To output raw command list
- --format=FORMAT   The output format (txt, xml, json, or md) [default: "txt"]
- --short           To skip describing commands' arguments
- -h, --help            Display help for the given command. When no command is given display help for the list command
- -q, --quiet           Do not output any message
- -V, --version         Display this application version
- --ansi|--no-ansi  Force (or disable --no-ansi) ANSI output
- -n, --no-interaction  Do not ask any interactive question
- -v|vv|vvv, --verbose  Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
```

It is possible to run `--help` as an option when running a specific command. It returns `--help` options for the specified command.

Example of the `upgrade:check` command with `--help` option:

```bash
bin/uct upgrade:check --help
```

This returns specific options that can be run for the `upgrade:check` command:

```
- -a, --current-version[=CURRENT-VERSION]: Current Adobe Commerce version, version of the Adobe Commerce installation will be used if omitted.
- -c, --coming-version[=COMING-VERSION]: Target Adobe Commerce version, latest released version of Adobe Commerce will be used if omitted. Provides a list of all available Adobe Commerce versions.
- --json-output-path[=JSON-OUTPUT-PATH]: Path of the file where the output will be exported in json format.
- --html-output-path[=HTML-OUTPUT-PATH]: Path of the file where the output will be exported in HTML format.
- --min-issue-level[=MIN-ISSUE-LEVEL]            Minimal issue level you want to see in the report (warning, error or critical). [default: "warning"]
- -i, --ignore-current-version-compatibility-issues  Ignore common issues for current and coming version
- --context=CONTEXT: Execution context. This option is for integration purposes and does not affect the execution result.
- -h, --help: Display help for that specific command. If no command is provided, `list` command is the default result.
- -q, --quiet: Do not output any messages while executing the command.
- -v, --version: Display application version.
- --ansi, --no-ansi: Enable ANSI output.
- -n, --no-interaction: Do not ask any interactive question while executing the command.
- -v, --vv, --vvv, --verbose: Increase verbosity of output communications. 1 for normal output, 2 for verbose output, and 3 for DEBUG output.
```

## Follow Adobe Commerce Best Practices

- Avoid having two modules with the same name.
- Follow Adobe Commerce [coding standards](https://developer.adobe.com/commerce/php/coding-standards).
- Adobe Commerce 2.4 [Upgrade guide](https://experienceleague.adobe.com/docs/commerce-operations/assets/adobe-commerce-2-4-upgrade-guide.pdf) best practices.
- Run the [!DNL Upgrade Compatibility Tool] from the [[!DNL Site-Wide Analysis Tool]](https://experienceleague.adobe.com/docs/commerce-operations/upgrade-guide/upgrade-compatibility-tool/use-upgrade-compatibility-tool/integrate-analysis-tool.html) for [Adobe Commerce on cloud infrastructure](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/project/overview.html){target=_blank} projects.

## Optimize your results

The [!DNL Upgrade Compatibility Tool] provides a report containing results with all issues identified on your project by default. You can optimize the results to focus on those issues that you must fix to complete the upgrade:

- Use the option `--ignore-current-version-compatibility-issues` when you only want to get new issues that are introduced with the update from your current version to the targeted version in your [!DNL Upgrade Compatibility Tool] report.
- Adding the `--min-issue-level` option, this setting allows to set the minimum issue level, to help prioritize only the most important issues with your upgrade.
- The [!DNL Upgrade Compatibility Tool] requires at least 2GB RAM to run. This setting is recommended to avoid issues due to a low memory limitation. The [!DNL Upgrade Compatibility Tool] displays a question if you run the `upgrade:check` command with a low `memory_limit` setting.
