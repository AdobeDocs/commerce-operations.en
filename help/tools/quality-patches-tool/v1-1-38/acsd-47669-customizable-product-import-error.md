---
title: 'ACSD-47669: Internal server error when importing products with customizable options'
description: Apply the ACSD-47669 patch to fix the Adobe Commerce issue where there is an internal server error during importing products with customizable options.
feature: Products
role: Admin, Developer
exl-id: 14afbd71-075a-4264-8da2-dbbd93f472a1
---
# ACSD-47669: Internal server error when importing products with customizable options

The ACSD-47669 patch fixes the issue where there is an internal server error during product imports with customizable options. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.38 is installed. The patch ID is ACSD-47669. Please note that the issue is already fixed in Adobe Commerce 2.4.6.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.2 - 2.4.5-p4

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

There is an internal server error when importing products with customizable options.

<u>Steps to reproduce</u>:

1. Create an additional store view. Make sure you have 2 store views, e.g., en, UK.
1. Create two simple products, e.g., prod1 and prod2.
1. Prepare a csv file that adds custom options for both products in each store view and for the **All Store View** scope. Import this csv file.
1. Prepare another csv file that includes two records. The first record should be to update the custom options of 'prod1' specifically for the UK store view scope and the second record should be to update the custom options of 'prod2' for the **All Store View** scope. Import this second csv file.

<u>Expected results</u>:

You should be able to customize options without any error.

<u>Actual results</u>:

An integrity constraint violation error occurs.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
