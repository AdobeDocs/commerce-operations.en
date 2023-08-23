---
title: Implementation planning phase
description: Learn about implementation best practices for the planning phase of Adobe Commerce projects.
role: Developer, Admin, User
feature: Best Practices
exl-id: 6baeac79-8dc3-45b4-bb25-8f2add8b3443
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
  - [Best practices for configuring sites, stores, and store views (cloud infrastructure)](sites-stores-store-views.md)
  - [How to prevent—and fix—the five most common configuration issues for Adobe Commerce sites](https://business.adobe.com/blog/how-to/usual-suspects-five-configuration-fixes-maximize-your-peak-sales)
  - [Best practices for Caching](https://docs.magento.com/user-guide/system/cache-management.html#best-practices-for-caching)
  - [Full page caching](https://developer.adobe.com/commerce/php/development/cache/page/public-content/)
  - [OPcache memory size](opcache-memory-size.md)
  - [Reporting configuration](reporting-configuration.md)

- **Database configuration**
  - [Database configuration best practices for cloud deployments​](database-on-cloud.md)
  - [MySQL configuration​](mysql-configuration.md)

- **Services configuration**
  - [Set up Fastly](https://devdocs.magento.com/cloud/cdn/configure-fastly.html)
  - [New Relic - Configure notification channels](https://devdocs.magento.com/cloud/project/new-relic.html#configure-notification-channels)
  - [Best practices for Redis service configuration​](redis-service-configuration.md)
  - [Realpath cache size best practice](realpath-cache-size.md)

## **Architectural design**

<!--Asset not yet integrated
- [GRA Architecture examples](https://wiki.corp.adobe.com/x/kD4ykw)
-->
- [Understanding Global Reference Architecture](../../../implementation-playbook/architecture/global-reference.md)

## **Catalog design**

The following topics describe performance optimization best practices for configuring your Adobe Commerce catalog including recommended maximums for the number of categories, product effective SKUs, product variations, product attributes and options, and more.

- [Category configuration](category-limits.md)
- [Product configuration​](catalog-management.md#product-sku-limits)
- [Product variation configuration](catalog-management.md#product-variations)
- [Product options configuration](catalog-management.md#product-options)
- [Product attributes configuration​](catalog-management.md#product-attributes)
- [Pagination configuration for product listings](catalog-management.md#product-listing-pagination)

## **Sales and Marketing**

- [Best practices for product cart limit](catalog-management.md#cart-limits)
- [Best practices for configuring promotions](catalog-management.md#promotions)

## **Project scoping**

- [Partner escalations](partner-escalation.md)
- [Payments storage processing](payment-processing-storage.md)

## **Purchase extensions**

- [Best Practices for using third-party extensions in Adobe Commerce](extensions.md)
