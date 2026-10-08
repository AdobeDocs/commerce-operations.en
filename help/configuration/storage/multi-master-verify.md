---
title: Verify split database
description: Learn how to verify that a Commerce split database configuration is working properly.
recommendations: noCatalog
exl-id: 36295240-6521-4f3e-9ea3-f35b73de672d
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
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
