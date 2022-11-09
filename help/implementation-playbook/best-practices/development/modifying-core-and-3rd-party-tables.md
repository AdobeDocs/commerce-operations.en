---
title: Best practices for modifying database tables
description: Learning to recognize when and how to modify database tables, especially those that are not your own.
role: Developer, Architect
feature: Best Practices
feature-set: Commerce
last-substantial-update: 2022-11-09
---
# Knowing when and how to modify existing database tables 

This tutorial demonstrates best practices for modifying database tables that are created by Adobe Commerce or third-party modules.  Understanding when it's appropriate to modify tables and how to modify them effectively helps ensure the long term viability and stability of your commerce platform.

Migrating from Magento 1 and other e-commerce platforms or working with modules from the Adobe Commerce Marketplace often requires adding and saving extra data. Usually, your first thought might be to simply add a new column or adjust an existing column in a database table.  However, modifying a core Adobe Commerce table or other tables created by third-party vendors should only be done in limited situations.

The first recommendation is to question whether you need to save this data.  If you are moving data from a legacy system, anything that you can remove saves you time and effort during the migration. There are ways to archive data if it needs to be accessed later, however it is outside the scope of this topic. To remain a good steward of the application and performance, it is acceptable to challenge a request to save extra data. The goal is to ensure this is a requirement to fulfill a business need that cannot be filled in another way.

If your project contains legacy data, such as old orders, or customer records consider an alternative lookup method.  For example, if the business requires access to the data for occasional reference only, consider implementing an external search of the old database hosted outside the commerce platform instead of migrating the old data to Adobe Commerce.  This would require the database be migrated to a server and offering either a web interface to read the data or perhaps training in the use of Mysql Workbench or similar tools.  By excluding this data out of the new database speeds up the migration by allowing the development team to focus on the new site rather than troubleshooting data migration issues.

If you determine that legacy data requires migration or that new data needs to be saved in Adobe Commerce, the recommendation is the use extension attributes. [See Extension Attributes](https://developer.adobe.com/commerce/php/development/components/add-attributes/){target="_blank"}.  Using this method, ensures that you have complete control over the data being stored.  You also have complete control of the database structure to ensure that the data is stored with the correct column type and proper indexes.  Most entities in Adobe Commerce and Magento Open Source offer the use of extension attributes.  

If you decide to store data by modifying a core Adobe Commerce or third-party module database table, use the following guidelines to minimize impact on stability and performance.

* Only add new columns
* Never modify the type of an existing column
* Avoid adding columns to EAV attribute tables. These tables are already overloaded with logic and responsibility
* Before adjusting a table, check its size. Changing large tables impacts the deployment which can cause minutes or hours of delay when changes are applied.

## Best practices for modifying a database table

When you add a column to a database table that does not belong to your project, create a module with a name in your namespace that represents what you are updating.  For example `app/code/YourCompany/Customer`. Then, create the appropriate files to enable  the module. See [Create a module](https://experienceleague.adobe.com/docs/commerce-learn/tutorials/backend-development/create-module.html){target="_blank"}.
Ensure that you create a file called `db_schema.xml` in the `etc` folder. Make the appropriate changes. If applicable, generate a `db_schema_whitelist.json` file. See [Declarative Schema](https://developer.adobe.com/commerce/php/development/components/declarative-schema/configuration/){target="_blank"}

## Potential impacts

* Upgrades could be more complicated 
* Deployments are impacted if the table being modified is large
* Migrations to a new platform could be more complicated

## Ways to avoid modifying core tables

* Use extension attributes
* Use JSON-encoded data. Some core tables have an `additional_data` column that holds JSON-encoded data. This column offers a native way of mapping additional data in one field. This method avoids adding a new table for small, simple data elements that store information for data retrieval without a search requirement. The `additional_data` column is typically available only at the item level, not for the entire quote or order.
    * Pros: no additional fields needed, so that keeps number of columns minimal.  In particular the sales flow where there are many tables already involved.  It is best not to add any more complexity to this already complicated process. This does satisfy many uses cases, but not all.  However, this solution will not work for all situations.
    * Cons: 
        * It's only good for storing data for read purposes only.  The reason is our code would need to un-serialize it to modify and build object to add dependencies or relations. 
        * It is  nearly impossible to use db operations and search for these fields and are searching using this method is very slow. 
        * Extra care would need to be taken due to serialization/un-serialization that could break causing invalid Json or errors reading during runtime. 
        * These fields should be clearly declared in the code, so a developer can easily find them.
        * There are other issues, which can happen for example with some native PHP functions if we do not use Adobe Commerce wrapper methods provided by the core application. 

Here are a few examples of tables that have the column and structure for the `additional_data` column.

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

In versions 2.4.3 and 2.4.4 and 2.4.5 there are 10 tables that have the column `additional_data`

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
