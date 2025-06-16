---
title: 'MDVA-43605: Order data returns negative values for row totals when using Rest API'
description: The MDVA-43605 patch fixes the issue where the order data returns negative values for row totals when using Rest API. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.14 is installed. The patch ID is MDVA-43605. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.
feature: REST, Orders
role: Admin
exl-id: f27439a6-eeee-4176-9ac9-98220752db3f
---
# MDVA-43605: Order data returns negative values for row totals when using Rest API

The MDVA-43605 patch fixes the issue where the order data returns negative values for row totals when using Rest API. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.14 is installed. The patch ID is MDVA-43605. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.1 - 2.4.4

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

The order data returns negative values for row totals when using Rest API.

<u>Steps to reproduce</u>:

1. Enable free shipping.
1. Navigate to **Configuration** > **Catalog** > **Price** > and set Catalog Price Scope = Website.
1. Navigate to **Configuration** > **Sales** > **Tax** and update:
    * Tax Class For Shipping = Taxable Goods
    * Calculation Settings:
        * Catalog Price = Including Tax
        * Shipping Price = Including Price
        * Applying Discount On Prices = Including Tax
    * Price Display Settings: Including Tax (all fields)
    * Shopping Cart Display Settings: Including Tax (all fields)
    * Orders, Invoices, Credit Memos:
        * Display shipping Amount = Including Tax
1. Create a tax rate for US (State = '*'), Rate Percent = 24.00
1. Create a Tax Rule with the Tax Rate above.
1. Create a cart price rule with a specific coupon, and Discount = $50 of the Fixed amount for the whole cart.
1. Create four products with the following prices: $8.90, $5.90, $6.90, and $5.95.
1. Create an admin order including four of these products using the coupon code created in the previous step. Use the free shipping.
1. Payment should not be required as the coupon code covers the cart total.
1. Retrieve the order that was just created via Rest API endpoint:

    ```json
    GET rest/V1/orders/1
    ```

<u>Expected results</u>:

The values of `base_row_total` and `base_row_total_incl_tax` in the response are zero.

<u>Actual results</u>:

The `base_row_total` and `base_row_total_incl_tax` fields in the response have negative values.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
