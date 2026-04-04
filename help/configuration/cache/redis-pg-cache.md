---
title: Use Redis for Default and Page Cache
description: Learn how to configure Redis as the default and page cache backend for Adobe Commerce. Discover CLI commands, env.php settings, and connection verification.
feature: Configuration, Cache
exl-id: 8c097cfc-85d0-4e96-b56e-284fde40d459
---
# Use Redis for the default and page cache

Commerce provides command-line options to configure the Redis page and default caching. Although you can configure caching by editing the `<Commerce-install-dir>app/etc/env.php` file, the command line is the recommended method, especially for initial configurations. The command line provides validation to ensure that the configuration is syntactically correct.

**Prerequisite:**

[Install Redis](config-redis.md#install-redis) before continuing.

>[!NOTE]
>
>For Commerce instances hosted on EC2, you can use AWS ElastiCache in place of a local Redis instance. See [Configure Elasticache for EC2 instances](redis-elasticache-for-ec2.md).

## Supported frameworks

>[!BEGINTABS]

>[!TAB Zend Cache (2.4.8 and earlier)]

- **Zend Cache (2.4.8 and earlier)** — Legacy Redis backend for Commerce 2.4.8 and earlier:
  - **Legacy Redis backend** — Uses the full class path (`Magento\Framework\Cache\Backend\Redis`)
  - **Preload keys** — Supports preloading frequently used cache keys
  - **Lua scripts** — Lua for garbage collection
  - **Compression** — Supports data compression

>[!TAB Symfony Cache (2.4.9+)]

- **Symfony Cache (2.4.9+)** — Starting with Commerce 2.4.9, Symfony Cache provides a modern, PSR-6 compliant caching implementation for Redis with significant performance improvements:
  - **Automatic Redis pipelining** — Batches multiple operations into single requests, reducing latency
  - **PSR-6 TagAwareAdapter** — Efficient tag-based cache invalidation with atomic operations
  - **Igbinary serialization** — Binary serialization reduces cache entry size by 45% and improves speed by 5-10%
  - **Enhanced persistent connections** — More stable connection pooling with better handling of forked processes
  - **Optimized Lua scripts** — Server-side execution combined with pipelining for maximum efficiency

>[!ENDTABS]


## Configure Redis default caching

Run the `setup:config:set` command and specify parameters specific to Redis default caching.

```bash
bin/magento setup:config:set --cache-backend=redis --cache-backend-redis-<parameter>=<value>...
```

With the following parameters:

- `--cache-backend=redis` enables the Redis default caching. If this feature has already been enabled, omit this parameter.

- `--cache-backend-redis-<parameter>=<value>` is a list of key-and-value pairs that configure the default caching:

| Command-line parameter         | Value     | Meaning | Default value |
| ------------------------------ | --------- | ------- | ------------- |
| `cache-backend-redis-server`   | server    | Fully qualified hostname, IP address, or an absolute path to a UNIX socket. The default value of 127.0.0.1 indicates Redis is installed on the Commerce server. | `127.0.0.1` |
| `cache-backend-redis-port`     | port      | Redis server listen port | `6379` |
| `cache-backend-redis-db`       | database  | Required if you use Redis for both the default and full-page cache. Specify the database number of one of the caches; the other cache uses 0 by default.<br><br>**Important**: If you use Redis for more than one type of caching, the database numbers must be different. It is recommended that you assign the default caching database number to 0, the page-caching database number to 1, and the session storage database number to 2. | `0` |
| `cache-backend-redis-password` | password  | Configuring a Redis password enables one of its built-in security features: the `auth` command, which requires clients to authenticate to access the database. The password is configured directly in Redis' configuration file: `/etc/redis/redis.conf` | |
| `cache-backend-redis-use-lua` | use_lua   | Enable or disable Lua. <br><br>**Lua**: Lua enables running part of the application logic inside Redis, improving performance and ensuring data consistency through atomic execution. | `0` |
| `cache-backend-redis-use-lua-on-gc` | use_lua_on_gc | Enable or disable Lua for garbage collection. <br><br>**Lua**: Lua enables running part of the application logic inside Redis, improving performance and ensuring data consistency through atomic execution. | `1` |

## Example command (default cache)

The following example enables Redis default caching, sets the host to `127.0.0.1`, and assigns the database number to 0. Redis uses default values for all other parameters.

```bash
bin/magento setup:config:set --cache-backend=redis --cache-backend-redis-server=127.0.0.1 --cache-backend-redis-db=0
```

## Configure Redis page caching

To configure Redis page caching on Commerce, run the `setup:config:set` command with additional parameters.

```bash
bin/magento setup:config:set --page-cache=redis --page-cache-redis-<parameter>=<value>...
```

With the following parameters:

- `--page-cache=redis` enables Redis page caching. If this feature has already been enabled, omit this parameter.

- `--page-cache-redis-<parameter>=<value>` is a list of key-and-value pairs that configure page caching:

| Command-line parameter         | Value     | Meaning | Default value |
| ------------------------------ | --------- | ------- | ------------- |
| `page-cache-redis-server`      | server    | Fully qualified hostname, IP address, or an absolute path to a UNIX socket. The default value of 127.0.0.1 indicates Redis is installed on the Commerce server. | `127.0.0.1` |
| `page-cache-redis-port`        | port      | Redis server listen port | `6379` |
| `page-cache-redis-db`          | database  | Required if you use Redis for both the default and full page cache. Specify the database number of one of the caches; the other cache uses 0 by default.<br/>**Important**: If you use Redis for more than one type of caching, the database numbers must be different. It is recommended that you assign the default caching database number to 0, the page-caching database number to 1, and the session storage database number to 2. | `0` |
| `page-cache-redis-password`    | password  | Configuring a Redis password enables one of its built-in security features: the `auth` command, which requires clients to authenticate to access the database. Configure the password within the Redis configuration file: `/etc/redis/redis.conf` | |

The following example enables Redis page caching, sets the host to `127.0.0.1`, and assigns the database number to `1`. All other parameters are set to the default value.

```bash
bin/magento setup:config:set --page-cache=redis --page-cache-redis-server=127.0.0.1 --page-cache-redis-db=1
```

{{valkey-redis-cli-note}}

### Review Commerce environment configuration

Running the commands to configure Redis caching updates the Commerce environment configuration (`<Commerce-install-dir>app/etc/env.php`):

>[!BEGINTABS]

>[!TAB Zend Cache (2.4.8 and earlier)]

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

>[!TAB Symfony Cache (2.4.9+)]

```php
'cache' => [
    'frontend' => [
        'default' => [
            'backend' => 'redis',
            'backend_options' => [
                'server' => '127.0.0.1',
                'database' => '0',
                'port' => '6379'
            ],
        ],
        'page_cache' => [
            'backend' => 'redis',
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

>[!NOTE]
>
>Starting with Commerce 2.4.9, use the simplified backend type `'backend' => 'redis'` instead of the full class path. Symfony Cache is automatically used when the simplified name is specified.

>[!ENDTABS]

## Configure additional caching options

### Redis preload feature

Since Commerce stores configuration data in the Redis cache, you can preload data that is reused between pages. To find keys that must be preloaded, analyze data that is transferred from Redis to Commerce. Adobe suggests preloading data that is loaded on every page, such as `SYSTEM_DEFAULT`, `EAV_ENTITY_TYPES`, and `DB_IS_UP_TO_DATE`.

Redis uses the `pipeline` to composite load requests. Keys should include the database prefix; for example, if the database prefix is `061_`, the preload key looks like: `061_SYSTEM_DEFAULT`

>[!BEGINTABS]

>[!TAB Zend Cache]

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

>[!TAB Symfony Cache]

```php
'cache' => [
    'frontend' => [
        'default' => [
            'id_prefix' => '061_',
            'backend' => 'redis',
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

>[!ENDTABS]

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

```bash
bin/magento setup:config:set --allow-parallel-generation
```

Since it is a flag, you cannot disable it with a command. Manually set the configuration value to `false`:

>[!BEGINTABS]

>[!TAB Zend Cache]

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

>[!TAB Symfony Cache]

```php
    'cache' => [
        'frontend' => [
            'default' => [
                'id_prefix' => 'b0b_',
                'backend' => 'redis',
                'backend_options' => [
                    'server' => 'redis',
                    'database' => '0',
                    'port' => '6379',
                    'serializer' => 'igbinary',
                    'compress_data' => '1',
                    'compression_lib' => 'gzip'
                ]
            ],
            'page_cache' => [
                'id_prefix' => 'b0b_'
            ]
        ],
        'allow_parallel_generation' => false
    ],
```

>[!ENDTABS]


## Symfony Cache performance optimization

If you are using Symfony Cache, you can further optimize performance by configuring the Igbinary serializer, installing the igbinary PHP extension and phpredis extension, and enabling persistent connections.

### Igbinary serializer

The Igbinary serializer provides significant performance improvements over PHP's default serialization. It must be configured manually in `app/etc/env.php`:

```php
'cache' => [
    'frontend' => [
        'default' => [
            'backend_options' => [
                'server' => 'redis',
                'database' => '0',
                'port' => '6379',
                'serializer' => 'igbinary',  // Enable Igbinary serialization
            ]
        ],
        'page_cache' => [
            'backend_options' => [
                'server' => 'redis',
                'database' => '1',
                'port' => '6379',
                'serializer' => 'igbinary',  // Enable Igbinary for page cache too
            ]
        ]
    ]
]
```

### Install the PHP Igbinary extension

To use igbinary serialization, you must install the PHP Igbinary extension.

**Using apt (recommended for Debian/Ubuntu)**:

```bash
sudo apt-get install php-igbinary
sudo systemctl restart php-fpm
php -m | grep igbinary
```

**Using pecl (alternative method)**:

```bash
sudo pecl install igbinary
echo "extension=igbinary.so" | sudo tee /etc/php/8.3/mods-available/igbinary.ini
sudo phpenmod igbinary
sudo systemctl restart php-fpm
php -m | grep igbinary
```

### PHP Redis extensions: phpredis vs Predis

Commerce 2.4.9+ includes automatic fallback between phpredis (native C extension) and Predis (pure PHP library). For optimal performance, install phpredis:

**Using apt (recommended for Debian/Ubuntu)**:

```bash
sudo apt-get install php-redis
sudo systemctl restart php-fpm
php -m | grep redis
```

**Using pecl (alternative method)**:

```bash
sudo pecl install redis
echo "extension=redis.so" | sudo tee /etc/php/8.3/mods-available/redis.ini
sudo phpenmod redis
sudo systemctl restart php-fpm
php -m | grep redis
```

**Performance comparison**:

| Operation | Predis | phpredis | Improvement |
|-----------|--------|----------|-------------|
| Cache GET | 1-5ms | 0.5-2ms | 2-3x faster |
| Cache SET | 2-6ms | 0.8-2.5ms | 2-3x faster |
| Tag operations | 10-30ms | 3-10ms | 3-4x faster |

### Persistent connections

Persistent connections reuse existing Redis connections across requests, providing 5-15% faster cache operations. Configure in `app/etc/env.php`:

```php
'cache' => [
    'frontend' => [
        'default' => [
            'backend_options' => [
                'server' => 'redis',
                'database' => '0',
                'port' => '6379',
                'persistent' => '1',
                'persistent_id' => 'cache_default',
                'timeout' => '2.5',
                'read_timeout' => '2.0',
            ]
        ],
        'page_cache' => [
            'backend_options' => [
                'server' => 'redis',
                'database' => '1',
                'port' => '6379',
                'persistent' => '1',
                'persistent_id' => 'cache_fpc',
            ]
        ]
    ]
]
```

>[!IMPORTANT]
>
>Use a unique `persistent_id` for each cache type to prevent connection conflicts.

### Complete optimized configuration

Here's a production-ready Symfony configuration combining all performance optimizations:

```php
'cache' => [
    'frontend' => [
        'default' => [
            'id_prefix' => 'b0b_',
            'backend' => 'redis',
            'backend_options' => [
                'server' => 'redis',
                'database' => '0',
                'port' => '6379',
                'serializer' => 'igbinary',
                'compress_data' => '1',
                'compression_lib' => 'gzip',
                'persistent' => '1',
                'persistent_id' => 'cache_default',
                'timeout' => '2.5',
                'read_timeout' => '2.0',
                'use_lua' => '1',
                'use_lua_on_gc' => '1',
                'preload_keys' => [
                    'b0b_EAV_ENTITY_TYPES',
                    'b0b_GLOBAL_PLUGIN_LIST',
                    'b0b_DB_IS_UP_TO_DATE',
                    'b0b_SYSTEM_DEFAULT',
                ],
            ]
        ],
        'page_cache' => [
            'id_prefix' => 'b0b_',
            'backend' => 'redis',
            'backend_options' => [
                'server' => 'redis',
                'database' => '1',
                'port' => '6379',
                'serializer' => 'igbinary',
                'compress_data' => '0',
                'persistent' => '1',
                'persistent_id' => 'cache_fpc',
            ]
        ]
    ],
    'allow_parallel_generation' => false
]
```

## Verify the Redis connection

To verify that Redis and Commerce are working together properly:

1. Log in to the server that runs Redis and Commerce.
1. Open a terminal.
1. Check the connection by using either the `redis-cli monitor` command or the `redis-cli ping` command.

If the commands succeed, then Redis is running and can communicate with the Commerce application. If they fail, then there is a connection issue between Redis and Commerce that you need to resolve.

### Redis monitor command

```bash
redis-cli monitor
```

Sample page-caching output:

```terminal
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
