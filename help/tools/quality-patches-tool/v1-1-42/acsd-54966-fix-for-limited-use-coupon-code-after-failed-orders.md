---
title: 'ACSD-54966: Fix for reusing coupon codes after failed orders'
description: Apply the ACSD-54966 patch to fix the Adobe Commerce issue preventing the reuse of coupon codes limited per promotions and shopping cart following a previously failed order.
feature: Promotions/Events, Shopping Cart, Orders
role: Admin, Developer
exl-id: 931cfe7a-30a3-4a7d-ada5-4e2d7084f3e1
---
# ACSD-54966: Fix for reusing coupon codes after failed orders

The ACSD-54966 patch fixes the issue preventing the reuse of coupon codes limited per customer following a previously failed order. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.42 is installed. The patch ID is ACSD-54966. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.5 - 2.4.6-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

A coupon code, limited for single use per customer, cannot be reused following a failed previous order. 

<u>Steps to reproduce</u>:

1. Set up a cart price rule with *[!UICONTROL Uses per Customer]* = *1*.
1. Proceed to make a purchase using the assigned coupon code.
1. Cancel the order from the admin panel or execute the order with a payment failure.
1. Run the command: `bin/magento queue:consumers:start sales.rule.update.coupon.usage`  
1. Try to place a subsequent order using the same coupon code for the same customer.

<u>Expected results</u>:

After cancelling the order or encountering a payment failure, the customer can successfully reuse the coupon code for a new purchase.

<u>Actual results</u>:

The customer is not able to reuse the coupon code.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
