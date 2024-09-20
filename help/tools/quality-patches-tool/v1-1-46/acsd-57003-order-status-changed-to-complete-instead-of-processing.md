---
title: 'ACSD-57003: Order status changes to *Complete* instead of changing to *Processing*'
description: Apply the ACSD-57003 patch to fix the Adobe Commerce issue where the order status changes to *Complete* instead of changing to *Processing*.
feature: Orders, Invoices, Shipping/Delivery
role: Admin, Developer
exl-id: c3c59185-c447-46fa-b404-6c4a4a300315
---
# ACSD-57003: Order status changes to *Complete* instead of changing to *Processing*

The ACSD-57003 patch fixes the issue where the order status changes to *Complete* instead of changing to *Processing*. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.46 is installed. The patch ID is ACSD-57003. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.6 - 2.4.6-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The order status changes to *Complete* instead of changing to *Processing* when an order is partially refunded and partially shipped.

<u>Steps to reproduce</u>:

1. Create an order with two configurable products.
1. Invoice all the items.
1. Ship only the first item.
1. Refund/create a credit memo for only the shipped item (*first item*).
1. Check the order status. 

<u>Expected results</u>:

Order status should be in the _Processing_ state.

<u>Actual results</u>:

Order status changes to *Complete* after creating a credit memo for the partially shipped item.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
