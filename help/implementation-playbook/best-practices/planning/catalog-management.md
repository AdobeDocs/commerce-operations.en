---
title: Catalog management best practices
description: Learn about recommendations for configuring cart limits and product attributes, listing pagination, options, promotions, and variations.
role: Developer
feature: Best Practices, Catalog Management
---

# Catalog management best practices

The catalog management best practices described here cover a range of issues, including (but not limited to):

- Cart limits
- Product attributes
- Product listing pagination
- Product options
- Product variations
- Promotions

## Cart limits

For best performance, use the following guidelines to manage cart limits for Adobe Commerce and Magento Open Source:

- For versions 2.3.x - 2.4.2, allow a maximum of 100 products in a cart.
- For versions 2.4.3 and later, enhancement to sales rules capabilities increased the cart maximum to 750.

For versions 2.3.x - 2.4.2, the expected performance based on cart item limits is:

- Up to **100** products in a cart—the product works, meeting performance targets for response time.
- Up to **300** products in a cart—the product works, but response time increases above targets.
- Above **500** products in a cart—the cart and checkout flows are not guaranteed to work

### Affected products and versions

[All supported versions](../../../release/versions.md) of:

- Adobe Commerce on cloud infrastructure
- Adobe Commerce on-premises

### Reduce the number of cart items

Use the following strategies to manage the number of cart items 

- Split orders into several smaller orders with a smaller number of rows by using the [!UICONTROL Add Item by SKU] feature.
- Only add the custom logic and cart customization required to load a list of items.

### Potential performance impact

Having more than the recommended maximum number of products in the cart can affect site performance in the following ways:

- Increased response time for data retrieval operations, validation of cart items, checks for applying price rules, and tax and total calculations.
- Increased response time for minicart rendering including rendering of cart views, checkout flow, and execution.
- Increased time loading time for all site pages where the minicart is present.

## Product attributes

- For best performance, do not configure more than the maximum recommended number of product attributes or product attribute options.

- **Product attributes**—
  - For Adobe Commerce version 2.3.x and 2.4.0 to 2.4.1-p1, configure no more than 500 attributes
  - For Adobe Commerce version 2.4.2 and later, configure up to 1500 product attributes  
- **Product attribute options**–Configure up to 100 attribute options for each attribute
- **Product attribute sets**–Configure a maximum of 1000 attribute sets

>[!NOTE]
>
>Product attributes specify features that apply globally to all products. Product attribute options are customizations to specify features that apply to specific products.

### Affected products and versions

[All supported versions](../../../release/versions.md) of:

- Adobe Commerce on cloud infrastructure
- Adobe Commerce on-premises

### Reduce the number of attributes

For best performance when managing products from the Admin and retrieving product data in the storefront:

- Use different Product templates (attribute sets) for different products.
- Leverage custom options and complex products for variations management
- Minimize the number of searchable attributes.
- Remove product properties that are not used.
- Store and manage non-commerce related attributes in external product management systems (PMS).

### Reduce the number of attribute options

For best performance when managing products from the Admin and retrieving product data in the storefront:

- Use different variation mechanisms to create products: complex products, custom options as a source of product variations.
- Build specific product templates with targeting attributes and options to avoid generalized product templates and option containers.
- Maintain a list of actual attribute options.
- Manage product information through an external Product Management System (PMS).

### Reduce the number of attribute sets

Remove unused product attribute sets using MySQL.

#### Review attribute set configuration

1. [Connect to the site database](https://devdocs.magento.com/cloud/project/services-mysql.html#connect-to-the-database).

1. Find the number of attribute sets using MySQL

   ```sql
   SELECT COUNT(*) AS 'attribute_set' FROM *${TABLE_PREFIX}*eav_attribute_set;
   ```

1. Remove any unused attribute sets.

### Potential performance impact

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

## Product options

For best performance, configure a maximum of 100 product options per product.

### Affected products and versions

[All supported versions](../../../release/versions.md) of:

- Adobe Commerce on cloud infrastructure
- Adobe Commerce on-premises

### Reduce the number of options

For best site performance, use the following strategies to reduce the number of product options:

- Configure complex products and custom options as a source of product variations.
- Instead of creating global product templates and option containers that apply to all products, use attribute sets to build specific product templates with targeted attributes and options.
- Manage product information through an external Product Management System (PMS).

### Potential performance impact

Configuring many product options increases the amount of data retrieved for each product on all read and write operations resulting in:

- Increased SQL query traffic and heavier `JOIN` operations increase database throughput.
- Increased size for Adobe Commerce indexes and the full-text search index.

The increases listed above potentially affect site performance in the following ways:

- Longer response time for most storefront scenarios related to products containing many options in attributes.
- Significant increases in the time required to complete Product management operations in Admin that can lead to timeouts, especially for scenarios related to attributes list and tree retrieval including promotion rules management.
- Can block bulk actions that complete asynchronous mass operations like import and export and assigning custom prices to multiple products in a shared catalog.

## Product listing pagination

For best performance, display a maximum of 48 products per page.

You can configure Adobe Commerce to allow shoppers to view all category products on a single page. If the number of category products significantly exceeds 48 products, update the Catalog configuration for storefront pagination controls.

### Affected products and versions

[All supported versions](../../../release/versions.md) of:

- Adobe Commerce on cloud infrastructure
- Adobe Commerce on-premises

### Update the product listing configuration

If you have more than 48 products in any category, update the storefront catalog configuration to disable the option to **Allow All Products per page**.

After you disable this option, Adobe Commerce uses the product listing storefront pagination controls to manage the number of products that display in storefront components. For instructions, see [Configure pagination controls](https://experienceleague.adobe.com/docs/commerce-admin/catalog/catalog/navigation/navigation-product-listings.html#configure-the-pagination-controls).

## Product SKU limits

To maximize performance, the recommended maximum for effective product Stocking Keeping Units (SKUs) is 242 million. This effective product SKU maximum is calculated as:

```text
Effective SKU = N[SKUs] x N[Stores] x N[Customer groups]
```

Where:

- N stands as the number of items for that category
- Customer groups include shared catalogs, as it creates an additional customer group.

Having more than the maximum number of effective SKUs slows down product data retrieval and increases the time to complete Admin panel operations or indexations.

### Affected products and versions

[All supported versions](../../../release/versions.md) of:

- Adobe Commerce on cloud infrastructure
- Adobe Commerce on-premises

### Reduce the number of products

Use the following strategies to reduce the number of products (SKUs):

- Minimize multipliers—
  - Consolidating websites reduces the multiplier. If you have 50,000 SKUs, ten Websites, and ten Customer Groups, the Effective Number of SKUs is 5 million. Removing five Customer Groups reduces the Effective SKUs to 2.5 million.
  - Use alternative product features for custom pricing to replace shared catalog and customer groups multipliers.
  - Both customer groups and shared catalog function as multipliers for the number of effective SKUs in a store.
- Restructure the catalog—
  - Reduce the number of products assigned to categories.
  - Decrease the number of SKUs by decreasing the number of websites, customer groups, shared catalogs, number of products, or number of configurable product options
- Provide more product variations by using custom options instead of creating separate products.
- Taking into account that an Effective SKU could include a number of potential permutation of prices, because prices can be specified differently per each store or customer group.
- Deactivate or remove unused system components like modules. See  [Uninstall modules](../../../installation/tutorials/uninstall-modules.md).
- Manage products in an external Platform Management System (PMS).

## Product variations

For best performance, configure a maximum of 50 variations per product. 

### Affected products and versions

[All supported versions](../../../release/versions.md) of:

- Adobe Commerce on cloud infrastructure
- Adobe Commerce on-premises

### Reduce the number of variations

For best site performance, use the following strategies to reduce the number of product variations:

- Restructure the catalog by distributing the number of variations across different products.
- Remove configurable attribute options that are not in stock.
- Manage variations through alternative features like custom options, categories, related, grouped, and bundle products.

### Potential performance impact

Exceeding the recommended number of product variations can affect site performance in the following ways:

- Long request and rendering times on product details and category pages containing complex products.
- Increased response time to complete Save operations in the Admin.
- Increased time to render the Product Edit form.
- Slow checkout.

## Promotions

For best performance, follow these best practices to configure sales and promotions for items in a shopping cart:

- **Sales rules (cart price rules)**–Configure no more than 1000 cart price rules for all websites
  - Manage and remove unused rules.
  - Add strict rule conditions (like attribute or category filter) for the most efficient matching.
- **Coupons**—
  - Verify that the total number of coupons in the database is less than 250,000.
  - Remove unused and expired coupons.
  - Generate only the number of coupons needed to meet campaign requirements.

### Affected products and versions

[All supported versions](../../../release/versions.md) of:

- Adobe Commerce on cloud infrastructure
- Adobe Commerce on-premises

### Potential performance impact

Having more than the recommended maximum number of cart price rules or coupons can affect site performance in the following ways:

- Increased response time when products are added to the cart. 
- Increased time to load and render the minicart.
- Increased time to render the cart page.
- Increased time to render the **Totals** block on the Checkout page.
- Applying coupons can take more than 2 seconds.
