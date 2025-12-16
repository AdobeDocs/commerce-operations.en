---
title: Configure Redis with AWS ElastiCache
description: For Commerce instances hosted on EC2, learn how use AWS ElastiCache in place of a local Redis instance. Discover command-line setup, configuration options, and validation techniques.
feature: Configuration, Cache
---

# Configure Redis with AWS ElastiCache

As of Commerce 2.4.3, instances hosted on Amazon EC2 may use an AWS ElastiCache in place of a local Redis instance.

>[!WARNING]
>
>This section only works for Commerce instances running on Amazon EC2 VPCs. It does not work for on-premises installations.

## Configure a Redis cluster

After [setting up a Redis cluster on AWS](https://aws.amazon.com/getting-started/hands-on/setting-up-a-redis-cluster-with-amazon-elasticache/), configure the EC2 instance to use the ElastiCache.

1. [Create an ElastiCache Cluster](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/set-up.html) in the same region and VPC of the EC2 instance.
1. Verify the connection.

   - Open an SSH connection to your EC2 instance
   - On the EC2 instance, install the Redis client:

      ```bash
      sudo apt-get install redis
      ```

   - Add an inbound rule to the EC2 security group: Type `- Custom TCP, port - 6379, Source - 0.0.0.0/0`
   - Add an inbound rule to the ElastiCache Cluster security group: Type `- Custom TCP, port - 6379, Source - 0.0.0.0/0`
   - Connect to the Redis CLI:

      ```bash
      redis-cli -h <ElastiCache Primary Endpoint host> -p <ElastiCache Primary Endpoint port>
      ```

### Configure Commerce to use the cluster

Commerce supports multiple types of caching configurations. Generally, the caching configurations are split between frontend and backend. Frontend caching is classified as `default`, used for any cache type. You can customize or split into lower-level caches to achieve better performance. A common Redis configuration is separating the default cache and page cache into their own Redis Database (RDB).

Run `setup` commands to specify the Redis endpoints.

To configure Commerce for Redis as default caching:

```bash
bin/magento setup:config:set --cache-backend=redis --cache-backend-redis-server=<ElastiCache Primary Endpoint host> --cache-backend-redis-port=<ElastiCache Primary Endpoint port> --cache-backend-redis-db=0
```

To configure Commerce for Redis page caching:

```bash
bin/magento setup:config:set --page-cache=redis --page-cache-redis-server=<ElastiCache Primary Endpoint host> --page-cache-redis-port=<ElastiCache Primary Endpoint port> --page-cache-redis-db=1
```

To configure Commerce to use Redis for session storage:

```bash
bin/magento setup:config:set --session-save=redis --session-save-redis-host=<ElastiCache Primary Endpoint host> --session-save-redis-port=<ElastiCache Primary Endpoint port> --session-save-redis-log-level=4 --session-save-redis-db=2
```

## Verify connectivity

**To verify that Commerce is talking to ElastiCache**:

1. Open an SSH connection to the Commerce EC2 instance.
1. Start the Redis monitor.

   ```bash
   redis-cli -h <ElastiCache-Primary-Endpoint-host> -p <ElastiCache-Primary-Endpoint-port> monitor
   ```

1. Open a page in the Commerce UI.
1. Verify the [cache output](#verify-the-redis-connection) in your terminal.
