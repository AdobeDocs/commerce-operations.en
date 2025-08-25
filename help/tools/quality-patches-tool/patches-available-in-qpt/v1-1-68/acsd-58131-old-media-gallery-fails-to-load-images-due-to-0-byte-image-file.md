---
title: 'ACSD-58131: Old media gallery fails to load images due to 0-byte image file'
description: Apply the ACSD-58131 patch to fix the Adobe Commerce issue where the old media gallery fails to render images when a 0-byte image is present in the directory.
feature: Media
role: Admin, Developer
type: Troubleshooting
---

# ACSD-58131: Old media gallery fails to load images due to 0-byte image file

The ACSD-58131 patch fixes the issue where the old media gallery fails to render images when a 0-byte image is present in the directory. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.68 is installed. The patch ID is ACSD-58131. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.5.0.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The issue occurs when a 0-byte image is placed in the media gallery directory, causing the old media gallery to fail rendering any images. The updated system now skips invalid 0-byte files, displays valid images as expected, and logs a warning for each incorrect file.

```
[2024-05-02T14:00:39.616459+00:00] report.WARNING: The image empty2.jpg is invalid and cannot be displayed in the gallery. [] []
```

<u>Steps to reproduce</u>:

1. Go to **[!UICONTROL Stores]** > **[!UICONTROL Configuration]** > **[!UICONTROL Advanced]** > **[!UICONTROL System]** > **[!UICONTROL Media Gallery]**.
1. Set **[!UICONTROL Enable Old Media Gallery]** to *Yes*.
1. Place a few images in the `pub/media/wysiwyg` directory.
1. Create a 0-byte image in the same directory using `touch pub/media/wysiwyg/empty_image.png`.
1. Add an image from the `wysiwyg` directory via Page Builder under any content (for example, a CMS Block):
    1. Create a New Block
    1. Edit the content section using Page Builder.
    1. Under **[!UICONTROL Layout]**, drag a new **[!UICONTROL Row]** to the stage.
    1.  Expand **[!UICONTROL Media]** and drag an **[!UICONTROL Image]** placeholder into the row.
    1. Click **[!UICONTROL Select from Gallery]**.
    1. Select the `wysiwyg` directory if it’s not selected by default.

<u>Expected results</u>:

The media gallery remains functional even if a 0-byte image (or any other file) exists.

<u>Actual results</u>:

The media gallery fails to load any images from the wysiwyg directory due to a critical error logged in `var/log/system.log`:

```
[2024-03-22T05:00:55.100934+00:00] report.CRITICAL: Exception: Notice: getimagesizefromstring(): Error reading from ! in /app/project/vendor/magento/module-cms/Model/Wysiwyg/Images/Storage.php on line 426 in /app/project/vendor/magento/framework/App/ErrorHandler.php:62
```

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
