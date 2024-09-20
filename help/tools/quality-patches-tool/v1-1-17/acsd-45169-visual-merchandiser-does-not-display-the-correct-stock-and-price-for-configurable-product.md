---
title: 'ACSD-45169: Visual Merchandiser displays incorrect stock and price for configurable product'
description: The ACSD-45169 patch fixes the issue where the Visual Merchandiser does not display the correct stock and price for a configurable product after a staging update is applied. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.17 is installed. The patch ID is ACSD-45169. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6.
exl-id: 5a7987c8-f276-4917-98f7-645402f4c454
feature: Categories, Configuration, Merchandising, Orders, Products
role: Admin
---
# ACSD-45169: Visual Merchandiser displays incorrect stock and price for configurable product

The ACSD-45169 patch fixes the issue where the Visual Merchandiser does not display the correct stock and price for a configurable product after a staging update is applied. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.17 is installed. The patch ID is ACSD-45169. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.2-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.1 - 2.4.4

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://devdocs.magento.com/quality-patches/tool.html#patch-grid). Use the patch ID as a search keyword to locate the patch.

## Issue

Visual Merchandiser does not display the correct stock and price for a configurable product after a staging update is applied.

<u>Steps to reproduce</u>:

1. Create a simple product.
1. Create any scheduled update for the simple product (You just need to have different row and entity ids).
1. Create a configurable product.
1. Assign the configurable product to a category.
1. Open the category and observe the configurable product under the Visual Merchandiser section.

<u>Expected results</u>:

Visual Merchandiser displays the correct stock and price.

<u>Actual results</u>:

Visual Merchandiser displays an incorrect stock and price.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [Software Update Guide > Apply Patches](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching/mqp.html) in our developer documentation.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [Patches available in QPT](https://devdocs.magento.com/quality-patches/tool.html#patch-grid) in our developer documentation.
