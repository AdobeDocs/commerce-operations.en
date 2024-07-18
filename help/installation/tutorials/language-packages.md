---
title: Uninstall language packages
description: Follow these steps to uninstall an Adobe Commerce language package.
exl-id: 9901aa0b-af1a-4ae9-968f-ac8421060f57
---
# Uninstall language packages

This section discusses how to uninstall one or more language packages, optionally including the language packages' code from the file system. You can create backups first so you can restore the data later.

This command uninstalls *only* language packages that are specified in `composer.json`; in other words, language packages that are provided as Composer packages. If your language package is not a Composer package, you must uninstall it manually by removing language package code from the file system.

You can restore backups at any time using the [`magento setup:rollback`](uninstall-modules.md#roll-back-the-file-system-database-or-media-files) command.

Command usage:

```bash
bin/magento i18n:uninstall [-b|--backup-code] {language package name} ... {language package name}
```

The language package uninstall command performs the following tasks:

1. Checks for dependencies; if so, the command terminates.

   To work around this, you can either uninstall all dependent language packages at the same time or you can uninstall the dependent language packages first.

1. If `--backup code` is specified, back up the file system (excluding `var` and `pub/static` directories) to `var/backups/<timestamp>_filesystem.tgz`
1. Removes language packages files from the codebase using `composer remove`.
1. Cleans the cache.

For example, if you attempt to uninstall a language package that another language package depends on, the following message displays:

```
Cannot uninstall vendorname/language-en_us because the following package(s) depend on it:
      vendorname/language-en_gb
```

One alternative is to uninstall both language packages after backing up the codebase:

```bash
bin/magento i18n:uninstall vendorname/language-en_us vendorname/language-en_gb --backup-code
```

Messages similar to the following display:

```
Code backup is starting...
Code backup filename: 1435261098_filesystem_code.tgz (The archive can be uncompressed with 7-Zip on Windows systems)
Code backup path: /var/www/html/magento2/var/backups/1435261098_filesystem_code.tgz
[SUCCESS]: Code backup completed successfully.
Loading composer repositories with package information
Updating dependencies (including require-dev)
  - Removing vendorname/language-en_us (dev-master)
Removing Magento/LanguageEn_us
  - Removing vendorname/language-en_br (dev-master)
  - Removing vendorname/language-en_br (dev-master)
Writing lock file
Generating autoload files
```
