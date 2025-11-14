---
title: Manage the indexers
description: Learn how to view and manage Adobe Commerce indexers using command-line tools. Discover indexer commands, status checking, and reindexing techniques.
exl-id: d2cd1399-231e-4c42-aa0c-c2ed5d7557a0
---
# Manage the indexers

{{file-system-owner}}

To view a list of all indexers:

```bash
bin/magento indexer:info
```

The list displays as follows:

```text
cataloginventory_stock                   Stock
design_config_grid                       Design Config Grid
customer_grid                            Customer Grid
catalog_category_product                 Category Products
catalog_product_category                 Product Categories
catalogrule_rule                         Catalog Rule Product
catalog_product_attribute                Product EAV
inventory                                Inventory
catalog_product_price                    Product Price
catalogrule_product                      Catalog Product Rule
targetrule_product_rule                  Product/Target Rule
targetrule_rule_product                  Target Rule/Product
catalogsearch_fulltext                   Catalog Search
salesrule_rule                           Sales Rule
sales_order_data_exporter                Sales Order Feed
sales_order_status_data_exporter         Sales Order Statuses Feed
store_data_exporter                      Stores Feed
```

>[!NOTE]
>
> Adobe Commerce merchants using Live Search, Catalog Service, or Product Recommendations have the option to use [SaaS-based price indexing](https://experienceleague.adobe.com/en/docs/commerce/price-indexer/price-indexing).

## View indexer status

Use this command to view the status of all indexers or specific indexers. For example, find out if an indexer needs to be reindexed.

Command options:

```bash
bin/magento indexer:status [indexer]
```

Where `[indexer]` is a space-separated list of indexers. Omit `[indexer]` to view the status of all indexers.

Sample result:

```text
+----------------------------------+---------------------------+--------+-----------+---------------------+---------------------+
| ID                               | Title                     | Status | Update On | Schedule Status     | Schedule Updated    |
+----------------------------------+---------------------------+--------+-----------+---------------------+---------------------+
| catalogrule_product              | Catalog Product Rule      | Ready  | Schedule  | idle (0 in backlog) | 2025-07-11 08:00:52 |
| catalogrule_rule                 | Catalog Rule Product      | Ready  | Schedule  | idle (0 in backlog) | 2025-07-11 08:00:52 |
| catalogsearch_fulltext           | Catalog Search            | Ready  | Schedule  | idle (0 in backlog) | 2025-07-11 08:01:02 |
| catalog_category_product         | Category Products         | Ready  | Schedule  | idle (0 in backlog) | 2025-06-03 14:11:33 |
| customer_grid                    | Customer Grid             | Ready  | Schedule  | idle (0 in backlog) | 2025-06-03 14:11:31 |
| design_config_grid               | Design Config Grid        | Ready  | Schedule  | idle (0 in backlog) | 2025-06-03 14:11:31 |
| inventory                        | Inventory                 | Ready  | Schedule  | idle (0 in backlog) | 2025-06-03 14:11:36 |
| catalog_product_category         | Product Categories        | Ready  | Schedule  | idle (0 in backlog) | 2025-06-03 14:11:33 |
| catalog_product_attribute        | Product EAV               | Ready  | Schedule  | idle (0 in backlog) | 2025-06-03 14:11:36 |
| catalog_product_price            | Product Price             | Ready  | Schedule  | idle (0 in backlog) | 2025-07-11 08:00:54 |
| targetrule_product_rule          | Product/Target Rule       | Ready  | Schedule  | idle (0 in backlog) | 2025-06-03 14:11:39 |
| sales_order_data_exporter        | Sales Order Feed          | Ready  | Schedule  | idle (0 in backlog) | 2025-06-03 14:12:10 |
| sales_order_status_data_exporter | Sales Order Statuses Feed | Ready  | Schedule  | idle (0 in backlog) | 2025-06-03 14:12:10 |
| salesrule_rule                   | Sales Rule                | Ready  | Schedule  | idle (0 in backlog) | 2025-06-03 14:12:10 |
| cataloginventory_stock           | Stock                     | Ready  | Schedule  | idle (0 in backlog) | 2025-06-03 14:11:31 |
| store_data_exporter              | Stores Feed               | Ready  | Schedule  | idle (0 in backlog) | 2025-06-03 14:12:11 |
| targetrule_rule_product          | Target Rule/Product       | Ready  | Schedule  | idle (0 in backlog) | 2025-06-03 14:11:39 |
+----------------------------------+---------------------------+--------+-----------+---------------------+---------------------+
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

```text
Stock index has been rebuilt successfully in <time>
Design Config Grid index has been rebuilt successfully in <time>
Customer Grid index has been rebuilt successfully in <time>
Category Products index has been rebuilt successfully in <time>
Product Categories index has been rebuilt successfully in <time>
Catalog Rule Product index has been rebuilt successfully in <time>
Product EAV index has been rebuilt successfully in <time>
Inventory index has been rebuilt successfully in <time>
Product Price index has been rebuilt successfully in <time>
Catalog Product Rule index has been rebuilt successfully in <time>
Product/Target Rule index has been rebuilt successfully in <time>
Target Rule/Product index has been rebuilt successfully in <time>
Catalog Search index has been rebuilt successfully in <time>
Sales Rule index has been rebuilt successfully in <time>
Sales Order Feed index has been rebuilt successfully in <time>
Sales Order Statuses Feed index has been rebuilt successfully in <time>
Stores Feed index has been rebuilt successfully in <time>
```

>[!INFO]
>
>Reindexing all indexers can take a long time for stores with large numbers of products, customers, categories, and promotional rules.

### Reindexing in parallel mode

{{php-process-control}}

Indexers are scoped and multi-threaded to support reindexing in parallel mode. It parallelizes by the indexer's dimension and executes across multiple threads, reducing processing time.

In this context, `dimension` is the scope of the reindexing, for instance a `website` or just a specific `customer_group`.

Index parallelization affects scoped indexers only, which means Commerce splits the data into multiple tables using the indexer as its scope instead of keeping all data in one table.

You can run the following indexes in parallel mode:

- `Catalog Search Fulltext` can be paralleled by store views.
- `Category Product` can be paralleled by store views.
- `Catalog Price` can be paralleled by website and customer groups.
- `Catalog Permissions` can be paralleled by customer groups.

>[!INFO]
>
>Parallelization for Catalog Search Fulltext and Category Product is enabled by default.

To use parallelization, set one of the available dimensions modes for the product price indexer:

- `none` (default)
- `website`
- `customer_group`
- `website_and_customer_group`

For example, to set the mode per website:

```bash
bin/magento indexer:set-dimensions-mode catalog_product_price website
```

To use parallelization for Catalog permissions, set one of the available dimensions modes for the Catalog Permissions indexer:

- `none` (default)
- `customer_group`

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

```text
Stock indexer has been invalidated.
Design Config Grid indexer has been invalidated.
Customer Grid indexer has been invalidated.
Category Products indexer has been invalidated.
Product Categories indexer has been invalidated.
Catalog Rule Product indexer has been invalidated.
Product EAV indexer has been invalidated.
Inventory indexer has been invalidated.
Product Price indexer has been invalidated.
Catalog Product Rule indexer has been invalidated.
Product/Target Rule indexer has been invalidated.
Target Rule/Product indexer has been invalidated.
Catalog Search indexer has been invalidated.
Sales Rule indexer has been invalidated.
Sales Order Feed indexer has been invalidated.
Sales Order Statuses Feed indexer has been invalidated.
Stores Feed indexer has been invalidated.
```

## Configure indexers

Use this command to set the following indexer options:

- **Update on save (`realtime`)**: Indexed data is updated when a change is made in the Admin. (For example, the category products index is reindex after products are added to a category in the Admin.)
- **Update by schedule (`schedule`)**: Data is indexed according to the schedule set by your cron job.

[Learn more about indexing](https://developer.adobe.com/commerce/php/development/components/indexing/).

### Display the current configuration

To view the current indexer configuration:

```bash
bin/magento indexer:show-mode [indexer]
```

Where `[indexer]` is a space-separated list of indexers. Omit `[indexer]` to show all indexers' modes. For example, to show the mode of all indexers:

Sample result:

```text
Stock:                                             Update by Schedule
Design Config Grid:                                Update by Schedule
Customer Grid:                                     Update by Schedule
Category Products:                                 Update by Schedule
Product Categories:                                Update by Schedule
Catalog Rule Product:                              Update by Schedule
Product EAV:                                       Update by Schedule
Inventory:                                         Update by Schedule
Product Price:                                     Update by Schedule
Catalog Product Rule:                              Update by Schedule
Product/Target Rule:                               Update by Schedule
Target Rule/Product:                               Update by Schedule
Catalog Search:                                    Update by Schedule
Sales Rule:                                        Update by Schedule
Sales Order Feed:                                  Update by Schedule
Sales Order Statuses Feed:                         Update by Schedule
Stores Feed:                                       Update by Schedule
```

### Set the indexer mode

>[!IMPORTANT]
>
>The [!DNL Customer Grid] indexer behavior changed in 2.4.8:
>
>- **Prior to 2.4.8**: The [!DNL Customer Grid] indexer can only be reindexed using the [!UICONTROL Update on Save] option and does not support the [!UICONTROL Update by Schedule] option.
>
>   Use the following command to set this indexer to update on save:
>
>   ```bash
>   bin/magento indexer:set-mode realtime customer_grid
>   ```
>
>- **2.4.8 and later**: The [!DNL Customer Grid] indexer supports both [!UICONTROL Update on Save] and [!UICONTROL Update by Schedule] modes, and defaults to [!UICONTROL Update by Schedule].
>
>See [Best practices for indexer configuration](https://experienceleague.adobe.com/en/docs/commerce-operations/implementation-playbook/best-practices/maintenance/indexer-configuration) in the _Implementation Playbook_.

>[!INFO]
>
>Before switching indexer modes, set your website to [maintenance](../../installation/tutorials/maintenance-mode.md) mode and [disable cron jobs](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/configure/app/properties/crons-property). This ensures you do not experience database locks.

To specify the indexer configuration:

```bash
bin/magento indexer:set-mode {realtime|schedule} [indexer]
```

Where:

- `realtime`—Sets the selected indexers to update on save.
- `schedule`—Sets the specified indexers to save according to the cron schedule.
- `indexer`—Is a space-separated list of indexers. Omit `indexer` to configure all indexers the same way.

For example, to change only the category products and product categories indexers to update on schedule, enter:

```bash
bin/magento indexer:set-mode schedule catalog_category_product catalog_product_category
```

Sample result:

```
Index mode for Indexer Category Products was changed from 'Update on Save' to 'Update by Schedule'
Index mode for Indexer Product Categories was changed from 'Update on Save' to 'Update by Schedule'
```

The indexers-related database triggers are added when the indexer mode is set to `schedule` and removed when the indexer mode is set to `realtime`. If the triggers are missing from your database while the indexers are set to `schedule`, change the indexers to `realtime` and then change them back to `schedule`. This resets the triggers.

### Set indexer status

The `bin/magento indexer:set-status` command was introduced in Adobe Commerce 2.4.7. It allows administrators to modify the operational status of one or more indexers, optimizing system performance during extensive operations like data imports, updates, or maintenance.

Command syntax:

```bash
bin/magento indexer:set-status {invalid|suspended|valid} [indexer]
```

Where:

- `invalid`—Marks indexers as out-of-date, prompting reindexing on the next cron run unless they are suspended.
- `suspended`—Temporarily stops automatic cron-triggered updates for indexers. This status applies to both real-time and schedule modes, ensuring that automatic updates are paused during intensive operations.
- `valid`—Indicates that indexer data is up-to-date, with no need for reindexing.
- `indexer`—Is a space-separated list of indexers. Omit `indexer` to configure all indexers the same way.

For example, to suspend specific indexers, enter:

```bash
bin/magento indexer:set-status suspended catalog_category_product catalog_product_category
```

Sample result:

```
Index status for Indexer 'Category Products' was changed from 'valid' to 'suspended'.
Index status for Indexer 'Product Categories' was changed from 'valid' to 'suspended'.
```

#### Managing suspended indexer status

When an indexer is set to a `suspended` status, it primarily affects automatic reindexing and materialized view updates. Here's a brief overview:

**Reindexing Skipped**: The system skips automatic reindexing for `suspended` indexers and any indexers that share the same `shared_index`. This approach conserves system resources by avoiding reindexing data related to suspended processes.

**Materialized View Updates Skipped**: Similar to reindexing, the system also pauses updates to materialized views related to `suspended` indexers or their shared indexes. This pause further reduces system load during suspension periods.

>[!INFO]
>
>The `indexer:reindex` command reindexes all indexers, including indexers marked as `suspended`, making it useful for manual updates when automatic ones are paused.

>[!IMPORTANT]
>
>Changing an indexer's status to `valid` from `suspended` or `invalid` requires caution. This action can lead to performance degradation if there's accumulated unindexed data.
>
>It's crucial to ensure that all data is accurately indexed before manually updating the status to `valid` to maintain system performance and data integrity.
