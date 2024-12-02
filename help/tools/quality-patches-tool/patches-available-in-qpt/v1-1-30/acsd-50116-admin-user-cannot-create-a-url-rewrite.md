---
title: 'ACSD-50116: An admin user cannot create a URL rewrite for the sub-categories of level three or lower'
description: Apply the ACSD-50116 patch to fix the Adobe Commerce issue where an admin user cannot create a URL rewrite for the sub-categories of level three or lower.
feature: Admin Workspace, Categories
role: Admin
exl-id: b2a248eb-a6c4-4596-acac-04a52c5c2a61
---
# ACSD-50116: An admin user cannot create a URL rewrite for the sub-categories of level three or lower

The ACSD-50116 patch fixes the issue where an admin user cannot create a URL rewrite for the sub-categories of level three or lower. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.30 is installed. The patch ID is ACSD-50116. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.7 - 2.4.6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

An admin user cannot create a URL rewrite for the sub-categories of level three or lower.

<u>Steps to reproduce</u>:

1. Create a category tree which has more than three levels of sub-categories.
1. Try to create a *[!UICONTROL URL Rewrite]* for the level four category using both the *[!UICONTROL For Product]* and *[!UICONTROL For Category]* options.

<u>Expected results</u>:

The category tree displays the sub-categories up to level four or below.

<u>Actual results</u>:

The category tree displays only up to level three sub-categories.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
