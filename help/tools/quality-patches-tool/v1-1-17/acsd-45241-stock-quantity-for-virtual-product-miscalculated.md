---
title: "ACSD-45241: Virtual product's stock quantity miscalculated"
description: The ACSD-45241 patch fixes the issue where the virtual product's stock quantity is miscalculated after creating a credit memo. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.17 is installed. The patch ID is ACSD-45241. Please note that the issue was fixed in Adobe Commerce 2.4.4.
exl-id: 4be97da9-d399-419a-816e-cf65f15cc3be
feature: Orders, Products
role: Admin
---
# ACSD-45241: Virtual product's stock quantity miscalculated

The ACSD-45241 patch fixes the issue where the virtual product's stock quantity is miscalculated after creating a credit memo. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.17 is installed. The patch ID is ACSD-45241. Please note that the issue was fixed in Adobe Commerce 2.4.4.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.5 - 2.4.4

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://devdocs.magento.com/quality-patches/tool.html#patch-grid). Use the patch ID as a search keyword to locate the patch.

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

* Adobe Commerce or Magento Open Source on-premises: [Software Update Guide > Apply Patches](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching/mqp.html) in our developer documentation.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [Patches available in QPT](https://devdocs.magento.com/quality-patches/tool.html#patch-grid) in our developer documentation.
