---
title: 'ACSD-48634: [!DNL JS] errors when [!DNL Google Analytics Content Experiments] enabled'
description: Apply the ACSD-48634 patch to fix [!DNL JS] errors on a [!DNL staging] update page when [!DNL Google Analytics Content Experiments] is enabled.
exl-id: 4a9f201d-eaf0-4e43-a1a1-0a9ffb0a2ead
feature: Catalog Management, Categories, Console, Page Content
role: Admin
---
# ACSD-48634: [!DNL JS] errors when [!DNL Google Analytics Content Experiments] enabled

The ACSD-48634 patch fixes [!DNL JS] errors on a [!DNL staging] update page when [!DNL Google Analytics Content Experiments] is enabled. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.27 is installed. The patch ID is ACSD-48634. Please note that the issue was fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.7 - 2.4.6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

[!DNL JS] errors occur on a [!DNL staging] update page when [!DNL Google Analytics Content Experiments] is enabled.

<u>Steps to reproduce</u>:

1. In **[!UICONTROL Admin]** > **[!UICONTROL Stores]** > **[!UICONTROL All Stores]**, create an additional website, store, and **[!UICONTROL Store View]**. Make sure the **[!UICONTROL Store View]** is *[!UICONTROL Enabled]*.
1. Configure **[!DNL Configure Google Analytics]** by going to **[!UICONTROL Stores]** > **[!UICONTROL Settings]** > **[!UICONTROL Configuration]** > **[!UICONTROL Sales]** > **[!UICONTROL Google API]**:
    * For **[!DNL Main]** and additional websites [!DNL scope]:
        * **[!UICONTROL Enabled]**: *[!UICONTROL Yes]*
        * **[!UICONTROL Account type]**: *[!UICONTROL Google Tag Manager]*
        * **[!UICONTROL Anonymize IP]**: *[!UICONTROL Yes]*
        * **[!UICONTROL Enable Content Experiments]**: *[!UICONTROL Yes]*
        * **[!UICONTROL Container Id]**: *[!UICONTROL (GTM container ID)]*
        * **[!DNL Uncheck]** *[!UICONTROL Use Default]* for other fields, but do not change them.
     * For **[!DNL Default Config]** [!DNL scope]:
         * **[!UICONTROL Enabled]**: *[!UICONTROL Yes]*
         * **[!UICONTROL Account type]**: *[!UICONTROL Universal Analytics]*
         * **[!UICONTROL Account Number]**: *[!UICONTROL (Universal Analytics account number)]*
         * **[!UICONTROL Anonymize IP]**: *[!UICONTROL Yes]*
         * **[!UICONTROL Enable Content Experiments]**: *[!UICONTROL Yes]*
1. Disable **[!DNL Configure Google Analytics]** on **[!DNL Default Config]** [!DNL scope] by changing **[!UICONTROL Enable]** from *[!UICONTROL Yes]* to *[!UICONTROL No]*. Make sure not to change anything else!
1. Go to **[!UICONTROL Catalog]** > **[!UICONTROL Categories]**.
1. Create and Edit any **[!UICONTROL category]** and add a scheduled update for it:
    * Any name, start date in the future, end date in the future, and any change in **[!UICONTROL category]** ([!UICONTROL For Example]: *[!UICONTROL disable category]*).
1. Save the update and check the [!DNL browser developer console] for errors.

<u>Expected results</u>:

No [!DNL JS] errors and the changes to the [!DNL staging] update are saved successfully.

<u>Actual results</u>:

[!DNL JS] errors are visible in the console, the form is malformed, and the [!DNL spinner] never gets disabled after the save.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
