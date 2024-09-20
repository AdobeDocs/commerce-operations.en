---
title: 'ACSD-55610: Partially canceled order has incorrect discount amount'
description: Apply the ACSD-55610 patch to fix the Adobe Commerce issue where a partially canceled order has an incorrect discount amount.
feature: Invoices, Orders, Price Rules, Shopping Cart
role: Admin, Developer
exl-id: f4cca4fa-dc04-4c86-9176-c648b1d0e732
---
# ACSD-55610: Partially canceled order has incorrect discount amount

The ACSD-55610 patch fixes the issue where a partially canceled order has an incorrect discount amount. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.43 is installed. The patch ID is ACSD-55610. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.6-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

A partially canceled order has an incorrect discount amount.

<u>Steps to reproduce</u>:

1. Create a shopping cart price rule.

    * *[!UICONTROL Rule Name]*: *Winter Sale*
    * *[!UICONTROL Active]* = *Yes*
    * *[!UICONTROL Websites]* = *Main Website*
    * Choose all customer groups.
    * Select a specific coupon.
    * *[!UICONTROL Coupon Code]*: *WINTER10*
    * *[!UICONTROL Conditions]*: *[!UICONTROL If ALL of these conditions are TRUE]*: *Subtotal(Excl. Tax) equals or is greater than 75*
    * Apply *[!UICONTROL Percent of product price discount]*.
    * *[!UICONTROL Discount Amount]*: *10*
    * *[!UICONTROL Discard subsequent rules]*: *Yes*

1. Create three products with prices set to 100.
1. Add the three products to the cart.
1. Apply the coupon.
1. Place the order.
1. Invoice one item of the order and ship it.
1. Cancel the other two items.
1. Check the `base_discount_canceled` column.

<u>Expected results</u>:

The discount amount in `base_discount_cancelled` reflects correctly.

<u>Actual results</u>:

The `base_discount_cancelled` is not correct.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
