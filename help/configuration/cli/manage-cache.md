---
title: Manage the cache
description: Manage cache types and view cache status from the command line using the Commerce CLI
exl-id: bbd76c00-727b-412e-a8e5-1e013a83a29a
---
# Manage the cache

{{file-system-owner}}

## Cache types

You can use the Adobe Commerce cache management system to improve the performance of your site. This topic explains how System administrators or developers with access to the Commerce application server can manage caches from the command line.

>[!NOTE]
>
>
>Commece site administrators can manage the cache from the Admin using the Cache Management System tool. See [Cache Management](https://experienceleague.adobe.com/en/docs/commerce-admin/systems/tools/cache-management) in the _Admin Systems Guide_.


## View the cache status

From the command line of the Commerce application server, view the status of the cache using the `cache:status` Commerce CLI command.

```bash
   bin/magento cache:status
```

<!-- where `--bootstrap=` is a URL-encoded associative array of Commerce [application bootstrap parameters](../bootstrap/set-parameters.md) and values. -->

A sample follows:

```
Current status:
                        config: 1
                        layout: 1
                    block_html: 1
                   collections: 1
                    reflection: 1
                        db_ddl: 1
               compiled_config: 1
             webhooks_response: 1
                           eav: 1
         customer_notification: 1
 graphql_query_resolver_result: 1
            config_integration: 1
        config_integration_api: 1
                  admin_ui_sdk: 1
                     full_page: 1
                   target_rule: 1
             config_webservice: 1
                     translate: 1
```

>[!TIP]
>
>For a detailed description of the default cache types supported by Adobe Commerce, see [Caches](https://experienceleague.adobe.com/en/docs/commerce-admin/systems/tools/cache-management#caches) in the _Admin Systems Guide_.


## Enable or disable cache types

This command enables you to enable or disable all cache types or only the ones you specify. Disabling cache types is useful during development because you see the results of your changes without having to flush the cache; however, disabling cache types has an adverse effect on performance.

>[!INFO]
>
>Starting in version 2.2, you can only enable or disable cache types using the command line while running Commerce in production mode. If running Commerce in developer mode, you can enable or disable cache types using the command line or manually. Before doing so, you must manually make `<magento_root>/app/etc/env.php` writeable by the [file system owner](../../installation/prerequisites/file-system/overview.md).

You can clean (also referred to as _flush_ or _refresh_) cache types using either the command line or the Admin.

Command options:

```bash
bin/magento cache:enable [type] ... [type]
```

```bash
bin/magento cache:disable [type] ... [type]
```

Where omitting `[type]` enables or disables all cache types at the same time. The `type` option is a space-separated list of cache types.

<!-- `--bootstrap=` is a URL-encoded associative array of Commerce [application bootstrap parameters](../bootstrap/set-parameters.md#bootstrap-parameters) and values. -->

To list cache types and their status:

```bash
bin/magento cache:status
```

For example, to disable the full page cache and the DDL cache:

```bash
bin/magento cache:disable db_ddl full_page
```

Sample result:

```
   Changed cache status:
       db_ddl: 1 -> 0
    full_page: 1 -> 0
```

>[!INFO]
>
>Enabling a cache type automatically clears that cache type.

>[!INFO]
>
>As of version 2.3.4, Commerce caches all system EAV attributes as they are retrieved. Caching EAV attributes in this manner improves performance, because it decreases the amount of insert/select requests to the DB. However, it increases cache network size as well. Developers can cache custom EAV attributes by running the `bin/magento config:set dev/caching/cache_user_defined_attributes 1` command. This can also be done from the Admin while in [Developer mode](../bootstrap/application-modes.md) by setting **Stores** > Settings **Configuration** > **Advanced** > **Developer** > **Caching Settings** > **Cache User Defined Attributes** to **Yes**.

## Clean and flush cache types

>[!NOTE]
>
>Multiple pages cache can be invalidated simultaneously and automatically **_without_** these entities editing. For example, when any product in the catalog is assigned to any category, or when any [!UICONTROL related product rule] is modified.

To purge out-of-date items from the cache, you can _clean_ or _flush_ cache types:

-  Cleaning a cache type deletes all items from enabled Commerce cache types only. In other words, this option does not affect other processes or applications because it cleans only the cache that Commerce uses.

   Disabled cache types are not cleaned.

   >[!TIP]
   >
   >Always clean the cache after upgrading versions of Adobe Commerce, upgrading from Magento Open Source to Adobe Commerce, or installing B2B for Adobe Commerce or any module.

-  Flushing a cache type purges the cache storage, which might affect other processes applications that are using the same storage.

Flush cache types if you have already tried cleaning the cache and you are still having issues that you cannot isolate.

Command usage:

```bash
   bin/magento cache:clean [type] ... [type]
```

```bash
   bin/magento cache:flush [type] ... [type]
```

Where `[type]` is a space-separated list of cache types. Omitting `[type]` cleans or flushes all cache types at the same time. For example, to flush all cache types, enter

```bash
   bin/magento cache:flush
```

Sample result:

```
   Flushed cache types:
   config
   layout
   block_html
   collections
   reflection
   db_ddl
   compiled_config
   eav
   customer_notification
   config_integration
   config_integration_api
   full_page
   graphql_query_resolver_results
   config_webservice
   translate
```

>[!TIP]
>
>You can also clean and flush cache types in the Admin. Go to **System** > **Tools** > **Cache Management**. **Flush Cache Storage** is equivalent to `bin/magento cache:flush`. **Flush Magento Cache** is equivalent to `bin/magento cache:clean`.
