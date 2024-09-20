---
title: 'ACSD-56447: Adding same product to cart via parallel web REST API results in two separate items in cart'
description: Apply the ACSD-56447 patch to fix the Adobe Commerce issue where adding the same product to the cart via parallel web REST API requests results in two separate items in the cart.
feature: Shopping Cart, REST
role: Admin, Developer
exl-id: c63874be-a8a6-4143-adaa-ba3e9e107dd4
---
# ACSD-56447: Adding same product to cart via parallel web REST API results in two separate items in cart

The ACSD-56447 patch fixes the issue where adding the same product to the cart via parallel web REST API requests results in two separate items in the cart. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.45 is installed. The patch ID is ACSD-56447. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.2 - 2.4.6-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Adding the same product to the cart via parallel web REST API requests results in two separate items in the cart.

<u>Steps to reproduce</u>:

1. Generate a customer token for making the REST API calls request using [!DNL Postman].
1. Create a shopping cart for the customer.
1. Use the token generated above to create an empty cart for the customer.
1. Use CURL to make two `AddProductsToCart` requests running in parallel. Follow the instructions in the [Order processing tutorial](https://developer.adobe.com/commerce/webapi/rest/tutorials/orders/) in the developer documentation.

<u>Expected results</u>:

Items with multiple quantities are shown in one line.

<u>Actual results</u>:

The same SKUs are shown in multiple line items. 

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
