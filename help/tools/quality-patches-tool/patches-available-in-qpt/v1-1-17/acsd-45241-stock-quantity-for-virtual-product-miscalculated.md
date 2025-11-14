---
title: "ACSD-45241: Virtual product's stock quantity miscalculated"
description: The ACSD-45241 patch fixes the issue where the virtual product's stock quantity is miscalculated after creating a credit memo. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.17 is installed. The patch ID is ACSD-45241. Please note that the issue was fixed in Adobe Commerce 2.4.4.
feature: Orders, Products
role: Admin
exl-id: 447a84f0-aab4-4bb1-9f06-c056c006cd69
type: Troubleshooting
---
# ACSD-45241: Virtual product's stock quantity miscalculated

The ACSD-45241 patch fixes the issue where the virtual product's stock quantity is miscalculated after creating a credit memo. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.17 is installed. The patch ID is ACSD-45241. Please note that the issue was fixed in Adobe Commerce 2.4.4.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.5 - 2.4.4

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

Stock quantity for a virtual product is miscalculated after creating a credit memo.

<u>Steps to reproduce</u>:

1. Create a configurable product with a virtual product as a child product in the Commerce Admin.
1. Make sure both products created in step one are in stock.
1. Mark the quantity for the virtual product created in step one as 100 and keep the salable quantity 100 as well.
1. Add the product to the shopping cart.
1. Place an order with the virtual product created in step one.
1. Keep the order status as "Pending". No need to process the payment.
1. `order_created` record created in `inventory_reservation`. The virtual product quantity shows 100 with salable quantity as 99.
1. Open the order and go to **Invoice** > **Submit Invoice**.
1. `invoice_created` record created in `inventory_reservation`. The virtual product quantity is now 99, and the salable quantity is also 99.
1. Create a credit memo without selecting **Return to Stock**.

<u>Expected results</u>:

No new record is created in `inventory_reservation`, and the stock quantity for the virtual product is unchanged.

<u>Actual results</u>:

A `creditmemo_created` record is created in `inventory_reservation`, and the virtual product stock quantity is adjusted to 98 with salable quantity as 99.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
