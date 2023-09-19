---
title: Best practices for Redis service configuration
description: Learn how to improve caching performance by using the extended Redis cache implementation for Adobe Commerce.
role: Developer, Admin
feature: Best Practices, Cache
exl-id: 8b3c9167-d2fa-4894-af45-6924eb983487
---
# Best practices for Redis service configuration
- Enable Redis L2 cache implementation
- Enable Redis slave connection
- Pre-load keys
- Enable stale cache
- Separate the Redis cache from the Redis session
- Compress the Redis cache and use `gzip` for higher compression

## Redis L2 cache implementation

Update your configuration to use Redis L2 cache implementation `'\Magento\Framework\Cache\Backend\RemoteSynchronizedCache'`.

Configure Redis L2 cache by setting the `REDIS_BACKEND` deployment variable in the `.magento.env.yaml` configuration file.

```yaml
stage:
  deploy:
    REDIS_BACKEND: '\Magento\Framework\Cache\Backend\RemoteSynchronizedCache'
```

For details, see the [`REDIS_BACKEND`](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/configure/env/stage/variables-deploy.html#redis_backend) guide.

For on-premises, follow the [instructions here.](../../../configuration/cache/redis-pg-cache.md#configure-redis-page-caching)

>[!NOTE]
> Make sure `ece-tools` is [update to the latest version](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/dev-tools/ece-tools/update-package.html). 

## Enable Redis slave connection
Enable Redis slave connection in `.magento.env.yaml` configuration file to allow only one node to handle read-write traffic while the other nodes handle the reading

```yaml
stage:
  deploy:
    REDIS_USE_SLAVE_CONNECTION: true
```
More details on [REDIS_USE_SLAVE_CONNECTION](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/configure/env/stage/variables-deploy.html#redis_use_slave_connection)
>[!WARNING]
>
>Do _not_ configure a Redis slave connection for cloud infrastructure projects with a [scaled/split architecture](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/architecture/scaled-architecture.html). This causes Redis connection errors. See [the Redis configuration guidance](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/configure/env/stage/variables-deploy.html#redis_use_slave_connection) in the _Commerce on Cloud Infrastructure_ guide.

## Pre-load keys
Preload data that is reused between pages by listing the keys you want to be preloaded in `.magento.env.yaml`, example:

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
For on-premises, follow the [instructions here.](https://experienceleague.adobe.com/docs/commerce-operations/configuration-guide/cache/redis/redis-pg-cache.html#redis-preload-feature)

## Enable stale cache
Enhance performance by reducing lock waiting times, especially when dealing with numerous Blocks or Cache keys. It allows serving outdated cache while generating a new one in parallel. All you need is to define the cache type you want to enable stale cache in your `.magento.env.yaml`, example:
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
For more details and how to configure on-premises, follow the [instructions here.](https://experienceleague.adobe.com/docs/commerce-operations/configuration-guide/cache/level-two-cache.html#stale-cache-options)
## Separate Redis cache and session instances

Separating the Redis cache from Redis session allows you to manage the cache and sessions independently. It prevents cache issues from affecting sessions, which could have impact on revenue. Each Redis instance will run on its own core, which also brings performance improvement.

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

1. Submit an [Adobe Commerce Support ticket](https://experienceleague.adobe.com/docs/commerce-knowledge-base/kb/help-center-guide/magento-help-center-user-guide.html#submit-ticket) requesting the provision of a new Redis instance dedicated to sessions on Production and Staging environments. Include the updated `.magento/services.yaml` and `.magento.app.yaml` configuration files. This won't cause any downtime, but requires a deployment to activate the new service.

1. Verify that the new instance is running and make a note of the port number.

   ```bash
   echo $MAGENTO_CLOUD_RELATIONSHIPS | base64 -d | json_pp
   ```

1. Add the port number to the `.magento.env.yaml` configuration file.

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

```terminal
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

If you are using over 6gb of Redis maxmemory, you can use cache compression to reduce the space consumed by the keys, but be aware that there is a trade-off with client-side performance. If you have spare CPUs, enable it. See [Use Redis for session storage](../../../configuration/cache/redis-session.md).

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
