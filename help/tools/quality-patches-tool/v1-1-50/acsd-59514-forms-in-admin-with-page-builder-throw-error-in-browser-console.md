---
title: 'ACSD-59514: Forms in Admin with [!DNL Page Builder] throw error in browser console'
description: Apply the ACSD-59514 patch to fix the Adobe Commerce issue where forms in Admin with [!DNL Page Builder] throw the error "[!DNL Page Builder] was rendering for 5 seconds without releasing locks." in the browser console after submitting the form, and changes can't be saved.
feature: Page Builder
role: Admin, Developer
---

# ACSD-59514: Forms in Admin with [!DNL Page Builder] throw error in browser console

The ACSD-59514 patch fixes the issue where the forms in Admin with [!DNL Page Builder] throw the error *[!DNL Page Builder] was rendering for 5 seconds without releasing locks.* in the browser console after submitting the form, and changes can't be saved. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.50 is installed. The patch ID is ACSD-59514. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4-p8

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.6-p7

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Forms in Admin with [!DNL Page Builder] throw the error *[!DNL Page Builder] was rendering for 5 seconds without releasing locks.* in the browser console after submitting the form, and changes can't be saved.

<u>Prerequisites</u>:

Adobe Commerce [!DNL Page Builder] modules are installed and enabled.

<u>Steps to reproduce</u>:

1. Open the admin panel and click on the [!UICONTROL Content] button.
1. Select the block and edit the block.
1. Change the content and click [!UICONTROL Save].
1. Open the console and see the error message.

<u>Expected results</u>:

The block is saved successfully.

<u>Actual results</u>:

The loader doesn't stop spinning, and the block is not saved. The following error is displayed in the browser console:
*[!DNL Page Builder] was rendering for 5 seconds without releasing locks.*

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
