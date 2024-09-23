---
title: 'ACSD-51431: Indexer status is *[!UICONTROL Working]* even though there are no entries in the changelog'
description: Apply the ACSD-51431 patch to fix the Adobe Commerce issue where the indexer status is *[!UICONTROL Working]* even though there are no entries in the changelog.
feature: Logs, Price Indexer
role: Admin
exl-id: 85977b78-7f6b-47c7-b33e-16668bdf98fe
---
# ACSD-51431: Indexer status is *[!UICONTROL Working]* even though there are no entries in the changelog

The ACSD-51431 patch fixes the performance issue where the indexer status is *[!UICONTROL Working]* even though there are no entries in the changelog. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.33 is installed. The patch ID is ACSD-51431. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.7 - 2.4.6-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The indexer status is *[!UICONTROL Working]* even though there are no entries in the changelog.

<u>Steps to reproduce</u>:

1. Set **[!UICONTROL indexers]** to [!UICONTROL Update on Schedule].
1. Configure the cron job to run every minute.
1. Save changes to different products simultaneously. 
1. Run `bin/magento indexer:status` in a couple of minutes.

<u>Expected results</u>:

The changes are processed, and the indexers are in *[!UICONTROL Ready]* status. The *[!UICONTROL Schedule]* status is *[!UICONTROL idle (0 in the backlog)]*.

<u>Actual results</u>:

The changes are processed, and the indexers are in *[!UICONTROL Ready]* status. However, the *[!UICONTROL Schedule]* status displays *[!UICONTROL working (0 in the backlog)]*.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
