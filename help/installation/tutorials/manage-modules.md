---
title: Enable or disable modules
description: Follow these steps to manage Adobe Commerce or Magento Open Source modules.
exl-id: 7155950a-a66a-4254-a71c-1a9aeab47606
---
# Enable or disable modules

This command has no prerequisites.

## Module status

Use the following command to list enabled and disabled modules:

```bash
bin/magento module:status [--enabled] [--disabled] <module-list>
```

Where

*  `--enabled` lists all enabled modules.
*  `--disabled` lists all disabled modules.
*  `<module-list>` is a space-delimited list of modules to check the status. If any module name contains special characters, enclose the name in either single or double quotes.

>[!NOTE]
>
>You cannot enable or disable modules directly on cloud projects. You must run these commands locally and then push changes to the `app/etc/config.php` file for an environment. See [Pro project workflow: Deployment workflow](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/architecture/pro-develop-deploy-workflow.html#deployment-workflow).

## Module enable, disable

To enable or disable available modules, use the following command:

```bash
bin/magento module:enable [-c|--clear-static-content] [-f|--force] [--all] <module-list>
```

```bash
bin/magento module:disable [-c|--clear-static-content] [-f|--force] [--all] <module-list>
```

Where

*  `<module-list>` is a space-delimited list of modules to enable or disable. If any module name contains special characters, enclose the name in either single or double quotes.
*  `--all` to enable or disable all modules at the same time.
*  `-f` or `--force` to force a module to be enabled or disabled despite dependencies. Before you use this option, see [About enabling and disabling modules](#about-enabling-and-disabling-modules).
*  `-c` or `--clear-static-content` cleans [generated static view files](../../configuration/cli/static-view-file-deployment.md).

   Failure to clear static view files might result in issues if there are multiple files with the same name and you do not clear all of them.

   In other words, because of the [static file fallback](../../configuration/cli/static-view-file-deployment.md) rules, if you do not clear static files and there is more than one file named `logo.svg` that are different, fallback might cause the wrong file to display.

For example, to disable the `Magento_Weee` module, enter:

```bash
bin/magento module:disable Magento_Weee
```

For important information about enabling and disabling modules, see [About enabling and disabling modules](#about-enabling-and-disabling-modules).

## Update the database

If you enabled one or more modules, run the following command to update the database:

```bash
bin/magento setup:upgrade
```

Then clean the cache:

```bash
bin/magento cache:clean
```

## About enabling and disabling modules

Adobe Commerce enables you to enable or disable currently available modules; in other words, any Adobe-provided module or any third-party module that is currently available.

Certain modules have dependencies on other modules, in which case you might not be able to enable or disable a module because it has dependencies on other modules.

In addition, there might be *conflicting* modules that cannot both be enabled at the same time.

Examples:

*  Module A depends on Module B. You cannot disable Module B unless you first disable Module A.

*  Module A depends on Module B, both of which are disabled. You must enable module B before you can enable module A.

*  Module A conflicts with Module B. You can disable Module A and Module B, or you can disable either module but you *cannot* enable Module A and Module B at the same time.

*  Dependencies are declared in the `require` field in the Adobe Commerce `composer.json` file for each module. Conflicts are declared in the `conflict` field in modules' `composer.json` files. We use that information to build a dependency graph: `A->B` means module A depends on module B.

*  A *dependency chain* is the path from a module to another one. For example, if module A depends on module B and module B depends on module C, then the dependency chain is `A->B->C`.

If you attempt to enable or disable a module that depends on other modules, the dependency graph displays in the error message.

>[!NOTE]
>
>It's possible that module A's `composer.json` declares a conflict with module B but not conversely.

*Command line only:* To force a module to be enabled or disabled regardless of its dependencies, use the optional `--force` argument.

>[!NOTE]
>
>Using `--force` can disable your store and cause problems accessing the Admin.
