---
title: Adobe Commerce Integration Strategy
description: Review integration strategies and options for your Adobe Commerce implementation.
exl-id: af7cc59a-3ee2-461a-8489-a35fe0288277
---
# Adobe Commerce integration strategy

The ability to integrate your platform is “non-negotiable.” Companies want their ecommerce platforms accessible from a variety of touchpoints and seamlessly integrated into their technology systems, especially their ERP. Customizability, global scalability, and affordability also play a role in final platform purchase.

A holistic integration approach for both storefront and backend systems are supported by performant GraphQL APIs, comprehensive REST APIs, and batch-file import between Adobe Commerce and other systems or services.

The Adobe Commerce GraphQL API provides comprehensive storefront coverage that you can use to integrate with other storefronts, including:

- Digital experience platforms (DXPs) like Adobe Experience Manager and Bloomreach
- Content management systems (CMS) like Drupal and WordPress
- Modern custom storefront application like Adobe Commerce, PWA Studio, and Vue Storefront

GraphQL provides an efficient, channel-specific response, no over-fetching of data, and an agile deployment of new touchpoint features. It is also often chosen to integrate with sales channels such as mobile native apps, POS, IoT, social channels, and livestream commerce channels like Facebook, Google, Instagram, WeChat, and TikTok.

The Adobe Commerce REST API provides comprehensive system configuration coverage and data management features, including product and catalog; cart, quote, and checkout; customers, account, and companies; and orders and returns. REST APIs support bulk operations, multiple authentication modes, and granular authorization, so REST APIs are often chosen to integrate with enterprise systems, including:

- Enterprise resource planning (ERP) systems like SAP
- Product information management (PIM) systems like Akeneo
- Customer relationship management (CRM) systems like Salesforce
- Order management systems (OMS) like MOM, Manhattan, and SAP
- Warehouse Management System (WMS) or third-party logistics (3PL) like Oracle, NetSuite, and SAP WM
- Configure, Price, Quote (CPQ) like SalesforceCPQ
- Digital Asset Management (DAM) like Adobe DAM.

Batch-file imports are also considered a good option to integrate enterprise systems like ERPs and PIMs, as that data does not change very often, and you often have better performance with scheduled file imports. So, batch-file imports are usually chosen for bulk data synchronization on a daily/weekly basis and monthly full data synchronizations, whereas REST APIs are chosen for incremental data change synchronization, for better performance. This is also only considered a scheduled job but can be done frequently—potentially every 15 mins to 1 hour—depending on business needs.

## Integration options

Adobe Commerce provides three flexible integration options:

- Direct system-to-system integration with pre-built connectors. Some systems may already have Adobe Commerce extensions on the Adobe Commerce Marketplace or their own website.

- System-to-system integration through custom middleware. The custom middleware solution deployed will be used for process data mapping, translation, and management.

- System-to-system integration through iPaaS (Integration Platform-as-a-Service), also referred to as EAI (Enterprise Application Integration Platform), such as Mulesoft, Boomi, and Software AG.

![Adobe Commerce integration options](../../assets/playbooks/integration-options.svg)

Even though real-time integrations are usually desired, it’s not necessary for some scenarios. Adobe Commerce natively supports RabbitMQ as the message bus to enable asynchronous processes, which is recommended for some data that is not necessary to exchange in real time, but rather to update with batch-file exchange or REST batch data process API to process asynchronously.
