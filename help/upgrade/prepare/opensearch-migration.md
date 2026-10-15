---
title: Migrate from Elasticsearch to OpenSearch
description: Learn about replacing the search engine used for on-premises installations of Adobe Commerce.
feature: Upgrade, Search
exl-id: 56f1e609-83d2-4705-99d8-b395bb511411
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: a8ae7a5a-6cdc-5922-bd0d-6feb44b04984
    internal-label: Upgrade
  - id: dac87252-6066-4d6e-a9d2-f6d84c323de7
    internal-label: Configuration
subfeature_v2:
  - id: a1d22079-48b9-5e69-9ee6-eb236068ef34
    internal-label: Search
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
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
