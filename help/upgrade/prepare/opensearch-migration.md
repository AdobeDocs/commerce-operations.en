---
title: Migrate from Elasticsearch to OpenSearch
description: Learn about replacing the search engine used for on-premises installations of Adobe Commerce and Magento Open Source.
---

# Migrating to OpenSearch

OpenSearch is an open source fork of Elasticsearch 7.10.2 that was created after Elasticsearch's licensing change.

As of 2.4.4, 2.4.3-p2, and 2.3.7-p3, {{ site.data.var.ee }} and {{ site.data.var.ce }} support OpenSearch. On-premises installations continue to support Elasticsearch, although it is no longer supported for {{ site.data.var.ece }} 2.4.4.

The OpenSearch blog post [Moving from open source Elasticsearch to OpenSearch](https://opensearch.org/blog/technical-posts/2021/10/moving-from-opensource-elasticsearch-to-opensearch/) describes the process of migrating to OpenSearch, including the upgrade path if you are starting from a version of Elasticsearch that is lower than 7.0.

## Migration path

The steps to migrate to OpenSearch are simple and largely follow the steps for Elasticsearch configuration.

1. Ensure that your installation meets the [search engine prerequisites](https://devdocs.magento.com/guides/v2.4/install-gde/prereq/elasticsearch.html).

1. Place the site in [Maintenance Mode](https://devdocs.magento.com/guides/v2.4/install-gde/install/cli/install-cli-subcommands-maint.html) and optionally uninstall Elasticsearch.

1. [Install OpenSearch](https://opensearch.org/docs/latest/opensearch/install/important-settings/).

1. [Configure Magento to use Elasticsearch](https://devdocs.magento.com/guides/v2.4/config-guide/elasticsearch/configure-magento.html), flush the cache, and reindex the catalog search index.

No further configuration value changes are necessary.
