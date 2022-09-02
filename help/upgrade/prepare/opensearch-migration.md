---
title: Migrate from Elasticsearch to OpenSearch
description: Learn about replacing the search engine used for on-premises installations of Adobe Commerce and Magento Open Source.
---

# Migrating to OpenSearch

OpenSearch is an open source fork of Elasticsearch 7.10.2 that was created after Elasticsearch's licensing change.

As of 2.4.4, 2.4.3-p2, and 2.3.7-p3, Adobe Commerce and Magento Open Source support OpenSearch. On-premises installations continue to support Elasticsearch, although it is no longer supported for Adobe Commerce on cloud infrastructure.
Starting with version 2.4.6 OpenSearch Engine has its own module and fields in the settings.

## Migration path

The steps to migrate to OpenSearch are simple and largely follow the steps for Elasticsearch configuration. These steps assume that Adobe Commerce is the only application using the search engine. In cases where multiple applications use the search engine, follow the official migration guide [Moving from open source Elasticsearch to OpenSearch](https://opensearch.org/blog/technical-posts/2021/10/moving-from-opensource-elasticsearch-to-opensearch/).

1. Ensure that your installation meets the [search engine prerequisites](https://devdocs.magento.com/guides/v2.4/install-gde/prereq/elasticsearch.html).

1. Place the site in [Maintenance Mode](https://devdocs.magento.com/guides/v2.4/install-gde/install/cli/install-cli-subcommands-maint.html).

1. Optionally uninstall Elasticsearch.

1. [Install OpenSearch](https://opensearch.org/docs/latest/opensearch/install/important-settings/).

1. [Configure the search engine](https://devdocs.magento.com/guides/v2.4/config-guide/elasticsearch/configure-magento.html) and perform related tasks, such as flushing the cache and reindexing the catalog search index.

No further configuration value changes are necessary.
