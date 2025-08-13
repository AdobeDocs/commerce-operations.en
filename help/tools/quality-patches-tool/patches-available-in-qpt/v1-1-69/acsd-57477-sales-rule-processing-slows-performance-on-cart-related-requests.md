---
title: 'ACSD-57477: Sales rule processing slows performance on cart-related requests'
description: Apply the ACSD-57477 patch to fix the Adobe Commerce issue where in a project where lot of product attributes available ex: 1000 attributes, when AddProductsToCart GraphQL operation is executed with variables, Magento tries to load all these product attributes, due to that performance of the AddProductsToCart GraphQL operation slows down.
Check all possible custom product attributes sent through add to cart mutation and accept only valid product attributes.
feature: GraphQL, Shopping Cart
role: Admin, Developer
---

# ACSD-57477: Sales rule processing slows performance on cart-related requests

The ACSD-57477 patch fixes the issue where sales rule processing causes slow performance on cart-related requests. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.69 is installed. The patch ID is ACSD-57477. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.6 - 2.4.6-p11

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Issue where sales rule processing causes slow performance on cart-related requests.

<u>Steps to reproduce</u>:

1) Add 1000 product attributes
 2) Create a cart using below Graphql query
{noformat}
mutation {createEmptyCart}{noformat}
 3) Add a product to cart using below GraphQL query
{noformat}
mutation AddProductsToCart($cartId: String!, $products: [CartItemInput!]!) {
    addProductsToCart(cartId: $cartId, cartItems: $products) {
      cart {
        id
        __typename
      }
      __typename
    }
  }
  {noformat}
Variables
{noformat}
{
  "cartId": "id_here",
  "products": [
    {
      "sku": "product_dynamic_1",
      "parent_sku": "product_dynamic_1",
      "quantity": 1
    }
  ]
}{noformat}
This issue occurs only when we send the parameters as GraphQL variables. If we include the parameters into the GraphQL query itself, then this issue does not occur.
5) Send the same add to cart request after adding parameters into the GraphQL query itself.
{noformat}
mutation {
 addProductsToCart(
   cartId: "id_here"
   cartItems:  [
    {
      sku: "product_dynamic_1",
      parent_sku: "product_dynamic_1",
      quantity: 1
    }
  ]
 ) {
   cart {
        id
        __typename
      }
      __typename
 }
}{noformat}

<u>Expected results</u>:

The AddProductsToCart Graphql operation performance should not be degraded.

<u>Actual results</u>:

The AddProductsToCart GraphQL operation performance degrades because it loads all product attributes when parameters are sent as variables

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.