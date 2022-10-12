---
title: Adobe Commerce 2.3.5 upgrade prerequisites for MariaDB
description: Learn how to prepare your Adobe Commerce database to upgrade from Adobe Commerce 2.3.5 
role: Developer
feature-set: Commerce
feature: Best Practices
---

# Adobe Commerce 2.3.5 upgrade prerequisites: compact to dynamic tables

This article explains how to prepare your database when upgrading to Adobe Commerce 2.3.5 from version 2.3.4 or earlier.

This upgrade requires the support team to upgrade MariaDB on the cloud infrastructure from MariaDB 10.0 to 10.2 to meet requirements for Adobe Commerce . Adobe Commerce version 2.3.5 and later.

## Affected product and versions

Adobe Commerce on cloud infrastructure with Adobe Commerce version 2.3.4 or earlier and MariaDB version 10.0 or earlier.

## Prepare your database for the upgrade

Before the Adobe Commerce Support team begins the upgrade upgrade process, you must prepare your database by converting all tables from <code>COMPACT</code> format to <code>DYNAMIC</code>. You also need to convert the storage engine type from MyISAM to InnoDB.

- Converting from <code>COMPACT</code> to <code>DYNAMIC</code> tables can take several hours with a large database.

- To prevent data corruption, do not perform the conversion when your site is live.

- Complete the conversion work during a low traffic period on your site.

- Switch your site to [maintenance mode](../../../commerce-operations/installation-guide/tutorials/maintenance-mode.html) before running the <code>ALTER</code> commands.


### Convert database tables

You can convert tables on one node in your cluster. The changes will replicate to the other core nodes in your cluster. 

1. From your Adobe Commerce on cloud infrastructure environment, use SSH to connect to node 1.

1. Log in to MariaDB

1. Identify tables to be converted from compact to dynamic format.

   ```mysql
   SELECT table_name, row_format FROM information_schema.tables WHERE table_schema=DATABASE() and row_format 'Compact';
   ```

1. Determine the table sizes so you can schedule the conversion work.

   ```mysql
   SELECT table_schema as 'Database', table_name AS 'Table', round(((data_length + index_length) / 1024 / 1024), 2) 'Size in MB' FROM information_schema.TABLES ORDER BY (data_length + index_length) DESC;
   ```

   Larger tables take longer to convert. You should plan accordingly when taking your site in and out of maintenance mode which batches of tables to convert in which order, so as to plan the timings of the maintenance windows needed

1. Convert all tables to dynamic format one at a time.

   ```mysql
   ALTER TABLE [ table name here ] ROW_FORMAT=DYNAMIC;
   ```

1. Identify tables that use MyISAM storage.

   ```mysql
   SELECT table_name FROM INFORMATION_SCHEMA.TABLES WHERE engine = 'MyISAM';
   ```

1. Convert tables that use MyISAM storage to InnoDB storage.

    ```mysql
    ALTER TABLE [ table name here ] ENGINE=InnoDB;
    ```

1. Verify the conversion.

   This step is required because code deployments made since the conversion might cause some tables to be reverted to their original configuration.

   - The day before the scheduled upgrade to MariaDB version 10.2, login to your database and run the queries to check the format and storage engine.

     ```mysql
     SELECT table_name, row_format FROM information_schema.tables WHERE table_schema=DATABASE() and row_format = 'Compact';
     ```

     ```mysql
     SELECT table_name FROM INFORMATION_SCHEMA.TABLES WHERE engine = 'MyISAM';
     ```

   - If any tables have been reverted, repeat the steps to change the table format and storage engine.


## Additional information

[Database best practices for Adobe Commerce on cloud infrastructure](../planning/database-on-cloud.md)
