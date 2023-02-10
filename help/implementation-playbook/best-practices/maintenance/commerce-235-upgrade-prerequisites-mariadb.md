---
title: Adobe Commerce 2.3.5 upgrade prerequisites for MariaDB
description: Learn how to prepare your Adobe Commerce database to upgrade from Adobe Commerce 2.3.5.
role: Developer
feature-set: Commerce
feature: Best Practices
---

# Upgrade prerequisites for MariaDB

Upgrading from Adobe Commerce 2.3.4 or earlier to any newer version requires upgrading the MariaDB service on the cloud infrastructure from version 10.0 or 10.2 to version 10.3 or 10.4. MariaDB version 10.3 and later require the database to use the dynamic table row format and Adobe Commerce requires using the InnoDB storage engine for tables. This article explains how to update your database to comply with these MariaDB requirements.

After you prepare the database, submit an Adobe Commerce support ticket to update the MariaDB service version on your cloud infrastructure before proceeding with the Adobe Commerce upgrade process.

## Affected product and versions

Adobe Commerce on cloud infrastructure with Adobe Commerce version 2.3.4 or earlier and MariaDB version 10.0 or earlier.

## Prepare your database for the upgrade

Before the Adobe Commerce Support team begins the upgrade process, prepare your database by converting your database tables:

- Convert the row format from `COMPACT` to `DYNAMIC`
- Change the storage engine from `MyISAM` to `InnoDB`

Keep the following considerations in mind when you plan and schedule the conversion:

- Converting from `COMPACT` to `DYNAMIC` tables can take several hours with a large database.

- To prevent data corruption, do not complete conversion work on a live site.

- Complete the conversion work during a low traffic period on your site.

- Switch your site to [maintenance mode](../../../installation/tutorials/maintenance-mode.md) before running the commands to convert database tables.

### Convert database table row format

You can convert tables on one node in your cluster. The changes replicate automatically to the other service nodes.

1. From your Adobe Commerce on cloud infrastructure environment, use SSH to connect to node 1.

1. Log in to MariaDB.

1. Identify tables to be converted from compact to dynamic format.

   ```mysql
   SELECT table_name, row_format FROM information_schema.tables WHERE table_schema=DATABASE() and row_format = 'Compact';
   ```

1. Determine the table sizes so you can schedule the conversion work.

   ```mysql
   SELECT table_schema as 'Database', table_name AS 'Table', round(((data_length + index_length) / 1024 / 1024), 2) 'Size in MB' FROM information_schema.TABLES ORDER BY (data_length + index_length) DESC;
   ```

   Larger tables take longer to convert. Review the tables and batch the conversion work by priority and table size to help plan the required maintenance windows.

1. Convert all tables to dynamic format one at a time.

   ```mysql
   ALTER TABLE [ table name here ] ROW_FORMAT=DYNAMIC;
   ```

### Convert database table storage format

You can convert tables on one node in your cluster. The changes replicate automatically to the other service nodes.

The process to convert the storage format is different for Adobe Commerce Starter and Adobe Commerce Pro projects.

- For Starter architecture, use the MySQL `ALTER` command to convert the format.
- On Pro architecture, use the MySQL `CREATE` and `SELECT` commands to create a database table with `InnoDB` storage and copy the data from the existing table into the new table. This method insures that the changes are replicated to all nodes in your cluster.

**Convert table storage format for Adobe Commerce Pro projects**

1. Identify tables that use `MyISAM` storage.

   ```mysql
   SELECT table_name FROM INFORMATION_SCHEMA.TABLES WHERE engine = 'MyISAM';
   ```

1. Convert all tables to `InnoDB` storage format one at a time.

   - Rename the existing table to prevent name conflicts.

     ```mysql
     RENAME TABLE <existing_table> <table_old>;
     ```

   - Create a table that uses `InnoDB` storage using the data from the existing table.

     ```mysql
     CREATE TABLE <existing_table> ENGINE=InnoDB SELECT * from <table_old>;
     ```

   - Verify that the new table has all required data.

   - Delete the original table that you renamed.


**Convert table storage format for Adobe Commerce Starter projects**

1. Identify tables that use `MyISAM` storage.

   ```mysql
   SELECT table_name FROM INFORMATION_SCHEMA.TABLES WHERE engine = 'MyISAM';
   ```

1. Convert tables that use `MyISAM` storage to `InnoDB` storage.

   ```mysql
   ALTER TABLE [ table name here ] ENGINE=InnoDB;
   ```

### Verify the database conversion

The day before the scheduled upgrade to MariaDB version 10.2, verify that all tables have the correct row format and storage engine. Verification is required because code deployments made after you complete the conversion might cause some tables to be reverted to their original configuration.

1. Log in to your database.

1. Check for any tables that still have the `COMPACT` row format.

   ```mysql
   SELECT table_name, row_format FROM information_schema.tables WHERE table_schema=DATABASE() and row_format = 'Compact';
   ```

1. Check for any tables that still use the `MyISAM` storage format

   ```mysql
   SELECT table_name FROM INFORMATION_SCHEMA.TABLES WHERE engine = 'MyISAM';
   ```

1. If any tables have been reverted, repeat the steps to change the table row format and storage engine.

## Change the storage engine

See [Convert MyISAM tables to InnoDB](../planning/database-on-cloud.md).

## Additional information

[Database best practices for Adobe Commerce on cloud infrastructure](../planning/database-on-cloud.md)
[Updating MariaDB from 10.0 to 12.0 for Adobe Commerce on Cloud](https://experienceleague.adobe.com/docs/commerce-knowledge-base/kb/how-to/upgrade-mariadb-10.0-to-10.2-for-magento-commerce-cloud.html)
