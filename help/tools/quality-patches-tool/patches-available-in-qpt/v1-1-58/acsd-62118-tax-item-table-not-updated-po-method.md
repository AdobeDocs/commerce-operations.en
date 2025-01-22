---
title: 'ACSD-62118: `sales_order_tax_item` table not fully updated for B2B orders placed using the [!UICONTROL Purchase Order] method'
description: Apply the ACSD-62118 patch to fix the Adobe Commerce issue where the `sales_order_tax_item` table isn't fully updated when B2B orders are placed using the [!UICONTROL Purchase Order] method.
feature: Purchase Orders, B2B
role: Admin, Developer
---

# ACSD-62118: `sales_order_tax_item` table not fully updated for B2B orders placed using the [!UICONTROL Purchase Order] method

The ACSD-62118 patch fixes the issue where the `sales_order_tax_item` table doesn't fully update when a B2B order is placed using the *[!UICONTROL Purchase Order]* method. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.58 is installed. The patch ID is ACSD-62118. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.6 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

When B2B orders are placed using the *[!UICONTROL Purchase Order]* method, the `sales_order_tax_item` table is not fully updated. This issue affects tax calculations and order processing. Specifically, the `applied_taxes` array is empty when querying the order via the API, and both `tax_item_amount` and `tax_item_percent` are NULL. 

<u>Steps to reproduce</u>:

1. Add tax rules for both **[!UICONTROL Product]** and **[!UICONTROL Shipping]**.
1. Enable the **[!UICONTROL Purchase Order]** method in the Company settings.
1. Log in as a Company Admin User.
1. Place a **[!UICONTROL Purchase Order]** using an offline payment method.
1. After the [!UICONTROL Purchase Order] is auto-approved and converted to an order, check the tax data in the `sales_order_tax_item` table and through the REST API.

<u>Expected results</u>:

* The `sales_order_tax_item` table should contain `tax_item` data.
* The `applied_taxes` array should display the correct tax information in the API response for purchase orders, similar to other payment methods (e.g., Check/Money Order).

<u>Actual results</u>:

* The `sales_order_tax_item` table does not contain any `tax_item` data.
* The `applied_taxes` and `item_applied_taxes` arrays are empty in the API response for the *[!UICONTROL Purchase Order]*.
* No tax data is displayed when using the *[!UICONTROL Purchase Order]* payment method.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
