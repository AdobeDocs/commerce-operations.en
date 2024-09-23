---
title: 'ACSD-53583: Improve partial reindex performance for [!UICONTROL Category Products] and [!UICONTROL Product Categories] indexers'
description: Apply the ACSD-53585 patch to improve the partial reindex performance for Category Products and Product Categories indexers.
feature: Products, Categories
role: Admin, Developer
exl-id: 1c8f7df3-379f-42d6-8b41-286d34f725d2
---
# ACSD-53583: Improve partial reindex performance for Category Products and Product Categories indexers

The ACSD-53583 patch improves the partial reindex performance of *Category Products* and *Product Categories* indexers. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.39 is installed. The patch ID is ACSD-53583. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.6-p3
* Not compatible with [!DNL Live Search] module. In order to apply this patch to [!DNL Live Search] installation, please request an additional ACSD-55719 patch.

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Partial reindex takes more time than full reindex.

<u>Steps to reproduce</u>:

1. Turn all indexers to *Update by Schedule*.
1. Generate data with the [!DNL Performance Toolkit] (medium profile).
1. Make changes to all products and categories so that they are in the index backlog and all indices are idle.
1. Perform partial reindex for *Category Products* and *Product Categories* indexers.

<u>Expected results</u>:

Partial reindex is called once per product and takes almost the same time as full reindex, because all products and categories were changed.

<u>Actual results</u>:

Partial reindex is called many times per product and takes more time than full reindex.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
