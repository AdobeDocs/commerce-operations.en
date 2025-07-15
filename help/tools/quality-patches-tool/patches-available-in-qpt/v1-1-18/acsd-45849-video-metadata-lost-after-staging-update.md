---
title: 'ACSD-45849: Video metadata is lost after staging update'
description: The ACSD-45849 patch fixes the issue where the video metadata is lost after a staging update is applied. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.18 is installed. The patch ID is ACSD-45849. Please note that the issue was fixed in Adobe Commerce 2.4.4.
feature: Staging, Page Content
role: Admin
exl-id: cbab0120-585a-47ef-8ed9-abb2da1ec3d6
type: Troubleshooting
---
# ACSD-45849: Video metadata is lost after staging update

The ACSD-45849 patch fixes the issue where the video metadata is lost after a staging update is applied. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.18 is installed. The patch ID is ACSD-45849. Please note that the issue was fixed in Adobe Commerce 2.4.4.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.3-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.3 - 2.4.3-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

The video metadata is lost after a staging update is applied.

<u>Steps to reproduce</u>:

1. Set up the YouTube API key in **Admin** > **Stores** > **Configuration** > **Catalog** > **Product Video**.
1. Create a product with a YouTube video. Note that the URL, title, and description are filled.
1. Create a new scheduled update for the product with any parameters without changing the *Images and Video* section.
1. Click on **View/Edit** in Scheduled Changes.
1. Go to **Images and Videos** and click on the video.

<u>Expected results</u>:

The URL, title, and description contain appropriate data.

<u>Actual results</u>:

The URL, title, and description fields are empty.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
