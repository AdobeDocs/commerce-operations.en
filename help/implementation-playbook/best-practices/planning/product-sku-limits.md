---
title: Product limits best practices
description: Learn best practices for configuring product Stock Keeping Units (SKUs) to maximize site performance
role: Admin
feature: Best Practices
feature-set: Commerce
---

# Best practices for product SKU configuration

To maximize performance, the recommended maximum for effective product Stocking Keeping Units (SKUs) is 10 million. This effective product maximum is calculated as:

`Effective SKU = N\[SKUs\] * Stores/Websites * Customer Groups`

Having more than the maximum number of effective SKUs slows down product data retrieval and increases the time to complete Admin operations.

## Affected products and versions

[All supported versions](../../../release/versions.md) of:

- Adobe Commerce on cloud infrastructure
- Adobe Commerce on-premises

## Reduce the number of products

Use the following strategies to reduce the number of products (SKUs):

- Minimize multipliers—
  - Moving stores or websites reduces the multiplier. If you have 50,000 SKUs, ten Websites, and ten Customer Groups, the Effective Number of SKUs is 5 million. Removing five Customer Groups reduces the Effective SKUs to 2.5 million.
  - Use alternative product features for custom pricing to replace shared catalog and customer groups multipliers.
- Restructure the catalog—
  - Reduce the number of products assigned to categories.
  - Decrease the number of SKUs by decreasing the number of stores, websites, customer groups, or number of products.
- Provide more product variations by using custom options instead of creating separate products.
- Deactivate or remove unused system components like modules. (See  [Uninstall modules](https://devdocs.magento.com/guides/v2.4/install-gde/install/cli/install-cli-uninstall-mods.html).)
- Manage products in an external Platform Management System (PMS).

## Additional information

- [Create a product](https://experienceleague.adobe.com/docs/commerce-admin/catalog/products/product-create.html)
- [Product assignments](https://experienceleague.adobe.com/docs/commerce-admin/catalog/categories/products-in-category/categories-product-assignments.html)
- Cloud infrastructure: [Setup multiple websites and stores](https://devdocs.magento.com/cloud/project/project-multi-sites.html) 
- On-premises: [Multiple websites or stores](../../../configuration/multi-sites/ms-overview.md)
- [Adobe Commerce on cloud infrastructure: Best Practices for store configuration](https://devdocs.magento.com/cloud/configure/configure-best-practices.html)
