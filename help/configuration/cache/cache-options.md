---
title: Cache Backend Options and Storage Reference
description: Learn about cache backend options in Adobe Commerce, including file system, Redis, Valkey, and database storage. Discover legacy and modern approaches.
feature: Configuration, Cache
exl-id: e0330108-5c55-4a33-9f93-63fbb71af761
---
# Cache backend options and storage reference

The Commerce application uses a low-level cache frontend and backend to provide access to cache storage. Commerce supports several caching backends and strategies, each suited to different use cases. This page describes the available backends and how they differ.

>[!NOTE]
>
>For details about frontend cache configuration, see [Configure cache frontends](cache-types.md).

## Backend cache options

The following table summarizes the available backend caches:

| Backend | Description | Configuration guide |
| ------- | ----------- | ------------------- |
| File system | Default. Stores cache data in files under `var/cache/`. No configuration required. | N/A |
| [Redis](config-redis.md) | In-memory data store for high-performance caching. | [Use Redis for default cache](redis-pg-cache.md) |
| [Valkey](config-valkey.md) | Open-source, Redis-compatible alternative. | [Use Valkey for default cache](valkey-pg-cache.md) |
| [Database](https://developer.adobe.com/commerce/php/development/cache/partial/database-caching/) | Database-backed caching. | [Create custom cache engines](https://developer.adobe.com/commerce/php/development/cache/partial/database-caching/){target="_blank"} (Adobe developer documentation) |

>[!NOTE]
>
>[Varnish](config-varnish.md) handles full-page caching at the HTTP level and does not use the low-level cache backend.

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
| Redis | `redis` |
| Valkey | `valkey` |
| File system | `file` |

**Example configuration:**

```php?start_inline=1
'backend' => 'redis',
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
