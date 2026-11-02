# Adobe Commerce highlights (v2.4.10)

## Highlights in v2.4.10-alpha1

The following highlights apply to the Adobe Commerce 2.4.10-alpha1 release.

### Braintree

#### Fastlane

Added Fastlane by PayPal support for a faster and more secure guest checkout experience.
Customers can opt in to save their payment and shipping details for faster future purchases.
Returning Fastlane customers can authenticate using a one-time code and retrieve their saved information.
Customers can also add or change their saved cards and shipping addresses during checkout.
Fastlane styling and configuration options are also supported.

_BUNDLE-3521_

#### Braintree Insights

Introduced Braintree Insights to provide merchants with centralized payment performance reporting in Magento Admin.
Provides visibility into transaction, settlement, decline, gateway rejection, and payment method data.
Supports filtering by website, date range, and daily, weekly, or monthly intervals.
Allows merchants to import up to 13 months of historical transaction data for reporting.
Includes data retention and automated cleanup to maintain up to 3 years of transaction data.

_BUNDLE-3522_

#### Swish - Local Payment Method

Introduced Swish as a new Swedish Local Payment Method in the Braintree Magento extension.
Swish is available when the required Swedish merchant, country, currency, and payment configurations are met.
Customers with a Swedish shipping or billing address can complete payments using Swish during checkout.
Added support for successful, cancelled, and failed Swish payment flows with appropriate checkout responses.
Swish is only displayed when all required configuration conditions are satisfied.

_BUNDLE-3523_

#### Upgraded version to v4.9.0

Upgraded the Braintree module from v4.8.0 to v4.9.0.
The upgrade includes the latest Braintree module changes and improvements.
Verified that Braintree checkout and payment processing continue to work as expected after the upgrade.
Existing customer checkout and order creation flows remain functional with the upgraded module.
Basic regression testing was performed to ensure no issues were introduced by the upgrade

_BUNDLE-3530_

### Framework

#### [2.4.10-alpha1] Platform Component Upgrade

Adobe Commerce 2.4.10-alpha1 includes a set of platform dependency upgrades, compatibility improvements, frontend library updates, and stability fixes. The following completed changes are included in this release:

 - Predis: Upgraded `predis/predis` from 2.x to 3.x, improving compatibility with Redis and Valkey environments and keeping the Redis client aligned with the latest supported dependency versions.
 - Magento Composer Installer: Fixed an issue where `magento-composer-installer` could silently leave without completing the installation process, improving reliability of Composer-based installations.
 - Knockout.js: Upgraded Knockout.js from 3.5.1 to 3.5.3, along with the required validation and compatibility updates.
 - Chart.js: Upgraded Chart.js from 4.5.0 to 4.5.1, including the necessary validation and compatibility updates.
 - Less.js: Upgraded Less.js from 4.2.2 to 4.6.4, with associated validation and compatibility updates.
 - Uppy: Upgraded Uppy from 5.0.0 to 5.2.0, including the required validation and compatibility changes.
 - jQuery UI: Upgraded jQuery UI from 1.14.1 to 1.14.2, with the associated validation and compatibility updates.
 - PHP 8.5 Compatibility: Addressed a PHP 8.5 deprecation issue related to `chr()`, ensuring that the function is provided with valid byte values and improving compatibility with PHP 8.5.
 - Catalog Search: Fixed an issue where `catalogsearch_fulltext` reindexing could halt during processing, improving the reliability of catalog search indexing.
 - js-cookie: Upgraded js-cookie from 3.0.5 to 3.0.7 or the applicable supported version, addressing dependency and compatibility requirements.

_AC-17061_

#### Ensure compatibility of B2B 1.5.3-p1/1.5.4-alpha1 with 2.4.10-alpha1, 2.4.9-p1, 2.4.8-p6, 2.4.7-p11 and 2.4.6-p16

B2B 1.5.4-alpha1 is compatible with the following Adobe Commerce release lines: 2.4.9, 2.4.8, 2.4.7 and 2.4.6.

_AC-17100_

#### Upgrade and modernize NPM dependencies

Updated the following npm dependencies to their latest secure versions to address known security vulnerabilities:

- underscore
- imagemin-svgo
- glob
- serve-static
- grunt
- less
- uglify-js
- marked
- clean-css
- minimist
- trim-newlines
- terser
- css-select
- nth-check
- semver-regex
- http-cache-semantics
- js-yaml
- package-json

These dependency updates mitigate the identified security vulnerabilities while maintaining the existing application functionality.

_AC-17372_

#### Upgrade NPM dependency: underscore.js (1.13.7 → 1.13.8)

Updated underscore.js from 1.13.7 to 1.13.8 to include the latest upstream fixes and stability improvements.

_AC-17486 - [GitHub code contribution](https://github.com/magento/magento2/commit/c69ec9c5)_

#### Upgrade  NPM Dependency: imagemin-svgo (9.0.0 → 12.0.0)

Updated imagemin-svgo from 9.0.0 to 12.0.0 to include the latest upstream fixes, security updates, and SVG optimization improvements.

_AC-17657 - [GitHub code contribution](https://github.com/magento/magento2/commit/c69ec9c5)_

#### Upgrade NPM dependency: eslint-formatter-junit (8.40.0 → 9.0.1)

Updated eslint-formatter-junit from 8.40.0 to 9.0.1 to include the latest upstream fixes and compatibility improvements for ESLint reporting.

_AC-17659 - [GitHub code contribution](https://github.com/magento/magento2/commit/c69ec9c5)_

#### Upgrade NPM dependency: glob (11.0.0 → 13.0.0)

Updated glob from 11.0.0 to 13.0.0 to include the latest upstream fixes, performance improvements, and compatibility enhancements.

_AC-17660 - [GitHub code contribution](https://github.com/magento/magento2/commit/c69ec9c5)_

#### Upgrade NPM dependency: grunt-eslint (25.0.0 → 26.0.0)

Updated grunt-eslint from 25.0.0 to 26.0.0 to include the latest upstream fixes and compatibility improvements.

_AC-17661 - [GitHub code contribution](https://github.com/magento/magento2/commit/c69ec9c5)_

#### Upgrade NPM dependency: serve-static (1.16.2 → 2.2.1)

Updated serve-static from 1.16.2 to 2.2.1 to include the latest upstream fixes, security updates, and compatibility improvements.

_AC-17662 - [GitHub code contribution](https://github.com/magento/magento2/commit/c69ec9c5)_

#### Upgrade latest NPM Dependencies for Grunt and Less

Updated Grunt and Less to the latest supported versions, improving frontend build stability and compatibility.

_AC-17663 - [GitHub code contribution](https://github.com/magento/magento2/commit/c69ec9c5)_

#### Upgrade NPM Override Dependencies to the Latest Supported Versions

Updated multiple NPM override dependencies to the latest supported versions, improving security, build stability, and compatibility.

_AC-17664 - [GitHub code contribution](https://github.com/magento/magento2/commit/c69ec9c5)_

#### [B2B] Purchase orders not auto-converting to sales order with ActiveMQ

Fixed an issue where purchase orders placed via the storefront with auto-approval enabled were not automatically converted to sales orders when using ActiveMQ and running consumers via cron (bin/magento cron:run). Previously, messages were added to the ActiveMQ queue but not processed unless the consumer was started manually via CLI. With this fix, the consumer now processes messages as expected after cron runs, ensuring seamless order conversion for B2B merchants using ActiveMQ.

_AC-17679_

#### Symfony L2 cache optimization and legacy cache backward compatibility

Adobe Commerce 2.4.10 now provides optimized Symfony L2 Cache support while maintaining the existing Zend-based cache implementation as the default.

Merchants who want to use Symfony Cache must explicitly enable it and update the required cache configuration specific to the Symfony L1/L2 implementation. Existing merchants who continue using the Zend-based cache do not need to make any configuration changes.

This dual-cache approach provides merchants with the flexibility to adopt Symfony Cache based on their requirements while ensuring backward compatibility with existing cache configurations and deployments.

_AC-17865_

### Other

#### Admin management of country sub-regions (States and Provinces)

Merchants can now manage country sub-regions (such as states and provinces) directly from the Admin interface. This new feature allows merchants to:

 - View, add, edit, deactivate, or remove regions for any country.
 - Instantly make new regions available as dropdown options at checkout, in customer address forms, and during admin order creation—no code changes required.
 - Edit region display names (including localized names) and ISO codes.
 - Deactivate regions referenced by existing orders, addresses, or tax rules (ensuring historical data remains accurate), while preventing hard deletion of such regions.
 - All predefined regions remain unchanged and are now visible and manageable in the new interface.

This feature is fully backward-compatible and ensures that customer-facing and API address behavior remains consistent.

_AC-16192_

#### Upgrade predis/predis from 2.x to 3.x

The Redis client library predis/predis was upgraded from version 2.x to 3.x. This major version upgrade aligns with the latest dependency standards, improves compatibility, and ensures long-term maintainability.

_AC-17101 - [GitHub code contribution](https://github.com/magento/magento2/commit/de7188da)_

#### Upgrade knockout.js from version 3.5.1 to 3.5.3

Upgraded the knockout.js library from version 3.5.1 to 3.5.3. This update brings upstream bug fixes and stability improvements for all UI components using Knockout bindings in both storefront and admin.

_AC-17366 - [GitHub code contribution](https://github.com/magento/magento2/commit/de7188da)_

#### Upgrade Varnish to version 9 for 2.4.10-alpha1

Adobe Commerce 2.4.10 is compatible with Varnish version 9.0.

_AC-17972_
