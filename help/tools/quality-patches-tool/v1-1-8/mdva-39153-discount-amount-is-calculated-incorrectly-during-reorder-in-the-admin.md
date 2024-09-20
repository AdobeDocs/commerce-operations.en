---
title: 'MDVA-39153: Discount amount is calculated incorrectly during reorder in the Admin'
description: The MDVA-39153 patch fixes the issue where the discount amount is calculated incorrectly during reorder in the Admin. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.8 is installed. The patch ID is MDVA-39153. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.
exl-id: d4d11bea-a528-4eb5-8a57-8a7330975e4a
feature: Admin Workspace, Orders, Personalization, Payments
role: Admin
---
# MDVA-39153: Discount amount is calculated incorrectly during reorder in the Admin

The MDVA-39153 patch fixes the issue where the discount amount is calculated incorrectly during reorder in the Admin. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.8 is installed. The patch ID is MDVA-39153. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.2-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.2-p1 - 2.4.3-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://devdocs.magento.com/quality-patches/tool.html#patch-grid). Use the patch ID as a search keyword to locate the patch.

## Issue

Discount amount is calculated incorrectly during reorder in the Admin.

<u>Steps to reproduce</u>:

1. Go to the **Admin** > **Stores** > **Configuration** > **Sales** > **Taxes**.
1. Turn on the tax for shipping displaying the tax in the Shopping Cart.
1. Enable and configure the Table rate shipping method ($15).
1. Create a tax rule for built-in tax rate (for CA).
1. Create a cart price rule with a fixed $5 discount applied to the whole cart and shipping amount.
1. Add a product with a price of $12 to the cart and go to the Shopping Cart page.
1. Apply the discount to the cart.
1. Set shipping method in "estimates" section to "Flat Rate".
1. Proceed through checkout till review steps (do not place the order).
1. Go to the homepage and then back to the Shopping Cart.
1. Change shipping method in "estimates" section to "Table Rate".

<u>Expected results</u>:

The discount remains the same - $5.

<u>Actual results</u>:

The discount is $6.31.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [Software Update Guide > Apply Patches](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching/mqp.html) in our developer documentation.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [Patches available in QPT](https://devdocs.magento.com/quality-patches/tool.html#patch-grid) in our developer documentation.
