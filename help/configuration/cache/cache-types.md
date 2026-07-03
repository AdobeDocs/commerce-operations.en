---
title: Configure Cache Frontends and Types
description: Learn how to define cache frontends and associate them with cache types in Adobe Commerce. Discover configuration syntax for env.php and di.xml.
feature: Configuration, Cache
exl-id: 67d4ba06-b48b-4e1a-a7a8-9830490dfe3d
product_v2:
  - id: cdf0c6dd-1717-4e20-9530-a24eee57088b
    internal-label: Commerce on Cloud
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
  - id: b974b164-8a4e-43b8-a9e2-8e67ec131677
    internal-label: Commerce on Prem
feature_v2:
  - id: dac87252-6066-4d6e-a9d2-f6d84c323de7
    internal-label: Configuration
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: b5a62a22-46f7-4f0d-b151-3fc640bef588
    internal-label: Intermediate
topic_v2:
  - id: b5ce8718-c3af-4fdb-a1a9-fca32f83a87c
    internal-label: Implementation
---
# Configure cache frontends and types

A cache frontend is an interface between Commerce cache types and the cache storage backend. You can define multiple frontends, each with different backend settings, and then assign specific [cache types](../cli/manage-cache.md#clean-and-flush-cache-types) to each frontend.

Use this relationship to decide where each cache type stores data:

`cache type` -> `cache frontend` -> `cache backend`

This is useful when you want to use different cache backends or configurations for different types of cached data. For example, you might assign the `full_page` cache type to a `page_cache` frontend that uses a dedicated Valkey database, while other cache types use the `default` frontend.

{{cloud-cache-config}}

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
>Adobe Commerce 2.4.9 and later use simplified backend type names, such as `valkey` or `file`, with the Symfony Cache implementation. See [Cache backend options](cache-options.md) for backend examples and version-specific guidance.


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
>- **Modern (Symfony Cache)**: `'backend' => 'valkey'` for Commerce versions 2.4.9+ and current patch releases for the 2.4.5 - 2.4.8 release lines where Valkey is the supported cache backend.
>
>The modern Symfony Cache implementation provides better performance through PSR-6 compliance, Igbinary serialization, gzip compression, Lua scripts, and persistent connections.

See the [Laminas documentation](https://docs.laminas.dev/) for Zend-based options. For Symfony Cache configuration, see the [Redis](redis-pg-cache.md) and [Valkey](valkey-pg-cache.md) articles in this documentation.
