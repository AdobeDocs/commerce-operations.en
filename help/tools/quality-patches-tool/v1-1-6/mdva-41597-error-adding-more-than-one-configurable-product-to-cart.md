---
title: 'MDVA-41597: Error adding more than one configurable product to cart'
description: The MDVA-41597 patch fixes the issue where users get an error when adding more than one configurable product to the cart using GraphQL. This patch is available when the [Quality Patches Tool (QPT)](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching.html#mqp) 1.1.6 is installed. The patch ID is MDVA-41597. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.
exl-id: 777e0f9c-80e3-4cfb-9328-c20eb038f74a
feature: Configuration, Orders, Products, Shopping Cart
role: Admin
---
# MDVA-41597: Error adding more than one configurable product to cart

The MDVA-41597 patch fixes the issue where users get an error when adding more than one configurable product to the cart using GraphQL. This patch is available when the [Quality Patches Tool (QPT)](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching.html#mqp) 1.1.6 is installed. The patch ID is MDVA-41597. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods) 2.4.2-p1

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.4.2 - 2.4.3-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://devdocs.magento.com/quality-patches/tool.html#patch-grid). Use the patch ID as a search keyword to locate the patch.

## Issue

Users get an error when adding more than one configurable product to the cart using GraphQL.

<u>Steps to reproduce</u>:

Add multiple configurable products to the cart using GraphQL mutation: `addConfigurableProductsToCart`.

<u>Expected results</u>:

All configurable products are added to the cart.

<u>Actual results</u>:

Only the first product is added to the cart.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [Software Update Guide > Apply Patches](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching/mqp.html) in our developer documentation.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to the [Patches available in QPT](https://support.magento.com/hc/en-us/sections/360010506631-Patches-available-in-QPT-tool-) section.
