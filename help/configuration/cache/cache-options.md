---
title: Cache Backend Options and Storage Reference
description: Learn about cache backend options in Adobe Commerce, including file system, Redis, Valkey, and database storage. Discover legacy and modern approaches.
feature: Configuration, Cache
exl-id: e0330108-5c55-4a33-9f93-63fbb71af761
badgePaas: label="On Premises" type="Informative" url="https://experienceleague.adobe.com/en/docs/commerce/user-guides/product-solutions" tooltip="Applies to Adobe Commerce on-premises projects only."
autotag-review: '2026-06-22T18:37:32.504Z'
TQID: 'https://experienceleague.adobe.com/m7eUBNrt8UF43iJq9Tpl0Y1WcmR-dlt7Z4PoHvXVNnA'
product_v2:
  - id: b974b164-8a4e-43b8-a9e2-8e67ec131677
    internal-label: Commerce on Prem
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
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
# Cache backend options and storage reference

{{cloud-cache-config}}

The Commerce application uses a low-level cache frontend and backend to provide access to cache storage. Commerce supports several caching backends and strategies, each suited to different use cases. This page describes the available backends and how they differ.

>[!NOTE]
>
>[Varnish](config-varnish.md) handles full-page caching at the HTTP level and does not use the low-level cache backend.

## Backend cache options

The following table summarizes the available backend caches:

| Backend | Description | Configuration guide |
| ------- | ----------- | ------------------- |
| File system | Default. Stores cache data in files under `var/cache/`. No configuration required. | N/A |
| [Redis](config-redis.md) | In-memory data store for high-performance caching. | [Use Redis for default cache](redis-pg-cache.md)|
| [Valkey](config-valkey.md) | Open-source, Redis-compatible alternative. | [Use Valkey for default cache](valkey-pg-cache.md) |
| [Database](https://developer.adobe.com/commerce/php/development/cache/partial/database-caching/) | Database-backed caching. | [Create custom cache engines](https://developer.adobe.com/commerce/php/development/cache/partial/database-caching/){target="_blank"} (Adobe developer documentation) |

>[!IMPORTANT]
>
>{{redis-cache-support}}

## Implementation approaches

Commerce supports two backend implementation approaches. The approach you choose depends on your Commerce version:

>[!BEGINTABS]

>[!TAB Legacy Zend-based cache (2.4.8 and earlier)]

Uses full class names for the backend configuration:

| Backend | Class name |
| ------- | ---------- |
| Redis | `Magento\Framework\Cache\Backend\Redis` |
| Valkey | `Magento\Framework\Cache\Backend\Valkey` |

These are compatible with the `Zend_Cache_Backend` interface.

**Example configuration:**

```php?start_inline=1
'backend' => 'Magento\\Framework\\Cache\\Backend\\Redis',
'backend_options' => [
    'server' => '127.0.0.1',
    'database' => '0',
    'port' => '6379',
],
```

>[!TAB Modern Symfony cache (2.4.9 and later, recommended)]

>[!TIP]
>
>The modern Symfony Cache implementation provides better performance through PSR-6 compliance, Igbinary serialization, gzip compression, Lua scripts, and persistent connections.

Uses simplified backend type names:

| Backend | Type name |
| ------- | --------- |
| Valkey | `valkey` |
| File system | `file` |

>[!NOTE]
>
>The `redis` type name is also accepted, but Redis is not an officially supported cache service for Adobe Commerce 2.4.9 and later. Use `valkey` instead.

**Example configuration:**

```php?start_inline=1
'backend' => 'valkey',
'backend_options' => [
    'server' => '127.0.0.1',
    'database' => '0',
    'port' => '6379',
    'serializer' => 'igbinary',
    'compression_lib' => 'gzip',
],
```

>[!ENDTABS]

For complete configuration options, see:

- [Use Redis for default cache](redis-pg-cache.md)
- [Use Valkey for default cache](valkey-pg-cache.md)
- [L2 cache configuration](level-two-cache.md)

See the [Laminas documentation](https://docs.laminas.dev/) for legacy Zend-based options.
