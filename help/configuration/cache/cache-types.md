---
title: Configure Cache Frontends and Types
description: Learn how to define cache frontends and associate them with cache types in Adobe Commerce. Discover configuration syntax for env.php.
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

A cache frontend connects Commerce cache types to cache storage. You can define multiple frontends and assign specific cache types to each frontend.

>[!BEGINSHADEBOX]

Use the following relationship to determine where a cache type stores its data:

cache type → cache frontend → cache backend

>[!ENDSHADEBOX]

For an overview of the Commerce caching architecture, see [Caching overview and configuration options](caching-overview.md).

>[!NOTE]
>
>For Adobe Commerce on cloud infrastructure, use the [Cloud deployment configuration](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/configure/env/configure-env-yaml) described in the Cloud guide. Do not edit `app/etc/env.php` directly. Deployment tooling generates this file and can overwrite manual changes.

## Use the default frontend

Commerce provides a default frontend that can be used by all cache types.

In most cases, you do not need to define a custom frontend. If all cache types can use the same backend and backend options, use the default frontend and configure its backend. See [Cache backend options](cache-options.md) for backend-specific configuration.

For Adobe Commerce versions before 2.4.9, the default frontend uses the legacy Zend-based cache implementation. The `Magento\Framework\Cache\Core` frontend extends `Zend_Cache_Core`. Adobe Commerce 2.4.9 and later use the modern Symfony implementation. See [Cache backend options](cache-options.md) for version-specific guidance.

## Define a custom frontend

Use a custom cache frontend when one or more cache types need backend settings that differ from those of the default frontend.

For on-premises deployments, define the frontend in `app/etc/env.php`. Then assign one or more cache types to it:

```php?start_inline=1
'cache' => [
    'frontend' => [
        '<frontend-id>' => [
            'backend' => '<backend-type>',
            'backend_options' => [
                // Backend-specific options
            ],
        ],
    ],
    'type' => [
        '<cache-type-id>' => [
            'frontend' => '<frontend-id>',
        ],
    ],
],
```

Where:

- `<frontend-id>` is the unique identifier for the frontend, such as `default` or `page_cache`.
- `<backend-type>` identifies the backend used by the frontend. The supported value depends on the Adobe Commerce release and selected backend.
- `backend_options` contains options for the selected backend.
- `<cache-type-id>` is a Commerce cache type, such as `config`, `layout`, `block_html`, or `full_page`.


For backend types, supported options, and release-specific configuration examples, see [Cache backend options](cache-options.md).

## Assign a cache type to a frontend

The `type` configuration maps a cache type to a frontend:

```php?start_inline=1
'type' => [
    'full_page' => [
        'frontend' => 'page_cache',
    ],
],
```

In this example, Commerce assigns the `full_page` cache type to the `page_cache` frontend. The frontend determines which backend configuration stores that cache type.

>[!NOTE]
>
>The `full_page` key represents a Commerce application cache type. HTTP full-page caching through Varnish or Fastly is a separate caching layer. See [Caching overview and configuration options](caching-overview.md).

>[!MORELIKETHIS]
>
>- [L2 cache configuration for performance optimization](level-two-cache.md)
>- [Manage the cache](../cli/manage-cache.md)
