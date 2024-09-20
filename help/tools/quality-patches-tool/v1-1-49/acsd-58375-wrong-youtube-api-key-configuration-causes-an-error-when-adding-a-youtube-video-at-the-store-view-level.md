---
title: 'ACSD-58375: Incorrectly configured YouTube API key causes error when adding video at store view level'
description: Apply the ACSD-58375 patch to fix the Adobe Commerce issue where wrong YouTube API key configuration causes an error when adding a YouTube video at the store view level.
feature: Catalog Management, Configuration
role: Admin, Developer
---
# ACSD-58735: Incorrectly configured YouTube API key causes error when adding video at store view level

The ACSD-58735 patch fixes the issue where where wrong YouTube API key configuration causes an error when adding a YouTube video at the store view level. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.49 is installed. The patch ID is ACSD-58735. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.2 - 2.4.6-p7

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Wrong YouTube API key configuration causes an error when adding a YouTube video at the store view level.

<u>Steps to reproduce</u>:

1. Go to Admin > **[!UICONTROL Stores]** > **[!UICONTROL Configuration]** > **[!UICONTROL Catalog]** > **[!UICONTROL Product Video]**.
1. Change the *Scope* to *[!UICONTROL Main Website]* level.
1. Add the YouTube API key.
1. Go to **[!UICONTROL Catalog]** > **[!UICONTROL Products]**.
1. Select any product and scroll to *[!UICONTROL Images and Video]*. Click **[!UICONTROL Add Video]**.
1. Copy a YouTube video link and paste it into the video link field. Move out from the field.

<u>Expected results</u>:

The YouTube API key has a global scope and is hidden at the website level.

<u>Actual results</u>:

The following error is thrown: *Video is not  shown due to the following reason: API key not valid. Please pass a valid API key*.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
