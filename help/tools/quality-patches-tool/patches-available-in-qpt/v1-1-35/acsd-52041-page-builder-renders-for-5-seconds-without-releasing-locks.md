---
title: "ACSD-52041: Page Builder rendering doesn't release locks"
description: Apply the ACSD-52041 patch to fix the Adobe Commerce issue where the Page Builder renders for five seconds without releasing locks.
feature: Page Builder
role: Admin, Developer
exl-id: 48a7fc36-e98a-4a4e-bed3-248d7d73f6cb
---
# ACSD-52041: Page Builder rendering doesn't release locks

The ACSD-52041 patch fixes the issue where the Page Builder renders for five seconds without releasing locks. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.48 is installed. The patch ID is ACSD-52041-v2. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.4-p5, 2.4.5 - 2.4.5-p4, and 2.4.6 - 2.4.6-p2.



>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch. 
 

## Issue

The **[!DNL Page Builder]** renders for *5* seconds without releasing the locks.

<u>Steps to reproduce</u>:

1. Edit a CMS page, product page or anything that has **[!DNL Page Builder]**.
1. Save the changes. 
1. Notice the page saving time.

<u>Expected results</u>

The content is saved. No errors ar found in th browser log.

<u>Actual results</u>

The saving takes longer than the usual time to complete. 
Error in console: ``Page Builder was rendering for 5 seconds without releasing locks``

## Apply the patch

To apply individual patches for versions **2.4.4 - 2.4.4-p5, 2.4.5 - 2.4.5-p4, and 2.4.6 - 2.4.6-p2**, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](</help/tools/quality-patches-tool/usage.md>) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](<https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html>) in the [!DNL Quality Patches Tool] guide.
