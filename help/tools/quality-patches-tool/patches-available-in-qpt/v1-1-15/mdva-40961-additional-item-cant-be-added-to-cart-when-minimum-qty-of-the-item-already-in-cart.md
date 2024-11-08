---
title: "MDVA-40961: Additional item can't be added to cart when minimum qty of item is already in cart"
description: The MDVA-40961 patch fixes the issue where an additional item can't be added to the cart when the minimum quantity of the item is already in the cart. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.15 is installed. The patch ID is MDVA-40961. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.
feature: Orders, Shopping Cart
role: Admin
exl-id: b5191919-062d-4ddd-84e2-a4801501724d
---
# MDVA-40961: Additional item can't be added to cart when minimum qty of item is already in cart

The MDVA-40961 patch fixes the issue where an additional item can't be added to the cart when the minimum quantity of the item is already in the cart. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.15 is installed. The patch ID is MDVA-40961. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.3 - 2.4.3-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

An additional item can't be added to the cart when the minimum quantity of the item is already in the cart.

<u>Steps to reproduce</u>:

1. Set a simple product to have more than one **Minimum Qty Allowed in Shopping Cart** (for example, two).
1. Open the product on the Storefront and add two of them to the cart.
1. Stay on the product page and add one more of this product to the cart.

<u>Expected results</u>:

The third product can be added to the cart as it already contains the minimum amount.

<u>Actual results</u>:

You get the following error message: *The fewest you may purchase is 2*.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
