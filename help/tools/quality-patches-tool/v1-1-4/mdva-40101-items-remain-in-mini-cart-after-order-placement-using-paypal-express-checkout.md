---
title: 'MDVA-40101: Items remain mini-cart after order placement PayPal Express Checkout'
description: The MDVA-40101 patch fixes the issue where items are not removed from the mini-cart after a successful order placement using PayPal Express Checkout. This patch is available when the [Quality Patches Tool (QPT)](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching.html#mqp) 1.1.4 is installed. The patch ID is MDVA-40101. Please note that the issue was fixed in Adobe Commerce 2.4.0.
exl-id: d640dfcd-6fb6-4cc6-8817-3ae19aa59bed
feature: Checkout, Orders, Payments, Shopping Cart
role: Admin
---
# MDVA-40101: Items remain mini-cart after order placement PayPal Express Checkout

The MDVA-40101 patch fixes the issue where items are not removed from the mini-cart after a successful order placement using PayPal Express Checkout. This patch is available when the [Quality Patches Tool (QPT)](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching.html#mqp) 1.1.4 is installed. The patch ID is MDVA-40101. Please note that the issue was fixed in Adobe Commerce 2.4.0.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods) 2.3.7

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.3.2 &ndash;  2.3.7-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://devdocs.magento.com/quality-patches/tool.html#patch-grid). Use the patch ID as a search keyword to locate the patch.

## Issue

Items remain in the mini-cart even after a successful order placement using PayPal Express Checkout.

<u>Steps to reproduce</u>:

Place an order using PayPal Express Checkout in the Incognito mode in a browser.

<u>Expected results</u>:

Mini-cart should be empty after the successful completion of the order.

<u>Actual results</u>:

* The success page shows an empty mini-cart.
* All other pages show mini-cart with purchased items.
* Clicking on the cart link redirects you to an empty cart page.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [Software Update Guide > Apply Patches](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching/mqp.html) in our developer documentation.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to the [Patches available in QPT](https://support.magento.com/hc/en-us/sections/360010506631-Patches-available-in-QPT-tool-) section.
