# Adobe Commerce release notes (v2.4.9-alpha3)

## Highlights in v2.4.9-alpha3

The following highlights apply to the Adobe Commerce 2.4.9-alpha3 release.

### Braintree

#### Vaulting Google Pay via the Account Area

In Magento 2.4.9-alpha3, customers can now vault their Google Pay cards via the account area when Google Pay Vault is enabled in Braintree. Vaulted cards appear under stored payment methods, can be used for future purchases at checkout, and can be deleted by the customer. This extends vaulting support beyond Cards and PayPal to Google Pay.

_BUNDLE-3459_

#### Link Magento Order to Braintree Portal Order

In Magento 2.4.9-alpha3, a Braintree Portal Link is now added to the order details in the Magento Admin. Clicking the link opens the related transaction in the Braintree Portal (in a new tab), using the Merchant ID and Transaction ID from the Magento order. This allows direct cross-referencing without logging into both systems separately.

_BUNDLE-3461_

#### Real Time Account Updater (RTAU)

The Real Time Account Updater (RTAU) feature in Magento 2.4.9-alpha3 for Braintree ensures that vaulted Visa, Mastercard, and Discover card details are automatically updated when cards expire or are replaced. This minimizes failed payments, keeps Magento Vault current, and skips unsupported types (prepaid, Apple Pay, Google Pay) without errors.

_BUNDLE-3462_

#### ELO Card type support for Braintree Card Payments

In Magento 2.4.9-alpha3, support for the ELO card type has been added to Braintree Payments. Admins can now enable ELO in the credit card configuration, and customers can successfully place orders using ELO cards at checkout, ensuring seamless transactions through Braintree.

_BUNDLE-3464_

### Framework

#### Migration form RabbitMQ to Apache ActiveMQ

_AC-14558_

#### Upgrade chart.js dependency to the latest version

The chart.js dependency is upgraded to the latest version 4.5.0

_AC-15133 - [GitHub code contribution](https://github.com/magento/magento2/commit/657f983e)_

#### Migration from Laminas MVC

Adobe Commerce has introduced a native MVC implementation, replacing the legacy Laminas MVC, to ensure long-term compatibility and stability beyond PHP 8.5. This change strengthens performance, reduces external dependencies, and provides a more future-ready foundation for Commerce

_AC-15160_

### Security

For the latest information about the security bug fixes, see [Adobe Security Bulletin APSB25-94](https://helpx.adobe.com/security/products/magento/apsb25-94.html).

{{$include /help/_includes/release-notes/highlights/security-2025-10.md}}
