---
title: Best practices for Redis and Valkey service configuration
description: Learn how to improve caching performance by using the extended Redis/Valkey cache implementation for Adobe Commerce.
role: Developer, Admin
feature: Best Practices, Cache
exl-id: 8b3c9167-d2fa-4894-af45-6924eb983487
---

# Best practices for Redis service configuration

- Configure L2 cache
- Enable Redis/Valkey slave connection
- Pre-load keys
- Enable stale cache
- Separate the cache from the sessions
- Compress the cache and use `gzip` for higher compression
- Configuration Example


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

>[!TAB Valkey configuration]

For Valkey, use:

```yaml
stage:
  deploy:
    VALKEY_BACKEND: '\Magento\Framework\Cache\Backend\RemoteSynchronizedCache'
```

>[!ENDTABS]

For environment configuration on Cloud infrastructure, see the [`REDIS_BACKEND`](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/configure/env/stage/variables-deploy.html#redis_backend) in the _Commerce on Cloud Infrastructure Guide_.

For on-premises installations, see [Configure Redis page caching](../../../configuration/cache/redis-pg-cache.md#configure-redis-page-caching) in the _Configuration Guide_.

>[!NOTE]
>
>Verify that you are using the latest version of the `ece-tools` package. If not, [upgrade to the latest version](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/dev-tools/ece-tools/update-package.html). You can check the version installed in your local environment using the `composer show magento/ece-tools` CLI command. 


### L2 cache memory sizing (Adobe Commerce Cloud)

L2 cache uses a [temporary file system](https://en.wikipedia.org/wiki/Tmpfs) as a storage mechanism. Compared with specialized key-value database systems, a temporary file system doesn't have a key eviction policy to control memory usage. 

The lack of memory usage control can cause the L2 cache memory usage to grow over time.

To avoid memory exhaustion of L2 cache implementations, Adobe Commerce clears the storage when a certain threshold is reached. The default threshold value is 95%.

It is important to adjust the L2 cache memory maximum usage based on project requirements for cache storage. Use one of the following methods to configure memory cache sizing:

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

Cache requirements can vary based on project configuration and custom third-party code. The scope of the L2 cache memory sizing allows the L2 cache to operate without too many threshold hits. 
Ideally, L2 cache memory usage should stabilize at a certain level below the threshold, just to avoid frequent storage clearing.

You can check L2 cache storage memory usage on each node of the cluster using the following CLI command and looking for the `/dev/shm` line. 
The usage could vary across different nodes, but it should converge to the same value.

```bash
df -h /dev/shm
```

## Enable Redis or Valkey slave connection

Enable replica connection in the `.magento.env.yaml` file to let Magento read cache entries from the replica endpoint while continuing to write to the primary endpoint. This can reduce read load on the primary cache service and improve resilience during short spikes.

>[!BEGINTABS]

>[!TAB Redis configuration]

For Redis, use:

```yaml
stage:
  deploy:
    REDIS_USE_SLAVE_CONNECTION: true
```

>[!TAB Valkey configuration]

For Valkey, use:

```yaml
stage:
  deploy:
    VALKEY_USE_SLAVE_CONNECTION: true
```

>[!ENDTABS]

See [REDIS_USE_SLAVE_CONNECTION](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/configure/env/stage/variables-deploy.html#redis_use_slave_connection) in the _Commerce on Cloud Infrastructure Guide_.

For Adobe Commerce on-premises installations, configure the new Redis cache implementation using the `bin/magento:setup` commands. See [Use Redis for default cache](../../../configuration/cache/redis-pg-cache.md#configure-redis-page-caching) in the _Configuration Guide_.


## Pre-load keys

Magento usually loads cache entries from Redis/Valkey one key at a time. The preload feature lets you provide a list of frequently used keys that Magento fetches in a single pipeline on first access during a request. The fetched values are then kept in PHP memory for the remainder of that request, reducing repeated round trips to Redis/Valkey and improving bootstrap performance for those keys.

You just need to list the keys for preload in the `.magento.env.yaml` configuration file.

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

Optionally, You can get a bigger list of top keys by monitoring active commands on Redis/Valkey:

>[!BEGINTABS]

>[!TAB Redis preload key configuration]

For Redis, run:

```
redis-cli -p 6370 -n 1 MONITOR > /tmp/list.keys
```

After 10 seconds, press **[!UICONTROL Ctrl+C]** and analyse the log with the following command:

```terminal
cat /tmp/list.keys| grep "HGET"| awk '{print $5}'|sort |uniq -c | sort -nr|head -n50
```

This log lists the keys you can preload. To see the content of a key, run the following command:

```terminal
redis-cli -p 6370 -n 1 hgetall "<key_name>"
```

>[!TAB Valkey preload key configuration]

For Valkey, run:

```terminal
valkey-cli -p 6370 -n 1 MONITOR > /tmp/list.keys
```

After 10 seconds, press **[!UICONTROL Ctrl+C]** and analyse the log with the following command:

```terminal
cat /tmp/list.keys| grep "HGET"| awk '{print $5}'|sort |uniq -c | sort -nr|head -n50
```

This log lists the keys you can preload. To see the content of a key, run the following command:

For Valkey, run:

```terminal
valkey-cli -p 6370 -n 1 hgetall "<key_name>"
```

>[!ENDTABS]

For on-premises installations, see [Redis preload feature](../../../configuration/cache/redis-pg-cache.md#redis-preload-feature) in the _Configuration Guide_.

## Enable stale cache

Stale cache is an L2-cache feature of `RemoteSynchronizedCache`. When enabled, Magento can serve an existing local cache value from `/dev/shm` while another process is already regenerating the same entry, instead of making every concurrent request wait. This reduces cache stampedes and lock contention during regeneration of expensive cache entries.

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
>If this causes unexpected behavior in your customizations, keep stale cache disabled on `default` and enable it only for selected cache types, similar to [how it is done on-premises](../../../configuration/cache/level-two-cache.md#stale-cache-options), but configure it in config.php instead of env.php.


## Separate cache and session instances

Separating the cache from session allows you to manage the cache and sessions independently. It prevents cache issues from affecting sessions, which could impact revenue. Each Redis/Valkey instance runs on its own core, which improves performance.

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

1. Submit an [Adobe Commerce Support ticket](https://experienceleague.adobe.com/docs/commerce-knowledge-base/kb/help-center-guide/magento-help-center-user-guide.html#submit-ticket) to request the provisioning of a new Redis or Valkey instance dedicated to sessions on Production and Staging environments. Include the updated `.magento/services.yaml` and `.magento.app.yaml` configuration files.

   This update does not cause any downtime, but it requires a deployment to activate the new service.

1. Verify that the new instance is running and make a note of the port number.

   ```bash
   echo $MAGENTO_CLOUD_RELATIONSHIPS | base64 -d | json_pp
   ```

1. Add the port number to the `.magento.env.yaml` configuration file.

   >[!IMPORTANT]
   >
   >Configure the Redis/Valkey session port only if `ece-tools` is unable to automatically detect it from the `MAGENTO_CLOUD_RELATIONSHIPS` Redis/Valkey session service definition.

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

1. Remove sessions from the [default database](../../../configuration/cache/redis-pg-cache.md) (`db 0`) on the Redis/Valkey cache instance.

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

If you are using over 6GB of Redis/Valkey `maxmemory`, you can use cache compression to reduce the space consumed by the keys. Be aware that there is a trade-off with client-side performance. If you have spare CPUs, enable it. See [Use Redis for session storage](../../../configuration/cache/redis-session.md) in the _Configuration Guide_.

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

## Enable Redis and Valkey asynchronous freeing (lazyfree)

To enable `lazyfree` on Adobe Commerce on cloud infrastructure, submit an [Adobe Commerce Support ticket](https://experienceleague.adobe.com/docs/commerce-knowledge-base/kb/help-center-guide/magento-help-center-user-guide.html#submit-ticket) requesting the following Redis/Valkey configuration be applied to your environment(s):

```
lazyfree-lazy-eviction yes
lazyfree-lazy-expire yes
lazyfree-lazy-server-del yes
replica-lazy-flush yes
lazyfree-lazy-user-del yes
```

When lazyfree is enabled, Redis offloads memory reclamation to background threads for evictions, expirations, server-initiated deletes, user deletes, and replica dataset flushes. This reduces main-thread blocking and can lower request latency.

>[!NOTE]
>
>The `lazyfree-lazy-user-del yes` option makes the `DEL` command behave like `UNLINK`, which unlinks keys immediately and frees their memory asynchronously.

>[!WARNING]
>
>Because freeing occurs in the background, memory used by deleted/expired/evicted keys remains allocated until background threads complete the work. If your Redis is already under tight memory pressure, test cautiously and consider reducing memory pressure first (for example, disabling Block cache for specific cases and separating cache and session Redis instances as described above).

## Enable Redis multithreaded I/O

To enable Redis I/O threading on Adobe Commerce on cloud infrastructure, submit an [Adobe Commerce Support ticket](https://experienceleague.adobe.com/docs/commerce-knowledge-base/kb/help-center-guide/magento-help-center-user-guide.html#submit-ticket) requesting the configuration below. This can improve throughput by offloading socket reads/writes and command parsing from the main thread, at the cost of higher CPU usage. Validate under load and monitor your hosts.

```
io-threads-do-reads yes
io-threads 8 # choose a value lower than the number of CPU cores (check with nproc), then tune under load
```

>[!NOTE]
>
>I/O threads parallelize client I/O and parsing only. Redis command execution remains single-threaded.

>[!WARNING]
>
>Enabling I/O threads can increase CPU usage and does not benefit every workload. Start with a conservative value and benchmark. If latency rises or CPU saturates, reduce `io-threads` or disable reads in I/O threads.


## Increase Redis/Valkey client timeouts and retries

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

## Follow a configuration example for Redis with all the best practices recommendations applied:

```yaml
stage:
  deploy:
    MYSQL_USE_SLAVE_CONNECTION: true
    REDIS_USE_SLAVE_CONNECTION: true # Enables the slave connection logic in Magento. It also works in split architecture
    REDIS_BACKEND: \Magento\Framework\Cache\Backend\RemoteSynchronizedCache
    CACHE_CONFIGURATION:
      _merge: true
      frontend:
        default:
          id_prefix: '001_' # any prefix is fine, but keep it consistent.
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

- [Redis Page Cache](../../../configuration/cache/redis-pg-cache.md)
- [Use Redis for session storage](../../../configuration/cache/redis-session.md)
