---
title: Product options best practices
description: Learn how to ...
role: Admin
feature: Best Practices
---

# Product options best practices

This article provides best practices for product options in Adobe Commerce. Our recommendation is to have not more than 100 options per product, as performance can be affected.

## Affected products and versions

[All supported versions](../../../release/versions.html) of:

* Adobe Commerce on cloud infrastructure
* Adobe Commerce on-premises

## Reduce options

Many product options leads to an increase in data retrieved for each product on all read and write operations resulting in:

* Increase in SQL queries traffic and heavier `JOIN` operations affecting database throughput.
* Increase of Adobe Commerce indexes size and full-text search index.

The increases listed above can cause these potential site impacts:

* Response time will be increased for most storefront scenarios related to products containing a large number of options in attributes.
* Product management operations in Admin will significantly slow down and can lead to timeouts, especially on scenarios related to attributes list and trees retrieval (including promo rules management).
* Product mass actions functionality can be blocked.

Reduce the number of product options by:

* Leveraging different variation mechanisms: complex products, custom options as a source of product variations.
* Building specific product templates with targeting attributes and options, avoiding generalized product templates and option containers.
* Managing products info through external Product Management System (PMS).

## Additional information

* [Configurable product](https://experienceleague.adobe.com/docs/commerce-admin/catalog/products/types/product-create-configurable.html)
* [Product attributes](https://experienceleague.adobe.com/docs/commerce-admin/catalog/product-attributes/product-attributes.html)
* [Attribute sets](https://support.magento.com/hc/en-us/articles/360045041092)
* [Product attributes best practices](https://support.magento.com/hc/en-us/articles/360048256612)
* [Inventory mass actions](https://developer.adobe.com/commerce/webapi/rest/inventory/bulk-inventory/)
