---
title: L2 Cache Configuration for Performance Optimization
description: Learn how to configure L2 cache in Adobe Commerce to reduce network traffic and improve performance. Discover legacy and Symfony implementation options.
feature: Configuration, Cache
exl-id: 0504c6fd-188e-46eb-be8e-968238571f4e
---
# L2 cache configuration for performance optimization

L2 (two-level) caching reduces network traffic between the remote cache storage (Redis or Valkey) and the Commerce application by adding a local cache layer on each web node. A standard Commerce instance transfers around 300 KB per request, and traffic can quickly grow to over 1000 requests in some situations.

With L2 caching, each web node stores frequently accessed data locally and uses the remote cache for two purposes:

- Checking the cache data version to ensure the latest cache is stored locally
- Transferring updated cache data from the remote store to the local machine

Commerce stores the hashed data version in the remote cache, with the suffix `:hash` appended to the regular key. When the local cache is outdated, the data is fetched from the remote machine through a cache adapter.

There are two L2 cache implementations available:

| Implementation | Version | Description |
| -------------- | ------- | ----------- |
| [Legacy (`RemoteSynchronizedCache`)](#legacy-l2-cache-configuration-remotesynchronizedcache) | 2.4.x | Zend-based two-level cache with `Cm_Cache_Backend_File` for local storage |
| [Modern (`symfony_l2`)](#modern-symfony-l2-cache-implementation) | 2.4.9+ | Symfony Cache-based L2 with PSR-6 compliance and enhanced performance |

>[!INFO]
>
>For Adobe Commerce on cloud infrastructure, you can use [deploy variables](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/configure/env/stage/variables-deploy.html#redis_backend) for L2 cache configuration.

## Legacy L2 cache configuration (RemoteSynchronizedCache)

Use the following example to modify or replace the existing cache section in the `app/etc/env.php` file.

```php
'cache' => [
    'frontend' => [
        'default' => [
            'backend' => '\\Magento\\Framework\\Cache\\Backend\\RemoteSynchronizedCache',
            'backend_options' => [
                'remote_backend' => '\\Magento\\Framework\\Cache\\Backend\\Redis',
                'remote_backend_options' => [
                    'persistent' => 0,
                    'server' => 'localhost',
                    'database' => '0',
                    'port' => '6379',
                    'password' => '',
                    'compress_data' => '1',
                ],
                'local_backend' => 'Cm_Cache_Backend_File',
                'local_backend_options' => [
                    'cache_dir' => '/dev/shm/'
                ]
            ],
            'frontend_options' => [
                'write_control' => false,
            ],
        ]
    ],
    'type' => [
        'default' => ['frontend' => 'default'],
    ],
],
```

Where:

- `backend` is the L2 cache implementation.
- `backend_options` is the L2 cache configuration.
  - `remote_backend` is the remote cache implementation: Redis or MySQL.
  - `remote_backend_options` is the remote cache configuration.
  - `local_backend` is the local cache implementation: `Cm_Cache_Backend_File`
  - `local_backend_options` is the local cache configuration.
  - `cache_dir` is a file cache-specific option for the directory where the local cache is stored.

Adobe recommends using Redis for remote caching (`\Magento\Framework\Cache\Backend\Redis`) and `Cm_Cache_Backend_File` for the local caching of data in shared memory, using: `'local_backend_options' => ['cache_dir' => '/dev/shm/']`

Adobe recommends the use of the [`cache preload`](redis-pg-cache.md#redis-preload-feature) feature, as it drastically decreases the pressure on Redis. Do not forget to add the suffix ':hash' for preload keys.

## Stale cache options

Starting with Commerce 2.4, the `use_stale_cache` option can improve performance in specific cases by serving previously cached data while new cache data is generated in a parallel process.

Generally, the trade-off with lock waiting is acceptable from a performance perspective. However, as the number of blocks or cache entries grows, lock waits take more time. In some scenarios, the wait can be up to **the number of keys** x **lookup timeout** for the process. In rare cases, a merchant can have hundreds of keys in the `Block/Config` cache, so even a small lookup timeout for a lock can cost seconds.

>[!IMPORTANT]
>
>Stale cache only works with L2 cache. To enable it, add `'use_stale_cache' => true` to the top-level configuration of the L2 cache frontend.

Adobe recommends enabling the `use_stale_cache` option only for cache types that benefit from it the most, including:

- `block_html`
- `config_integration_api`
- `config_integration`
- `full_page`
- `layout`
- `reflection`
- `translate`

Adobe does not recommend enabling the `use_stale_cache` option for the `default` cache type.

The following code shows an example configuration:

```php
'cache' => [
    'frontend' => [
        'default' => [
            'backend' => '\\Magento\\Framework\\Cache\\Backend\\RemoteSynchronizedCache',
            'backend_options' => [
                'remote_backend' => '\\Magento\\Framework\\Cache\\Backend\\Redis',
                'remote_backend_options' => [
                    'persistent' => 0,
                    'server' => 'localhost',
                    'database' => '0',
                    'port' => '6379',
                    'password' => '',
                    'compress_data' => '1',
                ],
                'local_backend' => 'Cm_Cache_Backend_File',
                'local_backend_options' => [
                    'cache_dir' => '/dev/shm/'
                ]
            ],
            'frontend_options' => [
                'write_control' => false,
            ],
        ],
         'stale_cache_enabled' => [
            'backend' => '\\Magento\\Framework\\Cache\\Backend\\RemoteSynchronizedCache',
            'backend_options' => [
                'remote_backend' => '\\Magento\\Framework\\Cache\\Backend\\Redis',
                'remote_backend_options' => [
                    'persistent' => 0,
                    'server' => 'localhost',
                    'database' => '0',
                    'port' => '6379',
                    'password' => '',
                    'compress_data' => '1',
                ],
                'local_backend' => 'Cm_Cache_Backend_File',
                'local_backend_options' => [
                    'cache_dir' => '/dev/shm/'
                ],
                'use_stale_cache' => true,
            ],
            'frontend_options' => [
                'write_control' => false,
            ],
        ]
    ],
    'type' => [
        'default' => ['frontend' => 'default'],
        'layout' => ['frontend' => 'stale_cache_enabled'],
        'block_html' => ['frontend' => 'stale_cache_enabled'],
        'reflection' => ['frontend' => 'stale_cache_enabled'],
        'config_integration' => ['frontend' => 'stale_cache_enabled'],
        'config_integration_api' => ['frontend' => 'stale_cache_enabled'],
        'full_page' => ['frontend' => 'stale_cache_enabled'],
        'translate' => ['frontend' => 'stale_cache_enabled']
    ],
],
```

## Modern Symfony L2 cache implementation

[!BADGE 2.4.9-beta]{type=Negative tooltip="Available in 2.4.9-beta only."}

Starting with Commerce 2.4.9, you can use the Symfony Cache-based L2 cache implementation (`symfony_l2` backend) which provides a modern, PSR-6 compliant caching implementation with significant performance improvements over the traditional `RemoteSynchronizedCache`.

### Benefits of Symfony L2 cache

- **Modern Architecture**: Built on Symfony Cache components (PSR-6 compliant)
- **Better Performance**: Native support for Igbinary serialization, gzip compression, and Lua scripts
- **Persistent Connections**: Reduces Redis or Valkey connection overhead with connection pooling
- **Preload Keys**: Supports cache key preloading for critical data
- **Stale Cache Support**: Full compatibility with the `use_stale_cache` option
- **Simplified Configuration**: Cleaner backend type names (`redis`, `valkey`, `file`)

### Configuration example with Symfony L2 cache

Use the simplified `symfony_l2` backend type for L2 cache:

```php
'cache' => [
    'frontend' => [
        'default' => [
            'backend' => 'symfony_l2',
            'backend_options' => [
                // L2 (Remote): Redis with Symfony Cache
                'remote_backend' => 'redis',
                'remote_backend_options' => [
                    'server' => 'localhost',
                    'database' => '0',
                    'port' => '6379',
                    'password' => '',
                    'serializer' => 'igbinary',
                    'compression_lib' => 'gzip',
                    'persistent_id' => 'magento_l2_default',
                    'timeout' => '2.5',
                    'read_timeout' => '2.0',
                    'use_lua' => '1',
                    'preload_keys' => [
                        'prefix_EAV_ENTITY_TYPES:hash',
                        'prefix_GLOBAL_PLUGIN_LIST:hash',
                        'prefix_DB_IS_UP_TO_DATE:hash',
                        'prefix_SYSTEM_DEFAULT:hash',
                    ],
                ],
                // L1 (Local): File cache
                'local_backend' => 'file',
                'local_backend_options' => [
                    'cache_dir' => '/dev/shm/magento_l1'
                ],
                'cleanup_percentage' => 90,
            ],
        ]
    ],
    'type' => [
        'default' => ['frontend' => 'default'],
    ],
],
```

### Symfony L2 cache with stale cache

Configure separate frontends for stale cache support:

```php
'cache' => [
    'frontend' => [
        // Default frontend: NO stale cache
        'default' => [
            'backend' => 'symfony_l2',
            'backend_options' => [
                'remote_backend' => 'redis',
                'remote_backend_options' => [
                    'server' => 'localhost',
                    'database' => '0',
                    'port' => '6379',
                    'serializer' => 'igbinary',
                    'compression_lib' => 'gzip',
                    'persistent_id' => 'magento_l2_default',
                ],
                'local_backend' => 'file',
                'local_backend_options' => [
                    'cache_dir' => '/dev/shm/magento_l1'
                ],
            ],
        ],
        // Stale cache enabled frontend
        'stale_cache_enabled' => [
            'backend' => 'symfony_l2',
            'backend_options' => [
                'remote_backend' => 'redis',
                'remote_backend_options' => [
                    'server' => 'localhost',
                    'database' => '0',
                    'port' => '6379',
                    'serializer' => 'igbinary',
                    'compression_lib' => 'gzip',
                    'persistent_id' => 'magento_l2_stale',
                ],
                'local_backend' => 'file',
                'local_backend_options' => [
                    'cache_dir' => '/dev/shm/magento_l1_stale'
                ],
                'use_stale_cache' => true,
            ],
        ]
    ],
    'type' => [
        'default' => ['frontend' => 'default'],
        'layout' => ['frontend' => 'stale_cache_enabled'],
        'block_html' => ['frontend' => 'stale_cache_enabled'],
        'reflection' => ['frontend' => 'stale_cache_enabled'],
        'config_integration' => ['frontend' => 'stale_cache_enabled'],
        'config_integration_api' => ['frontend' => 'stale_cache_enabled'],
        'full_page' => ['frontend' => 'stale_cache_enabled'],
        'translate' => ['frontend' => 'stale_cache_enabled'],
    ],
],
```

### Backend options for Symfony L2 cache

| Option | Type | Default | Description                                                       |
|--------|------|---------|-------------------------------------------------------------------|
| `remote_backend` | string | `'redis'` | Remote backend type: `redis`, `valkey`, or `file`                 |
| `remote_backend_options` | array | `[]` | Remote backend configuration (see the Redis/Valkey documentation) |
| `local_backend` | string | `'file'` | Local backend type: `file` or `apcu`                              |
| `local_backend_options` | array | `[]` | Local backend configuration                                       |
| `cleanup_percentage` | integer | `90` | L1 cache cleanup threshold (1-100)                                |
| `use_stale_cache` | boolean | `false` | Enable stale cache for high availability                          |

### Valkey support

The `symfony_l2` backend also supports Valkey as the remote backend:

```php
'backend_options' => [
    'remote_backend' => 'valkey',  // Use Valkey instead of Redis
    'remote_backend_options' => [
        'server' => 'localhost',
        'database' => '0',
        'port' => '6379',
        'serializer' => 'igbinary',
        'compression_lib' => 'gzip',
    ],
    // ... rest of configuration
]
```

For detailed configuration options, see:
- [Redis cache configuration with Symfony Cache](redis-pg-cache.md)
- [Valkey cache configuration with Symfony Cache](valkey-pg-cache.md)
