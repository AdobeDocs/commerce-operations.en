---
title: Enterprise reference architecture
description: Learn how to implement Adobe Commerce using Adobe's latest compasable commerce technology.
feature: App Builder, Cloud, GraphQL, Integration, Paas, Saas
---

# Adobe Commerce enterprise reference architecture

Adobe Commerce is the experience-led platform that uniquely pairs technical flexibility with ease of use, all in service of creating exceptional experiences that drive business results.

Commerce has evolved to meet enterprise requirements for performance, scale, and security. Adopting a modern implementation approach that uses Adobe's latest composable commerce solutions is critical to the success of enterprise businesses. This page describes the modern Commerce implementation approach in technical detail.

![Architectural diagram showing how Adobe Commerce connects to Experience Cloud solutions](../../assets/playbooks/commerce-architecture.png){zoomable="yes"}

![Legend for architectural diagram](../../assets/playbooks/commerce-architecture-legend.png){width="50%" zoomable="yes"}

## Cloud foundation

[Adobe Commerce on cloud infrastructure](https://experienceleague.adobe.com/en/docs/commerce-cloud-service/user-guide/overview) is the foundation of your Commerce implementation. It provides a [secure](../../security-and-compliance/shared-responsibility.md) automated hosting platform with a self-service approach to building, deploying, monitoring, and managing your Commerce application in a cloud-native environment.

See the following cloud foundation technical details:

- [**Scaled architecture**](https://experienceleague.adobe.com/en/docs/commerce-cloud-service/user-guide/architecture/scaled-architecture)—Automatically adjusted capacity to maintain steady, predeictable performance
- [**Multiple environments**](https://experienceleague.adobe.com/en/docs/commerce-cloud-service/user-guide/architecture/pro-architecture)—Pre-previsioned with PHP, MySQL (MariaDB), Redis, RabbitMQ, and supported search engine technologies to develope, test, and deploy your site
- [**Configuration management**](https://experienceleague.adobe.com/en/docs/commerce-cloud-service/user-guide/configure/overview)—Customizable environment configuration files and command-line interface (CLI) to manage application settings, routes, build and deploy actions, and notifications.
- [**Git-based workflow**](https://experienceleague.adobe.com/en/docs/commerce-cloud-service/user-guide/architecture/pro-develop-deploy-workflow)—Automatically build and deploy after pushing code changes for rapid development and continuous deployment
- [**Built-in observability**](https://experienceleague.adobe.com/en/docs/commerce-cloud-service/user-guide/monitor/performance)—Tools that combine log data from multiple sources to help you manage your site's performance and diagnose issues
- [**Comprehensive API coverage**](https://developer.adobe.com/commerce/webapi/get-started/)—[GraphQL](https://developer.adobe.com/commerce/webapi/graphql/) and [REST](https://developer.adobe.com/commerce/webapi/rest) APIs for integrating the core Commerce application with third-party systems and extending Commerce capabilities

## Integrations and customizations

Adobe provides developers with comprehensive extension points and tools to integrate Commerce with third-party systems (such as CRMs, ERPS, and PIMS) and build applications that extend core Commerce capabilities. These tools reduce your total cost of ownership of the platform in the following ways:

- **Scalability**—Applications can be scaled separately from the core software, allowing for greater efficiency and simplfied upgrades.
- **Isolation**–An isolated environment means that developers can upgrade or modify their extensions at their discretion without relying on a core release.
- **Technological independence**–Developers can choose whichever technology stacks and coding languages that fit their needs.

Adobe provides the following developer tools for building integrations and customizations:

- [**API Mesh for Adobe Developer App Builder**](https://developer.adobe.com/graphql-mesh-gateway/)—Coordinate and combine multiple API, GraphQL, REST, and other sources into a single, queryable GraphQL endpoint.
- [**App Builder**](https://developer.adobe.com/app-builder/docs/overview/)—Build and deploy secure and scalable web applications that extend Commerce functionality and integrate with third-party solutions.
- [**Events**](https://developer.adobe.com/commerce/extensibility/events/)—Use custom event triggers to interact with other extensible development tools.
- [**Webhooks**](https://developer.adobe.com/commerce/extensibility/webhooks/)—Use webhooks to automatically trigger interactions between Commerce and third-party systems.
- [**Admin UI SDK**](https://developer.adobe.com/commerce/extensibility/admin-ui-sdk/)—Customize and enhance the Commerce Admin with new pages and features for your merchants.

## SaaS microservices

Adobe provides a rich set of intelligent, composable services built to deliver personalized commerce experiences at scale to help you support your key business goals.

Somethign about performance benefits of using SaaS APIs vs core

Something about data modeling/catalog mgmt

- [Data Connection](https://experienceleague.adobe.com/en/docs/commerce-merchant-services/data-connection/overview)—Unlock insights about your shoppers' buying behavior and create personalized shopping experiences across all channels with other Adobe Digital Experience products.
- [Live Search](https://experienceleague.adobe.com/en/docs/commerce-merchant-services/live-search/overview)—Deliver smarter, faster and relevant results for shoppers with this AI-powered search tool.
- [Product Recommentations](https://experienceleague.adobe.com/en/docs/commerce-merchant-services/product-recommendations/overview)—Add AI-fueled recommendations based on shopper behavior, popular trends, product similarity, and more.
- [Catalog Service](https://experienceleague.adobe.com/en/docs/commerce-merchant-services/catalog-service/guide-overview)—Give your customers an optimized product experience while boosting performance, improving scalability, and increasing conversions.
- [Payment Services](https://experienceleague.adobe.com/en/docs/commerce-merchant-services/payment-services/guide-overview)—Drive customer satisfaction by offering various payment methods, including interest-free payment installments, and a single view into payment processing, orders, and invoices.

## Headless storefront

Headless commerce is API-first commerce. Adobe Commerce is fully headless with a decoupled architecture that provides all commerce services and data through a GraphQL API layer. This architecture allows frontend teams to develop their frontends independently from the core applicatino, providing the agility to quickly build and test new touchpoints with emerging technologies.

Adobe provides a modern headless storefront technology that includes the same benefits and capabilities delivered by [Edge Delivery Services](https://www.aem.live/home) with document-based authoring, a performance-first architecture, and out-of-the-box native experimentation. It leverages the scale and performance of Adobe Commerce SaaS microservices and the flexibility and convenience of [drop in components](https://experienceleague.adobe.com/developer/commerce/storefront/) to deliver commerce capabilities.
