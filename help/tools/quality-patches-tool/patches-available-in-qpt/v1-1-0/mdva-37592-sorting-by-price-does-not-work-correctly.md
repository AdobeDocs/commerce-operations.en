---
title: 'MDVA-37592: Sorting by price not working for products with price zero'
description: The MDVA-37592 Adobe Commerce patch solves the issue where sorting by price does not work correctly for products with  price zero assigned to a shared catalog. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.0 is installed. The patch ID is MDVA-37592. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.
exl-id: 30ac1e87-c32d-4e79-9ed9-d1861061d760
feature: B2B, Catalog Management, Categories, Orders, Products
role: Admin
---
# MDVA-37592: Sorting by price not working for products with price zero

The MDVA-37592 Adobe Commerce patch solves the issue where sorting by price does not work correctly for products with  price zero assigned to a shared catalog. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.0 is installed. The patch ID is MDVA-37592. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce on our cloud architecture 2.4.0-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment types) 2.3.6-2.4.2-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://devdocs.magento.com/quality-patches/tool.html#patch-grid). Use the patch ID as a search keyword to locate the patch.

## Issue

Sorting by price does not work correctly for products with price zero assigned to a shared catalog.

<u>Prerequisites</u>:

B2B is installed.

<u>Steps to reproduce</u>:

1. Enable shared catalog.
1. Create four products with the following prices and assign them to a category - $50, $60, $70, and $80.
1. Create a shared catalog with the above products.
1. Set the custom price to zero for the product with a price of $70.
1. Now create a company user and assign it to the shared catalog just created.
1. Log in using the company account and browse to the category where the products are assigned to.
1. Try to sort by price.

<u>Expected results</u>:

The product with price zero is sorted correctly.

<u>Actual results</u>:

The product with price zero is NOT sorted correctly. Instead it is sorted according to the original price.

## Apply the patch

To apply individual patches, use the following links depending on your deployment type:

* Adobe Commerce on-premise: [Software Update Guide > Apply Patches](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching/mqp.html) in our developer documentation.
* Adobe Commerce on our cloud architecture: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md).
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md).

For info about other patches available in QPT tool, refer to the [Patches available in QPT tool](https://support.magento.com/hc/en-us/sections/360010506631-Patches-available-in-QPT-tool-) section.
