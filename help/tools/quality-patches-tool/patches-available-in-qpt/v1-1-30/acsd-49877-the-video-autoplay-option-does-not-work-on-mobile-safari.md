---
title: 'ACSD-49877: Video autoplay does not work on mobile [!DNL Safari]'
description: Apply the ACSD-49877 patch to fix the Adobe Commerce issue where the video autoplay option does not work on mobile [!DNL Safari] when the video is linked directly to a remote video file.
feature: CMS
role: Admin
exl-id: aa2557e2-4bed-4004-b9bc-36c59f1e9cdc
type: Troubleshooting
---
# ACSD-49877: Video autoplay does not work on mobile [!DNL Safari]

The ACSD-49877 fixes the issue where the autoplay option on mobile [!DNL Safari] does not work when the video is linked directly to a remote video file. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.30 is installed. The patch ID is ACSD-49877. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.7 - 2.4.6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the [!magento/quality-patches] package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches]. Use the patch ID as a search keyword to locate the patch.

## Issue

Video autoplay does not work on mobile [!DNL Safari] when the video is linked directly to a remote video file and not a streaming service.

<u>Prerequisites</u>:
[!DNL Page Builder] modules are installed.

<u>Steps to reproduce</u>:

1. Create a new CMS page, and edit the **[!UICONTROL Content Value]** with [!DNL Page Builder]. 
1. Add a *Tab* element to the content, and add a *Video Element* inside the *Tab*.
1. Now click on the gear button to edit the *Video Element*.
1. Add a link to an mp4 video file to the [!UICONTROL Video URL] field.
1. Mark the **[!UICONTROL Autoplay]** field as *Yes*.
1. Click **[!UICONTROL Save]**.
1. Open the recently created page on [!DNL Safari] using an iPhone.

<u>Expected results</u>

The autoplay option works on [!DNL Safari] using an iPhone.

<u>Actual results</u>

The autoplay option does not work on [!DNL Safari] using an iPhone.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
