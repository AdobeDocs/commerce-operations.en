---
title: 'ACSD-55610: Partially canceled order has incorrect discount amount'
description: Apply the ACSD-55610 patch to fix the Adobe Commerce issue where a partially canceled order has an incorrect discount amount.
feature: Invoices, Orders, Price Rules, Shopping Cart
role: Admin, Developer
exl-id: b7b94c9d-e027-4601-837b-d70b7ff8bd2c
type: Troubleshooting
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: 591c578b-908e-5b79-a9d3-931dfe60c24c
    internal-label: Invoices
  - id: 4820f335-ec9f-5611-8fe3-f5b7e3e56967
    internal-label: Orders
  - id: a507b1ed-4937-53da-97ae-57d36bd5b9e0
    internal-label: Price Rules
  - id: df8eaa0e-dd74-553a-8ad5-28129f8e8d3d
    internal-label: Shopping Cart
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
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

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/develop/upgrade/apply-patches) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
