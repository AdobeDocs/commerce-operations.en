---
title: 'ACSD-58442: Fixes the issue where devices with 768px width treated as mobile, causing menu and header to load in mobile view not desktop'
description: Apply the ACSD-58442 patch to fix the Adobe Commerce issue where devices with a width of 768px are treated as mobile, causing the menu and header to load in a mobile view instead of desktop.
feature: Storefront
role: Admin, Developer
exl-id: 86ea64aa-10fc-4fa3-9902-918fb8983ca0
type: Troubleshooting
---
# ACSD-58442: Fixes the issue where devices with 768px width treated as mobile, causing menu and header to load in mobile view not desktop

The ACSD-58442 patch fixes the Adobe Commerce issue where devices with a width of 768px are treated as mobile, causing the menu and header to load in a mobile view instead of a desktop. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.50 is installed. The patch ID is ACSD-58442. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.6-p7

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The system now treats devices with a width of 768px as desktop, ensuring that the menu and header load correctly. Previously, devices with a width of 768px were treated as mobile, causing the menu and header to load in a mobile view.

<u>Steps to reproduce</u>:

1. Load the homepage on an iPad Mini or use a browser's inspect tool to resize the browser to a width of *768px*.
1. Open the main menu.

<u>Expected results</u>:

Menu and header loads as a desktop view.

<u>Actual results</u>:

Menu and header loads as a mobile view.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
