---
title: env.php reference
description: Learn about env.php file configuration values and sections in Adobe Commerce. Discover environment settings and configuration options.
exl-id: cf02da8f-e0de-4f0e-bab6-67ae02e9166f
---
# env.php reference

The `env.php` file contains the following sections:

| Name                          | Description                                                     |
|-------------------------------|-----------------------------------------------------------------|
| `backend`                     | Settings for the Admin area                                     |
| `cache`                       | Configure redis page and default cache                          |
| `cache_types`                 | Cache storage settings                                          |
| `consumers_wait_for_messages` | Configure how consumers process messages from the message queue |
| `cron`                        | Enable or disable the cron jobs                                 |
| `crypt`                       | The encryption key for cryptographic functions                  |
| `db`                          | Database connection settings                                    |
| `default_connection`          | Message queues default connection                               |
| `directories`                 | Commerce directories mapping settings                           |
| `downloadable_domains`        | List of downloadable domains                                    |
| `install`                     | The installation date                                           |
| `lock`                        | Lock provider settings                                          |
| `MAGE_MODE`                   | The [application mode](../bootstrap/application-modes.md)       |
| `queue`                       | [Message queues](../queues/manage-message-queues.md) settings                   |
| `resource`                    | Mapping of resource name to a connection                        |
| `session`                     | Session storage data                                            |
| `system`                      | Disables the field for editing in the admin                     |
| `x-frame-options`             | Setting for [x-frame-options][x-frame-options]                  |

## backend

Configure the **frontName** for the Commerce admin url using the `backend` node in env.php.

```conf
'backend' => [
  'frontName' => 'admin'
]
```

## cache

Configure redis page and default caching by using `cache` node in the `env.php` file.

```conf
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
]
```

Learn more in [Redis Configuration](../cache/redis-pg-cache.md).

## cache_types

All the cache types configurations are available from this node.

```conf
'cache_types' => [
  'config' => 1,
  'layout' => 1,
  'block_html' => 1,
  'collections' => 1,
  'reflection' => 1,
  'db_ddl' => 1,
  'compiled_config' => 1,
  'eav' => 1,
  'customer_notification' => 1,
  'config_integration' => 1,
  'config_integration_api' => 1,
  'full_page' => 1,
  'config_webservice' => 1,
  'translate' => 1,
  'vertex' => 1
]
```

Learn more about different [Cache Types](../cli/manage-cache.md).

## consumers_wait_for_messages

Specify whether consumers should continue polling for messages if the number of processed messages is less than the `max_messages` value. The default value is `1`.

```conf
'queue' => [
    'consumers_wait_for_messages' => 1
]
```

The following options are available:

- `1`—Consumers continue to process messages from the message queue until reaching the `max_messages` value specified in the `env.php` file before closing the TCP connection and terminating the consumer process. If the queue empties before reaching the `max_messages` value, the consumer waits for more messages to arrive.

  We recommend this setting for large merchants because a constant message flow is expected and delays in processing are undesirable.

- `0`—Consumers process available messages in the queue, close the TCP connection, and terminate. Consumers do not wait for additional messages to enter the queue, even if the number of processed messages is less than the `max_messages` value specified in the `env.php` file. This can help prevent issues with cron jobs caused by long delays in message queue processing.

  We recommend this setting for smaller merchants that do not expect a constant message flow and prefer to conserve computing resources in exchange for minor processing delays when there could be no messages for days.

## cron

Enable or disable cron jobs for the Commerce application. By default, cron jobs are enabled. To disable them, add the `cron` configuration to the `env.php` file and set the value to `0`.

```conf
'cron' => [
  'enabled' => 0
]
```

>[!WARNING]
>
>Be careful when you disable cron jobs. When they are disabled, essential processes required by the Commerce application will not run.

Learn more about [Crons](../cli/configure-cron-jobs.md).

## crypt

Commerce uses an encryption key to protect passwords and other sensitive data. This key is generated during the installation process.

```conf
'crypt' => [
  'key' => '63d409380ccb1182bfb27c231b732f05'
]
```

Learn more about [Encryption Key](https://experienceleague.adobe.com/en/docs/commerce-admin/systems/security/encryption-key) in the _Commerce User guide_.

## db

All database configurations are available in this node.

```conf
'db' => [
  'table_prefix' => '',
  'connection' => [
    'default' => [
      'host' => 'localhost',
      'dbname' => 'magento_db',
      'username' => 'root',
      'password' => 'admin123',
      'model' => 'mysql4',
      'engine' => 'innodb',
      'initStatements' => 'SET NAMES utf8;',
      'active' => '1'
    ]
  ]
]
```

## default_connection

Defines the default connection for message queues. The value can be `db`, `amqp`, `stomp`, or a custom queue system like `redismq`. If you specify any value other than `db`, the message queue software must be installed and configured first. Otherwise, messages will not be processed correctly.

```conf
'queue' => [
    'default_connection' => 'amqp'
]
```

For STOMP (ActiveMQ Artemis):

```conf
'queue' => [
    'default_connection' => 'stomp'
]
```

If `queue/default_connection` is specified in the system `env.php` file, this connection is used for all message queues through the system, unless a specific connection is defined in a `queue_topology.xml`, `queue_publisher.xml` or `queue_consumer.xml` file.
For example, if `queue/default_connection` is `amqp` in `env.php` but a `db` connection is specified in the queue configuration XML files of a module, the module will use MySQL as a message broker.

## directories

Optional directory mapping options that need to be set when the web server is configured to serve Commerce app from the `/pub` directory for [improved security](../../installation/tutorials/docroot.md).

```conf
'directories' => [
    'document_root_is_pub' => true
]
```

## downloadable_domains

A list of downloadable domains available in this node. Additional domains can be added, removed, or listed using CLI commands.

```conf
'downloadable_domains' => [
    'local.vanilla.com'
]
```

Learn more about [Downloadable Domains](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/cli-reference/commerce-on-premises#downloadabledomainsadd).

## install

The installation date of Commerce application.

```conf
'install' => [
  'date' => 'Tue, 23 Apr 2019 09:31:07 +0000'
]
```

## lock

Lock provider settings are configured using the `lock` node.

Learn more about [Lock Provider Configuration](../../installation/tutorials/lock-provider.md).

## MAGE_MODE

The deploy mode can be configured in this node.

```conf
'MAGE_MODE' => 'developer'
```

Learn more about [application Modes](../cli/set-mode.md).

## queue

Message queue configurations are available in this node. You can configure RabbitMQ (AMQP) or ActiveMQ Artemis (STOMP) as your message broker.

```conf
'queue' => [
  'topics' => [
    'customer.created' => [publisher="default-broker"],
    'order.created' => [publisher="default-broker"],
  ]
]
```

Learn more about [Message Queue][message-queue].

## resource

Resource configuration settings are available in this node.

```conf
'resource' => [
  'default_setup' => [
    'connection' => 'default'
  ]
]
```

## session

Session configurations are stored in the `session` node.

```conf
'session' => [
  'save' => 'files'
],
```

Learn more about [Session](../storage/sessions.md).

## x-frame-options

x-frame-options header can be configured using this node.

```conf
'x-frame-options' => 'SAMEORIGIN'
```

Learn more about [x-frame-options](../security/xframe-options.md).

## system

Using this node, Commerce locks the configuration values in the `env.php` file and then disables the field in the admin.

```conf
'system' => [
  'default' => [
    'web' => [
      'secure' => [
          'base_url' => 'https://magento.test/'
      ]
    ]
  ]
```

Learn more in [env-php-config-set](../cli/set-configuration-values.md).

<!-- Link definitions -->

[message-queue]: https://developer.adobe.com/commerce/php/development/components/message-queues/


## Add variables to file configuration

You can set or override every configuration option (variable with value) with operating system (OS)-level environment variables.

The `env.php` configuration is stored in an array with nested levels. To convert a nested array path to a string for OS environment variables, concatenate each key in the path with double underscore characters `__`, uppercased, and prefixed with `MAGENTO_DC_`.

For example, let's convert the session save handler from `env.php` configuration to an OS environment variable.

```conf
'session' => [
  'save' => 'files'
],
```

Concatenated with `__` and uppercased keys will become `SESSION__SAVE`.

Then, we prefix it with `MAGENTO_DC_` to get the resulting OS environment variable name `MAGENTO_DC_SESSION__SAVE`.

```shell
export MAGENTO_DC_SESSION__SAVE=files
```

As another example, let's convert a scalar `env.php` configuration option path.

```conf
'x-frame-options' => 'SAMEORIGIN'
```

>[!INFO]
>
>While the variable name should be uppercased, the value is case sensitive and should be preserved as documented.

We simply uppercase it and prefix with `MAGENTO_DC_` to receive the final OS environment variable name `MAGENTO_DC_X-FRAME-OPTIONS`.

```shell
export MAGENTO_DC_X-FRAME-OPTIONS=SAMEORIGIN
```

>[!INFO]
>
>Note that `env.php` content will have priority over the OS environment variables.

## Override file configuration with variables

To override the existing `env.php` configuration options with an OS environment variable, the array element of the configuration must be JSON encoded and set as a value of the `MAGENTO_DC__OVERRIDE` OS variable.

When `MAGENTO_DC__OVERRIDE` is set, the Commerce framework bypasses the corresponding values in the `env.php` file and reads the configuration directly from the environment variable. The values in the `env.php` file remain unchanged but are ignored for the overridden configuration sections.

>[!IMPORTANT]
>
>The `MAGENTO_DC__OVERRIDE` variable completely bypasses the specified configuration sections in the `env.php` file. This behavior is different from individual `MAGENTO_DC_` variables, which have lower priority than values in the `env.php` file.

If you need to override multiple configuration options, assemble them all in a single array before JSON encoding.

For example, let's override the following `env.php` configurations:

```conf
'session' => [
  'save' => 'files'
],
'x-frame-options' => 'SAMEORIGIN'
```

The JSON encoded text of the above array would be
`{"session":{"save":"files"},"x-frame-options":"SAMEORIGIN"}`.

Now, set it as the value of the `MAGENTO_DC__OVERRIDE` OS variable.

```shell
export MAGENTO_DC__OVERRIDE='{"session":{"save":"files"},"x-frame-options":"SAMEORIGIN"}'
```

>[!INFO]
>
>Ensure the JSON encoded array is properly quoted and/or escaped if needed, to prevent the OS from corrupting the encoded string.