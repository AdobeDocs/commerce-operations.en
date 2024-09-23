---
title: 'ACSD-51149: Scheduled [!UICONTROL ImportExport] with enabled [!UICONTROL Catalog Permissions] invalidates indexers'
description: Apply the ACSD-51149 patch to fix the Adobe Commerce performance issue where the scheduled [!UICONTROL ImportExport] with enabled [!UICONTROL Catalog Permissions] invalidates indexers.
feature: Cache, Data Import/Export
role: Admin
exl-id: 3a26f4be-8e52-407d-bb25-2841458f3aa5
---
# ACSD-51149: Scheduled [!UICONTROL ImportExport] with enabled [!UICONTROL Catalog Permissions] invalidates indexers

The ACSD-51149 patch fixes the issue where the scheduled [!UICONTROL ImportExport] with enabled [!UICONTROL Catalog Permissions] invalidates indexers. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.35 is installed. The patch ID is ACSD-51149. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.7 - 2.4.6-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Scheduled [!UICONTROL ImportExport] with enabled [!UICONTROL Catalog Permissions] invalidates indexers.

<u>Steps to reproduce</u>:

1. Enable *[!UICONTROL Catalog Permissions]*.
1. Set all indexers to *[!UICONTROL Update by Schedule]*.
1. Create a simple product.
1. Export this product via **[!UICONTROL System]** > **[!UICONTROL Data Transfer]** > **[!UICONTROL Export]**.
1. Download the exported CSV, and put it into `<AC root folder>/var/import`.
1. Create a scheduled product import with the downloaded CSV.
1. Run full reindex.
1. Check the indexers' status. All indexers should be in *[!UICONTROL Ready]* status.
1. Run the created scheduled import from the grid.
1. Recheck indexers' status.

<u>Expected results</u>:

All the indexers are in the *[!UICONTROL Ready]* status.

<u>Actual results</u>:

Some of the indexers are in *[!UICONTROL Reindex Required]* status.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
