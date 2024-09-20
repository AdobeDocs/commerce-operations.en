---
title: 'MDVA-27239: Cross-sell products are not displayed'
description: The MDVA-27239 patch fixes the issue where cross-sell products are not displayed. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.7 is installed. Please note that the issue was fixed in Adobe Commerce 2.3.6.
exl-id: a0392a07-645d-4811-8547-2c67e20b6313
feature: Products
role: Admin
---
# MDVA-27239: Cross-sell products are not displayed

The MDVA-27239 patch fixes the issue where cross-sell products are not displayed. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.7 is installed. Please note that the issue was fixed in Adobe Commerce 2.3.6.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods) 2.3.4, 2.4.0

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.3.0 - 2.3.5-p2, 2.4.0 - 2.4.0-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://devdocs.magento.com/quality-patches/tool.html#patch-grid). Use the patch ID as a search keyword to locate the patch.

## Issue

Cross-sell products are not displayed in the cross-sell block on the shopping cart page.

<u>Prerequisites</u>:

1. Disable Magento_TargetRule module or remove from layout block Magento\TargetRule\Block\Checkout\Cart\Crosssell.
1. Create Product 1.
1. Create a schedule update for Product 1, so the newly created products will have row_id different from entity_id.
1. Create Product 2, Product 3, and Product 4.
1. Set Product 3 as cross-sell for Product 4.
1. Set Product 4 as cross-sell for Product 2.

<u>Steps to reproduce</u>:

1. Add Product 4 and Product 2 to the shopping cart.
1. Check the shopping cart page.

<u>Expected results</u>:

Product 3 is displayed in cross-sell block.

<u>Actual results</u>:

Cross-sell block is empty.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [Software Update Guide > Apply Patches](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching/mqp.html) in our developer documentation.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [Patches available in QPT](https://devdocs.magento.com/quality-patches/tool.html#patch-grid) in our developer documentation.
