---
title: 'ACSD-45754: Reward points not added after applying coupon to cart'
description: The ACSD-45754 patch solves the issue where reward points are not added after applying a coupon to the cart. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.18 is installed. The patch ID is ACSD-45754. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6.
feature: Orders, Rewards, Shopping Cart
role: Admin
exl-id: 02f3bfc4-440b-4d77-adf5-0824d1b21073
type: Troubleshooting
---
# ACSD-45754: Reward points not added after applying coupon to cart

The ACSD-45754 patch solves the issue where reward points are not added after applying a coupon to the cart. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.18 is installed. The patch ID is ACSD-45754. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.3-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.1 - 2.4.5

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

Reward points are not added after applying a coupon to the cart.

<u>Prerequisites</u>:

PayPal payment method is configured.

<u>Steps to reproduce</u>:

1. Create reward point exchange rates by going to **Store** > **Other Settings** > **Reward Exchange Rates**.
1. Create a cart price rule with a coupon code to apply 100 reward points for logged-in customers.
1. Check out a product as a logged-in customer with PayPal and the coupon code.
1. Check the reward point history under the customer account in the admin.

<u>Expected results</u>:

Rewards points are added to the customer according to the price rule.

<u>Actual results</u>:

No reward points are added to the customer.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
