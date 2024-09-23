---
title: "ACSD-51379: Changes to page's text content via [!DNL Page Builder] aren't saved"
description: Apply the ACSD-51379 patch to fix the Adobe Commerce issue where the changes made to a page's text content via [!DNL Page Builder] are not saved.
exl-id: e274ca03-b675-4ded-9820-1d60978685d0
feature: Page Builder, Page Content
role: Admin
---
# ACSD-51379: Changes to page's text content via [!DNL Page Builder] aren't saved

The ACSD-51379 patch fixes the issue where the changes made to a page's text content via [!DNL Page Builder] are not saved. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.32 is installed. The patch ID is ACSD-51379. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7. 

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.7 - 2.4.6-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The changes made to a page's text content via [!DNL Page Builder] are not saved.

<u>Steps to reproduce</u>:

1. Log in to Admin.
1. Go to **[!UICONTROL Content]** > **[!UICONTROL Elements]** > **[!UICONTROL Pages]**.
1. Create a test page with one row and one text element on the **[!UICONTROL Content]** tab.
1. Save the page and return to the **[!UICONTROL Content]** tab.
1. Edit the text by selecting it and changing it.

    **Note:** The issue is only reproducible if the text is selected and changed without activating the editor.

1. Click the **[!UICONTROL Save and Close]** button on the test page.
1. Open the test page again and check the **[!UICONTROL Content]** tab.

<u>Expected results</u>:

The new text is saved successfully for original and duplicated text elements.

<u>Actual results</u>:

The text element is duplicated successfully, but the new text is not saved.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
