---
title: 'ACSD-61756: Performance degradation of `AdvancedSalesRule` filters due to missing database indexes'
description: Apply the ACSD-61756 patch to fix the Adobe Commerce issue where the `magento_salesrule_filter` query performs a full table scan without using indexes, leading to performance degradation when handling large volumes of records. This patch improves performance by adding the missing database indexes for `AdvancedSalesRule` filters.
feature: Price Rules, Price Indexer
role: Admin, Developer
exl-id: 418c7c40-83ee-4cd9-8ebb-b356886ffb58
---
# ACSD-61756: Performance degradation of `AdvancedSalesRule` filters due to missing database indexes

Apply the ACSD-61756 patch to improve the performance of the `AdvancedSalesRule` filters by adding missing database indexes. This fixes the issue where the `magento_salesrule_filter` query performs a full table scan without utilizing the indexes, leading to performance degradation when there are many records in the table. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.54 is installed. The patch ID is ACSD-61756. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4-p9

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.6-p8

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The `magento_salesrule_filter` query performs a full table scan without utilizing indexes, leading to performance degradation of the `AdvancedSalesRule` filters when there are many records in the table.

<u>Steps to reproduce</u>:

1. Checkout with multiple active sales rules.

<u>Expected results</u>:

Improved performance of sales rules.

<u>Actual results</u>:

The query performs a full table scan and fails to utilize indexes, leading to performance degradation when there are many records in the table.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
