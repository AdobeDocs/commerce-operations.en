---
title: Cache clearing with Varnish
description: Learn how cache clearing works with Varnish web-caching accelerator for Adobe Commerce. Discover cache management and optimization techniques.
feature: Configuration, Cache
exl-id: 866da415-c428-4092-a045-c3079493cdc4
---
# Cache clearing with Varnish

This topic discusses the basics of using Varnish as a web-caching accelerator for Adobe Commerce.

## Varnish purging

According to [Varnish documentation](https://www.varnish-cache.org/docs/trunk/users-guide/purging.html), "A *purge* is what happens when you pick out an object from the cache and discard it along with its variants." A Varnish purge is similar to a cache clean command (or clicking **Flush Magento Cache** in the Admin).

In fact, when you clean, flush, or refresh the Commerce cache, Varnish purges as well.

After you have installed and configured Varnish to work with Commerce, the following actions can result in a Varnish purge:

- Maintaining a website.

   For example, anything you do in the Admin in:

  - **STORES** > **Settings** > **Configuration** > GENERAL > **General**
  - **STORES** > **Settings** > **Configuration** > GENERAL > **Currency Setup**
  - **STORES** > **Settings** > **Configuration** > GENERAL > **Store Email Addresses**

   When Commerce detects such a change, a message displays informing you to refresh the cache.

- Maintaining a store (for example, adding or editing categories, prices, products, and promotional pricing rules).

   Varnish is purged automatically when you perform any of these tasks.

- Maintaining source code.

   You should refresh the cache and also periodically delete everything in the `generated/code` and `generated/metadata` directories. For information on refreshing the cache, see the next section.

## Configure Commerce to purge Varnish

Commerce purges Varnish hosts after you configure Varnish hosts using the [`magento setup:config:set`](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/cli-reference/commerce-on-premises#setupconfigset) command.

You can use the optional parameter `--http-cache-hosts` parameter to specify a comma-separated list of Varnish hosts and listen ports. Configure all Varnish hosts, whether you have one or many. (Do not separate hosts with a space character.)

The parameter format must be `<hostname or ip>:<listen port>`, where you can omit `<listen port>` if it is port 80.

For example,

```bash
bin/magento setup:config:set --http-cache-hosts=192.0.2.100,192.0.2.155:6081
```

You can then purge Varnish hosts when you refresh the Commerce cache (also referred to as *cleaning* the cache) in the Admin or using the command line.

To refresh the cache using the Admin, click **[!UICONTROL SYSTEM]** > Tools > **Cache Management**, then click **Flush Magento Cache** at the top of the page. (You can also refresh individual cache types.)

To refresh the cache using the command line, you typically use the [`magento cache:clean <type>`](../cli/manage-cache.md#clean-and-flush-cache-types) command as the [file system owner](../../installation/prerequisites/file-system/overview.md).
