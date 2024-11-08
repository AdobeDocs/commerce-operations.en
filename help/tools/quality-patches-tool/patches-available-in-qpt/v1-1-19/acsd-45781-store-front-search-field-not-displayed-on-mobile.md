---
title: 'ACSD-45781: Store front search field not displayed on mobile'
description: The MDVA-45781 patch solves the issue where the store front search field is not displayed on mobile. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.19 is installed. The patch ID is MDVA-45781. Please note that the issue was fixed in Adobe Commerce 2.4.3.
feature: Cache, Native Luma Frontend Development, Search
role: Admin
exl-id: f761461b-2dd0-45d2-b80d-57793f6f0924
---
# ACSD-45781: Store front search field not displayed on mobile

The MDVA-45781 patch solves the issue where the store front search field is not displayed on mobile. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.19 is installed. The patch ID is MDVA-45781. Please note that the issue was fixed in Adobe Commerce 2.4.3.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.1-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.1 - 2.4.1-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

Store front search field is not displayed on mobile

<u>Steps to reproduce</u>:

1. Go to the Commerce Admin > **Stores** > **Configuration** > **Catalog** > **Catalog Search** and set:
    * Enable Search Recommendations to *No*
    * Enable Search Suggestions to *No*
1. Click on the **Save Config** button.
1. Clean cache.
1. Using the standard Luma theme, browse with mobile.
1. Click on the **Search** button.

<u>Expected results</u>:

Input search form appears.

<u>Actual results</u>:

Nothing happens.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
