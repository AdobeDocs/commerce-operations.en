---
title: 'ACSD-65913: [!DNL OpenSearch] throws an illegal_argument_exception for categories with products having the same price'
description: Apply the ACSD-65913 patch to fix the Adobe Commerce issue where [!DNL Opensearch] is throwing an illegal_argument_exception ("[from] parameter cannot be negative") on the categories containing all products with the same price.
feature: Search
role: Admin, Developer
type: Troubleshooting
exl-id: 984db32e-1a0d-4e0a-a83b-7fe909226ed3
---
# ACSD-65913: [!DNL OpenSearch] throws an `illegal_argument_exception` for categories with products having the same price

The ACSD-65913 patch fixes the issue where [!DNL OpenSearch] threw an `illegal_argument_exception` for categories with products having the same price. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.66 is installed. The patch ID is ACSD-65913. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p5

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.7 - 2.4.8

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

[!DNL OpenSearch] throws an `illegal_argument_exception` (*[from] parameter cannot be negative*) when loading categories in which all products shared the same price.

<u>Steps to reproduce</u>:

1. Install [!DNL OpenSearch] version 2.19.1 and set it as the default search engine.
1. Configure the **[!UICONTROL Price]** product attribute to be visible in Layered Navigation:
    1. **[!UICONTROL Visible in Advanced Search]**: *Yes*
    1. **[!UICONTROL Comparable on Storefront]**: *Yes*
    1. **[!UICONTROL Use in Layered Navigation]**: *Filterable (with results)*
1. Go to **[!UICONTROL Stores]** > **[!UICONTROL Configuration]** > **[!UICONTROL Catalog]** > **[!UICONTROL Catalog]** > **[!UICONTROL Layered Navigation]**. Set **[!UICONTROL Price Navigation Step Calculation]** to *Automatic (equalize product counts)*.
1. Create a category with six products that all have the same price:
    1. SKU: product_super_0-1-1-1, Price: $150
    1. SKU: product_super_0-1-1, Price: $48
    1. SKU: product_super_0-1, Price: $48
    1. SKU: product_super_0, Price: $48
    1. SKU: product_super_0-1-1-1-1-1-1-1-1-1-1-1-1-1, Price: $48
    1. SKU: product_super_0-1-1-1-1-1-1-1-1-1-1, Price: $48
1. Run the following command:
    `bin/magento indexer:reindex`
1. Open the category page. You'll see an error:
    *[from] parameter cannot be negative, found [-1]*

<u>Expected results</u>:

[!DNL OpenSearch] should not throw an `illegal_argument_exception` when all products in a category have the same price.

<u>Actual results</u>:

* [!DNL OpenSearch] throws an `illegal_argument_exception` with the message:
    *[from] parameter cannot be negative, found [-1]*

* The `var/log/exception.log` file contains:

    ```
    [2025-05-14T22:39:33.595272+00:00] report.CRITICAL: [!DNL OpenSearch]\Common\Exceptions\BadRequest400Exception: {"error":{"root_cause":[{"type":"illegal_argument_exception","reason":"[from] parameter cannot be negative, found [-1]"}],"type":"illegal_argument_exception","reason":"[from] parameter cannot be negative, found [-1]"},"status":400}
    ```

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
