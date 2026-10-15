---
title: 'ACSD-53925: Cannot save CMS block with [!UICONTROL Product Carousel]'
description: Apply the ACSD-53925 patch to fix the Adobe Commerce issue where the admin is unable to save a CMS block with Product Carousel when dimensions mode for `catalog_product_price` is set to website.
feature: CMS, Page Builder, Price Indexer, Products
role: Admin, Developer
exl-id: f6d286ab-d904-4f08-8265-99632f74b88a
type: Troubleshooting
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: ddbd0f6e-b569-5a04-8a70-55058777c373
    internal-label: CMS
  - id: 4067ab89-2e97-5de1-8d98-de8318461a8d
    internal-label: Products
  - id: cc250cf1-34eb-4863-80d0-d170d45ea067
    internal-label: Developer tools
  - id: 125c1f49-aefd-5f34-a252-288937f95f6b
    internal-label: Marketing Tools
subfeature_v2:
  - id: ed510963-0b8c-4764-86f6-f3c7735bc334
    internal-label: Page Builder
  - id: b0d35b91-b9b0-5983-b37c-f35bd2650b53
    internal-label: Price Indexer
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
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

    ```text
    [2023-08-18T20:58:14.533374+00:00] report.CRITICAL: PDOException: SQLSTATE[42S02]: Base table or view not found: 1146 Table 'username_dev.catalog_product_index_price_ws0' doesn't exist in /test/lib/internal/Magento/Framework/DB/Statement/Pdo/Mysql.php:90
    ```

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/develop/upgrade/apply-patches) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
