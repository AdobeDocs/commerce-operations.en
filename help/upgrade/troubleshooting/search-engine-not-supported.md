---
title: Current Search Engine Not Supported
description: Troubleshoot your Adobe Commerce upgrade after encountering an error about an unsupported search engine.
feature: Upgrade, Search
exl-id: 11479d23-53a5-4086-9f9a-c3420ccad073
---
# Current search engine not supported

The following error message indicates that the Adobe Commerce version you are upgrading from is configured to use a catalog search engine that is not supported in the version you are upgrading to:

```
Your current search engine, <Engine Name>, is not supported. You must install a supported search engine before upgrading. See the System Upgrade Guide for more information.
```

This error means one of the following conditions is true on the down-level version of Adobe Commerce:

- The search engine is set to MySQL.
- The search engine is set to a version of Elasticsearch that is no longer supported.

Use the following command to check the current search engine:

```bash
bin/magento config:show catalog/search/engine
```

The error occurs if the returned value is `mysql`, `elasticsearch`, or `elasticsearch6`.

>[!WARNING]
>
>If you have received this error, your installation is in an inconsistent state, and you cannot access the Admin. We recommend that you revert to your previous version while you resolve this error. To do this, run one of the following commands:
>
>```bash
>composer require-commerce magento/product-enterprise-edition=<version>
>```
>
>```bash
>composer require-commerce magento/product-community-edition=<version>
>```
>
>Where `<version>` is the version of Magento you were running **before** the upgrade. For example, `2.3.5`.

Follow the guidelines described in the following sections to recover from an inconsistent state.

## If your search engine is `mysql`

Before 2.4, MySQL was the default catalog search engine, but MySQL is no longer supported in this capacity. Now, you must install and configure Elasticsearch or OpenSearch as your search engine before upgrading to 2.4.

Use the following resources to help guide you through this process:

- [Install and configure the search egnine](../../configuration/search/overview-search.md)
- [Search engine configuration](../../configuration/search/configure-search-engine.md)

After you configure the search engine and reindex, you are ready to upgrade to 2.4.

## If your search engine is `elasticsearch`

Elasticsearch 6 and earlier are no longer supported.

A value of `elasticsearch` indicates your down-level version of Adobe Commerce is configured to use Elasticsearch 2.x. This version of Elasticsearch is no longer supported.

You must perform the following tasks before upgrading to 2.4:

1. Update to a version of Elasticsearch that is supported by Commerce. Refer to [Upgrading Elasticsearch](https://www.elastic.co/guide/en/elasticsearch/reference/current/setup-upgrade.html) for full instructions on backing up your data, detecting potential migration issues, and testing upgrades before deploying to production. Depending on your current version of Elasticsearch, a full cluster restart may or may not be required.

   >[!NOTE]
   >
   >Elasticsearch requires JDK 1.8 or higher. See [Install the Java Software Development Kit (JDK)](../../installation/prerequisites/search-engine/overview.md#install-the-java-software-development-kit-jdk) to check which version of JDK is installed.

1. [Configure Elasticsearch](../../configuration/search/configure-search-engine.md) and reindex.

After you configure the search engine and reindex, you are ready to upgrade to 2.4.
