---
title: 'ACSD-53750: "Broken pipe or closed connection" error during multi-threaded catalog_product_price reindex'
description: Apply the ACSD-53750 patch to fix the Adobe Commerce issue where a *Broken pipe or closed connection* error occurs during multi-threaded catalog_product_price reindex.
feature: Products
role: Admin, Developer
exl-id: afb30384-74e7-4857-9aff-8e99f5abc309
---
# ACSD-53750: *Broken pipe or closed connection* error during multi-threaded `catalog_product_price` reindex

The ACSD-53750 patch fixes the issue where a *Broken pipe or closed connection* error occurs during multi-threaded `catalog_product_price` reindex. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.37 is installed. The patch ID is ACSD-53750. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.6-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

*Broken pipe or closed connection* error occurs during multi-threaded `catalog_product_price` reindex.

<u>Steps to reproduce</u>:

1. Configure RabbitMq.
1. Generate sample data using the attached `small.xml` file.
1. Go to **[!UICONTROL Stores]** > **[!UICONTROL Config]** > **[!UICONTROL Catalog]** > **[!UICONTROL Inventory]** > **[!UICONTROL Inventory Indexer Setting]** and set **[!UICONTROL Stock/Source reindex strategy]** = **[!UICONTROL Asynchronous]**.
1. Set the dimension mode for indexes which support that. E.g., `catalog_product_price_website_and_customer_group` or `customer_group`.

    ```
    bin/magento indexer:set-dimensions-mode catalog_product_price customer_group
    ```

1. Run reset of indexers for `catalog_product_price`.

    ```
    bin/magento indexer:reset catalog_product_price
    ```

1. Run the indexer for the reset indexer using multiple threads.

    ```
    MAGE_INDEXER_THREADS_COUNT=10 bin/magento indexer:reindex catalog_product_price
    ```

<u>Expected results</u>:

No errors occur.

<u>Actual results</u>:

The following error is caused by an AMQP connection: *Broken pipe or closed connection*.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
