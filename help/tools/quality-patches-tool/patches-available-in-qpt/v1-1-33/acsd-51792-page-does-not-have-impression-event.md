---
title: 'ACSD-51792: Page does not have impression event'
description: Apply the ACSD-51792 patch to fix the Adobe Commerce performance issue where a page does not have the impression event when Google Tag Manager 4 is enabled.
exl-id: 59194d4c-c387-4372-a0ff-1cdd74f8c6df
---
# ACSD-51792: Page does not have impression event

The ACSD-51792 patch fixes the performance issue where a page does not have the impression event when [!DNL Google Tag Manager] 4 is enabled. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.33 is installed. The patch ID is ACSD-51792. Please note that the issue was fixed in Adobe Commerce 2.4.6.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.5 - 2.4.5-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Page does not have the impression event when [!DNL Google Tag Manager] 4 is enabled.

<u>Steps to reproduce</u>:

1. Go to **[!UICONTROL Admin]** > **[!UICONTROL Stores]** > **[!UICONTROL Configuration]** > **[!UICONTROL Sales]** > **[!UICONTROL Google API]**.
1. Configure the **[!DNL GoogleTag Manager]** integration.
1. Go to [Google Tag Assistant](https://tagassistant.google.com/), and complete the steps needed to connect to your website.
1. Open a category page that has a product listing on the storefront.
1. Check for the impressions event in the Tag Assistant observer.

<u>Expected results</u>:

The impression event should begin with all of the products on the page.

<u>Actual results</u>:

The page does not have the impression event in the Tag Assistant observer.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
