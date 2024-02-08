---
title: Adobe Commerce Upgrade to 2.4.6 prerequisites for MariaDB 10.6
description: Learn how to prepare your Adobe Commerce database to upgrade MariaDB from a previous version.
role: Developer
feature: Best Practices
exl-id: b86e471f-e81f-416b-a321-7aa1ac73d27c
---
# Upgrade for Adobe Commerce with MariaDB 10.5.1 and higher

Starting from MariaDB 10.5.1 columns with old temporal formats are marked with a /* mariadb-5.3 */ comment in the output of SHOW CREATE TABLE, SHOW COLUMNS, DESCRIBE statements, as well as in the COLUMN_TYPE column of the INFORMATION_SCHEMA.COLUMNS Table.
[Read more about MariaDB date internal format](https://mariadb.com/kb/en/datetime/#internal-format)

The comment /* mariadb-5.3 */ is always added in MariaDB. 

## Affected product and versions

Adobe Commerce 2.4.6 on cloud infrastructure with MariaDB version 10.5.1 or higher.

## Issue

Adobe Commerce is not able to map the date columns to a proper data type due to the comment added by MariaDB and may create unexpected behaviour in the custom code in very few scenarios.

To avoid unexpected behaviours when upgrading the MariaDB service on the cloud infrastructure from older version to version 10.6, it is recommended to migrate the columns to the new internal format.

## Default configuration on Adobe Commerce Cloud

In MariaDB 10.1.2 a new temporal format was introduced from MySQL 5.6. The mysql56_temporal_format system variable allows the database to automatically convert the old date format to the new one when an alter table is executed or database is imported.
The default configuration for mysql56_temporal_format is always on Adobe Commerce Cloud. 


## Solution


The below query shows the affected table and columns which need to be migrated, once the MariaDB is upgraded to 10.5.1 or newer.

```mysql
SELECT * FROM INFORMATION_SCHEMA.`COLUMNS` WHERE TABLE_SCHEMA = DATABASE() AND COLUMN_TYPE LIKE '%mariadb%';
```

Migrating the columns to the new internal date format, require reimporting the database or executing alter on the identified column with the same column definition.

The following query will generate the necessary alter queries.

```mysql
SELECT CONCAT( 'ALTER TABLE `', COALESCE(TABLE_NAME), '`', ' MODIFY ', '`', COALESCE(COLUMN_NAME), '`', ' ', COALESCE(DATA_TYPE), ' ', IF(COALESCE(IS_NULLABLE)='YES','NULL', 'NOT NULL'), IF(COLUMN_DEFAULT IS NOT NULL,CONCAT(' DEFAULT ',COLUMN_DEFAULT),' '), ' ', COALESCE(EXTRA), ' COMMENT \'', COALESCE(COLUMN_COMMENT), '\';' ) as sql_query FROM INFORMATION_SCHEMA.`COLUMNS` WHERE TABLE_SCHEMA = DATABASE() AND COLUMN_TYPE LIKE '%mariadb%';
```

>[!NOTE]
>
> It is important to migrate the columns to the new internal date format before the new code is deployed to avoid unexpected behaviour.
