---
title: Product limits best practices
description: Learn best practices for configuring product Stock Keeping Units (SKUs) to maximize performance
role: User
feature: Best Practices
feature-set: Commerce
---

# Best practices for product SKU configuration

To maximize performance, configure a maximum of 10 million product Stocking Keeping Units (SKUs). This effective product maximum which is calculated as:

`Effective SKU = N\[SKUs\] * Stores/Websites * Customer Groups`

Having more than the recommended maximum slows down product data retrieval and increases the time to complete Admin operations.

## Affected products and versions

[All supported versions](../../../release/versions.md) of:

- Adobe Commerce on cloud infrastructure
- Adobe Commerce on-premises


## Reduce the number of products

Use the following strategies to reduce the number of products (SKUs):

- Minimize multipliers—Moving stores or websites reduces the multiplier. If you have 50,000 SKUs, ten Websites, and ten Customer Groups, the Effective Number of SKUs is 5 million. Removing five Customer Groups reduces the Effective SKUs to 2.5 million.
- Restructure the catalog by reducing the number of products assigned to categories.
- Use alternative product features for custom pricing (replacement of shared catalog and customer groups multipliers).
- Restructure the catalog to minimize store numbers—Decrease the number of effective SKUs by decreasing the number of stores, websites, and customer groups or number of products.
- Deactivate or remove unused system components like modules. (See  [Uninstall modules](https://devdocs.magento.com/guides/v2.4/install-gde/install/cli/install-cli-uninstall-mods.html).
- Provide more product variations through custom options rather than through unique products.
- Managing products in external Platform Management System (PMS).

## Additional information

[Adobe Commerce on cloud infrastructure: Best Practices for store configuration](https://devdocs.magento.com/cloud/configure/configure-best-practices.html) in our developer documentation
