---
title: Best practices for modifying database tables
description: Learn how and when to modify Adobe Commerce and third-party database tables.
role: Developer, Architect
feature: Best Practices
last-substantial-update: 2022-11-15
exl-id: 9e7adaaa-b165-4293-aa98-5dc4b8c23022
---
# Best practices for modifying database tables 

This article provides best practices for modifying database tables that are created by [!DNL Adobe Commerce] or third-party modules. Understanding when and how to effectively modify tables helps ensure the long-term viability and stability of your commerce platform.

Migrating from [!DNL Magento 1] and other e-commerce platforms, or working with modules from the [!DNL Adobe Commerce] Marketplace, can require adding and saving extra data. Your first instinct might be to add a column to a database table, or to adjust an existing one. However, you should only modify a core [!DNL Adobe Commerce] table (or third-party vendor table) in limited situations.

## Why Adobe recommends avoiding modifications

The primary reason to avoid modifying core tables is that Adobe Commerce includes underlying logic that contains raw SQL queries. Changes to the structure of the table can cause unexpected side effects which are difficult to troubleshoot. The change can also affect DDL (Data Definition Language) operations causing unexpected and unpredictable impacts to performance.

Another reason to avoid changing the database table structure is that your changes can cause issues if the core development team or third-party developers change the structure of their database tables. For example, there are a few core database tables that have a column called `additional_data`. This has always been a `text` column type. However, for performance reasons, the core team might change the column to `longtext`. This type of column is an alias for JSON. By converting to this column type, there are performance gains and searchability added to that column, which does not exist as a `text` type. You can read more on this topic in [JSON data type](https://mariadb.com/kb/en/json-data-type/){target="_blank"}.

## Know when to save or remove data

Adobe recommends that you first determine whether you need to save this data. If you are moving data from a legacy system, any data that you can remove saves you time and effort during the migration. (There are ways to archive data if it needs to be accessed later.) To be a good steward of the application and performance, it's okay to challenge a request to save extra data. Your goal is to ensure that saving the data is a requirement to fulfill a business need that cannot be filled another way.

### Legacy data

If your project contains legacy data, such as old orders or customer records, consider an alternative lookup method. For example, if the business requires access to the data only for occasional reference, consider implementing an external search of the old database hosted outside the commerce platform instead of migrating old data to [!DNL Adobe Commerce]. 

This situation would require the database to be migrated to a server, offering either a web interface to read the data, or perhaps training in the use of MySQL Workbench or similar tools. Excluding this data from the new database expedites the migration by allowing the development team to focus on the new site rather than troubleshooting data migration issues. 

Another related option for keeping the data external to commerce but allowing you to use it in real time would be leveraging other tools, such as GraphQL mesh. This option combines different data sources and returns them as a single response. 

For example, you can `stitch` together old orders from an external database, perhaps the old Magento 1 site that is decommissioned. Then using GraphQL mesh, show them as part of the customers order history. These old orders can be combined with the orders from your current [!DNL Adobe Commerce] environment. 

For more information about using API mesh with GraphQL, see [What is API Mesh](https://developer.adobe.com/graphql-mesh-gateway/gateway/overview/){target="_blank"}) and [GraphQL Mesh Gateway](https://developer.adobe.com/graphql-mesh-gateway/){target="_blank"}.

## Migrate legacy data with extension attributes

If you determine that legacy data requires migration, or that new data needs to be saved in [!DNL Adobe Commerce], Adobe recommends using [extension attributes](https://developer.adobe.com/commerce/php/development/components/add-attributes/){target="_blank"}. Using extension attributes to save additional data offers the following advantages:

- You can control the data being persisted and the database structure, which ensures that the data is saved with the correct column type and proper indexes.
- Most entities in [!DNL Adobe Commerce] support the use of extension attributes.
- Extension attributes are a storage agnostic mechanism which provides the flexibility to save the data in the optimal location for your project. 

Two examples of storage locations are database tables and [!DNL Redis]. The key things to consider when choosing a location are whether location introduces extra complexity or impacts performance.

### Consider other alternatives

As a developer, it is vital to always consider using tools outside of your [!DNL Adobe Commerce] environment, such as GraphQL mesh and Adobe App Builder. These tools can help you retain access to the data but have no impact to the core commerce application or its underlying database tables. With this approach, you expose your data through an API. Then, you add a data source to your App Builder configuration. Using GraphQL Mesh, you can combine those data sources and produce a single response as mentioned in [legacy data](#legacy-data).

For additional details on GraphQL mesh, see [GraphQL Mesh Gateway](https://developer.adobe.com/graphql-mesh-gateway/){target="_blank"}. For information about the Adobe App Builder,  see [Introducing App Builder](https://experienceleague.adobe.com/docs/adobe-developers-live-events/events/2021/oct2021/introduction-app-builder.html){target="_blank"}.

## Modifying a core table or third-party table

If you decide to store data by modifying a core [!DNL Adobe Commerce] or third-party module database table, use the following guidelines to minimize impact on stability and performance.

- Add new columns only.
- Never modify the _type_ value of an existing column. For example, do not change an `integer` to a `varchar` in order to satisfy your unique use case.
- Avoid adding columns to EAV attribute tables. These tables are already overloaded with logic and responsibility.
- Before adjusting a table, determine its size. Changing large tables impacts the deployment, which can cause minutes or hours of delay when changes are applied.

## Best practices for modifying an external database table

Adobe recommends following these steps when you add a column to a core database table or a third-party table:

1. Create a module with a name in your namespace that represents what you are updating. 

   For example: `app/code/YourCompany/Customer`

1. Create the appropriate files to enable the module (see [Create a module](https://experienceleague.adobe.com/docs/commerce-learn/tutorials/backend-development/create-module.html){target="_blank"}.

1. Create a file called `db_schema.xml` in the `etc` folder, and make the appropriate changes. 

    If applicable, generate a `db_schema_whitelist.json` file. See [Declarative Schema](https://developer.adobe.com/commerce/php/development/components/declarative-schema/configuration/){target="_blank"} for more information.

### Potential impacts

Adding a column to an external database can impact your Adobe Commerce project in the following ways:

- Upgrades could be more complicated.
- Deployments are impacted if the table being modified is large.
- Migrations to a new platform could be more complicated.

## Ways to avoid modifying core tables

You can avoid modifying Adobe Commerce database tables by using [extension attributes](#migrate-legacy-data-with-extension-attributes). Another alternative is to use a special column (`additional_data`)  found on a few core tables to store data and save it in JSON-encoded format.
    
### Save data in a JSON-encoded data column

Some core tables have an `additional_data` column that holds JSON-encoded data. This column offers a native way of mapping additional data in one field. Using this method avoids adding a table for small, simple data elements that store information for data retrieval without a search requirement. The `additional_data` column is typically available only at the item level, not for the entire quote or order.

- Advantages of using the `additional_data` field

  - No additional fields are needed, which keeps the number of columns minimal. This is helpful in the sales flow, where there are many tables already involved. It is best not to add more complexity to this already complicated process. This method satisfies many uses cases, but not all.
    
- Disadvantages

  - This method is ideal only for storing read-only data. This issue occurs because our code would need to be un-serialized to modify and build the object to add dependencies or database relations.

  - It is difficult to use database operations to search for these fields. Searching with this method is slow.
  
  - Extra care must be taken when storing data in the `additional_data` column to avoid triggering serialization or un-serialization operations that could break the code by creating invalid JSON or causing read errors during runtime.
   
  - These fields must be clearly declared in the code, so a developer can easily find them.
  
  - Other issues that can occur that can be very hard to diagnose. For example, with some native PHP functions if you do not use [!DNL Adobe Commerce] wrapper methods provided by the core application the end result of the transformed data can be different from the expected format. Always use the wrapper functions to ensure consistency and predictability of the data being saved or retrieved. 

Here are examples of tables that have the column and structure for the `additional_data` column.

```mysql
MariaDB [main]> DESCRIBE quote_item additional_data;
+-----------------+------+------+-----+---------+-------+
| Field           | Type | Null | Key | Default | Extra |
+-----------------+------+------+-----+---------+-------+
| additional_data | text | YES  |     | NULL    |       |
+-----------------+------+------+-----+---------+-------+
1 row in set (0.001 sec)


MariaDB [main]> DESCRIBE sales_order_item additional_data;
+-----------------+------+------+-----+---------+-------+
| Field           | Type | Null | Key | Default | Extra |
+-----------------+------+------+-----+---------+-------+
| additional_data | text | YES  |     | NULL    |       |
+-----------------+------+------+-----+---------+-------+
1 row in set (0.001 sec)

```

In versions 2.4.3, 2.4.4, and 2.4.5 there are ten tables that have the column `additional_data`.

```mysql
MariaDB [magento]> SELECT DISTINCT TABLE_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME IN ('additional_data') AND TABLE_SCHEMA='main';
+------------------------+
| TABLE_NAME             |
+------------------------+
| sales_shipment_item    |
| sales_creditmemo_item  |
| sales_invoice_item     |
| catalog_eav_attribute  |
| sales_order_payment    |
| quote_address_item     |
| quote_payment          |
| quote_item             |
| magento_reward_history |
| sales_order_item       |
+------------------------+
10 rows in set (0.020 sec)
```
