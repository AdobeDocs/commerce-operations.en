---
title: 'MDVA-43091: Unable to order bundled product from Admin'
description: The MDVA-43091 patch solves the issue where users are unable to order bundled product from the Commerce Admin. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.10 is installed. The patch ID is MDVA-43091. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.
exl-id: 77dff356-4f75-4b06-b62b-5379a4eec273
feature: Admin Workspace, Orders, Products
role: Admin
---
# MDVA-43091: Unable to order bundled product from Admin

The MDVA-43091 patch solves the issue where users are unable to order bundled product from the Commerce Admin. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.10 is installed. The patch ID is MDVA-43091. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.3-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.3 - 2.4.3-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://devdocs.magento.com/quality-patches/tool.html#patch-grid). Use the patch ID as a search keyword to locate the patch.

## Issue

When trying to order bundled product from the Admin, it throws the following error: *You cannot use decimal quantity for this product.*

<u>Steps to reproduce</u>:

1. Install a clean Adobe Commerce.
1. Create two simple products.
1. Create a bundled product with two options.
1. Create a customer account on the frontend.
1. Go to **Admin** > **Sales** > **Orders** > **Create New Order**.
    * Select the customer account created just now.
    * Try to add the bundled product to the cart.

<u>Expected results</u>:

Admin user is able to add the product with one quantity to the cart.

<u>Actual results</u>:

Admin user gets the following error: *You cannot use decimal quantity for this product.*

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [Software Update Guide > Apply Patches](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching/mqp.html) in our developer documentation.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [Patches available in QPT](https://devdocs.magento.com/quality-patches/tool.html#patch-grid) in our developer documentation.
