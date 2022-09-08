---
title: Uninstall themes
description:
---

# Uninstall themes

## Prerequisite

Before you use this command, you must know the relative path to your theme. Themes are located in a subdirectory of `<magento_root>/app/design/<area name>`. You must specify the path to the theme starting with the area, which is either `frontend` (for storefront themes) or `adminhtml` (for [Admin](https://glossary.magento.com/magento-admin) themes).

For example, the path to the Luma [theme](https://glossary.magento.com/theme) provided with Adobe Commerce and Magento Open Source is `frontend/Magento/luma`.

For more information about themes, see [theme structure](https://devdocs.magento.com/guides/v2.4/frontend-dev-guide/themes/theme-structure.html).

## Overview of uninstalling themes

This section discusses how to uninstall one or more themes, optionally including the themes' code from the file system. You can create backups first so you can restore the data at a later time.

This command uninstalls *only* themes that are specified in `composer.json`; in other words, themes that are provided as [Composer](https://glossary.magento.com/composer) packages. If your theme is not a Composer package, you must uninstall it manually by:

*  Updating the `parent` node information in `theme.xml` to remove references to the theme.
*  Removing theme code from the file system.

   [More information about theme inheritance](https://devdocs.magento.com/guides/v2.4/frontend-dev-guide/themes/theme-inherit.html).

## First steps

{{%include /help/_includes/cli-first-steps.md}}

## Uninstall themes

Command usage:

```bash
bin/magento theme:uninstall [--backup-code] [-c|--clear-static-content] {theme path} ... {theme path}
```

where

*  `{theme path}` is the relative path to the theme, starting with the area name. For example, the path to the Blank theme supplied with Adobe Commerce and Magento Open Source is `frontend/Magento/blank`.
*  `--backup-code` backs up the codebase as discussed in the paragraphs that follow.
*  `--clear-static-content` cleans generated [static view files](https://experienceleague.adobe.com/docs/commerce-operations/configuration-guide/cli/static-view/static-view-file-deployment.html), which is necessary to cause static view files to display properly.

The command performs the following tasks:

1. Verifies that the specified theme paths exist; if not, the command terminates.
1. Verifies that the theme is a Composer package; if not, the command terminates.
1. Checks for dependencies; if there are any, the command terminates.

   To work around this, you can either uninstall all themes at the same time or you can uninstall the depending theme first.

1. Verifies that the theme is not being used; if it is being used, the command terminates.
1. Verifies that the theme is not the base of the virtual theme; if it is the base of a virtual theme, the command terminates.
1. Puts the store in maintenance mode.
1. If `--backup-code` is specified, backs up the codebase, excluding the `pub/static`, `pub/media`, and `var` directories.

   The backup file name is `var/backups/<timestamp>_filesystem.tgz`

   You can restore backups at any time using the [magento setup:rollback](uninstall-modules.md#roll-back-the-file-system-database-or-media-files) command.

1. Removes themes from the `theme` database table.
1. Remove themes from code base using `composer remove`.
1. Cleans the [cache](https://glossary.magento.com/cache).
1. Cleans generated classes
1. If `--clear-static-content` is specified, cleans [generated static view files](https://experienceleague.adobe.com/docs/commerce-operations/configuration-guide/cli/static-view/static-view-file-deployment.html).

For example, if you attempt to uninstall a theme that another theme depends on, the following message displays:

```terminal
Cannot uninstall frontend/ExampleCorp/SampleModuleTheme because the following package(s) depend on it:
        ExampleCorp/sample-module-theme-depend
```

One alternative is to uninstall both themes at the same time as follows after backing up the codebase:

```bash
bin/magento theme:uninstall frontend/ExampleCorp/SampleModuleTheme frontend/ExampleCorp/SampleModuleThemeDepend --backup-code
```

Messages similar to the following display:

```terminal
Code backup is starting...
Code backup filename: 1435261098_filesystem_code.tgz (The archive can be uncompressed with 7-Zip on Windows systems)
Code backup path: /var/www/html/magento2/var/backups/1435261098_filesystem_code.tgz
[SUCCESS]: Code backup completed successfully.Removing frontend/ExampleCorp/SampleModuleTheme, frontend/ExampleCorp/SampleModuleThemeDepend from database
Loading composer repositories with package information
Updating dependencies (including require-dev)
Removing frontend/ExampleCorp/SampleModuleTheme, frontend/ExampleCorp/SampleModuleThemeDepend from Magento codebase
  - Removing ExampleCorp/sample-module-theme-depend (dev-master)
Removing ExampleCorp/SampleThemeDepend
  - Removing ExampleCorp/sample-module-theme (dev-master)
Removing ExampleCorp/SampleTheme
Writing lock file
Generating autoload files
Cache cleared successfully.
Alert: Generated static view files were not cleared. You can clear them using the --clear-static-content option.
Failure to clear static view files might cause display issues in the Admin and storefront.
Disabling maintenance mode
```

>[!NOTE]
>
>To uninstall an [Admin](https://glossary.magento.com/admin) theme, you must also remove it from your component's [dependency injection](https://glossary.magento.com/dependency-injection) configuration, `<component root directory>/etc/di.xml`.
