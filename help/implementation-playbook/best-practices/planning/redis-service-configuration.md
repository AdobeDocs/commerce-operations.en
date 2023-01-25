---
title: Best practices for Redis service configuration
description: Learn how to improve caching performance by using the extended Redis cache implementation for Adobe Commerce 2.3.5.
role: Developer, Admin
feature-set: Commerce
feature: Best Practices
---

# Best practices for Redis service configuration

- For Adobe Commerce 2.3.3 and later deployed on cloud infrastructure, upgrade to Redis version 5.0.
- For Adobe Commerce version 2.3.5 or higher, use the extended Redis cache implementation. This implementation includes the following optimizations to minimize the number of Redis queries that are performed on each request from Adobe Commerce:
    - Diminish the size of network data transfers between Redis and Adobe Commerce
    - Lower Redis consumption of CPU cycles by improving the adapter's ability to automatically determine what needs to be loaded
    - Reduce race conditions on Redis write operations

## Affected products and versions

Adobe Commerce on cloud infrastructure with version 2.3.3 or later.
Adobe Commerce (all deployment methods), version 2.3.5 and later

## Update Redis version for cloud deployments

For Adobe Commerce deployments on cloud infrastructure with Adobe Commerce 2.3.3 or later, upgrade the Redis service to Redis version 5.0. For instructions, see the following topics in the Adobe Commerce on cloud infrastructure documentation:

- [Set up Redis service](https://devdocs.magento.com/cloud/project/services-redis.html)
- [Change the service version](https://devdocs.magento.com/cloud/project/services.html#change-service-version)

## Configure the extended Redis cache implementation

For Adobe Commerce 2.3.5 and higher, update your configuration to use the extended Redis cache implementation `\Magento\Framework\Cache\Backend\Redis`.

### Configuration for cloud deployments

With `ece-tools` 2002.1.1 or higher, configure enhanced Redis cache by setting the `REDIS_BACKEND` deployment variable in the environment configuration file, `.magento.env.yaml`

```yaml
stage:
  deploy:
    REDIS_BACKEND: '\Magento\Framework\Cache\Backend\Redis'
```

For details, see [Deploy variables > `REDIS_BACKEND`](https://devdocs.magento.com/cloud/env/variables-deploy.html#redis_backend) in the documentation for Adobe Commerce on cloud infrastructure.

>[!NOTE]
>
> Check the ece-tools version installed in your local Cloud environment from the command line using the `composer show magento/ece-tools` command. If necessary, [update the ece-tools version](https://devdocs.magento.com/cloud/project/ece-tools-update.html). 

</br>

>[!WARNING]
>
>For scaled architecture (split architecture), Redis slave connections **SHOULD NOT** be enabled. You can check if you are on scaled architecture by going to your project URL, e.g. https:&#8203;//us.magento.cloud/projects/&lt;project ID&gt;/environments/production. Click on the Access site. If there are more than three nodes shown under SSH access, you are on scaled architecture. If you enable Redis Slave Reads on scaled architecture, the customer will receive errors on Redis connections not being able to connect. This has to do with how the clusters are configured to process Redis connections. Redis Slaves are still active but will not be used for Redis Reads. We recommend for scaled architecture to use Adobe Commerce 2.3.5 or later and implement new Redis back-end configuration and implement L2 caching for Redis.


### Configuration for on-premises deployments

For Adobe Commerce on-premises deployments, configure the new Redis cache implementation using the `bin/magento:setup` commands. For instructions, see [Use Redis for default cache](../../../configuration/cache/redis-pg-cache.md#configure-redis-page-caching).

## Additional information

- [Adobe Commerce Release v2.3.5 - Performance boosts](https://devdocs.magento.com/guides/v2.3/release-notes/release-notes-2-3-5-commerce.html#performance-boosts)
- [Redis Page Cache](../../../configuration/cache/redis-pg-cache.md)


