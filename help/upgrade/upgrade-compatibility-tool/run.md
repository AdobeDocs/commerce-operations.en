---
title: "Run the [!DNL Upgrade Compatibility Tool]"
description: Follow these steps to run the [!DNL Upgrade Compatibility Tool] in a command-line interface for your Adobe Commerce project.
---

# Download the [!DNL Upgrade Compatibility Tool]

{{commerce-only}}

To get started with the [!DNL Upgrade Compatibility Tool] in a command-line interface, download it by running the following command:

```bash
composer create-project magento/upgrade-compatibility-tool uct --repository https://repo.magento.com
```

You need to give executable permissions. Run the following command:

```bash
chmod +x ./uct/bin/uct
```

## The [!DNL Upgrade Compatibility Tool] in a command-line interface

The [!DNL Upgrade Compatibility Tool] is a tool that checks an Adobe Commerce customized instance against a specific version by analyzing all modules installed in it. It returns a list of critical issues, errors, and warnings that must be addressed before upgrading to the latest version of Adobe Commerce.

See this [video tutorial](https://experienceleague.adobe.com/docs/commerce-learn/tutorials/upgrade/upgrade-compatibility-tool-overview.html?lang=en) (06:02) to learn more about the [!DNL Upgrade Compatibility Tool].

Available commands for the [!DNL Upgrade Compatibility Tool] in a command-line interface:

| **Command** | **Description** |
|----------------|-----------------|
| `upgrade:check` |This command runs the [!DNL Upgrade Compatibility Tool] by analyzing all modules installed in it. |
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
| `upgrade:check` |<ul><li>--help: Returns all available options.</li><li>--min-issue-level: You can filter issues according to the minimum issue level (default value is WARNING).</li><li>--ignore-current-version-compatibility-issues (or -i): If you do not want to include critical issues, errors and warnings from the current version in your report.</li><li>--coming-version (or -c): Target an specific Adobe Commerce version.</li></ul> |

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

See the [Deploy vanilla instance](https://devdocs.magento.com/contributor-guide/contributing.html#vanilla-pr) topic for more information.

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

## Use the `--help` command

To see the [!DNL Upgrade Compatibility Tool] command general options and help, run:

```bash
bin/uct --help
```

That returns a list with all available `help` options for the [!DNL Upgrade Compatibility Tool] in a command-line interface:

```terminal
- -m, --module-path[=MODULE-PATH]: Path of the modules to be analysed
- -a, --current-version[=CURRENT-VERSION]: Current Adobe Commerce version, version of the Adobe Commerce installation will be used if omitted.
- -c, --coming-version[=COMING-VERSION]: Target Adobe Commerce version, latest released version of Adobe Commerce will be used if omitted. Provides a list of all available Adobe Commerce versions.
- --json-output-path[=JSON-OUTPUT-PATH]: Path of the file where the output will be exported in json format.
- --html-output-path[=HTML-OUTPUT-PATH]: Path of the file where the output will be exported in HTML format.
- --context=CONTEXT: Execution context. This option is for integration purposes and does not affect the execution result.
- -h, --help: Display help for that specific command. If no command is provided, `list` command is the default result.
- -q, --quiet: Do not output any messages while executing the command.
- -v, --version: Display application version.
- --ansi, --no-ansi: Enable ANSI output.
- -n, --no-interaction: Do not ask any interactive question while executing the command.
- -v, --vv, --vvv, --verbose: Increase verbosity of output communications. 1 for normal output, 2 for verbose output, and 3 for DEBUG output.
```

However, it is possible to run `--help` as an option when running a specific command. This will return specific `--help` options for that specific command.

Example of the `upgrade:check` command with `--help` option:

```bash
bin/uct upgrade:check --help
```

This returns specific options that can be run for the `upgrade:check` command:

```terminal
--min-issue-level.
-i, --ignore-current-version-compatibility-issues.
```

## Follow Adobe Commerce Best Practices

- Avoid having two modules with the same name. 
- Follow Adobe Commerce [coding standards](https://devdocs.magento.com/guides/v2.4/coding-standards/bk-coding-standards.html).
- Adobe Commerce 2.4 [Upgrade guide](https://experienceleague.adobe.com/docs/commerce-operations/assets/adobe-commerce-2-4-upgrade-guide.pdf) best practices.

## Optimize your results

The [!DNL Upgrade Compatibility Tool] provides a report containing results with all issues identified on your project by default. You can optimize the results to focus on those issues that you must fix to complete the upgrade:

- Use the option `--ignore-current-version-compatibility-issues` when you only want to get new issues that are introduced with the update from your current version to the targeted version in your [!DNL Upgrade Compatibility Tool] report.
- Adding the `--min-issue-level` option, this setting allows to set the minimum issue level, to help prioritize only the most important issues with your upgrade.
- The [!DNL Upgrade Compatibility Tool] requires at least 2GB RAM to run. This setting is recommended to avoid issues due to a low memory limitation. The [!DNL Upgrade Compatibility Tool] displays a question if you run the `upgrade:check` command with a low `memory_limit` setting.
- If you want to analyze only a certain vendor, module, or even directory, you can specify the path as an option as well. Run the `bin` command with the added option `-m`. This allows the [!DNL Upgrade Compatibility Tool] to analyze a specific module independently, and helps with memory issues that can occur when executing the [!DNL Upgrade Compatibility Tool]. Specify the `-m` option to run the tool against a specific module:

   ```bash
   bin/uct upgrade:check <dir> -m[=MODULE-PATH]
   ```

Where arguments are as follows:

- `<dir>`: Adobe Commerce installation directory.
- `[=MODULE-PATH]`: Specific module path directory.
