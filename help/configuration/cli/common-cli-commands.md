---
title: Common commands
description: View a sampling of common Commerce CLI commands and usage.
exl-id: d35a1dd9-10b3-4364-b6f4-b1e259a04e3d
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
|[`magento cache:{enable/disable/clean/flush/status}`](../cli/manage-cache.md)|Manages the cache|
|[`magento indexer:{status/show-mode/set-mode/reindex/info/reset/show-dimensions-mode/set-dimensions-mode}`](../cli/manage-indexers.md)|Manages the indexers|
|[`magento cron:run`](../cli/configure-cron-jobs.md)|Runs Commerce cron jobs|
|[`magento setup:di:compile`](../cli/code-compiler.md)|Compiles all non-existent proxies and factories; and pre-compiles class definitions, inheritance information, and plug-in definitions for one store and website.|
|[`magento info:dependencies:{show-modules/show-modules-circular/show-framework}`](../cli/dependency-reports.md)|Module dependencies, circular dependencies, and Commerce framework dependencies.|
|[`magento i18n:{collect-phrases/pack/uninstall}`](../cli/localization.md)|Creates a translation dictionary or a translation package|
|[`magento setup:static-content:deploy`](../cli/static-view-file-deployment.md)|Deploys static view files|
|[`magento dev:source-theme:deploy`](../cli/create-symlinks.md)|Creates CSS from LESS|
|[`magento dev:tests:run`](../cli/unit-tests.md)|Runs automated tests|
|[`magento dev:xml:convert`](../cli/convert-layout-files.md)|Update your layout XML files to match the new Extensible Stylesheet Language Transformations (XSLT) stylesheet|
|[`magento setup:perf:generate-fixtures`](../cli/generate-data.md)|Generate data to use for performance testing.|
|[`magento sampledata:install`](../../installation/sample-data/overview.md)|Installs optional sample data after you install the Commerce application.<br><br>For more details about sample data, see [Optional sample data](../../installation/sample-data/overview.md).|
|[`magento config:{set/sensitive:set/show/}`](../cli/set-configuration-values.md)|Manages backend configurations|
|[`magento admin:user:{create/unlock}`](../../installation/tutorials/admin.md#create-edit-or-unloack-an-administrator-account)| Creates/edits/unlocks admin users.|
|[`magento dev:template-hints:{enable/disable}`](https://developer.adobe.com/commerce/frontend-core/guide/themes/debug/)|Enables/disables developer template hints.|

## Common arguments

The following arguments are common to [all commands](/help/tools/reference/commerce-on-premises.md). These commands can be run either before or after the Commerce software is installed:

|Long version|Short version|Meaning|
|--- |--- |--- |
|`--help`|`-h`|Get help for any command. For example, `./magento help setup:install` or `./magento help setup:config:set`.|
|`--quiet`|`-q`|Quiet mode; no output.|
|`--no-interaction`|`-n`|No interactive questions.|
|`--verbose=1,2,3`|`-v, -vv, -vvv`|Verbosity level. For example, `--verbose=3` or `-vvv` displays debug verbosity, which is the most verbose output. Default is `--verbose=1` or `-v`.|
|`--version`|`-V`|Display this application version|
|`--ansi`|n/a|Force ANSI output|
|`--no-ansi`|n/a|Disable ANSI output|
