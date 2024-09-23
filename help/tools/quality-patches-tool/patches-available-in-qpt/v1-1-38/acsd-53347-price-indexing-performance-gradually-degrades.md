---
title: 'ACSD-53347: Price indexing performance gradually degrades overtime'
description: Apply the ACSD-53347 patch to fix the Adobe Commerce issue where performance gradually degrades when reindexing prices for a large product catalog.
feature: Price Indexer
role: Admin
exl-id: 28795673-54b0-4282-bd43-344401cbe140
---
# ACSD-53347: Price indexing performance gradually degrades overtime

The ACSD-53347 patch fixes the issue where performance gradually degrades when reindexing prices for a large product catalog. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.38 is installed. The patch ID is ACSD-53347. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.7 - 2.4.6-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

When reindexing prices for a large product catalog, the performance of the queries executed during the indexing process gradually degrades.

<u>Steps to reproduce</u>:

1. Create a large simple catalog and assign custom options to these products (custom options use a temporary table during indexing).
1. Create at least 200 or more customer groups to increase visibility of the issue.
1. Create ten or more websites and assign all products to each of them.
1. Note that the imported products are almost identical, differing only by SKU and name.
1. Enable **[!UICONTROL DB Logging]**.
1. Execute the `bin/magento index:reindex catalog_product_price` command.
1. Check for *DELETE FROM `catalog_product_index_price_opt_agr_temp`* in the `db.log`.

<u>Expected results</u>:

The execution of the *DB queries* runs efficiently.
    
<u>Actual results</u>:

The performance of the *DB queries* on temporary tables become slow overtime, hence price indexing table takes a lot of time to complete.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
