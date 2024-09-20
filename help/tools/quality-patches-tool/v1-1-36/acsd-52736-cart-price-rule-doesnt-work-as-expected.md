---
title: "ACSD-52736: [!UICONTROL Cart Price Rule] doesn't work as expected"
description: Apply the ACSD-52736 patch to fix the Adobe Commerce issue where a [!UICONTROL Cart Price Rule] that includes the requirements for configurable product quantity does not work as expected.
feature: Shopping Cart, Products
role: Admin, Developer
exl-id: 8403b418-b197-4695-88a8-e322b18cd4ad
---
# ACSD-52736: [!UICONTROL Cart Price Rule] doesn't work as expected

The ACSD-52736 patch fixes the issue where a [!UICONTROL Cart Price Rule] that includes the requirements for configurable product quantity does not work as expected. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.36 is installed. The patch ID is ACSD-52736. Please note that the issue was fixed in Adobe Commerce 2.4.6.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.7 - 2.4.5-p4

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

A [!UICONTROL Cart Price Rule] that includes the requirements for configurable product quantity doesn't work as expected.

<u>Steps to reproduce</u>:

1. Create a cart rule:
    * [!UICONTROL Apply] = Percent of product price discount
    * [!UICONTROL Discount Amount] = 60
    * [!UICONTROL Maximum Qty Discount is Applied to] = 1
    * [!UICONTROL Discount Qty Step (Buy X)] = 1
    * Apply the rule only to the cart items matching the following conditions: Quantity in cart is 1
2. Add a product with [!UICONTROL Qty] = 2, to the cart.
3. Check cart prices.

<u>Expected results</u>:

The rule is not applied because the quantity of the products in the cart is *2*.

<u>Actual results</u>:

The discount is applied.

<u> Additional steps required after the patch installation</u>:

After applying the patch, the cart rule conditions using the *Quantity* attribute must be removed and added again.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
