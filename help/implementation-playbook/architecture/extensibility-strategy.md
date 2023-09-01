---
title: Adobe Commerce Extensibility Strategy
description: Learn how Adobe Commerce's extensibility model empowers you to customize your implementation.
exl-id: fac4630d-8a41-40dc-899a-01eabceaa61e
feature: Extensibility
---
# Extensibility strategy

Adobe Commerce's extensibility platform allows brands to efficiently customize processes, integrate systems, and deploy new capabilities while maintaining upgradeability.

## Overview of Commerce extension strategies

Extending the capabilities of the Commerce platform includes the following high-level approaches:

*   Extending the native capabilities of the Commerce platform. For example, merchants can install Marketplace applications (often built by third parties) that extend and refine the platform's native capabilities -- for example, an extension that can validate shipping addresses during checkout and facilitate quick integration with UPS carrier address APIs.

*   Integrating third-party apps/extensions with the Commerce platform. Developers can use Commerce's existing, comprehensive REST and GraphQL APIs to directly integrate Commerce with third-party solutions. 

However, platform architecture determines the best strategies for extending a platform. Commerce provides rich GQL and REST API coverage for headless deployment. The core Commerce code base continues to evolve toward a more modular architecture and single integration layer, which provides new, improved customization tools:

*   [App Builder for Adobe Commerce](https://experienceleague.adobe.com/docs/commerce-learn/tutorials/adobe-developer-app-builder/introduction-to-app-builder.html) is a development framework and toolset that is built on Adobe infrastructure. Developers can use it to create Commerce extensions that range from user experience/storefront customizations to middleware and business logic extensions. 

*   [API Mesh for Adobe Developer App Builder](https://developer.adobe.com/graphql-mesh-gateway/) allows developers to combine multiple data sources into a single API endpoint. This supports API orchestration, or integration, of private and third-party APIs and other software interfaces with Adobe Commerce APIs and other Adobe products using Adobe I/O.

*   [Adobe I/O Events for Adobe Commerce](https://developer.adobe.com/commerce/events/get-started/) makes transactional data available to applications that are developed with App Builder and third-party web hooks, supporting the creation of event-driven applications. 

These tools provide access to the Adobe Developer Console and Adobe developer tools to create APIs and integrate custom plugins and integrations.

The following diagram highlights the main components of the Commerce exentisibility strategy.

![Adobe Commerce extensibility strategy diagram](../../assets/playbooks/extensibility-strategy-overview.svg)
