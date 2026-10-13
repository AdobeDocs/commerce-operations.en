# Magento Open Source highlights (v2.4.10)

## Highlights in v2.4.10-alpha1

The following highlights apply to the Magento Open Source 2.4.10-alpha1 release.

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

### Other

#### Upgrade predis/predis from 2.x to 3.x

The Redis client library predis/predis was upgraded from version 2.x to 3.x. This major version upgrade aligns with the latest dependency standards, improves compatibility, and ensures long-term maintainability.

_AC-17101 - [GitHub code contribution](https://github.com/magento/magento2/commit/de7188da)_

#### Upgrade knockout.js from version 3.5.1 to 3.5.3

Upgraded the knockout.js library from version 3.5.1 to 3.5.3. This update brings upstream bug fixes and stability improvements for all UI components using Knockout bindings in both storefront and admin.

_AC-17366 - [GitHub code contribution](https://github.com/magento/magento2/commit/de7188da)_
