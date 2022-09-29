---
title: Search engine overview
description: Overview of search engine options for Adobe Commerce and Magento Open Source.
---

# Search engine overview

As of version 2.4.4, Adobe Commerce and Magento Open Source requires either [Elasticsearch][] or [OpenSearch][] to be the catalog search engine. Previous versions of 2.4.x required Elasticsearch. Refer to the following topics for details about installing a search engine and initial configuration:

- [Search engine prerequisites][]
- [Configure nginx for your search engine][]
- [Configure Apache for your search engine][]
- [Install the Commerce software][] (command-line interface)

After you install and integrate your search engine with Adobe Commerce, you must perform additional maintenance:

- [Configure search stopwords](search-stopwords.md)
- [Search engine configuration](configure-search-engine.md)

<!-- Link Definitions -->

[Search engine prerequisites]: ../../installation/prerequisites/search-engine/overview.md
[Configure nginx for your search engine]: ../../installation/prerequisites/search-engine/configure-nginx.md
[Configure Apache for your search engine]: ../../installation/prerequisites/search-engine/configure-apache.md
[Elasticsearch]: https://www.elastic.co
[Install the Commerce software]: ../../installation/composer.md
[OpenSearch]: https://opensearch.org/docs/latest/opensearch/install/index/
