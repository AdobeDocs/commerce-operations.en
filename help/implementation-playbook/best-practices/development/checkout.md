---
title: Checkout performance best practices
description: Learn how to build performant checkout experiences that scale for your Adobe Commerce site.
feature: Best Practices
role: Developer
---

# Checkout performance best practices

The [checkout process](https://experienceleague.adobe.com/en/docs/commerce-admin/stores-sales/point-of-purchase/checkout/checkout-process) in Adobe Commerce is a critical aspect of the storefront experience. It relies on the built-in [cart](https://experienceleague.adobe.com/en/docs/commerce-admin/start/storefront/storefront#shopping-cart) and [checkout](https://experienceleague.adobe.com/en/docs/commerce-admin/start/storefront/storefront#checkout-page) capabilities.

As a developer, you may need to customize (or integrate with) the checkout process based on a merchant's business requirements. The goal of this page is to provide you with general best practices and recommendations for specific use cases.

## General best practices

Follow these general best practices when planning cart and checkout customizations and integrations:

- Use the built-in cart and checkout [REST](https://developer.adobe.com/commerce/webapi/rest/quick-reference/) or [GraphQL](https://developer.adobe.com/commerce/webapi/graphql/schema/) APIs. An API-first approach to development promotes scalability and performance.
- Use Adobe's modern development tools and services to optimize performance, simplify future Adobe Commerce upgrades, and lower your total cost of ownership of the platform. These tools and services include [App Builder](https://developer.adobe.com/commerce/extensibility/app-development/), [API Mesh](https://developer.adobe.com/graphql-mesh-gateway/), and [Catalog Service](https://experienceleague.adobe.com/en/docs/commerce-merchant-services/catalog-service/overview).
- Do not use custom PHP code to customize the built-in cart and checkout capability. In addition to potential performance issues, using custom PHP code can result in complex Adobe Commerce upgrades and increase your total cost of ownership of the platform.
- If PHP-based cart and checkout customization is unavoidable, use [Adobe Commerce Marketplace](https://commercemarketplace.adobe.com/)-approved extensions only. All marketplace extensions are subject to [extensive review](https://developer.adobe.com/commerce/marketplace/guides/sellers/extension-quality-program/) to verify that they meet Adobe Commerce coding standards and best practices.

This page also describes common scenarios that may require customizations to the checkout process (for example, flash sales).

>[!NOTE]
>
>Catalog configuration options can also affect checkout performance. See the [catalog management](../planning/catalog-management.md) best practices to learn about recommendations for configuring cart limits and product attributes, listing pagination, options, promotions, and variations.

## [!DNL Flash sales]

A "[!DNL flash sale]" is a promotional strategy where a merchant offers a discount for customers who purchase items within a short time frame.

Consider the following use case:

Describe LCBO's flash sale and inventory check use case

Add architectural diagram

Compare/contrast App Builder scenario with custom PHP code that demonstrates the superiority of App Builder?

### Example

Prerequisites and code samples:

- Adobe Commerce
- Catalog Service
- Third-party price engine?
- API Mesh
- App Builder
- Code examples
