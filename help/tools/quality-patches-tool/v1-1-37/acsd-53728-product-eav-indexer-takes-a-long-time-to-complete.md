---
title: 'ACSD-53728: Product EAV indexer takes a long time to complete'
description: Apply the ACSD-53728 patch to fix the Adobe Commerce issue where the product EAV indexer is taking a long time to complete.
feature: Products, Attributes
role: Admin, Developer
exl-id: 3e0601fb-7e2c-4f1b-8bd9-d2f09092db0e
---
# ACSD-53728: Product EAV indexer takes a long time to complete

The ACSD-53728 patch fixes the issue where the product EAV indexer is taking a long time to complete. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.37 is installed. The patch ID is ACSD-53728. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.7 - 2.4.6-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The product EAV indexer is taking a long time to complete.

<u>Steps to reproduce</u>:

1. Create a large number of products (for instance, around 1300 configurable products).
1. Run product EAV reindex and measure the time:

    `run bin/magento index:reindex catalog_product_attribute`

<u>Expected results</u>:

Reindexing takes a reasonable amount of time.

<u>Actual results</u>:

Reindexing takes a lot of time.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
