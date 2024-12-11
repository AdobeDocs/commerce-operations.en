---
title: 'ACSD-62428: Stock status errors in catalog search index'
description: Apply the ACSD-62428 patch to fix the issue where the `is_out_of_stock` value in the catalog search index is incorrectly set when the SKU is not as a searchable attribute.
feature: Inventory, Catalog Management
role: Admin, Developer
---
# ACSD-62428: Stock status errors in catalog search index

The ACSD-62428 patch fixes the issue where `is_out_of_stock` values in the catalog search index is set to an incorrect value when the SKU attribute is not set as searchable. This patch is available with the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.56. The patch ID is ACSD-62428. Please note that the issue was is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods)  2.4.6-p5

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.4.6 - 2.4.6-p8

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The `is_out_of_stock` value in the catalog search index is set to an incorrect value when the SKU is not configured as a searchable attribute, leading to inaccurate stock representation.

<u>Steps to reproduce</u>:

1. Create a custom [!UICONTROL Source] and custom [!UICONTROL Stock].
1. Create three simple products and assign their inventory to the custom [!UICONTROL Source]. Assign these products to a category.
1. Set the *[!UICONTROL Inventory (MSI) Indexer]* to *[!UICONTROL Update on Save]* for easier replication.
1. Set the [!UICONTROL Source Item Status] to [!UICONTROL In Stock] and assign a  [!UICONTROL Quantity].
1. Save the product.
1. Navigate to **[!UICONTROL Stores]** > **[!UICONTROL Attributes]** > **[!UICONTROL Product]**, and open the **[!UICONTROL SKU]** attribute.
1. Set  *[!UICONTROL Use In]* to *[!UICONTROL No]*.
1. Change the product quantity (make sure it is not set to 0).
1. Save the product.

<u>Expected results</u>:

The `is_out_of_stock` value accurately reflects the product's stock status, even when the SKU is not a searchable attribute.

<u>Actual results</u>:

The `is_out_of_stock` value is incorrectly set to 1, and the SKU attribute is absent in the indexed data.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
