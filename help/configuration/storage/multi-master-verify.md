---
title: Verify split database
description: Learn how to verify that a Commerce split database configuration is working properly.
ee_only: True
---

# Verify split database

After configuration, the master databases are configured as follows:

-  Main magento database: 369 tables
-  Magento [quote](https://glossary.magento.com/quote) database: 11 tables
-  Magento sales database: 55 tables

To verify that your split databases are working properly, perform the following tasks and verify that data is added to the database tables using a database tool like [phpmyadmin](https://devdocs.magento.com/guides/v2.4/install-gde/prereq/optional.html#install-optional-phpmyadmin):

What to verify | How to verify
-------------- | -------------
quote database is working | Add items to a cart. Verify that rows have been added to your quote database's `quote`, `quote_address`, and `quote_item` tables.
sales database is working | Complete an order (any payment method, including check/money order). Verify that rows have been added to your sales database's `sales_order_address`, `sales_order_item`, and `sales_order_payment` tables.

>[!WARNING]
>
>You must back up the two additional database instances manually. Magento backs up only the main database instance. The [`magento setup:backup --db`](https://devdocs.magento.com/guides/v2.4/install-gde/install/cli/install-cli-backup.html) command and Admin options do not back up the additional tables.
