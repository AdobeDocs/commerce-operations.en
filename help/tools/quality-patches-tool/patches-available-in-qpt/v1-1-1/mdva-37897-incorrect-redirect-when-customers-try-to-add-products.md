---
title: 'MDVA-37897: Incorrect redirect when adding products from Recently Viewed'
description: The MDVA-37897 patch solves the issue of incorrect redirect when users try to add products with options from the Recently Viewed widget. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.1 is installed. The patch ID is MDVA-37897. Please note that the issue is scheduled to be fixed in Adobe Commerce version 2.4.4.
exl-id: f0a86e02-b357-4d2d-8386-e9cc045bcf06
feature: Products
role: Admin
---
# MDVA-37897: Incorrect redirect when adding products from Recently Viewed

The MDVA-37897 patch solves the issue of incorrect redirect when users try to add products with options from the Recently Viewed widget. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.1 is installed. The patch ID is MDVA-37897. Please note that the issue is scheduled to be fixed in Adobe Commerce version 2.4.4.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce on our cloud infrastructure 2.4.1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.0 - 2.4.2-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://devdocs.magento.com/quality-patches/tool.html#patch-grid). Use the patch ID as a search keyword to locate the patch.

## Issue

When a user tries to add a product from the Recently Viewed section which has required options to be selected, the user is redirected to the product listing page instead of the product details page.

<u>Steps to reproduce</u>:

1. Create a simple product with customizable options (Type: Radio Button).
1. Configure the Recently Viewed widget to show products.
1. Visit products that have customizable options so that they show up in the Recently Viewed widget.
1. Click **Add to Cart** on one of the products in the Recently Viewed widget.

<u>Expected results</u>:

You are redirected to the product details page to choose the options.

<u>Actual results</u>:

You are redirected to the product listing page.

## Apply the patch

To apply individual patches, use the following links depending on your deployment type:

* Adobe Commerce on-premise: [Software Update Guide > Apply Patches](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching/mqp.html) in our developer documentation.
* Adobe Commerce on our cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about quality patches for Adobe Commerce, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md).
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md).

For info about other patches available in QPT, refer to the [Patches available in QPT](https://support.magento.com/hc/en-us/sections/360010506631-Patches-available-in-QPT-tool-) section.
