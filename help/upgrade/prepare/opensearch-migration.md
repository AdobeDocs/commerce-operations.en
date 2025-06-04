---
title: Migrate from Elasticsearch to OpenSearch
description: Learn about replacing the search engine used for on-premises installations of Adobe Commerce.
feature: Upgrade, Search
exl-id: 56f1e609-83d2-4705-99d8-b395bb511411
---
# Migrating to OpenSearch

OpenSearch is an open source fork of Elasticsearch 7.10.2 that was created after Elasticsearch's licensing change.

As of 2.4.4, 2.4.3-p2, and 2.3.7-p3, Adobe Commerce supports OpenSearch. On-premises installations continue to support Elasticsearch, although it is no longer supported for Adobe Commerce on cloud infrastructure. Starting with version 2.4.6 OpenSearch has its own module and fields in the Admin configuration settings.

## Migration path

The steps to migrate to OpenSearch are simple and largely follow the steps for Elasticsearch configuration. These steps assume that Adobe Commerce is the only application using the search engine. In cases where multiple applications use the search engine, follow the official migration guide [Moving from open source Elasticsearch to OpenSearch](https://opensearch.org/blog/moving-from-opensource-elasticsearch-to-opensearch/).

1. Ensure that your installation meets the [search engine prerequisites](../../installation/prerequisites/search-engine/overview.md).

1. Place the site in [Maintenance Mode](../../installation/tutorials/maintenance-mode.md).

1. Optionally uninstall Elasticsearch.

1. [Install OpenSearch](https://opensearch.org/docs/latest/opensearch/install/important-settings/).

1. [Configure the search engine](../../configuration/search/configure-search-engine.md) and perform related tasks, such as flushing the cache and reindexing the catalog search index.

No further configuration value changes are necessary.
