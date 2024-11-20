---
title: 'ACSD-61199: CMS page [!UICONTROL Hierarchy] tab does not display proper tree structure'
description: Apply the ACSD-61199 patch to fix the Adobe Commerce issue where the CMS page's *[!UICONTROL Hierarchy]* tab doesn't display a proper tree structure when editing a CMS page with an existing *[!UICONTROL Hierarchy]*.
feature: Page Content
role: Admin, Developer
---
# ACSD-61199: CMS page's [!UICONTROL Hierarchy] tab doesn't display proper tree structure

The ACSD-61199 patch fixes the issue where the CMS page's *[!UICONTROL Hierarchy]* tab doesn't display a proper tree structure when editing a CMS page with an existing *[!UICONTROL Hierarchy]*. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.54 is installed. The patch ID is ACSD-61199. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

CMS page's *[!UICONTROL Hierarchy]* tab doesn't display a proper tree structure when editing a CMS page with an existing *[!UICONTROL Hierarchy]*.

<u>Steps to reproduce</u>:

1. Go to **[!UICONTROL Admin]** > **[!UICONTROL Content]** > **[!UICONTROL Pages]**.
1. Create a new **[!UICONTROL CMS page]**. It is added to the website root at the *[!UICONTROL Hierarchy]*.
1. Save the page.
1. Go to **[!UICONTROL Admin]** > **[!UICONTROL Content]** > **[!UICONTROL Hierarchy]**.
1. Add any other existing pages to the *[!UICONTROL Hierarchy]*.
1. Save the *[!UICONTROL Hierarchy]*.
1. Go to **[!UICONTROL Admin]** > **[!UICONTROL Content]** > **[!UICONTROL Pages]**.
1. Edit any of the existing pages and open the *[!UICONTROL Hierarchy]*.

<u>Expected results</u>:

The *[!UICONTROL Hierarchy]* loads as expected.

<u>Actual results</u>:

The *[!UICONTROL Hierarchy]* is not loaded in the tab.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

[[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
