---
title: 'ACSD-53925: Cannot save CMS block with [!UICONTROL Product Carousel]'
description: Apply the ACSD-53925 patch to fix the Adobe Commerce issue where the admin is unable to save a CMS block with Product Carousel when dimensions mode for `catalog_product_price` is set to website.
feature: CMS, Page Builder, Price Indexer, Products
role: Admin, Developer
exl-id: 6ef6d8ff-4ebb-4adb-9fb7-0d4a81a25f50
---
# ACSD-53925: Cannot save CMS block with *[!UICONTROL Product Carousel]*

The ACSD-53925 patch fixes the issue where the admin is unable to save a CMS block with *[!UICONTROL Product Carousel]* when dimensions mode for `catalog_product_price` is set to website. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.43 is installed. The patch ID is ACSD-53925. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.2 - 2.4.6-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Admin is unable to save a CMS block with *[!UICONTROL Product Carousel]* when dimensions mode for `catalog_product_price` is set to website.

<u>Steps to reproduce</u>:

1. Create two simple products:
    * simple1 - $10
    * simple2 - $20
1. Create a bundle product '*bundle1-dyn*' with two options based on simple product SKUs.
1. Set dimensions mode for the product price indexer:

    `bin/magento indexer:set-dimensions-mode catalog_product_price website`

1. Go to **[!UICONTROL Content]** > **[!UICONTROL Blocks]**, and create a new CMS block.
1. Edit the content using [!DNL Page Builder]:
    * Add a *[!UICONTROL Row]* element
    * Add a *[!UICONTROL Products]* element
    * Select *[!UICONTROL Product Carousel]*
    * Enter product SKU - *bundle1-dyn*
1. Save the CMS block.

<u>Expected results</u>:

User is able to add a product carousel without errors.

<u>Actual results</u>:

* A message is thrown in the UI: *We're sorry, an error has occurred while generating this content* 
* `var/log/exception.log` contains the following error:

    ```
    [2023-08-18T20:58:14.533374+00:00] report.CRITICAL: PDOException: SQLSTATE[42S02]: Base table or view not found: 1146 Table 'username_dev.catalog_product_index_price_ws0' doesn't exist in /test/lib/internal/Magento/Framework/DB/Statement/Pdo/Mysql.php:90
    ```

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
