---
title: 'ACSD-63574: Adding [!UICONTROL Bundle Product] listing to block via [!DNL Page Builder] results in error'
description: Apply the ACSD-63574 patch to fix the Adobe Commerce issue where adding **[!UICONTROL Bundle Product]** with `Checkbox` or `Multi Select` options to a block via [!DNL Page Builder] results in an error.
feature: Page Builder, Page Content
role: Admin, Developer
exl-id: bb56c0c2-e094-4173-8260-da154df79748
---
# ACSD-63574: Adding [!UICONTROL Bundle Product] listing to block via [!DNL Page Builder] results in error

The ACSD-63574 patch fixes the issue where adding **[!UICONTROL Bundle Product]** with `Checkbox` or `Multi Select` options to a block via [!DNL Page Builder] results in an error. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.59 is installed. The patch ID is ACSD-63574. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods)  2.4.4-p10

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.4.4 - 2.4.4-p11

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

When adding **[!UICONTROL Bundle Product]** to a block using [!DNL Page Builder], the product widget preview breaks and shows the error message *We're sorry, an error has occurred while generating this content*. This issue occurs specifically when the bundle product includes `Checkbox` or `Multi Select` option types and `indexer dimension mode` is set to `website_and_customer_group`. The exception log shows the following error:

    ```
    report.CRITICAL: PDOException: SQLSTATE[42S02]: Base table or view not found: 1146 Table 'db_name.catalog_product_index_price_cg0_ws0' doesn't exist in /home/vendor/magento/framework/DB/Statement/Pdo/Mysql.php:90
    ```

<u>Steps to reproduce</u>:

1. Go to **[!UICONTROL Stores]** > *[!UICONTROL Settings]* > **[!UICONTROL Configuration]**.
1. In the left panel, expand **[!UICONTROL Catalog]** and select **[!UICONTROL Catalog]** from the options below.
1. Scroll down to the **[!UICONTROL Price]** section and set **[!UICONTROL Catalog Price Scope]** to **[!UICONTROL Global]**.
1. Set `Indexer dimension mode` to `website_and_customer_group` using below command:

    `bin/magento indexer:set-dimensions-mode catalog_product_price website_and_customer_group`

1. Create a **[!UICONTROL Bundle Product]** with a bundle option type `Checkbox` or `Multi Select`, and assign the product to a category.
1. Go to **[!UICONTROL Content]** > **[!UICONTROL Blocks]** > **[!UICONTROL Edit Content with Page Builder]**.
1. Select the category to which the created product is assigned and try to **[!UICONTROL Save]**.

<u>Expected results</u>:

Product added without errors.

<u>Actual results</u>:

Unable to add a product through [!DNL Page Builder] when the **[!UICONTROL Bundle Product]** option type is `Checkbox` or `Multi Select`, and `indexer dimension mode` is set to  `website_and_customer_group`. It throws the error: *We're sorry, an error has occurred while generating this content*.


## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.


## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
