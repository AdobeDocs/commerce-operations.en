---
title: Database best practices for Adobe Commerce on Cloud
description: Learn how to set up the database for Adobe Commerce on cloud projects
role: Developer, Admin
feature-set: Commerce
feature: Best Practices
---

# Database best practices for Adobe Commerce on cloud infrastructure

Learn about best practices to improve database performance and work efficiently with the database for Adobe Commerce on cloud projects.

## Affected products

Adobe Commerce on cloud infrastructure

## Convert all MyISAM tables to InnoDb

Adobe recommends using the InnoDb database engine. In a default Adobe Commerce installation, all tables in the database are stored using the InnoDb engine. However, some third-party modules (extensions) can introduce tables in the MyISAM format. After you install a third-party module, check the database to identify any tables in MyISAM format and convert them to InnoDb.

### Determine if a module includes MyISAM tables

You can analyze the third-party module code before installing it, to determine if it uses MyISAM tables.

If you have already installed an extension, run the following query to determine whether the database has any MyISAM tables:

```sql
SELECT table_schema, CONCAT(ROUND((index_length+data_length)/1024/1024),'MB')
    AS total_size FROM information_schema. TABLES WHERE engine='myisam' AND table_schema
    NOT IN ('mysql', 'information_schema', 'performance_schema', 'sys');
```

### Change the storage engine to InnoDb

In the `db_schema.xml` file declaring the table, set the `engine` attribute value for the corresponding `table` node to `innodb`. For reference, see [Configure declarative schema > table node](https://developer.adobe.com/commerce/php/development/components/declarative-schema/configuration/) in our developer documentation.

The declarative scheme was introduced in Adobe Commerce on cloud infrastructure version 2.3.

Related reading:

- [What are the main differences between INNODB and MYISAM](http://www.expertphp.in/article/what-are-the-main-differences-between-innodb-and-myisam)

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

- [Set up the OpenSearch service](https://devdocs.magento.com/cloud/project/services-opensearch.html)

- [Set up the Elasticsearch service](https://devdocs.magento.com/cloud/project/services-elastic.html)

## Avoid custom triggers

Avoid using custom triggers if possible.

Triggers are used to log changes into audit tables. Adobe recommends configuring the application to write directly to the audit tables instead of using the trigger functionality for these reasons:

- Triggers are interpreted as code and MySQL does not precompile them. Hooking onto your query's transaction space, they add the overhead to a parser and interpreter for each query performed with the table.
- The triggers share the same transaction space as the original queries, and while those queries compete for locks on the table, the triggers independently compete on locks on another table.

To learn about alternatives to using custom triggers, see [Use MySQL triggers effectively](mysql-triggers-usage.md) in our support knowledge base.

## Upgrade ECE-Tools to version 2002.0.21 or higher {#ece-tools-version}

To avoid potential issues with cron deadlocks, upgrade ECE-Tools to version 2002.0.21 or higher. For instructions, see [Update ece-tools version](https://devdocs.magento.com/cloud/project/ece-tools-update.html) in our developer documentation.

## Switch indexer mode safely

<!--This best practice might belong in the Maintenance phase. Database lock prevention might be consolidated under a single heading-->

Switching indexers generates DDL statements to create triggers which can cause database locks. You can prevent this issue by putting your website in maintenance mode and disabling cron jobs before changing the configuration.
For instructions, see [Configure indexers](https://experienceleague.adobe.com/docs/commerce-operations/configuration-guide/cli/manage-indexers.html#configure-indexers-1) in the *Adobe Commerce Configuration Guide*.

## Do not run DDL statements in Production

Avoid running DDL (Data Definition Language) statements in the Production environment to prevent conflicts (like table modifications and creations). The `setup:upgrade` process is an exception.

If you need to run a DDL statement, put the website in maintenance mode and disable cron (see the instructions for switching indexes safely in the previous section).

### Enable order archiving

Enable order archiving to reduce the space required for Sales tables as your order data grows. Archiving saves MySQL disk space and improves checkout performance.

See [Enable archiving](https://docs.magento.com/user-guide/sales/order-archive.html#to-enable-archiving) in the Adobe Commerce Merchant documentation.

## Additional information

- [Adobe Commerce 2.3.5 upgrade prerequisites for MariaDB](../maintenance/commerce-235-upgrade-prerequisites-mariadb.md)
- [Best practices to resolve database performance issues](../maintenance/resolve-database-performance-issues.md)


