---
title: Product cart best practices
description: Learn how to mitigate Adobe Commerce performance issues by limiting the number of products in a cart.
role: User
feature: Best Practices
feature-set: Commerce
---

# Best practices for product cart management

In Adobe Commerce and Magento Open Source, we recommend that a cart contain a maximum of 100 products.

The expected performance based on cart item limits is:

- Up to **100** products in a cart—the product works, meeting performance targets for response time.
- Up to **300** products in a cart—the product works, but response time increases above targets.
- Above **500** products in a cart—the cart and checkout flows are not guaranteed to work

## Affected products and versions

[All supported versions](../../../release/versions.md) of:

- Adobe Commerce on cloud infrastructure
- Adobe Commerce on-premises

## Reduce number of cart items

Use the following strategies to manage the number of cart items 

- Split orders into several smaller orders with a smaller number of rows by leveraging the [!UICONTROL Add Item by SKU] feature.
- Only add the custom logic and cart customization required to load a list of items.

## Additional information

- [Configuring Product Options](https://docs.magento.com/user-guide/catalog/inventory-product-stock-options.html) in our user guide.<br>
- [Shopping Assistance > Managing a Shopping Cart](https://docs.magento.com/user-guide/sales/shopping-assisted-cart-manage.html#method-2-add-item-by-sku) in our user guide.
