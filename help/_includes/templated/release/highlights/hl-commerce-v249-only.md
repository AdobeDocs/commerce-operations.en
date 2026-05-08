# Adobe Commerce highlights (v2.4.9-only)

## Highlights in v2.4.9-only

The following highlights apply to the Adobe Commerce 2.4.9-only release.

### Framework

#### PHPUnit 12 upgrade

Updated the phpunit/phpunit composer dependencies to compatible version - "phpunit/phpunit":"10.x"

_AC-14808_

#### Add compatibility with RabbitMQ 4.2 for 2.4.9, 2.4.8-p5, 2.4.7-p10, 2.4.6-p15 and 2.4.5-p17

No description available.

_AC-16117_

#### Add compatibility with Valkey Support with 9.x LTS for 2.4.9, 2.4.8-p5, 2.4.7-p10, 2.4.6-p15 and 2.4.5-p17

No description available.

_AC-16122_

#### Check compatibility with the latest minor version of OpenSearch 3

No description available.

_AC-16403_

#### Add Support for MariaDB 11.8 and 12.x in Adobe Commerce

No description available.

_AC-16533_

### GraphQL

#### Ensure clearCart GraphQL mutation is available in Open Source

With Adobe Commerce 2.4.9, the clearCart GraphQL mutation is now available to all Open Source users. Previously, this mutation was only accessible in Adobe Commerce, but it is now part of the standard GraphQL cart functionality for Open Source as well.
Documentation for the mutation has been updated to reflect its availability in Open Source for version 2.4.9.
See: clearCart GraphQL mutation documentation https://developer.adobe.com/commerce/webapi/graphql/schema/cart/mutations/clear-cart/

_AC-16683 - [GitHub code contribution](https://github.com/magento/magento2/commit/4449d914)_

#### [AC-2.4.9] Merging guest and customer cart logic using Admin Configuration

A new admin configuration option has been introduced to control how guest and customer carts are merged when a shopper signs in. This enhancement gives you flexibility to define the cart merge behavior that best fits your business needs.

_LYNX-889_

#### [AC-2.4.9] Getting historical orders with out of stock products

Historical orders now show product details even if they are now out-of-stock.

_LYNX-913_

#### [AC-2.4.9] [CE] Implement ReCaptcha for missing GraphQl mutations

The ReCaptcha validation is added to updateCustomer, updateCustomerV2, and contactUs mutations.

_LYNX-941_

#### [AC-2.4.9] [EE] Implement ReCaptcha for missing GraphQl mutations

The ReCaptcha validation is added to applyCouponsToCart mutation.

_LYNX-942_

#### [AC-2.4.9] GraphQL API Customer ID value

The Customer ID field in the B2B GraphQL API is now fully supported and available for use in your company management queries and mutations. Previously, this field was deprecated and returned null, which limited its functionality. With this update, the Customer ID field is restored and will return the correct value as expected.
You can now reliably use the Customer ID field in GraphQL queries and mutations for B2B company management.

_LYNX-955_

### Other

#### Enhance REST API to support ability to apply Store Credit for admin-managed orders

No description available.

_AC-16410_

#### Gift options should not persist on empty cart

Fixed an issue where gift options persisted on an empty cart after all items were removed. Gift options now clear automatically when the cart is emptied, ensuring a consistent user experience similar to coupon handling.

_LYNX-786_

#### applyGiftCardToCart mutation error handling

Enhanced error handling for the applyGiftCardToCart mutation to provide more specific messages, such as expired or zero-balance gift cards, improving the user experience. Additionally, the backend now prevents applying extra gift cards to orders that are already free.

_LYNX-787_

#### Enhance Gift Options handling during cart merge

Enhanced gift options handling during cart merges to ensure a more consistent user experience. Gift options now follow a prioritized merging logic, preventing unintended overrides when a guest user logs in and their cart is merged with an existing customer cart.

_LYNX-788_

#### Add clear wishlist operation

Added a new clearWishlist mutation to support bulk operations, allowing all items to be removed from a wishlist in a single action.

_LYNX-790_

#### Introduce exchangeExternalCustomerToken mutation

Introduced new GraphQL mutation exchangeExternalCustomerToken that authenticates users via an integration token and returns both the customer token and associated customer data

_LYNX-815_

#### Documentation for GraphQL API mutations

Documentation updated for GraphQl mutations clearWishlist mutation (2.4.9), confirmCancelOrder mutation (2.4.8), requestGuestOrderCancel mutation (2.4.8), resendConfirmationEmail mutation (2.4.8), exchangeExternalCustomerToken mutation (2.4.9)

_LYNX-821_

#### [AC] Introduce GraphQL queries returning applied group, segments and cart rules ids

GraphQL queries exposed to retrieve encoded uid of applied customer group, customer segments and cart rules.

_LYNX-867_

#### [AC-2.4.9] Introduce OrderTotal.grand_total_excl_tax field

A new field, OrderTotal.grand_total_excl_tax, has been added to the GraphQL order response. This field provides the order's grand total excluding tax, making it easier to access tax-exclusive totals directly from the API.
Benefits:
 - Easily retrieve the grand total excluding tax for any order via GraphQL.
 - Simplifies integration with external systems that require tax-exclusive totals.
 - Reduces the need for custom calculations on the client side.

_LYNX-892_

#### [AC-2.4.9] Introduce REST WebAPI for retrieving customer tokens

A new REST WebAPI endpoint has been introduced to simplify the process of retrieving customer tokens. This enhancement supports integrations such as social login and streamlines customer authentication flows.
Key Features:
 - New endpoint: POST /V1/customers/:customerId/token
- Allows you to generate a token for any customer using their customer ID.
- Supports checking if a customer exists, creating a customer if needed, and retrieving their token—all via REST API.
- Access to this endpoint is protected by appropriate permissions to ensure security.

_LYNX-898_

### PCI, Security

#### Refactor SRI Storage to Be More Performance Efficient

Refactored SRI hash storage to improve performance on multi-theme and multi-locale stores
  Previously, Subresource Integrity (SRI) hashes for all themes and locales within an area were stored in a single sri-hashes.json file. On stores with multiple themes or locales, this file could
  grow large enough to negatively affect page load time on pages such as the checkout.                                                                                                              
  SRI hash storage has been refactored to generate and store separate hash files scoped per area, theme, and locale. Only the hash file relevant to the current theme and locale is loaded for a    
  given page request, significantly reducing the data loaded per request and eliminating the memory and performance impact on multi-theme and multi-locale deployments.

_AC-16113 - [GitHub code contribution](https://github.com/magento/magento2/commit/bc83cd2c)_
