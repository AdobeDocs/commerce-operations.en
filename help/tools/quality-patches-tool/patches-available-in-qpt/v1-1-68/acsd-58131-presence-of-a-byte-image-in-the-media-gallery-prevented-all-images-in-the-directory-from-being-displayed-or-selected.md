---
title: 'ACSD-58131: Presence of a 0-byte image in the media gallery prevented all images in the directory from being displayed or selected'
description: Apply the ACSD-58131 patch to fix the Adobe Commerce issue where old media gallery fails to render images when a 0-byte image is placed in the directory.
The system now handles 0-byte images in the media gallery without disrupting functionality, allowing other images in the directory to be displayed and selected as expected.
Additionally, we will place a log record about the incorrect image file.

```
[2024-05-02T14:00:39.616459+00:00] report.WARNING: The image empty2.jpg is invalid and cannot be displayed in the gallery. [] []
```.
feature: Media
role: Admin, Developer
---

# ACSD-58131: Presence of a 0-byte image in the media gallery prevented all images in the directory from being displayed or selected

The ACSD-58131 patch fixes the issue where the presence of a 0-byte image in the media gallery prevented all images in the directory from being displayed or selected. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.68 is installed. The patch ID is ACSD-58131. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.5.0.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Issue where the presence of a 0-byte image in the media gallery prevented all images in the directory from being displayed or selected.

<u>Steps to reproduce</u>:

1. Enable the old media gallery ( Stores > Configuration > Advanced > System > Media Gallery > Enable Old Media Gallery: Yes)
1. Place a few images under the pub/media/wysiwyg directory.
1. Create a 0-byte image under the pub/media/wysiwyg directory (I used the touch command for this "touch pub/media/wysiwyg/empty_image.png").
1. Try to add an image from the wysiwyg via Page Builder under any content (eg: CMS Block)
    1. Create a New Block.
    1. Edit the content section with the Page Builder.
    1. Drag a Layout > Row.
    1. Drag a Media > Image into the Row.
    1. Click on the "Select from Gallery".
    1. Select the "wysiwyg" directory if not selected by default.

<u>Expected results</u>:

A 0-byte image (or any other file) should not break the media gallery functionality.

<u>Actual results</u>:

None of the images under the wysiwyg directory is available for selection.

var/log/system.log contains:

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