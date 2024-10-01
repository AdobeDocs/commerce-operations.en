---
title: Use Redis for session storage
description: Learn how to configure Redis for session storage.
feature: Configuration, Cache
exl-id: f93f500d-65b0-4788-96ab-f1c3d2d40a38
---
# Use Redis for session storage

>[!IMPORTANT]
>
>You must [install Redis](config-redis.md#install-redis) before continuing.


Commerce now provides command-line options to configure Redis session storage. In previous releases, you edited the `<Commerce install dir>app/etc/env.php` file. The command line provides validation and is the recommended configuration method, but you can still edit the `env.php` file.

Run the `setup:config:set` command and specify Redis-specific parameters.

```bash
bin/magento setup:config:set --session-save=redis --session-save-redis-<parameter_name>=<parameter_value>...
```

where

`--session-save=redis` enables Redis session storage. If this feature has already been enabled, omit this parameter.

`--session-save-redis-<parameter_name>=<parameter_value>` is a list of parameter/value pairs that configure session storage:

|Command-line Parameter|Parameter name|Meaning|Default value|
|--- |--- |--- |--- |
|session-save-redis-host|host|Fully qualified hostname, IP address, or absolute path if using UNIX sockets.|localhost|
|session-save-redis-port|port|Redis server listen port.|6379|
|session-save-redis-password|password|Specifies a password if your Redis server requires authentication.|empty|
|session-save-redis-timeout|timeout|Connection timeout, in seconds.|2.5|
|session-save-redis-persistent-id|persistent_identifier|Unique string to enable persistent connections (for example, sess-db0).<br>[Known issues with phpredis and php-fpm](https://github.com/phpredis/phpredis/issues/70).|
|session-save-redis-db|database|Unique Redis database number, which is recommended to protect against data loss.<br><br>**Important**: If you use Redis for more than one type of caching, the database numbers must be different. It is recommended that you assign the default caching database number to 0, the page-caching database number to 1, and the session storage database number to 2.|0|
|session-save-redis-compression-threshold|compression_threshold|Set to 0 to disable compression (recommended when `suhosin.session.encrypt = On`).<br>[Known issue with strings of more than 64 KB](https://github.com/colinmollenhour/Cm_Cache_Backend_Redis/issues/18).|2048|
|session-save-redis-compression-lib|compression_library|Options: gzip, lzf, lz4 or snappy.|gzip|
|session-save-redis-log-level|log_level|Set to any of the following, listed in order from least verbose to most verbose:<ul><li>0 (emergency: only the most severe errors)<li>1 (alert: immediate action required)<li>2 (critical: application component unavailable)<li>3 (error: runtime errors, not critical but must be monitored)<li>4 (warning: additional information, recommended)<li>5 (notice: normal but significant condition)<li>6 (info: informational messages)<li>7 (debug: the most information for development or testing only)</ul>|1|
|session-save-redis-max-concurrency|max_concurrency|Maximum number of processes that can wait for a lock on one session. For large production clusters, set this to at least 10% of the number of PHP processes.|6|
|session-save-redis-break-after-frontend|break_after_frontend|Number of seconds to wait before trying to break the lock for frontend (that is, storefront) session.|5|
|session-save-redis-break-after-adminhtml|break_after_adminhtml|Number of seconds to wait before trying to break the lock for an adminhtml (that is, Admin) session.|30|
|session-save-redis-first-lifetime|first_lifetime|Lifetime, in seconds, of session for non-bots on the first write, or use 0 to disable.|600|
|session-save-redis-bot-first-lifetime|bot_first_lifetime|Lifetime, in seconds, of session for bots on the first write, or use 0 to disable.|60|
|session-save-redis-bot-lifetime|bot_lifetime|Lifetime, in seconds, of session for bots on subsequent writes, or use 0 to disable.|7200|
|session-save-redis-disable-locking|disable_locking|Disable session locking entirely.|0 (false)|
|session-save-redis-min-lifetime|min_lifetime|Minimum session lifetime, in seconds.|60|
|session-save-redis-max-lifetime|max_lifetime|Maximum session lifetime, in seconds.|2592000 (720 hours)|
|session-save-redis-sentinel-master|sentinel_master|Redis Sentinel master name|empty|
|session-save-redis-sentinel-servers|sentinel_servers|List of Redis Sentinel servers, comma separated|empty|
|session-save-redis-sentinel-verify-master|sentinel_verify_master|Verify Redis Sentinel master status flag|0 (false)|
|session-save-redis-sentinel-connect-retries|sentinel_connect_retries|Connection retries for sentinels|5|

## Example

The following example sets Redis as the session data store, sets the host to `127.0.0.1`, sets the log level to 4, and sets the database number to 2. All other parameters are set to the default value.

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
>TTL for session records uses the value for Cookie Lifetime, which is configured in the Admin. If Cookie Lifetime is set to 0 (the default is 3600), then Redis sessions expire in the number of seconds specified in min_lifetime (the default is 60). This discrepancy is due to differences in how Redis and session cookies interpret a lifetime value of 0. If that behavior is not desired, increase the value of min_lifetime.

## Verify Redis connection

To verify that Redis and Commerce are working together, log in to the server running Redis, open a terminal, and use the Redis monitor command or the ping command.

### Redis monitor command

```bash
redis-cli monitor
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

### Redis ping command

```bash
redis-cli ping
```

`PONG` should be the response.

If both commands succeeded, Redis is set up properly.

### Inspecting compressed data

To inspect compressed Session data and Page Cache, the [RESP.app](https://flathub.org/apps/details/app.resp.RESP) supports the automatic decompression of Commerce 2 Session and Page cache and displays PHP session data in a human-readable form.
