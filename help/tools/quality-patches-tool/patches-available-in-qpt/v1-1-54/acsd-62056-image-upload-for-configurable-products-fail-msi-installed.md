---
title: 'ACSD-62056: Image upload for configurable product fails if MSI is installed'
description: Apply the ACSD-62056 patch to fix the Adobe Commerce issue where images for configurable products are not getting added if MSI is installed.
feature: Products, Media
role: Admin, Developer
exl-id: bab8e617-d80c-4456-8ade-bdc6b4294d26
---
# ACSD-62056: Image upload for configurable product fails if MSI is installed 

The ACSD-62056 patch fixes the issue where images for configurable products are not getting added if MSI is installed. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.54 is installed. The patch ID is ACSD-62056. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

When editing a configurable product with [!UICONTROL Inventory Management/MSI] enabled, the options to add images are not working. This affects both the [!UICONTROL Apply a single set of images to all SKUs] and [!UICONTROL Apply unique images by attribute to each SKU] options.

<u>Prerequisites</u>:

[!UICONTROL Inventory Management/MSI] modules are installed and enabled.

<u>Steps to reproduce</u>:

1. Create a new source.
1. Create a new stock and assign the new source.
1. Edit a configurable product.
1. Click **[!UICONTROL Edit Configurations]** > **[!UICONTROL Next]** > **[!UICONTROL Next]**.
1. Select any of the following and add an image.

    * [!UICONTROL Apply a single set of images to all SKUs]
    * [!UICONTROL Apply unique images by attribute to each SKU]

<u>Expected results</u>:

The images are added.

<u>Actual results</u>:

The images are not being added.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
