---
title: 'ACSD-59967: JavaScript error prevents [!DNL Google Maps] from rendering correctly'
description: Apply the ACSD-59967 patch to fix the Adobe Commerce issue where the JavaScript error prevents [!DNL Google Maps] from rendering correctly.
feature: Admin Workspace, Page Builder, CMS
role: Admin, Developer
exl-id: 2982857a-7adb-4163-be18-4d2caf0d645c
---
# ACSD-59967: JavaScript error prevents [!DNL Google Maps] from rendering correctly

The ACSD-59967 patch fixes the issue where the JavaScript error prevents [!DNL Google Maps] from rendering correctly. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.51 is installed. The patch ID is ACSD-59967. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods) 2.4.4-p3

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

JavaScript error prevents [!DNL Google Maps] from rendering correctly.

<u>Steps to reproduce</u>:

1. Generate a valid [!DNL Google Maps] key.
1. Configure the [!DNL Google Maps] API key under **[!UICONTROL Stores]** > **[!UICONTROL Configuration]** > **[!UICONTROL General]** > **[!UICONTROL Content Management]**.
1. Add your [!DNL Google API Key] to **[!UICONTROL Google Maps API Key]** field and save the configuration.
1. Go to **[!UICONTROL Admin]** > **[!UICONTROL Content]** > **[!UICONTROL Pages]** > **[!UICONTROL Create New Page]**.
1. Add a **[!UICONTROL Row]** element and a **[!UICONTROL Maps]** element.

<u>Expected results</u>:

No JavaScript errors are present in the console, and the map renders properly on the *Storefront* and *Admin*.

<u>Actual results</u>:

JavaScript errors are displayed in the console and the map is not rendered properly.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
