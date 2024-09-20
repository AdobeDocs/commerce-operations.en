---
title: 'ACSD-51358: Schedule updates are missing'
description: Apply the ACSD-51358 patch to fix the Adobe Commerce issue where the changes in scheduled update without an end date leads to removing other scheduled updates on the same entity.
feature: Staging
role: Admin, Developer
exl-id: 8bc4c505-9cf2-4c33-93a1-4b4d7d0dfc15
---
# ACSD-51358: Schedule updates are missing

The ACSD-51358 patch fixes the issue where the changes in scheduled update without an end date lead to removing other scheduled updates on the same entity. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.35 is installed. The patch ID is ACSD-51358. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods)  2.4.5-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.5 - 2.4.6-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The changes in scheduled update without an end date lead to removing other scheduled updates on the same entity.

<u>Steps to reproduce</u>:

1. Create a **[!UICONTROL scheduled update]** without the end date (*update 1*).
1. Create new **[!UICONTROL scheduled update]** with same start date as first update, but add the next day, and the end date (*update 2*).
1. Edit **[!UICONTROL scheduled update]** created on step 1 (*update 1*) and the save changes.

<u>Expected results</u>

The (*update 2*) should remain in the **[!UICONTROL schedule update]** list when (*update 1*) is edited.

<u>Actual results</u>

The (*update 2*) was removed from the **[!UICONTROL schedule update]** list when (*update 1*) is edited.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](<https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html>) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](<https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html>) in the [!DNL Quality Patches Tool] guide.
