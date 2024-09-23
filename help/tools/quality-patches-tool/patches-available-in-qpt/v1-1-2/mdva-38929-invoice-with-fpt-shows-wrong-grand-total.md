---
title: 'MDVA-38929: Invoice with FPT shows wrong total'
description: The MDVA-38929 patch solves the issue where the invoice with FPT shows a wrong grand total when the order is paid with store credit. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.2 is installed. The patch ID is MDVA-38929. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.
exl-id: 1ed0e311-f4a5-4dc0-98fc-fc1cc9458516
feature: Invoices, Orders
role: Admin
---
# MDVA-38929: Invoice with FPT shows wrong total

The MDVA-38929 patch solves the issue where the invoice with FPT shows a wrong grand total when the order is paid with store credit. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.2 is installed. The patch ID is MDVA-38929. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.0 - 2.4.3

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://devdocs.magento.com/quality-patches/tool.html#patch-grid). Use the patch ID as a search keyword to locate the patch.

## Issue

The invoice with FPT shows a wrong grand total when the order is paid with store credit.

<u>Steps to reproduce</u>:

1. Create a customer and make sure that the customer has store credit enough to cover the order.
1. Enable FPT and add FPT to a product.
1. From the front end, log in as the customer just created.
1. Add the product with FPT to the cart.
1. Checkout and pay with store credit. It should be a zero pay order.
1. Go to Orders and manually invoice the order.
1. Check the invoice grand total.

<u>Expected results</u>:

* The invoice grand total is zero.
* The order total paid amount is zero.

<u>Actual results</u>:

* The invoice grand total still shows the FPT amount.
* The total paid still shows the FPT amount.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [Software Update Guide > Apply Patches](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching/mqp.html) in our developer documentation.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [Patches available in QPT](https://devdocs.magento.com/quality-patches/tool.html#patch-grid) in our developer documentation.
