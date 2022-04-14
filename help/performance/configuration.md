---
group: performance-best-practices
title: Configuration best practices
functional_areas:
  - Configuration
  - System
  - Setup
---

Magento provides many settings and tools that you can use to improve response time on the pages as well as provide higher throughput.

## Cron Jobs

All asynchronous operations in [!DNL Commerce] are performed using the Linux `cron` command. See [Configure and run cron](https://devdocs.magento.com/guides/v2.4/config-guide/cli/config-cli-subcommands-cron.html) to configure it correctly.

## Indexers

An indexer can run in either **[!UICONTORL Update on Save]** or **[!UICONTORL Update on Schedule]** mode. The **[!UICONTORL Update on Save]** mode immediately indexes whenever your catalog or other data changes. This mode assumes a low intensity of update and browsing operations in your store. It can lead to significant delays and data unavailability during high loads. We recommend using **Update on Schedule** mode in production, because it stores information about data updates and performs indexation by portions in the background through a specific cron job. You can change the mode of each [!DNL Commerce] indexer separately on the  **[!UICONTORL System]** > [!UICONTORL Tools] > **[!UICONTORL Index Management]** configuration page.

Reindexing on MariaDB 10.4 takes more time compared to other MariaDB or [!DNL MySQL] versions. As a workaround, we suggest modifying the default MariaDB configuration and setting the following parameters:

*  [`optimizer_switch='rowid_filter=off'`](https://mariadb.com/kb/en/optimizer-switch/)
*  [`optimizer_use_condition_selectivity = 1`](https://mariadb.com/products/skysql/docs/reference/es/system-variables/optimizer_use_condition_selectivity/)

## Caches

When you launch your store in production, activate all the caches from the **[!UICONTROL System]** > [!UICONTROL Tools] > **[!UICONTROL Cache Management]** page. We highly recommend using [!DNL Varnish], as it is an efficient production page cache solution.

## Asynchronous email notifications

Enabling the “Asynchronous email notifications” setting moves processes that handle checkout and order processing email notifications to the background. To enable this feature, go to **[!UICONTROL Stores] > [!UICONTROL Settings] > [!UICONTROL Configuration] > [!UICONTROL Sales] > [!UICONTROL Sales Emails] > [!UICONTROL General Settings] > [!UICONTROL Asynchronous Sending]**. See [Sales Emails](https://docs.magento.com/user-guide/configuration/sales/sales-emails.html) in the _Magento Open Source User Guide_ for more information.

## Asynchronous order data processing

There can be times when intensive sales on a storefront occur at the same time that [!DNL Commerce] is performing intensive order processing. You can configure [!DNL Commerce] to distinguish these two traffic patterns on the database level to avoid conflicts between read and write operations in the corresponding tables. You can store and index order data asynchronously. Orders are placed in temporary storage and moved in bulk to the Order Management grid without any collisions. You can activate this option from **[!UICONTROL Stores] > [!UICONTROL Settings] > [!UICONTROL Configuration] > [!UICONTROL Advanced] > [!UICONTROL Developer] > [!UICONTROL Grid Settings] > [!UICONTROL Asynchronous indexing]**. See [Scheduled Grid Updates](docs.magento.com/user-guide/sales/order-grid-updates-schedule.html) in the _Magento Open Source User Guide_ for more information.

>[!WARNING]
>
>The **[!UICONTROL Developer]** tab and options are only available in [Developer mode](https://devdocs.magento.com/guides/v2.4/config-guide/cli/config-cli-subcommands-mode.html). [Adobe Commerce on cloud infrastructure](https://devdocs.magento.com/cloud/requirements/cloud-requirements.html#cloud-req-test) does not support `Developer` mode.

## Deferred stock update

In times of intensive sales, [!DNL Commerce] can defer stock updates related to orders. This minimizes the number of operations and speeds up the order placement process. However, this option is risky and can only be used when Backorders are activated in the store, because this option can lead to negative stock quantities. This option can bring significant performance improvement on Checkout flows for stores that can easily re-fill their stock on demand. To activate deferred stock updates on your site, go to **[!UICONTROL Stores] > [!UICONTROL Settings] > [!UICONTROL Configuration] > [!UICONTROL Catalog] > [!UICONTROL Inventory] > [!UICONTROL Product Stock Options] > [!UICONTROL Use Deferred Stock Update]**. See [Managing Inventory](docs.magento.com/user-guide/catalog/inventory.html) in the _Adobe Commerce User Guide_ for more information.

>[!INFO]
>
>This option is available only if **[!UICONTROL Backorder with any mode]** is activated.

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
>The **[!UICONTROL Developer]** tab and options are only available in [Developer mode](https://devdocs.magento.com/guides/v2.4/config-guide/cli/config-cli-subcommands-mode.html). [Adobe [!DNL Commerce] on cloud infrastructure](https://devdocs.magento.com/cloud/requirements/cloud-requirements.html#cloud-req-test) does not support `Developer` mode.

When you activate the **[!UICONTROL Enable [!DNL JavaScript] Bundling]** option, you allow Commerce to merge all JS resources into one or a set of bundles that are loaded in storefront pages. Bundling JS results in fewer requests to the server, which improves page performance. It also helps the browser cache JS resources on the first call and reuse them for all further browsing. This option also brings lazy evaluation, as all JS is loaded as text. It initiates analysis and evaluation of code only after specific actions are triggered on the page. However, this setting is not recommended for stores where the first page load time is extremely critical, because all JS content will be loaded on the first call.

>[!INFO]
>
>See [CSS and Javascript file optimization on Adobe Commerce on cloud infrastructure and Adobe Commerce](https://support.magento.com/hc/en-us/articles/360044482152) in the Adobe Commerce Help Center_ for more information about optimizing CSS and Javascript.

### Bundling tips

*  We recommend that you use third-party tools for minification and bundling (like [r.js](http://requirejs.org/)). [!DNL Commerce] built-in mechanisms are not optimal and are shipped as fallback alternatives.
*  Activating the HTTP2 protocol can be a good alternative to using JS bundling. The protocol provides pretty much the same benefits.
*  We do not recommend using deprecated settings like merging JS and CSS files, as they were designed only for synchronously-loaded JS in the HEAD section of the page. Using this technique can cause bundling and requireJS logic to work incorrectly.

## Database maintenance schedule {#database}

We recommend performing periodic database backups for your Staging and Production instances. Due to the I/O intensive nature of backup operations, you may encounter slower backups and potential issues. Running database processes for multiple environments at the same time may potentially run slower due to contention for available resources.

For better performance, schedule your backups to run in succession, one at a time, at off-peak times. This method avoids I/O contention and reduces time to complete, especially for smaller instances, larger databases, and so on.

For example, we recommend scheduling a backup of your Production database followed up by the Staging database when your stores encounter lower visits.
