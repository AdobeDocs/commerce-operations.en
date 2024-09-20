---
title: 'MDVA-44533: Discount incorrectly applied to bundled child product'
description: The MDVA-44533 patch fixes the issue where a discount is incorrectly applied to a bundled child product. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.15 is installed. The patch ID is MDVA-44533. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.
exl-id: 84302ed4-d850-45e4-8b5b-44495f9df820
feature: Orders, Personalization, Products
role: Admin
---
# MDVA-44533: Discount incorrectly applied to bundled child product

The MDVA-44533 patch fixes the issue where a discount is incorrectly applied to a bundled child product. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.15 is installed. The patch ID is MDVA-44533. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.2-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.1 - 2.4.3-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://devdocs.magento.com/quality-patches/tool.html#patch-grid). Use the patch ID as a search keyword to locate the patch.

## Issue

Discount is incorrectly applied to a bundled child product.

<u>Steps to reproduce</u>:

1. Create a simple product with price of 50$.
1. Create a bundled product, and assign the simple product as the only option for the bundled product.
1. Create a Cart Price Rule with:

    * Condition: If the total amount is greater than 130$
    * Action: Fixed amount discount of 10$ is applied

1. Go to the storefront and add the bundle product to the cart with qty = 1.
1. Go to the cart and check that the total cost of the bundle product is 50$ and the discount doesn't apply.
1. Change quantity to 2 and update the cart. The total cost of the bundled product should now be 100$.

<u>Expected results</u>:

The discount is not applied because the subtotal is 100\$, which is less than 130\$ in the rule condition.

<u>Actual results</u>:

The discount is applied.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [Software Update Guide > Apply Patches](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching/mqp.html) in our developer documentation.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [Patches available in QPT](https://devdocs.magento.com/quality-patches/tool.html#patch-grid) in our developer documentation.
