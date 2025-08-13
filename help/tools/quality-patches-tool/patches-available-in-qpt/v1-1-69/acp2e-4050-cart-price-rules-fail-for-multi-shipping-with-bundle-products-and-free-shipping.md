---
title: 'ACP2E-4050: Cart price rules fail for multi-shipping with bundle products and free shipping'
description: Apply the ACP2E-4050 patch to fix the Adobe Commerce issue where Free Shipping is not applied when using Multiple Addresses checkout with specific cart rule conditions and products with specific prices.
feature: Shopping Cart, Shipping/Delivery
role: Admin, Developer
---

# ACP2E-4050: Cart price rules fail for multi-shipping with bundle products and free shipping

The ACP2E-4050 patch fixes the issue where cart price rules fail to apply correctly for multi-shipping products when bundle products and sub-select conditions are used with free shipping enabled. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.69 is installed. The patch ID is ACP2E-4050. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p10

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.5 - 2.4.7-p6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Issue where cart price rules fail to apply correctly for multi-shipping products when bundle products and sub-select conditions are used with free shipping enabled.

<u>Steps to reproduce</u>:

1. Create a customer account with two different addresses.
1. Enable Free Shipping, set Minimum Order Amount = 999999.
1. Create a cart price rule in Admin > Marketing > Cart Price Rules

```
If ALL of these conditions are TRUE:
- Subtotal equals or greater than 50
- Subtotal equals or less than 500
- If total amount equals or greater than 50 for a subselection of items in cart matching ALL of these conditions:
  - Category is 23
```

1. Add these products to the cart in the specified order: Wayfarer Messenger Bag, Olivia 1/4 Zip Light Jacket, Sprite Yoga Companion Kit
1. Open the shopping cart. Make sure you see the Free option for shipping.
1. Click "Check Out with Multiple Addresses"
1. Select a different address for the simple product.
1. Click "Go to Shipping Information"

<u>Expected results</u>:

1. Free shipping should be available for the configurable + bundle product shipment.

<u>Actual results</u>:

1. Free shipping is not available.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.