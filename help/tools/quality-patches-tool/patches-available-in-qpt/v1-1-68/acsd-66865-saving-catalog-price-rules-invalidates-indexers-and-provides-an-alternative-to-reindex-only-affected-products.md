---
title: 'ACSD-66865: Saving catalog price rules invalidates indexers and provides an alternative to reindex only affected products'
description: Apply the ACSD-66865 patch to fix the Adobe Commerce issue where  Saving catalog price rules invalidates indexers and provides an alternative to reindex only affected products.
feature: Price Rules, Price Indexer
role: Admin, Developer
---

# ACSD-66865: Saving catalog price rules invalidates indexers and provides an alternative to reindex only affected products

The ACSD-66865 patch fixes the issue where saving catalog price rules invalidated indexers and provides alternative to reindex only affected products. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.68 is installed. The patch ID is ACSD-66865. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p5

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.7 - 2.4.7-p6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Issue where saving catalog price rules invalidated indexers and provides alternative to reindex only affected products.

<u>Steps to reproduce</u>:

1. Ensure cron is not running and all indexers are set to update on schedule (except customer_grid which can update on save)
2. Execute a full manual reindex using the "php bin/magento indexer:reindex" command.
3. At this point, all indexes should be marked as "ready" with 0 items in the backlog.
4. Create a catalog rule for only one product and ensure it is active (the most obvious one being a rule with a SKU condition.)
5. Execute the "php bin/magento indexer:status" command to check indexer status.
6. Number of indexes are marked as "Reindex required" even though there is only one product affected by the change and is present in the backlog.

<u>Expected results</u>:

Adobe Commerce retrieves only the data that is actually affected and triggers a partial reindex.

<u>Actual results</u>:

Adobe Commerce performs full reindexes for changes that affect only a small portion of the product catalog.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.