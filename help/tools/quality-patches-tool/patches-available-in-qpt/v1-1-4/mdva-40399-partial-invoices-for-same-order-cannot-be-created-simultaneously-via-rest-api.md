---
title: "MDVA-40399: Partial invoices for same order can't be created simultaneously via API"
description: The MDVA-40399 patch fixes the issue where partial invoices for the same order cannot be created simultaneously via Rest API. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.4 is installed. The patch ID is MDVA-40399. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.
feature: REST, Invoices, Orders
role: Admin
exl-id: aa400a15-57b9-4f80-a49f-f4680b7e4705
---
# MDVA-40399: Partial invoices for same order can't be created simultaneously via API

The MDVA-40399 patch fixes the issue where partial invoices for the same order cannot be created simultaneously via Rest API. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.4 is installed. The patch ID is MDVA-40399. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods) 2.4.2-p1

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.4.2 &ndash;  2.4.3-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

Partial invoices for the same orders cannot be created simultaneously using Rest API.

<u>Prerequisites</u>:

A configurable product with at least two variations.

<u>Steps to reproduce</u>:

1. Add both variants of the configurable product to the cart.
1. Place the order.
1. Create two invoices simultaneously for the order via the Rest API.

<u>Expected results</u>:

* Both invoices must be created successfully.
* `qty_invoiced` should be updated for both invoices in the `sales_order_item` table.
* Both products should have invoiced quantity.

<u>Actual results</u>:

* Both invoices are created successfully.
* `qty_invoiced` is not updated against one of the invoices in the `sales_order_item` table.
* In the Admin's **Order View** page, the invoices quantity is displayed only for one product.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to the [Patches available in QPT](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) section.
