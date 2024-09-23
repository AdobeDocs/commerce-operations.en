---
title: 'ACSD-51114: Random products disappeared from large catalogs when asynchronous indexing is enabled'
description: Apply the ACSD-51114 patch to fix the Adobe Commerce issue Random products disappeared from large catalogs when asynchronous indexing is enabled.
exl-id: 6ea7de32-1d30-4c4a-af6e-6a0931396846
feature: Catalog Management, Categories, Products
role: Admin
---
# ACSD-51114: Random products disappeared from large catalogs when asynchronous indexing is enabled

>[!NOTE]
>
>This patch is deprecated.

The ACSD-51114 patch fixes the issue Random products disappeared from large catalogs when asynchronous indexing is enabled. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.30 is installed. The patch ID is ACSD-51114. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.3-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.3 - 2.4.6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]:Search for patches page].Use the patch ID as a search keyword to locate the patch.

## Issue

Random products disappeared from large catalogs when asynchronous indexing is enabled.

<u>Steps to reproduce</u>:

1. Create a set of 10 products.
1. Set all indexers to **[!UICONTROL Update on Save]** mode.
1. Create a category and assign all products to it.
1. Disable all products.
1. Open the category and verify that there are no products there.
1. Set all indexers to **[!UICONTROL Update on Schedule]** mode.
1. Set the `DEFAULT_BATCH_SIZE` to 2 in  `lib/internal/Magento/Framework/Mview/View.php#L31`.
1. Enable products in the following order: 1st, 9th, 2nd, 5th, 10th, 3rd.
1. Run cron command.
1. Open the category again.

<u>Expected results</u>:

All enabled products are displayed.

<u>Actual results</u>:

All enabled products are not shown.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
