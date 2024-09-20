---
title: 'ACSD-58008: Editing the end date as *empty* causes the schedule update to disappear'
description: Apply the ACSD-58008 patch to fix the Adobe Commerce issue where editing the end date as *empty* causes schedule update to disappear.
feature: Staging, Page Content
role: Admin, Developer
exl-id: bfa590b8-377b-49dd-9aff-f89b8fd815c4
---
# ACSD-58008: Editing the end date as *empty* causes the schedule update to disappear

The ACSD-58008 patch fixes the issue where editing the end date as *empty* causes the schedule update to disappear. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.48 is installed. The patch ID is ACSD-58008. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p5

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.5 - 2.4.6-p4

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Editing the end date as *empty* causes the schedule update to disappear

<u>Steps to reproduce</u>:

1. Log in as [!UICONTROL Admin]. 
1. Go to **[!UICONTROL Content]** > **[!UICONTROL Elements]** > **[!UICONTROL Pages]** and create a page.
1. Select the created page and click on **[!UICONTROL Schedule New Update]**. *(Navigate it on the top right hand corner of the page)*.
1. Create four updates. *(For example, as an increment of *2* minutes)*.
1. Update the *update 2* and change the time to a time that is ahead of the last *update 4*.
1. Save the updates made. 

<u>Expected results</u>:

The schedule update shows the *update 3*. 

<u>Actual results</u>:

The schedule update doesn't show the *update 3*. 

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
