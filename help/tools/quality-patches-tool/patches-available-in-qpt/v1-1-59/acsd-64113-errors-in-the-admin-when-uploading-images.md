---
title: 'ACSD-64113: Error in admin on uploading image with smaller width than height via [!DNL Media Gallery]'
description: Apply the ACSD-64113 patch to fix the Adobe Commerce issue where errors occur in the admin when uploading images with a relatively small width compared to their height (or vice versa) via the [!DNL Media Gallery].
feature: Page Content, Media, Admin Workspace
role: Admin, Developer
---
# ACSD-64113: Error in admin on uploading image with smaller width than height via [!DNL Media Gallery]

The ACSD-64113 patch fixes the issue where errors occur in the admin when uploading images with a relatively small width compared to their height (or vice versa) via the [!DNL Media Gallery]. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.59 is installed. The patch ID is ACSD-64113. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods)  2.4.7-p3

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.4.5 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Errors occur in the admin when uploading images with a relatively small width compared to their height (or vice versa) via the [!DNL Media Gallery].

<u>Steps to reproduce</u>:

1. Go to **[!UICONTROL Content]** > **[!UICONTROL Media]** > **[!UICONTROL Media Gallery]** and select the **[!UICONTROL wysiwyg]** directory.
1. Upload the image with a relatively small width compared to its height (or vice versa).

<u>Expected results</u>:

The image is uploaded without errors.

<u>Actual results</u>:

1. The following error message is thrown:

    *A technical problem with the server created an error. Try again to continue what you were doing. If the problem persists, try again later.*
1. `var/log/exception.log` contains:

    ```
    report.CRITICAL: ValueError: imagecreatetruecolor(): Argument #1 ($width) must be greater than 0 in /home/lib/internal/Magento/Framework/Image/Adapter/Gd2.php:427
    ```

    or

    ```
    report.CRITICAL: ValueError: imagecreatetruecolor(): Argument #1 ($height) must be greater than 0 in /home/lib/internal/Magento/Framework/Image/Adapter/Gd2.php:427
    ```

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.


## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
