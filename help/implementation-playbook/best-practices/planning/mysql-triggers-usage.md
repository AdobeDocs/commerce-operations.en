---
title: Use MySQL triggers effectively
description: Learn how to use MySQL triggers effectively with Adobe Commerce
role: Developer
feature-set: Commerce
feature: Best Practices
---

# Use MySQL triggers effectively with Adobe Commerce

This article explains how to avoid performance issues when using MySQL triggers. Triggers are used to log changes into audit tables.

## Affected products and versions

* Adobe Commerce on-premises
* Adobe Commerce on cloud infrastructure

>![WARNING]
>
>For Adobe Commerce on cloud projects, always test configuration changes in the Staging environment before changing the configuration for the Production environment.

Triggers are interpreted as code meaning that MySQL does not precompile them.

Hooking into the query's transaction space, triggers add overhead to a parser and interpreter for each query performed with the table. The triggers share the same transaction space as the original queries, and while those queries compete for locks on the table, the triggers independently compete for locks on another table.

This additional overhead can negatively impact site performance on the site if many triggers are used.

>![WARNING]
>
>Adobe Commerce does not support any custom triggers in the Adobe Commerce database because custom triggers can introduce incompatibilities with future Adobe Commerce versions. For best practices, see [General MySQL Guidelines](../../../installation-guide/prerequisites/database-server/mysql.html) in the Adobe Commerce documentation.

To prevent performance issues when using triggers, follow these best practices:

* If you have custom triggers that write some data when the trigger is executed, move this logic to write directly to the audit tables instead. For example, by adding an additional query in the application code, after the query you aimed to create the trigger for.
* Review existing custom triggers and consider removing them and writing directly to the tables from the application side. Check for existing triggers in your database by using the [SHOW TRIGGERS SQL Statement](https://dev.mysql.com/doc/refman/8.0/en/show-triggers.html).
* For additional assistance, questions, or concerns, [submit an Adobe Commerce Support ticket](https://support.magento.com/hc/en-us/articles/360000913794#submit-ticket).

## Additional information

- [MySQL prerequisites](../../../installation-guide/prerequisites/database-server/mysql.html) in the Installation Guide
- [Database best practices for Adobe Commerce on cloud infrastructure](database-on-cloud.md)



