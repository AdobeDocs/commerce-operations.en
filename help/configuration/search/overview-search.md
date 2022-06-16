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

After you install and integrate your search engine with Adobe Commerce, you might must perform additional maintenance:

- [Configure search stopwords](search-stopwords.md)
- [Search engine configuration](configure-search-engine.md)

<!-- Link Definitions -->

[Search engine prerequisites]: https://devdocs.magento.com/guides/v2.4/install-gde/prereq/elasticsearch.html
[Configure nginx for your search engine]: https://devdocs.magento.com/guides/v2.4/install-gde/prereq/es-config-nginx.html
[Configure Apache for your search engine]: https://devdocs.magento.com/guides/v2.4/install-gde/prereq/es-config-apache.html
[Elasticsearch]: https://www.elastic.co
[Elasticsearch documentation]: https://www.elastic.co/guide/en/elasticsearch/reference/current/index.html
[Install the Magento software]: https://devdocs.magento.com/guides/v2.4/install-gde/install/cli/install-cli-install.html
[OpenSearch]: https://opensearch.org/docs/latest/opensearch/install/index/
