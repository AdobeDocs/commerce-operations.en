---
title: 'ACSD-61200: Fixes discount tax compensation in sales total calculations'
description: Apply the ACSD-61200 patch to fix the Adobe Commerce issue where *[!UICONTROL Discount Tax Compensation Amount]* and *[!UICONTROL Shipping Discount Tax Compensation Amount]* are missing from sales total calculations, causing discrepancies between sales order data and coupon report data.
feature: Reporting, Taxes
role: Admin, Developer
exl-id: eb908827-de29-4b2c-b094-b5db0931cd52
---
# ACSD-61200: Fixes discount tax compensation in sales total calculations

The ACSD-61200 patch fixes the issue where *[!UICONTROL Discount Tax Compensation Amount]* and *[!UICONTROL Shipping Discount Tax Compensation Amount]* are missing from *[!UICONTROL Total Amount]* and *[!UICONTROL Total Amount Actual]* calculations, resulting in discrepancies between sales order data and coupon report data. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.54 is installed. The patch ID is ACSD-61200. Please note that the issue is scheduled to be fixed in Adobe Commerce version 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

- Adobe Commerce (all deployment methods) 2.4.6

**Compatible with Adobe Commerce versions:**

- Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Inaccuracies in the sales order and coupon report data due to missing *[!UICONTROL Discount Tax Compensation Amount]* and *[!UICONTROL Shipping Discount Tax Compensation Amount]* in sales total calculations.

<u>Steps to reproduce</u>:

1. Create a [!UICONTROL Tax Zone] and a [!UICONTROL Tax Rule].
1. Set the following tax configurations:
    - **[!UICONTROL Tax Class for Shipping]** = [!UICONTROL Taxable Goods]
    - **[!UICONTROL Catalog Prices]** = [!UICONTROL Including Tax]
    - **[!UICONTROL Shipping Prices]** = [!UICONTROL Including Tax]
    - **[!UICONTROL Apply Discount on Prices]** = [!UICONTROL Including Tax]
    - **[!UICONTROL Display Product Prices in Catalog]** = [!UICONTROL Including Tax]
    - **[!UICONTROL Display Shipping Prices]** = [!UICONTROL Including Tax]
1. Update the following display settings for Orders, Invoices, and Credit memos:
    - **[!UICONTROL Display Prices]** = [!UICONTROL Including Tax]
    - **[!UICONTROL Display Subtotal]**= [!UICONTROL Including Tax]
    - **[!UICONTROL Display Shipping Amount]** = [!UICONTROL Including Tax]
1. Create a [!UICONTROL Cart Price Rule] with a coupon for a 10% discount.
1. Complete an order using the coupon and generate an invoice and shipment.
1. Go to **[!UICONTROL Reports]** > **[!UICONTROL Sales]** > **[!UICONTROL Coupons]** and generate a report.
1. Compare the data in the order summary to that of the report.

<u>Expected results</u>:

The *[!UICONTROL Total Amount]* and *[!UICONTROL Total Amount Actual]* calculations include both *[!UICONTROL Discount Tax Compensation Amount]* and *[!UICONTROL Shipping Discount Tax Compensation Amount]*, matching the order summary with the report data.

<u>Actual results</u>:

Sales order data and coupon report data do not match because the *[!UICONTROL Discount Tax Compensation Amount]* and *[!UICONTROL Shipping Discount Tax Compensation Amount]* are missing from calculations.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

- Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
- Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

[[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the Tools guide.
