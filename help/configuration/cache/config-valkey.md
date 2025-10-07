---
title: Configure Valkey
description: Learn how to configure Valkey caching for Adobe Commerce performance optimization. Discover features, setup steps, and configuration best practices.
feature: Configuration, Cache
exl-id: 12dbc171-3df6-4413-869b-a3450b5647b4
---
# Configure Valkey

Valkey features include:

- PHP session storage
- Tag-based cache cleanup without `foreach` loops
- On-disk saves and master/slave replication

## Install Valkey

To install and configure the Valkey software, consult the following resources:

- [Download Valkey page](https://valkey.io/download/)
- [Valkey quick start](https://valkey.io/topics/quickstart/)
- [Valkey documentation page](https://valkey.io/docs)

## Set up Valkey configuration

Depending on your installation, you can usually find your Valkey configuration in either the `/etc/valkey/valkey.conf` file or `/etc/valkey/<port>.conf` file.

To optimize the Valkey instance for your requirements, you can get the best results by using a dedicated instance for each session, Commerce cache, and FPC.

Adobe recommends enabling persistence for sessions to copy Valkey data to disk. You can use either Valkey Database Backup (RDB) snapshots or Append Only File (AOF) persistence logs.

- **RDB** (Valkey Database) snapshots store the complete database in a dump file after a given time, when a minimum number of keys have changed since the last save. Use the `save` setting inside the `valkey.conf` file to configure this setting.

- **Append Only File** (AOF) stores each write operation sent to Valkey in a journal file. Valkey reads this file on restart only and uses it to restore the original dataset.

You can also enable both the RDB and AOF options at the same time. For additional details including the advantages and disadvantages of the persistence options, see the [Valkey Persistence documentation](https://valkey.io/topics/persistence/).

For the cache instance, set up the instance so that it is large enough to store your entire Commerce cache. Size requirements depend on different factors like the number of products and store views. As a starting point, you can use the size of the cache folder on your file system. For example, if the `var/cache` folder on your file system is 5 GB, set up your Valkey instance with at least 5 GB to start. Persistence is not required for the cache instance because the Commerce cache can be restored.

For performance tuning, you can enable the following settings for asynchronous deletion. These settings do not change the behavior of Valkey.

```ini
lazyfree-lazy-eviction yes
lazyfree-lazy-expire yes
lazyfree-lazy-server-del yes
replica-lazy-flush yes
lazyfree-lazy-user-del yes
```
