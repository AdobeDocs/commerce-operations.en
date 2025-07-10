---
title: 'ACSD-62755: [!DNL TinyMCE] 7 needs font size and font added to editor initialization settings'
description: Apply the ACSD-62755 patch to fix the Adobe Commerce issue where [!DNL TinyMCE] 7 requires *font size* and *font family* to be specifically added within editor initialization settings.
feature: Page Content, Page Builder, Admin Workspace
role: Admin, Developer
exl-id: f61dc7b6-ac6b-45eb-a0a2-f3f0bff4422b
type: Troubleshooting
---
# ACSD-62755: [!DNL TinyMCE] 7 needs font size and font added to editor initialization settings

The ACSD-62755 patch fixes the issue where [!DNL TinyMCE] 7 requires *font size* and *font family* selectors to be specifically added within editor initialization settings. This patch is available with the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.56 is installed. The patch ID is ACSD-62755. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods) 2.4.5-p10

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.4.4-p11, 2.4.5-p10, 2.4.6-p8, 2.4.7-p3 

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

[!DNL TinyMCE] 7 requires *font size* and *font family* selectors to be specifically added within editor initialization settings.

<u>Steps to reproduce</u>:

Go to **[!UICONTROL Catalog]** > **[!UICONTROL Products]** > **[!UICONTROL Content]**, and select *[!UICONTROL Show Editor]*.
    
<u>Expected results</u>:

*Font size* and *font family* selectors are visible in the WYSIWYG editor.

<u>Actual results</u>:

*Font size* selector is missing from the WYSIWYG editor.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
