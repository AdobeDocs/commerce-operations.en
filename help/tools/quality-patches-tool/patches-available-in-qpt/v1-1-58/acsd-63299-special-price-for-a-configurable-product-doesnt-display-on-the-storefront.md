---
title: "ACSD-63299: Special price for a configurable product doesn't display on the storefront"
description: Apply the ACSD-63299 patch to fix the Adobe Commerce issue where the special price attribute no longer affects the display of special prices for configurable products.
feature: Catalog Management
Role: Admin, Developer
exl-id: cd1775c5-783e-4ed5-a148-1dae0b7542f8
type: Troubleshooting
---
# ACSD-63299: Special price for a configurable product doesn't display on the storefront

The ACSD-63299 patch fixes the issue where the special price attribute no longer affects the display of special prices for configurable products. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.58 is installed. The patch ID is ACSD-63299. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p8

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

In [!DNL Adobe Commerce], changing the *Used in Product Listing* value for the special price attribute no longer affects how special prices are displayed for configurable products.

<u>Steps to reproduce</u>:

1. Go to **[!UICONTROL Stores]** > *[!UICONTROL Attributes]* > **[!UICONTROL Products]**. 
1. Find the ***[!UICONTROL special_price]*** attribute and navigate to **[!UICONTROL Storefront Properties]**.
1. Change ***[!UICONTROL Used in Product Listing]*** to ***[!UICONTROL No]***.
1. Create a configurable product with one child:
    * Name and SKU: Test
    * Price: $159.00
    * Generate option based on color. Add a new color: Blue
    * Save
1. Open the child product and follow these steps:
    * Set a special price to $99.90 in **[!UICONTROL Advanced Pricing]**
    * Change [!UICONTROL Visibility] to **[!UICONTROL Catalog, Search]**.
1. Open the simple product page and confirm that the special price is visible.
1. Open the configurable product page. 
1. Select the blue product.

<u>Expected results</u>:

Special price is visible in the same way as it is for the simple product.

<u>Actual results</u>:

1. The full price is displayed when a configurable product is selected.
1. There's a mismatch between the sections *As low as...* ($99.90) and the actual price ($99.90 + $59.10 = $159.00).

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
