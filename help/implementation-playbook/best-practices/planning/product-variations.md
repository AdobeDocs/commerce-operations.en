---
title: Product variations configuration best practices
description: Learn how to optimize Adobe Commerce performance by limiting the number of configured product variations.
role: Admin
feature: Best Practices, Catalog Management
exl-id: a19dd8b4-23b8-498f-be51-a0adfcd12a11
---
# Best practices for configuring Product variations

For best performance, configure a maximum of 50 variations per product. 

## Affected products and versions

[All supported versions](../../../release/versions.md) of:

- Adobe Commerce on cloud infrastructure
- Adobe Commerce on-premises

## Reduce the number of product variations

For best site performance, use the following strategies to reduce the number of product variations:

- Restructure the catalog by distributing the number of variations across different products.
- Remove configurable attribute options that are not in stock.
- Manage variations through alternative features like custom options, categories, related, grouped, and bundle products.

## Potential performance impact

Exceeding the recommended number of product variations can affect site performance in the following ways:

- Long request and rendering times on product details and category pages containing complex products.
- Increased response time to complete Save operations in the Admin.
- Increased time to render the Product Edit form.
- Slow checkout.

## Additional information

- [Create configurable products](https://experienceleague.adobe.com/docs/commerce-admin/catalog/products/types/product-create-configurable.html)
- [Create a product](https://experienceleague.adobe.com/docs/commerce-admin/catalog/products/product-create.html)

- Training—[Manage Catalogs and Products using Adobe Commerce](https://learning.adobe.com/catalog/adobe_commerce/cours000000000098643.html)
