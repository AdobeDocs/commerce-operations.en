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

There are two L2 cache implementations available in Adobe Commerce:

| Implementation | Version | Description |
| -------------- | ------- | ----------- |
| [Legacy (`RemoteSynchronizedCache`)](#legacy-l2-cache-configuration-remotesynchronizedcache) | <2.4.9 | Zend-based two-level cache with `Cm_Cache_Backend_File` for local storage |
| [Modern (`symfony_l2`)](#modern-symfony-l2-cache-implementation) | 2.4.9+ | Symfony Cache-based L2 with PSR-6 compliance and enhanced performance. Supports Valkey. |

Symfony L2 cache is the recommended implementation for Adobe Commerce 2.4.9 and later releases. It provides a modern, PSR-6 compliant caching implementation with significant performance improvements over the traditional `RemoteSynchronizedCache`.

## Legacy L2 cache configuration (RemoteSynchronizedCache)

The Legacy L2 cache configuration instructions apply to older versions of Adobe Commerce. If you are on Adobe Commerce versions 2.4.9 or later, use Valkey with the [Modern Symfony L2 cache implementation](#modern-symfony-l2-cache-implementation).

>[!NOTE]
>
>This page covers on-premises configuration only. For Adobe Commerce on Cloud, see [Configure L2 cache](../../implementation-playbook/best-practices/planning/redis-valkey-service-configuration#configure-l2-cache.md).

For Adobe Commerce on-premises versions that support Redis, use the following example to modify or replace the existing cache section in the `app/etc/env.php` file.

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
  - `local_backend` is the local cache implementation: `Cm_Cache_Backend_File`.
  - `local_backend_options` is the local cache configuration.
  - `cache_dir` is a file cache-specific option for the directory where the local cache is stored.

For Adobe Commerce versions earlier than 2.4.9 that support Redis, Adobe recommends using Redis for remote caching (`\Magento\Framework\Cache\Backend\Redis`) and `Cm_Cache_Backend_File` for the local caching of data in shared memory, using: `'local_backend_options' => ['cache_dir' => '/dev/shm/']`.

Adobe recommends the use of the [`cache preload`](redis-pg-cache.md#redis-preload-feature) feature, as it drastically decreases the pressure on Redis. Do not forget to add the suffix `:hash` for preload keys.

## Stale cache options

Starting with Commerce 2.4, the `use_stale_cache` option can improve performance in specific cases by serving previously cached data while new cache data is generated in a parallel process. The recommended cache types and trade-offs described in this section apply to both the legacy `RemoteSynchronizedCache` and `symfony_l2` implementations. For a `symfony_l2` configuration example, see [Symfony L2 cache with stale cache](#symfony-l2-cache-with-stale-cache).

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

The following code shows an example configuration for the legacy `RemoteSynchronizedCache` backend. For a `symfony_l2` example, see [Symfony L2 cache with stale cache](#symfony-l2-cache-with-stale-cache).

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

>[!IMPORTANT]
>
>Redis is not supported as a remote cache backend starting with:
>
>- Adobe Commerce 2.4.9 and later
>- 2.4.8-p4 and later patches
>- 2.4.7-p9 and later patches
>- 2.4.6-p14 and later patches
>- 2.4.5-p16 and later patches
>
>If you're upgrading past these versions, set up Valkey and update your cache configuration to use `symfony_l2`. See [set up Valkey](config-valkey.md) and [System Requirements](../../installation/system-requirements.md).

### Benefits of Symfony L2 cache

- **Modern architecture:** built on Symfony Cache components (PSR-6 compliant)
- **Better performance:** native support for Igbinary serialization, gzip compression, and Lua scripts
- **Persistent connections:** reduces Valkey connection overhead with connection pooling
- **Preload keys:** supports cache key preloading for critical data
- **Stale cache support:** full compatibility with the `use_stale_cache` option
- **Simplified configuration:** cleaner backend type names (`valkey`, `file`)

### Migrating from RemoteSynchronizedCache to Symfony L2

If you are upgrading an on-premises installation from the legacy `RemoteSynchronizedCache` backend to `symfony_l2`, review the following before updating `app/etc/env.php`. Changing only the `backend` value is not sufficient. The configuration structure, key names, and some default behaviors differ.

- **The configuration structure changes.** `remote_backend`, `remote_backend_options`, and `local_backend` use different values under `symfony_l2`. For example, `remote_backend` becomes `'valkey'` instead of a fully qualified class name. Use the [configuration example](#configuration-example-with-symfony-l2-cache) below as your starting point rather than editing your existing legacy configuration in place.

- **`preload_keys` is not recommended with `symfony_l2`.** If your legacy configuration includes `preload_keys`, remove it as part of the migration. Preloading keys does not improve performance under `symfony_l2` and can increase load on Valkey by triggering additional, unnecessary key lookups.

- **Compression requires an explicit flag.** Setting `compression_lib` alone does not enable compression under `symfony_l2`. See [Backend options for Symfony L2 cache](#backend-options-for-symfony-l2-cache) for the required `compress_data` setting.

- **Stale cache is not enabled by default for manually configured on-premises deployments.** `use_stale_cache` defaults to `false` under `symfony_l2` (see the [backend options table](#backend-options-for-symfony-l2-cache)). If your legacy configuration used the `stale_cache_enabled` frontend, you must explicitly recreate it using the pattern in [Symfony L2 cache with stale cache](#symfony-l2-cache-with-stale-cache).

>[!NOTE]
>
>Adobe Commerce on Cloud environments that set the `VALKEY_BACKEND: symfony_l2` deploy variable have their full L2 configuration, including the `stale_cache_enabled` frontend, generated automatically by `ece-tools`. See [Configure Symfony L2 cache](../../implementation-playbook/best-practices/planning/redis-valkey-service-configuration#configure-symfony-l2-cache.md) for Cloud-specific behavior.

- **Redis is not a supported remote backend for `symfony_l2`.** Migrate to Valkey as part of this change. See [set up Valkey](config-valkey.md).

### Configuration example with Symfony L2 cache

>[!NOTE]
>
>This example is for on-premises `app/etc/env.php` configuration. For Adobe Commerce on Cloud, cache configuration is managed automatically by `ece-tools`. Instead of editing `env.php` directly, see [Configure Symfony L2 cache](../../implementation-playbook/best-practices/planning/redis-valkey-service-configuration#configure-symfony-l2-cache.md).

In the `app/etc/env.php` file, use the simplified `symfony_l2` backend type for L2 cache. This example does not include the `preload_keys` configuration, which is not recommended with `symfony_l2`. For details, see [Migrating from RemoteSynchronizedCache to Symfony L2](#migrating-from-remotesynchronizedcache-to-symfony-l2).

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
                    'compress_data' => '1',
                    'persistent_id' => 'magento_l2_default',
                    'timeout' => '2.5',
                    'read_timeout' => '2.0',
                    'use_lua' => '1',
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

See [Stale cache options](#stale-cache-options) for which cache types benefit from stale cache and why.

Use the following example to configure separate frontends for `symfony_l2` stale cache support:

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
                    'compress_data' => '1',
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
                    'compress_data' => '1',
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

| Option | Type | Default | Description |
| -------- | ------ | --------- | --------------------------------------------------------------------- |
| `remote_backend` | string | `'valkey'` | Remote backend type: `valkey` or `file`. Use `valkey` for L2 cache. |
| `remote_backend_options` | array | `[]` | Remote backend configuration (see the Valkey documentation) |
| `local_backend` | string | `'file'` | Local backend type: `file` or `apcu` |
| `local_backend_options` | array | `[]` | Local backend configuration |
| `cleanup_percentage` | integer | `95` | L1 cache cleanup threshold (1-100) |
| `use_stale_cache` | boolean | `false` | Enable stale cache for high availability |
| `compress_data` | boolean | `false` | Enables compression when combined with `compression_lib`. Setting `compression_lib` alone does not enable compression. |
| `persistent` | boolean | `true` | Controls persistent connections to the remote backend. Set to `false` (`'0'`) to match legacy Zend cache behavior, which defaults to non-persistent connections. |


>[!NOTE]
>
>- The `remote_backend` option also accepts a value of `redis`, but Redis is not officially supported (see the note above under [Modern Symfony L2 cache implementation](#modern-symfony-l2-cache-implementation)).
>
>- `frontend_options.write_control`, used in the legacy `RemoteSynchronizedCache` configuration, does not apply to `symfony_l2`.

### Enhanced Symfony L2 cache performance and reliability

>[!NOTE]
>
>These improvements apply to Adobe Commerce 2.4.9 deployments using `symfony_l2` and are available in patch ACP2E-5132. For Adobe Commerce on-premises, apply this patch using the Quality Patches Tool (QPT). For Adobe Commerce on Cloud, this patch is delivered automatically via [Cloud Patches for Commerce](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/release-notes/cloud-patches#latest).

The most recent updates improve Symfony L2 cache scalability, reduced unnecessary filesystem I/O, and enhanced cache consistency and reliability.

#### Optimized Symfony L2 cache tag storage

Optimized Symfony L2 cache behavior for Valkey-backed deployments by eliminating redundant filesystem tag index writes. Cache tags are now stored exclusively in Valkey, aligning Symfony L2 cache behavior with the legacy cache implementation. This reduces unnecessary disk I/O, improves cache write performance, and prevents growth of the `var/cache/symfony/tags/` directory.

#### Improved file-based cache behavior

For deployments using the file-based cache (without Valkey), the local tag index continues to be maintained to support cache invalidation. The tag index is now written to the configured `cache_dir` instead of the previously hardcoded `var/cache` location, ensuring consistent cache directory usage and improved support for custom cache configurations.

#### Stale tag membership fix after retagging

Retagging a cache entry could leave it associated with tags it no longer belonged to. Stale tag memberships are now cleared on retag, so cache entries are invalidated only by the tags currently assigned to them.

#### Redundant remote write fix for unchanged saves

Saving a cache entry with unchanged content still triggered a write to the remote (Valkey) backend. Saves are now skipped when the content is unchanged, reducing unnecessary remote writes.

#### L1 size-based eviction fix (cleanup_percentage)

The `cleanup_percentage` threshold used for L1 size-based eviction did not consistently trigger cleanup. L1 cache eviction now correctly honors the configured `cleanup_percentage`.

#### Regeneration lock for stale cache

When `use_stale_cache` is enabled and the remote copy of an entry is temporarily unavailable, only one process now acquires a short-lived lock to regenerate that entry. Other concurrent requests for the same entry continue to serve the existing local value instead of regenerating it themselves, reducing regeneration stampedes and redundant backend load.

#### Impact

- Eliminates redundant filesystem tag index writes for Valkey-backed Symfony L2 cache deployments, reducing disk I/O and preventing unnecessary growth of the `var/cache/symfony/tags/` directory.
- Ensures file-based cache deployments consistently use the configured `cache_dir` for the local tag index while preserving cache invalidation behavior.
- Prevents incorrect cache invalidation caused by stale tag memberships left behind after retagging.
- Reduces unnecessary remote writes for unchanged cache saves, lowering network and backend load.
- Ensures L1 cache eviction reliably triggers at the configured `cleanup_percentage` threshold.
- Reduces regeneration stampedes for `use_stale_cache` entries by electing a single regenerator per key instead of every concurrent request rebuilding it.

For detailed configuration options, see:

- [Valkey cache configuration with Symfony Cache](valkey-pg-cache.md)

>[!MORELIKETHIS]
>
>- [Caching overview and configuration options](caching-overview.md)
>- [Cache backend options and storage reference](cache-options.md)
>- [Configure cache frontends and types](cache-types.md)
>- [Configure Redis for default and page cache](redis-pg-cache.md)
