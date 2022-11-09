---
title: Best practices for modifying database tables
description: Learn how and when to modify Adobe Commerce and third-party database tables.
role: Developer, Architect
feature: Best Practices
feature-set: Commerce
last-substantial-update: 2022-11-09
---
# Best practices for modifying database tables 

This article provides best practices for modifying database tables that are created by [!DNL Adobe Commerce] or third-party modules. Understanding when and how to effectively modify tables helps ensure the long-term viability and stability of your commerce platform.

Migrating from [!DNL Magento 1] and other e-commerce platforms, or working with modules from the [!DNL Adobe Commerce] Marketplace, can require adding and saving extra data. Your first instinct might be to add a column or adjust an existing one in a database table. However, modifying a core [!DNL Adobe Commerce] table (or third-party vendor table) should be done only in limited situations.

Adobe recommends that you first determine whether you need to save this data. If you are moving data from a legacy system, any data that you can remove saves you time and effort during the migration. (There are ways to archive data if it needs to be accessed later.) To be good steward of the application and performance, it's okay to challenge a request to save extra data. Your goal is to ensure this is a requirement to fulfill a business need that cannot be filled another way.

If your project contains legacy data, such as old orders or customer records, consider an alternative lookup method. For example, if the business requires access to the data only for occasional reference, consider implementing an external search of the old database hosted outside the commerce platform instead of migrating old data to [!DNL Adobe Commerce]. This situation would require the database to be migrated to a server, offering either a web interface to read the data, or perhaps training in the use of Mysql Workbench or similar tools. By excluding this data from the new database expedites the migration by allowing the development team to focus on the new site rather than troubleshooting data migration issues.

If you determine that legacy data requires migration, or that new data needs to be saved in [!DNL Adobe Commerce], Adobe recommends using [[!UICONTROL extension attributes]](https://developer.adobe.com/commerce/php/development/components/add-attributes/){target="_blank"}. [!UICONTROL Extension attributes] ensure that you can control the data being stored. You also have control over the database structure, which ensures that the data is stored with the correct column type and proper indexes. Most entities in [!DNL Adobe Commerce] and [!DNL Magento Open Source] offer the use of extension attributes.  

If you decide to store data by modifying a core [!DNL Adobe Commerce] or third-party module database table, use the following guidelines to minimize impact on stability and performance.

* Add new column only.
* Never modify the _type_ value of an existing column.  For example, do not change an integer to a varchar just to satisfy your use case.
* Avoid adding columns to EAV attribute tables. These tables are already overloaded with logic and responsibility.
* Before adjusting a table, determine its size. Changing large tables impacts the deployment, which can cause minutes or hours of delay when changes are applied.

## Best practices for modifying an external database table

Adobe recommends following these steps when you add a column to a database table that does not belong to your project:

1. Create a module with a name in your namespace that represents what you are updating. 

   For example: `app/code/YourCompany/Customer`

1. Create the appropriate files to enable the module (see [Create a module](https://experienceleague.adobe.com/docs/commerce-learn/tutorials/backend-development/create-module.html){target="_blank"}).

1. Create a file called `db_schema.xml` in the `etc` folder, and make the appropriate changes. 

    If applicable, generate a `db_schema_whitelist.json` file. See [Declarative Schema](https://developer.adobe.com/commerce/php/development/components/declarative-schema/configuration/){target="_blank"} for more information.

## Potential impacts

* Upgrades could be more complicated.
* Deployments are impacted if the table being modified is large.
* Migrations to a new platform could be more complicated.

## Ways to avoid modifying core tables

* Use extension attributes.
* Use JSON-encoded data. 
    
    Some core tables have an `additional_data` column that holds JSON-encoded data. This column offers a native way of mapping additional data in one field. This method avoids adding a table for small, simple data elements that store information for data retrieval without a search requirement. The `additional_data` column is typically available only at the item level, not for the entire quote or order.
    
    Pros: 
    
      * No additional fields are needed, which keeps the number of columns minimal. This is particularly helpful in the sales flow, where there are many tables already involved. It is best not to add more complexity to this already complicated process. This method satisfies many uses cases, but not all.
    
    Cons: 

      * This method is ideal only for storing read-only data. This issue occurs because our code would need to be un-serialized to modify and the build object to add dependencies or database relations.
      * It is difficult to use database operations to search for these fields. Searching with this method is slow. 
      * Extra care must be taken due to serialization/un-serialization that could break the code. This issue can cause an invalid JSON, or read errors during runtime. 
      * These fields should be clearly declared in the code, so a developer can easily find them.
      * Other issues that can occur, for example, with some native PHP functions if you do not use [!DNL Adobe Commerce] wrapper methods provided by the core application. 

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
