---
title: The [!UICONTROL Elasticsearch] tab
description: Learn about the [!UICONTROL Elasticsearch] tab of [!DNL Observation for Adobe Commerce].
exl-id: e98d351d-b3b1-47bc-bc0d-f96ba9ec2b80
feature: Configuration, Observability
---
# The [!UICONTROL Elasticsearch] tab

## [!UICONTROL Cluster Status Summary]:

![Cluster Status Summary](../../assets/tools/cluster-status-summary.jpg)

Over the selected timeframe, the **[!UICONTROL Cluster Status Summary]** frame shows the color statuses that the [!DNL Elasticsearch] cluster has gone through. In this example, during the selected timeframe, the cluster was in Green status once and in Yellow status once during the selected timeframe.

## [!UICONTROL Active Primary Shards]

![Active Primary Shards](../../assets/tools/active-primary-shards.jpg)

The **[!UICONTROL Active Primary Shards]** frame shows the differing numbers depending on the number of active primary shards for the selected account's [!DNL Elasticsearch] service.

From [!DNL Elasticsearch]: The definitive Guide [2.x]:

"In [Dynamically Updatable Indices](https://www.elastic.co/guide/en/elasticsearch/guide/2.x/dynamic-indices.html), we explained that a shard is a Lucene index and that an [!DNL Elasticsearch] index is a collection of shards. Your application talks to an index, and [!DNL Elasticsearch] routes your requests to the appropriate shards. A shard is the unit of scale. The smallest index you can have is one with a single shard. This may be more than sufficient for your needs — a single shard can hold a lot of data — but it limits your ability to scale."

When an index is created, there are several shards created with that index. By default, five primary shards are allotted to each new index, meaning that an index can be spread across five nodes (one shard per node). There are also replica shards. These are primarily for failover. Replica shards can serve read requests.

## [!UICONTROL Active Shards in Cluster]

![Active Shards in Cluster](../../assets/tools/active-shards-in-cluster.jpg)

The **[!UICONTROL Active Shards in Cluster]** frame shows the total number of primary and replica shards in an [!DNL Elasticsearch] cluster.

## [!UICONTROL Index health - this will show the index name and color status]

![Index health](../../assets/tools/index-health.jpg)

This frame shows the index name and the index color status count. Scrolling down the table, you will see the same index name with Yellow and Red color statuses. The number that follows the 27 index name is the count of the status color. If it is zero, there were no instances of the index being in that color status during the selected timeframes.

## [!UICONTROL Elasticsearch Status by node information]

![Elasticsearch Status](../../assets/tools/elasticsearch-status-by-node.jpg)

The **[!UICONTROL Elasticsearch Status by node information]** frame shows the [!DNL Elasticsearch] cluster status by color and by node. This helps indicate which node in the [!DNL Elasticsearch] cluster is returning what status during the selected timeframe.

## [!UICONTROL Elasticsearch index information]

![Elasticsearch index information](../../assets/tools/elasticsearch-tab-elasticsearch-index-information-image-1.jpg)

The **[!UICONTROL Elasticsearch index information]** table shows the index name, what node it is on, the number of indexed documents, the index health, and the index size in MB at a particular time.

## [!UICONTROL Elasticsearch process CPU %]

![Elasticsearch process CPU](../../assets/tools/elasticsearch-process-cpu.jpg)

The **[!UICONTROL Elasticsearch process CPU %]** frame shows the process CPU percent by the [!DNL Elasticsearch] process over the selected timeframe.

## [!UICONTROL Elasticsearch Memory garbage collection]

![Elasticsearch Memory garbage](../../assets/tools/elasticsearch-memory-garbage.jpg)

[!DNL Elasticsearch] is a Java process. If it runs low on allocated memory, it will initiate garbage collection to free up memory. If garbage collection is frequent, it is an indication that there may be too many indices or shards for the allocated memory. There may be an opportunity to clean up the indices and shards or [!DNL Elasticsearch] may need more memory.

## [!UICONTROL Elasticsearch Index information]

![Elasticsearch Index Information](../../assets/tools/elasticsearch-index-information-2.jpg)

As indexes are created and updated, the index health may change.

## [!UICONTROL Elasticsearch Index Size]

![Elasticsearch Index size](../../assets/tools/elasticsearch-index-size.jpg)

The **[!UICONTROL Elasticsearch Index Size]** frame indicates the index name and size across the selected timeframe. It may indicate problems with how a site is indexing.

## [!UICONTROL Elasticsearch Errors]

![Elasticsearch Errors](../../assets/tools/elasticsearch-tab-elasticsearch-errors.jpg)

The **[!UICONTROL Elasticsearch Errors]** frame displays errors with [!DNL Elasticsearch] like running out of space, switching from Yellow to Red status, when all shards fail, when there are parameter issues with searches, version errors and when all nodes are unavailable.

## [!UICONTROL Elasticsearch Unassigned Shards]:

![Elasticsearch Unassigned Shards](../../assets/tools/elasticsearch-unassigned-shards.jpg)

Unassigned shards will cause a cluster to move from Green status to Yellow status.
