---
title: "ACSD-51683: Customizable option can't be added to the cart using GraphQL"
description: Apply the ACSD-51683 patch to fix the Adobe Commerce issue where the customizable option can't be added to the cart using GraphQL.
feature: GraphQL
role: Admin
exl-id: 4de0d8b7-714e-4bbf-8a0d-bb6e0c3aae55
---
# ACSD-51683: Customizable option can't be added to the cart using GraphQL

The ACSD-51683 patch fixes the issue where the customizable option can't be added to the cart using GraphQL. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.35 is installed. The patch ID is ACSD-51683. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.6 - 2.4.6-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The customizable option can't be added to the cart using GraphQL.

<u>Steps to reproduce</u>:

1. Create a simple product with a customizable **Text field** option.
1. [Add to cart](https://developer.adobe.com/commerce/webapi/graphql/tutorials/checkout/add-product-to-cart/) the created product with the required customizable option via GraphQL.
1. Send the [cart](https://developer.adobe.com/commerce/webapi/graphql/schema/cart/queries/cart/) GraphQL request to check the product and its details in the cart.

<u>Expected results</u>

The `Customizable_options` section in the GraphQL response contains the data provided while adding the product to the cart.

<u>Actual results</u>

The `Customizable_options` section in the GraphQL response is empty.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
