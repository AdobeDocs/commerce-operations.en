---
title: Category configuration best practices
description: Learn best practices to maximize site performance by limiting the number of  categories in the catalog.
role: Admin
feature: Best Practices
feature-set: Commerce
---

# Best practices for category configuration

For best performance, do not configure more than the maximum recommended number of categories for Adobe Commerce sites.

- For Adobe Commerce version 2.4.2 and later, configure a maximum of 6000 categories
- For Adobe Commerce version 2.3.x and 2.4.0 to 2.4.1-p1, configure a maximum of 3000 categories

## Affected products and versions

[All supported versions](../../../release/versions.md) of:

- Adobe Commerce on cloud infrastructure
- Adobe Commerce on-premises

## Reduce the number of products

Use the following strategies to reduce the number of categories:

- Manage unique product features through attributes and custom options
- Remove inactive categories
- Optimizing catalog depth

## Potential performance impacts

If a site has more than the recommended maximum number of categories, site performance can have the following impacts on site performance: 

- Tangible increase in response time for non-cached catalog pages
- Long execution and timeouts while managing categories from the Admin
- Increase in size of corresponding database tables
- Larger index tables increase time required to complete indexing operations for the `[category/product relation index\]`
- Increased processing time to complete categories tree building, menu retrieval, and category rules management operations

## Additional information

- [Categories overview](https://experienceleague.adobe.com/docs/commerce-admin/catalog/categories/categories.html)
- [Product assignments](https://experienceleague.adobe.com/docs/commerce-admin/catalog/categories/products-in-category/categories-product-assignments.html)
- [Adobe Commerce on cloud infrastructure: Best Practices for store configuration](https://devdocs.magento.com/cloud/configure/configure-best-practices.html) in our developer documentation
