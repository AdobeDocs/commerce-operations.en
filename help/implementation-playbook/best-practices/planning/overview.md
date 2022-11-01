---
title: Implementation planning phase
description: Learn about implementation best practices for the planning phase of Adobe Commerce projects.
---

# Planning phase

The planning phase includes the following activities:

- Requirements gathering
- Architectural design
- Catalog design
- Project scoping
- Account provisioning
- User access
- Extension purchasing

The following sections include best practice information for the planning phase.

## Requirements gathering

- **Application configuration**
  - [Best practices for configuring sites, stores, and store views (cloud infrastructure)](sites-stores-views.md)
  - [How to prevent—and fix—the five most common configuration issues for Adobe Commerce sites](https://business.adobe.com/blog/how-to/usual-suspects-five-configuration-fixes-maximize-your-peak-sales)
  - [Best practices for Caching](https://docs.magento.com/user-guide/system/cache-management.html#best-practices-for-caching)
  - [Full page caching](https://developer.adobe.com/commerce/php/development/cache/page/public-content/)
  - [OPcache memory size](opcache-memory-size.md)
  - [Reporting configuration](reporting-configuration.md)

- **Database configuration**
  - [Database configuration best practices for cloud deployments​](database-on-cloud.md)
  - [MySQL slave connection configuration​](configure-mysql-slave-connection-on-cloud.md)
  - [MySQL triggers usage](mysql-triggers-usage.md)

- **Services configuration**
  - Enable CDN, WAF, and Image Optimization: [Set up Fastly](https://devdocs.magento.com/cloud/cdn/configure-fastly.html)
  - [New Relic - Configure notification channels](https://devdocs.magento.com/cloud/project/new-relic.html#configure-notification-channels)
  - [Best practices for Redis service configuration​](redis-service-configuration.md)
  - [Best practice for OPcache memory size in Adobe Commerce](https://support.magento.com/hc/en-us/articles/360044740812​)
  - [Realpath cache size best practice](realpath-cache-size.md)

## **Architectural design**

- [GRA Architecture examples](https://wiki.corp.adobe.com/x/kD4ykw)

## **Catalog design**

The following topics describe performance optimization best practices for configuring your Adobe Commerce catalog including recommended maximums for the number of categories, product effective SKUs, product variations, product attributes and options, and more

- [Category limits](category-limits.md)
- [Product limits​](product-sku-limits.md)
- [Product variations](product-variations.md)
- [Product options​](product-options.md)
- [Product attribute, attribute options, and attribute set configuration​](product-attributes.md)
- [Pagination configuration for product listings](product-listing-pagination.md)(paginating-product-listings.md)

## **Sales and Marketing**

- [Best practice for number of products in cart in Adobe Commerce​](product-cart.md)
- [Best practices for configuring promotions](product-cart-promotions.md)

## **Project scoping**

- [Partner escalations](partner-escalation.md)

## **Purchase extensions**

- [Best Practices for using third-party extensions in Adobe Commerce​](extensions.md)
