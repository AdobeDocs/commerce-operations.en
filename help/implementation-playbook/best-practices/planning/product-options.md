---
title: Product options configuration best practices
description: Optimize Adobe Commerce performance by limiting the number of product options.
role: Admin
feature: Best Practices, Catalogs
exl-id: 7571a163-798a-40be-b26f-4a184bceb809
---
# Product options best practices

For best performance, configure a maximum of 100 product options per product.

## Affected products and versions

[All supported versions](../../../release/versions.md) of:

- Adobe Commerce on cloud infrastructure
- Adobe Commerce on-premises

## Reduce product options

For best site performance, use the following strategies to reduce the number of product options:

- Configure complex products and custom options as a source of product variations.
- Instead of creating global product templates and option containers that apply to all products, use attribute sets to build specific product templates with targeted attributes and options.
- Manage product information through an external Product Management System (PMS).

## Potential performance impact

Configuring many product options increases the amount of data retrieved for each product on all read and write operations resulting in:

- Increased SQL query traffic and heavier `JOIN` operations increase database throughput.
- Increased size for Adobe Commerce indexes and the full-text search index.

The increases listed above potentially affect site performance in the following ways:

- Longer response time for most storefront scenarios related to products containing many options in attributes.
- Significant increases in the time required to complete Product management operations in Admin that can lead to timeouts, especially for scenarios related to attributes list and tree retrieval including promotion rules management.
- Can block bulk actions that complete asynchronous mass operations like import and export and assigning custom prices to multiple products in a shared catalog.

## Additional information

- [Create a product](https://experienceleague.adobe.com/docs/commerce-admin/catalog/products/product-create.html)
- [Best practices for product attribute configuration](product-attributes-and-options.md)
- [Bulk Actions log](https://docs.magento.com/user-guide/system/action-log-bulk-actions.html)
- [Inventory mass actions API](https://developer.adobe.com/commerce/webapi/rest/inventory/bulk-inventory/)
- [Training: Manage Catalogs and Products using Adobe Commerce](https://learning.adobe.com/catalog/adobe_commerce/cours000000000098643.html)
