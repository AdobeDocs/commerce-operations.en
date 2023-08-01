---
title: Best practices for Redis service configuration
description: Learn how to improve caching performance by using the extended Redis cache implementation for Adobe Commerce.
role: Developer, Admin
feature: Best Practices, Cache
exl-id: 8b3c9167-d2fa-4894-af45-6924eb983487
---
# Best practices for Redis service configuration

- Use the extended Redis cache implementation, which includes the following optimizations to minimize the number of Redis queries that are performed on each request from Adobe Commerce:
  - Diminishes the size of network data transfers between Redis and Adobe Commerce
  - Lowers Redis consumption of CPU cycles by improving the adapter's ability to automatically determine what needs to be loaded
  - Reduces race conditions on Redis write operations
- Separate the Redis cache from the Redis session
- Compress the Redis cache and use `gzip` to improve performance

## Extended Redis cache implementation

Update your configuration to use the extended Redis cache implementation `\Magento\Framework\Cache\Backend\Redis`.

### Configure cloud deployments

Configure enhanced Redis cache by setting the `REDIS_BACKEND` deployment variable in the `.magento.env.yaml` configuration file.

```yaml
stage:
  deploy:
    REDIS_BACKEND: '\Magento\Framework\Cache\Backend\Redis'
```

For details, see the [`REDIS_BACKEND`](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/configure/env/stage/variables-deploy.html#redis_backend) variable description in the _Commerce on Cloud Infrastructure Guide_.

>[!NOTE]
>
> Check the `ece-tools` version installed in your local environment from the command line using the `composer show magento/ece-tools` command. If necessary, [update to the latest version](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/dev-tools/ece-tools/update-package.html). 

>[!WARNING]
>
>Do _not_ configure a Redis slave connection for cloud infrastructure projects with a [scaled architecture](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/architecture/scaled-architecture.html). This causes Redis connection errors. See [the Redis configuration guidance](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/configure/env/stage/variables-deploy.html#redis_use_slave_connection) in the _Commerce on Cloud Infrastructure_ guide.

### Configure on-premises deployments

For Adobe Commerce on-premises deployments, configure the new Redis cache implementation using the `bin/magento:setup` commands. For instructions, see [Use Redis for default cache](../../../configuration/cache/redis-pg-cache.md#configure-redis-page-caching).

## Separate cache and session instances

Separating the Redis cache from Redis session allows you to manage the cache and sessions independently to prevent cache issues from affecting sessions.

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

1. Submit an [Adobe Commerce Support ticket](https://experienceleague.adobe.com/docs/commerce-knowledge-base/kb/help-center-guide/magento-help-center-user-guide.html#submit-ticket) to change the Redis service configuration on Pro Production and Staging environments. Include the updated `.magento/services.yaml` and `.magento.app.yaml` configuration files.

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

Use cache compression, but be aware that there is a trade-off with client-side performance. If you have spare CPUs, enable it. See [Use Redis for session storage](../../../configuration/cache/redis-session.md).

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
