---
title: Best practices to resolve database performance issues
description: Learn how to fix database issues that slow performance on Adobe Commerce sites deployed on cloud infrastructure.
role: Developer, Admin
feature: Best Practices
exl-id: e40e0564-a4eb-43a8-89dd-9f6c5cedb4a7
---
<!--Consider moving this topic to the Maintenance section-->

# Best practices to resolve database performance issues

This article discusses how to fix database issues that negatively impact database performance on Adobe Commerce on cloud infrastructure sites.

## Affected versions

Adobe Commerce on cloud infrastructure

## Identify and resolve long running queries

Determine whether you have any slow running MySQL queries. Depending on your Adobe Commerce on cloud infrastructure plan and therefore tools availability, you can do the following.

### Analyze database queries with MySQL

You can use MySQL to identify and resolve long running queries on any Adobe Commerce on cloud infrastructure project.

1. Run the [`SHOW \[FULL\] PROCESSLIST`](https://dev.mysql.com/doc/refman/8.0/en/show-processlist.html) statement.
1. If you see long running queries, run [MySQL `EXPLAIN` and `EXPLAIN ANALYZE`](https://mysqlserverteam.com/mysql-explain-analyze/) for each of them, to find out what makes the query run for a long time.
1.  Based on the issues found, take steps to fix the query so it runs more quickly.

### Analyze queries using the Percona Toolkit (for Pro architecture only)

If your Adobe Commerce project is deployed on Pro architecture, you can use the Percona Toolkit to analyze queries.

1. Run the `pt-query-digest --type=slowlog` command against MySQL slow query logs.
    * To find the location of the slow query logs, see **[!UICONTROL Log locations > Service Logs]**(https://experienceleague.adobe.com/en/docs/commerce-cloud-service/user-guide/develop/test/log-locations#service-logs) in our developer documentation.
    * See the [Percona Toolkit > pt-query-digest](https://www.percona.com/doc/percona-toolkit/LATEST/pt-query-digest.html#pt-query-digest) documentation.
1. Based on the issues found, take steps to fix the query so it runs more quickly.

## Verify that all tables have a primary key

Defining primary keys is a requirement for good database and table design. Primary keys provide a way to uniquely identify a single row in any table. 

If you have tables without a primary key, the default database engine for Adobe Commerce (InnoDB) uses the first unique not null key as the primary key. If no unique key is available, InnoDB creates a hidden primary key (6 bytes). The problem with an implicitly defined primary key is that you do not have control over it. Additionally, the implicit value is globally-assigned for all tables without primary keys. This configuration can cause contention problems if you perform simultaneous writes on these tables. This might lead to performance issues because the tables also share the global hidden primary key index increment.

Prevent these issues by defining a primary key for any tables that don't have one.

### Identify and update tables without a primary key

1. Identify tables without a primary key using the following SQL query:

    ```sql
    SELECT table_catalog, table_schema, table_name, engine FROM information_schema.tables        WHERE (table_catalog, table_schema, table_name) NOT IN (SELECT table_catalog, table_schema, table_name FROM information_schema.table_constraints  WHERE constraint_type = 'PRIMARY KEY') AND table_schema NOT IN ('information_schema', 'pg_catalog');    
    ```

1. For any table missing a primary key, add a primary key by updating the `db_schema.xml` (the declarative schema) with a node similar to the following:

   ```html
   <constraint xsi:type="primary" referenceId="PRIMARY">         <column name="id_column"/>     </constraint>    
   ```

   When you add the node, replace the `referenceID` and `column name` variables with your custom custom values.

For more information, see [Configure declarative schema](https://developer.adobe.com/commerce/php/development/components/declarative-schema/configuration/) in our developer documentation.    

## Identify and remove duplicate indexes

Identify any duplicate indexes in your database and remove them.

### Check for duplicate indexes

To check for duplicate indexes on either Pro or Starter cloud architecture, run the following SQL query.

```sql
SELECT s.INDEXED_COL,GROUP_CONCAT(INDEX_NAME) FROM (SELECT INDEX_NAME,GROUP_CONCAT(CONCAT(TABLE_NAME,'.',COLUMN_NAME) ORDER BY CONCAT(SEQ_IN_INDEX,COLUMN_NAME)) 'INDEXED_COL' FROM INFORMATION_SCHEMA.STATISTICS WHERE TABLE_SCHEMA = 'db?' GROUP BY INDEX_NAME)as s GROUP BY INDEXED_COL HAVING COUNT(1)>1
```

The query returns the column names and the names of any duplicate indexes.

Pro architecture merchants can also run the check using the Percona Toolkit  `[pt-duplicate-key checker](https://www.percona.com/doc/percona-toolkit/LATEST/pt-duplicate-key-checker.html%C2%A0)` command.

### Remove duplicate indexes

Use the SQL [DROP INDEX Statement](https://dev.mysql.com/doc/refman/8.0/en/drop-index.html) to remove duplicate indexes.

```SQL
DROP INDEX
```

## Additional information

[Database configuration best practices for cloud deployments](../planning/database-on-cloud.md)
