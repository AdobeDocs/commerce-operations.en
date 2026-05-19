---
title: Configure Cache Frontends
description: Learn how to define cache frontends and associate them with cache types in Adobe Commerce. Discover configuration syntax for env.php and di.xml.
feature: Configuration, Cache
exl-id: 67d4ba06-b48b-4e1a-a7a8-9830490dfe3d
---
# Configure cache frontends

A cache frontend is an interface between Commerce and the cache storage backend. You can define multiple frontends, each with different backend settings, and then assign specific [cache types](../cli/manage-cache.md#clean-and-flush-cache-types) to each frontend.

This is useful when you want to use different cache backends or configurations for different types of cached data. For example, you might want `full_page` caching on a dedicated Redis database while using a separate database for `default` caching.

## Use the default frontend

Commerce provides a `default` cache frontend that works for all cache types. It extends [Zend_Cache_Core](https://framework.zend.com/manual/1.12/en/zend.cache.frontends.html) by implementing the [Magento\Framework\Cache\Core](https://github.com/magento/magento2/blob/2.4/lib/internal/Magento/Framework/Cache/Core.php) frontend cache.

In most cases, you do not need to customize the frontend. You only need to configure the backend. See [Cache backend options](cache-options.md).

## Define a custom cache frontend

The following steps walk through associating a cache frontend with a cache type.

### Step 1: Define a cache frontend and assign cache types

To define a custom cache frontend, add the configuration to `app/etc/env.php` (which overrides `di.xml`):

```php?start_inline=1
'cache' => [
    'frontend' => [
        '<unique frontend id>' => [
             <cache options>
        ],
    ],
    'type' => [
         <cache type 1> => [
             'frontend' => '<unique frontend id>'
        ],
         <cache type 2> => [
             'frontend' => '<unique frontend id>'
        ],
    ],
],
```

Where:

- `<unique frontend id>` -- A unique name to identify the frontend (for example, `default`, `page_cache`, `stale_cache_enabled`)
- `<cache options>` -- Backend type and options for this frontend (see [Cache options](cache-options.md))
- `<cache type>` -- A Commerce cache type to assign to this frontend (for example, `config`, `layout`, `block_html`, `full_page`)

>[!TIP]
>
>**Modern Symfony Cache implementation (2.4.9+):** Starting with Commerce 2.4.9, you can use simplified backend types like `redis`, `valkey`, or `file` with the modern Symfony Cache implementation. See [Use Redis for default cache](redis-pg-cache.md) and [Use Valkey for default cache](valkey-pg-cache.md) for details.

### Step 2: Configure frontend and backend options

You can specify frontend and backend cache configuration options in `env.php` or `di.xml`. This task is optional. If you do not specify options, Commerce uses the default frontend and backend settings.

`env.php` example:

```php?start_inline=1
'frontend' => <frontend_type>,
'frontend_options' => [
    <frontend_option> => <frontend_option_value>,
    ...
],
'backend' => <backend_type>,
'backend_options' => [
    <backend_option> => <backend_option_value>,
    ...
],
```

Where:

- `<frontend_type>` -- The low-level frontend cache type. Specify a class name compatible with `Zend\Cache\Core`.
  If omitted, [Magento\Framework\Cache\Core](https://github.com/magento/magento2/blob/2.4/lib/internal/Magento/Framework/Cache/Core.php) is used.

- `<frontend_option>`, `<frontend_option_value>` -- The name and value of options the Commerce framework passes as an associative array to the frontend cache on creation.

- `<backend_type>` -- The low-level backend cache type. You can specify:
    - **Modern Symfony Cache (2.4.9+, recommended)**: Simplified names like `redis`, `valkey`, or `file`
    - **Legacy (Zend-based)**: Full class name compatible with `Zend_Cache_Backend` that implements `Zend_Cache_Backend_Interface`

- `<backend_option>`, `<backend_option_value>` -- The name and value of options the Commerce framework passes as an associative array to the backend cache on creation.

>[!NOTE]
>
>**Legacy vs Modern implementation:**
>
>- **Legacy (Zend-based)**: `'backend' => 'Magento\\Framework\\Cache\\Backend\\Redis'`
>- **Modern (Symfony Cache)**: `'backend' => 'redis'` (recommended for Commerce 2.4.9+)
>
>The modern Symfony Cache implementation provides better performance through PSR-6 compliance, Igbinary serialization, gzip compression, Lua scripts, and persistent connections.

See the [Laminas documentation](https://docs.laminas.dev/) for Zend-based options, or the modern Symfony Cache guides for [Redis](redis-pg-cache.md) and [Valkey](valkey-pg-cache.md).
