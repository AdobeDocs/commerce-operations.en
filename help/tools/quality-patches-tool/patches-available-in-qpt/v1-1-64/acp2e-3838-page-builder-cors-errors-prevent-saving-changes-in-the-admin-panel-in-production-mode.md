---
title: 'ACP2E-3838: [!DNL Page Builder] CORS errors prevent saving changes in the admin panel in production mode'
description: Apply the ACP2E-3838 patch to fix the Adobe Commerce issue where [!DNL Page Builder] CORS errors prevent saving changes in the admin panel in production mode.
feature: Page Builder, Page Content, Admin Workspace
role: Admin, Developer
exl-id: 0d590c0e-e21c-4553-a0a3-9332e22796f3
type: Troubleshooting
---
# ACP2E-3838: [!DNL Page Builder] CORS errors prevent saving changes in the admin panel in production mode

The ACP2E-3838 patch fixes the issue where [!DNL Page Builder] CORS errors prevent saving changes in the admin panel in production mode. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.64 is installed. The patch ID is ACP2E-3838. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4-p9 - 2.4.4-p12, 2.4.5-p8 - 2.4.5-p11, 2.4.6-p6 - 2.4.6-p9, 2.4.7 - 2.4.7-p4

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

[!DNL Page Builder] CORS errors prevent saving changes in the admin panel in production mode.

<u>Steps to reproduce</u>:

1. Log in to the admin panel.
1. Go to **[!UICONTROL Content]** > **[!UICONTROL Pages]**.
1. Click **[!UICONTROL Add New Page]**, or select an existing CMS page and click **[!UICONTROL Edit]**.
1. Click **[!UICONTROL Edit with Page Builder]** to add a new content block or edit an existing block.
1. Make any changes to the content, such as adding text, images, or other elements.
1. Click the **[!UICONTROL Save]** button.

<u>Expected results</u>:

The page content should save successfully without any errors.

<u>Actual results</u>:

1. The [!DNL Page Builder] changes fail to save.
1. The browser console logs CORS-related errors.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
