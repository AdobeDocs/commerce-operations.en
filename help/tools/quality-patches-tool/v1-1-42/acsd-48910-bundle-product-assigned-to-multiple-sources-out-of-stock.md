---
title: 'ACSD-48910: Bundled product assigned multiple sources go out of stock after invoice and shipping'
description: Apply the ACSD-48910 patch to fix the Adobe Commerce issue where the bundled product assigned to multiple sources goes out-of-stock after an order is invoiced and shipped, even if it still has a non-zero quantity.
feature: Products, Inventory
role: Admin, Developer
exl-id: 6ac3dedf-1c28-4874-b963-44a429b37983
---
# ACSD-48910: Bundled product assigned multiple sources go out of stock after invoice and shipping

The ACSD-48910 patch fixes the issue where the bundled product assigned to multiple sources goes out of stock after an order is invoiced and shipped, even if it still has a non-zero quantity. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.42 is installed. The patch ID is ACSD-48910. Please note that the issue was fixed in Adobe Commerce 2.4.6.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.5 - 2.4.5-p5

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The bundled product assigned to multiple sources goes out of stock after invoicing and shipping, even if it's still available.

<u>Steps to reproduce</u>:

1. Create two websites.
1. Create two stores/store views (one per website).
1. Create two simple products (qty = 10) and assign them to both stocks and websites.
1. Create a bundled product and add these simple products to it. Assign the bundled product to both websites.
1. Go to the storefront and add the bundled product to the cart.
1. Check out and place the order.
1. From the Admin, invoice and ship the order.

<u>Expected results</u>:

The bundled product stays in stock since we bought only 1 of the 10 items.

<u>Actual results</u>:

The bundled product changes its status to out-of-stock.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
