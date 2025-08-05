---
title: 'ACSD-66233: Admin users couldn't add products to categories due to Add Product popup not loading'
description: Apply the ACSD-66233 patch to fix the Adobe Commerce issue where the product list in the Add Product popup loads indefinitely in Visual Merchandiser, preventing admins from adding products to categories.
feature: Inventory, Merchandising
role: Admin, Developer
---

# ACSD-66233: Admin users couldn't add products to categories due to Add Product popup not loading

The ACSD-66233 patch fixes the issue where Admin users couldn't add products to a category because the Add Product popup failed to load. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.68 is installed. The patch ID is ACSD-66233. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.8

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.8 - 2.4.8-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Issue where Admin users couldn't add products to a category because the Add Product popup failed to load.

<u>Steps to reproduce</u>:

1. Install and enable Inventory modules.
1. Create a lot of Inventory sources (for example 700).
1. Create a lot of Inventory stocks (for example 12) and assign Inventory sources.
1. Create some products and assign them to sources.
1. Create a category.
1. Expand on "Products in Category" section and click "Add Products" button.
1. Observe the pop-up with the list of products.

<u>Expected results</u>:

The products should load in the pop-up within a reasonable amount of time.

<u>Actual results</u>:

The product list in the pop-up loads indefinitely.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.