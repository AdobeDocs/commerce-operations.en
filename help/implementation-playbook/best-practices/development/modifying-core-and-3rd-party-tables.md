---
title: Best practices on modifying database tables
description: Learning to recognize when and how to modify database tables, especially those that are not your own.
role: Developer, Architect
feature: Best Practices
feature-set: Commerce
last-substantial-update: 2022-11-04
---
# Knowing when and how to modify existing database tables 

This tutorial will discuss best practices for modifying database tables that are created by Adobe Commerce or 3rd party modules.  Knowing when its appropriate and ensuring they are done in the most effective manner will ensure a long and stable commerce platform.

Migrating from Magento 1 and other e-commerce platforms or working with modules from the Adobe Commerce Marketplace often requires adding and saving extra data. Usually, your first thought might be to simply add a new column or adjust an existing column in a database table.  However, modifying a core Adobe Commerce table or other tables created by third-party vendors should only be done in limited situations..

First, question whether you need to save this data.  If you are moving data from a legacy system, anything that you can remove is going to save you time and effort during the migration. There are ways to archive data if it needs to be accessed later, however it is outside the scope of this topic. To remain a good steward of the application and performance, it is acceptable to challenge a request to save extra data. The goal is to ensure this is a requirement to fulfill a business need that cannot be filled in another way.

When your project has legacy data consider other alternative such as an external search of the old database.  If the business needs access to the data only for reference occasionally, keeping it out of the new commerce database will speed up the migration and allow the development team to focus on the new site rather than troubleshooting data migration issues.

Should the data need to be migrated or new data need to be saved, the recommended choice is using Extension Attributes. 
TODO needs more 



If your final conclusion is to adjust a core Adobe Commerce or third-party module's database table, consider the following guidelines to ensure the least amount of impact.

* Only add new columns
* Never modify an existing column type to fit your needs
* Be sure you are aware of the size of the table you are adjusting. If the table is large, it will impact the deployment which can cause minutes to hours of delay executing the changes.


## Why it is not recommended

* Upgrades could be more complicated 
* Will impact a deployment if the table being modified is large
* Migrations to a new platform would be more complicated

## Ways to avoid modifying core tables

*   Use extension attributes
*   There are core tables have a column "additional_data" that holds json encoded data so it's possible to use that.  This is very helpful to avoid a new table for small simple data elements that you do not need to search for, but just need available for future retrieval.  This is typically only available at the item level, not for the entire quote or order.
Here are a few examples 

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

