---
title: 'MDVA-29400: Duplicated orders placed with PayPal Express Checkout'
description: The MDVA-29400 patch solves the issue where duplicated orders are created when customers place orders with PayPal Express Checkout. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.4 is installed. The patch ID is MDVA-29400. Please note that the issue was fixed in Adobe Commerce 2.4.1.
exl-id: 75b943c8-5f7c-4d94-ae92-935428fdfcf8
feature: Checkout, Orders, Payments
role: Admin
---
# MDVA-29400: Duplicated orders placed with PayPal Express Checkout

The MDVA-29400 patch solves the issue where duplicated orders are created when customers place orders with PayPal Express Checkout. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.4 is installed. The patch ID is MDVA-29400. Please note that the issue was fixed in Adobe Commerce 2.4.1.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.3.4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.0 - 2.3.7-p1, 2.4.0 - 2.4.0-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://devdocs.magento.com/quality-patches/tool.html#patch-grid). Use the patch ID as a search keyword to locate the patch.

## Issue

Duplicated orders are created when users place orders with PayPal Express Checkout.

<u>Prerequisites</u>:

Enabled and configured PayPal Express Checkout.

<u>Steps to reproduce</u>:

1. Add a product to Cart.
1. Go to the Checkout Page and use PayPal Express as the payment method.
1. It will redirect to paypal/express/review/ page.
1. Place order. You will be redirected to Success Page.
1. Go back to PayPal/express/review/ Page.
1. Click on the **Place Order** button.

<u>Expected results</u>:

Only one order is created.

<u>Actual results</u>:

You get the following error: *PayPal Express Checkout Token does not exist*, but the second order is successfully placed.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [Software Update Guide > Apply Patches](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching/mqp.html) in our developer documentation.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to the [Patches available in QPT](https://support.magento.com/hc/en-us/sections/360010506631-Patches-available-in-MQP-tool-) section.
