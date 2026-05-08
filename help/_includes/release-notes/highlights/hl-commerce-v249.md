# Adobe Commerce highlights (v2.4.9)

## Highlights in v2.4.9

The following highlights apply to the Adobe Commerce 2.4.9 release.

### REST API changes

#### REST API product gallery inheritance control at store view level

Updating a product via REST API in a store scope no longer causes product images and videos to inherit changes from global scope when `media_gallery_entries` is omitted from the payload or set to `NULL`. It is now also possible to restore scope inheritance for product images and videos via REST API by setting the corresponding field to `NULL`.

When updating products via REST API at the store view level:

- Omitting `media_gallery_entries` or setting it to NULL will now preserve inheritance from the default/global gallery.
- To restore inheritance for specific gallery attributes (such as `label`, `position`, `disabled`, `video_title`, `video_description`), set those fields to NULL within the `media_gallery_entries` array.

This change ensures store views can easily maintain or restore default gallery values, reducing confusion and making gallery management more consistent.

_ACP2E-4358 - [GitHub code contribution](https://github.com/magento/magento2/commit/f7bbcb4e)_

### GraphQL API changes

#### `clearCart` GraphQL mutation is now available in Magento Open Source

The [`clearCart`](https://developer.adobe.com/commerce/webapi/graphql/schema/cart/mutations/clear-cart/) GraphQL mutation is now available to all Magento Open Source users. Previously, this mutation was only accessible in Adobe Commerce.

_AC-16683 - [GitHub code contribution](https://github.com/magento/magento2/commit/4449d914)_

#### More descriptive errors from the `applyGiftCardToCart` GraphQL mutation

Enhanced error handling for the `applyGiftCardToCart` mutation. The mutation now returns specific error messages for cases such as expired or zero-balance gift cards, improving the shopper experience. Additionally, the backend prevents applying extra gift cards to orders that are already free.

_LYNX-787_

#### New `clearWishlist` GraphQL mutation removes all wishlist items at once

Added a `clearWishlist` mutation that removes all items from a wishlist in a single call.

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

#### Gift options clear automatically when the cart is emptied

Fixed an issue where gift options persisted on an empty cart after all items were removed. Gift options now clear automatically when the cart is emptied, matching the existing behavior for coupons.

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

Historical orders now display full product details for line items even after the product has gone out of stock, so customers and merchants retain a complete record of what was purchased.

_LYNX-913_

#### reCAPTCHA validation added to `updateCustomer`, `updateCustomerV2`, and `contactUs` GraphQL mutations

When reCAPTCHA is enabled for the corresponding storefront forms, the `updateCustomer`, `updateCustomerV2`, and `contactUs` GraphQL mutations now enforce the same validation, helping prevent automated abuse through the API.

_LYNX-941_

#### reCAPTCHA validation added to the `applyCouponsToCart` GraphQL mutation

When reCAPTCHA is enabled for the coupon form, the `applyCouponsToCart` GraphQL mutation now enforces the same validation, helping prevent coupon-code enumeration through the API.

_LYNX-942_

#### B2B GraphQL API `customer_id` field restored and fully supported

The `customer_id` field in the B2B GraphQL API is restored and now returns the correct value in company management queries and mutations. Previously, the field was deprecated and returned `null`, which limited its usefulness for B2B integrations.

_LYNX-955_

### Admin UI

#### Actions menu for the catalog price rules grid

The **Catalog Price Rules** grid in the Commerce Admin now includes an **Actions** menu, allowing merchants to activate, deactivate, or delete multiple rules at once. This brings catalog price rule management in line with the existing bulk actions available for **Cart Price Rules**, significantly reducing the time required to manage large rule sets.

_AC-13916_

#### Mobile view preview for content staging

The staging preview feature in the Admin now renders browser-simulated mobile device previews accurately, so merchants can see how a staged update will appear on a mobile device before it goes live.

_ACP2E-3397 - [GitHub code contribution](https://github.com/magento/magento2/commit/520f9e30)_

#### New admin configuration controls guest and customer cart merge behavior at sign-in

Merchants can now choose how cart items are merged when a guest signs in and already has a customer cart:

- **Guest Priority** — Use the guest cart quantity.
- **Customer Priority** — Use the customer cart quantity.
- **Merge Quantities** (default) — Sum both quantities.

Configure this behavior in **Stores** > **Configuration** > **Sales** > **Checkout**, under **Cart Merge Preference**. The setting applies to all product types, giving merchants full control over how guest and customer carts are combined at sign-in.

_LYNX-889_

### Braintree

#### Express checkout

- **Promotional offers in the Google Pay express pay sheet**

  The Google Pay express pay sheet now supports promo and offer codes. Shoppers can apply, view, and remove Commerce cart promotions directly within the Google Pay sheet, so express checkout customers receive the same discounts and incentives as standard checkout flows.

  _BUNDLE-3476_

- **Promotional offers in the Apple Pay express pay sheet**

  The Apple Pay express pay sheet now supports promo and offer codes. Shoppers can apply a coupon directly within the Apple Pay sheet, so express checkout users benefit from the same discounts and campaigns as standard checkout flows.

  _BUNDLE-3477_

- **Apple Pay on Chrome and Firefox**

  Apple Pay can now be used on Chrome and Firefox, not just Safari. When Apple Pay Express is enabled, Apple Pay buttons are available on the PDP, mini-cart, cart, and checkout pages, and customers complete payment by scanning a code with their iPhone.

  _BUNDLE-3478_

- **Server-side shipping callback for PayPal Express**

  The PayPal Express shipping callback has been moved from client-side to server-side. This provides dynamic shipping methods, real-time cost calculations, and accurate cart-level details directly in the PayPal modal, improving reliability and laying the groundwork for future features such as Contact Module support, app-switch flows, and Venmo Express.

  _BUNDLE-3479_

- **PayPal Contact Module for U.S. merchant express checkout**

  A new PayPal Contact Module is introduced for U.S. merchants. When enabled, buyers using PayPal Express can view and update the email address and phone number shared with the merchant directly inside the PayPal modal during express flows (PDP, mini-cart, cart, checkout express). The chosen contact details are then stored on the Commerce order.

  _BUNDLE-3480_

#### Payment methods

- **ELO card type support for Braintree payments**

  Added support for the ELO card type in Braintree Payments. Admins can enable ELO in the credit card configuration, and customers can pay with ELO cards at checkout.

  _BUNDLE-3464_

- **BLIK local payment method for Polish shoppers**

  Added BLIK as a new local payment method for Polish shoppers. This enables secure, bank-based BLIK payments within the existing Braintree Local Payment Methods (LPM) flow, improving checkout convenience and conversion for customers in Poland.

  _BUNDLE-3481_

- **Pay Upon Invoice — new BNPL payment method for Germany**

  Added Pay Upon Invoice as a new local payment method for German buyers. Pay Upon Invoice is a Buy Now, Pay Later (BNPL) option powered by PayPal and Ratepay ("Rechnungskauf mit Ratepay") that lets customers receive goods first and pay the invoice within 30 days without needing a PayPal account. Because it is not an instant payment, order finalization is driven by a server-side webhook from PayPal.

  _BUNDLE-3475_

#### Card vaulting

- **Vaulting Google Pay via the account area**

  Customers can now vault their Google Pay cards via the account area when Google Pay Vault is enabled in Braintree. Vaulted cards appear under stored payment methods, can be used for future purchases at checkout, and can be deleted by the customer. This extends vaulting support beyond Cards and PayPal to Google Pay.

  _BUNDLE-3459_

- **Real-time account updater (RTAU) for Braintree vaulted cards**

  The Real-Time Account Updater (RTAU) feature added to Braintree ensures that vaulted Visa, Mastercard, and Discover card details are automatically updated when cards expire or are replaced. This minimizes failed payments, keeps the Commerce Vault current, and skips unsupported types (prepaid, Apple Pay, Google Pay) without errors.

  _BUNDLE-3462_

#### Admin tools

- **Link Commerce order to Braintree portal**

  A Braintree Portal link is now added to the order details in the Commerce Admin. Clicking the link opens the related transaction in the Braintree Portal (in a new tab), using the Merchant ID and Transaction ID from the Commerce order. This allows direct cross-referencing without logging into both systems separately.

  _BUNDLE-3461_

#### Security and compatibility

- **Cardinal integration content security policy update for 3-D Secure**

  The Content Security Policy (CSP) has been updated to support the latest Cardinal (3-D Secure) integration requirements. This ensures that all Cardinal-hosted scripts, iframes, and related resources used during 3-D Secure flows are allowed by the browser's CSP, preventing blocked requests and broken challenge or verification experiences.

  _BUNDLE-3485_

- **Braintree payment extension PHP 8.5 compatibility**

  The Braintree payment extension has been updated to support the PHP 8.5 runtime, while maintaining compatibility with PHP 8.4.

  _BUNDLE-3493_

### Platform and infrastructure

#### Faster page loads on multi-theme and multi-locale stores after SRI hash storage refactor

SRI hash storage now generates separate files per area, theme, and locale, instead of a single large `sri-hashes.json` file. This change ensures that only the relevant hash file is loaded for each page, improving page load times and reducing memory usage on stores with multiple themes or locales.

_AC-16113 - [GitHub code contribution](https://github.com/magento/magento2/commit/bc83cd2c)_

#### Add compatibility with PHPUnit 12

The Adobe Commerce Composer dependency is upgraded to `phpunit/phpunit` 12.x. All tests are updated for compatibility, improving security and alignment with the latest PHPUnit features. This upgrade keeps Adobe Commerce ready for future PHP and PHPUnit releases.

_AC-14808_

#### Add compatibility with RabbitMQ 4.2

RabbitMQ 4.2 is now a supported message broker. This update is a short-term compatibility path that lets merchants who rely on the AMQP protocol continue using RabbitMQ ahead of RabbitMQ 4.1 end-of-support in February 2026, without an immediate migration to STOMP. For long-term deployments, see [Apache ActiveMQ Artemis is the long-term replacement for RabbitMQ](#apache-activemq-artemis-is-the-long-term-replacement-for-rabbitmq) below.

_AC-16117_

#### Apache ActiveMQ Artemis is the long-term replacement for RabbitMQ

Apache ActiveMQ Artemis is the recommended long-term message broker for Adobe Commerce, driven by end-of-support risks associated with RabbitMQ 4.1. ActiveMQ Artemis is now fully supported across Commerce release lines 2.4.6 through 2.4.9, including Adobe Commerce Cloud with AWS ActiveMQ for cloud-native deployments, and supports STOMP configuration for queue consumers and publishers.

Existing RabbitMQ 4 installations remain compatible for merchants who prefer to continue using their current message queue service in the short term — see [Add compatibility with RabbitMQ 4.2](#add-compatibility-with-rabbitmq-42) above. Plan a migration to ActiveMQ Artemis for long-term support.

_AC-14558_

#### Add support for Valkey 8.x and Valkey 9.x LTS

Adobe Commerce 2.4.9 expands support for Valkey as a Redis-compatible cache backend:

- **Valkey 8.x** — Comprehensive support introduced in Adobe Commerce 2.4.9, including full CLI command parity with Redis and updated Admin and Cloud configuration options for seamless setup. This work is driven by Redis 7.2 end-of-support and licensing changes, giving merchants a reliable, fully supported alternative to Redis across Commerce release lines 2.4.5 through 2.4.9.
- **Valkey 9.x LTS** — Now a compatible caching backend, giving merchants long-term support, improved platform performance, and a seamless migration path that does not require a major version upgrade.

_AC-14103, AC-14604, AC-16122_

#### Add support for OpenSearch 3.x

Adobe Commerce 2.4.9 is fully compatible with OpenSearch 3.x, with the latest minor release now the recommended search engine. Merchants benefit from improved performance, security, and long-term support, while backward compatibility with OpenSearch 2.x is retained.

_AC-11846, AC-16403_

#### Add support for MariaDB 11.8 and 12.x

MariaDB 11.8 and 12.x are now supported database versions, enabling merchants to adopt the latest releases for improved SQL performance and long-term platform stability. MariaDB 11.4 remains supported.

_AC-16533_

### PHP and Composer

#### PHP 8.5 compatibility

Adobe Commerce 2.4.9 now supports PHP 8.5 and PHP 8.4, allowing you to run your store on the latest secure and compliant PHP versions. All core features, bundled extensions (including Page Builder, B2B, Braintree, and more), and Adobe SaaS services are compatible with PHP 8.5.

- PHP 8.5 and 8.4 are fully supported.
- PHP 8.3 is allowed for upgrade purposes only (not recommended for production).
- Ensures PCI compliance and future-proofs your Adobe Commerce installation.

_AC-15615_

#### PHP 8.2 support removed

Starting with Adobe Commerce 2.4.9, PHP 8.2 is no longer supported. The platform now targets PHP 8.3 and later, with core code, dependencies, and tooling updated to run cleanly and reliably on PHP 8.4 and 8.5.

_AC-15758_

#### Composer 2.9 compatibility verified

Adobe Commerce 2.4.9 is fully compatible with Composer 2.x, including Composer 2.9. Backward compatibility with earlier Composer 2.x releases is preserved, ensuring a stable build and deployment experience for merchants and developers using the latest Composer releases.

_AC-14481_

### Framework

#### JWT framework security and compatibility update

As part of continuous platform security review, the web-token JWT framework dependency has been evaluated and updated to the latest major version, ensuring future compatibility and strong security standards for token-based authentication across Commerce integrations. Existing functionality is fully preserved.

_AC-13209 - [GitHub code contribution](https://github.com/magento/magento2/commit/2bac8114) - [GitHub code contribution](https://github.com/magento/magento2/commit/09b36ebb) - [GitHub code contribution](https://github.com/magento/magento2/commit/33b81f28)_

#### Adobe Commerce Functional Testing Framework updated to Symfony LTS dependencies

The Adobe Commerce Functional Testing Framework (MFTF) has been updated to use the latest Symfony LTS dependencies, including symfony/config, as required by the web-token/jwt-framework upgrade. This resolves prior dependency conflicts and ensures a stable, supported stack for functional testing.

_AC-13244_

#### Native PHP OAuth functions replace third-party library

The third-party `carlos-mg89/oauth` library has been replaced with native PHP OAuth functions, improving security, reducing external dependencies, and enhancing platform stability.

_AC-14075 - [GitHub code contribution](https://github.com/magento/magento2/commit/7b8064f7)_

#### Symfony Cache component replaces Zend_Cache

Starting with Adobe Commerce 2.4.9, the deprecated Zend_Cache component has been replaced by the Symfony Cache component. This update enhances cache performance and maintainability, and ensures long-term compatibility with PHP 8.x and future platform updates. Existing cache backends and cache management commands remain fully supported, with no changes required for current integrations.

_AC-15823_

#### WYSIWYG editor migrated from TinyMCE to HugeRTE

Due to the end of support for TinyMCE 5 and 6 and licensing incompatibilities with TinyMCE 7, the Adobe Commerce WYSIWYG editor has been migrated to the open-source [HugeRTE](https://hugerte.org/) editor. This migration ensures Adobe Commerce remains compliant with open-source licensing, avoids known TinyMCE 6 vulnerabilities, and delivers a modern, supported editing experience for merchants and developers.

_AC-14568_

#### Native MVC implementation replaces Laminas MVC

Adobe Commerce has introduced a native MVC implementation, replacing the legacy Laminas MVC, to ensure long-term compatibility and stability beyond PHP 8.5. This change strengthens performance, reduces external dependencies, and provides a more future-ready foundation for Commerce.

_AC-15160_

#### Official Symfony 7.4 LTS support

As part of the Adobe Commerce 2.4.9 platform updates, all Symfony dependencies have been updated to the latest Symfony LTS 7.4 versions. All custom classes extending Symfony core classes have updated type declarations and method signatures aligned with the latest Symfony requirements, preventing compatibility issues and ensuring a smooth transition to the updated framework components.

_AC-15170 - [GitHub code contribution](https://github.com/magento/magento2/commit/c127d10b)_

#### Allure PHPUnit dependency upgraded to version 3

The `allure-framework/allure-phpunit` dependency has been upgraded to major version 3, which adds support for PHP 8.4 and PHP 8.5 and modernizes the Allure-based test reporting stack. The native dependency previously required by older Allure PHPUnit versions has been removed, simplifying setup and maintenance.

_AC-14548 - [GitHub code contribution](https://github.com/magento/magento2/commit/87b8b34e)_

#### New Relic reporting updated to NerdGraph API

The New Relic reporting module has been updated to support New Relic's NerdGraph (GraphQL) Change Tracking API while fully preserving the existing REST v2 deployment marker integration. The change delivers richer deployment metadata, regional endpoint support (US and EU), and configurability through Admin settings without breaking existing setups.

_AC-15461_

#### JavaScript library updates

- **Chart.js updated to version 4.5.0**

  Upgraded the Chart.js JavaScript charting library to version 4.5.0 to improve chart rendering performance, enhance visual capabilities, and address security vulnerabilities in the admin dashboard and reporting modules.

  _AC-14304, AC-15133 - [GitHub code contribution](https://github.com/magento/magento2/commit/768b4442), [GitHub code contribution](https://github.com/magento/magento2/commit/657f983e)_

- **Uppy file upload library updated to version 4.13.4**

  Upgraded the Uppy file upload library to version 4.13.4 to enhance file upload capabilities, improve user experience, and address security vulnerabilities in file handling across the Adobe Commerce admin interface and frontend components.

  _AC-14307 - [GitHub code contribution](https://github.com/magento/magento2/commit/eb491c05)_

- **jQuery Validate library upgraded to version 1.21.0**

  Upgraded the jQuery Validate library to version 1.21.0 to enhance form validation capabilities, improve user experience, and ensure modern browser compatibility across all Adobe Commerce forms in both admin and frontend interfaces.

  _AC-14403 - [GitHub code contribution](https://github.com/magento/magento2/commit/98b2848a)_

- **jQuery UI library upgraded to version 1.14.1**

  Upgraded the jQuery UI library to version 1.14.1 to enhance user interface widgets, improve accessibility, and ensure modern browser compatibility across all Adobe Commerce admin and frontend interface components.

  _AC-14417 - [GitHub code contribution](https://github.com/magento/magento2/commit/77c589a6)_

- **Less.js CSS preprocessor upgraded to version 4.2.2**

  Upgraded the Less.js CSS preprocessor to version 4.2.2 to enhance CSS compilation performance, improve syntax support, and modernize the theme build process across all Adobe Commerce frontend and admin themes.

  _AC-14418 - [GitHub code contribution](https://github.com/magento/magento2/commit/98b2848a)_

- **Moment Timezone library upgraded to version 0.5.43**

  Upgraded the Moment Timezone library (`moment-timezone-with-data.js`) to version 0.5.43 to enhance timezone handling capabilities, update timezone data with the latest IANA Time Zone Database changes, and improve date and time processing accuracy across all Adobe Commerce international and multi-timezone operations.

  _AC-14419 - [GitHub code contribution](https://github.com/magento/magento2/commit/98b2848a)_

- **Underscore.js utility library upgraded to version 1.13.7**

  Upgraded the Underscore.js utility library to version 1.13.7 to enhance JavaScript functional programming capabilities, improve data manipulation performance, and ensure modern browser compatibility across all Adobe Commerce frontend and admin interface components.

  _AC-14420 - [GitHub code contribution](https://github.com/magento/magento2/commit/98b2848a)_

### Security

#### CAPTCHA validation now enforced for REST and GraphQL APIs

When CAPTCHA (or reCAPTCHA) is enabled for the Create Account form, the same CAPTCHA validation is now enforced for customer account creation via REST and GraphQL APIs.

_AC-16245_

#### Improved async/bulk request performance

This fix addresses performance degradation in bulk asynchronous web API endpoints introduced after the APSB25-08 security patch, restoring expected execution times.

_AC-14078 - [GitHub code contribution](https://github.com/magento/magento2/commit/9a7352b7)_

#### Simplified two-factor authentication configuration

Admin users are now required to configure only one of the merchant's enabled 2FA providers (for example, Google Authenticator or U2F) to access the Admin panel. Additional enabled providers can be configured later as needed. Previously, when multiple 2FA providers were enabled, every Admin user was required to configure all of them before they could sign in, creating friction for users who did not have access to every provider.

_AC-8253 - [GitHub code contribution](https://github.com/magento-commerce/security-package/commit/41e5a26bd36528cb6b1bdc27b249696a2c721779)_

### Shipping

#### Migrate USPS integration to RESTful USPS APIs

To comply with USPS's announced retirement of the legacy Web Tools APIs, Adobe Commerce has migrated its USPS integration to the new RESTful USPS APIs.

Key enhancements:

- Dual API Support: Admin users can now choose between the legacy Web Tools API and the new RESTful USPS API via configuration settings.
- Authentication Upgrade: Uses OAuth 2.0 for secure API access.
- Improved Data Format: Uses JSON instead of XML for cleaner, more efficient communication.
- New Admin Fields:
  - Gateway REST URL (based on mode: Development or Live)
  - Client ID and Secret
  - Account Type, Account Number
  - CRID, MID, Mailer Identification Code
  - AES/ITN for international shipments
  - REST-specific allowed shipping methods

This migration ensures Adobe Commerce remains compliant with USPS standards, improves system reliability, and future-proofs shipping integrations for merchants.

_AC-13257_

#### Migrate DHL integration to MyDHL RESTful APIs

The built-in DHL shipping integration now supports MyDHL RESTful APIs, while preserving compatibility with the legacy DHL Express XML API. Merchants can choose which DHL API to use in the Admin, benefiting from modern REST capabilities without breaking existing XML-based setups.

_AC-13258_
