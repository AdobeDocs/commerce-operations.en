---
title: MySQL triggers usage
description: Learn how to use MySQL triggers effectively with Adobe Commerce.
role: Developer
feature: Best Practices
exl-id: acac3e47-67c8-4eea-80e3-e26f2854391a
---
# Best practices for MySQL triggers usage

This article explains how to avoid performance issues when using MySQL triggers. Triggers are used to log changes into audit tables.

## Affected products and versions

- Adobe Commerce on-premises
- Adobe Commerce on cloud infrastructure

>[!WARNING]
>
>For Adobe Commerce on cloud projects, always test configuration changes in the Staging environment before changing the configuration for the Production environment.

## Understand performance impacts

Triggers are interpreted as code meaning that MySQL does not precompile them.

Hooking into the query's transaction space, triggers add overhead to a parser and interpreter for each query performed with the table. The triggers share the same transaction space as the original queries, and while those queries compete for locks on the table, the triggers independently compete for locks on another table.

This additional overhead can negatively impact site performance on the site if many triggers are used.

>[!WARNING]
>
>Adobe Commerce does not support any custom triggers in the Adobe Commerce database because custom triggers can introduce incompatibilities with future Adobe Commerce versions. For best practices, see [General MySQL Guidelines](../../../installation/prerequisites/database/mysql.md) in the Adobe Commerce documentation.

## Use triggers effectively

To prevent performance issues when using triggers, follow these guidelines:

- If you have custom triggers that write some data when the trigger is executed, move this logic to write directly to the audit tables instead. For example, by adding an additional query in the application code, after the query you aimed to create the trigger for.
- Review existing custom triggers and consider removing them and writing directly to the tables from the application side. Check for existing triggers in your database by using the [`SHOW TRIGGERS` SQL Statement](https://dev.mysql.com/doc/refman/8.0/en/show-triggers.html).
- For additional assistance, questions, or concerns, [submit an Adobe Commerce Support ticket](https://experienceleague.adobe.com/docs/commerce-knowledge-base/kb/help-center-guide/magento-help-center-user-guide.html?#submit-ticket).

## Additional information

- [MySQL prerequisites](../../../installation/prerequisites/database/mysql.md)
- [Database best practices for Adobe Commerce on cloud infrastructure](database-on-cloud.md)
