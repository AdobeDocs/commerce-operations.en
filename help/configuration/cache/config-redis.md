---
title: Configure Redis
description: Learn how to configure Redis caching for Adobe Commerce performance optimization. Discover features, setup steps, and configuration best practices.
feature: Configuration, Cache
exl-id: e037c382-334a-4096-a417-a25fdb61a9ce
---
# Configure Redis

Redis features include:

- PHP session storage
- Tag-based cache cleanup without `foreach` loops
- On-disk saves and master/slave replication

## Install Redis

Installing and configuring the Redis software is beyond the scope of this guide. Consult resources such as:

- [Download Redis page](https://redis.io/download)
- [Redis quick start](https://redis.io/docs/latest/)
- [DigitalOcean](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-redis)
- [Redis documentation page](https://redis.io/docs)

## Set up Redis configuration

Depending on your installation, you can usually find your Redis configuration in one of the following files: `/etc/redis/redis.conf` or `/etc/redis/<port>.conf`

To optimize the Redis instance for your requirements, you get best results by using a dedicated instance for each session, Commerce cache and FPC.

For sessions, Adobe recommends that you enable persistence to copy Redis data to disk using either of the following persistence options: regular Redis Database Backup (RDB) snapshots, or Append Only File (AOF) persistence logs.

- **Redis Database Backup** (RDB) snapshots store the complete database in a dump file after a given time, when a minimum number of keys have changed since the last save. Use the `save` setting inside the `redis.conf` file to configure this setting.

- **Append Only File** (AOF) stores each write operation sent to Redis in a journal file. Redis reads this file on restart only and uses it to restore the original dataset.

You can also enable both the RDB and AOF options at the same time. For additional details including the advantages and disadvantages of the persistence options, see the [Redis Persistence documentation](https://redis.io/topics/persistence).

For the cache instance, set up the instance so that it is large enough to store your entire Commerce cache. Size requirements depend on different factors like the number of products and store views. As a starting point, you can use the size of the cache folder on your file system. For example, if the `var/cache` folder on your file system is 5 GB, set up your Redis instance with at least 5 GB to start. Persistence is not required for the cache instance because the Commerce cache can be restored. See [Redis cache guide](https://redis.io/docs/latest/develop/use/).

For performance tuning, you can enable the following settings for asynchronous deletion. These settings do not change the behavior of Redis.

```ini
lazyfree-lazy-eviction yes
lazyfree-lazy-expire yes
lazyfree-lazy-server-del yes
replica-lazy-flush yes
```

On Redis 6.x and later, you can also add the following value:

```ini
lazyfree-lazy-user-del yes
```
