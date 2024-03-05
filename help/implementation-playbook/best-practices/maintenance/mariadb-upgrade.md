---
title: Adobe Commerce upgrade prerequisites for MariaDB
description: Learn how to prepare your Adobe Commerce database to upgrade MariaDB from a previous version.
role: Developer
feature: Best Practices
exl-id: b86e471f-e81f-416b-a321-7aa1ac73d27c
---

# Upgrade prerequisites for MariaDB

Before upgrading Adobe Commerce on cloud infrastructure, you may also need to upgrade your database software if you are using MariaDB. For example:

- Adobe Commerce 2.4.6 with MariaDB version 10.5.1 or higher
- Adobe Commerce 2.3.5 with MariaDB version 10.3 or earlier

## Adobe Commerce 2.4.6

Starting with MariaDB 10.5.1, columns with old temporal formats are marked with a `/* mariadb-5.3 */` comment in the output of the `SHOW CREATE TABLE`, `SHOW COLUMNS`, `DESCRIBE` statements, as well as in the `COLUMN_TYPE` column of the `INFORMATION_SCHEMA.COLUMNS` table. [See MariaDB documentation](https://mariadb.com/kb/en/datetime/#internal-format).

Adobe Commerce is not able to map the date columns to a proper data type due to the MariaDB comment, which may cause unexpected behaviour in custom code.

To avoid unexpected behaviour when upgrading MariaDB from older versions to version 10.6, Adobe recommends migrating the columns to the new internal format.

### Default configuration

In MariaDB 10.1.2, a new temporal format was introduced from MySQL 5.6. The `mysql56_temporal_format` system variable allows the database to automatically convert the old date format to the new one when an alter table is executed or database is imported. The default configuration for `mysql56_temporal_format` is always enabled on Adobe Commerce on cloud infrastructure. 

### Migrate date columns

The following query shows the affected table and columns that must be migrated after upgrading MariaDB to 10.5.1 or later:

```mysql
SELECT * FROM INFORMATION_SCHEMA.`COLUMNS` WHERE TABLE_SCHEMA = DATABASE() AND COLUMN_TYPE LIKE '%mariadb%';
```

Migrating the columns to the new internal date format requires reimporting the database or executing alter on the identified column with the same column definition. The following query generates the necessary alter queries:

```mysql
SELECT CONCAT( 'ALTER TABLE `', COALESCE(TABLE_NAME), '`', ' MODIFY ', '`', COALESCE(COLUMN_NAME), '`', ' ', COALESCE(DATA_TYPE), ' ', IF(COALESCE(IS_NULLABLE)='YES','NULL', 'NOT NULL'), IF(COLUMN_DEFAULT IS NOT NULL,CONCAT(' DEFAULT ',COLUMN_DEFAULT),' '), ' ', COALESCE(EXTRA), ' COMMENT \'', COALESCE(COLUMN_COMMENT), '\';' ) as sql_query FROM INFORMATION_SCHEMA.`COLUMNS` WHERE TABLE_SCHEMA = DATABASE() AND COLUMN_TYPE LIKE '%mariadb%';
```

>[!NOTE]
>
>It is important to migrate the columns to the new internal date format _before_ deploying the new code to avoid unexpected behaviour.

## Adobe Commerce 2.3.5

Upgrading the MariaDB service on the cloud infrastructure from version 10.0 or 10.2 to version 10.3, 10.4, or 10.5. MariaDB version 10.3 and later require the database to use the dynamic table row format and Adobe Commerce requires using the InnoDB storage engine for tables. This article explains how to update your database to comply with these MariaDB requirements.

After you prepare the database, submit an Adobe Commerce support ticket to update the MariaDB service version on your cloud infrastructure before proceeding with the Adobe Commerce upgrade process.

### Prepare your database for the upgrade

Before the Adobe Commerce Support team begins the upgrade process, prepare your database by converting your database tables:

- Convert the row format from `COMPACT` to `DYNAMIC`
- Change the storage engine from `MyISAM` to `InnoDB`

Keep the following considerations in mind when you plan and schedule the conversion:

- Converting from `COMPACT` to `DYNAMIC` tables can take several hours with a large database.

- To prevent data corruption, do not complete conversion work on a live site.

- Complete the conversion work during a low traffic period on your site.

- Switch your site to [maintenance mode](../../../installation/tutorials/maintenance-mode.md) before running the commands to convert database tables.

#### Convert database table row format

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

#### Convert database table storage format

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

#### Verify the database conversion

The day before the scheduled upgrade to MariaDB version 10.3, 10.4, or 10.6, verify that all tables have the correct row format and storage engine. Verification is required because code deployments made after you complete the conversion might cause some tables to be reverted to their original configuration.

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

### Change the storage engine

See [Convert MyISAM tables to InnoDB](../planning/database-on-cloud.md).
