---
title: Best Practices for Redis and Valkey Service Configuration
description: Learn how to configure Redis and Valkey services for Adobe Commerce. Improve caching performance with L2 cache, replicas, stale cache, and session separation.
solution: Commerce
role: Developer, Admin
level: Intermediate
feature: Best Practices, Cache
feature-set: Commerce
topic: Performance
exl-id: 8b3c9167-d2fa-4894-af45-6924eb983487
---

# Best practices for Redis and Valkey service configuration

Use these recommendations to configure Redis or Valkey for Adobe Commerce caching and sessions.

- Configure L2 cache
- Enable Redis or Valkey replica connection
- Preload keys
- Enable stale cache
- Separate cache and session instances
- Compress the cache with `gzip`
- Review a Redis configuration example


## Configure L2 cache

Configure the L2 cache by setting the `REDIS_BACKEND` or `VALKEY_BACKEND` deployment variable in the `.magento.env.yaml` configuration file.

>[!BEGINTABS]

>[!TAB Redis configuration]

For Redis, use:

```yaml
stage:
  deploy:
    REDIS_BACKEND: '\Magento\Framework\Cache\Backend\RemoteSynchronizedCache'
```

For environment configuration on Cloud infrastructure, see [`REDIS_BACKEND`](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/configure/env/stage/variables-deploy.html#redis_backend) configuration reference in the _Commerce on Cloud Infrastructure Guide_.

For on-premises installations, see [Configure Redis page caching](../../../configuration/cache/redis-pg-cache.md#configure-redis-page-caching) or [Configure Valkey](../../../configuration/cache/config-valkey.md) in the _Configuration Guide_.

>[!TAB Valkey configuration]

For Valkey, use:

```yaml
stage:
  deploy:
    VALKEY_BACKEND: '\Magento\Framework\Cache\Backend\RemoteSynchronizedCache'
```

For environment configuration on cloud infrastructure, see [`VALKEY_BACKEND`](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/configure/env/stage/variables-deploy#valkey_backend)configuration reference in the _Commerce on Cloud Infrastructure Guide_.

For on-premises installations, see [Configure Valkey](../../../configuration/cache/config-valkey.md) in the _Configuration Guide_.

>[!ENDTABS]

>[!NOTE]
>
>For Commerce on Cloud infrastructure environments, verify that you are using the latest version of the `ece-tools` package. If not, [upgrade to the latest version](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/dev-tools/ece-tools/update-package.html). You can check the version installed in your local environment using the `composer show magento/ece-tools` CLI command.


### L2 cache memory sizing (Adobe Commerce Cloud)

L2 cache uses a [temporary file system](https://en.wikipedia.org/wiki/Tmpfs) as a storage mechanism. Unlike specialized key-value database systems, a temporary file system does not have a key eviction policy to control memory usage.

The lack of memory usage control can cause the L2 cache memory usage to grow over time.

To avoid memory exhaustion of L2 cache implementations, Adobe Commerce clears the storage when a certain threshold is reached. The default threshold value is 95%.

Adjust the maximum L2 cache memory usage based on your project requirements. Use one of the following methods to configure cache memory sizing:

- Create a support ticket to request size changes of the `/dev/shm` mount.
- Adjust the `cleanup_percentage` property at the application level to cap the maximum filling percentage of the storage. The remaining free memory can be used by other services.
   You can adjust the configuration in the deployment configuration under the cache configuration group `cache/frontend/default/backend_options/cleanup_percentage`.

>[!NOTE]
>
>The `cleanup_percentage` configurable option was introduced in Adobe Commerce 2.4.4.

The following code shows an example configuration in the `.magento.env.yaml` file:

```yaml
stage:
  deploy:
    REDIS_BACKEND: '\Magento\Framework\Cache\Backend\RemoteSynchronizedCache'
    CACHE_CONFIGURATION:
      _merge: true
      frontend:
        default:
          backend_options:
            cleanup_percentage: 90
```

Cache requirements vary based on your project configuration and custom third-party code. Size L2 cache memory so that the cache can operate without frequent threshold hits.

Ideally, L2 cache memory usage stabilizes below the threshold to avoid frequent storage clearing.

You can check L2 cache storage memory usage on each node of the cluster by running the following CLI command and reviewing the `/dev/shm` line.

```bash
df -h /dev/shm
```

Usage can vary across nodes, but it should converge to a similar value.

## Enable Redis or Valkey replica connection

Enable a replica connection in the `.magento.env.yaml` file to let Magento read cache entries from the replica endpoint while continuing to write to the primary endpoint. This configuration can reduce read load on the primary cache service and improve resilience during short spikes.

>[!BEGINTABS]

>[!TAB Redis configuration]

For Redis, use:

```yaml
stage:
  deploy:
    REDIS_USE_SLAVE_CONNECTION: true
```

For environment configuration on Commerce Cloud infrastructure, see [REDIS_USE_SLAVE_CONNECTION](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/configure/env/stage/variables-deploy.html#redis_use_slave_connection) in the _Commerce on Cloud Infrastructure Guide_.

For Adobe Commerce on-premises installations, configure the new Redis cache implementation using the `bin/magento:setup` commands. See [Use Redis for default cache](../../../configuration/cache/redis-pg-cache.md#configure-redis-page-caching) in the _Configuration Guide_.

>[!TAB Valkey configuration]

For Valkey, use:

```yaml
stage:
  deploy:
    VALKEY_USE_SLAVE_CONNECTION: true
```

For environment configuration on Commerce Cloud infrastructure, see [VALKEY_USE_SLAVE_CONNECTION](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/configure/env/stage/variables-deploy.html#valkey_use_slave_connection) in the _Commerce on Cloud Infrastructure Guide_.

For Adobe Commerce on-premises installations, configure the new Valkey cache implementation using the `bin/magento:setup` commands. See [Configure Valkey](../../../configuration/cache/config-valkey.md) in the _Configuration Guide_.

>[!ENDTABS]

## Preload keys

Magento usually loads cache entries from Redis and Valkey one key at a time. The preload feature lets you provide a list of frequently used keys that Magento fetches in a single pipeline on first access during a request. Magento then keeps the fetched values in PHP memory for the rest of that request, which reduces repeated round trips to Redis or Valkey and improves bootstrap performance for those keys.

You can identify frequently used keys by monitoring active commands on Redis or Valkey:

>[!BEGINTABS]

>[!TAB Redis preload key configuration]

The preload keys are configured in the `.magento.env.yaml` configuration file.

```yaml
stage:
  deploy:
    REDIS_BACKEND: '\Magento\Framework\Cache\Backend\RemoteSynchronizedCache'
    CACHE_CONFIGURATION:
      _merge: true
      frontend:
        default:
          id_prefix: '061_' # Prefix for keys to be preloaded, it can be any random string
          backend_options:
            preload_keys: # List the keys to be preloaded
              - '061_EAV_ENTITY_TYPES:hash' # The key name must start with the id_prefix set above
              - '061_GLOBAL_PLUGIN_LIST:hash'
              - '061_DB_IS_UP_TO_DATE:hash'
              - '061_SYSTEM_DEFAULT:hash'
```

To list the keys, run the following command:

```terminal
redis-cli -p 6370 -n 1 MONITOR > /tmp/list.keys
```

After 10 seconds, press **[!UICONTROL Ctrl+C]**. Then run the following command:

```terminal
cat /tmp/list.keys | grep "HGET" | awk '{print $5}' | sort | uniq -c | sort -nr | head -n 50
```

This log lists the keys you can preload. To see the content of a key, run the following command:

```terminal
redis-cli -p 6370 -n 1 hgetall "<key_name>"
```

For on-premises installations, see [Redis preload feature](../../../configuration/cache/redis-pg-cache.md#redis-preload-feature) in the _Configuration Guide_.

>[!TAB Valkey preload key configuration]

The preload keys are configured in the `.magento.env.yaml` configuration file.

```yaml
stage:
  deploy:
    VALKEY_BACKEND: '\Magento\Framework\Cache\Backend\RemoteSynchronizedCache'
    CACHE_CONFIGURATION:
      _merge: true
      frontend:
        default:
          id_prefix: '061_' # Prefix for keys to be preloaded, it can be any random string
          backend_options:
            preload_keys: # List the keys to be preloaded
              - '061_EAV_ENTITY_TYPES:hash' # The key name must start with the id_prefix set above
              - '061_GLOBAL_PLUGIN_LIST:hash'
              - '061_DB_IS_UP_TO_DATE:hash'
              - '061_SYSTEM_DEFAULT:hash'
```

To list the keys, run the following command:

```terminal
valkey-cli -p 6370 -n 1 MONITOR > /tmp/list.keys
```

After 10 seconds, press **[!UICONTROL Ctrl+C]**. Then run the following command:

```terminal
cat /tmp/list.keys| grep "HGET"| awk '{print $5}'|sort |uniq -c | sort -nr|head -n50
```

This log lists the keys you can preload. To see the content of a key, run the following command:

```terminal
valkey-cli -p 6370 -n 1 hgetall "<key_name>"
```

For on-premises installations, see [Valkey preload feature](../../../configuration/cache/valkey-pg-cache.md#valkey-preload-feature) in the _Configuration Guide_.

>[!ENDTABS]

## Enable stale cache

Stale cache is an L2 cache feature of `RemoteSynchronizedCache`. When enabled, Magento can serve an existing local cache value from `/dev/shm` while another process regenerates the same entry instead of making every concurrent request wait. This configuration reduces cache stampedes and lock contention during regeneration of expensive cache entries.

### How it works

With `RemoteSynchronizedCache`, Magento maintains two copies of each cache entry: a local copy in `/dev/shm` and a remote copy in Redis or Valkey. When a cache entry is no longer available remotely and another process is already regenerating it, stale cache allows concurrent requests to receive the previous local value instead of waiting until the fresh value is written.

To enable stale cache, configure it in the `.magento.env.yaml` file.

>[!BEGINTABS]

>[!TAB Configure stale cache for Redis]

For Redis:

```yaml
stage:
  deploy:
    REDIS_BACKEND: '\Magento\Framework\Cache\Backend\RemoteSynchronizedCache'
    CACHE_CONFIGURATION:
      _merge: true
      frontend:
        default:
          backend_options:
            use_stale_cache: true
```

>[!TAB Configure stale cache for Valkey]

For Valkey:

```yaml
stage:
  deploy:
    VALKEY_BACKEND: '\Magento\Framework\Cache\Backend\RemoteSynchronizedCache'
    CACHE_CONFIGURATION:
      _merge: true
      frontend:
        default:
          backend_options:
            use_stale_cache: true
```

>[!ENDTABS]

>[!NOTE]
>
>The `full_page` cache type is not relevant to Adobe Commerce on Cloud infrastructure projects because they use [Fastly](https://experienceleague.adobe.com/en/docs/commerce-cloud-service/user-guide/cdn/fastly).

For on-premises installations, see [Stale cache options](../../../configuration/cache/level-two-cache.md#stale-cache-options) in the _Configuration Guide_.

>[!WARNING]
>
>The configuration above enables stale cache on the `default` cache frontend, which applies stale-cache behavior to all cache entries that use that frontend. Magento core cache types generally work with this setting. However, if your project includes custom code or extensions that write to the cache through the generic `\Magento\Framework\App\Cache` API, for example `$this->cache->save()`, without using a dedicated cache frontend, those entries will also be eligible to serve the previous local value during regeneration.
>
>
>If this causes unexpected behavior in your customizations, keep stale cache disabled on `default` and enable it only for selected cache types, similar to [how it is done on-premises](../../../configuration/cache/level-two-cache.md#stale-cache-options), but configure it in config.php instead of env.php.

## Separate cache and session instances

Separate cache and session storage so that you can manage them independently. This separation prevents cache issues from affecting sessions, which can impact revenue. Each Redis or Valkey instance runs on its own core, which improves performance.

To separate cache and session instances:

1. Update the `.magento/services.yaml` configuration file.

>[!BEGINTABS]

>[!TAB Redis configuration]

For Redis, use:

```yaml
mysql:
  type: mysql:10.4
  disk: 35000

redis:
  type: redis:6.0

redis-session: # This is for the new Redis instance
  type: redis:6.0

search:
  type: elasticsearch:7.9
  disk: 5000

rabbitmq:
  type: rabbitmq:3.8
  disk: 2048
```

>[!TAB Valkey configuration]

For Valkey, use:

```yaml
mysql:
  type: mysql:10.4
  disk: 35000

valkey:
  type: valkey:8.0

valkey-session: # This is for the new Valkey instance
  type: valkey:8.0

search:
  type: elasticsearch:7.9
  disk: 5000

rabbitmq:
  type: rabbitmq:3.8
  disk: 2048
```

>[!ENDTABS]

1. Update the `.magento.app.yaml` configuration file.

>[!BEGINTABS]

>[!TAB Redis configuration]

For Redis, use:

```yaml
relationships:
  database: "mysql:mysql"
  redis: "redis:redis"
  redis-session: "redis-session:redis"   # Relationship of the new Redis instance
  search: "search:elasticsearch"
  rabbitmq: "rabbitmq:rabbitmq"
```

>[!TAB Valkey configuration]

For Valkey, use:

```yaml
relationships:
  database: "mysql:mysql"
  valkey: "valkey:valkey"
  valkey-session: "valkey-session:valkey"   # Relationship of the new Valkey instance
  search: "search:elasticsearch"
  rabbitmq: "rabbitmq:rabbitmq"
```

>[!ENDTABS]

1. Submit an [Adobe Commerce Support ticket](https://experienceleague.adobe.com/docs/commerce-knowledge-base/kb/help-center-guide/magento-help-center-user-guide.html#submit-ticket) to request a new Redis or Valkey instance dedicated to sessions on Production and Staging environments. Include the updated `.magento/services.yaml` and `.magento.app.yaml` configuration files.

   This update does not cause any downtime, but it requires a deployment to activate the new service.

1. Verify that the new instance is running, and note the port number.

   ```bash
   echo $MAGENTO_CLOUD_RELATIONSHIPS | base64 -d | json_pp
   ```

1. Add the port number to the `.magento.env.yaml` configuration file.

   >[!IMPORTANT]
   >
   >Configure the Redis or Valkey session port only if `ece-tools` is unable to automatically detect it from the `MAGENTO_CLOUD_RELATIONSHIPS` Redis or Valkey session service definition.

   >[!NOTE]
   >
   >Set `disable_locking` to `1` for best performance. In rare cases where race conditions occur due to high concurrent session activity, set it to `0` to enable locking.

   ```yaml
   SESSION_CONFIGURATION:
     _merge: true
     redis: # keep 'redis' even if you are using Valkey.
       timeout: 5
       disable_locking: 1
       bot_first_lifetime: 60
       bot_lifetime: 7200
       max_lifetime: 2592000
       min_lifetime: 60
   ```

1. Remove sessions from the [default database](../../../configuration/cache/redis-pg-cache.md) (`db 0`) on the Redis or Valkey cache instance.

>[!BEGINTABS]

>[!TAB Redis configuration]

For Redis:

```terminal
redis-cli -h 127.0.0.1 -p 6370 -n 0 FLUSHDB
```

>[!TAB Valkey configuration]

For Valkey:

```terminal
valkey-cli -h 127.0.0.1 -p 6370 -n 0 FLUSHDB
```

>[!ENDTABS]

## Cache compression

If you use more than 6 GB of Redis or Valkey `maxmemory`, you can enable cache compression to reduce the space consumed by keys. Be aware that this setting trades client-side performance for memory savings. If you have spare CPU capacity, consider enabling it. See [Use Redis for session storage](../../../configuration/cache/redis-session.md) in the _Configuration Guide_.

```yaml
stage:
  deploy:
    CACHE_CONFIGURATION:
      _merge: true
      frontend:
        default:
          backend_options:
            compress_data: 4              # 0-9
            compress_tags: 4              # 0-9
            compress_threshold: 20480     # don't compress files smaller than this value
            compression_lib: 'gzip'       # snappy and lzf for performance, gzip for high compression (~69%)
```

## Enable Redis or Valkey asynchronous freeing

To enable `lazyfree` on Adobe Commerce on cloud infrastructure, submit an [Adobe Commerce Support ticket](https://experienceleague.adobe.com/docs/commerce-knowledge-base/kb/help-center-guide/magento-help-center-user-guide.html#submit-ticket) requesting that the following Redis or Valkey configuration be applied to your environments:

```text
lazyfree-lazy-eviction yes
lazyfree-lazy-expire yes
lazyfree-lazy-server-del yes
replica-lazy-flush yes
lazyfree-lazy-user-del yes
```

When `lazyfree` is enabled, Redis or Valkey offloads memory reclamation to background threads for evictions, expirations, server-initiated deletes, user deletes, and replica dataset flushes. This reduces main-thread blocking and can lower request latency.

>[!NOTE]
>
>The `lazyfree-lazy-user-del yes` option makes the `DEL` command behave like `UNLINK`, which unlinks keys immediately and frees their memory asynchronously.

>[!WARNING]
>
>Because freeing occurs in the background, memory used by deleted, expired, or evicted keys remains allocated until background threads complete the work. If your Redis instance is already under tight memory pressure, test cautiously and consider reducing memory pressure first. For example, disable Block cache for specific cases and separate cache and session Redis instances as described above.

## Enable Redis multithreaded I/O

To enable Redis I/O threading on Adobe Commerce on cloud infrastructure, submit an [Adobe Commerce Support ticket](https://experienceleague.adobe.com/docs/commerce-knowledge-base/kb/help-center-guide/magento-help-center-user-guide.html#submit-ticket) requesting the configuration below. This can improve throughput by offloading socket reads/writes and command parsing from the main thread, at the cost of higher CPU usage. Validate under load and monitor your hosts.

```text
io-threads-do-reads yes
io-threads 8 # choose a value lower than the number of CPU cores (check with nproc), then tune under load
```

>[!NOTE]
>
>I/O threads parallelize client I/O and parsing only. Redis command execution remains single-threaded.

>[!WARNING]
>
>Enabling I/O threads can increase CPU usage and does not benefit every workload. Start with a conservative value and benchmark. If latency rises or CPU saturates, reduce `io-threads` or disable reads in I/O threads.


## Increase Redis or Valkey client timeouts and retries

Increase the cache client's tolerance to short periods of saturation by adjusting the backend options in `.magento.env.yaml`.

```yaml
stage:
  deploy:
    CACHE_CONFIGURATION:
      _merge: true
      frontend:
        default:
          backend_options:
            connect_retries: 3 # Number of connection retries
            remote_backend_options:
              read_timeout: 10 # Timeout
```

These settings can reduce intermittent connection and read-timeout errors during short spikes by retrying connection setup and allowing more time for replies from Redis or Valkey.

>[!NOTE]
>
>These settings can help with brief congestion, but they do not fix persistent overload.

## Review a Redis configuration example

Use the following example as a starting point for a Redis-based configuration.

```yaml
stage:
  deploy:
    MYSQL_USE_SLAVE_CONNECTION: true
    REDIS_USE_SLAVE_CONNECTION: true # Enables the replica connection logic in Magento.
    REDIS_BACKEND: \Magento\Framework\Cache\Backend\RemoteSynchronizedCache
    CACHE_CONFIGURATION:
      _merge: true
      frontend:
        default:
          id_prefix: '001_' # Any prefix is fine, but keep it consistent.
          backend_options:
            use_stale_cache: true             # Enables stale cache feature
            connect_retries: 3                # Number of connection retries
            preload_keys:                     # Preload keys at backend_options level (official Adobe placement)
              - '001_EAV_ENTITY_TYPES:hash'   # Bootstrap: entity types
              - '001_GLOBAL_PLUGIN_LIST:hash' # Bootstrap: DI plugin list
              - '001_DB_IS_UP_TO_DATE:hash'   # Bootstrap: schema version
              - '001_SYSTEM_DEFAULT:hash'     # Config: system defaults
              - '001_EXTENSION_ATTRIBUTES_CONFIG:hash'
            remote_backend_options:
              read_timeout: 10
              retry_reads_on_master: 1        # Required for split architecture
```

## Additional information

See the following related topics:

- [Redis Page Cache](../../../configuration/cache/redis-pg-cache.md)
- [Use Redis for session storage](../../../configuration/cache/redis-session.md)
- [Use Valkey for default cache](../../../configuration/cache/valkey-pg-cache.md)
- [Use Valkey for session storage](../../../configuration/cache/valkey-session.md)
