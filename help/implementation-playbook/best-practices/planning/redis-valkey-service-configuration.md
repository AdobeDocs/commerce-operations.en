---
title: Best Practices for Redis and Valkey Service Configuration
description: Learn how to configure Redis and Valkey services for Adobe Commerce. Improve caching performance with L2 cache, slave connections, stale cache, and session separation.
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
- Enable slave connection
- Preload keys
- Enable stale cache
- Separate cache and session
- Compress the cache
- Configuration examples

>[!NOTE]
>
>For Commerce on Cloud infrastructure environments, verify that you are using the latest version of the `ece-tools` package. If not, [upgrade to the latest version](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/dev-tools/ece-tools/update-package.html). You can check the version installed in your local environment using the `composer show magento/ece-tools` CLI command.

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

For on-premises installations, see [Configure Redis page caching](../../../configuration/cache/redis-pg-cache.md#configure-redis-page-caching) in the _Configuration Guide_.

>[!TAB Valkey configuration]

For Valkey, use:

```yaml
stage:
  deploy:
    VALKEY_BACKEND: '\Magento\Framework\Cache\Backend\RemoteSynchronizedCache'
```

For environment configuration on cloud infrastructure, see [`VALKEY_BACKEND`](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/configure/env/stage/variables-deploy#valkey_backend) configuration reference in the _Commerce on Cloud Infrastructure Guide_.

For on-premises installations, see [Configure Valkey](../../../configuration/cache/config-valkey.md) in the _Configuration Guide_.

>[!ENDTABS]


### L2 cache memory sizing for Adobe Commerce Cloud

L2 cache uses a [temporary file system](https://en.wikipedia.org/wiki/Tmpfs) (`/dev/shm`) as its storage mechanism. Unlike specialized key-value stores, tmpfs has no key eviction policy, so memory usage can grow unbounded. To prevent exhaustion, Adobe Commerce automatically clears the L2 storage when usage reaches a configurable threshold (95% by default). You can control memory consumption by requesting a larger `/dev/shm` mount or by lowering the cleanup threshold.

Adjust the maximum L2 cache memory usage based on your project requirements. Use one of the following methods:

- Create a support ticket to adjust the `/dev/shm` mount size. For this scenario, Adobe recommends setting the `/dev/shm` mount size to 15 GB.
- Adjust the `cleanup_percentage` property at the application level to cap storage usage and free memory available for other services.
   You can adjust the configuration in the deployment configuration under the cache configuration group `cache/frontend/default/backend_options/cleanup_percentage`.

>[!NOTE]
>
>The `cleanup_percentage` configurable option was introduced in Adobe Commerce 2.4.4.

The following examples show the configuration code in the `.magento.env.yaml` file:

>[!BEGINTABS]

>[!TAB Redis configuration]

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

>[!TAB Valkey configuration]

```yaml
stage:
  deploy:
    VALKEY_BACKEND: '\Magento\Framework\Cache\Backend\RemoteSynchronizedCache'
    CACHE_CONFIGURATION:
      _merge: true
      frontend:
        default:
          backend_options:
            cleanup_percentage: 90
```

>[!ENDTABS]

Cache requirements vary based on your project configuration and custom third-party code. Size L2 cache memory so that the cache can operate without frequent threshold hits.

Ideally, L2 cache memory usage stabilizes below the threshold to avoid frequent storage clearing.

You can check L2 cache storage memory usage on each node of the cluster by running the following CLI command and reviewing the `/dev/shm` line.

```bash
df -h /dev/shm
```

Usage can vary across nodes, but it should converge to a similar value.

## Enable slave connection

Enable the slave connection in the `.magento.env.yaml` file to let Adobe Commerce use an additional read-only cache connection for reads while continuing to use the primary endpoint for writes. This configuration can reduce read load on the primary cache service and distribute read traffic more effectively.

>[!BEGINTABS]

>[!TAB Redis configuration]

For Redis, use:

```yaml
stage:
  deploy:
    REDIS_USE_SLAVE_CONNECTION: true
```

For environment configuration on Commerce Cloud infrastructure, see [REDIS_USE_SLAVE_CONNECTION](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/configure/env/stage/variables-deploy.html#redis_use_slave_connection) in the _Commerce on Cloud Infrastructure Guide_.

For Adobe Commerce on-premises installations, configure the new Redis cache implementation using the `bin/magento setup` commands. See [Use Redis for default cache](../../../configuration/cache/redis-pg-cache.md#configure-redis-page-caching) in the _Configuration Guide_.

>[!TAB Valkey configuration]

For Valkey, use:

```yaml
stage:
  deploy:
    VALKEY_USE_SLAVE_CONNECTION: true
```

For environment configuration on Commerce Cloud infrastructure, see [VALKEY_USE_SLAVE_CONNECTION](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/configure/env/stage/variables-deploy.html#valkey_use_slave_connection) in the _Commerce on Cloud Infrastructure Guide_.

For Adobe Commerce on-premises installations, configure the new Valkey cache implementation using the `bin/magento setup` commands. See [Configure Valkey](../../../configuration/cache/config-valkey.md) in the _Configuration Guide_.

>[!ENDTABS]

## Preload keys

Magento usually loads cache entries from Redis or Valkey one key at a time. The preload feature lets you provide a list of frequently used keys that Magento fetches in a single pipeline on first access during a request. Magento then keeps the fetched values in PHP memory for the rest of that request, which reduces repeated round trips to Redis or Valkey and can improve request bootstrap performance for those keys.

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
cat /tmp/list.keys | grep "HGET" | awk '{print $5}' | sort | uniq -c | sort -nr | head -n 50
```

This log lists the keys you can preload. To see the content of a key, run the following command:

```terminal
valkey-cli -p 6370 -n 1 hgetall "<key_name>"
```

For on-premises installations, see [Valkey preload feature](../../../configuration/cache/valkey-pg-cache.md#valkey-preload-feature) in the _Configuration Guide_.

>[!ENDTABS]

## Enable stale cache

Stale cache is an L2 cache feature of `RemoteSynchronizedCache`. When enabled, Adobe Commerce can serve an existing local cache value from `/dev/shm` while another request is already regenerating the same entry, instead of making every concurrent request wait. This reduces cache stampedes and lock contention during regeneration of expensive cache entries.

### How it works

With `RemoteSynchronizedCache`, Magento maintains two copies of each cache entry: a local copy in `/dev/shm` and a remote copy in Redis or Valkey. When the remote copy is unavailable and a regeneration lock already exists for that key, concurrent requests can receive the previous local value instead of waiting until the fresh value is written.

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
>The configuration above enables stale cache on the `default` cache frontend, which applies stale-cache behavior to all cache entries that use that frontend. Magento core cache types generally work as expected with this setting. However, if your project includes custom code or extensions that write to the cache through the generic `\Magento\Framework\App\Cache` API (for example `$this->cache->save()`) without a dedicated cache frontend, those entries can also serve stale values during regeneration.
>
>
>If this results in unexpected behavior in your customizations, leave stale cache disabled on the `default` frontend and enable it only for selected cache types, as is commonly [done on-premises](../../../configuration/cache/level-two-cache.md#stale-cache-options).

### Enabling stale cache per cache type individually

You can enable stale cache only for selected cache types by defining a dedicated cache frontend in `.magento.env.yaml` and mapping the selected cache types to it.

To work correctly, the custom frontend must be defined as a complete frontend under `CACHE_CONFIGURATION.frontend`. Defining only `use_stale_cache: true` for a new frontend name is not enough.

**Example configurations**

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
        default: # In this frontend, we keep stale cache set to false.
          id_prefix: '001_'
          backend_options:
            use_stale_cache: false

        # Now, create a new frontend called 'stale_cache_enabled'.
        # It must contain the same backend connection settings as the frontend 'default':

        stale_cache_enabled:
          id_prefix: '001_'
          backend: '\Magento\Framework\Cache\Backend\RemoteSynchronizedCache'
          backend_options:
            remote_backend: '\Magento\Framework\Cache\Backend\Redis'
            remote_backend_options:
              server: localhost
              port: 6370 # Use the same port used by the frontend 'default' in env.php
              database: 1
              load_from_slave:
                server: localhost
                port: 26370 # Use the same port used by the frontend 'default' in env.php
              retry_reads_on_master: 1
              read_timeout: 10
            local_backend: 'Cm_Cache_Backend_File'
            local_backend_options:
              cache_dir: /dev/shm/
            use_stale_cache: true # stale cache here is enabled

      # Now select which cache types you want to enable (stale_cache_enabled), or disable (default)

      type:
        default:
          frontend: default
        layout:
          frontend: stale_cache_enabled
        reflection:
          frontend: stale_cache_enabled
        config_integration:
          frontend: stale_cache_enabled
        config_integration_api:
          frontend: stale_cache_enabled
        translate:
          frontend: stale_cache_enabled
        # add other cache types as needed...
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
        default: # In this frontend, we keep stale cache set to false.
          id_prefix: '001_'
          backend_options:
            use_stale_cache: false

        # Now, create a new frontend called 'stale_cache_enabled'.
        # It must contain the same backend connection settings as the frontend 'default':
 
        stale_cache_enabled:
          id_prefix: '001_'
          backend: '\Magento\Framework\Cache\Backend\RemoteSynchronizedCache'
          backend_options:
            remote_backend: '\Magento\Framework\Cache\Backend\Redis'
            remote_backend_options:
              server: localhost
              port: 6370 # Use the same port used by the frontend 'default' in env.php
              database: 1
              load_from_slave:
                server: localhost
                port: 26370 # Use the same port used by the frontend 'default' in env.php
              retry_reads_on_master: 1
              read_timeout: 10
            local_backend: 'Cm_Cache_Backend_File'
            local_backend_options:
              cache_dir: /dev/shm/
            use_stale_cache: true # stale cache here is enabled

      # Now select which cache types you want to enable (stale_cache_enabled), or disable (default)

      type:
        default:
          frontend: default
        layout:
          frontend: stale_cache_enabled
        reflection:
          frontend: stale_cache_enabled
        config_integration:
          frontend: stale_cache_enabled
        config_integration_api:
          frontend: stale_cache_enabled
        translate:
          frontend: stale_cache_enabled
        # add other cache types as needed...
```

>[!ENDTABS]

>[!NOTE]
>
>If the source frontend is configured with additional backend options like compression, retries, preload keys, or other tuning values, copy those options to `stale_cache_enabled` so that the new frontend maintains the same behavior.


## Separate cache and session instances

Separating the cache from the sessions allows you to manage them independently. It reduces contention between cache and session traffic, prevents cache-related pressure from affecting sessions, and allows each Redis or Valkey instance to be sized and tuned for its own workload.

Follow the steps below to provision a dedicated instance for sessions:

>[!BEGINTABS]

>[!TAB Redis]

1. Update the `.magento/services.yaml` configuration file.

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

1. Update the `.magento.app.yaml` configuration file.

   ```yaml
      relationships:
        database: "mysql:mysql"
        redis: "redis:redis"
        redis-session: "redis-session:redis"   # Relationship of the new Redis instance
        search: "search:elasticsearch"
        rabbitmq: "rabbitmq:rabbitmq"
   ```

1. Request a new Redis instance dedicated to sessions on Production and Staging environments.

   Submit an [Adobe Commerce Support ticket](https://experienceleague.adobe.com/docs/commerce-knowledge-base/kb/help-center-guide/magento-help-center-user-guide.html#submit-ticket). Include the updated `.magento/services.yaml` and `.magento.app.yaml` configuration files.

   This update does not cause any downtime, but it requires a deployment to activate the new service.

1. Verify that the new instance is running, and note the port number.

   ```bash
   echo $MAGENTO_CLOUD_RELATIONSHIPS | base64 -d | json_pp
   ```

1. Add the port number to the `.magento.env.yaml` configuration file.

   >[!IMPORTANT]
   >
   >Configure the Redis session port only if `ece-tools` is unable to automatically detect it from the `MAGENTO_CLOUD_RELATIONSHIPS` Redis session service definition.

   >[!NOTE]
   >
   >Set `disable_locking` to `1` for best performance. In rare cases where race conditions occur due to high concurrent session activity, set it to `0` to enable locking.

   ```yaml
   SESSION_CONFIGURATION:
     _merge: true
     redis:
       timeout: 5
       disable_locking: 1
       bot_first_lifetime: 60
       bot_lifetime: 7200
       max_lifetime: 2592000
       min_lifetime: 60
   ```

1. Remove sessions from the [default database](../../../configuration/cache/redis-pg-cache.md) (`db 0`) on the Redis cache instance.

   ```terminal
   redis-cli -h 127.0.0.1 -p 6370 -n 0 FLUSHDB
   ```

>[!TAB Valkey]

1. Update the `.magento/services.yaml` configuration file.

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

1. Update the `.magento.app.yaml` configuration file.

   ```yaml
   relationships:
     database: "mysql:mysql"
     valkey: "valkey:valkey"
     valkey-session: "valkey-session:valkey"   # Relationship of the new Valkey instance
     search: "search:elasticsearch"
     rabbitmq: "rabbitmq:rabbitmq"
   ```

1. Request a new Valkey instance dedicated to sessions on Production and Staging environments.

   Submit an [Adobe Commerce Support ticket](https://experienceleague.adobe.com/docs/commerce-knowledge-base/kb/help-center-guide/magento-help-center-user-guide.html#submit-ticket). Include the updated `.magento/services.yaml` and `.magento.app.yaml` configuration files.

   This update does not cause any downtime, but it requires a deployment to activate the new service.

1. Verify that the new instance is running, and note the port number.

   ```bash
   echo $MAGENTO_CLOUD_RELATIONSHIPS | base64 -d | json_pp
   ```

1. Add the port number to the `.magento.env.yaml` configuration file.

   >[!IMPORTANT]
   >
   >Configure the Valkey session port only if `ece-tools` is unable to automatically detect it from the `MAGENTO_CLOUD_RELATIONSHIPS` Valkey session service definition.

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

1. Remove sessions from the [default database](../../../configuration/cache/redis-pg-cache.md) (`db 0`) on the Valkey cache instance.

   ```terminal
   valkey-cli -h 127.0.0.1 -p 6370 -n 0 FLUSHDB
   ```

>[!ENDTABS]

## Cache compression

If you use more than 6 GB of Redis or Valkey `maxmemory`, you can enable cache compression to reduce the space consumed by keys. Be aware that this setting trades client-side performance for memory savings. If you have spare CPU capacity, consider enabling it. See [Use Redis for session storage](../../../configuration/cache/redis-session.md) or [Use Valkey for session storage](../../../configuration/cache/valkey-session.md) in the _Configuration Guide_.

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

## Enable asynchronous freeing

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
>Because freeing occurs in the background, memory used by deleted, expired, or evicted keys remains allocated until background threads complete the work. If your Redis or Valkey instance is already under tight memory pressure, test cautiously and consider reducing memory pressure first. For example, disable Block cache for specific cases and separate cache and session Redis instances as described above.

## Enable multithreaded I/O

To enable Redis I/O threading on Adobe Commerce on cloud infrastructure, submit an [Adobe Commerce Support ticket](https://experienceleague.adobe.com/docs/commerce-knowledge-base/kb/help-center-guide/magento-help-center-user-guide.html#submit-ticket) requesting the I/O threading configuration below. This configuration can improve throughput by offloading socket reads and writes and command parsing from the main thread, at the cost of higher CPU usage. Validate under load and monitor your hosts.

>[!BEGINTABS]

>[!TAB Configure I/O threads for Redis]

For Redis:

```text
io-threads-do-reads yes
io-threads 8 # Choose a value lower than the number of CPU cores (check with nproc), and then tune under load.
```

>[!TAB Configure I/O threads for Valkey]

For Valkey:

```text
io-threads-do-reads yes
io-threads 8 # choose a value lower than the number of CPU cores (check with nproc), then tune under load
events-per-io-thread 2
```

>[!ENDTABS]


>[!NOTE]
>
>I/O threads parallelize client I/O and parsing only. Redis command execution remains single-threaded.

>[!WARNING]
>
>Enabling I/O threads can increase CPU usage and does not benefit every workload. Start with a conservative value and benchmark. If latency rises or CPU saturates, reduce `io-threads` or disable reads in I/O threads.


## Increase client timeouts and retries

Increase the Redis or Valkey cache client's tolerance to short periods of saturation by adjusting the backend options in `.magento.env.yaml`.

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

## Configuration examples

Use the following examples as a starting point for your Redis or Valkey service configurations.


### Apply all best practice recommendations

>[!BEGINTABS]

>[!TAB Redis]

```yaml
stage:
  deploy:
    MYSQL_USE_SLAVE_CONNECTION: true
    REDIS_USE_SLAVE_CONNECTION: true # Enables the slave connection logic in Magento. It also works in a split architecture
    REDIS_BACKEND: \Magento\Framework\Cache\Backend\RemoteSynchronizedCache
    CACHE_CONFIGURATION:
      _merge: true
      frontend:
        default:
          id_prefix: '001_' # Any prefix is fine, but keep it consistent.
          backend_options:
            use_stale_cache: true             # Enables stale cache feature for all cache types
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
            # Keep compression disabled for maximum performance. Only enable it if the cache usage is approaching the limit defined in maxmemory:
            # compress_data: 4              # 0-9
            # compress_tags: 4              # 0-9
            # compress_threshold: 20480     # don't compress files smaller than this value
            # compression_lib: 'gzip'       # snappy and lzf for performance, gzip for high compression (~69%)

    SESSION_CONFIGURATION:
      _merge: true
      redis:

        # port: 6372 # ece-tools should detect the port automatically, but if not, set here.

        timeout: 5
        disable_locking: 1 # true for max performance. If racing conditions happen when the server has an excessively high number of simultaneous session activities, set it to false.
        bot_first_lifetime: 60
        bot_lifetime: 7200
        max_lifetime: 2592000
        min_lifetime: 60
```

>[!TAB Valkey configuration example]

```yaml
stage:
  deploy:
    MYSQL_USE_SLAVE_CONNECTION: true
    VALKEY_USE_SLAVE_CONNECTION: true # Enables the slave connection logic in Magento. It also works in a split architecture
    VALKEY_BACKEND: \Magento\Framework\Cache\Backend\RemoteSynchronizedCache
    CACHE_CONFIGURATION:
      _merge: true
      frontend:
        default:
          id_prefix: '001_' # any prefix is fine, but keep it consistent.
          backend_options:
            use_stale_cache: true             # Enables stale cache feature for all cache types
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
            # Keep compression disabled for maximum performance. Only enable it if the cache usage is approaching the limit defined in maxmemory:
            # compress_data: 4              # 0-9
            # compress_tags: 4              # 0-9
            # compress_threshold: 20480     # don't compress files smaller than this value
            # compression_lib: 'gzip'       # snappy and lzf for performance, gzip for high compression (~69%)

    SESSION_CONFIGURATION:
      _merge: true
      redis:
        # port: 6372 # ece-tools should detect the port automatically, but if not, set here.
        timeout: 5
        disable_locking: 1 # true for max performance. If racing conditions happen when the server has an excessively high number of simultaneous session activities, set it to false.
        bot_first_lifetime: 60
        bot_lifetime: 7200
        max_lifetime: 2592000
        min_lifetime: 60
```

>[!ENDTABS]

### Apply all best practice recommendations and separate stale cache by cache type

>[!BEGINTABS]

>[!TAB Redis]

```yaml
stage:
  deploy:
    MYSQL_USE_SLAVE_CONNECTION: true
    REDIS_USE_SLAVE_CONNECTION: true # Enables the slave connection logic in Magento. It also works in a split architecture
    REDIS_BACKEND: \Magento\Framework\Cache\Backend\RemoteSynchronizedCache
    CACHE_CONFIGURATION:
      _merge: true
      frontend:
        default: # Keep stale cache disabled on the broad default frontend.
          id_prefix: '001_' # Keep this prefix consistent with the frontend configuration generated in env.php
          backend_options:
            use_stale_cache: false # stale cache false here
            connect_retries: 3
            preload_keys:
              - '001_EAV_ENTITY_TYPES:hash'
              - '001_GLOBAL_PLUGIN_LIST:hash'
              - '001_DB_IS_UP_TO_DATE:hash'
              - '001_SYSTEM_DEFAULT:hash'
              - '001_EXTENSION_ATTRIBUTES_CONFIG:hash'
            remote_backend_options:
              read_timeout: 10
              retry_reads_on_master: 1
            # Keep compression disabled for maximum performance. Only enable it if the cache usage is approaching the limit defined in maxmemory:
            # compress_data: 4
            # compress_tags: 4
            # compress_threshold: 20480
            # compression_lib: 'gzip'

        stale_cache_enabled: # New frontend with stale cache enabled only for selected cache types.
          id_prefix: '001_' # Use the same id_prefix used by the source frontend in env.php
          backend: \Magento\Framework\Cache\Backend\RemoteSynchronizedCache
          backend_options:
            remote_backend: \Magento\Framework\Cache\Backend\Redis
            remote_backend_options:
              server: localhost
              port: 6370   # Use the same port used by the source frontend in env.php
              database: 1
              load_from_slave:
                server: localhost
                port: 26370 # Use the same slave connection/read port used by the source frontend in env.php
              retry_reads_on_master: 1
              read_timeout: 10
            local_backend: Cm_Cache_Backend_File
            local_backend_options:
              cache_dir: /dev/shm/
            use_stale_cache: true
            connect_retries: 3
            preload_keys:
              - '001_EAV_ENTITY_TYPES:hash'
              - '001_GLOBAL_PLUGIN_LIST:hash'
              - '001_DB_IS_UP_TO_DATE:hash'
              - '001_SYSTEM_DEFAULT:hash'
              - '001_EXTENSION_ATTRIBUTES_CONFIG:hash'
            # Keep compression disabled for maximum performance. Only enable it if the cache usage is approaching the limit defined in maxmemory:
            # compress_data: 4
            # compress_tags: 4
            # compress_threshold: 20480
            # compression_lib: 'gzip'

      type:
        default:
          frontend: default # Keeps stale cache disabled on the broad default frontend, including generic cache writes that use \Magento\Framework\App\Cache, such as $this->cache->save().
        block_html:
          frontend: stale_cache_enabled # This is often one of the cache types that benefits the most from stale cache, because it is heavily used and can contribute significantly to lock contention during regeneration. In most cases, it can remain enabled. Exclude it only if the project has customization-specific issues caused by stale block output.
        layout:
          frontend: stale_cache_enabled
        reflection:
          frontend: stale_cache_enabled
        config_integration:
          frontend: stale_cache_enabled
        config_integration_api:
          frontend: stale_cache_enabled
        translate:
          frontend: stale_cache_enabled
        # add other cache types as needed...

    SESSION_CONFIGURATION:
      _merge: true
      redis:
        # port: 6372 # ece-tools should detect the port automatically, but if not, set here.
        timeout: 5
        disable_locking: 1 # true for max performance. If racing conditions happen when the server has an excessively high number of simultaneous session activities, set it to false.
        bot_first_lifetime: 60
        bot_lifetime: 7200
        max_lifetime: 2592000
        min_lifetime: 60

```

>[!TAB Valkey]

```yaml
stage:
  deploy:
    MYSQL_USE_SLAVE_CONNECTION: true
    VALKEY_USE_SLAVE_CONNECTION: true # Enables the slave connection logic in Magento. It also works in a split architecture
    VALKEY_BACKEND: \Magento\Framework\Cache\Backend\RemoteSynchronizedCache
    CACHE_CONFIGURATION:
      _merge: true
      frontend:
        default: # Keep stale cache disabled on the broad default frontend.
          id_prefix: '001_' # Keep this prefix consistent with the frontend configuration generated in env.php
          backend_options:
            use_stale_cache: false # stale cache false here
            connect_retries: 3
            preload_keys:
              - '001_EAV_ENTITY_TYPES:hash'
              - '001_GLOBAL_PLUGIN_LIST:hash'
              - '001_DB_IS_UP_TO_DATE:hash'
              - '001_SYSTEM_DEFAULT:hash'
              - '001_EXTENSION_ATTRIBUTES_CONFIG:hash'
            remote_backend_options:
              read_timeout: 10
              retry_reads_on_master: 1
            # Keep compression disabled for maximum performance. Only enable it if the cache usage is approaching the limit defined in maxmemory:
            # compress_data: 4
            # compress_tags: 4
            # compress_threshold: 20480
            # compression_lib: 'gzip'

        stale_cache_enabled: # New frontend with stale cache enabled only for selected cache types.
          id_prefix: '001_' # Use the same id_prefix used by the source frontend in env.php
          backend: \Magento\Framework\Cache\Backend\RemoteSynchronizedCache
          backend_options:
            remote_backend: \Magento\Framework\Cache\Backend\Redis
            remote_backend_options:
              server: localhost
              port: 6370   # Use the same port used by the source frontend in env.php
              database: 1
              load_from_slave:
                server: localhost
                port: 26370 # Use the same slave connection/read port used by the source frontend in env.php
              retry_reads_on_master: 1
              read_timeout: 10
            local_backend: Cm_Cache_Backend_File
            local_backend_options:
              cache_dir: /dev/shm/
            use_stale_cache: true
            connect_retries: 3
            preload_keys:
              - '001_EAV_ENTITY_TYPES:hash'
              - '001_GLOBAL_PLUGIN_LIST:hash'
              - '001_DB_IS_UP_TO_DATE:hash'
              - '001_SYSTEM_DEFAULT:hash'
              - '001_EXTENSION_ATTRIBUTES_CONFIG:hash'
            # Keep compression disabled for maximum performance. Only enable it if the cache usage is approaching the limit defined in maxmemory:
            # compress_data: 4
            # compress_tags: 4
            # compress_threshold: 20480
            # compression_lib: 'gzip'

      type:
        default:
          frontend: default # Keeps stale cache disabled on the broad default frontend, including generic cache writes that use \Magento\Framework\App\Cache, such as $this->cache->save().
        block_html:
          frontend: stale_cache_enabled # This is often one of the cache types that benefits the most from stale cache, because it is heavily used and can contribute significantly to lock contention during regeneration. In most cases, it can remain enabled. Exclude it only if the project has customization-specific issues caused by stale block output.
        layout:
          frontend: stale_cache_enabled
        reflection:
          frontend: stale_cache_enabled
        config_integration:
          frontend: stale_cache_enabled
        config_integration_api:
          frontend: stale_cache_enabled
        translate:
          frontend: stale_cache_enabled
        # add other cache types as needed...

    SESSION_CONFIGURATION:
      _merge: true
      redis: # keep 'redis' even if you are using Valkey.
        # port: 6372 # ece-tools should detect the port automatically, but if not, set here.
        timeout: 5
        disable_locking: 1 # true for max performance. If racing conditions happen when the server has an excessively high number of simultaneous session activities, set it to false.
        bot_first_lifetime: 60
        bot_lifetime: 7200
        max_lifetime: 2592000
        min_lifetime: 60
```

>[!ENDTABS]

## Additional information

See the following related topics:

- [Redis Page Cache](../../../configuration/cache/redis-pg-cache.md)
- [Use Redis for session storage](../../../configuration/cache/redis-session.md)
- [Use Valkey for default cache](../../../configuration/cache/valkey-pg-cache.md)
- [Use Valkey for session storage](../../../configuration/cache/valkey-session.md)
