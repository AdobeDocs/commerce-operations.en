---
title: Data migration settings
description: Learn how to start migrating settings from Magento 1 to Magento 2 with the [!DNL Data Migration Tool].
exl-id: 6fc8285a-9f26-48a5-9034-49a6a1b66b40
topic: Commerce, Migration
---
# Data migration settings

The `Settings` mode migrates stores, websites, and system configuration like shipping, payment, and tax settings. According to our data migration [order](overview.md#migration-order), you should migrate settings first.

Before you start, take the following steps to prepare:

1. Log in to the application server as the [file system owner](../../../installation/prerequisites/file-system/overview.md).

1. Change to the `/bin` directory or make sure it is added to your system `PATH`.

>[!NOTE]
>
>Ensure Magento 2 is deployed in `default` mode. Developer mode can cause validation errors in the migration tool.


See the [first steps](overview.md#first-steps) section for more details.

## Run the settings migration command

To start migrating settings, run:

```bash
bin/magento migrate:settings [-r|--reset] [-a|--auto] {<path to config.xml>}
```

Where:

*  `[-r|--reset]` is an optional argument that starts migration from the beginning. You can use this argument for testing migration

*  `[-a|--auto]` is an optional argument that prevents migration from stopping when it encounters integrity check errors.

*  `{<path to config.xml>}` is the absolute file system path to the migration tool's [`config.xml`](../configure.md#configure-migration-in-vendor-folder) file; this argument is required.

>[!NOTE]
>
>This command does not migrate all configuration settings. Verify all settings in the Magento 2 Admin before proceeding.


The `Migration completed` message is displayed after the settings are transferred successfully.

## Configure custom migration rules

You may ignore, rename, or change the system configurations when migrating settings. For this, specify your custom rules in the `settings.xml` file.

1. Log in to the application server as, or switch to, the [file system owner](../../../installation/prerequisites/file-system/overview.md).

1. Change to the following directory:

   ```bash
   cd <your application 2 install dir>/vendor/magento/data-migration-tool/etc/<edition-to-edition>
   ```

   For example, if the application is installed in `/var/www/html`, the `settings.xml.dist` file is in one of the following directories:

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
