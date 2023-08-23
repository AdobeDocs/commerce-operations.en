---
title: MySQL configuration best practices
description: Learn how MySQL triggers and slave connections affect Commerce site performance and how to use them effectively.
role: Developer
feature: Best Practices
---

# MySQL configuration best practices

>[!NOTE]
>
>This topic contains industry-standard software terms that some may find racist, sexist, or oppressive and which may make the reader feel hurt, traumatized, or unwelcome. Adobe is working to remove these terms from code, documentation, and user experiences.

## Triggers

This article explains how to avoid performance issues when using MySQL triggers. Triggers are used to log changes into audit tables.

### Affected products and versions

- Adobe Commerce on-premises
- Adobe Commerce on cloud infrastructure

>[!WARNING]
>
>For Adobe Commerce on cloud projects, always test configuration changes in the Staging environment before changing the configuration for the Production environment.

### Performance impacts

Triggers are interpreted as code meaning that MySQL does not precompile them.

Hooking into the query's transaction space, triggers add overhead to a parser and interpreter for each query performed with the table. The triggers share the same transaction space as the original queries, and while those queries compete for locks on the table, the triggers independently compete for locks on another table.

This additional overhead can negatively impact site performance on the site if many triggers are used.

>[!WARNING]
>
>Adobe Commerce does not support any custom triggers in the Adobe Commerce database because custom triggers can introduce incompatibilities with future Adobe Commerce versions. For best practices, see [General MySQL Guidelines](../../../installation/prerequisites/database/mysql.md) in the Adobe Commerce documentation.

### Effective use

To prevent performance issues when using triggers, follow these guidelines:

- If you have custom triggers that write some data when the trigger is executed, move this logic to write directly to the audit tables instead. For example, by adding an additional query in the application code, after the query you aimed to create the trigger for.
- Review existing custom triggers and consider removing them and writing directly to the tables from the application side. Check for existing triggers in your database by using the [`SHOW TRIGGERS` SQL Statement](https://dev.mysql.com/doc/refman/8.0/en/show-triggers.html).
- For additional assistance, questions, or concerns, [submit an Adobe Commerce Support ticket](https://experienceleague.adobe.com/docs/commerce-knowledge-base/kb/help-center-guide/magento-help-center-user-guide.html?#submit-ticket).

## Slave connections

Adobe Commerce can read multiple databases asynchronously. If you expect a high load for the MySQL database of a Commerce site deployed on cloud infrastructure Pro architecture, Adobe recommends enabling the MYSQL slave connection.

When you enable the MYSQL slave connection, Adobe Commerce uses a read-only connection to the database to receive read-only traffic on a non-master node. The performance improves through load balancing when only one node handles read-write traffic.

### Affected versions

Adobe Commerce on cloud infrastructure, Pro architecture only

### Configuration

In the Adobe Commerce on cloud infrastructure, you can override the default configuration for the MYSQL slave connection by setting the [MYSQL_USE_SLAVE_CONNECTION](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/configure/env/stage/variables-deploy.html#mysql_use_slave_connection) variable. Set this variable to `true` to automatically use a read-only connection to the database.

**To enable the MySQL slave connection**:

1. On your local workstation, change to your project directory.

1. In the `.magento.env.yaml` file, set the `MYSQL_USE_SLAVE_CONNECTION` to true.  

   ```
   stage:
     deploy:
       MYSQL_USE_SLAVE_CONNECTION: true
   ```

1. Commit the `.magento.env.yaml` file changes and push to the remote environment.

   After the deployment completes successfully, the MySQL slave connection is enabled for the cloud environment.
