---
title: 'MDVA-38666: Admin user is unable to change configurable product options'
description: The MDVA-38666 patch solves the issue where the admin user is unable to change configurable product options in the customer's cart. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.9 is installed. The patch ID is MDVA-38666. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.
exl-id: 72440e47-1deb-41da-a225-d4bc73029ad5
feature: Admin Workspace, Configuration, Products
role: Admin
---
# MDVA-38666: Admin user is unable to change configurable product options

The MDVA-38666 patch solves the issue where the admin user is unable to change configurable product options in the customer's cart. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.9 is installed. The patch ID is MDVA-38666. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.3.4-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.2 - 2.3.5-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://devdocs.magento.com/quality-patches/tool.html#patch-grid). Use the patch ID as a search keyword to locate the patch.

## Issue

Admin user is not able to change the configurable product options in the customer's cart.

<u>Steps to reproduce</u>:

1. Set customer account scope to Global.
1. Create two websites with stores.
1. Create two configurable products and assign them to each website.
1. Create a customer account in the frontend and log in.
1. Add a product to the cart and do a checkout (this is done to make quote ids different on each website).
1. Add a product to the cart and leave it.
1. Switch to the second website and add the product to the cart (the same login should work since the customer account scope is set to Global).
1. Open the customer from the admin and navigate to the cart tab.
1. Switch the store from the drop-down and try to change the configuration.

<u>Expected results</u>:

User gets a popup with configurable options.

<u>Actual results</u>:

No popup form appears. The user is unable to change the configuration.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [Software Update Guide > Apply Patches](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching/mqp.html) in our developer documentation.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [Patches available in QPT](https://devdocs.magento.com/quality-patches/tool.html#patch-grid) in our developer documentation.
