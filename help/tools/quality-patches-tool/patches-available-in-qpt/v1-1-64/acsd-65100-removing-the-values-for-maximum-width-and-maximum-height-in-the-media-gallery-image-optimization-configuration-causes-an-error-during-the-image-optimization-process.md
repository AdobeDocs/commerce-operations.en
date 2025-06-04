---
title: 'ACSD-65100: Removing the [!UICONTROL Maximum Width] and [!UICONTROL Maximum Height] values in the [!UICONTROL Media Gallery Image Optimization] configuration causes an error'
description: Apply the ACSD-65100 patch to fix the Adobe Commerce issue where removing the [!UICONTROL Maximum Width] and [!UICONTROL Maximum Height] values in the [!UICONTROL Media Gallery Image Optimization] configuration causes an error during the image optimization process.
feature: Media
role: Admin, Developer
exl-id: 86197602-19a1-41c2-b129-1f695f303ce5
---
# ACSD-65100: Removing the [!UICONTROL Maximum Width] and [!UICONTROL Maximum Height] values in the [!UICONTROL Media Gallery Image Optimization] configuration causes an error

The ACSD-65100 patch fixes the issue where removing the **[!UICONTROL Maximum Width]** and **[!UICONTROL Maximum Height]** values in the **[!UICONTROL Media Gallery Image Optimization]** configuration causes an error during the image optimization process. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.64 is installed. The patch ID is ACSD-65100. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-P5

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

An error occurs during the image optimization process when the values for **[!UICONTROL Maximum Width]** and **[!UICONTROL Maximum Height]** are removed in the **[!UICONTROL Media Gallery Image Optimization]** configuration.

<u>Steps to reproduce</u>:

1. Go to the **[!UICONTROL Stores]** > *[!UICONTROL Settings]* > **[!UICONTROL Configuration]** > **[!UICONTROL Advanced]** > **[!UICONTROL System]** > **[!UICONTROL Media Gallery Image Optimization]**.
1. Remove the values for **[!UICONTROL Maximum Width]** and **[!UICONTROL Maximum Height]**.
1. Clean the configuration cache.
1. Navigate to **[!UICONTROL Content]** > *[!UICONTROL Elements]* > **[!UICONTROL Pages]**.
1. Open any page for editing.
1. In the content area:
    1. Select **[!UICONTROL Add Layout]** > **[!UICONTROL Row]**.
    1. Select **[!UICONTROL Add Elements]** > **[!UICONTROL Text]**.
    1. In the WYSIWYG editor, click **[!UICONTROL Add Image]**.
    1. Upload an image and select **[!UICONTROL Add Selected]**.
1. Check the `var/log/exception.log` file.

<u>Expected results</u>:

No errors.

<u>Actual results</u>:

An error similar to the following is logged:

```
report.ERROR: InvalidArgumentException: Invalid image dimensions. in /var/www/html/vendor/magento/framework/Image/Adapter/AbstractAdapter.php:630
```

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
