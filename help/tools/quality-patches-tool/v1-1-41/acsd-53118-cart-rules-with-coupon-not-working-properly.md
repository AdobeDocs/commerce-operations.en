---
title: 'ACSD-53118: Cart rules with coupon not working properly'
description: Apply the ACSD-53118 patch to fix the Adobe Commerce issue where the cart price rule is applied using a coupon code while the product in the cart has an empty matching attribute.
feature: Shopping Cart, Price Rules
role: Admin, Developer
exl-id: a660ddb3-03fc-4460-b2a8-8e851f57e7a9
---
# ACSD-53118: Cart rules with coupon not working properly

The ACSD-53118 patch fixes the issue where the cart price rule is applied using a coupon code while the product in the cart has an empty matching attribute. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.41 is installed. The patch ID is ACSD-53118. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.0 - 2.4.6-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Cart price rule is applied using a coupon code while the product in the cart has an empty matching attribute. 

<u>Steps to reproduce</u>:

1. Create a price attribute and add it to the attribute set. Make the attribute usable in promo rule conditions.
1. Create a product and leave the new attribute empty.
1. Create a cart price rule with a specific coupon and the following condition:

    * If an item is FOUND in the cart with ALL of these conditions true: Attribute1 is 0.

1. Add the product created in Step 2 to the cart.
1. Use the coupon code for the cart rule created in Step 3.

<u>Expected results</u>:

Discount is not applied to the shopping cart.

<u>Actual results</u>:

Discount is applied to the shopping cart.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
