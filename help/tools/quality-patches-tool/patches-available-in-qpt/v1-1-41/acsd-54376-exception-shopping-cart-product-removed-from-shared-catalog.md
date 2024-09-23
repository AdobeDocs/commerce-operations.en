---
title: 'ACSD-54376: Exception in shopping cart when product removed from [!UICONTROL shared catalog]'
description: Apply the ACSD-54376 patch to fix the Adobe Commerce issue where an exception happens in the shopping cart when a product is removed from the [!UICONTROL shared catalog] after being added to the cart.
feature: Shopping Cart, B2B
role: Admin, Developer
exl-id: a1e5c084-532f-49e8-ab87-6674b44218e8
---
# ACSD-54376: Exception in shopping cart when product removed from [!UICONTROL shared catalog]

The ACSD-54376 patch fixes the issue where an exception happens in the shopping cart when a product is removed from the [!UICONTROL shared catalog] after being added to the cart. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.41 is installed. The patch ID is ACSD-54376. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.2 - 2.4.6-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

An exception happens in the shopping cart when a product is removed from the [!UICONTROL shared catalog] after being added to the cart.

<u>Steps to reproduce</u>:

1. Install Adobe Commerce with B2B.
1. Enable [!UICONTROL shared catalog].
1. Create a product and assign it to the default [!UICONTROL shared catalog].
1. Add a product to the cart from the storefront.
1. Remove the product from the [!UICONTROL shared catalog].
1. Navigate to the checkout page using the mini-cart drop-down.

<u>Expected results</u>:

Exceptions are handled and not displayed to you.

<u>Actual results</u>:

An unhandled exception is displayed on the checkout page.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
