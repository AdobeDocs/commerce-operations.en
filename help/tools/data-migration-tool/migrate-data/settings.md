---
title: Data migration settings
description: Learn how to start migrating settings from Magento 1 to Magento 2 with the Data Migration Tool.
---

# Data migration settings

The `Settings` mode migrates stores, websites, and system configuration like shipping, payment, tax settings, etc.
According to our data migration [order](overview.md#migration-order), you should migrate settings first.

Before you start, take the following steps to prepare:

1. Log in to the server with your Magento 2 instance as [the file system owner](https://devdocs.magento.com/guides/v2.4/install-gde/prereq/file-sys-perms-over.html).

1. Change to the Magento 2 `/bin` directory or make sure it is added to your system PATH.

>[!NOTE]
>
>Ensure Magento 2 is deployed in `default` mode. Developer mode can cause validation errors in the migration tool.


See the [first steps](overview.md#first-steps) section for more details.

## Run the settings migration command

To start migrating settings, run:

```bash
bin/magento migrate:settings [-r|--reset] [-a|--auto] {<path to config.xml>}
```

where:

*  `[-r|--reset]` is an optional argument that starts migration from the beginning. You can use this argument for testing migration

*  `[-a|--auto]` is an optional argument that prevents migration from stopping when it encounters integrity check errors.

*  `{<path to config.xml>}` is the absolute file system path to the migration tool's [`config.xml`](../configure.md#configure-migration-in-vendor-folder) file; this argument is required.

>[!NOTE]
>
>This command does not migrate all configuration settings. Verify all settings in the Magento 2 [Admin](https://glossary.magento.com/admin) before proceeding.


The `Migration completed` message is displayed after the settings are transferred successfully.

## Configure custom migration rules

You may ignore, rename or change the system configurations when migrating settings. For this, specify your custom rules in the `settings.xml` file.

1. Log in to the server with your Magento 2 instance as, or switch to, the [file system owner](https://devdocs.magento.com/guides/v2.4/install-gde/prereq/file-sys-perms-over.html).

1. Change to the following directory:

   ```bash
   cd <your Magento 2 install dir>/vendor/magento/data-migration-tool/etc/<edition-to-edition>
   ```

   For example, if Magento 2 is installed in `/var/www/html`, you will find `settings.xml.dist` in one of the following directories:

   *  `/var/www/html/vendor/magento/data-migration-tool/etc/opensource-to-commerce`

   *  `/var/www/html/vendor/magento/data-migration-tool/etc/commerce-to-commerce`

   *  `/var/www/html/vendor/magento/data-migration-tool/etc/opensource-to-opensource`

1. To create a `settings.xml` file from the provided sample, run:

   ```bash
   cp settings.xml.dist settings.xml
   ```

1. Make your changes in `settings.xml`.

1. To specify the new name of the settings file for mapping, change the `<settings_map_file>` tag in the `path/to/config.xml` file.

For more details, see the [Settings migration mode](../technical-specification.md#settings-migration-mode) section of the Tool's [specification](../technical-specification.md).

## Next migration step

*  [Migrate data](data.md)
