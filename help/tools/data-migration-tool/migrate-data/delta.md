---
title: Migrate changes
description: Learn how to migrate only data that has changed since your last Magento 1 data migration with the [!DNL Data Migration Tool].
---

# Migrate changes

The incremental migration tool installs deltalog tables (with prefix `m2_cl_*`) and triggers (for tracking changes) in the Magento 1 database during the [migration of data](data.md). These deltalog tables and triggers are essential to ensuring that you migrate only the changes made in Magento 1 since the last time you migrated data. These changes are:

*  Data that customers added via [storefront](https://glossary.magento.com/storefront) (created orders, reviews, changes in customer profiles, etc.)

*  All operations with orders, products, and categories in the [Admin](https://glossary.magento.com/magento-admin) panel

>[!NOTE]
>
>All other new or updated entities entered through the Admin, such as attributes or CMS pages, are not included in the incremental migration and will not be migrated.


Before you start, take the following steps to prepare:

1. Log in to Magento server as [the file system owner](https://devdocs.magento.com/guides/v2.4/install-gde/prereq/file-sys-perms-over.html).
1. Change to the Magento `/bin` directory or make sure it is added to your system PATH.

See the [first steps](overview.md#first-steps) section for more details.

## Run the incremental migration command

To start migrating incremental changes, run:

```bash
bin/magento migrate:delta [-r|--reset] [-a|--auto] {<path to config.xml>}
```

where

*  `[-r|--reset]` is an optional argument that starts migration from the beginning. You can use this argument for testing migration.

*  `[-a|--auto]` is an optional argument that prevents migration from stopping when it encounters integrity check errors.

*  `{<path to config.xml>}` is the absolute file system path to `config.xml`; this argument is required.

>[!NOTE]
>
>Incremental migration is a continuous process; it automatically restarts every 5 seconds. Use CTRL-C to abort the migration process.


## Migrate data created by third-party extensions

In the `Delta` mode, the [!DNL Data Migration Tool] migrates data created only by Magento's own modules and is not responsible for the code or extensions made by third-party developers. If these extensions created data in the storefront database and the merchant wants to have this data in Magento 2 --- config files of the [!DNL Data Migration Tool] should be created and modified accordingly.

If an [extension](https://glossary.magento.com/extension) has its own tables, and you need to track their changes for delta migration, follow these steps:

1. Add the tables to be tracked to the `deltalog.xml` file
1. Create an additional delta class which extends the `Migration\App\Step\AbstractDelta`
1. Add the name of the newly created class to the delta mode section of `config.xml`
