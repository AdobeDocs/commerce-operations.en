# Magento Open Source highlights (v2.4.9)

## Highlights in v2.4.9

The following highlights apply to the Magento Open Source 2.4.9 release.

### REST API updates

#### Adding a possibility to keep inheritance of product gallery in REST API when updating a product in store view level

Updating product via REST API in a store scope no longer causes product images and videos from inheriting changes from global scope if the media_gallery_entries is omitted from the payload or set to NULL to prevent any changes in the product gallery in that scope. Additionally, it is now possible to restore scope inheritance for product images and video via REST API by setting the corresponding field to NULL

_ACP2E-4358 - [GitHub code contribution](https://github.com/magento/magento2/commit/f7bbcb4e)_

#### Apply store credit to admin-managed orders through the REST API

A new REST API endpoint enables admins—and integrations using admin or integration tokens—to apply or remove customer store credit on admin-managed carts. This closes the parity gap between the Admin UI and the REST API, where previously only customers could apply their own store credit through `/V1/carts/mine/balance/apply`.

_AC-16410_

#### New REST API endpoint to retrieve customer tokens

A new REST API endpoint has been introduced to simplify the process of retrieving customer tokens. This enhancement supports integrations such as social login and streamlines customer authentication flows.

Key Features:

- New endpoint: `POST /V1/customers/:customerId/token`
- Allows you to generate a token for any customer using their `customerId`.
- Supports checking if a customer exists, creating a customer if needed, and retrieving their token—all via REST API.
- Access to this endpoint is protected by appropriate permissions to ensure security.

_LYNX-898_

### GraphQL API updates

#### CAPTCHA/reCAPTCHA enforcement for customer account creation via APIs

In Adobe Commerce 2.4.9, when CAPTCHA (or reCAPTCHA) is enabled for the Create Account form, the same CAPTCHA validation is now enforced for customer account creation via REST and GraphQL APIs.

_AC-16245 - [GitHub code contribution](https://github.com/magento/magento2/commit/fd7f30ee)_

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

### Framework

#### Investigate the latest major version of web-token/jwt-framework

As part of continuous security review process, we evaluated the latest major release of the JWT framework to ensure future compatibility and maintain strong security standards. There is no impact on existing functionality in this release.

_AC-13209 - [GitHub code contribution](https://github.com/magento/magento2/commit/2bac8114) - [GitHub code contribution](https://github.com/magento/magento2/commit/09b36ebb) - [GitHub code contribution](https://github.com/magento/magento2/commit/33b81f28)_

#### Replace  `carlos-mg89/oauth` with PHP Native Functions

Replaced the third-party `carlos-mg89/oauth` library with native PHP OAuth functions to improve security, reduce external dependencies, and enhance platform stability.

_AC-14075 - [GitHub code contribution](https://github.com/magento/magento2/commit/7b8064f7)_

#### Investigate the latest version chart.js

Upgraded the Chart.js JavaScript charting library to the latest version 4.4.8 to improve chart rendering performance, enhance visual capabilities, and address security vulnerabilities in the admin dashboard and reporting modules.

_AC-14304 - [GitHub code contribution](https://github.com/magento/magento2/commit/768b4442)_

#### Investigate the latest version jquery/uppy and uppy

Upgraded the Uppy file upload library to version 4.13.4 to enhance file upload capabilities, improve user experience, and address security vulnerabilities in file handling across the Adobe Commerce admin interface and frontend components.

_AC-14307 - [GitHub code contribution](https://github.com/magento/magento2/commit/eb491c05)_

#### Investigate the latest version jquery-validate

Upgraded the jQuery Validate library to version 1.21.0 to enhance form validation capabilities, improve user experience, and ensure modern browser compatibility across all Adobe Commerce forms in both admin and frontend interfaces.

_AC-14403 - [GitHub code contribution](https://github.com/magento/magento2/commit/98b2848a)_

#### Investigate the latest version jquery-ui

Upgraded the jQuery UI library to version 1.14.1 to enhance user interface widgets, improve accessibility, and ensure modern browser compatibility across all Adobe Commerce admin and frontend interface components.

_AC-14417 - [GitHub code contribution](https://github.com/magento/magento2/commit/77c589a6)_

#### Investigate the latest version less.js

Upgraded the Less.js CSS preprocessor to version 4.2.2 to enhance CSS compilation performance, improve syntax support, and modernize the theme build process across all Adobe Commerce frontend and admin themes.

_AC-14418 - [GitHub code contribution](https://github.com/magento/magento2/commit/98b2848a)_

#### Investigate the latest version moment-timezone-with-data.js

Upgraded the Moment Timezone library to version 0.5.43 to enhance timezone handling capabilities, update timezone data with latest IANA Time Zone Database changes, and improve date/time processing accuracy across all Adobe Commerce international and multi-timezone operations.

_AC-14419 - [GitHub code contribution](https://github.com/magento/magento2/commit/98b2848a)_

#### Investigate the latest version underscore.js

Upgraded the Underscore.js utility library to version 1.13.7 to enhance JavaScript functional programming capabilities, improve data manipulation performance, and ensure modern browser compatibility across all Adobe Commerce frontend and admin interface components.

_AC-14420 - [GitHub code contribution](https://github.com/magento/magento2/commit/98b2848a)_

#### Update allure-framework/allure-phpunit version to 3 and remove native dependency in 2.4.9-alpha1

In Adobe Commerce 2.4.9, the allure-framework/allure-phpunit dependency has been upgraded to major version 3, which adds support for PHP 8.4, PHP 8.5 and modernizes our Allure-based test reporting stack. The native dependency previously required by older Allure PHPUnit versions has been removed where applicable, simplifying setup and maintenance.

_AC-14548 - [GitHub code contribution](https://github.com/magento/magento2/commit/87b8b34e)_

#### Upgrade chart.js dependency to the latest version

The chart.js dependency is upgraded to the latest version 4.5.0

_AC-15133 - [GitHub code contribution](https://github.com/magento/magento2/commit/657f983e)_

#### Add official support for Symfony 7.4 LTS and PHP 8.5 in Adobe Commerce 2.4.9

As part of the Adobe Commerce 2.4.9 platform updates, all Symfony dependencies used by the magento/composer package have been updated to the latest Symfony LTS 7.4 versions. This aligns Commerce's Composer tooling with the current Symfony LTS line and removes previous dependency constraints related to older Symfony versions. In addition all custom classes extending Symfony core classes have updated type declarations and method signatures aligned with the latest Symfony requirements before upgrading to Adobe Commerce 2.4.9. This will prevent compatibility issues and ensure a smooth transition to the updated framework components.

_AC-15170 - [GitHub code contribution](https://github.com/magento/magento2/commit/c127d10b)_

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

### Security

#### Improve async/bulk request performance

Fix the performance degradation in bulk asynchronous web endpoints introduced after the APSB25-08 security patch, resulting in increased execution times.

_AC-14078 - [GitHub code contribution](https://github.com/magento/magento2/commit/9a7352b7)_

#### Only require one enabled 2FA provider to be configured per user

Admin users are now required to configure only one of the merchant's enabled 2FA providers (for example, Google Authenticator or U2F) to access the Admin panel. Additional enabled providers can be configured later as needed. Previously, when multiple 2FA providers were enabled (e.g., Google Authenticator and U2F), every Admin user was required to configure all enabled providers before they could sign in. This created friction for users who did not have access to all factors (such as a hardware key for U2F).

_AC-8253 - [GitHub code contribution](https://github.com/magento/security-package/commit/71e7936b)_

#### Faster page loads on multi-theme and multi-locale stores after SRI hash storage refactor

SRI hash storage now generates separate files per area, theme, and locale, instead of a single large `sri-hashes.json` file. This change ensures that only the relevant hash file is loaded for each page, improving performance and reducing memory usage on stores with multiple themes or locales.

_AC-16113 - [GitHub code contribution](https://github.com/magento/magento2/commit/bc83cd2c)_

### Staging & Preview

#### [Feature Request] Content staging preview in mobile view

The staging preview feature in the admin panel now enables browser-simulated mobile device previews to be rendered accurately, providing a visual representation of how the staging update will appear on a mobile device.

_ACP2E-3397 - [GitHub code contribution](https://github.com/magento/magento2/commit/520f9e30)_
