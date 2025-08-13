---
title: 'ACSD-58108: Missing join table name causes SQL errors in order grid custom module extension'
description: Apply the ACSD-58108 patch to fix the Adobe Commerce addFilterToMap function is not working for certain columns when after joining the [sales_order_item] table to the order grid, resulting in an error while filtering.
The joining table name was missing in the original fetching table, which created an issue with the custom module extension SQL of order grid.
feature: Orders, System
role: Admin, Developer
---

# ACSD-58108: Missing join table name causes SQL errors in order grid custom module extension

The ACSD-58108 patch fixes the issue where the missing joining table name in the original fetching table caused errors with custom module extension SQL in the order grid. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.69 is installed. The patch ID is ACSD-58108. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.5.0.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.6 - 2.4.7-p6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Issue where the missing joining table name in the original fetching table caused errors with custom module extension SQL in the order grid.

<u>Steps to reproduce</u>:

01. Install 2.4-develop instance.
02. Create an order.
03. Install a custom module with SQL extension.
04. Go to the sales order grid in the backend.
05. Apply [ Purchase Date ] filter and wait for the result.
06. Apply [ Product SKU ] filter.

<u>Expected results</u>:

No errors should occur when filtering orders from the order grid.

<u>Actual results</u>:

An error occurs while filtering orders from the order grid.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.