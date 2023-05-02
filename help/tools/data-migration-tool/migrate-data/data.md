---
title: Migrate data
description: Learn how to start migrating data from Magento 1 to Magento 2 with the [!DNL Data Migration Tool].
exl-id: f4ea8f6a-21f8-4db6-b598-c5efecec254f
---
# Migrate data

Before you start, take the following steps to prepare:

1. Log in to your application server as [the file system owner](../../../installation/prerequisites/file-system/overview.md).
1. Change to the application installation directory or make sure it is added to your system `PATH`.

See the [first steps](overview.md#first-steps) section for more details.

## Run the data migration command

To start migrating data, run:

```bash
bin/magento migrate:data [-r|--reset] [-a|--auto] {<path to config.xml>}
```

Where:

*  `[-a|--auto]` is an optional argument that prevents migration from stopping when it encounters integrity check errors.

*  `[-r|--reset]` is an optional argument that starts migration from the beginning. You can use this argument for testing migration.

*  `{<path to config.xml>}` is the absolute file system path to `config.xml`; this argument is required

Within this step, the [!DNL Data Migration Tool] creates additional tables and triggers for the migration tables in the Magento 1 database. They are used in the [incremental/delta](delta.md) migration step. Additional tables contain information about changed records after the final migration execution. Database triggers are used to populate these extra tables, so if a new operation is being performed on the particular table (a record is added/modified/removed), these database trigger save information about this operation to the extra table. When we run a delta migration process, the [!DNL Data Migration Tool] checks these tables for the unprocessed records and migrates the necessary content into the Magento 2 database.

Each new table contains:

*  `m2_cl` prefix
*  `INSERT`, `UPDATE`, `DELETE` event triggers.

For example, for the `sales_flat_order` the [!DNL Data Migration Tool] creates:

*  `m2_cl_sales_flat_order` table:

   ```sql
   CREATE TABLE `m2_cl_sales_flat_order` (
     `entity_id` int(11) NOT NULL COMMENT 'Entity_id',
     `operation` text COMMENT 'Operation',
     `processed` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Processed',
     PRIMARY KEY (`entity_id`)
   ) COMMENT='m2_cl_sales_flat_order';
   ```

*  `trg_sales_flat_order_after_insert`, `trg_sales_flat_order_after_update`, `trg_sales_flat_order_after_delete` triggers:

   ```sql
   DELIMITER ;;
   CREATE TRIGGER `trg_sales_flat_order_after_insert` AFTER INSERT ON `sales_flat_order`
     FOR EACH ROW
     BEGIN
      INSERT INTO m2_cl_sales_flat_order (`entity_id`, `operation`) VALUES (NEW.entity_id, 'INSERT')ON DUPLICATE KEY UPDATE operation = 'INSERT';
     END
   ;;

   DELIMITER ;;
   CREATE TRIGGER `trg_sales_flat_order_after_update` AFTER UPDATE ON `sales_flat_order`
     FOR EACH ROW
     BEGIN
      INSERT INTO m2_cl_sales_flat_order (`entity_id`, `operation`) VALUES (NEW.entity_id, 'UPDATE') ON DUPLICATE KEY UPDATE operation = 'UPDATE';
     END
   ;;

   DELIMITER ;;
   CREATE TRIGGER `trg_sales_flat_order_after_delete` AFTER DELETE ON `sales_flat_order`
     FOR EACH ROW
     BEGIN
      INSERT INTO m2_cl_sales_flat_order (`entity_id`, `operation`) VALUES (OLD.entity_id, 'DELETE')ON DUPLICATE KEY UPDATE operation = 'DELETE';
     END
   ;;
   ```

>[!NOTE]
>
>The [!DNL Data Migration Tool] saves its current progress as it runs. If errors or a user intervention stops it from running, the Tool resumes progress at the last known good state. To force the [!DNL Data Migration Tool] to run from the beginning, use the `--reset` argument. In that case, we recommend you restore your Magento 2 database dump to prevent duplicating previously migrated data.


## Possible consistency errors

While running, the [!DNL Data Migration Tool] may report inconsistencies between Magento 1 and Magento 2 databases, and display messages like the following:

*  `Source documents are missing: <EXTENSION_TABLE_1>,<EXTENSION_TABLE_2>,...<EXTENSION_TABLE_N>`
*  `Destination documents are missing: <EXTENSION_TABLE_1>,<EXTENSION_TABLE_2>,...<EXTENSION_TABLE_N>`
*  `Source documents are not mapped: <EXTENSION_TABLE_1>,<EXTENSION_TABLE_2>,...<EXTENSION_TABLE_N>`
*  `Destination documents are not mapped: <EXTENSION_TABLE_1>,<EXTENSION_TABLE_2>,...<EXTENSION_TABLE_N>`
*  `Source fields are missing. Document: <EXTENSION_TABLE>. Fields: <FIELD_1>,<FIELD_2>...<FIELD_N>`
*  `Destination fields are missing. Document: <EXTENSION_TABLE>. Fields: <FIELD_1>,<FIELD_2>...<FIELD_N>`
*  `Source fields are not mapped. Document: <EXTENSION_TABLE>. Fields: <FIELD_1>,<FIELD_2>...<FIELD_N>`
*  `Destination fields are not mapped. Document: <EXTENSION_TABLE>. Fields: <FIELD_1>,<FIELD_2>...<FIELD_N>`
*  `Mismatch of data types. Source document: <EXTENSION_TABLE>. Fields: <FIELD_1>,<FIELD_2>...<FIELD_N>`
*  `Mismatch of data types. Destination document: <EXTENSION_TABLE>. Fields: <FIELD_1>,<FIELD_2>...<FIELD_N>`
*  `Incompatibility in data. Source document: <EXTENSION_TABLE>. Field: <FIELD>. Error: <ERROR_MESSAGE>`
*  `Incompatibility in data. Destination document: <EXTENSION_TABLE>. Field: <FIELD>. Error: <ERROR_MESSAGE>`

See the [Troubleshooting](https://support.magento.com/hc/en-us/articles/360033020451) section of this guide for more information and recommendations.

## Next migration step

[Migrate changes](delta.md)
