---
title: Use Dragonfly for session storage
description: Learn how to configure Dragonfly for session storage in Adobe Commerce. Discover setup steps, configuration options, and performance optimization techniques.
feature: Configuration, Cache
---

# Use Dragonfly for session storage

>[!IMPORTANT]
>
>You must [install Dragonfly](config-dragonfly.md#install-dragonfly) before continuing.

Adobe Commerce provides command-line options to configure session storage using Dragonfly. Because Dragonfly is fully compatible with Redis, you can use the Redis session configuration.

Run the `setup:config:set` command and specify Redis-specific parameters.

```bash
bin/magento setup:config:set --session-save=redis --session-save-redis-<parameter_name>=<parameter_value>...
```

With the following parameters:

- `--session-save=redis` enables Redis session storage, which is compatible with Dragonfly. If this feature is already enabled, omit this parameter.

- `--session-save-redis-<parameter_name>=<parameter_value>` is a list of parameter/value pairs that configure session storage:

| Command-line Parameter | Parameter name | Meaning | Default value |
|---|---|---|---|
| session-save-redis-host | host | Fully qualified hostname, IP address, or absolute path if using UNIX sockets. | localhost |
| session-save-redis-port | port | Dragonfly server listen port. | 6379 |
| session-save-redis-password | password | Specifies a password if your Dragonfly server requires authentication. | empty |
| session-save-redis-timeout | timeout | Connection timeout, in seconds. | 2.5 |
| session-save-redis-persistent-id | persistent_identifier | Unique string to enable persistent connections (for example, sess-db0).<br>[Known issues with phpredis and php-fpm](https://github.com/phpredis/phpredis/issues/70). | |
| session-save-redis-db | database | Unique Dragonfly database number, which is recommended to protect against data loss.<br><br>**Important**: If you use Dragonfly for more than one type of caching, the database numbers must be different. It is recommended that you assign the default caching database number to `0`, the page-caching database number to `1`, and the session storage database number to `2`. | 0 |
| session-save-redis-compression-threshold | compression_threshold | Set to `0` to disable compression (recommended when `suhosin.session.encrypt = On`). | 2048 |
| session-save-redis-compression-lib | compression_library | Options: gzip, lzf, lz4 or snappy. | gzip |
| session-save-redis-log-level | log_level | Set to any of the following, listed in order from least verbose to most verbose:<ul><li>0 (emergency: only the most severe errors)<li>1 (alert: immediate action required)<li>2 (critical: application component unavailable)<li>3 (error: runtime errors, not critical but must be monitored)<li>4 (warning: additional information, recommended)<li>5 (notice: normal but significant condition)<li>6 (info: informational messages)<li>7 (debug: the most information for development or testing only)</ul> | 1 |
| session-save-redis-max-concurrency | max_concurrency | Maximum number of processes that can wait for a lock on one session. For large production clusters, set this to at least 10% of the number of PHP processes. | 6 |
| session-save-redis-break-after-frontend | break_after_frontend | Number of seconds to wait before trying to break the lock for frontend (that is, storefront) session. | 5 |
| session-save-redis-break-after-adminhtml | break_after_adminhtml | Number of seconds to wait before trying to break the lock for an adminhtml (that is, Admin) session. | 30 |
| session-save-redis-first-lifetime | first_lifetime | Lifetime, in seconds, of session for non-bots on the first write, or use `0` to disable. | 600 |
| session-save-redis-bot-first-lifetime | bot_first_lifetime | Lifetime, in seconds, of session for bots on the first write, or use `0` to disable. | 60 |
| session-save-redis-bot-lifetime | bot_lifetime | Lifetime, in seconds, of session for bots on subsequent writes, or use `0` to disable. | 7200 |
| session-save-redis-disable-locking | disable_locking | Disable session locking entirely. | 0 (false) |
| session-save-redis-min-lifetime | min_lifetime | Minimum session lifetime, in seconds. | 60 |
| session-save-redis-max-lifetime | max_lifetime | Maximum session lifetime, in seconds. | 2592000 (720 hours) |

>[!NOTE]
>
>Redis Sentinel parameters (`sentinel_master`, `sentinel_servers`, etc.) are not applicable for Dragonfly. Dragonfly uses its own replication mechanism. See the [Dragonfly replication documentation](https://www.dragonflydb.io/docs/managing-dragonfly/replication) for high availability configuration.

## Example

The following example sets Dragonfly as the session data store, sets the host to `127.0.0.1`, sets the log level to `4`, and sets the database number to `2`. All other parameters are set to the default value.

```bash
bin/magento setup:config:set --session-save=redis --session-save-redis-host=127.0.0.1 --session-save-redis-log-level=4 --session-save-redis-db=2
```

### Result

Commerce adds lines similar to the following to `<magento_root>app/etc/env.php`:

```php
'session' => [
    'save' => 'redis',
    'redis' => [
        'host' => '127.0.0.1',
        'port' => '6379',
        'password' => '',
        'timeout' => '2.5',
        'persistent_identifier' => '',
        'database' => '2',
        'compression_threshold' => '2048',
        'compression_library' => 'gzip',
        'log_level' => '4',
        'max_concurrency' => '6',
        'break_after_frontend' => '5',
        'break_after_adminhtml' => '30',
        'first_lifetime' => '600',
        'bot_first_lifetime' => '60',
        'bot_lifetime' => '7200',
        'disable_locking' => '0',
        'min_lifetime' => '60',
        'max_lifetime' => '2592000',
    ],
],
```

>[!INFO]
>
>TTL for session records uses the value for Cookie Lifetime, which is configured in the Admin. If Cookie Lifetime is set to `0` (the default is `3600`), then sessions expire in the number of seconds specified in min_lifetime (the default is `60`). This discrepancy is due to differences in how Dragonfly and session cookies interpret a lifetime value of `0`. If that behavior is not desired, increase the value of min_lifetime.

## Verify Dragonfly connection

To verify that Dragonfly and Commerce are working together properly, log in to the server where Dragonfly is running, open a terminal, and use the `redis-cli monitor` command or the `redis-cli ping` command.

### Monitor command

```bash
redis-cli monitor
```

This displays all commands processed by the server in real-time, allowing you to verify that Commerce is communicating with Dragonfly.

### Ping command

```bash
redis-cli ping
```

The expected response is: `PONG`.

If both commands succeeded, Dragonfly is set up properly.

### Inspecting compressed data

To inspect compressed session data and the page cache, the [RESP.app](https://resp.app/) supports automatic decompression of Commerce 2 session and page cache and displays PHP session data in a human-readable format.
