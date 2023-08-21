---
title: Best practices for product listing pagination
description: Learn how to optimize Adobe Commerce performance by managing the number of products that display on each page of the storefront catalog.
role: User, Admin
feature: Best Practices, Catalog Management
exl-id: 473f23a9-53fb-41a6-9b3a-af7bd1208be0
---
# Best practices for product listing pagination 

For best performance, display a maximum of 48 products per page.

You can configure Adobe Commerce to allow shoppers to view all category products on a single page. If the number of category products significantly exceeds 48 products, update the Catalog configuration for storefront pagination controls.

## Affected products and versions

[All supported versions](../../../release/versions.md) of:

- Adobe Commerce on cloud infrastructure
- Adobe Commerce on-premises

## Update the product listing configuration

If you have more than 48 products in any category, update the storefront catalog configuration to disable the option to **Allow All Products per page**.

After you disable this option, Adobe Commerce uses the product listing storefront pagination controls to manage the number of products that display in storefront components. For instructions, see [Configure pagination controls](https://experienceleague.adobe.com/docs/commerce-admin/catalog/catalog/navigation/navigation-product-listings.html#configure-the-pagination-controls).

## Additional information

- [Configure product listings](https://experienceleague.adobe.com/docs/commerce-admin/catalog/catalog/navigation/navigation-product-listings.html)
