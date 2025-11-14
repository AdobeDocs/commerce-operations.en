---
title: Configuration best practices for indexers
description: Maintain and optimize site performance by following best practices for indexer configuration.
role: Admin, User
feature: Best Practices
exl-id: b35806f9-4bc6-407e-bedd-5ce3f09c1b9f
---
# Best practices for indexer configuration

To optimize and maintain site performance, review and update the indexer configuration using the performance best practices described in this article.

## Affected products and versions

[All supported versions](../../../release/versions.md) of:

- Adobe Commerce on cloud infrastructure
- Adobe Commerce on-premises

## Set indexers to update on a schedule

Adobe Commerce has two types of indexer modes: [!UICONTROL Update on Save] and [!DNL Update on Schedule].

- **[!UICONTROL Update on Save]** mode updates indexes immediately whenever your catalog or other data changes. For example, if an Admin user adds new products to a category, the category products index is reindexed immediately when the update is saved.

- **[!UICONTROL Update on Schedule]** mode stores information about data updates, and reindexing operations and index updates are managed by a cron job that runs in the background at scheduled intervals. The cron job does not always perform a reindex every time it runs. It reindexes only when there are new entries in the indexer change logs (for example, there is a backlog on the indexers).

Having a large store with multiple Admins working in the backend or having many imports and exports triggers frequent index updates. If your site index configuration is set to [!UICONTROL Update on Save] mode, frequent reindexing degrades database performance which slows site performance and causes long delays in the reindexing process, especially for large stores.

To maximize site performance, follow these best practices for indexing:

- Review the index configuration.
- Set the indexers to _[!UICONTROL Update on Schedule]_ for large sites, and sites with frequent updates and heavy traffic. See [Index Management](https://experienceleague.adobe.com/en/docs/commerce-admin/systems/tools/index-management#change-the-index-mode).
- Follow [performance best practices](../../../performance/configuration.md) for managing indexes.

>[!IMPORTANT]
>
>The [!DNL Customer Grid] indexer behavior changed in 2.4.8:
>
>- **Prior to 2.4.8**: The [!DNL Customer Grid] indexer can only be reindexed using the [!UICONTROL Update on Save] option and does not support the [!UICONTROL Update by Schedule] option.
>- **2.4.8 and later**: The [!DNL Customer Grid] indexer supports both [!UICONTROL Update on Save] and [!UICONTROL Update by Schedule] modes, and defaults to [!UICONTROL Update by Schedule].

## Additional information

- [Index Management for Admin users](../../../configuration/cli/manage-indexers.md#configure-indexers)
- [Index Management using the Magento CLI](https://experienceleague.adobe.com/docs/commerce-operations/configuration-guide/cli/manage-indexers.html)
- [Indexing overview for developers](https://developer.adobe.com/commerce/php/development/components/indexing/)
