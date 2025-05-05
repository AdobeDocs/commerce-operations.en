---
title: 'MDVA-32776: Stock status not updated with order placement'
description: The MDVA-32776 patch fixes the issue where the stock status is not updated when an order is placed but not shipped. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.6 is installed. The patch ID is MDVA-32776. Please note that the issue was fixed in Adobe Commerce 2.4.2.
feature: Orders
role: Admin
exl-id: 6f872c72-c96f-4c23-b6df-44e3da3a81c2
---
# MDVA-32776: Stock status not updated with order placement

The MDVA-32776 patch fixes the issue where the stock status is not updated when an order is placed but not shipped. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.6 is installed. The patch ID is MDVA-32776. Please note that the issue was fixed in Adobe Commerce 2.4.2.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods) 2.4.0

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.4.0 - 2.4.1-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

The stock status is not updated when an order is placed but not shipped.

<u>Prerequisites</u>:

1. Inventory module is installed.
1. Display Out-of-Stock Products is set to *Yes*.

   To set, go to **Stores** > **Configuration** > **Catalog** > **Inventory** > **Display Out-of-Stock Products** = *Yes*.

<u>Steps to reproduce</u>:

1. Create two simple products with qty = 11 and 22.
1. Create a grouped product using the simple products created in step one.
1. Add grouped products to the cart by setting one of the product qty to 11 and making the other simple product go out of stock.
1. Complete the checkout and place the order.

<u>Expected results</u>:

Grouped products display `out-of-stock` labels when associated simple products go out of stock.

<u>Actual results</u>:

1. The simple product with qty = 11 shows out of stock.
1. The grouped product does not show an *out-of-stock* message for the product with qty = 11. Though, adding this product to the cart gives an *out-of-stock* error.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to the [Patches available in QPT](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) section.
