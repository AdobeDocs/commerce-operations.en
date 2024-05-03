---
title: Checkout performance best practices
description: Learn how to build performant checkout experiences that scale for your Adobe Commerce site.
feature: Best Practices
role: Developer
---

# Checkout performance best practices

The [checkout process](https://experienceleague.adobe.com/en/docs/commerce-admin/stores-sales/point-of-purchase/checkout/checkout-process) in Adobe Commerce is a critical aspect of the storefront experience. It relies on the built-in [cart](https://experienceleague.adobe.com/en/docs/commerce-admin/start/storefront/storefront#shopping-cart) and [checkout](https://experienceleague.adobe.com/en/docs/commerce-admin/start/storefront/storefront#checkout-page) capabilities.

As a developer, you may need to customize or integrate the checkout process with third-party systems based on a merchant's business requirements. The goal of this page is to provide you with both general best practices and recommendations for specific use cases, such as promotional events.

## General best practices

Performance is key in maintaining a good user experience, especially during high-traffic events like flash sales. Always follow best practices for performance optimization.

### Customizations

Follow these general best practices when planning cart and checkout customizations:

- **Understand Adobe Commerce APIs**: Familiarize yourself with the Adobe Commerce [REST](https://developer.adobe.com/commerce/webapi/rest/quick-reference/) and [GraphQL](https://developer.adobe.com/commerce/webapi/graphql/schema/) APIs to understand how to interact with Adobe Commerce programmatically. An API-first approach to development promotes scalability and performance.

- **Real-time inventory check**: Check your inventory and retrieve the salable quantity and available quantity using the [Inventory Management REST API](https://developer.adobe.com/commerce/webapi/rest/inventory/check-salable-quantity/).

- **Use built-in cart and checkout capabilities**: Use the built-in capabilities and API endpoints in Adobe Commerce to provide a more secure, efficient, and scalable solution instead of using custom PHP code.

- **Avoid custom PHP code**: Do not use custom PHP code to customize the built-in cart and checkout capability. In addition to potential performance issues, using custom PHP code can result in complex Adobe Commerce upgrades and maintenance challenges. These issues increase your total cost of ownership of the platform.

  >[!NOTE]
  >
  >If PHP-based cart and checkout customization is unavoidable, use [Adobe Commerce Marketplace](https://commercemarketplace.adobe.com/)-approved extensions only. All marketplace extensions are subject to [extensive review](https://developer.adobe.com/commerce/marketplace/guides/sellers/extension-quality-program/) to verify that they meet Adobe Commerce coding standards and best practices.

### Integrations

Follow these general best practices when planning cart and checkout integrations with third-party systems:

- **Optimize performance**: Use Adobe's modern development tools and services to optimize performance, simplify future Adobe Commerce upgrades, and lower your total cost of ownership of the platform. These tools and services include [App Builder](https://developer.adobe.com/commerce/extensibility/app-development/), [API Mesh](https://developer.adobe.com/graphql-mesh-gateway/), and [Catalog Service](https://experienceleague.adobe.com/en/docs/commerce-merchant-services/catalog-service/overview).

- **Create an integration**: Create an integration using App Builder to allow your third-party inventory management system to communicate with Adobe Commerce.

- **Third-party inventory checks**: Use API Mesh to do real-time inventory checks at checkout. Adobe's API Mesh can be used to orchestrate calls between your third-party inventory management system and Adobe Commerce. During high-traffic events like flash sales, consider running these checks more frequently to ensure accurate inventory levels.

- **Test tour integration**: Thoroughly test your integration to ensure it works as expected and doesn't introduce performance issues.

>[!NOTE]
>
>Catalog configuration options can also affect checkout performance. See the [catalog management](../planning/catalog-management.md) best practices to learn about recommendations for configuring cart limits and product attributes, listing pagination, options, promotions, and variations.

## [!DNL Flash sales]

A "[!DNL flash sale]" is a promotional strategy where a merchant offers a discount for customers who purchase items within a short time frame.

Consider the following use case:

- Describe LCBO's flash sale and inventory check use case

- Add architectural diagram

- Compare/contrast App Builder scenario with custom PHP code that demonstrates the superiority of App Builder?

### Example

The following example provides a design pattern for implementing inventory checks for the checkout process during a flash sale or similar promotional event.

Prerequisites and code samples:

- Adobe Commerce w/ Inventory Management?
- Catalog Service?
- Third-party price engine?
- API Mesh
- App Builder
- Code examples
