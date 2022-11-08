---
title: Best practices for modifying database tables
description: Learning to recognize when and how to modify database tables, especially those that are not your own.
role: Developer, Architect
feature: Best Practices
feature-set: Commerce
last-substantial-update: 2022-11-08
---
# Knowing when and how to modify existing database tables 

This tutorial will discuss best practices for modifying database tables that are created by Adobe Commerce or 3rd party modules.  Knowing when its appropriate and ensuring they are done in the most effective manner will ensure a long and stable commerce platform.

Migrating from Magento 1 and other e-commerce platforms or working with modules from the Adobe Commerce Marketplace often requires adding and saving extra data. Usually, your first thought might be to simply add a new column or adjust an existing column in a database table.  However, modifying a core Adobe Commerce table or other tables created by third-party vendors should only be done in limited situations..

First, question whether you need to save this data.  If you are moving data from a legacy system, anything that you can remove is going to save you time and effort during the migration. There are ways to archive data if it needs to be accessed later, however it is outside the scope of this topic. To remain a good steward of the application and performance, it is acceptable to challenge a request to save extra data. The goal is to ensure this is a requirement to fulfill a business need that cannot be filled in another way.

If your project contains legacy data, such as old orders, or customer records consider other alternative method of lookup.  Instead of just migrating the old data over, consider an external search of the old database hosted outside the commerce platform. If the business needs access to the data for occasional reference only, keeping it out of the new database will speed up the migration. This will allow the development team to focus on the new site rather than troubleshooting data migration issues.

Should the data need to be migrated or new data need to be saved, the recommended choice is using Extension Attributes.  [See Extension Attributes](https://developer.adobe.com/commerce/php/development/components/add-attributes/){target="_blank"}.  Using this method, we are ensured to have complete control over the data being stored.  We also have complete control on the database structure to ensure it is the correct column type and proper indexes.  Most entities in Adobe commerce and Magento open source have this feature.  

If your final conclusion is to adjust a core Adobe Commerce or third-party module's database table, consider the following guidelines to ensure the least amount of impact.

* Only add new columns
* Never modify an existing columns' type
* Avoid any new columns to any EAV attribute tables, they are already overloaded with logic and responsibility
* Be sure you are aware of the size of the table you are adjusting. If the table is large, it will impact the deployment which can cause minutes to hours of delay executing the changes.

The recommended best practice for adding a column to a database table that does not belong to your project, is to create a module with a name in your namespace that represents what you are updating.  For example app/code/YourCompany/Customer.  Create the appropriate files for this module to be enabled. [See create a module](https://experienceleague.adobe.com/docs/commerce-learn/tutorials/backend-development/create-module.html){target="_blank"}
See here for details on this process.  Ensure that you create a file called db_schema.xml in the etc folder.  Make the appropriate changes and if applicable generate a db_schema_whitelist.json [See Declarative Schema](https://developer.adobe.com/commerce/php/development/components/declarative-schema/configuration/){target="_blank"}

## Why it is not recommended

* Upgrades could be more complicated 
* Deployments are impacted if the table being modified is large
* Migrations to a new platform could be more complicated

## Ways to avoid modifying core tables

* Use extension attributes
* Use JSON-encoded data. Some core tables have an `additional_data` column that holds JSON-encoded this offers a native way of mapping additional data in one field. This is very helpful to avoid a new table for small, simple data elements that you do not need to search the contents but need the information available for future retrieval.  This is typically only available at the item level, not for the entire quote or order.
    * Pros: no additional fields needed, so that keeps number of columns minimal, which is very actual for sales flow where we already have lots of them. An elegant way to store data that exists for some entities but not for all.
    * Cons: These fields should be clearly declared in the code, so a developer can easily find them. Mostly it's good for storing data for read purposes only.  The reason is our code would need to un-serialize it to modify and build object to add dependencies or relations. It is  nearly impossible to use db operations and search for these fields and are very slow. Extra care would need to be taken due to serialization/un-serialization that could break causing invalid Json or errors reading during runtime. There are other issues, which can happen for example with some native PHP functions if we do not use Adobe Commerce wrapper methods provided by the core application.

Here are a few examples of tables with the column and the structure for the column `additional_data` 

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

In version 2.4.4 these were 10 tables that had the column `additional_data`

```mysql
MariaDB [magento]> SELECT DISTINCT TABLE_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME IN ('additional_data') AND TABLE_SCHEMA='magento';
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
