---
title: 'MDVA-41399: Unable to access the Manage Shopping Cart if a customer adds product to wishlist'
description: The MDVA-41399 patch solves the issue where admin users are unable to access the Manage Shopping Cart page if a customer adds a product to the wishlist. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.6 is installed. The patch ID is MDVA-41399. Please note that the issue was fixed in Adobe Commerce 2.4.2.
exl-id: 227653c6-2d20-4475-b973-b9fa58db815b
feature: Orders, Products, Shopping Cart
role: Admin
---
# MDVA-41399: Unable to access the Manage Shopping Cart if a customer adds product to wishlist

The MDVA-41399 patch solves the issue where admin users are unable to access the Manage Shopping Cart page if a customer adds a product to the wishlist. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.6 is installed. The patch ID is MDVA-41399. Please note that the issue was fixed in Adobe Commerce 2.4.2.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.3.3-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.3 - 2.4.1-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://devdocs.magento.com/quality-patches/tool.html#patch-grid). Use the patch ID as a search keyword to locate the patch.

## Issue

Admin users are unable to access the Manage Shopping Cart page if a customer adds a product to the wishlist.

<u>Prerequisites</u>:

1. Create two or more products.
1. Create a customer.
1. Enable the Developer mode.

<u>Steps to reproduce</u>:

1. Go to Storefront and sign in as the customer from the preconditions.
1. Add a product to Wish List.
1. Go to the Admin panel and navigate to the created customer edit page and click on the **Manage Shopping Cart** button.

<u>Expected results</u>:

Admin user is able to manage the shopping cart.

<u>Actual results</u>:

Admin user gets an error message: *An error has occurred. See error log for details.*

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [Software Update Guide > Apply Patches](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching/mqp.html) in our developer documentation.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to the [Patches available in QPT](https://support.magento.com/hc/en-us/sections/360010506631-Patches-available-in-MQP-tool-) section.
