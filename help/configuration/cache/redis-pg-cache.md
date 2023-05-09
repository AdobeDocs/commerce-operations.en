---
title: Use Redis for default cache
description: Learn to configure Redis as the default cache for Adobe Commerce and Magento Open Source.
feature: Configuration, Cache
exl-id: 8c097cfc-85d0-4e96-b56e-284fde40d459
---
# Use Redis for default cache

Commerce provides command-line options to configure the Redis page and default caching. Although you can configure caching by editing the `<Commerce-install-dir>app/etc/env.php` file, using the command line is the recommended method, especially for initial configurations. The command line provides validation, ensuring the configuration is syntactically correct.

You must [install Redis](config-redis.md#install-redis) before continuing.

## Configure Redis default caching

Run the `setup:config:set` command and specify parameters that specific to Redis default caching.

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
| `cache-backend-redis-db`       | database  | Required if you use Redis for both the default and full-page cache. You must specify the database number of one of the caches; the other cache uses 0 by default.<br><br>**Important**: If you use Redis for more than one type of caching, the database numbers must be different. It is recommended that you assign the default caching database number to 0, the page-caching database number to 1, and the session storage database number to 2. | `0` |
| `cache-backend-redis-password` | password  | Configuring a Redis password enables one of its built-in security features: the `auth` command, which requires clients to authenticate to access the database. The password is configured directly in Redis' configuration file: `/etc/redis/redis.conf` | |

### Example command

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
| `page-cache-redis-db`          | database  | Required if you use Redis for both the default and full page cache. You must specify the database number of one of the caches; the other cache uses 0 by default.<br/>**Important**: If you use Redis for more than one type of caching, the database numbers must be different. It is recommended that you assign the default caching database number to 0, the page-caching database number to 1, and the session storage database number to 2. | `0` |
| `page-cache-redis-password`    | password  | Configuring a Redis password enables one of its built-in security features: the `auth` command, which requires clients to authenticate to access the database. Configure the password within the Redis configuration file: `/etc/redis/redis.conf` | |

### Example command

The following example enables Redis page caching, sets the host to `127.0.0.1`, and assigns the database number to 1. All other parameters are set to the default value.

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

## Using AWS ElastiCache with your EC2 instance

As of Commerce 2.4.3, instances hosted on Amazon EC2 may use an AWS ElastiCache in place of a local Redis instance.

>[!WARNING]
>
>This section only works for Commerce instances running on Amazon EC2 VPCs. It does not work for on-premises installations.

### Configure a Redis cluster

After [setting up a Redis cluster on AWS](https://aws.amazon.com/getting-started/hands-on/setting-up-a-redis-cluster-with-amazon-elasticache/), configure the EC2 instance to use the ElastiCache.

1. [Create an ElastiCache Cluster](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/set-up.html) in the same region and VPC of the EC2 instance.
1. Verify the connection.

   - Open an SSH connection to your EC2 instance
   - On the EC2 instance, install the Redis client:

      ```bash
      sudo apt-get install redis
      ```

   - Add an inbound rule to the EC2 security group: Type `- Custom TCP, port - 6379, Source - 0.0.0.0/0`
   - Add an inbound rule to the ElastiCache Cluster security group: Type `- Custom TCP, port - 6379, Source - 0.0.0.0/0`
   - Connect to the Redis CLI:

      ```bash
      redis-cli -h <ElastiCache Primary Endpoint host> -p <ElastiCache Primary Endpoint port>
      ```

### Configure Commerce to use the cluster

Commerce supports multiple types of caching configurations. Generally, the caching configurations are split between frontend and backend. Frontend caching is classified as `default`, used for any cache type. You can customize or split into lower-level caches to achieve better performance. A common Redis configuration is separating the default cache and page cache into their own Redis Database (RDB).

Run `setup` commands to specify the Redis endpoints.

To configure Commerce for Redis as default caching:

```bash
bin/magento setup:config:set --cache-backend=redis --cache-backend-redis-server=<ElastiCache Primary Endpoint host> --cache-backend-redis-port=<ElastiCache Primary Endpoint port> --cache-backend-redis-db=0
```

To configure Commerce for Redis page caching:

```bash
bin/magento setup:config:set --page-cache=redis --page-cache-redis-server=<ElastiCache Primary Endpoint host> --page-cache-redis-port=<ElastiCache Primary Endpoint port> --page-cache-redis-db=1
```

To configure Commerce to use Redis for session storage:

```bash
bin/magento setup:config:set --session-save=redis --session-save-redis-host=<ElastiCache Primary Endpoint host> --session-save-redis-port=<ElastiCache Primary Endpoint port> --session-save-redis-log-level=4 --session-save-redis-db=2
```

### Verify connectivity

**To verify that Commerce is talking to ElastiCache**:

1. Open an SSH connection to the Commerce EC2 instance.
1. Start the Redis monitor.

   ```bash
   redis-cli -h <ElastiCache-Primary-Endpoint-host> -p <ElastiCache-Primary-Endpoint-port> monitor
   ```

1. Open a page in the Commerce UI.
1. Verify the [cache output](#verify-redis-connection) in your terminal.

## New Redis cache implementation

As of Commerce 2.3.5, it is recommended to use the extended Redis cache implementation: `\Magento\Framework\Cache\Backend\Redis`.

```php
'cache' => [
    'frontend' => [
        'default' => [
            'backend' => '\\Magento\\Framework\\Cache\\Backend\\Redis',
            'backend_options' => [
                'server' => '127.0.0.1',
                'database' => '0',
                'port' => '6379'
            ],
        ],
],
```

## Redis preload feature

Since Commerce stores configuration data in the Redis cache, we can preload data that is reused between pages. To find keys that must be preloaded, analyze data that is transferred from Redis to Commerce. We suggest preloading data that is loaded on every page, such as `SYSTEM_DEFAULT`, `EAV_ENTITY_TYPES`, `DB_IS_UP_TO_DATE`.

Redis uses the `pipeline` in order to composite load requests. Keys should include the database prefix; for example, if database prefix is `061_`, preload key looks like: `061_SYSTEM_DEFAULT`

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

In case you are using the preload feature with the L2 cache, do not forget to add the `:hash` suffix to your keys, since L2 cache only transfers the hash of the data, not the data itself:

```php
'preload_keys' => [
    '061_EAV_ENTITY_TYPES:hash',
    '061_GLOBAL_PLUGIN_LIST:hash',
    '061_DB_IS_UP_TO_DATE:hash',
    '061_SYSTEM_DEFAULT:hash',
],
```

## Parallel generation

Starting with the 2.4.0 release, we introduced the `allow_parallel_generation` option for the users that want to eliminate waitings for locks.
It is disabled by default, and we recommend disabling it until you have excessive configurations and/or blocks.

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

## Verify Redis connection

To verify that Redis and Commerce are working together, log in to the server running Redis, open a terminal, and use the Redis monitor command or the ping command.

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
1476826133.883312 [0 127.0.0.1:52369] "hget" "zc:k:ea6_GLOBAL__EVENT_CONFIG_CACHE" "d"
1476826133.898431 [0 127.0.0.1:52369] "hget" "zc:k:ea6_DB_PDO_MYSQL_DDL_STAGING_UPDATE_1" "d"
1476826133.898794 [0 127.0.0.1:52369] "hget" "zc:k:ea6_RESOLVED_STORES_D1BEFA03C79CA0B84ECC488DEA96BC68" "d"
1476826133.905738 [0 127.0.0.1:52369] "hget" "zc:k:ea6_DEFAULT_CONFIG_CACHE_STORE_DEFAULT_10__235__32__1080MAGENTO2" "d"

... more ...

1476826210.634998 [0 127.0.0.1:52439] "hmset" "zc:k:ea6_MVIEW_CONFIG" "d" "a:18:{s:19:\"design_config_dummy\";a:4:{s:7:\"view_id\";s:19:\"design_config_dummy\";s:12:\"action_class\";s:39:\"Magento\\Theme\\Model\\Indexer\\Mview\\Dummy\";s:5:\"group\";s:7:\"indexer\";s:13:\"subscriptions\";a:0:{}}s:14:\"customer_dummy\";a:4:{s:7:\"view_id\";s:14:\"customer_dummy\";s:12:\"action_class\";s:42:\"Magento\\Customer\\Model\\Indexer\\Mview\\Dummy\";s:5:\"group\";s:7:\"indexer\";s:13:\"subscriptions\";a:0:{}}s:13:\"cms_page_grid\";a:4:{s:7:\"view_id\";s:13:\"cms_page_grid\";s:12:\"action_class\";s:43:\"Magento\\Catalog\\Model\\Indexer\\Category\\Flat\";s:5:\"group\";s:7:\"indexer\";s:13:\"subscriptions\";a:1:{s:8:\"cms_page\";a:3:{s:4:\"name\";s:8:\"cms_page\";s:6:\"column\";s:7:\"page_id\";s:18:\"subscription_model\";N;}}}s:21:\"catalog_category_flat\";a:4:{s:7:\"view_id\";s:21:\"catalog_category_flat\";s:12:\"action_class\";s:43:\"Magento\\Catalog\\Model\\Indexer\\Category\\Flat\";s:5:\"group\";s:7:\"indexer\";s:13:\"subscriptions\";a:6:{s:23:\"catalog_category_entity\";a:3:{s:4:\"name\";s:23:\"catalog_category_entity\";s:6:\"column\";s:9:\"entity_id\";s:18:\"subscription_model\";N;}s:31:\"catalog_category_entity_decimal\";a:3:{s:4:\"name\";s:31:\"catalog_category_entity_decimal\";s:6:\"column\";s:9:\"entity_id\";s:18:\"subscription_model\";s:71:\"Magento\\CatalogStaging\\Model\\Mview\\View\\Category\\Attribute\\Subscription\";}s:27:\"catalog_category_entity_int\";a:3:{s:4:\"name\";s:27:\"catalog_category_entity_int\";s:6:\"column\";s:9:\"entity_id\";s:18:\"subscription_model\";s:71:\"Magento\\CatalogStaging\\Model\\Mview\\View\\Category\\Attribute\\Subscription\";}s:28:\"catalog_category_entity_text\";a:3:{s:4:\"name\";s:28:\"catalog_category_entity_text\";s:6:\"column\";s:9:\"entity_id\";s:18:\"subscription_model\";s:71:\"Magento\\CatalogStaging\\Model\\Mview\\View\\Category\\Attribute\\Subscription\";}s:31:\"catalog_category_entity_varchar\";a:3:{s:4:\"name\";s:31:\"catalog_category_entity_varchar\";s:6:\"column\";s:9:\"entity_id\";s:18:\"subscription_model\";s:71:\"Magento\\CatalogStaging\\Model\\Mview\\View\\Category\\Attribute\\Subscription\";}s:32:\"catalog_category_entity_datetime\";a:3:{s:4:\"name\";s:32:\"catalog_category_entity_datetime\";s:6:\"column\";s:9:\"entity_id\";s:18:\"subscription_model\";s:71:\"Magento\\CatalogStaging\\Model\\Mview\\View\\Category\\Attribute\\Subscription\";}}}s:24:\"catalog_category_product\";a:4:{s:7:\"view_id\";s:24:\"catalog_category_product\";s:12:\"action_class\";s:46:\"Magento\\Catalog\\Model\\Indexer\\Category\\Product\";s:5:\"group\";s:7:\"indexer\";s:13:\"subscriptions\";a:2:{s:23:\"catalog_category_entity\";a:3:{s:4:\"name\";s:23:\"catalog_category_entity\";s:6:\"column\"

... more ...
```

### Redis ping command

```bash
redis-cli ping
```

The expected response is: `PONG`

If both commands succeeded, Redis is set up properly.

### Inspecting compressed data

To inspect compressed Session data and Page Cache, the [RESP.app](https://flathub.org/apps/details/app.resp.RESP) supports the automatic decompression of Commerce 2 Session and Page cache and displays PHP session data in a human-readable form.
