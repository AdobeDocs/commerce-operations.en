---
title: Use Valkey for session storage
description: Learn how to configure Valkey for session storage.
feature: Configuration, Cache
exl-id: 986ddb5c-8fc5-4210-8a41-a29e3a7625b7
---

# Use Valkey for session storage

>[!IMPORTANT]
>
>You must [install Valkey](config-valkey.md#install-valkey) before continuing.

Adobe Commerce provides command-line options to configure Valkey session storage.

Run the `setup:config:set` command and specify Valkey-specific parameters.

```bash
bin/magento setup:config:set --session-save=valkey --session-save-valkey-<parameter_name>=<parameter_value>...
```

- `--session-save=valkey` enables Valkey session storage. If this feature is already enabled, omit this parameter.

- `--session-save-valkey-<parameter_name>=<parameter_value>` is a list of parameter/value pairs that configure session storage:


>[!NOTE]
>
>Starting with **Adobe Commerce 2.4.9-alpha2**, **Valkey** has officially replaced Redis in CLI tooling due to changes in licensing. Valkey is a fork of Redis and maintains near-identical functionality. For **versions 2.4.8 and earlier**, the CLI commands used to configure Valkey remain the same as those for Redis, ensuring seamless backward compatibility and simplifying migration or dual-environment support. Please refer below command and specify Valkey-specific value.

```bash
bin/magento setup:config:set --session-save=redis --session-save-redis-<parameter_name>=<parameter_value>...
```

| Command-line Parameter                       |Parameter name| Meaning                                                                                                                                                                                                                                                                                                                                                                                                                                                       |Default value|
|----------------------------------------------|--- |---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--- |
| session-save-valkey-host                     |host| Fully qualified hostname, IP address, or absolute path if using UNIX sockets.                                                                                                                                                                                                                                                                                                                                                                                 |localhost|
| session-save-valkey-port                     |port| Valkey server listen port.                                                                                                                                                                                                                                                                                                                                                                                                                                    |6379|
| session-save-valkey-password                 |password| Specifies a password if your Valkey server requires authentication.                                                                                                                                                                                                                                                                                                                                                                                           |empty|
| session-save-valkey-timeout                  |timeout| Connection timeout, in seconds.                                                                                                                                                                                                                                                                                                                                                                                                                               |2.5|
| session-save-valkey-persistent-id            |persistent_identifier| Unique string to enable persistent connections (for example, sess-db0).<br>[Known issues with phpredis and php-fpm](https://github.com/phpredis/phpredis/issues/70).                                                                                                                                                                                                                                                                                          |
| session-save-valkey-db                       |database| Unique Valkey database number, which is recommended to protect against data loss.<br><br>**Important**: If you use Valkey for more than one type of caching, the database numbers must be different. It is recommended that you assign the default caching database number to `0`, the page-caching database number to `1`, and the session storage database number to `2`.                                                                                         |0|
| session-save-valkey-compression-threshold    |compression_threshold| Set to `0` to disable compression (recommended when `suhosin.session.encrypt = On`).                                                                                                                                                                                                                                                                                                      |2048|
| session-save-valkey-compression-lib          |compression_library| Options: gzip, lzf, lz4 or snappy.                                                                                                                                                                                                                                                                                                                                                                                                                            |gzip|
| session-save-valkey-log-level                |log_level| Set to any of the following, listed in order from least verbose to most verbose:<ul><li>0 (emergency: only the most severe errors)<li>1 (alert: immediate action required)<li>2 (critical: application component unavailable)<li>3 (error: runtime errors, not critical but must be monitored)<li>4 (warning: additional information, recommended)<li>5 (notice: normal but significant condition)<li>6 (info: informational messages)<li>7 (debug: the most information for development or testing only)</ul> |1|
| session-save-valkey-max-concurrency          |max_concurrency| Maximum number of processes that can wait for a lock on one session. For large production clusters, set this to at least 10% of the number of PHP processes.                                                                                                                                                                                                                                                                                                  |6|
| session-save-valkey-break-after-frontend     |break_after_frontend| Number of seconds to wait before trying to break the lock for frontend (that is, storefront) session.                                                                                                                                                                                                                                                                                                                                                         |5|
| session-save-valkey-break-after-adminhtml    |break_after_adminhtml| Number of seconds to wait before trying to break the lock for an adminhtml (that is, Admin) session.                                                                                                                                                                                                                                                                                                                                                          |30|
| session-save-valkey-first-lifetime           |first_lifetime| Lifetime, in seconds, of session for non-bots on the first write, or use `0` to disable.                                                                                                                                                                                                                                                                                                                                                                        |600|
| session-save-valkey-bot-first-lifetime       |bot_first_lifetime| Lifetime, in seconds, of session for bots on the first write, or use `0` to disable.                                                                                                                                                                                                                                                                                                                                                                            |60|
| session-save-valkey-bot-lifetime             |bot_lifetime| Lifetime, in seconds, of session for bots on subsequent writes, or use `0` to disable.                                                                                                                                                                                                                                                                                                                                                                          |7200|
| session-save-valkey-disable-locking          |disable_locking| Disable session locking entirely.                                                                                                                                                                                                                                                                                                                                                                                                                             |0 (false)|
| session-save-valkey-min-lifetime             |min_lifetime| Minimum session lifetime, in seconds.                                                                                                                                                                                                                                                                                                                                                                                                                         |60|
| session-save-valkey-max-lifetime             |max_lifetime| Maximum session lifetime, in seconds.                                                                                                                                                                                                                                                                                                                                                                                                                         |2592000 (720 hours)|
| session-save-valkey-sentinel-master          |sentinel_master| Valkey Sentinel master name.                                                                                                                                                                                                                                                                                                                                                                                                                                   |empty|
| session-save-valkey-sentinel-servers         |sentinel_servers| List of Valkey Sentinel servers, comma separated.                                                                                                                                                                                                                                                                                                                                                                                                              |empty|
| session-save-valkey-sentinel-verify-master   |sentinel_verify_master| Verify Valkey Sentinel master status flag.                                                                                                                                                                                                                                                                                                                                                                                                                     |0 (false)|
| session-save-valkey-sentinel-connect-retries |sentinel_connect_retries| Connection retries for sentinels.                                                                                                                                                                                                                                                                                                                                                                                                                              |5|

## Example

The following example sets Valkey as the session data store, sets the host to `127.0.0.1`, sets the log level to `4`, and sets the database number to `2`. All other parameters are set to the default value.

```bash
bin/magento setup:config:set --session-save=valkey --session-save-valkey-host=127.0.0.1 --session-save-valkey-log-level=4 --session-save-valkey-db=2
```

>[!NOTE]
>
>Starting with **Adobe Commerce 2.4.9**, **Valkey** has officially replaced Redis in CLI tooling due to changes in licensing. Valkey is a fork of Redis and maintains near-identical functionality. For **versions 2.4.8 and earlier**, the CLI commands used to configure Valkey remain the same as those for Redis, ensuring seamless backward compatibility and simplifying migration or dual-environment support. Please refer below command and specify Valkey-specific value.

```bash
bin/magento setup:config:set --session-save=redis --session-save-redis-host=127.0.0.1 --session-save-redis-log-level=4 --session-save-redis-db=2
```

### Result

Commerce adds lines similar to the following to `<magento_root>app/etc/env.php`:

```php
'session' => [
    'save' => 'valkey',
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
>TTL for session records uses the value for Cookie Lifetime, which is configured in the Admin. If Cookie Lifetime is set to `0` (the default is `3600`), then Valkey sessions expire in the number of seconds specified in min_lifetime (the default is `60`). This discrepancy is due to differences in how Valkey and session cookies interpret a lifetime value of `0`. If that behavior is not desired, increase the value of min_lifetime.

## Verify Valkey connection

To verify that Valkey and Commerce are working together properly, log in to the server where Valkey is running, open a terminal, and use either the `valkey-cli monitor` command or the `redis-cli ping` command.

### Valkey monitor command

```bash
valkey-cli monitor
```

Sample session-storage output:

```
1476824834.187250 [0 127.0.0.1:52353] "select" "0"
1476824834.187587 [0 127.0.0.1:52353] "hmget" "sess_sgmeh2k3t7obl2tsot3h2ss0p1" "data" "writes"
1476824834.187939 [0 127.0.0.1:52353] "expire" "sess_sgmeh2k3t7obl2tsot3h2ss0p1" "1200"
1476824834.257226 [0 127.0.0.1:52353] "select" "0"
1476824834.257239 [0 127.0.0.1:52353] "hmset" "sess_sgmeh2k3t7obl2tsot3h2ss0p1" "data" "_session_validator_data|a:4:{s:11:\"remote_addr\";s:12:\"10.235.34.14\";s:8:\"http_via\";s:0:\"\";s:20:\"http_x_forwarded_for\";s:0:\"\";s:15:\"http_user_agent\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36\";}_session_hosts|a:1:{s:12:\"10.235.32.10\";b:1;}admin|a:0:{}default|a:2:{s:9:\"_form_key\";s:16:\"e331ugBN7vRjGMgk\";s:12:\"visitor_data\";a:3:{s:13:\"last_visit_at\";s:19:\"2016-10-18 21:06:37\";s:10:\"session_id\";s:26:\"sgmeh2k3t7obl2tsot3h2ss0p1\";s:10:\"visitor_id\";s:1:\"9\";}}adminhtml|a:0:{}customer_base|a:1:{s:20:\"customer_segment_ids\";a:1:{i:1;a:0:{}}}checkout|a:0:{}" "lock" "0"
... more ...
```

### Valkey ping command

```bash
valkey-cli ping
```

The expected response is: `PONG`.

If both commands succeeded, Valkey is set up properly.

### Inspecting compressed data

To inspect compressed session data and the page cache, the [RESP.app](https://flathub.org/apps/app.resp.RESP) supports automatic decompression of Commerce 2 session and page cache and displays PHP session data in a human-readable format.
