---
title: L2 Cache Configuration for Performance Optimization
description: Learn how to configure L2 cache in Adobe Commerce to reduce network traffic and improve performance. Discover legacy and Symfony implementation options.
feature: Configuration, Cache
exl-id: 0504c6fd-188e-46eb-be8e-968238571f4e
badgePaas: label="On Premises" type="Informative" url="https://experienceleague.adobe.com/en/docs/commerce/user-guides/product-solutions" tooltip="Applies to Adobe Commerce on Premises projects only."
TQID: 'https://experienceleague.adobe.com/7vswBqyn9UZLmaeirgPRZ4xEQH5F66XUEtY5hPkz9NY'
product_v2:
  - id: b974b164-8a4e-43b8-a9e2-8e67ec131677
    internal-label: Commerce on Prem
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: b5f00040-57a0-4a6d-a39e-383b1936c2c9
    internal-label: Compliance
  - id: dac87252-6066-4d6e-a9d2-f6d84c323de7
    internal-label: Configuration
  - id: e8818fe6-9c8b-4bc0-9ef8-377a10b7bc75
    internal-label: Architecture
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
  - id: cdd65e7e-8839-44a2-bc21-0e03623b5dd1
    internal-label: Optimization
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
| [Legacy (`RemoteSynchronizedCache`)](#legacy-l2-cache-configuration-remotesynchronizedcache) | <2.4.9 | Zend-based two-level cache with `Cm_Cache_Backend_File` for local storage |
| [Modern (`symfony_l2`)](#modern-symfony-l2-cache-implementation) | >=2.4.9+ | Symfony Cache-based L2 with PSR-6 compliance and enhanced performance. Supports Valkey only. |

## Legacy L2 cache configuration (RemoteSynchronizedCache)

>[!NOTE]
>
>The Legacy L2 cache configuration instructions apply to older versions of Adobe Commerce. If you are on Adobe Commerce versions 2.4.9 or later, use Valkey with [Symfony 2 for L2 cache](#modern-symfony-l2-cache-implementation).

Cache configuration instructions depend on your deployment type:

- **For Adobe Commerce on Cloud**, configure L2 cache by setting the [`REDIS_BACKEND`](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/configure/env/stage/variables-deploy.html#redis_backend) or [`VALKEY_BACKEND`](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/configure/env/stage/variables-deploy#valkey_backend) deploy variable in `.magento.env.yaml`. See [Configure L2 cache](../../implementation-playbook/best-practices/planning/redis-valkey-service-configuration.md#configure-l2-cache) for configuration examples.

- **For Adobe Commerce on-premises versions that support Redis**, use the following example to modify or replace the existing cache section in the `app/etc/env.php` file.

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
]
```

Where:

- `backend` is the L2 cache implementation.
- `backend_options` is the L2 cache configuration.
  - `remote_backend` is the remote cache implementation: Redis or MySQL.
  - `remote_backend_options` is the remote cache configuration.
  - `local_backend` is the local cache implementation: `Cm_Cache_Backend_File`
  - `local_backend_options` is the local cache configuration.
  - `cache_dir` is a file cache-specific option for the directory where the local cache is stored.

For Adobe Commerce Adobe recommends using Redis for remote caching (`\Magento\Framework\Cache\Backend\Redis`) and `Cm_Cache_Backend_File` for the local caching of data in shared memory, using: `'local_backend_options' => ['cache_dir' => '/dev/shm/']`

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

In Commerce versions 2.4.9+, use the Symfony Cache-based L2 cache implementation (`symfony_l2` backend) instead of the legacy L2 cache. The Symfony L2 cache provides a modern, PSR-6 compliant caching implementation with significant performance improvements over the traditional `RemoteSynchronizedCache`.

>[!NOTE]
>
>For Adobe Commerce on Cloud, the ECE Tools package (`ece-tools`) manages this configuration automatically. Do not edit `app/etc/env.php` directly—deployment overwrites manual changes. For cloud configuration, see [Configure Symfony L2 cache](../../implementation-playbook/best-practices/planning/redis-valkey-service-configuration.md#configure-symfony-l2-cache) instead.

>[!IMPORTANT]
>
>{{redis-cache-support}}
>
>Because `symfony_l2` is available only in Adobe Commerce 2.4.9 and later, configure it with Valkey as the remote backend. Redis is not an officially supported remote backend for `symfony_l2`. See [System Requirements](../../installation/system-requirements.md) for supported cache services by release.

### Benefits of Symfony L2 cache

- **Modern Architecture**: Built on Symfony Cache components (PSR-6 compliant)
- **Better Performance**: Native support for Igbinary serialization, gzip compression, and Lua scripts
- **Persistent Connections**: Reduces Valkey connection overhead with connection pooling
- **Preload Keys**: Supports cache key preloading for critical data
- **Stale Cache Support**: Full compatibility with the `use_stale_cache` option
- **Simplified Configuration**: Cleaner backend type names (`valkey`, `file`)

### Configuration example with Symfony L2 cache

Use the simplified `symfony_l2` backend type for L2 cache:

```php
'cache' => [
    'frontend' => [
        'default' => [
            'backend' => 'symfony_l2',
            'backend_options' => [
                // L2 (Remote): Valkey with Symfony Cache
                'remote_backend' => 'valkey',
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
                'remote_backend' => 'valkey',
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
                'remote_backend' => 'valkey',
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
| `remote_backend` | string | `'valkey'` | Remote backend type: `valkey` or `file`. Use `valkey` for L2 cache. |
| `remote_backend_options` | array | `[]` | Remote backend configuration (see the Valkey documentation) |
| `local_backend` | string | `'file'` | Local backend type: `file` or `apcu`                              |
| `local_backend_options` | array | `[]` | Local backend configuration                                       |
| `cleanup_percentage` | integer | `95` | L1 cache cleanup threshold (1-100)                                |
| `use_stale_cache` | boolean | `false` | Enable stale cache for high availability                          |

>[!NOTE]
>
>The `remote_backend` option also accepts a value of `redis`. However, Redis is not an officially supported cache service for Adobe Commerce 2.4.9 and later. Adobe recommends configuring `symfony_l2` with `valkey` only. See [System Requirements](../../installation/system-requirements.md) for supported cache services by release.

### Cache tag storage improvements

>[!NOTE]
>
>These improvements apply to Adobe Commerce 2.4.9 deployments using `symfony_l2` and are available with patch ACP2E-5132. See [Cloud Patches for Commerce](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/release-notes/cloud-patches#latest) for the latest patch release notes.

#### Optimized Symfony L2 cache tag storage

Optimized Symfony L2 cache behavior for Valkey-backed deployments by eliminating redundant filesystem tag index writes. Cache tags are now stored exclusively in Valkey, aligning Symfony L2 cache behavior with the legacy cache implementation. This reduces unnecessary disk I/O, improves cache write performance, and prevents growth of the `var/cache/symfony/tags/` directory.

#### Improved file-based cache behavior

For deployments using the file-based cache (without Valkey), the local tag index continues to be maintained to support cache invalidation. The tag index is now written to the configured `cache_dir` instead of the previously hardcoded `var/cache` location, ensuring consistent cache directory usage and improved support for custom cache configurations.

#### Impact

- Eliminates redundant filesystem tag index writes for Valkey-backed Symfony L2 cache deployments.
- Reduces disk I/O and improves cache write performance.
- Prevents unnecessary growth of the `var/cache/symfony/tags/` directory.
- Ensures file-based cache deployments consistently use the configured `cache_dir` while preserving cache invalidation behavior.

For detailed configuration options, see:
- [Valkey cache configuration with Symfony Cache](valkey-pg-cache.md)
