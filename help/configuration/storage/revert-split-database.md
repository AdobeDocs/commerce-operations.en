---
title: Revert Split Database
description: Revert from a deprecated split database implementation to a single database implementation.
feature: Configuration, Storage
exl-id: 2ece24e0-1f85-445a-8e22-fb10611403ff
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: dac87252-6066-4d6e-a9d2-f6d84c323de7
    internal-label: Configuration
  - id: aa037b12-c774-5642-a947-459024feb1a2
    internal-label: Storage
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
---
# Revert from Split Database

{{ee-only}}

For Adobe Commerce customers who have implemented [Split Database](multi-master.md), the following topic describes how to revert or migrate back to a single database. We recommend that Adobe Commerce merchants currently using Split Database and plan to upgrade to 2.4.2 and later review these steps.

Reverting from a split database to a single database involves creating backups of the `magento_quote` and `magento_sales` databases before loading them into the single `magento_main` database.

In this example, we log in to all three databases, which are installed on the same host (`magento2-mysql`) as the "root" user. You must replace these values with the appropriate values for your databases.

1. Create a backup of the `magento_quote` database:

   ```shell
   mysqldump -h "magento2-mysql" -u root -p magento_quote > ./quote.sql
   ```

1. Create a backup of the `magento_sales` database:

   ```shell
   mysqldump -h "magento2-mysql" -u root -p magento_sales > ./sales.sql
   ```

1. Load the `magento_quote` database into the `magento_main` database:

   ```shell
   mysql -h "magento2-mysql" -u root -p magento_main < ./quote.sql
   ```

1. Load the `magento_sales` database into the `magento_main` database:

   ```shell
   mysql -h "magento2-mysql" -u root -p magento_main < ./sales.sql
   ```

1. Drop the `magento_sales` database:

   ```shell
   mysql -h "magento2-mysql" -u root -p -e "DROP DATABASE magento_sales;"
   ```

1. Drop the `magento_quote` database:

   ```shell
   mysql -h "magento2-mysql" -u root -p -e "DROP DATABASE magento_quote;"
   ```

1. Remove the deployment configuration for `checkout` and `sales` in the `connections` and `resources` sections of the `env.php` file.
1. Restore foreign keys:

   ```shell
   bin/magento setup:upgrade
   ```

## Verify your work

To verify that your single database implementation is working properly, perform the following tasks and verify that data is added to the `magento_main` database tables using a database tool like [phpMyAdmin](../../installation/prerequisites/optional-software.md#phpmyadmin):

1. Verify that foreign keys have been restored. For example, the `QUOTE_STORE_ID_STORE_STORE_ID` key in the `quote` database table.
1. Verify that customers can place orders from the storefront.
1. Verify that orders created before reverting the split database to a single database are available in the Admin.
