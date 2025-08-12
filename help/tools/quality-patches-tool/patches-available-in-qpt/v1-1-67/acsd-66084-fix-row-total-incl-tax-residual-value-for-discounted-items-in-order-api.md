---
title: 'ACSD-66084: `row_total_incl_tax` returns near-zero residual value instead of 0.00 for fully discounted items in the order API response'
description: Apply the ACSD-66084 patch to fix the Adobe Commerce issue where `row_total_incl_tax` returned as a near-zero residual value instead of 0.00 for fully discounted items in the order API response.
feature: Orders, REST, Taxes, Payments, Checkout
role: Admin, Developer
type: Troubleshooting
exl-id: 421c6fe6-b6b1-4f33-acb6-fbd4306bcc4c
---
# ACSD-66084: `row_total_incl_tax` returns near-zero residual value instead of 0.00 for fully discounted items in the order API response

The ACSD-66084 patch fixes the issue where `row_total_incl_tax` is returned as a near-zero residual value in the order API response instead of 0.00 for fully discounted items. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.67 is installed. The patch ID is ACSD-66084. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p5

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.5 - 2.4.8-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The `row_total_incl_tax` is returned as a near-zero residual value in the order API response instead of 0.00 for fully discounted items.

<u>Steps to reproduce</u>:

1. Create a product with a price and a special price. Go to **[!UICONTROL Catalog]** > **[!UICONTROL Products]** > Click **[!UICONTROL Add Product]** > set **[!UICONTROL Price]** to $25 and **[!UICONTROL Special Price]** to $16.99 under **[!UICONTROL Advanced Pricing]**.
1. Go to **[!UICONTROL Stores]** > **[!UICONTROL Taxes]** > **[!UICONTROL Tax Zones and Rates]** and add a 20% rate. Then go to **[!UICONTROL Tax Rules]** and create a rule and assign
**[!UICONTROL Taxable Goods]** as the product tax class.
1. Create a sales rule with a 100% discount and a coupon. Go to **[!UICONTROL Marketing]** > **[!UICONTROL Promotions]** > **[!UICONTROL Cart Price Rules]** and add a rule with a 100% discount and then use **[!UICONTROL Specific Coupon]** and enter your code.
1. Go to **[!UICONTROL Stores]** > **[!UICONTROL Settings]** >  **[!UICONTROL Configuration]** > **[!UICONTROL Sales]** > **[!UICONTROL Tax]** > and configure tax settings.
1. Enable free shipping. Go to **[!UICONTROL Stores]** > **[!UICONTROL Settings]**  > **[!UICONTROL Configuration]** > **[!UICONTROL Sales]** > **[!UICONTROL Delivery Methods]** > **[!UICONTROL Free Shipping]**. Set **[!UICONTROL Enabled]** to **[!UICONTROL Yes]** and adjust settings.
1. Go to the product page and select **[!UICONTROL Add to Cart]**. Go to the shopping cart and apply the coupon code.
1. Place the order with the applicable tax zone.
1. Generate an admin token (API) via REST API.
1. Retrieve order details via REST API.
1. Check `row_total_incl_tax` in the response. 

<u>Expected results</u>:

`row_total_incl_tax` should return a currency-appropriate value like `0.00` when the item is fully discounted.

<u>Actual results</u>:

`row_total_incl_tax` returns a near-zero floating point value like `3.5527136788005e-15`, which is not appropriate for currency display.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
