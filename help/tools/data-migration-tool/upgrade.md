---
title: Upgrade the Data Migration Tool
description: Learn how to upgrade the Data Migration Tool to transfer data between Magento 1 and Magento 2.
---

# Upgrade the Data Migration Tool

To make sure the versions of your current Magento 2 installation and the Data Migration Tool match exactly, you may need to upgrade the Tool.

## Prerequisites

Before upgrading the Data Migration Tool, you must:

*  Upgrade your Magento software to get the latest version

*  Back up the `vendor/magento/data-migration-tool` directory

*  Make sure the Data Migration Tool version matches the Magento application version

### Upgrade your Magento software

If you haven't already done so, [upgrade the Magento software](https://experienceleague.adobe.com/docs/commerce-operations/upgrade-guide/overview.html).

### Back up the `vendor/magento/data-migration-tool` directory

Before you upgrade the Data Migration Tool, back up at least the `vendor/magento/data-migration-tool` directory. During upgrade, it could be deleted and replaced by the updated code.

You can also back up the entire Magento codebase and database using the following command:

```bash
php <magento_root>/bin/magento setup:backup --code --db
```

>[!WARNING]
>
>The `vendor/magento/data-migration-tool` directory contains your custom code. Failure to back it up means you can lose your customizations during upgrade.


### Make sure versions match

The versions of the Data Migration Tool and your Magento software must match exactly. For example, Magento 2.1.2 requires version 2.1.2 of the Data Migration Tool.

See the [Install Data Migration Tool](install.md) topic to know how to:

*  [Check](install.md#check-your-version) your Magento 2 version

*  [Find](install.md#find-released-versions-of-data-migration-tool) released versions of the Data Migration Tool

*  [Check](install.md#check-version-of-installed-data-migration-tool) the Data Migration Tool version

## Upgrade the Data Migration Tool

1. Log in to your Magento server as, or switch to, [the file system owner](https://devdocs.magento.com/guides/v2.4/install-gde/prereq/file-sys-perms-over.html).
1. Change to Magento 2 root directory.
1. Enter the following command:

   ```bash
   composer require magento/data-migration-tool:<version>
   ```

   where `<version>` must match the version of the Magento 2 codebase.

   For example, for version 2.1.2, enter:

   ```bash
   composer require magento/data-migration-tool:2.1.2
   ```

1. Wait while the command completes.
