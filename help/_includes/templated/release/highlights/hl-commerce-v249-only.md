# Adobe Commerce highlights (v2.4.9-only)

## Highlights in v2.4.9-only

The following highlights apply to the Adobe Commerce 2.4.9-only release.

### Framework

#### Add compatibility with PHPUnit 12

The Adobe Commerce Composer dependency is upgraded to `phpunit/phpunit` 12.x. All tests are updated for compatibility, improving security and alignment with the latest PHPUnit features. This upgrade keeps Adobe Commerce ready for future PHP and PHPUnit releases.

_AC-14808_

#### Add compatibility with RabbitMQ 4.2

RabbitMQ 4.2 is now a supported message broker. This update lets merchants who rely on the AMQP protocol continue using RabbitMQ ahead of RabbitMQ 4.1 end-of-support in February 2026, without requiring migration to the STOMP MQ protocol. Compatibility with ActiveMQ Artemis is retained.

_AC-16117_

#### Add support for Valkey 9.x LTS

Valkey 9.x LTS is now a compatible caching backend, giving merchants long-term support, improved platform performance, and a seamless migration path that does not require a major version upgrade.

_AC-16122_

#### Add support for the latest minor version of OpenSearch 3

The latest minor release of OpenSearch 3 is now the recommended search engine, allowing merchants to take advantage of the newest OpenSearch features and security updates. Compatibility with OpenSearch 2.x is retained.

_AC-16403_

#### Add support for MariaDB 11.8 and 12.x

MariaDB 11.8 and 12.x are now supported database versions, enabling merchants to adopt the latest releases for improved SQL performance and long-term platform stability. MariaDB 11.4 remains supported.

_AC-16533_

### GraphQL API changes

#### `clearCart` GraphQL mutation is now available in Magento Open Source

The [`clearCart`](https://developer.adobe.com/commerce/webapi/graphql/schema/cart/mutations/clear-cart/) GraphQL mutation is now available to all Magento Open Source users. Previously, this mutation was only accessible in Adobe Commerce. Documentation for the mutation has been updated to reflect its availability in Magento Open Source.

_AC-16683 - [GitHub code contribution](https://github.com/magento/magento2/commit/4449d914)_

#### More descriptive errors from the `applyGiftCardToCart` GraphQL mutation

Enhanced error handling for the `applyGiftCardToCart` mutation. The mutation now returns specific error messages for cases such as expired or zero-balance gift cards, improving the shopper experience. Additionally, the backend prevents applying extra gift cards to orders that are already free.

_LYNX-787_

#### New `clearWishlist` GraphQL mutation removes all wishlist items at once

Added a new `clearWishlist` mutation to support bulk operations, allowing all items to be removed from a wishlist in a single action.

_LYNX-790_

#### New `exchangeExternalCustomerToken` GraphQL mutation for integration-based authentication

Introduced a new `exchangeExternalCustomerToken` GraphQL mutation that authenticates users via an integration token and returns both the customer token and associated customer data.

_LYNX-815_

#### Updated documentation for new and existing GraphQL mutations

Documentation updated for the following GraphQL mutations: `clearWishlist` (2.4.9), `confirmCancelOrder` (2.4.8), `requestGuestOrderCancel` (2.4.8), `resendConfirmationEmail` (2.4.8), and `exchangeExternalCustomerToken` (2.4.9).

_LYNX-821_

#### New GraphQL queries return applied customer group, segments, and cart rule IDs

New GraphQL queries return the encoded `uid` of the applied customer group, customer segments, and cart rules.

_LYNX-867_

#### New admin configuration controls guest and customer cart merge behavior at sign-in

Merchants can now choose how cart items are merged when a guest logs in and already has a customer cart:

- Guest Priority: Use guest cart quantity
- Customer Priority: Use customer cart quantity
- Merge Quantities (default): Sum both quantities

This feature is configurable in Stores > Configuration > Sales > Checkout, under "Cart Merge Preference."
It ensures a seamless shopping experience and gives you full control over cart merging behavior for all product types.

This enhancement gives you the flexibility to define the cart merge behavior that best fits your business needs.

_LYNX-889_

#### Gift options clear automatically when the cart is emptied

Fixed an issue where gift options persisted on an empty cart after all items were removed. Gift options now clear automatically when the cart is emptied, ensuring a consistent user experience similar to coupon handling.

_LYNX-786_

#### Gift options merge consistently when guest and customer carts are combined

Enhanced gift options handling during cart merges to ensure a more consistent user experience. Gift options now follow a prioritized merging logic, preventing unintended overrides when a guest user logs in and their cart is merged with an existing customer cart.

_LYNX-788_

#### New `grand_total_excl_tax` field in the GraphQL `OrderTotal` response

A new field, `OrderTotal.grand_total_excl_tax`, has been added to the GraphQL order response. This field provides the order's grand total excluding tax, making it easier to access tax-exclusive totals directly from the API.

Benefits:

- Easily retrieve the grand total excluding tax for any order via GraphQL.
- Simplifies integration with external systems that require tax-exclusive totals.
- Reduces the need for custom calculations on the client side.

_LYNX-892_

#### Historical orders show details for products that are now out of stock

Historical orders now show product details for items that are out of stock.

_LYNX-913_

#### reCAPTCHA validation added to `updateCustomer`, `updateCustomerV2`, and `contactUs` GraphQL mutations

reCAPTCHA validation is added to the `updateCustomer`, `updateCustomerV2`, and `contactUs` mutations.

_LYNX-941_

#### reCAPTCHA validation added to the `applyCouponsToCart` GraphQL mutation

reCAPTCHA validation is added to the `applyCouponsToCart` mutation.

_LYNX-942_

#### B2B GraphQL API `customer_id` field restored and fully supported

The `customer_id` field in the B2B GraphQL API is now fully supported and available for use in your company management queries and mutations. Previously, this field was deprecated and returned `null`, which limited its functionality. With this update, the `customer_id` field is restored and returns the correct value as expected. You can now reliably use the `customer_id` field in GraphQL queries and mutations for B2B company management.

_LYNX-955_

### REST API updates

#### Apply store credit to admin-managed orders through the REST API

A new REST API endpoint enables admins—and integrations using admin or integration tokens—to apply or remove customer store credit on admin-managed carts. This closes the parity gap between the Admin UI and the REST API, where previously only customers could apply their own store credit through `/V1/carts/mine/balance/apply`.

_AC-16410_

#### New REST API endpoint to retrieve customer tokens

A new REST API endpoint has been introduced to simplify the process of retrieving customer tokens. This enhancement supports integrations such as social login and streamlines customer authentication flows.

Key features:

- New endpoint: `POST /V1/customers/:customerId/token`
- Allows you to generate a token for any customer using their `customerId`.
- Supports checking if a customer exists, creating a customer if needed, and retrieving their token—all via REST API.
- Access to this endpoint is protected by appropriate permissions to ensure security.

_LYNX-898_

### Security

#### Faster page loads on multi-theme and multi-locale stores after SRI hash storage refactor

SRI hash storage now generates separate files per area, theme, and locale, instead of a single large `sri-hashes.json` file. This change ensures that only the relevant hash file is loaded for each page, improving performance and reducing memory usage on stores with multiple themes or locales.

_AC-16113 - [GitHub code contribution](https://github.com/magento/magento2/commit/bc83cd2c)_

