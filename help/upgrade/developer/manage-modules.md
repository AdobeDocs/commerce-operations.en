---
title: Manage Modules and Extensions
description: Manage Adobe Commerce and Magento Open Source modules and extensions using the command-line interface and Composer package manager.
---

# Manage modules and extensions

Contributing developers upgrade modules and extensions by specifying their versions in the Adobe Commerce or Magento Open Source `composer.json` file. If you are not a contributing developer, see [Perform an upgrade](../implementation/perform-upgrade.md).

You can either add a `require` section to the `composer.json` file or you can use the `composer require` command as follows:

1. Log in to your server.
1. Switch to the [file system owner](https://devdocs.magento.com/guides/v2.4/install-gde/prereq/file-sys-perms-over.html).
1. Change to the directory where you cloned the application. For example,

   ```bash
   cd /var/www/magento2
   ```

You have the following options:

## Get available module versions

Command usage:

```bash
composer show --all <vendor>/<name>
```

For example:

```bash
composer show --all example/module
```

## Use the `composer require` command

Command usage:

```bash
composer require <vendor>/<name>:<version>
```

For example:

```bash
composer require example/module:1.0.0
```

Wait while Composer updates dependencies and installs the module.

## Add a `require` section to the composer.json file

1. Open the `composer.json` in a text editor.

1. Add a `require` section.

   ```json
   "require": {
     "<vendor>/<name>": "<version>",
     "<vendor>/<name>": "<version>"
   }
   ```

1. Save your changes to the `composer.json` file and exit the text editor.

1. Resolve dependencies and write exact versions to the `composer.lock` file. 

   ```bash
   composer update
   ```
