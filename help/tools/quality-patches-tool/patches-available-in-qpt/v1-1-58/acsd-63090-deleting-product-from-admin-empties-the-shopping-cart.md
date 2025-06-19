---
title: 'ACSD-63090: Deleting a product from Admin empties the shopping cart'
description: Apply the ACSD-63090 patch to fix the Adobe Commerce issue where a customer's shopping cart items disappeared as a result of a product being deleted after it was added to the shopping cart.
feature: Shopping Cart, Quotes
role: Admin, Developer
exl-id: c07778cb-390f-4202-9539-7bb159e4b714
type: Troubleshooting
---
# ACSD-63090: Deleting a product from Admin empties the shopping cart

The ACSD-63090 patch resolves the issue where a customer's shopping cart items disappeared as a result of a product being deleted from Admin, after it was added to the shopping cart. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.58 is installed. The patch ID is ACSD-63090. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p8

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Shopping cart items disappear when a product is deleted after being added to the shopping cart.

<u>Steps to reproduce</u>:

1. Create a configurable product with two child products.
1. Log in as a registered customer.
1. Add both child products to the cart.
1. Log out of the account.
1. Delete one of the child products from the catalog.
1. Update the price of the other child product using the API.

<u>Expected results</u>:

The remaining product is displayed in the cart, and the existing quote is updated in the `quote` database table.

<u>Actual results</u>:

* The mini cart is empty.
* A new quote record is generated in the `quote` database table.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
