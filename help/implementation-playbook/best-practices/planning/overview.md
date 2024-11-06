---
title: Implementation planning phase
description: Learn about implementation best practices for the planning phase of Adobe Commerce projects.
role: Developer, Admin, User
feature: Best Practices
exl-id: 6baeac79-8dc3-45b4-bb25-8f2add8b3443
---
# Planning phase

The planning phase includes the following activities:

- Architectural design
- Catalog design
- Extension purchasing
- Project scoping
- Requirements gathering
- Sales and marketing

The following sections include best practice information for the planning phase.

## Requirements gathering

<table>
<thead>
  <tr>
    <th>Best practice</th>
    <th>Description</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td colspan="2"><em>Application configuration</em></td>
  </tr>
  <tr>
    <td><a href="sites-stores-store-views.md">Configure sites, stores, and store views</a></td>
    <td>Configure sites, stores, and store views to maximize site performance.</td>
  </tr>
  <tr>
    <td><a href="https://business.adobe.com/blog/how-to/the-usual-suspects-5-configuration-issues-to-maximize-your-peak-sales">Common configuration issues</a></td>
    <td>Fix and prevent the five most common configuration issues for Adobe Commerce sites.</td>
  </tr>
  <tr>
    <td><a href="https://experienceleague.adobe.com/docs/commerce-admin/systems/tools/cache-management.html">Caching</a></td>
    <td>Use the cache management tools to improve the performance of your site.</td>
  </tr>
  <tr>
    <td><a href="https://developer.adobe.com/commerce/php/development/cache/page/public-content/">Full-page caching</a></td>
    <td>Learn how to work with public data when implementing caching in your Adobe Commerce extension.</td>
  </tr>
  <tr>
    <td><a href="opcache-memory-size.md">OPcache memory size</a></td>
    <td>Avoid performance degradation with specific settings of OPcache memory consumption.</td>
  </tr>
  <tr>
    <td><a href="reporting-configuration.md">Configure reporting</a></td>
    <td>Optimize site performance by removing the reporting module if you are not using it.</td>
  </tr>
  <tr>
    <td colspan="2"><em>Database configuration</em></td>
  </tr>
  <tr>
    <td><a href="database-on-cloud.md">Configure database for cloud deployments</a></td>
    <td>Configure database and application settings to improve performance when deploying Adobe Commerce on cloud infrastructure projects.</td>
  </tr>
  <tr>
    <td><a href="mysql-configuration.md">Configure MySQL</a></td>
    <td>Learn how MySQL triggers and slave connections affect site performance and how to use them effectively.</td>
  </tr>
  <tr>
    <td colspan="2"><em>Services configuration</em></td>
  </tr>
  <tr>
    <td><a href="https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/cdn/setup-fastly/fastly-configuration.html">Set up Fastly</a></td>
    <td>Configure Fastly services for your Adobe Commerce on cloud infrastructure project.</td>
  </tr>
  <tr>
    <td><a href="https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/monitor/new-relic.html">Configure notification channels for New Relic</a></td>
    <td>Access your New Relic dashboard and analyze data from your Adobe Commerce on cloud infrastructure project.</td>
  </tr>
  <tr>
    <td><a href="redis-service-configuration.md">Configure Redis</a></td>
    <td>Improve caching performance by using the extended Redis cache implementation for Adobe Commerce.</td>
  </tr>
  <tr>
    <td><a href="realpath-cache-size.md">Realpath cache size</a></td>
    <td>Optimize performance by updating the PHP `readlpath` cache configuration to use the recommended settings.</td>
  </tr>
</tbody>
</table>

## Catalog design

| Best practice                                                                                     | Description                                                   |
|---------------------------------------------------------------------------------------------------|---------------------------------------------------------------|
| [Category configuration](catalog-management.md#category-limits)                                   | Configure product categories for optimal performance.         |
| [Product configuration​](catalog-management.md#product-sku-limits)                                 | Configure product SKUs for optimal performance.               |
| [Product variation configuration](catalog-management.md#product-variations)                       | Configure product variations for optimal performance.         |
| [Product options configuration](catalog-management.md#product-options)                            | Configure product options for optimal performance.            |
| [Product attributes configuration​](catalog-management.md#product-attributes)                      | Configure product attributes for optimal performance.         |
| [Pagination configuration for product listings](catalog-management.md#product-listing-pagination) | Configure product listing pagination for optimal performance. |

## Extensions

| Best practice                                                   | Description                                                                            |
|-----------------------------------------------------------------|----------------------------------------------------------------------------------------|
| [Using third-party extensions in Adobe Commerce](extensions.md) | Learn how to avoid performance issues caused by third-party Adobe Commerce extensions. |

## Project scoping

| Best practice                                                | Description                                                                                                  |
|--------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------|
| [Partner escalations](partner-escalation.md)                 | Prepare for escalating a partner issue with an Adobe Account Team or learn how to avoid an escalation. |
| [Payments storage processing](payment-processing-storage.md) | Securely process and store payment details.                                                                  |

## Sales and marketing

| Best practice                                              | Description                                                  |
|------------------------------------------------------------|--------------------------------------------------------------|
| [Product cart limits](catalog-management.md#cart-limits)   | Manage cart limits for optimal performance.                  |
| [Configuring promotions](catalog-management.md#promotions) | Configure sales and promotions for items in a shopping cart. |
