# Magento Open Source highlights (v2.4.9)

## Highlights in v2.4.9

The following highlights apply to the Magento Open Source 2.4.9 release.

### APIs

#### Adding a possibility to keep inheritance of product gallery in REST API when updating a product in store view level

Updating product via REST API in a store scope no longer causes product images and videos from inheriting changes from global scope if the media_gallery_entries is omitted from the payload or set to NULL to prevent any changes in the product gallery in that scope. Additionally, it is now possible to restore scope inheritance for product images and video via REST API by setting the corresponding field to NULL.

_ACP2E-4358 - [GitHub code contribution](https://github.com/magento/magento2/commit/f7bbcb4e)_

### Braintree

#### Vaulting Google Pay via the Account Area

In Adobe Commerce 2.4.9, customers can now vault their Google Pay cards via the account area when Google Pay Vault is enabled in Braintree. Vaulted cards appear under stored payment methods, can be used for future purchases at checkout, and can be deleted by the customer. This extends vaulting support beyond Cards and PayPal to Google Pay.

_BUNDLE-3459_

#### Real Time Account Updater (RTAU)

The Real Time Account Updater (RTAU) feature in Adobe Commerce 2.4.9 for Braintree ensures that vaulted Visa, Mastercard, and Discover card details are automatically updated when cards expire or are replaced. This minimizes failed payments, keeps Magento Vault current, and skips unsupported types (prepaid, Apple Pay, Google Pay) without errors.

_BUNDLE-3462_

#### ELO Card type support for Braintree Card Payments

In Adobe Commerce 2.4.9, support for the ELO card type has been added to Braintree Payments. Admins can now enable ELO in the credit card configuration, and customers can successfully place orders using ELO cards at checkout, ensuring seamless transactions through Braintree.

_BUNDLE-3464_

#### Pay Upon Invoice

For Adobe Commerce 2.4.9 (Braintree extension), a new local payment method "Pay Upon Invoice" has been added for German buyers. Pay Upon Invoice is a Buy Now, Pay Later (BNPL) option powered by PayPal + Ratepay ("Rechnungskauf mit Ratepay") that lets customers receive goods first and pay the invoice within 30 days, without needing a PayPal account. Because it's not an instant payment, order finalisation is driven by a server-side webhook from PayPal.

_BUNDLE-3475_

#### Add offers to the Google Pay Express Pay Sheet

For the Braintree extension in Adobe Commerce 2.4.9, the Google Pay Express Pay Sheet now supports promo/offer codes. Shoppers can apply, view, and remove Magento cart promotions directly within the Google Pay sheet, ensuring express checkout customers receive the same discounts and incentives as standard checkout flows.

_BUNDLE-3476_

#### Add Offers to the Apple Pay Express Pay Sheet

For the Braintree extension in Adobe Commerce 2.4.9, the Apple Pay Express Pay Sheet now supports promo/offer codes. Shoppers can apply a coupon directly within the Apple Pay sheet, so express checkout users benefit from the same discounts and campaigns as standard checkout flows.

_BUNDLE-3477_

#### Pay with Apple Pay on Chrome and Firefox

For the Braintree extension in Adobe Commerce 2.4.9, Apple Pay can now be used on Chrome and Firefox, not just Safari. When Apple Pay Express is enabled, Apple Pay buttons are available across supported storefront locations, and customers complete payment by scanning a code with their iPhone.

_BUNDLE-3478_

#### Server Side Shipping Callback

For the Braintree extension in Adobe Commerce 2.4.9, the PayPal Express shipping callback has been moved from client‑side to server‑side. This provides dynamic shipping methods, real‑time cost calculations, and accurate cart‑level details directly in the PayPal modal, improving reliability and laying the groundwork for future features such as Contact Module support, app‑switch flows, and Venmo Express.

_BUNDLE-3479_

#### PayPal Contact Module

For the Braintree extension in Adobe Commerce 2.4.9, a new PayPal Contact Module is introduced for U.S. merchants. When enabled, buyers using PayPal Express can view and update the email address and phone number shared with the merchant directly inside the PayPal modal during express flows (PDP, mini‑cart, cart, checkout express). The chosen contact details are then stored on the Adobe Commerce order.

_BUNDLE-3480_

#### BLIK (Local Payment Method)

For the Braintree extension in Adobe Commerce 2.4.9, BLIK has been added as a new local payment method for Polish shoppers. This enables secure, bank-based BLIK payments within the existing Braintree Local Payment Methods (LPM) flow, improving checkout convenience and conversion for customers in Poland.

_BUNDLE-3481_

#### Cardinal Integration Update CSP Policy

For the Braintree extension in Adobe Commerce 2.4.9, the Content Security Policy (CSP) has been updated to support the latest Cardinal (3‑D Secure) integration requirements. This ensures that all Cardinal-hosted scripts, iframes, and related resources used during 3‑D Secure flows are allowed by the browser's CSP, preventing blocked requests and broken challenge/verification experiences.

_BUNDLE-3485_

### Framework

#### Upgraded web-token/jwt-framework library to the latest major version

As part of continuous security review process, we evaluated the latest major release of the JWT framework to ensure future compatibility and maintain strong security standards. There is no impact on existing functionality in this release.

_AC-13209 - [GitHub code contribution](https://github.com/magento/magento2/commit/2bac8114) - [GitHub code contribution](https://github.com/magento/magento2/commit/09b36ebb) - [GitHub code contribution](https://github.com/magento/magento2/commit/33b81f28)_

#### [Part 2] - Update all js library and npm dependency with latest available version

composer version support was up to the composer version 2.2.x only. Now the support extended to 2.4.x version as well.

_AC-13792 - [GitHub code contribution](https://github.com/magento/magento2/commit/19844aa0)_

#### Replace carlos-mg89/oauth with PHP Native Functions

Replaced the third-party carlos-mg89/oauth library with native PHP OAuth functions to improve security, reduce external dependencies, and enhance platform stability.

_AC-14075 - [GitHub code contribution](https://github.com/magento/magento2/commit/7b8064f7)_

#### Upgrade jquery/uppy and uppy libraries the latest version

Upgraded the Uppy file upload library to version 4.13.4 to enhance file upload capabilities, improve user experience, and address security vulnerabilities in file handling across the Adobe Commerce admin interface and frontend components.

_AC-14307 - [GitHub code contribution](https://github.com/magento/magento2/commit/eb491c05)_

#### Upgrade jquery-validate library to the latest version

Upgraded the jQuery Validate library to version 1.21.0 to enhance form validation capabilities, improve user experience, and ensure modern browser compatibility across all Adobe Commerce forms in both admin and frontend interfaces.

_AC-14403 - [GitHub code contribution](https://github.com/magento/magento2/commit/98b2848a)_

#### Upgrade jquery-ui library to the latest version

Upgraded the jQuery UI library to version 1.14.1 to enhance user interface widgets, improve accessibility, and ensure modern browser compatibility across all Adobe Commerce admin and frontend interface components.

_AC-14417 - [GitHub code contribution](https://github.com/magento/magento2/commit/77c589a6)_

#### Upgrade less.js library to the latest version

Upgraded the Less.js CSS preprocessor to version 4.2.2 to enhance CSS compilation performance, improve syntax support, and modernize the theme build process across all Adobe Commerce frontend and admin themes.

_AC-14418 - [GitHub code contribution](https://github.com/magento/magento2/commit/98b2848a)_

#### Upgrade moment-timezone-with-data.js library to the latest version

Upgraded the Moment Timezone library to version 0.5.43 to enhance timezone handling capabilities, update timezone data with latest IANA Time Zone Database changes, and improve date/time processing accuracy across all Adobe Commerce international and multi-timezone operations.

_AC-14419 - [GitHub code contribution](https://github.com/magento/magento2/commit/98b2848a)_

#### Upgrade underscore.js library to the latest version

Upgraded the Underscore.js utility library to version 1.13.7 to enhance JavaScript functional programming capabilities, improve data manipulation performance, and ensure modern browser compatibility across all Adobe Commerce frontend and admin interface components.

_AC-14420 - [GitHub code contribution](https://github.com/magento/magento2/commit/98b2848a)_

#### Update allure-framework/allure-phpunit version to 3 and remove native dependency in 2.4.9-alpha1

In Adobe Commerce 2.4.9, the allure-framework/allure-phpunit dependency has been upgraded to major version 3, which adds support for PHP 8.4, PHP 8.5 and modernizes our Allure-based test reporting stack. The native dependency previously required by older Allure PHPUnit versions has been removed where applicable, simplifying setup and maintenance.

_AC-14548 - [GitHub code contribution](https://github.com/magento/magento2/commit/87b8b34e)_

#### Upgrade chart.js dependency to the latest version

The chart.js dependency is upgraded to the latest version 4.5.0.

_AC-15133 - [GitHub code contribution](https://github.com/magento/magento2/commit/657f983e)_

#### Add official support for Symfony 7.4 LTS and PHP 8.5 in Adobe Commerce 2.4.9

As part of the Adobe Commerce 2.4.9 platform updates, all Symfony dependencies used by the magento/composer package have been updated to the latest Symfony LTS 7.4 versions. This aligns Commerce's Composer tooling with the current Symfony LTS line and removes previous dependency constraints related to older Symfony versions. In addition all custom classes extending Symfony core classes have updated type declarations and method signatures aligned with the latest Symfony requirements before upgrading to Adobe Commerce 2.4.9. This will prevent compatibility issues and ensure a smooth transition to the updated framework components.

_AC-15170 - [GitHub code contribution](https://github.com/magento/magento2/commit/c127d10b)_

### GraphQL

#### Ensure clearCart GraphQL mutation is available in Open Source

With Adobe Commerce 2.4.9, the clearCart GraphQL mutation is now available to all Open Source users. Previously, this mutation was only accessible in Adobe Commerce, but it is now part of the standard GraphQL cart functionality for Open Source as well.
Documentation for the mutation has been updated to reflect its availability in Open Source for version 2.4.9.
See [clearCart GraphQL mutation documentation](https://developer.adobe.com/commerce/webapi/graphql/schema/cart/mutations/clear-cart/).

_AC-16683 - [GitHub code contribution](https://github.com/magento/magento2/commit/4449d914)_

#### [AC-2.4.9] Merging guest and customer cart logic using Admin Configuration

A new admin configuration option has been introduced to control how guest and customer carts are merged when a shopper signs in. This enhancement gives you flexibility to define the cart merge behavior that best fits your business needs.

_LYNX-889_

#### [AC-2.4.9] Getting historical orders with out of stock products

Historical orders now show product details even if they are now out-of-stock.

_LYNX-913_

#### [AC-2.4.9] [CE] Implement ReCaptcha for missing GraphQL mutations

The ReCaptcha validation is added to updateCustomer, updateCustomerV2, and contactUs mutations.

_LYNX-941_

### Other

#### Captcha / reCAPTCHA is not working for API / GraphQL

In Adobe Commerce 2.4.9, when CAPTCHA (or reCAPTCHA) is enabled for the Create Account form, the same CAPTCHA validation is now enforced for customer account creation via REST and GraphQL APIs.

_AC-16245 - [GitHub code contribution](https://github.com/magento/magento2/commit/fd7f30ee)_

#### braintree branch should be updated with PHP 8.5 support

The Braintree payment extension has been updated to support the latest PHP 8.5 runtime, while maintaining compatibility with PHP 8.4.

_BUNDLE-3493_

#### Add clear wishlist operation

Added a new clearWishlist mutation to support bulk operations, allowing all items to be removed from a wishlist in a single action.

_LYNX-790_

#### Introduce exchangeExternalCustomerToken mutation

Introduced new GraphQL mutation exchangeExternalCustomerToken that authenticates users via an integration token and returns both the customer token and associated customer data

_LYNX-815_

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

### PCI, Security

#### Refactor SRI Storage to Be More Performance Efficient

SRI hash storage now generates separate files per area, theme, and locale, instead of a single large sri-hashes.json. This change ensures only the relevant hash file is loaded for each page, improving performance and reducing memory usage on stores with multiple themes or locales.

_AC-16113 - [GitHub code contribution](https://github.com/magento/magento2/commit/bc83cd2c)_

### Security

#### Improve async/bulk request performance

Fix the performance degradation in bulk asynchronous web endpoints introduced after the APSB25-08 security patch, resulting in increased execution times.

_AC-14078 - [GitHub code contribution](https://github.com/magento/magento2/commit/9a7352b7)_

#### Only require one enabled 2FA provider to be configured per user

Admin users are now required to configure only one of the merchant's enabled 2FA providers (for example, Google Authenticator or U2F) to access the Admin panel. Additional enabled providers can be configured later as needed. Previously, when multiple 2FA providers were enabled (e.g., Google Authenticator and U2F), every Admin user was required to configure all enabled providers before they could sign in. This created friction for users who did not have access to all factors (such as a hardware key for U2F).

_AC-8253 - [GitHub code contribution](https://github.com/magento/security-package/commit/71e7936b)_
