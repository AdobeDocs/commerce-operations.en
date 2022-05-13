---
title: Common commands
description: View a sampling of common Commerce CLI commands and usage.
---

# Common commands

The following summarizes some of the available commands.

**To display a complete list of commands**:

```bash
bin/magento list
```

Example help command:

```bash
bin/magento help <command>
```

```bash
bin/magento help cache:enable
```

Commands are shown in summary form only; for more information about a command, click the link in the Command column.

|Command|Description|
|--- |--- |
|[`magento cache:{enable/disable/clean/flush/status}`](../cli/config-cli-subcommands-cache.md)|Manages the cache|
|[`magento indexer:{status/show-mode/set-mode/reindex/info/reset/show-dimensions-mode/set-dimensions-mode}`](../cli/config-cli-subcommands-index.md)|Manages the indexers|
|[`magento cron:run`](../cli/config-cli-subcommands-cron.md)|Runs Magento cron jobs|
|[`magento setup:di:compile`](../cli/config-cli-subcommands-compiler.md)|Compiles all non-existent proxies and factories; and pre-compiles class definitions, inheritance information, and plug-in definitions for one store and website.|
|[`magento info:dependencies:{show-modules/show-modules-circular/show-framework}`](../cli/config-cli-subcommands-depen.md)|Module dependencies, circular dependencies, and Magento framework dependencies.|
|[`magento i18n:{collect-phrases/pack/uninstall}`](../cli/config-cli-subcommands-i18n.md)|Creates a translation dictionary or a translation package|
|[`magento setup:static-content:deploy`](../cli/config-cli-subcommands-static-view.md)|Deploys static view files|
|[`magento dev:source-theme:deploy`](../cli/config-cli-subcommands-less-sass.md)|Creates CSS from LESS|
|[`magento dev:tests:run`](../cli/config-cli-subcommands-test.md)|Runs automated tests|
|[`magento dev:xml:convert`](../cli/config-cli-subcommands-layout-xml.md)|Update your layout XML files to match the new Extensible Stylesheet Language Transformations (XSLT) stylesheet|
|[`magento setup:perf:generate-fixtures`](../cli/config-cli-subcommands-perf-data.md)|Generate data to use for performance testing.|
|[`magento sampledata:install`](https://devdocs.magento.com/guides/v2.4/install-gde/install/sample-data.md)|Installs optional Magento sample data after you install the Magento application.<br><br>For more details about Magento sample data, see [Optional Magento sample data](https://devdocs.magento.com/guides/v2.4/install-gde/install/sample-data.md).|
|[`magento config:{set/sensitive:set/show/}`](../cli/config-cli-subcommands-config-mgmt-set.md)|Manages backend configurations|
|[`bin/magento admin:user:{create/unlock}`](https://devdocs.magento.com/guides/v2.4/install-gde/install/cli/install-cli-subcommands-admin.md)| Creates/edits/unlocks admin users.|
|[`bin/magento dev:template-hints:{enable/disable}`](https://devdocs.magento.com/guides/v2.4/frontend-dev-guide/themes/debug-theme.md)|Enables/disables developer template hints.|

## Common arguments

The following arguments are common to all commands. These commands can be run either before or after the Magento software is installed:

|Long version|Short version|Meaning|
|--- |--- |--- |
|`--help`|`-h`|Get help for any command. For example, `./magento help setup:install` or `./magento help setup:config:set`.|
|`--quiet`|`-q`|Quiet mode; no output.|
|`--no-interaction`|`-n`|No interactive questions.|
|`--verbose=1,2,3`|`-v, -vv, -vvv`|Verbosity level. For example, `--verbose=3` or `-vvv` displays debug verbosity, which is the most verbose output. Default is `--verbose=1` or `-v`.|
|`--version`|`-V`|Display this application version|
|`--ansi`|n/a|Force ANSI output|
|`--no-ansi`|n/a|Disable ANSI output|
