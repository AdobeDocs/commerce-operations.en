---
title: 'ACSD-56415: Performance of [!UICONTROL Partial Price Indexing] slowed due to `DELETE` query'
description: Apply the ACSD-56415 patch to fix the Adobe Commerce issue where the performance of the [!UICONTROL Partial Price Indexing] is slowed down due to a `DELETE` query when the database has a lot of partial price data to index.
feature: Catalog Service
role: Admin, Developer
exl-id: 0b099570-9f27-4ae2-9384-6b69ea50bd98
---
# ACSD-56415: Performance of [!UICONTROL Partial Price Indexing] is slowed due to `DELETE` query

The ACSD-56415 patch fixes the issue where the performance of the [!UICONTROL Partial Price Indexing] is slowed down due to a `DELETE` query when the database has a lot of partial price data index. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.45 is installed. The patch ID is ACSD-56023. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.5 - 2.4.6-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The performance of [!UICONTROL Partial Price Indexing] is slowed down due to a `DELETE` query when the database has a lot of partial price data index. 

<u>Steps to reproduce</u>:

1. Create *300000 products* and *10 websites* using the large performance profile.
1. Log in to the Admin Panel.
1. Create *10 customer groups*.
1. Execute the below query to add products to the `_cl` table:

    ``
       insert into catalog_product_price_cl (entity_id) select entity_id from catalog_product_entity
    ``

1. Execute the below command to trigger the partial price indexing process:

    ``
       bin/magento cron:run --group=index --bootstrap=standaloneProcessStarted=1
    ``

<u>Expected results</u>:

The SQL query DELETE `main_table` FROM `catalog_product_index_price` is executed quickly.

<u>Actual results</u>:

The SQL query DELETE `main_table` FROM `catalog_product_index_price` is executed very slowly.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
