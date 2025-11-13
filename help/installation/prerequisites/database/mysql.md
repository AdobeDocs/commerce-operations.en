---
title: MySQL guidelines
description: Follow these steps to install and configure MySQL and MariaDB for on-premises installations of Adobe Commerce.
exl-id: dc5771a8-4066-445c-b1cd-9d5f449ec9e9
---
# General MySQL guidelines

See [System Requirements](../../system-requirements.md) for supported versions of MySQL.

Adobe _strongly_ recommends you observe the following standard when you set up your database:

*  Adobe Commerce uses [MySQL database triggers](https://dev.mysql.com/doc/refman/8.0/en/triggers.html) to improve database access during reindexing. These get created when the indexer mode is set to [schedule](../../../configuration/cli/manage-indexers.md#configure-indexers). The application does not support any custom triggers in the database because custom triggers can introduce incompatibilities with future Adobe Commerce versions.
*  Familiarize yourself with [these potential MySQL trigger limitations](https://dev.mysql.com/doc/mysql-reslimits-excerpt/8.0/en/stored-program-restrictions.html) before you continue.
*  To enhance your database security posture, enable the [`STRICT_ALL_TABLES`](https://dev.mysql.com/doc/refman/5.7/en/sql-mode.html#sqlmode_strict_all_tables) SQL mode to prevent storing invalid data values, which might cause unwanted database interactions.
*  Adobe Commerce does _not_ support MySQL statement-based replication. Make sure you use _only_ [row-based replication](https://dev.mysql.com/doc/refman/8.0/en/replication-formats.html).

>[!WARNING]
>
>Adobe Commerce currently uses `CREATE TEMPORARY TABLE` statements inside transactions, which are [incompatible](https://dev.mysql.com/doc/refman/5.7/en/replication-gtids-restrictions.html) with database implementations use GTID-based replication, such as [Google Cloud SQL second-generation instances](https://cloud.google.com/sql/docs/features#differences). Consider MySQL for Cloud SQL 8.0 as an alternative.

>[!NOTE]
>
>If your web server and database server are on different hosts, perform the tasks discussed in this topic on the database server host then see [Set up a remote MySQL database connection](mysql-remote.md).

## Installing MySQL on Ubuntu

Adobe Commerce 2.4 requires a clean installation of MySQL 8.0. Follow the links below for instructions on installing MySQL on your machine.

*  [Ubuntu](https://ubuntu.com/server/docs/databases-mysql)
*  [CentOS](https://dev.mysql.com/doc/refman/8.0/en/linux-installation-yum-repo.html)

If you expect to import large numbers of products, you can increase the value for [`max_allowed_packet`](https://dev.mysql.com/doc/refman/5.6/en/program-variables.html) that is larger than the default, 16 MB.

>[!NOTE]
>
>The default value applies to Adobe Commerce on cloud infrastructure _and_ on-premises projects. Adobe Commerce on cloud infrastructure Pro customers must open a support ticket to increase the `max_allowed_packet` value. Adobe Commerce on cloud infrastructure Starter customers can increase the value by updating the configuration in the `/etc/mysql/mysql.cnf` file.

To increase the value, open the `/etc/mysql/mysql.cnf` file in a text editor and locate the value for `max_allowed_packet`. Save your changes to the `mysql.cnf` file, close the text editor, and restart MySQL (`service mysql restart`).

To optionally verify the value that you set, enter the following command at a `mysql>` prompt:

```sql
SHOW VARIABLES LIKE 'max_allowed_packet';
```

Then, [Configure the database instance](#configuring-the-database-instance).

## MySQL 8 changes

For Adobe Commerce 2.4, we added support for MySQL 8.
This section describes major changes to MySQL 8 that developers should be aware of.

### Removed width for integer types (padding)

The display width specification for integer data types (TINYINT, SMALLINT, MEDIUMINT, INT, BIGINT) has been deprecated in MySQL 8.0.17. Statements that include data-type definitions in their output no longer show the display width for integer types, except for TINYINT(1). MySQL Connectors assume that TINYINT(1) columns originated as BOOLEAN columns. This exception enables them to continue to make that assumption.

#### Example

Describe admin_user at mysql 8.19

| Field | Type | Null | Key | Default | Extra |
| :--- | :--- | :--- | :--- | :--- | :--- |
| user\_id | `int unsigned` | NO | PRI | `NULL` | `auto_increment` |
| `firstname` | `varchar(32)` | YES | | `NULL` | |
| `lastname` | `varchar(32`) | YES | | `NULL` | |
| `email` | `varchar(128)` | YES | | `NULL` | |
| `username` | `varchar(40)` | YES | UNI | `NULL` | |
| `password` | `varchar(255)` | NO | | `NULL` | |
| `created` | `timestamp` | NO | | `CURRENT_TIMESTAMP` | `DEFAULT_GENERATED` |
| `modified` | `timestamp` | NO | | `CURRENT_TIMESTAMP` | `DEFAULT_GENERATED` on update `CURRENT_TIMESTAMP` |
| `logdate` | `timestamp` | YES | | `NULL` | |
| `lognum` | `smallint unsigned` | NO | | `0` | |

Except for _TINYINT(1)_, all integer padding (TINYINT > 1, SMALLINT, MEDIUMINT, INT, BIGINT) should be removed from the `db_schema.xml` file.

For more information, see [https://dev.mysql.com/doc/relnotes/mysql/8.0/en/news-8-0-19.html#mysqld-8-0-19-feature](
https://dev.mysql.com/doc/relnotes/mysql/8.0/en/news-8-0-19.html#mysqld-8-0-19-feature).

### Default ORDER BY behavior

Before 8.0, entries were sorted by the foreign key. Default sort order depends on the engine that is used.
Always specify a sort order if your code depends on a specific sort.

### Deprecated ASC and DESC qualifiers for GROUP BY

As of MySQL 8.0.13, the deprecated `ASC` or `DESC` qualifiers for `GROUP BY` clauses have been removed. Queries that previously relied on `GROUP BY` sorting may produce results that differ from previous MySQL versions. To produce a given sort order, provide an `ORDER BY` clause.

## Commerce and MySQL 8

There have been some changes to Adobe Commerce to properly support MySQL 8.

### Query and Insert Behavior

Adobe Commerce disabled the regular validation behavior by setting SET SQL_MODE='' in `/lib/internal/Magento/Framework/DB/Adapter/Pdo/Mysql.php:424.`. With validation disabled, it is possible that MySQL truncates data. In MySQL, the Query behavior has changed: `Select * on my_table where IP='127.0.0.1'` no longer returns results because the IP address is now properly seen as a string, rather than an integer.

## Upgrading from MySQL 5.7 to MySQL 8

To properly update MySQL from version 5.7 to version 8, you must follow these steps in order:

1. Upgrade Adobe Commerce to 2.4.0.
   Test everything and make sure that your system works as expected.
1. Enable maintenance mode:

   ```bash
   bin/magento maintenance:enable
   ```

1. Make a database backup:

   ```bash
   bin/magento setup:backup --db
   ```

1. Update MySQL to version 8.
1. Import the backed-up data into MySQL.
1. Clean the cache:

   ```bash
   bin/magento cache:clean
   ```

1. Disable maintenance mode:

   ```bash
   bin/magento maintenance:disable
   ```

## Configuring the database instance

This section discusses how to create a database instance for Adobe Commerce. Although a new database instance is recommended, you can optionally install Adobe Commerce with an existing database instance.

To configure a MySQL database instance:

1. Log in to your database server as any user.
1. Get to a MySQL command prompt:

   ```bash
   mysql -u root -p
   ```

1. Enter the MySQL `root` user's password when prompted.
1. Enter the following commands in the order shown to create a database instance named `magento` with username `magento`:

   ```sql
   create database magento;
   ```

   ```sql
   create user 'magento'@'localhost' IDENTIFIED BY 'magento';
   ```

   ```sql
   GRANT ALL ON magento.* TO 'magento'@'localhost';
   ```

   ```sql
   flush privileges;
   ```

1. Enter `exit` to quit the command prompt.

1. Verify the database:

   ```bash
   mysql -u magento -p
   ```

   If the MySQL monitor displays, you created the database properly. If an error displays, repeat the preceding commands.

1. If your web server and database server are on different hosts, perform the tasks discussed in this topic on the database server host then see [Set up a remote MySQL database connection](mysql-remote.md).

   We recommend you configure your database instance as appropriate for your business. When configuring your database, please keep the following in mind:

   *  Indexers require higher `tmp_table_size` and `max_heap_table_size` values (for example, 64 M). If you configure the `batch_size` parameter, you can adjust that value along with the table size settings to improve indexer performance. Refer to the [Optimization Guide](../../../performance/configuration.md) for more information.

   *  For optimal performance, make sure all MySQL and Adobe Commerce index tables can be kept in memory (for example, configure `innodb_buffer_pool_size`).

   *  Reindexing on MariaDB 10.4 takes more time compared to other MariaDB or MySQL versions. See [Configuration best practices](../../../performance/configuration.md#indexers).

1. For MySQL `TIMESTAMP` fields to follow the preferences and composition expected by the application's declarative schema architecture, the system variable `explicit_defaults_for_timestamp` must be set to `on`.

   References:

   *  [MySQL 5.7](https://dev.mysql.com/doc/refman/5.7/en/server-system-variables.html#sysvar_explicit_defaults_for_timestamp)
   *  [MariaDB](https://mariadb.com/kb/en/server-system-variables/#explicit_defaults_for_timestamp)

   If this setting is not enabled, `bin/magento setup:db:status` always reports that the `Declarative Schema is not up to date`.

>[!NOTE]
>
>The `explicit_defaults_for_timestamp` setting is deprecated. This setting controls deprecated TIMESTAMP behaviors that will be removed in a future MySQL release. When those behaviors are removed, the `explicit_defaults_for_timestamp` setting is removed as well.

>[!WARNING]
>
>For Adobe Commerce on cloud infrastructure projects, the `explicit_defaults_for_timestamp` setting for MySQL (MariaDB) defaults to _OFF_.

{{$include /help/_includes/maria-db-config.md}}

<!-- Last updated from includes: 2024-02-12 09:51:27 -->
