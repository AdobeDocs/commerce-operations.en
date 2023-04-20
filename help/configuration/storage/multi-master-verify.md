---
title: Verify split database
description: Learn how to verify that a Commerce split database configuration is working properly.
---

# Verify split database

{{ee-only}}

{{deprecate-split-db}}

After configuration, the master databases are configured as follows:

- Main Commerce database: 369 tables
- Commerce quote database: 11 tables
- Commerce sales database: 55 tables

To verify that your split databases are working properly, perform the following tasks and verify that data is added to the database tables using a database tool like [phpmyadmin](../../installation/prerequisites/optional-software.md#phpmyadmin):

| What to verify | How to verify |
| -------------- | ------------- |
| quote database is working | Add items to a cart. Verify that rows have been added to your quote database's `quote`, `quote_address`, and `quote_item` tables. |
| sales database is working | Complete an order (any payment method, including check/money order). Verify that rows have been added to your sales database's `sales_order_address`, `sales_order_item`, and `sales_order_payment` tables. |

>[!WARNING]
>
>You must back up the two additional database instances manually. Commerce backs up only the main database instance. The [`magento setup:backup --db`](../../installation/tutorials/backup.md) command and Admin options do not back up the additional tables.
