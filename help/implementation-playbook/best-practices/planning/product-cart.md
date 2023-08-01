---
title: Product cart best practices
description: Learn how to optimize Adobe Commerce performance by limiting the number of products in a cart.
role: User
feature: Best Practices, Shopping Cart
exl-id: 7ea5acc2-f6b2-4244-8c07-c71fd54a18a0
---
# Best practices for product cart management

For best performance, use the following guidelines to manage cart limits for Adobe Commerce and Magento Open Source:

- For versions 2.3.x - 2.4.2, allow a maximum of 100 products in a cart.
- For versions 2.4.3 and later, enhancement to sales rules capabilities increased the cart maximum to 750.


For versions 2.3.x - 2.4.2, the expected performance based on cart item limits is:

- Up to **100** products in a cart—the product works, meeting performance targets for response time.
- Up to **300** products in a cart—the product works, but response time increases above targets.
- Above **500** products in a cart—the cart and checkout flows are not guaranteed to work

## Affected products and versions

[All supported versions](../../../release/versions.md) of:

- Adobe Commerce on cloud infrastructure
- Adobe Commerce on-premises

## Reduce number of cart items

Use the following strategies to manage the number of cart items 

- Split orders into several smaller orders with a smaller number of rows by using the [!UICONTROL Add Item by SKU] feature.
- Only add the custom logic and cart customization required to load a list of items.

## Potential performance impacts

Having more than the recommended maximum number of products in the cart can affect site performance in the following ways:

- Increased response time for data retrieval operations, validation of cart items, checks for applying price rules, and tax and total calculations.
- Increased response time for minicart rendering including rendering of cart views, checkout flow, and execution.
- Increased time loading time for all site pages where the minicart is present.

## Additional information

- [Configure Product Options](https://experienceleague.adobe.com/docs/commerce-admin/inventory/configuration/product-options.html)
- [Manage a shopping cart](https://experienceleague.adobe.com/docs/commerce-admin/stores-sales/point-of-purchase/assist/shopping-assisted-cart-manage.html)
