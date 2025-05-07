---
title: 'ACSD-63520: Images uploaded through Image Upload Configuration exceed the configured size limits'
description: Apply the ACSD-63520 patch to fix the Adobe Commerce issue where Images uploaded through the Images Upload Configuration in the Admin panel do not adhere to the configured maximum upload size limits
feature: Media, Products
role: Admin, Developer
---

# ACSD-63520: Images uploaded through [!UICONTROL Image Upload Configuration] exceed the configured size limits

The ACSD-63520 patch resolves an issue where images uploaded through the [!UICONTROL Images Upload Configuration] do not adhere to the configured maximum upload size limits. To address this, configure the [!UICONTROL Images Upload Configuration] settings in the [!UICONTROL Admin] panel. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.62 is installed. The patch ID is ACSD-63520. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**
* Adobe Commerce (all deployment methods) 2.4.7

**Compatible with Adobe Commerce versions:**
* Adobe Commerce (all deployment methods) 2.4.7 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your [!DNL Adobe Commerce] version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Images uploaded through the [!UICONTROL Images Upload Configuration] in the [!UICONTROL Admin] panel does not adhere to the maximum upload size limit.

<u>Steps to reproduce</u>:

1. Log in to **[!UICONTROL Admin]** panel.
1. Navigate to **[!UICONTROL Stores]** > **[!UICONTROL Configuration]** > **[!UICONTROL Advanced]** > **[!UICONTROL System]** > **[!UICONTROL Images Upload Configuration]** and set:
    * Quality: 100
    * Enable Frontend Resize: Yes  
    * Maximum Width: 800  
    * Maximum Height: 600  
1. Expand **[!UICONTROL Media Gallery Image Optimization]** and set:
    * Enable Image Optimization: Yes  
    * Maximum Width: 1000  
    * Maximum Height: 1000  
1. Navigate to **[!UICONTROL Catalog]** > **[!UICONTROL Products]** > **[!UICONTROL Add Configurable Product]**.
    1. Add **[!UICONTROL Product Name]**, **[!UICONTROL SKU]**, and **[!UICONTROL Price]**.
    1. Click **[!UICONTROL Create Configurations]**, select **[!UICONTROL Attributes]**, and click **[!UICONTROL Next]**.
    1. Choose sizes (S, M, L, XL), click **[!UICONTROL Next]**.
    1. Under **[!UICONTROL Images]**, select **[!UICONTROL Apply single set of images to all SKUs]**.
    1. Upload an image (minimum 1024x1024), click **[!UICONTROL Next]**.
    1. Click **[!UICONTROL Generate Product]**.
1. Click **[!UICONTROL Save]**.

<u>Expected results</u>:

Images should follow the configured upload size and resize limits.

<u>Actual results</u>:

Images are not resized and exceed the configured upload size limits.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
