---
title: Install and Set Up Valkey
description: Learn how to install and configure Valkey for caching and session storage with Adobe Commerce. Discover options for optimization and performance tuning.
feature: Configuration, Cache
exl-id: 12dbc171-3df6-4413-869b-a3450b5647b4
badgePaas: label="On Premises" type="Informative" url="https://experienceleague.adobe.com/en/docs/commerce/user-guides/product-solutions" tooltip="Applies to Adobe Commerce on-premises projects only."
TQID: 'https://experienceleague.adobe.com/Ef4WREy0eq0ChsrI5-0FtrjMZWNjwr7l71Pm-RHD1GI'
product_v2:
  - id: b974b164-8a4e-43b8-a9e2-8e67ec131677
    internal-label: Commerce on Prem
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: dac87252-6066-4d6e-a9d2-f6d84c323de7
    internal-label: Configuration
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: b5a62a22-46f7-4f0d-b151-3fc640bef588
    internal-label: Intermediate
topic_v2:
  - id: b5ce8718-c3af-4fdb-a1a9-fca32f83a87c
    internal-label: Implementation
---
# Install and set up Valkey

Valkey is an open-source, Redis-compatible in-memory data store that can be used as a cache backend and for session storage. Key features include:

- PHP session storage
- Tag-based cache cleanup without `foreach` loops
- On-disk saves and master/slave replication

{{cloud-cache-config}}

## Install Valkey

To install and configure the Valkey software, consult the following resources:

- [Download Valkey page](https://valkey.io/download/){target="_blank"}
- [Valkey quick start](https://valkey.io/topics/quickstart/){target="_blank"}
- [Valkey documentation page](https://valkey.io/docs){target="_blank"}

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
