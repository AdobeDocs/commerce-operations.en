---
title: Product attributes best practices
description: Learn how to mitigate Adobe Commerce performance issues by limiting the number of product attributes.
role: User
feature: Best Practices
feature-set: Commerce
---

# Best practices for product attribute configuration

For best performance, do not configure more than the maximum recommended number of product attributes.

The recommended limits are:

- For Adobe Commerce version 2.4.1 and earlier, configure no more than 500 attributes.
- For Adobe Commerce version 2.4.2 and higher, configure up to 1500 product attributes.

## Affected products and versions

[All supported versions](../../../release/versions.md) of:

- Adobe Commerce on cloud infrastructure
- Adobe Commerce on-premises

## Reduce product attributes and options

For best performance when managing products from the Admin and retrieving product data in the storefront, reduce the number of product attributes by: 

- Using different Product templates (attribute sets) for different products
- Leveraging custom options and complex products for variations management
- Minimizing the number of searchable attributes
- Removing product properties that are not used
- Storing and managing non-commerce related attributes in external product management systems (PMS)

## Performance impacts related to product attribute configuration

Configuring many product attributes increases the product template size for each product (EAV structure) and the amount of data that must be retrieved. This increase affects performance in the following ways:

- Increase in SQL queries traffic related to EAV data retrieval and the amount of data processed which results in decreased DB throughput
- Significant increase in the size of Adobe Commerce indexes and the full-text search index
- Reaching hard MySQL limits when building a FLAT index for oversized product templates and inability to use it

Increases in product data and index sizes can potentially impact site performance: 

- Increased response time for most storefront scenarios related to catalog browsing, search (quick and advanced), and layered navigation

- Product management operations in the Admin slow significantly which can lead to timeouts

- Product Mass Actions functionality can be blocked

- Index re-build time for mid- and large-sized catalogs cannot be performed on a daily basis due to long execution times.

## Additional information

- [Customization tutorials > Customize product creation form](https://developer.adobe.com/commerce/php/tutorials/admin/custom-product-creation-form/)
