---
title: 'ACSD-55305: Popup freeze during company user editing in [!UICONTROL My Account]'
description: Apply the ACSD-55305 patch to fix the Adobe Commerce issue where [!UICONTROL Edit Company User] popup on the [!UICONTROL My Account] &gt; [!UICONTROL Company Structure] page freezes with a loader on the screen.
feature: Companies, B2B
role: Admin, Developer
exl-id: be2bfe08-d05e-485d-84c3-2ff14e1a8654
---
# ACSD-55305: Popup freeze during company user editing in [!UICONTROL My Account]

The ACSD-55305 patch fixes the issue where  [!UICONTROL Edit Company User] popup on the [!UICONTROL My Account]> [!UICONTROL Company Structure] page freezes with a loader on the screen. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.43 is installed. The patch ID is ACSD-55305. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.6-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

An error occurs when attempting to use the *[!UICONTROL Edit Company User]* popup on the *[!UICONTROL My Account]* > *[!UICONTROL Company Structure]* page, as it freezes with a loader displayed on the screen.

<u>Steps to reproduce</u>:

1. Create a B2B company.
1. Create a multi-select attribute for customers.  
1. Assign a value to the newly created attribute for the company admin.
1. Log in as Company Admin.
1. Go to the [!UICONTROL account dashboard] and navigate to the **[!UICONTROL Company Structure]**.
1. Select the user.
1. Click on **[!UICONTROL Edit Selected]**.

<u>Expected results</u>:

The form popup appears accurately, providing the option to edit company information.

<u>Actual results</u>:

The form popup appears without any possibility to edit.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
