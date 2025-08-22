---
title: 'ACSD-67347: Order fails with "Cannot acquire a lock" error when using coupon codes'
description: Apply the ACSD-67347 patch to the Adobe Commerce issue where orders fail with a “Cannot acquire a lock” error when coupon codes contain special characters (for example, BIT/123456) and file locking is enabled.
feature: Checkout, Shopping Cart
role: Admin, Developer
type: Troubleshooting
---

# ACSD-67347: Order fails with *Cannot acquire a lock* error when using coupon codes

The ACSD-67347 patch fixes the issue where orders fail with a *Cannot acquire a lock* error when coupon codes contain special characters (for example, BIT/123456) and file locking is enabled. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.69 is installed. The patch ID is ACSD-67347. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p12

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.5-p11 - 2.4.5-p13

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Orders fail with the *Cannot acquire a lock* error when coupons with special characters are used and file locking is enabled.

<u>Steps to reproduce</u>:

1. Install 2.4-develop.
1. Set the file lock configuration in the `env.php` file:
   
   ```
   'lock' => [
           'provider' => 'file',
           'config' => [
               'path' => '/Users/awijesooriya/sites/acsd15194dev/locks'
           ]
       ],
   ```

1. Create a cart rule with a coupon using the coupon code format: *BIT/123456*.
1. Create a simple product.
1. Add the product to the cart and apply the coupon code.
1. Proceed to checkout and place the order.

<u>Expected results</u>:

Orders are placed successfully because there are no restrictions on creating coupon codes.

<u>Actual results</u>:

The order cannot be placed. The following error appears: *Cannot acquire lock.*

```
File "/Users/test/sites/test/locks/coupon_code_123/abc" cannot be opened Warning!fopen(/Users/test/sites/test/locks/coupon_code_123/abc): Failed to open stream: No such file or directory
```

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
