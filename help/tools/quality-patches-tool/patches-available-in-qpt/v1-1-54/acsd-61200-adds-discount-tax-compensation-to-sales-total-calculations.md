---
title: "ACSD-61200: Adds discount tax compensation to sales total calculations"
description: Apply the ACSD-61200 patch to fix the Adobe Commerce issue where *[!UICONTROL Discount Tax Compensation Amount]* and *[!UICONTROL Shipping Discount Tax Compensation Amount]* are missing from sales total calculations, causing discrepancies between sales order data and coupon report data.
feature: Reporting, Taxes
role: Admin, Developer
---
# ACSD-61200: Adds discount tax compensation to sales total calculations

The ACSD-61200 patch fixes the issue where *[!UICONTROL Discount Tax Compensation Amount]* and *[!UICONTROL Shipping Discount Tax Compensation Amount]* are missing from *[!UICONTROL Total Amount]* and *[!UICONTROL Total Amount Actual]* calculations, resulting in discrepancies between sales order data and coupon report data. Please note that the issue is scheduled to be fixed in Adobe Commerce version 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

- Adobe Commerce (all deployment methods) 2.4.6

**Compatible with Adobe Commerce versions:**

- Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Inaccuracies in the sales order and coupon report data due to missing [!UICONTROL Discount Tax Compensation Amount] and [!UICONTROL Shipping Discount Tax Compensation Amount] in total amount calculations.

<u>Steps to reproduce</u>:

1. Create a [!UICONTROL Tax Zone] and a [!UICONTROL Tax Rule].
1. Set the following tax configurations:
    - Tax Class for Shipping = Taxable Goods
    - Catalog Prices = Including Tax
    - Shipping Prices = Including Tax
    - Apply Discount on Prices = Including Tax
    - Display Product Prices in Catalog = Including Tax
    - Display Shipping Prices = Including Tax
1. Update the following display settings for Orders, Invoices, and Credit memos:
    - Display Prices = Including Tax
    - Display Subtotal = Including Tax
    - Display Shipping Amount = Including Tax
1. Create a [!UICONTROL Cart Price Rule] with a coupon for a 10% discount.
1. Complete an order using the coupon and generate an invoice and shipment.
1. Go to [!UICONTROL Reports] > [!UICONTROL Sales] > [!UICONTROL Coupons] and generate a report.
1. Compare the order summary data to the report.

<u>Expected results</u>:

The [!UICONTROL Total Amount] and [!UICONTROL Total Amount Actual] values should include both [!UICONTROL Discount Tax Compensation Amount] and [!UICONTROL Shipping Discount Tax Compensation Amount], matching the order summary with report data.

<u>Actual results</u>:

The sales and coupon report totals do not match because the [!UICONTROL Discount Tax Compensation Amount] and [!UICONTROL Shipping Discount Tax Compensation Amount] are missing from calculations.