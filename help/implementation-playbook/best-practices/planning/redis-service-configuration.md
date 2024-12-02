---
title: Best practices for Redis service configuration
description: Learn how to improve caching performance by using the extended Redis cache implementation for Adobe Commerce.
role: Developer, Admin
feature: Best Practices, Cache
exl-id: 8b3c9167-d2fa-4894-af45-6924eb983487
---
# Best practices for Redis service configuration

- Configure Redis L2 cache
- Enable Redis slave connection
- Pre-load keys
- Enable stale cache
- Separate the Redis cache from the Redis session
- Compress the Redis cache and use `gzip` for higher compression

## Configure Redis L2 cache

Configure the Redis L2 cache by setting the `REDIS_BACKEND` deployment variable in the `.magento.env.yaml` configuration file.

```yaml
stage:
  deploy:
    REDIS_BACKEND: '\Magento\Framework\Cache\Backend\RemoteSynchronizedCache'
```

For environment configuration on Cloud infrastructure, see the [`REDIS_BACKEND`](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/configure/env/stage/variables-deploy.html#redis_backend) in the _Commerce on Cloud Infrastructure Guide_.

For on-premises installations, see [Configure Redis page caching](../../../configuration/cache/redis-pg-cache.md#configure-redis-page-caching) in the _Configuration Guide_.

>[!NOTE]
>
>Verify that you are using the latest version of the `ece-tools` package. If not, [upgrade to the latest version](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/dev-tools/ece-tools/update-package.html). You can check the version installed in your local environment using the `composer show magento/ece-tools` CLI command. 


### L2 cache memory sizing (Adobe Commerce Cloud)

L2 cache uses a [temporary file system](https://en.wikipedia.org/wiki/Tmpfs) as a storage mechanism. Compared with specialized key-value database systems, a temporary file system doesn't have a key eviction policy to control memory usage. 

The lack of memory usage control can cause the L2 cache memory usage to grow over time by accumulating the stale cache.

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
df -h
```

## Enable Redis slave connection

Enable a Redis slave connection in the `.magento.env.yaml` configuration file to allow only one node to handle read-write traffic while the other nodes handle the read-only traffic.

```yaml
stage:
  deploy:
    REDIS_USE_SLAVE_CONNECTION: true
```

See [REDIS_USE_SLAVE_CONNECTION](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/configure/env/stage/variables-deploy.html#redis_use_slave_connection) in the _Commerce on Cloud Infrastructure Guide_.

For Adobe Commerce on-premises installations, configure the new Redis cache implementation using the `bin/magento:setup` commands. See [Use Redis for default cache](../../../configuration/cache/redis-pg-cache.md#configure-redis-page-caching) in the _Configuration Guide_.

>[!WARNING]
>
>Do _not_ configure a Redis slave connection for cloud infrastructure projects with a [scaled/split architecture](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/architecture/scaled-architecture.html). This causes Redis connection errors. See [Redis configuration guidance](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/configure/env/stage/variables-deploy.html#redis_use_slave_connection) in the _Commerce on Cloud Infrastructure_ guide.

## Pre-load keys

To reuse data between pages, list the keys for preload in the `.magento.env.yaml` configuration file.

```yaml
stage:
  deploy:
    REDIS_BACKEND: '\Magento\Framework\Cache\Backend\RemoteSynchronizedCache'
    CACHE_CONFIGURATION:
      _merge: true
      frontend:
        default:
          id_prefix: '061_'                       # Prefix for keys to be preloaded
          backend_options:
            preload_keys:                         # List the keys to be preloaded
              - '061_EAV_ENTITY_TYPES:hash'
              - '061_GLOBAL_PLUGIN_LIST:hash'
              - '061_DB_IS_UP_TO_DATE:hash'
              - '061_SYSTEM_DEFAULT:hash'
```

For on-premises installations, see [Redis preload feature](../../../configuration/cache/redis-pg-cache.md#redis-preload-feature) in the _Configuration Guide_.

## Enable stale cache

Reduce lock waiting times and enhance performance—especially when dealing with numerous Blocks and Cache keys—by using an outdated cache while generating a new cache in parallel. Enable stale cache and define cache types in the `.magento.env.yaml` configuration file:

```yaml
stage:
  deploy:
    REDIS_BACKEND: '\Magento\Framework\Cache\Backend\RemoteSynchronizedCache'
    CACHE_CONFIGURATION:
      _merge: true
      default:
        backend_options:
          use_stale_cache: false
      stale_cache_enabled:
        backend_options:
          use_stale_cache: true
      type:
        default:
          frontend: "default"
        layout:
          frontend: "stale_cache_enabled"
        block_html:
          frontend: "stale_cache_enabled"
        reflection:
          frontend: "stale_cache_enabled"
        config_integration:
          frontend: "stale_cache_enabled"
        config_integration_api:
          frontend: "stale_cache_enabled"
        full_page:
          frontend: "stale_cache_enabled"
        translate:
          frontend: "stale_cache_enabled"
```

>[!NOTE]
>
>In the previous example, the `full_page` cache is not relevant to Adobe Commerce on cloud infrastructure projects, because they use [Fastly](https://experienceleague.adobe.com/en/docs/commerce-cloud-service/user-guide/cdn/fastly).

For configuring on-premises installations, see [Stale cache options](../../../configuration/cache/level-two-cache.md#stale-cache-options) in the _Configuration Guide_.

## Separate Redis cache and session instances

Separating the Redis cache from Redis session allows you to manage the cache and sessions independently. It prevents cache issues from affecting sessions, which could impact revenue. Each Redis instance runs on its own core, which improves performance.

1. Update the `.magento/services.yaml` configuration file.

   ```yaml
   mysql:
       type: mysql:10.4
       disk: 35000
 
   redis:
      type: redis:6.0
 
   redis-session:              # This is for the new Redis instance
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

1. Submit an [Adobe Commerce Support ticket](https://experienceleague.adobe.com/docs/commerce-knowledge-base/kb/help-center-guide/magento-help-center-user-guide.html#submit-ticket) to request the provisioning of a new Redis instance dedicated to sessions on Production and Staging environments. Include the updated `.magento/services.yaml` and `.magento.app.yaml` configuration files. This won't cause any downtime, but it requires a deployment to activate the new service.

1. Verify that the new instance is running and make a note of the port number.

   ```bash
   echo $MAGENTO_CLOUD_RELATIONSHIPS | base64 -d | json_pp
   ```

1. Add the port number to the `.magento.env.yaml` configuration file.

   >[!NOTE]
   
   >[!NOTE]
   >`disable_locking` must be set to `1`.
   >   

   ```yaml
   SESSION_CONFIGURATION:
     _merge: true
     redis:
       port: 6374       # check the port in $MAGENTO_CLOUD_RELATIONSHIPS
       timeout: 5
       disable_locking: 1
       bot_first_lifetime: 60
       bot_lifetime: 7200
       max_lifetime: 2592000
       min_lifetime: 60
   ```

1. Remove sessions from the [default database](../../../configuration/cache/redis-pg-cache.md) (`db 0`) on the Redis cache instance.

   ```bash
   redis-cli -h 127.0.0.1 -p 6374 -n 0 FLUSHDB
   ```

During deployment, you should see the following lines in the [build and deploy log](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/test/log-locations.html#build-and-deploy-logs):

```
W:   - Downloading colinmollenhour/credis (1.11.1)
W:   - Downloading colinmollenhour/php-redis-session-abstract (v1.4.5)
...
W:   - Installing colinmollenhour/credis (1.11.1): Extracting archive
W:   - Installing colinmollenhour/php-redis-session-abstract (v1.4.5): Extracting archive
...
[2022-08-17 01:13:40] INFO: Version of service 'redis' is 6.0
[2022-08-17 01:13:40] INFO: Version of service 'redis-session' is 6.0
[2022-08-17 01:13:40] INFO: redis-session will be used for session if it was not override by SESSION_CONFIGURATION
```

## Cache compression

If you are using over 6GB of Redis `maxmemory`, you can use cache compression to reduce the space consumed by the keys. Be aware that there is a trade-off with client-side performance. If you have spare CPUs, enable it. See [Use Redis for session storage](../../../configuration/cache/redis-session.md) in the _Configuration Guide_.

```yaml
stage:
  deploy:
    REDIS_BACKEND: '\Magento\Framework\Cache\Backend\RemoteSynchronizedCache'
    CACHE_CONFIGURATION:
      _merge: true;
      frontend:
        default:
          backend_options:
            compress_data: 4              # 0-9
            compress_tags: 4              # 0-9
            compress_threshold: 20480     # don't compress files smaller than this value
            compression_lib: 'gzip'       # snappy and lzf for performance, gzip for high compression (~69%)
```

## Additional information

- [Redis Page Cache](../../../configuration/cache/redis-pg-cache.md)
- [Use Redis for session storage](../../../configuration/cache/redis-session.md)
