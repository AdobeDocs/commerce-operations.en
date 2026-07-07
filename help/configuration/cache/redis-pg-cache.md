---
title: Configure Redis for Default and Page Cache
description: Learn how to configure Redis as the default and page cache backend for Adobe Commerce. Discover CLI commands, env.php settings, and connection verification.
feature: Configuration, Cache
exl-id: 8c097cfc-85d0-4e96-b56e-284fde40d459
badgePaas: label="On Premises" type="Informative" url="https://experienceleague.adobe.com/en/docs/commerce/user-guides/product-solutions" tooltip="Applies to Adobe Commerce on-premises projects only."
autotag-review: '2026-06-22T21:55:53.227Z'
TQID: 'https://experienceleague.adobe.com/2KjWE19ud32PUdvJQWNWkK338ysaa5vt0mA4EyyP66I'
product_v2:
  - id: b974b164-8a4e-43b8-a9e2-8e67ec131677
    internal-label: Commerce on Prem
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: ba9e5be9-7de1-4f71-a5d2-baead0e425ee
    internal-label: Security
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
  - id: cdd65e7e-8839-44a2-bc21-0e03623b5dd1
    internal-label: Optimization
  - id: d095671a-1355-40aa-8b5f-06c33c68080b
    internal-label: Security
---
# Configure Redis for default and page cache

{{cloud-cache-config}}

Commerce provides command-line options to configure the Redis page and default caching. Although you can configure caching by editing the `<Commerce-install-dir>app/etc/env.php` file, using the command line is the recommended method, especially for initial configurations. The command line provides validation, ensuring the configuration is syntactically correct.

**Prerequisite:**

[Install Redis](config-redis.md#install-redis) before continuing.

>[!NOTE]
>
>For Commerce instances hosted on EC2, you can use AWS ElastiCache in place of a local Redis instance. See [Configure Elasticache for EC2 instances](redis-elasticache-for-ec2.md).

## Redis cache implementations

Adobe Commerce has used these Redis cache backend implementations:

- **Legacy Redis backend** (`Cm_Cache_Backend_Redis`) - Deprecated implementation used in older Redis configurations.
- **Redis backend** (`Magento\Framework\Cache\Backend\Redis`) - Backend used by the command-line configuration in this topic for default and page cache.
- **L2 cache backend** (`Magento\Framework\Cache\Backend\RemoteSynchronizedCache`) - Two-level cache implementation that uses Redis as the remote backend and local file cache storage to synchronize cache data across nodes. See [Two-level cache configuration](level-two-cache.md).

## Configure Redis default caching

Run the `setup:config:set` command and specify parameters specific to Redis default caching.

```shell
bin/magento setup:config:set --cache-backend=redis --cache-backend-redis-<parameter>=<value>...
```

Common parameters include:

- `--cache-backend=redis` enables the Redis default caching. If this feature has already been enabled, omit this parameter.

- `--cache-backend-redis-<parameter>=<value>` is a list of key-and-value pairs that configure the default caching:

| Command-line parameter | Value | Meaning | Default value |
| --- | --- | --- | --- |
| `cache-backend-redis-server` | server | Fully qualified hostname, IP address, or an absolute path to a UNIX socket. The default value of 127.0.0.1 indicates Redis is installed on the Commerce server. | `127.0.0.1` |
| `cache-backend-redis-port` | port | Redis server listen port | `6379` |
| `cache-backend-redis-db` | database | Required if you use Redis for both the default and full-page cache. Specify the database number of one of the caches; the other cache uses 0 by default.<br><br>**Important**: If you use Redis for more than one type of caching, the database numbers must be different. It is recommended that you assign the default caching database number to 0, the page-caching database number to 1, and the session storage database number to 2. | `0` |
| `cache-backend-redis-password` | password | Configuring a Redis password enables one of its built-in security features: the `auth` command, which requires clients to authenticate to access the database. The password is configured directly in Redis' configuration file: `/etc/redis/redis.conf` | |
| `cache-backend-redis-compress-data` | compress_data | Set to `0` to disable compression. | `1` |
| `cache-backend-redis-compression-lib` | compression_lib | Compression library to use. Supported values include `snappy`, `lzf`, `l4z`, `zstd`, and `gzip`. Leave blank to determine automatically. | |
| `cache-backend-redis-use-lua` | use_lua | Enable or disable Lua scripts for all Redis operations. <br><br>**Default: keep at `0`.** Lua mode is disabled by default to prevent known performance regressions and GraphQL cache miss issues introduced by the bundled Redis library (1.17.x) when Lua was enabled. | `0` |
| `cache-backend-redis-use-lua-on-gc` | use_lua_on_gc | Enable or disable Lua scripts for garbage collection (the `backend_clean_cache` cron job). <br><br>**Default: keep at `1`.** Intentionally enabled to ensure atomic tag-set cleanup during GC. Without it, a race condition can occur when the `backend_clean_cache` cron runs at the same time as a cache save operation, leaving cache entries without a corresponding record in the cache tag index. This causes tag-based invalidation to silently fail — for example, updating a product price may not invalidate the product cache, requiring a full cache flush instead. | `1` |

### Lua mode

When enabled, Lua mode bundles multiple Redis operations (cache writes, tag updates, garbage collection) into a single atomic script executed server-side via `EVALSHA`. This prevents interleaving from concurrent requests — for example, ensuring a cache entry and its tag membership are written together.

>[!WARNING]
>
>Do not change the default values for `use_lua` and `use_lua_on_gc` without understanding the implications for your Adobe Commerce version:
>
>- **`use_lua`**: Enabling this on Adobe Commerce 2.4.7 or 2.4.8 (library `colinmollenhour/cache-backend-redis` 1.17.1) can cause cache corruption and GraphQL cache miss issues.
>- **`use_lua_on_gc`**: Disabling this on Adobe Commerce 2.4.8 removes atomic protection during garbage collection and can cause tag-based cache invalidation to fail silently, requiring a full cache flush to recover.

## Example command (default cache)

The following example enables Redis default caching, sets the host to `127.0.0.1`, and assigns the database number to 0. Redis uses default values for all other parameters.

```shell
bin/magento setup:config:set --cache-backend=redis --cache-backend-redis-server=127.0.0.1 --cache-backend-redis-db=0
```

## Configure Redis page caching

To configure Redis page caching on Commerce, run the `setup:config:set` command with additional parameters.

```shell
bin/magento setup:config:set --page-cache=redis --page-cache-redis-<parameter>=<value>...
```

Common parameters include:

- `--page-cache=redis` enables Redis page caching. If this feature has already been enabled, omit this parameter.

- `--page-cache-redis-<parameter>=<value>` is a list of key-and-value pairs that configure page caching:

| Command-line parameter | Value | Meaning | Default value |
| --- | --- | --- | --- |
| `page-cache-redis-server` | server | Fully qualified hostname, IP address, or an absolute path to a UNIX socket. The default value of 127.0.0.1 indicates Redis is installed on the Commerce server. | `127.0.0.1` |
| `page-cache-redis-port` | port | Redis server listen port | `6379` |
| `page-cache-redis-db` | database | Required if you use Redis for both the default and full page cache. Specify the database number of one of the caches; the other cache uses 0 by default.<br/>**Important**: If you use Redis for more than one type of caching, the database numbers must be different. It is recommended that you assign the default caching database number to 0, the page-caching database number to 1, and the session storage database number to 2. | `0` |
| `page-cache-redis-password` | password | Configuring a Redis password enables one of its built-in security features: the `auth` command, which requires clients to authenticate to access the database. Configure the password within the Redis configuration file: `/etc/redis/redis.conf` | |
| `page-cache-redis-compress-data` | compress_data | Set to `1` to compress the full-page cache. Use `0` to disable compression. | `0` |
| `page-cache-redis-compression-lib` | compression_lib | Compression library to use. Supported values include `snappy`, `lzf`, `l4z`, `zstd`, and `gzip`. Leave blank to determine automatically. | |

The following example enables Redis page caching, sets the host to `127.0.0.1`, and assigns the database number to `1`. All other parameters are set to the default value.

```shell
bin/magento setup:config:set --page-cache=redis --page-cache-redis-server=127.0.0.1 --page-cache-redis-db=1
```

{{valkey-redis-cli-note}}

### Review Commerce environment configuration

Running the commands to configure Redis caching updates the Commerce environment configuration (`<Commerce-install-dir>app/etc/env.php`):

```php
'cache' => [
    'frontend' => [
        'default' => [
            'backend' => 'Magento\\Framework\\Cache\\Backend\\Redis',
            'backend_options' => [
                'server' => '127.0.0.1',
                'database' => '0',
                'port' => '6379'
            ],
        ],
        'page_cache' => [
            'backend' => 'Magento\\Framework\\Cache\\Backend\\Redis',
            'backend_options' => [
                'server' => '127.0.0.1',
                'port' => '6379',
                'database' => '1',
                'compress_data' => '0'
            ]
        ]
    ]
],
```

## Configure additional caching options

### Redis preload feature

Since Commerce stores configuration data in the Redis cache, you can preload data that is reused between pages. To find keys that must be preloaded, analyze data that is transferred from Redis to Commerce. Adobe suggests preloading data that is loaded on every page, such as `SYSTEM_DEFAULT`, `EAV_ENTITY_TYPES`, and `DB_IS_UP_TO_DATE`.

Redis uses the `pipeline` to composite load requests. Keys should include the database prefix; for example, if the database prefix is `061_`, the preload key looks like: `061_SYSTEM_DEFAULT`

```php
'cache' => [
    'frontend' => [
        'default' => [
            'id_prefix' => '061_',
            'backend' => 'Magento\\Framework\\Cache\\Backend\\Redis',
            'backend_options' => [
                'server' => 'redis',
                'database' => '0',
                'port' => '6379',
                'password' => '',
                'compress_data' => '1',
                'compression_lib' => '',
                'preload_keys' => [
                    '061_EAV_ENTITY_TYPES',
                    '061_GLOBAL_PLUGIN_LIST',
                    '061_DB_IS_UP_TO_DATE',
                    '061_SYSTEM_DEFAULT',
                ],
            ]
        ],
        'page_cache' => [
            'id_prefix' => '061_'
        ]
    ]
]
```

When using the preload feature with an L2 cache, you must add the `:hash` suffix to your keys. The L2 cache transfers only the hash of the data, not the actual data.

```php
'preload_keys' => [
    '061_EAV_ENTITY_TYPES:hash',
    '061_GLOBAL_PLUGIN_LIST:hash',
    '061_DB_IS_UP_TO_DATE:hash',
    '061_SYSTEM_DEFAULT:hash',
],
```

### Parallel generation

Starting with the Commerce 2.4.0 release, Adobe introduced the `allow_parallel_generation` option for users who want to eliminate waiting for locks. It is disabled by default, and Adobe recommends disabling it until you have excessive configurations and/or blocks.

**To enable parallel generation**:

```shell
bin/magento setup:config:set --allow-parallel-generation
```

Since it is a flag, you cannot disable it with a command. Manually set the configuration value to `false`:

```php
    'cache' => [
        'frontend' => [
            'default' => [
                'id_prefix' => 'b0b_',
                'backend' => 'Magento\\Framework\\Cache\\Backend\\Redis',
                'backend_options' => [
                    'server' => 'redis',
                    'database' => '0',
                    'port' => '6379',
                    'password' => '',
                    'compress_data' => '1',
                    'compression_lib' => ''
                ]
            ],
            'page_cache' => [
                'id_prefix' => 'b0b_'
            ]
        ],
        'allow_parallel_generation' => false
    ],
```

### PHP Redis extension

Use the native PHP Redis extension (`phpredis`) when your environment supports it:

#### Use apt

For Debian or Ubuntu, use `apt`:

```bash
sudo apt-get install php-redis
sudo systemctl restart php-fpm
php -m | grep redis
```

#### Use pecl

As an alternative, use `pecl`:

```bash
sudo pecl install redis
echo "extension=redis.so" | sudo tee /etc/php/<version>/mods-available/redis.ini
sudo phpenmod redis
sudo systemctl restart php-fpm
php -m | grep redis
```

## Verify the Redis connection

To verify that Redis and Commerce are working together properly:

1. Log in to the server that runs Redis and Commerce.
1. Open a terminal.
1. Check the connection by using either the `redis-cli monitor` command or the `redis-cli ping` command.

If the commands succeed, then Redis is running and can communicate with the Commerce application. If they fail, then there is a connection issue between Redis and Commerce that you need to resolve.

### Redis monitor command

```shell
redis-cli monitor
```

Sample page-caching output:

```text
1476826133.810090 [0 127.0.0.1:52366] "select" "1"
1476826133.816293 [0 127.0.0.1:52367] "select" "0"
1476826133.817461 [0 127.0.0.1:52367] "hget" "zc:k:ea6_GLOBAL__DICONFIG" "d"
1476826133.829666 [0 127.0.0.1:52367] "hget" "zc:k:ea6_DICONFIG049005964B465901F774DB9751971818" "d"
1476826133.837854 [0 127.0.0.1:52367] "hget" "zc:k:ea6_INTERCEPTION" "d"
1476826133.868374 [0 127.0.0.1:52368] "select" "1"
1476826133.869011 [0 127.0.0.1:52369] "select" "0"
1476826133.869601 [0 127.0.0.1:52369] "hget" "zc:k:ea6_DEFAULT_CONFIG_CACHE_DEFAULT__10__235__32__1080MAGENTO2" "d"
1476826133.872317 [0 127.0.0.1:52369] "hget" "zc:k:ea6_INITIAL_CONFIG" "d"
1476826133.879267 [0 127.0.0.1:52369] "hget" "zc:k:ea6_GLOBAL_PRIMARY_PLUGIN_LIST" "d"
...
```

If both commands succeed, Redis is set up properly.

### Inspect compressed data

To inspect compressed session data and page cache, use the [RESP.app](https://flathub.org/apps/details/app.resp.RESP) tool. It supports automatic decompression of Commerce 2 session and page cache data and displays PHP session data in a human-readable form.
