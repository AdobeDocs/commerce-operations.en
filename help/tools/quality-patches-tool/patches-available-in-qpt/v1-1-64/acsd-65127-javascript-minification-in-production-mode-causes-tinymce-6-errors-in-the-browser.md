---
title: 'ACSD-65127: JavaScript minification in production mode causes [!DNL TinyMCE] 6 errors in the browser'
description: Apply the ACSD-65127 patch to fix the Adobe Commerce issue where enabling JavaScript minification in production mode caused [!DNL TinyMCE] 6 to generate errors in the browser console, affecting functionality and user experience.
feature: Page Builder, Page Content
role: Admin, Developer
---

# ACSD-65127: JavaScript minification in production mode causes [!DNL TinyMCE] 6 errors in the browser

The ACSD-65127 patch fixes the issue where enabling JavaScript minification in production mode caused [!DNL TinyMCE] 6 to generate errors in the browser console, affecting functionality and user experience. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.64 is installed. The patch ID is ACSD-65127. Please note that this issue was fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p5

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) page. Use the patch ID as a search keyword to locate the patch.

## Issue

Enabling JavaScript minification in production mode caused [!DNL TinyMCE] 6 to generate errors in the browser console, affecting functionality and user experience.

<u>Steps to reproduce</u>:

1. Set the configuration by running the below commands:

  ```
  bin/magento config:set --lock-config dev/js/minify_files 1
  bin/magento config:set --lock-config dev/js/enable_js_bundling 1
  bin/magento config:set --lock-config dev/js/merge_files 1
  ```

1. Enable production mode.

  ```
  bin/magento deploy:mode:set production
  ```

1. On the Admin sidebar, go to **[!UICONTROL Catalog]** > **[!UICONTROL Products]**. Click **[!UICONTROL Edit]** on any listed product and scroll down to **[!UICONTROL Content]** and select **[!UICONTROL Show Editor]**.

<u>Expected results</u>:

No JS errors in the browser console.

<u>Actual results</u>:

*404* errors in the browser console for the js `tiny_mce_7/plugins/help/js/i18n/keynav/en.js`.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/develop/upgrade/apply-patches) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
