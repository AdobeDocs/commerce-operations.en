---
title: Data migration follow-up
description: Learn how to validate that your Magento 1 to Magento 2 data migration was successful and that all functionality is working as expected.
exl-id: a55f357b-6c95-49d6-b2f1-c2e403a8c85f
topic: Commerce, Migration
---
# Data migration follow-up

Some behavior and logic of Magento 1 has been implemented differently in Magento 2. The [!DNL Data Migration Tool] takes care of it. There are some migration aspects you should know about, and sometimes you must take minor steps for some functionalities to work smoothly after migration.

## Information

### Split database not supported

The [!DNL Data Migration Tool] doesn't support split databases.

### Group Prices converted to Tier Prices

All Group Prices are automatically converted to Tier Prices during migration.

### New numbering for sales entities

Reference numbers for Orders, Invoices, Shipments, Credit Memos, and RMA migrate as is. After migration, the new Magento 2 number assignment rules apply. The numeration for the new sales entities is different.

## Steps

### Resave Customer Segments [Adobe Commerce only]

After migration, Customer Segments must be resaved from the Admin Panel to get them up and running.

### Configure time zone

The tool does not migrate timezone settings, so you must manually configure the timezone after migration at **Stores** > **Configuration** > **Locale Options** > **Timezone**.

By default, Magento stores time data in the UTC-0 zone in the database and displays it according to the current timezone settings. If time data has already been saved in the database in a zone other than UTC-0, you must convert the existing time to UTC-0 using the [!DNL Data Migration Tool]'s `\Migration\Handler\Timezone` handler.

In the following example, Magento 1 has been incorrectly saving time in the UTC-7 zone in the database (for example, due to a faulty third-party extension). To properly convert the customer account creation time to the UTC-0 zone upon migration, follow these steps:

1. Copy the `map-customer.xml.dist` configuration file from the appropriate directory of the [!DNL Data Migration Tool] (`<your Magento 2 install dir>/vendor/magento/data-migration-tool/etc/<migration edition>`) into the `<your Magento 2 install dir>/app/code/Vendor/Migration/etc/<migration edition>/map-customer.xml` file.

1. Update the `<customer_map_file>` node in `config.xml` and remove the `.dist` extension from `map-customer.xml.dist`

1. Add the following rule to the `map-customer.xml` file:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<map xmlns:xs="http://www.w3.org/2001/XMLSchema-instance" xs:noNamespaceSchemaLocation="../map.xsd">
  <!--...-->
  <destination>
      <field_rules>
          <!--...-->
          <transform>
              <field>customer_entity.created_at</field>
              <handler class="\Migration\Handler\Timezone">
                  <param name="offset" value="-7" />
              </handler>
          </transform>
      </field_rules>
  </destination>
</map>
```
