---
title: 'ACSD-57588: Error in region ID processing when shipping to multiple addresses'
description: Apply the ACSD-57588 patch to fix the Adobe Commerce issue where shipping an order to multiple addresses triggers an error during region ID processing.
feature: Orders, Shipping/Delivery
role: Admin, Developer
exl-id: 01a33db3-fdbe-4acd-a617-45fb3aee6f3d
---
# ACSD-57588: Error in region ID processing when shipping to multiple addresses

The ACSD-57588 patch fixes the issue where shipping an order to multiple addresses triggers an error during region ID processing. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.49 is installed. The patch ID is ACSD-57588. Please note that the issue was fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.6 - 2.4.6-p4

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Error triggered during region ID processing when shipping to multiple addresses.

<u>Steps to reproduce</u>:

1. Configure the [!DNL Braintree] payment method.
1. Log in as a customer on the storefront.
1. Add a product to the cart and proceed to view and edit the cart.
1. Add multiple addresses *(For example, UK, US, CA)* during the checkout process and review the order.
1. On the checkout page, select the credit card payment option, enter the necessary credentials, and place the order.

<u>Expected results</u>:

Order can be placed successfully.

<u>Actual results</u>:

The order is not placed.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
