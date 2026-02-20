---
title: Use Dragonfly for default cache
description: Learn how to configure Dragonfly as the default cache for Adobe Commerce. Discover command-line setup, configuration options, and validation techniques.
feature: Configuration, Cache
---

# Use Dragonfly for default cache

Commerce provides command-line options to configure the default and page caching using Dragonfly. Because Dragonfly is fully compatible with Redis, you can use the Redis backend configuration to connect to Dragonfly. Although you can configure caching by editing the `<Commerce-install-dir>app/etc/env.php` file, using the command line is the recommended method, especially for initial configurations. The command line provides validation, ensuring the configuration is syntactically correct.

You must [install Dragonfly](config-dragonfly.md#install-dragonfly) before continuing.

## Configure Dragonfly default caching

Run the `setup:config:set` command and specify parameters for Redis backend configuration. Dragonfly accepts Redis connections without modification.

```bash
bin/magento setup:config:set --cache-backend=redis --cache-backend-redis-<parameter>=<value>...
```

With the following parameters:

- `--cache-backend=redis` enables the Redis backend, which is compatible with Dragonfly. If this feature has already been enabled, omit this parameter.

- `--cache-backend-redis-<parameter>=<value>` is a list of key-value pairs that configure the default caching:

| Command-line parameter | Value | Meaning | Default value |
|---|---|---|---|
| `cache-backend-redis-server` | server | Fully qualified hostname, IP address, or an absolute path to a UNIX socket. The default value of `127.0.0.1` indicates that Dragonfly is installed on the Commerce server. | `127.0.0.1` |
| `cache-backend-redis-port` | port | Dragonfly server listen port | `6379` |
| `cache-backend-redis-db` | database | Required if you use Dragonfly for both the default and full-page cache. You must specify the database number of one of the caches; the other cache uses `0` by default.<br><br>**Important**: If you use Dragonfly for more than one type of caching, the database numbers must be different. Adobe recommends that you assign the default caching database number to `0`, the page-caching database number to `1`, and the session storage database number to `2`. | `0` |
| `cache-backend-redis-password` | password | Configuring a Dragonfly password enables one of its built-in security features: the `auth` command, which requires clients to authenticate to access the database. Configure the password using the `--requirepass` flag when starting Dragonfly. | |

### Example command

The following example enables Dragonfly default caching, sets the host to `127.0.0.1`, and assigns the database number to `0`. Dragonfly uses default values for all other parameters.

```bash
bin/magento setup:config:set --cache-backend=redis --cache-backend-redis-server=127.0.0.1 --cache-backend-redis-db=0
```

## Configure page caching

To configure Dragonfly page caching on Commerce, run the `setup:config:set` command with additional parameters.

```bash
bin/magento setup:config:set --page-cache=redis --page-cache-redis-<parameter>=<value>...
```

With the following parameters:

- `--page-cache=redis` enables Redis page caching, which is compatible with Dragonfly. If this feature has already been enabled, omit this parameter.

- `--page-cache-redis-<parameter>=<value>` is a list of key-and-value pairs that configure page caching:

| Command-line parameter | Value | Meaning | Default value |
|---|---|---|---|
| `page-cache-redis-server` | server | Fully qualified hostname, IP address, or an absolute path to a UNIX socket. The default value of `127.0.0.1` indicates that Dragonfly is installed on the Commerce server. | `127.0.0.1` |
| `page-cache-redis-port` | port | Dragonfly server listen port | `6379` |
| `page-cache-redis-db` | database | Required if you use Dragonfly for both default and full-page cache. You must specify the database number of one of the caches; the other cache uses `0` by default.<br/>**Important**: If you use Dragonfly for more than one type of caching, the database numbers must be different. It is recommended that you assign the default caching database number to `0`, the page-caching database number to `1`, and the session storage database number to `2`. | `0` |
| `page-cache-redis-password` | password | Configuring a Dragonfly password enables one of its built-in security features: the `auth` command, which requires clients to authenticate to access the database. Configure the password using the `--requirepass` flag when starting Dragonfly. | |

### Example command

The following example enables Dragonfly page caching, sets the host to `127.0.0.1`, and assigns the database number to `1`. All other parameters are set to the default value.

```bash
bin/magento setup:config:set --page-cache=redis --page-cache-redis-server=127.0.0.1 --page-cache-redis-db=1
```

## Results

As a result of the two example commands, Commerce adds lines similar to the following to `<Commerce-install-dir>app/etc/env.php`:

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

## Dragonfly preload feature

Since Commerce stores configuration data in the cache, you can preload data that is reused between pages. To find keys that must be preloaded, analyze data that is transferred from Dragonfly to Commerce. Adobe suggests preloading data that is loaded on every page, such as `SYSTEM_DEFAULT`, `EAV_ENTITY_TYPES`, and `DB_IS_UP_TO_DATE`.

Dragonfly uses the `pipeline` to composite load requests. Keys should include the database prefix; for example, if database prefix is `061_`, the preload key looks like: `061_SYSTEM_DEFAULT`

```php
'cache' => [
    'frontend' => [
        'default' => [
            'id_prefix' => '061_',
            'backend' => 'Magento\\Framework\\Cache\\Backend\\Redis',
            'backend_options' => [
                'server' => 'dragonfly',
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

## Parallel generation

Starting with the Commerce 2.4.0 release, Adobe introduced the `allow_parallel_generation` option for users who want to eliminate waitings for locks.
It is disabled by default, and Adobe recommends disabling it until you have excessive configurations and/or blocks.

**To enable parallel generation**:

```bash
bin/magento setup:config:set --allow-parallel-generation
```

Since it is a flag, you cannot disable it with a command. You must manually set the configuration value to `false`:

```php
    'cache' => [
        'frontend' => [
            'default' => [
                'id_prefix' => 'b0b_',
                'backend' => 'Magento\\Framework\\Cache\\Backend\\Redis',
                'backend_options' => [
                    'server' => 'dragonfly',
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

## Verify Dragonfly connection

To verify that Dragonfly and Commerce are working together properly, log in to the server that runs Dragonfly, open a terminal, and use the `redis-cli monitor` command or the `redis-cli ping` command.

### Monitor command

```bash
redis-cli monitor
```

This displays all commands processed by the server in real-time, allowing you to verify that Commerce is communicating with Dragonfly.

### Ping command

```bash
redis-cli ping
```

The expected response is: `PONG`

If both commands succeeded, Dragonfly is set up properly.

### Inspecting compressed data

To inspect compressed session data and the page cache, the [RESP.app](https://resp.app/) supports automatic decompression of Commerce 2 session and page cache and displays PHP session data in a human-readable format.
