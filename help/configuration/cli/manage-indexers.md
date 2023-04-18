---
title: Manage the indexers
description: See examples of how to view and manage Commerce indexers.
---

# Manage the indexers

{{file-system-owner}}

To view a list of all indexers:

```bash
bin/magento indexer:info
```

The list displays as follows:

```terminal
design_config_grid                       Design Config Grid
customer_grid                            Customer Grid
catalog_category_product                 Category Products
catalog_product_category                 Product Categories
catalogrule_rule                         Catalog Rule Product
catalog_product_attribute                Product EAV
inventory                                Inventory
catalogrule_product                      Catalog Product Rule
cataloginventory_stock                   Stock
targetrule_product_rule                  Product/Target Rule
targetrule_rule_product                  Target Rule/Product
catalog_product_price                    Product Price
catalogsearch_fulltext                   Catalog Search
salesrule_rule                           Sales Rule
```

## View indexer status

Use this command to view the status of all indexers or specific indexers. For example, find out if an indexer needs to be reindexed.

Command options:

```bash
bin/magento indexer:status [indexer]
```

Where `[indexer]` is a space-separated list of indexers. Omit `[indexer]` to view the status of all indexers.

Sample result:

```terminal
+----------------------+------------------+-----------+---------------------+---------------------+
| Title                | Status           | Update On | Schedule Status     | Schedule Updated    |
+----------------------+------------------+-----------+---------------------+---------------------+
| Catalog Product Rule | Reindex required | Save      |                     |                     |
| Catalog Rule Product | Reindex required | Save      |                     |                     |
| Catalog Search       | Ready            | Save      |                     |                     |
| Category Products    | Reindex required | Schedule  | idle (0 in backlog) | 2021-06-28 09:45:53 |
| Customer Grid        | Ready            | Schedule  | idle (0 in backlog) | 2021-06-28 09:45:52 |
| Design Config Grid   | Ready            | Schedule  | idle (0 in backlog) | 2018-06-28 09:45:52 |
| Inventory            | Ready            | Save      |                     |                     |
| Product Categories   | Reindex required | Schedule  | idle (0 in backlog) | 2021-06-28 09:45:53 |
| Product EAV          | Reindex required | Save      |                     |                     |
| Product Price        | Reindex required | Save      |                     |                     |
| Stock                | Reindex required | Save      |                     |                     |
+----------------------+------------------+-----------+---------------------+---------------------+
```

## Reindex

Use this command to reindex all or selected indexers one time only.

>[!INFO]
>
>This command reindexes one time only. To keep indexers up to date, you must set up a [cron job](../cli/configure-cron-jobs.md).

Command options:

```bash
bin/magento indexer:reindex [indexer]
```

Where `[indexer]` is a space-separated list of indexers. Omit `[indexer]` to reindex all indexers.

Sample result:

```terminal
Design Config Grid index has been rebuilt successfully in <time>
Customer Grid index has been rebuilt successfully in <time>
Category Products index has been rebuilt successfully in <time>
Product Categories index has been rebuilt successfully in <time>
Catalog Rule Product index has been rebuilt successfully in <time>
Product EAV index has been rebuilt successfully in <time>
Inventory index has been rebuilt successfully in <time>
Catalog Product Rule index has been rebuilt successfully in <time>
Stock index has been rebuilt successfully in <time>
Product Price index has been rebuilt successfully in <time>
Catalog Search index has been rebuilt successfully in <time>
```

>[!INFO]
>
>Reindexing all indexers can take a long time for stores with large numbers of products, customers, categories, and promotional rules.

### Reindexing in parallel mode

Indexers are scoped and multi-threaded to support reindexing in parallel mode. It parallelizes by the indexer's dimension and executes across multiple threads, reducing processing time.

In this context, `dimension` is the scope of the reindexing, for instance a `website` or just a specific `customer_group`.

Index parallelization affects scoped indexers only, which means Commerce splits the data into multiple tables using the indexer as its scope instead of keeping all data in one table.

You can run the following indexes in parallel mode:

-  `Catalog Search Fulltext` can be paralleled by store views.
-  `Category Product` can be paralleled by store views.
-  `Catalog Price` can be paralleled by website and customer groups.
-  `Catalog Permissions` can be paralleled by customer groups.

>[!INFO]
>
>Parallelization for Catalog Search Fulltext and Category Product is enabled by default.

To use parallelization, set one of the available dimensions modes for the product price indexer:

-  `none` (default)
-  `website`
-  `customer_group`
-  `website_and_customer_group`

For example, to set the mode per website:

```bash
bin/magento indexer:set-dimensions-mode catalog_product_price website
```

To use parallelization for Catalog permissions, set one of the available dimensions modes for the Catalog Permissions indexer:

-  `none` (default)
-  `customer_group`

Or to check the current mode:

```bash
bin/magento indexer:show-dimensions-mode
```

To reindex in parallel mode, run the reindex command using the environment variable `MAGE_INDEXER_THREADS_COUNT`, or add an environment variable to the `env.php` file. This variable sets the number of threads for the reindex processing.

For example, the following command runs the `Catalog Search Fulltext` indexer across three threads:

```bash
MAGE_INDEXER_THREADS_COUNT=3 php -f bin/magento indexer:reindex catalogsearch_fulltext
```

## Reset indexer

Use this command to invalidate the status of all indexers or specific indexers.

Command options:

```bash
bin/magento indexer:reset [indexer]
```

Where ```[indexer]``` is a space-separated list of indexers. Omit `[indexer]` to invalidate all indexers.

Sample result:

```terminal
Design Config Grid indexer has been invalidated.
Customer Grid indexer has been invalidated.
Category Products indexer has been invalidated.
Product Categories indexer has been invalidated.
Catalog Rule Product indexer has been invalidated.
Product EAV indexer has been invalidated.
Inventory indexer has been invalidated.
Catalog Product Rule indexer has been invalidated.
Stock indexer has been invalidated.
Product Price indexer has been invalidated.
Catalog Search indexer has been invalidated.
```

## Configure indexers

Use this command to set the following indexer options:

-  **Update on save (`realtime`)**: Indexed data is updated when a change is made in the Admin. (For example, the category products index is reindex after products are added to a category in the Admin.) This is the default.
-  **Update by schedule (`schedule`)**: Data is indexed according to the schedule set by your cron job.

[Learn more about indexing](https://developer.adobe.com/commerce/php/development/components/indexing/).

### Display the current configuration

To view the current indexer configuration:

```bash
bin/magento indexer:show-mode [indexer]
```

Where `[indexer]` is a space-separated list of indexers. Omit `[indexer]` to show all indexers' modes. For example, to show the mode of all indexers:

Sample result:

```terminal
Design Config Grid:                                Update on Save
Customer Grid:                                     Update on Save
Category Products:                                 Update on Save
Product Categories:                                Update on Save
Catalog Rule Product:                              Update on Save
Product EAV:                                       Update on Save
Inventory:                                         Update on Save
Catalog Product Rule:                              Update on Save
Stock:                                             Update on Save
Product Price:                                     Update on Save
Catalog Search:                                    Update on Save
```

### Configure indexers

>[!INFO]
>
>Before switching indexer modes, we recommend putting your website to [maintenance](../../installation/tutorials/maintenance-mode.md) mode and [disable cron jobs](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/configure/app/properties/crons-property.html#disable-cron-jobs). This ensures you do not suffer database locks.

To specify the indexer configuration:

```bash
bin/magento indexer:set-mode {realtime|schedule} [indexer]
```

Where:

-  `realtime`—Sets the selected indexers to update on save.
-  `schedule`—Sets the specified indexers to save according to the cron schedule.
-  `indexer`—Is a space-separated list of indexers. Omit `indexer` to configure all indexers the same way.

For example, to change only the category products and product categories indexers to update on schedule, enter:

```bash
bin/magento indexer:set-mode schedule catalog_category_product catalog_product_category
```

Sample result:

```terminal
Index mode for Indexer Category Products was changed from 'Update on Save' to 'Update by Schedule'
Index mode for Indexer Product Categories was changed from 'Update on Save' to 'Update by Schedule'
```

The indexers-related database triggers are added when the indexer mode is set to `schedule` and removed when the indexer mode is set to `realtime`. If the triggers are missing from your database while the indexers are set to `schedule`, change the indexers to `realtime` and then change them back to `schedule`. This resets the triggers.
