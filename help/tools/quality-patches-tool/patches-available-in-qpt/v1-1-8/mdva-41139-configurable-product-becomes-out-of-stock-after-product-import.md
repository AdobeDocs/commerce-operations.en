---
title: 'MDVA-41139: Configurable product becomes out of stock after product import'
description: The MDVA-41139 patch fixes the issue where the configurable product becomes out of stock after product import when the simple product's qty = 0 for one of its sources. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.8 is installed. The patch ID is MDVA-41139. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.
exl-id: e90ab578-50b9-4bc4-baf9-de4182e700ae
feature: Data Import/Export, Configuration, Orders, Products
role: Admin
---
# MDVA-41139: Configurable product becomes out of stock after product import

The MDVA-41139 patch fixes the issue where the configurable product becomes out of stock after product import when the simple product's qty = 0 for one of its sources. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.8 is installed. The patch ID is MDVA-41139. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.3 - 2.4.3-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://devdocs.magento.com/quality-patches/tool.html#patch-grid). Use the patch ID as a search keyword to locate the patch.

## Issue

The configurable product becomes out of stock after product import when the simple product's qty = 0 for one of its sources.

<u>Prerequisites</u>:

Inventory modules are installed.

<u>Steps to reproduce</u>:

1. Create a new source and stock.
1. Create a configurable product with children products assigned to the default source and the new source.
1. Set the value of default stock for each children product = 0, and for other stock > 0.
1. The configurable product is in stock.
1. Export this product and import it again.

<u>Expected results</u>:

The configurable product is in stock as the second source has quantity > 0.

<u>Actual results</u>:

The configurable product is out of stock.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [Software Update Guide > Apply Patches](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching/mqp.html) in our developer documentation.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [Patches available in QPT](https://devdocs.magento.com/quality-patches/tool.html#patch-grid) in our developer documentation.
