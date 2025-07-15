---
title: Use Valkey for default cache
description: Learn to configure Valkey as the default cache for Adobe Commerce.
feature: Configuration, Cache
exl-id: d0baa2a6-8aa8-4f3f-9edf-102d621430e0
---

# Use Valkey for default cache

Commerce provides command-line options to configure the Valkey page and default caching. Although you can configure caching by editing the `<Commerce-install-dir>app/etc/env.php` file, using the command line is the recommended method, especially for initial configurations. The command line provides validation, ensuring the configuration is syntactically correct.

You must [install Valkey](config-redis.md#install-redis) before continuing.

## Configure Valkey default caching

Run the `setup:config:set` command and specify parameters for Valkey default caching.

```bash
bin/magento setup:config:set --cache-backend=valkey --cache-backend-valkey-<parameter>=<value>...
```
- `--cache-backend=valkey` enables the valkey default caching. If this feature has already been enabled, omit this parameter.

- `--cache-backend-valkey-<parameter>=<value>` is a list of key-value pairs that configure the default caching:

| Command-line parameter          | Value     | Meaning                                                                                                                                                                                                                                                                                                                                                                                                                                                | Default value |
|---------------------------------| --------- |--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------| ------------- |
| `cache-backend-valkey-server`   | server    | Fully qualified hostname, IP address, or an absolute path to a UNIX socket. The default value of `127.0.0.1` indicates that Valkey is installed on the Commerce server.                                                                                                                                                                                                                                                                                       | `127.0.0.1` |
| `cache-backend-valkey-port`     | port      | Valkey server listen port                                                                                                                                                                                                                                                                                                                                                                                                                              | `6379` |
| `cache-backend-valkey-db`       | database  | Required if you use Valkey for both the default and full-page cache. You must specify the database number of one of the caches; the other cache uses `0` by default.<br><br>**Important**: If you use Valkey for more than one type of caching, the database numbers must be different. Adobe recommends that you assign the default caching database number to `0`, the page-caching database number to `1`, and the session storage database number to `2`. | `0` |
| `cache-backend-valkey-password` | password  | Configuring a Valkey password enables one of its built-in security features: the `auth` command, which requires clients to authenticate to access the database. The password is configured directly in Valkey' configuration file: `/etc/valkey/valkey.conf`                                                                                                                                                                                           | |

### Example command

The following example enables Valkey default caching, sets the host to `127.0.0.1`, and assigns the database number to `0`. Valkey uses default values for all other parameters.

```bash
bin/magento setup:config:set --cache-backend=valkey --cache-backend-valkey-server=127.0.0.1 --cache-backend-valkey-db=0
```

## Configure page caching

To configure Valkey page caching on Commerce, run the `setup:config:set` command with additional parameters.

```bash
bin/magento setup:config:set --page-cache=valkey --page-cache-valkey-<parameter>=<value>...
```

With the following parameters:

- `--page-cache=valkey` enables Valkey page caching. If this feature has already been enabled, omit this parameter.

- `--page-cache-valkey-<parameter>=<value>` is a list of key-and-value pairs that configure page caching:

| Command-line parameter       | Value     | Meaning                                                                                                                                                                                                                                                                                                                                                                                                                                             | Default value |
|------------------------------| --------- |-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------| ------------- |
| `page-cache-valkey-server`   | server    | Fully qualified hostname, IP address, or an absolute path to a UNIX socket. The default value of `127.0.0.1` indicates that Valkey is installed on the Commerce server.                                                                                                                                                                                                                                                                                    | `127.0.0.1` |
| `page-cache-valkey-port`     | port      | Valkey server listen port.                                                                                                                                                                                                                                                                                                                                                                                                                           | `6379` |
| `page-cache-valkey-db`       | database  | Required if you use Valkey for both default and full-page cache. You must specify the database number of one of the caches; the other cache uses `0` by default.<br/>**Important**: If you use Valkey for more than one type of caching, the database numbers must be different. It is recommended that you assign the default caching database number to `0`, the page-caching database number to `1`, and the session storage database number to `2`. | `0` |
| `page-cache-valkey-password` | password  | Configuring a Valkey password enables one of its built-in security features: the `auth` command, which requires clients to authenticate to access the database. Configure the password within the Valkey configuration file: `/etc/valkey/valkey.conf`                                                                                                                                                                                              | |

### Example command

The following example enables Valkey page caching, sets the host to `127.0.0.1`, and assigns the database number to `1`. All other parameters are set to the default value.

```bash
bin/magento setup:config:set --page-cache=valkey --page-cache-valkey-server=127.0.0.1 --page-cache-valkey-db=1
```

## Results

As a result of the two example commands, Commerce adds lines similar to the following to `<Commerce-install-dir>app/etc/env.php`:

```php
'cache' => [
    'frontend' => [
        'default' => [
            'backend' => 'Magento\\Framework\\Cache\\Backend\\Valkey',
            'backend_options' => [
                'server' => '127.0.0.1',
                'database' => '0',
                'port' => '6379'
            ],
        ],
        'page_cache' => [
            'backend' => 'Magento\\Framework\\Cache\\Backend\\Valkey',
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

## New Valkey cache implementation

[!BADGE 2.4.9-alpha]{type=Negative tooltip="Available in 2.4.9-alpha only."}

Starting with Adobe Commerce 2.4.9, Adobe recommends using the Valkey cache implementation: `\Magento\Framework\Cache\Backend\Valkey`.

```php
'cache' => [
    'frontend' => [
        'default' => [
            'backend' => '\\Magento\\Framework\\Cache\\Backend\\Valkey',
            'backend_options' => [
                'server' => '127.0.0.1',
                'database' => '0',
                'port' => '6379'
            ],
        ],
],
```

## Valkey preload feature

Since Commerce stores configuration data in the Valkey cache, you can preload data that is reused between pages. To find keys that must be preloaded, analyze data that is transferred from Valkey to Commerce. Adobe suggests preloading data that is loaded on every page, such as `SYSTEM_DEFAULT`, `EAV_ENTITY_TYPES`, and `DB_IS_UP_TO_DATE`.

Valkey uses the `pipeline` to composite load requests. Keys should include the database prefix; for example, if database prefix is `061_`, the preload key looks like: `061_SYSTEM_DEFAULT`

```php
'cache' => [
    'frontend' => [
        'default' => [
            'id_prefix' => '061_',
            'backend' => 'Magento\\Framework\\Cache\\Backend\\Valkey',
            'backend_options' => [
                'server' => 'valkey',
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
                'backend' => 'Magento\\Framework\\Cache\\Backend\\Valkey',
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

## Verify Valkey connection

To verify that Valkey and Commerce are working together properly, log in to the server that runs Valkey, open a terminal, and use either the `valkey-cli monitor` command or the `redis-cli ping` command.

### Valkey monitor command

```bash
valkey-cli monitor
```

Sample page-caching output:

```
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
1476826133.883312 [0 127.0.0.1:52369] "hget" "zc:k:ea6_GLOBAL__EVENT_CONFIG_CACHE" "d"
1476826133.898431 [0 127.0.0.1:52369] "hget" "zc:k:ea6_DB_PDO_MYSQL_DDL_STAGING_UPDATE_1" "d"
1476826133.898794 [0 127.0.0.1:52369] "hget" "zc:k:ea6_RESOLVED_STORES_D1BEFA03C79CA0B84ECC488DEA96BC68" "d"
1476826133.905738 [0 127.0.0.1:52369] "hget" "zc:k:ea6_DEFAULT_CONFIG_CACHE_STORE_DEFAULT_10__235__32__1080MAGENTO2" "d"

... more ...

1476826210.634998 [0 127.0.0.1:52439] "hmset" "zc:k:ea6_MVIEW_CONFIG" "d" "a:18:{s:19:\"design_config_dummy\";a:4:{s:7:\"view_id\";s:19:\"design_config_dummy\";s:12:\"action_class\";s:39:\"Magento\\Theme\\Model\\Indexer\\Mview\\Dummy\";s:5:\"group\";s:7:\"indexer\";s:13:\"subscriptions\";a:0:{}}s:14:\"customer_dummy\";a:4:{s:7:\"view_id\";s:14:\"customer_dummy\";s:12:\"action_class\";s:42:\"Magento\\Customer\\Model\\Indexer\\Mview\\Dummy\";s:5:\"group\";s:7:\"indexer\";s:13:\"subscriptions\";a:0:{}}s:13:\"cms_page_grid\";a:4:{s:7:\"view_id\";s:13:\"cms_page_grid\";s:12:\"action_class\";s:43:\"Magento\\Catalog\\Model\\Indexer\\Category\\Flat\";s:5:\"group\";s:7:\"indexer\";s:13:\"subscriptions\";a:1:{s:8:\"cms_page\";a:3:{s:4:\"name\";s:8:\"cms_page\";s:6:\"column\";s:7:\"page_id\";s:18:\"subscription_model\";N;}}}s:21:\"catalog_category_flat\";a:4:{s:7:\"view_id\";s:21:\"catalog_category_flat\";s:12:\"action_class\";s:43:\"Magento\\Catalog\\Model\\Indexer\\Category\\Flat\";s:5:\"group\";s:7:\"indexer\";s:13:\"subscriptions\";a:6:{s:23:\"catalog_category_entity\";a:3:{s:4:\"name\";s:23:\"catalog_category_entity\";s:6:\"column\";s:9:\"entity_id\";s:18:\"subscription_model\";N;}s:31:\"catalog_category_entity_decimal\";a:3:{s:4:\"name\";s:31:\"catalog_category_entity_decimal\";s:6:\"column\";s:9:\"entity_id\";s:18:\"subscription_model\";s:71:\"Magento\\CatalogStaging\\Model\\Mview\\View\\Category\\Attribute\\Subscription\";}s:27:\"catalog_category_entity_int\";a:3:{s:4:\"name\";s:27:\"catalog_category_entity_int\";s:6:\"column\";s:9:\"entity_id\";s:18:\"subscription_model\";s:71:\"Magento\\CatalogStaging\\Model\\Mview\\View\\Category\\Attribute\\Subscription\";}s:28:\"catalog_category_entity_text\";a:3:{s:4:\"name\";s:28:\"catalog_category_entity_text\";s:6:\"column\";s:9:\"entity_id\";s:18:\"subscription_model\";s:71:\"Magento\\CatalogStaging\\Model\\Mview\\View\\Category\\Attribute\\Subscription\";}s:31:\"catalog_category_entity_varchar\";a:3:{s:4:\"name\";s:31:\"catalog_category_entity_varchar\";s:6:\"column\";s:9:\"entity_id\";s:18:\"subscription_model\";s:71:\"Magento\\CatalogStaging\\Model\\Mview\\View\\Category\\Attribute\\Subscription\";}s:32:\"catalog_category_entity_datetime\";a:3:{s:4:\"name\";s:32:\"catalog_category_entity_datetime\";s:6:\"column\";s:9:\"entity_id\";s:18:\"subscription_model\";s:71:\"Magento\\CatalogStaging\\Model\\Mview\\View\\Category\\Attribute\\Subscription\";}}}s:24:\"catalog_category_product\";a:4:{s:7:\"view_id\";s:24:\"catalog_category_product\";s:12:\"action_class\";s:46:\"Magento\\Catalog\\Model\\Indexer\\Category\\Product\";s:5:\"group\";s:7:\"indexer\";s:13:\"subscriptions\";a:2:{s:23:\"catalog_category_entity\";a:3:{s:4:\"name\";s:23:\"catalog_category_entity\";s:6:\"column\"

... more ...
```

### Valkey ping command

```bash
redis-cli ping
```

The expected response is: `PONG`

If both commands succeeded, Valkey is set up properly.

### Inspecting compressed data

To inspect compressed session data and the page cache, the [RESP.app](https://flathub.org/apps/app.resp.RESP) supports automatic decompression of Commerce 2 session and page cache and displays PHP session data in a human-readable format.
