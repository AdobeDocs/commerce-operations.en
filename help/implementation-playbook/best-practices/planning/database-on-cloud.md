---
title: Database configuration best practices for cloud deployments
description: Learn how to configure database and application settings to improve performance when deploying Adobe Commerce on cloud infrastructure.
role: Developer, Admin
feature: Best Practices
exl-id: ca377dc8-c8bd-4f77-a24b-22a298e2bba4
---
# Best practices for database configuration

Learn about best practices to improve database performance and work efficiently with the database when deploying Adobe Commerce on cloud infrastructure.

## Affected products

Adobe Commerce on cloud infrastructure

## Convert all MyISAM tables to InnoDB

Adobe recommends using the InnoDB database engine. In a default Adobe Commerce installation, all tables in the database are stored using the InnoDB engine. However, some third-party modules (extensions) can introduce tables in the MyISAM format. After you install a third-party module, check the database to identify any tables in `myisam` format and convert them to `innodb` format.

### Determine if a module includes MyISAM tables

You can analyze the third-party module code before installing it, to determine if it uses MyISAM tables.

If you have already installed an extension, run the following query to determine whether the database has any MyISAM tables:

```sql
SELECT table_schema, CONCAT(ROUND((index_length+data_length)/1024/1024),'MB')
    AS total_size FROM information_schema. TABLES WHERE engine='myisam' AND table_schema
    NOT IN ('mysql', 'information_schema', 'performance_schema', 'sys');
```

### Change the storage engine to InnoDB

In the `db_schema.xml` file declaring the table, set the `engine` attribute value for the corresponding `table` node to `innodb`. For reference, see [Configure declarative schema > table node](https://developer.adobe.com/commerce/php/development/components/declarative-schema/configuration/) in our developer documentation.

The declarative scheme was introduced in Adobe Commerce on cloud infrastructure version 2.3.

## Configure the recommended search engine for native MySQL search

Adobe recommends that you always set up Elasticsearch or OpenSearch for your Adobe Commerce on cloud infrastructure project even if you plan to configure a third-party search tool for your Adobe Commerce application. This configuration provides a fallback option in case the third-party search tool fails.

The search engine you use depends on the Adobe Commerce on cloud version installed:

- For Adobe Commerce 2.4.4 and later, use the OpenSearch service for native MySQL search.

- For earlier Adobe Commerce versions, use Elasticsearch.

To determine which search engine is currently in use, run the following command:

```bash
./bin/magento config:show catalog/search/engine
```

For configuration instructions, see the Developer Guide for Adobe Commerce on cloud:

- [Set up the OpenSearch service](https://experienceleague.adobe.com/en/docs/commerce-cloud-service/user-guide/configure/service/opensearch)

- [Set up the Elasticsearch service](https://experienceleague.adobe.com/en/docs/commerce-cloud-service/user-guide/configure/service/elasticsearch)

## Avoid custom triggers

Avoid using custom triggers if possible.

Triggers are used to log changes into audit tables. Adobe recommends configuring the application to write directly to the audit tables instead of using the trigger functionality for these reasons:

- Triggers are interpreted as code and MySQL does not precompile them. Hooking onto your query's transaction space, they add the overhead to a parser and interpreter for each query performed with the table.
- The triggers share the same transaction space as the original queries, and while those queries compete for locks on the table, the triggers independently compete on locks on another table.

To learn about alternatives to using custom triggers, see [MySQL triggers](mysql-configuration.md#triggers).

## Upgrade [!DNL ECE-Tools] to version 2002.0.21 or higher {#ece-tools-version}

To avoid potential issues with cron deadlocks, upgrade ECE-Tools to version 2002.0.21 or higher. For instructions, see [Update `ece-tools` version](https://experienceleague.adobe.com/en/docs/commerce-cloud-service/user-guide/dev-tools/ece-tools/update-package) in our developer documentation.

## Switch indexer mode safely

<!--This best practice might belong in the Maintenance phase. Database lock prevention might be consolidated under a single heading-->

Switching indexers generates [!DNL data definition language] (DDL) statements to create triggers which can cause database locks. You can prevent this issue by putting your website in maintenance mode and disabling cron jobs before changing the configuration.
For instructions, see [Configure indexers](https://experienceleague.adobe.com/docs/commerce-operations/configuration-guide/cli/manage-indexers.html#configure-indexers-1) in the *Adobe Commerce Configuration Guide*.

## Do not run DDL statements in Production

Avoid running DDL statements in the Production environment to prevent conflicts (like table modifications and creations). The `setup:upgrade` process is an exception.

If you need to run a DDL statement, put the website in maintenance mode and disable cron (see the instructions for switching indexes safely in the previous section).

## Enable order archiving

Enable order archiving from the Admin to reduce the space required for Sales tables as your order data grows. Archiving saves MySQL disk space and improves checkout performance.

See [Enable archiving](https://experienceleague.adobe.com/docs/commerce-admin/stores-sales/order-management/orders/order-archive.html) in the Adobe Commerce Merchant documentation.

## Additional information

- [MySQL Storage Engines](https://dev.mysql.com/doc/refman/8.0/en/storage-engines.html)
- [Adobe Commerce 2.3.5 upgrade prerequisites for MariaDB](../maintenance/mariadb-upgrade.md)
- [Best practices to resolve database performance issues](../maintenance/resolve-database-performance-issues.md)
