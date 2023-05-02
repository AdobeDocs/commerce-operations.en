---
title: Product attributes configuration best practices
description: Learn how to optimize Adobe Commerce performance by limiting the number of product attributes, attribute options, and attribute sets
role: User, Admin
feature: Best Practices
feature-set: Commerce
exl-id: 81783a4c-bc82-4733-bee3-0154cf03079a
---
# Best practices for product attribute configuration

- For best performance, do not configure more than the maximum recommended number of product attributes or product attribute options.

- **Product attributes**—
  - For Adobe Commerce version 2.3.x and 2.4.0 to 2.4.1-p1, configure no more than 500 attributes
  - For Adobe Commerce version 2.4.2 and later, configure up to 1500 product attributes  
- **Product attribute options**–Configure up to 100 attribute options for each attribute
- **Product attribute sets**–Configure a maximum of 1000 attribute sets
_
>[!NOTE]
>
>Product attributes specify features that apply globally to all products. Product attribute options are customizations to specify features that apply to specific products.

## Affected products and versions

[All supported versions](../../../release/versions.md) of:

- Adobe Commerce on cloud infrastructure
- Adobe Commerce on-premises

## Reduce number of product attributes

For best performance when managing products from the Admin and retrieving product data in the storefront:

- Use different Product templates (attribute sets) for different products.
- Leverage custom options and complex products for variations management
- Minimize the number of searchable attributes.
- Remove product properties that are not used.
- Store and manage non-commerce related attributes in external product management systems (PMS).

## Reduce number product attribute options

For best performance when managing products from the Admin and retrieving product data in the storefront:

- Use different variation mechanisms to create products: complex products, custom options as a source of product variations.
- Build specific product templates with targeting attributes and options to avoid generalized product templates and option containers.
- Maintain a list of actual attribute options.
- Manage product information through an external Product Management System (PMS).

## Reduce number of product attribute sets

Remove unused product attribute sets using MySQL.

### Review attribute set configuration

1. [Connect to the site database](https://devdocs.magento.com/cloud/project/services-mysql.html#connect-to-the-database).

1. Find the number of attribute sets using MySQL

   ```sql
   SELECT COUNT(*) AS 'attribute_set' FROM *${TABLE_PREFIX}*eav_attribute_set;
   ```

1. Remove any unused attribute sets.

## Potential performance impacts

Configuring many **product attributes** increases the product template size for each product (EAV structure) and the amount of data that must be retrieved. This increase affects operations in the following ways:

- Increase in SQL queries traffic related to EAV data retrieval and the amount of data processed which results in decreased DB throughput
- Significant increase in the size of Adobe Commerce indexes and the full-text search index
- Reaching hard MySQL limits when building a FLAT index for oversized product templates and inability to use it

Increases in product data and index sizes can affect site performance in the following ways:

- Increased response time for most storefront scenarios related to catalog browsing, search (quick and advanced), and layered navigation.
- Product management operations in the Admin slow significantly which can lead to timeouts.
- Product Mass Actions functionality can be blocked.
- Index re-build time for mid- and large-sized catalogs cannot be performed on a daily basis due to long execution times.

Configuring many **attribute options** can affect site performance in the following ways:

- Long request and rendering times on product detail (PDP) and category pages containing complex products.
- Admin product save operations response time increases above optimal performance targets.
- Increase in Product Edit form rendering time.
- Slow checkout.

## Additional information

- [Product Attributes Overview](https://experienceleague.adobe.com/docs/commerce-admin/catalog/product-attributes/product-attributes.html)
- [Attribute sets](https://experienceleague.adobe.com/docs/commerce-admin/catalog/product-attributes/create/attribute-sets.html)
- [Create a product](https://experienceleague.adobe.com/docs/commerce-admin/catalog/products/product-create.html)
- [Customization tutorials > Customize product creation form](https://developer.adobe.com/commerce/php/tutorials/admin/custom-product-creation-form/)
