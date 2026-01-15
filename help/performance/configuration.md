---
title: Configuration Best Practices
description: Learn about configuration best practices to optimize Adobe Commerce performance. Discover settings and tools to improve response time and throughput.
feature: Best Practices, Configuration
exl-id: 4cb0f5e7-49d5-4343-a8c7-b8e351170f91
---
# Configuration best practices

Commerce provides many settings and tools that you can use to improve response time on the pages as well as provide higher throughput.

## Cron Jobs

All asynchronous operations in [!DNL Commerce] are performed using the Linux `cron` command. See [Configure and run cron](../configuration/cli/configure-cron-jobs.md) to configure it correctly.

## Indexers

An indexer can run in either **[!UICONTROL Update on Save]** or **[!UICONTROL Update on Schedule]** mode. The **[!UICONTROL Update on Save]** mode immediately indexes whenever your catalog or other data changes. This mode assumes a low intensity of update and browsing operations in your store. It can lead to significant delays and data unavailability during high loads. We recommend using **Update on Schedule** for performance purposes, because it stores information about data updates and performs indexation by portions in the background through a specific cron job. You can change the mode of each [!DNL Commerce] indexer separately on the  **[!UICONTROL System]** > [!UICONTROL Tools] > **[!UICONTROL Index Management]** configuration page. The [!UICONTROL Customer Grid] index must always be set to the **[!UICONTROL Update on Save]** mode.

>[!TIP]
>
>Reindexing on MariaDB 10.4 and 10.6 takes more time compared to other MariaDB or [!DNL MySQL] versions. We suggest modifying the default MariaDB configuration setting, which is described in the [installation prerequisites](../installation/prerequisites/database/mysql.md).

## Caches

When you launch your store in production, activate all the caches from the **[!UICONTROL System]** > [!UICONTROL Tools] > **[!UICONTROL Cache Management]** page. We highly recommend using [!DNL Varnish], as it is an efficient production page cache solution.

## Asynchronous email notifications

Enabling the "Asynchronous email notifications" setting moves processes that handle checkout and order processing email notifications to the background. To enable this feature, go to **[!UICONTROL Stores] > [!UICONTROL Settings] > [!UICONTROL Configuration] > [!UICONTROL Sales] > [!UICONTROL Sales Emails] > [!UICONTROL General Settings] > [!UICONTROL Asynchronous Sending]**. See [Sales Emails](https://experienceleague.adobe.com/en/docs/commerce-admin/config/sales/sales-emails) in the _Admin User Guide_ for more information.

## Asynchronous order data processing

There can be times when intensive sales on a storefront occur at the same time that [!DNL Commerce] is performing intensive order processing. You can configure [!DNL Commerce] to distinguish these two traffic patterns on the database level to avoid conflicts between read and write operations in the corresponding tables. You can store and index order data asynchronously. Orders are placed in temporary storage and moved in bulk to the Order Management grid without any collisions. You can activate this option from **[!UICONTROL Stores] > [!UICONTROL Settings] > [!UICONTROL Configuration] > [!UICONTROL Advanced] > [!UICONTROL Developer] > [!UICONTROL Grid Settings] > [!UICONTROL Asynchronous indexing]**. See [Scheduled Grid Updates](https://experienceleague.adobe.com/en/docs/commerce-admin/stores-sales/order-management/orders/order-scheduled-operations#enable-scheduled-grid-updates-and-reindexing) in the _Admin User Guide_ for more information.

>[!WARNING]
>
>The **[!UICONTROL Developer]** tab and options are only available in [Developer mode](../configuration/cli/set-mode.md). [Adobe Commerce on cloud infrastructure](https://experienceleague.adobe.com/en/docs/commerce-cloud-service/user-guide/develop/overview#cloud-req-test) does not support `Developer` mode.

## Asynchronous configuration save

For projects with a large number of store-level configurations, saving a store configuration can take an inordinate amount of time or result in a timeout. The _Async Config_ module enables asynchronous configuration saves by running a cron job that uses a consumer to process the save in a message queue. AsyncConfig is **disabled** by default.

You can enable AsyncConfig using the command-line interface:

```bash
bin/magento setup:config:set --config-async 1
```

The `set` command writes the following to the `app/etc/env.php` file:

```conf
...
   'config' => [
       'async' => 1
   ]
```

Start the following Consumer to begin processing the messages in the queue on a first-in-first-out basis: 

```bash
bin/magento queue:consumers:start saveConfigProcessor --max-messages=1
```

## Deferred stock update

In times of intensive sales, [!DNL Commerce] can defer stock updates related to orders. This minimizes the number of operations and speeds up the order placement process. However, this option is risky and can only be used when Backorders are activated in the store, because this option can lead to negative stock quantities. This option can bring significant performance improvement on Checkout flows for stores that can easily re-fill their stock on demand. To activate deferred stock updates on your site, go to **[!UICONTROL Stores] > [!UICONTROL Settings] > [!UICONTROL Configuration] > [!UICONTROL Catalog] > [!UICONTROL Inventory] > [!UICONTROL Product Stock Options] > [!UICONTROL Use Deferred Stock Update]**. See [Managing Inventory](https://experienceleague.adobe.com/en/docs/commerce-cloud-service/user-guide/configure/env/stage/variables-cloud) in the _Adobe Commerce User Guide_ for more information.

>[!INFO]
>
>This option is available only if **[!UICONTROL Backorder with any mode]** is activated.

>[!INFO]
>
>This option also works with [Asynchronous order placement](high-throughput-order-processing.md#asynchronous-order-placement) in combination with [Inventory Management](https://experienceleague.adobe.com/docs/commerce-admin/inventory/guide-overview.html).

## Client side optimization settings

To improve the storefront responsiveness of your [!DNL Commerce] instance, go to the Admin in Default or Developer mode and change the following settings:

**[!UICONTROL Stores] -> [!UICONTROL Configuration] -> [!UICONTROL Advanced] -> [!UICONTROL Developer]:**

| Settings Group      | Setting                    | Value  |
| ------------------- | -------------------------- | ------ |
| Grid Settings       | Asynchronous indexing      | Enable |
| CSS Settings        | Minify CSS Files           | Yes    |
| [!DNL JavaScript] Settings | Minify [!DNL JavaScript] Files    | Yes    |
| [!DNL JavaScript] Settings | Enable [!DNL JavaScript] Bundling | Yes    |
| Template Settings   | Minify HTML                | Yes    |

>[!INFO]
>
>The **[!UICONTROL Developer]** tab and options are only available in [Developer mode](../configuration/cli/set-mode.md). [Adobe [!DNL Commerce] on cloud infrastructure](https://experienceleague.adobe.com/en/docs/commerce-cloud-service/user-guide/develop/overview#cloud-req-test) does not support `Developer` mode.

When you activate the **[!UICONTROL Enable [!DNL JavaScript] Bundling]** option, you allow Commerce to merge all JS resources into one or a set of bundles that are loaded in storefront pages. Bundling JS results in fewer requests to the server, which improves page performance. It also helps the browser cache JS resources on the first call and reuse them for all further browsing. This option also brings lazy evaluation, as all JS is loaded as text. It initiates analysis and evaluation of code only after specific actions are triggered on the page. However, this setting is not recommended for stores where the first page load time is extremely critical, because all JS content will be loaded on the first call.

>[!INFO]
>
>See [Optimize resource files](https://experienceleague.adobe.com/en/docs/commerce-operations/implementation-playbook/best-practices/development/optimize-css-js-files) for more information about optimizing CSS and Javascript.

### Bundling tips

* We recommend that you use third-party tools for minification and bundling (like [r.js](https://requirejs.org/)). [!DNL Commerce] built-in mechanisms are not optimal and are shipped as fallback alternatives.
* Activating the HTTP/2 protocol can be a good alternative to using JS bundling. The protocol provides many of the same benefits. It is enabled by default in Adobe Commerce on cloud infrastructure projects.
* We do not recommend using deprecated settings like merging JS and CSS files, as they were designed only for synchronously-loaded JS in the HEAD section of the page. Using this technique can cause bundling and requireJS logic to work incorrectly.

## Customer segments validation

Merchants that have a large number of [customer segments](https://experienceleague.adobe.com/en/docs/commerce-admin/customers/segments/customer-segments) may experience significant performance degradation with customer actions, such as customer login and adding products to the cart.

Customer actions trigger a validation process for customer segments, which is what can cause performance degradation. By default, Adobe Commerce validates each segment in real-time to define which customer segments are matched and which are not.

To avoid performance degradation, you can set the **[!UICONTROL Real-time Check if Customer is Matched by Segment]** system configuration option to **No** to validate customer segments by a single combined condition SQL query.

To enable this optimization, go to **[!UICONTROL Stores] > [!UICONTROL Settings] > [!UICONTROL Configuration] > [!UICONTROL Customers] > [!UICONTROL Customer Configuration] > [!UICONTROL Customer Segments] > [!UICONTROL Real-time Check if Customer is Matched by Segment]**.

This setting improves the performance of customer segment validation if there are many customer segments in the system. However, it does not work with [split database](../configuration/storage/multi-master.md) implementations or when there are no registered customers.

## Database maintenance schedule {#database}

We recommend performing periodic database backups for your Staging and Production instances. Due to the I/O intensive nature of backup operations, you may encounter slower backups and potential issues. Running database processes for multiple environments at the same time may potentially run slower due to contention for available resources.

For better performance, schedule your backups to run in succession, one at a time, at off-peak times. This method avoids I/O contention and reduces time to complete, especially for smaller instances, larger databases, and so on.

For example, we recommend scheduling a backup of your Production database followed up by the Staging database when your stores encounter lower visits.

## Limit number of products in grid

To improve product grid performance for large catalogs, we recommend limiting the number of products in the grid with the **[!UICONTROL Stores] > [!UICONTROL Settings] > [!UICONTROL Configuration] > [!UICONTROL Advanced] > [!UICONTROL Admin] > [!UICONTROL Admin Grids] > [!UICONTROL Limit Number of Products in Grid]** system configuration setting.

This system configuration setting is disabled by default. By enabling it, you can limit the number of products in the grid to a specific value. **[!UICONTROL Records Limit]** is a customizable setting that has a default minimum value of `20000`.
When the **[!UICONTROL Limit Number of Products in Grid]** setting is enabled and the number of products in the grid is greater than the record limit, then the limited collection of records is returned. When the limit is reached, the total records found, number of selected records, and pagination elements are hidden from the grid header.

When the total number of products in the grid is limited, it does not affect product grid mass actions. It only affects the product grid presentation layer. For example, there is a limited number of `20000` products in the grid, the user clicks on **[!UICONTROL Select All]**, selects the **[!UICONTROL Update attributes]** mass action, and updates some attribute(s). As a result, all products are updated, not the limited collection of `20000` records.

The product grid limitation only affects product collections that are used by UI components. As a result, not all product grids are affected by this limitation. Only those that are using `Magento\Catalog\Ui\DataProvider\Product\ProductCollection`.
You can limit product grid collections on the following pages only:

* Catalog Product Grid
* Add Related/Up-Sell/Cross-Sell Products Grid
* Add Products to Bundle Product
* Add Products to Group Product
* Admin Create Order Page

If you do not want your product grid to be limited, we encourage you to use filters more precisely for the result collection to have fewer items than **[!UICONTROL Records Limit]**.
