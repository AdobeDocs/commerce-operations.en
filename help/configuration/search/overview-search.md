---
title: Search engine overview
description: Learn about Elasticsearch and OpenSearch for Adobe Commerce catalog search, prerequisites, web server setup, and post-install maintenance tasks.
feature: Configuration, Search
exl-id: 0ea78ca2-0bca-4d61-980a-02fb7da04553
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
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
# Search engine overview

As of version 2.4.4, Adobe Commerce requires either [Elasticsearch](https://www.elastic.co) or [OpenSearch](https://opensearch.org/docs/latest/opensearch/install/index/) to be the catalog search engine. Previous versions of 2.4.x required Elasticsearch. Refer to the following topics for details about installing a search engine and initial configuration:

- [Search engine prerequisites](../../installation/prerequisites/search-engine/overview.md)
- [Configure nginx for your search engine](../../installation/prerequisites/search-engine/configure-nginx.md)
- [Configure Apache for your search engine](../../installation/prerequisites/search-engine/configure-apache.md)
- [Install the Commerce software](../../installation/composer.md) (command-line interface)

After you install and integrate your search engine with Adobe Commerce, you must perform additional maintenance:

- [Configure search stopwords](search-stopwords.md)
- [Search engine configuration](configure-search-engine.md)

