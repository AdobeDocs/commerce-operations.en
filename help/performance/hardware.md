---
title: Hardware Recommendations
description: Learn about hardware recommendations for optimal Adobe Commerce performance. Discover CPU, memory, and storage requirements for production deployments.
feature: Best Practices, Install
exl-id: ab548c4b-6f56-4409-a4ed-5c959939e04b
---
# Hardware recommendations

## CPUs

[!DNL Commerce] web nodes serve all requests that are not cached or cannot be cached through the application. One CPU core can serve around two (sometimes up to four) [!DNL Commerce] requests effectively. Use the following equation to determine how many  web nodes/cores you need to process all incoming requests without putting them into queue:

```
N[Cores] = (N[Expected Requests] / 2) + N [Expected Cron Processes]
```

If you expect a store's load to change, you can manually increase the number of web nodes/cores for an active sales period. Alternatively, an auto-scaling model can be used for automatically extending web tiers.

## Memory

### PHP

Magento has differing PHP memory requirements, based on how your system is deployed.  In general, if you are setting up a single server store, we recommend configuring PHP memory for 2G.  If you are setting up a site using pipeline deployment, we recommend 2 GB on your build server and 1 GB on your web nodes.

Scenarios and expected PHP memory requirements:

* Webnode serving only storefront pages: 256 MB
* Webnode serving admin pages with a large catalog: 1 GB
* [!DNL Commerce] cron indexing a site with a large catalog: >256 MB (See [advanced-setup](../performance/advanced-setup.md) to tune for optimal performance.)
* [!DNL Commerce] compile and deploy of static assets: 756 MB
* [!DNL Commerce] performance toolkit profile generation: >1 GB PHP RAM, >16 MB [!DNL MySQL] TMP_TABLE_SIZE & MAX_HEAP_TABLE_SIZE settings

### [!DNL MySQL]

The [!DNL Commerce] database (as well as any other database) is sensitive to the amount of the memory available for storing data and indexes. To effectively leverage [!DNL MySQL] data indexation, the amount of memory available should be, at minimum, close to half the size of the data stored in the database.

### Caches

If you are deploying multiple [!DNL Commerce] and using Redis or [!DNL Varnish] for your caches, please keep the following principles in mind:

* [!DNL Varnish] full page cache memory invalidation is effective, recommend enough memory allocated to [!DNL Varnish] to hold your most popular pages in memory
* Session cache is a good candidate to configure for a separate instance of Redis.  Memory configuration for this cache type should consider the site's cart abandonment strategy and how long a session should expect to remain in the cache
* Redis should have enough memory allocated to hold all other caches in memory for optimal performance.  Block cache will be the key factor in determining the amount of memory to configure.  Block cache grows relative to number of pages on a site (number of skus x number of store views)

## Network bandwidth

Sufficient network bandwidth is one of the key requirements for data exchange between web nodes, database(s), caching/session servers, and other services. Because [!DNL Commerce] effectively leverages caching for high performance, your system can actively exchange data with caching servers like Redis. If Redis is located on a remote server, you must provide a sufficient network channel between web nodes and the caching server to prevent bottlenecks on read/write operations.
