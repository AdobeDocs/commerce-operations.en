---
title: Payment configuration paths reference
description: Learn about payment configuration paths and method values in Adobe Commerce Admin. Discover PayPal, credit card, and payment gateway configuration options.
feature: Configuration, Payments
exl-id: f3e356aa-7262-4d99-9ed4-d77cbd93708c
---
# Payment configuration paths reference

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Sales** > **Payment Methods**.

The [`magento app:config:dump` command](../cli/export-configuration.md) writes these values to the shared configuration file, `app/etc/config.php`, which should be in source control. To optionally override any configuration settings or to set sensitive settings, see [Use environment variables to override configuration settings](override-config-settings.md#environment-variables). This topic does _not_ list [sensitive and system-specific values](config-reference-sens.md).

The settings are further organized by payment method.

## PayPal paths

| Name  | Config path | Commerce only? | Encrypted? |
|--------------|--------------|--------------|--------------|
| Enable this Solution | `payment/payflowpro/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enable In-Context Checkout Experience | `payment/paypal_express/in_context` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enable PayPal Credit | `payment/payflow_express_bml/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enable PayPal Credit | `payment/paypal_express_bml/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Display | `payment/paypal_express_bml/homepage_display` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Position | `payment/paypal_express_bml/homepage_position` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Size | `payment/paypal_express_bml/homepage_size` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Display | `payment/paypal_express_bml/categorypage_display` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Position | `payment/paypal_express_bml/categorypage_position` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Size | `payment/paypal_express_bml/categorypage_size` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Display | `payment/paypal_express_bml/productpage_display` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Position | `payment/paypal_express_bml/productpage_position` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Size | `payment/paypal_express_bml/productpage_size` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Display | `payment/paypal_express_bml/checkout_display` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Position | `payment/paypal_express_bml/checkout_position` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Size | `payment/paypal_express_bml/checkout_size` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Display on Product Details Page | `payment/payflow_express/visible_on_product` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Display on Shopping Cart | `payment/payflow_express/visible_on_cart` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment Applicable From | `payment/payflow_express/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Countries Payment Applicable From | `payment/payflow_express/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enable SSL verification | `payment/payflow_express/verify_peer` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Transfer Cart Line Items | `payment/payflow_express/line_items_enabled` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Skip Order Review Step | `payment/paypal_express/skip_order_review_step` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Transfer Cart Line Items | `payment/paypal_express/line_items_enabled` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Transfer Shipping Options | `payment/paypal_express/transfer_shipping_options` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Shortcut Buttons Flavor | `paypal/wpp/button_flavor` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enable PayPal Guest Checkout | `payment/paypal_express/solution_type` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Require Customer's Billing Address | `payment/paypal_express/require_billing_address` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Billing Agreement Signup | `payment/paypal_express/allow_ba_signup` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment/paypal_billing_agreement/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment/paypal_billing_agreement/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment/paypal_billing_agreement/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment Action | `payment/paypal_billing_agreement/payment_action` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment Applicable From | `payment/paypal_billing_agreement/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Countries Payment Applicable From | `payment/paypal_billing_agreement/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enable SSL verification | `payment/paypal_billing_agreement/verify_peer` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Transfer Cart Line Items | `payment/paypal_billing_agreement/line_items_enabled` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Allow in Billing Agreement Wizard | `payment/paypal_billing_agreement/allow_billing_agreement_wizard` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enable Automatic Fetching | `paypal/fetch_reports/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Schedule | `paypal/fetch_reports/schedule` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Time of Day | `paypal/fetch_reports/time` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| PayPal Product Logo | `paypal/style/logo` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Page Style | `paypal/style/page_style` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Header Image URL | `paypal/style/paypal_hdrimg` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Header Background Color | `paypal/style/paypal_hdrbackcolor` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Header Border Color | `paypal/style/paypal_hdrbordercolor` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Page Background Color | `paypal/style/paypal_payflowcolor` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enable this Solution | `payment/paypal_express/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order PayPal Credit | `payment/paypal_express_bml/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment/paypal_express/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment/paypal_express/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment Action | `payment/paypal_express/payment_action` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Display on Product Details Page | `payment/paypal_express/visible_on_product` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Authorization Honor Period (days) | `payment/paypal_express/authorization_honor_period` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Order Valid Period (days) | `payment/paypal_express/order_valid_period` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Number of Child Authorizations | `payment/paypal_express/child_authorization_number` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Display on Shopping Cart | `payment/paypal_express/visible_on_cart` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment Applicable From | `payment/paypal_express/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Countries Payment Applicable From | `payment/paypal_express/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enable SSL verification | `payment/paypal_express/verify_peer` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Scheduled Fetching | `payment_all_paypal/express_checkout/settings_ec/settings_ec_advanced/express_checkout_settlement_report/heading_schedule` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| PayPal Merchant Pages Style | `payment_all_paypal/express_checkout/settings_ec/settings_ec_advanced/express_checkout_frontend/paypal_pages` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |

{style="table-layout:auto"}

## PayPal Payments Pro

| Name  | Config path | Commerce only? | Encrypted? |
|--------------|--------------|--------------|--------------|
| API Authentication Methods | `paypal/wpp/api_authentication` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| API Uses Proxy | `paypal/wpp/use_proxy` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Scheduled Fetching | `payment_all_paypal/payments_pro_hosted_solution/pphs_settings/pphs_settings_advanced/pphs_settlement_report/heading_schedule` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Scheduled Fetching | `payment_all_paypal/payments_pro_hosted_solution_without_bml/pphs_settings/pphs_settings_advanced/pphs_settlement_report/heading_schedule` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |

{style="table-layout:auto"}

## Payments Pro Hosted Solution (United Kingdom)

These options are available only if you chose the United Kingdom as the [merchant country](../reference/config-reference-sens.md#payment-sensitive-and-system-specific-paths).

| Name  | Config path | Commerce only? | Encrypted? |
|--------------|--------------|--------------|--------------|
| Enable this Solution | `payment/hosted_pro/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment/hosted_pro/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment/hosted_pro/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment Action | `payment/hosted_pro/payment_action` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Display Express Checkout in the Payment Information step | `payment/hosted_pro/display_ec` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment Applicable From | `payment/hosted_pro/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Countries Payment Applicable From | `payment/hosted_pro/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enable SSL verification | `payment/hosted_pro/verify_peer` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |

{style="table-layout:auto"}

## PayPal Payflow Pro

| Name  | Config path | Commerce only? | Encrypted? |
|--------------|--------------|--------------|--------------|
| Vault Enabled | `payment/payflowpro_cc_vault/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment/payflowpro/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Vault Title | `payment/payflowpro_cc_vault/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment/payflowpro/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment Action | `payment/payflowpro/payment_action` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Allowed Credit Card Types | `payment/payflowpro/cctypes` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment Applicable From | `payment/payflowpro/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Countries Payment Applicable From | `payment/payflowpro/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enable SSL verification | `payment/payflowpro/verify_peer` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Require CVV Entry | `payment/payflowpro/useccv` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Reject Transaction if: | `payment_all_paypal/paypal_payflowpro/settings_paypal_payflow/settings_paypal_payflow_advanced/paypal_payflow_avs_check/heading_avs_settings` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| AVS Street Does Not Match | `payment/payflowpro/avs_street` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| AVS Zip Does Not Match | `payment/payflowpro/avs_zip` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| International AVS Indicator Does Not Match | `payment/payflowpro/avs_international` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Card Security Code Does Not Match | `payment/payflowpro/avs_security_code` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Vendor | `payment/payflowpro/vendor` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Use Proxy | `payment/payflowpro/use_proxy` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment/payflow_express/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment/payflow_express/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment Action | `payment/payflow_express/payment_action` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Scheduled Fetching | `payment_all_paypal/paypal_payflowpro/settings_paypal_payflow/settings_paypal_payflow_advanced/paypal_payflow_settlement_report/heading_schedule` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| PayPal Merchant Pages Style | `payment_all_paypal/payflow_link/settings_payflow_link/settings_payflow_link_advanced/payflow_link_frontend/paypal_pages` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Partner | `payment/payflow_advanced/partner` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Vendor | `payment/payflow_advanced/vendor` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Use Proxy | `payment/payflow_advanced/use_proxy` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enable this Solution | `payment/payflow_advanced/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment/payflow_advanced/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment/payflow_advanced/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment Action | `payment/payflow_advanced/payment_action` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment Applicable From | `payment/payflow_advanced/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Countries Payment Applicable From | `payment/payflow_advanced/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enable SSL verification | `payment/payflow_advanced/verify_peer` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| CVV Entry is Editable | `payment/payflow_advanced/csc_editable` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Require CVV Entry | `payment/payflow_advanced/csc_required` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Send Email Confirmation | `payment/payflow_advanced/email_confirmation` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |

{style="table-layout:auto"}

## PayPal Payflow Link

| Name  | Config path | Commerce only? | Encrypted? |
|--------------|--------------|--------------|--------------|
| Partner | `payment/payflow_link/partner` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Vendor | `payment/payflow_link/vendor` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enable Payflow Link | `payment/payflow_link/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enable Express Checkout | `payment/payflow_express/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order PayPal Credit | `payment/payflow_express_bml/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment Applicable From | `payment/payflow_link/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Countries Payment Applicable From | `payment/payflow_link/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enable SSL verification | `payment/payflow_link/verify_peer` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| CVV Entry is Editable | `payment/payflow_link/csc_editable` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Require CVV Entry | `payment/payflow_link/csc_required` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Send Email Confirmation | `payment/payflow_link/email_confirmation` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Scheduled Fetching | `payment_all_paypal/payflow_link/settings_payflow_link/settings_payflow_link_advanced/payflow_link_settlement_report/heading_schedule` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment/payflow_link/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment/payflow_link/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment Action | `payment/payflow_link/payment_action` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |

{style="table-layout:auto"}

## Zero Subtotal Checkout paths

| Name  | Config path | Commerce only? | Encrypted? |
|--------------|--------------|--------------|--------------|
| Enabled | `payment/free/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment/free/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment/free/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Automatically Invoice All Items | `payment/free/payment_action` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment/free/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment/free/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment/free/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |

{style="table-layout:auto"}

## Cash on Delivery Payment paths

| Name  | Config path | Commerce only? | Encrypted? |
|--------------|--------------|--------------|--------------|
| Enabled | `payment/cashondelivery/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment/cashondelivery/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment/cashondelivery/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment/cashondelivery/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment/cashondelivery/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Instructions | `payment/cashondelivery/instructions` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment/cashondelivery/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment/cashondelivery/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment/cashondelivery/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |

{style="table-layout:auto"}

## Bank Transfer Payment paths

| Name  | Config path | Commerce only? | Encrypted? |
|--------------|--------------|--------------|--------------|
| Enabled | `payment/banktransfer/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment/banktransfer/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment/banktransfer/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment/banktransfer/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment/banktransfer/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Instructions | `payment/banktransfer/instructions` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment/banktransfer/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment/banktransfer/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment/banktransfer/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |

{style="table-layout:auto"}

## Check or Money Order paths

| Name  | Config path | Commerce only? | Encrypted? |
|--------------|--------------|--------------|--------------|
| Enabled | `payment/checkmo/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment/checkmo/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment/checkmo/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment/checkmo/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment/checkmo/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Make Check Payable to | `payment/checkmo/payable_to` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment/checkmo/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment/checkmo/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment/checkmo/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |

{style="table-layout:auto"}

## Purchase Order paths

| Name  | Config path | Commerce only? | Encrypted? |
|--------------|--------------|--------------|--------------|
| Enabled | `payment/purchaseorder/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment/purchaseorder/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment/purchaseorder/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment/purchaseorder/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment/purchaseorder/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment/purchaseorder/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment/purchaseorder/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment/purchaseorder/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |

{style="table-layout:auto"}

## International paths

>[!INFO]
>
>The available paths are determined by your choice of [Merchant country](../reference/config-reference-sens.md#payment-sensitive-and-system-specific-paths).

| Name  | Config path | Commerce only? | Encrypted? |
|--------------|--------------|--------------|--------------|
| SFTP Credentials | `payment_nz/express_checkout_other/settings_ec/settings_ec_advanced/express_checkout_settlement_report/heading_sftp` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Scheduled Fetching | `payment_nz/express_checkout_other/settings_ec/settings_ec_advanced/express_checkout_settlement_report/heading_schedule` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| PayPal Merchant Pages Style | `payment_nz/express_checkout_other/settings_ec/settings_ec_advanced/express_checkout_frontend/paypal_pages` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enable this Solution | `payment/wps_express/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Scheduled Fetching | `payment_nz/paypal_group_all_in_one/wps_other/settings_ec/settings_ec_advanced/express_checkout_settlement_report/heading_schedule` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| PayPal Merchant Pages Style | `payment_nz/paypal_group_all_in_one/wps_other/settings_ec/settings_ec_advanced/express_checkout_frontend/paypal_pages` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Credit Card Settings | `payment_nz/paypal_payment_gateways/paypal_payflowpro_nz/settings_paypal_payflow/heading_cc` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Reject Transaction if: | `payment_nz/paypal_payment_gateways/paypal_payflowpro_nz/settings_paypal_payflow/settings_paypal_payflow_advanced/paypal_payflow_avs_check/heading_avs_settings` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Scheduled Fetching | `payment_nz/paypal_payment_gateways/paypal_payflowpro_nz/settings_paypal_payflow/settings_paypal_payflow_advanced/paypal_payflow_settlement_report/heading_schedule` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_nz/free/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_nz/free/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_nz/free/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Automatically Invoice All Items | `payment_nz/free/payment_action` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_nz/free/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_nz/free/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_nz/free/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_nz/cashondelivery/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_nz/cashondelivery/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_nz/cashondelivery/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_nz/cashondelivery/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_nz/cashondelivery/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Instructions | `payment_nz/cashondelivery/instructions` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_nz/cashondelivery/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_nz/cashondelivery/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_nz/cashondelivery/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_nz/banktransfer/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_nz/banktransfer/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_nz/banktransfer/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_nz/banktransfer/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_nz/banktransfer/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Instructions | `payment_nz/banktransfer/instructions` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_nz/banktransfer/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_nz/banktransfer/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_nz/banktransfer/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_nz/checkmo/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_nz/checkmo/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_nz/checkmo/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_nz/checkmo/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_nz/checkmo/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Make Check Payable to | `payment_nz/checkmo/payable_to` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Send Check to | `payment_nz/checkmo/mailing_address` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_nz/checkmo/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_nz/checkmo/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_nz/checkmo/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_nz/purchaseorder/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_nz/purchaseorder/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_nz/purchaseorder/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_nz/purchaseorder/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_nz/purchaseorder/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_nz/purchaseorder/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_nz/purchaseorder/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_nz/purchaseorder/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_nz/authorizenet_directpost/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment Action | `payment_nz/authorizenet_directpost/payment_action` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_nz/authorizenet_directpost/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_nz/authorizenet_directpost/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Accepted Currency | `payment_nz/authorizenet_directpost/currency` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Debug | `payment_nz/authorizenet_directpost/debug` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Credit Card Types | `payment_nz/authorizenet_directpost/cctypes` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Credit Card Verification | `payment_nz/authorizenet_directpost/useccv` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_nz/authorizenet_directpost/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_nz/authorizenet_directpost/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_nz/authorizenet_directpost/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_nz/authorizenet_directpost/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_nz/authorizenet_directpost/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_nz/cybersource/active` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment Action | `payment_nz/cybersource/payment_action` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Title | `payment_nz/cybersource/title` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| New Order Status | `payment_nz/cybersource/order_status` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Debug | `payment_nz/cybersource/debug` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Credit Card Types | `payment_nz/cybersource/cctypes` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment from Applicable Countries | `payment_nz/cybersource/allowspecific` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment from Specific Countries | `payment_nz/cybersource/specificcountry` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Minimum Order Total | `payment_nz/cybersource/min_order_total` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Maximum Order Total | `payment_nz/cybersource/max_order_total` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Sort Order | `payment_nz/cybersource/sort_order` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Enabled | `payment_nz/worldpay/active` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Title | `payment_nz/worldpay/title` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Allow To Edit Contact Information | `payment_nz/worldpay/fix_contact` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Hide Contact Information | `payment_nz/worldpay/hide_contact` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Signature Fields | `payment_nz/worldpay/signature_fields` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Debug | `payment_nz/worldpay/debug` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment Action for Test | `payment_nz/worldpay/test_action` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment Action | `payment_nz/worldpay/payment_action` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment From Applicable Countries | `payment_nz/worldpay/allowspecific` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment From Specific Countries | `payment_nz/worldpay/specificcountry` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Set Order Status to Suspected Fraud for CVV | `payment_nz/worldpay/cvv_fraud_case` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Set Order Status to Suspected Fraud for Postcode AVS | `payment_nz/worldpay/avs_fraud_case` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Sort Order | `payment_nz/worldpay/sort_order` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Enabled | `payment_nz/eway/active` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Connection Type | `payment_nz/eway/connection_type` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Title | `payment_nz/eway/title` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment Action | `payment_nz/eway/payment_action` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Debug | `payment_nz/eway/debug` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Credit Card Types | `payment_nz/eway/cctypes` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment from Applicable Countries | `payment_nz/eway/allowspecific` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment from Specific Countries | `payment_nz/eway/specificcountry` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Sort Order | `payment_nz/eway/sort_order` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Scheduled Fetching | `payment_hk/express_checkout_other/settings_ec/settings_ec_advanced/express_checkout_settlement_report/heading_schedule` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| PayPal Merchant Pages Style | `payment_hk/express_checkout_other/settings_ec/settings_ec_advanced/express_checkout_frontend/paypal_pages` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Scheduled Fetching | `payment_hk/paypal_group_all_in_one/payments_pro_hosted_solution_hk/pphs_settings/pphs_settings_advanced/pphs_settlement_report/heading_schedule` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Scheduled Fetching | `payment_hk/paypal_group_all_in_one/wps_other/settings_ec/settings_ec_advanced/express_checkout_settlement_report/heading_schedule` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| PayPal Merchant Pages Style | `payment_hk/paypal_group_all_in_one/wps_other/settings_ec/settings_ec_advanced/express_checkout_frontend/paypal_pages` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_hk/free/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_hk/free/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_hk/free/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Automatically Invoice All Items | `payment_hk/free/payment_action` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_hk/free/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_hk/free/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_hk/free/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_hk/cashondelivery/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_hk/cashondelivery/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_hk/cashondelivery/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_hk/cashondelivery/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_hk/cashondelivery/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Instructions | `payment_hk/cashondelivery/instructions` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_hk/cashondelivery/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_hk/cashondelivery/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_hk/cashondelivery/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_hk/banktransfer/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_hk/banktransfer/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_hk/banktransfer/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_hk/banktransfer/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_hk/banktransfer/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Instructions | `payment_hk/banktransfer/instructions` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_hk/banktransfer/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_hk/banktransfer/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_hk/banktransfer/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_hk/checkmo/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_hk/checkmo/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_hk/checkmo/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_hk/checkmo/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_hk/checkmo/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_hk/checkmo/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_hk/checkmo/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_hk/checkmo/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_hk/purchaseorder/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_hk/purchaseorder/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_hk/purchaseorder/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_hk/purchaseorder/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_hk/purchaseorder/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_hk/purchaseorder/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_hk/purchaseorder/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_hk/purchaseorder/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_hk/authorizenet_directpost/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment Action | `payment_hk/authorizenet_directpost/payment_action` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_hk/authorizenet_directpost/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_hk/authorizenet_directpost/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Accepted Currency | `payment_hk/authorizenet_directpost/currency` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Debug | `payment_hk/authorizenet_directpost/debug` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Credit Card Types | `payment_hk/authorizenet_directpost/cctypes` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Credit Card Verification | `payment_hk/authorizenet_directpost/useccv` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_hk/authorizenet_directpost/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_hk/authorizenet_directpost/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_hk/authorizenet_directpost/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_hk/authorizenet_directpost/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_hk/authorizenet_directpost/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_hk/cybersource/active` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment Action | `payment_hk/cybersource/payment_action` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Title | `payment_hk/cybersource/title` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| New Order Status | `payment_hk/cybersource/order_status` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Debug | `payment_hk/cybersource/debug` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Credit Card Types | `payment_hk/cybersource/cctypes` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment from Applicable Countries | `payment_hk/cybersource/allowspecific` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment from Specific Countries | `payment_hk/cybersource/specificcountry` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Minimum Order Total | `payment_hk/cybersource/min_order_total` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Maximum Order Total | `payment_hk/cybersource/max_order_total` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Sort Order | `payment_hk/cybersource/sort_order` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Enabled | `payment_hk/worldpay/active` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Title | `payment_hk/worldpay/title` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Allow To Edit Contact Information | `payment_hk/worldpay/fix_contact` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Hide Contact Information | `payment_hk/worldpay/hide_contact` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Debug | `payment_hk/worldpay/debug` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment Action for Test | `payment_hk/worldpay/test_action` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment Action | `payment_hk/worldpay/payment_action` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment From Applicable Countries | `payment_hk/worldpay/allowspecific` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment From Specific Countries | `payment_hk/worldpay/specificcountry` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Set Order Status to Suspected Fraud for CVV | `payment_hk/worldpay/cvv_fraud_case` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Set Order Status to Suspected Fraud for Postcode AVS | `payment_hk/worldpay/avs_fraud_case` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Sort Order | `payment_hk/worldpay/sort_order` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Enabled | `payment_hk/eway/active` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Connection Type | `payment_hk/eway/connection_type` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Title | `payment_hk/eway/title` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Sandbox Mode | `payment_hk/eway/sandbox_flag` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment Action | `payment_hk/eway/payment_action` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Debug | `payment_hk/eway/debug` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Credit Card Types | `payment_hk/eway/cctypes` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment from Applicable Countries | `payment_hk/eway/allowspecific` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment from Specific Countries | `payment_hk/eway/specificcountry` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Sort Order | `payment_hk/eway/sort_order` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Scheduled Fetching | `payment_es/express_checkout_other/settings_ec/settings_ec_advanced/express_checkout_settlement_report/heading_schedule` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| PayPal Merchant Pages Style | `payment_es/express_checkout_other/settings_ec/settings_ec_advanced/express_checkout_frontend/paypal_pages` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Scheduled Fetching | `payment_es/paypal_group_all_in_one/payments_pro_hosted_solution_es/pphs_settings/pphs_settings_advanced/pphs_settlement_report/heading_schedule` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Scheduled Fetching | `payment_es/paypal_group_all_in_one/wps_other/settings_ec/settings_ec_advanced/express_checkout_settlement_report/heading_schedule` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| PayPal Merchant Pages Style | `payment_es/paypal_group_all_in_one/wps_other/settings_ec/settings_ec_advanced/express_checkout_frontend/paypal_pages` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_es/free/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_es/free/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_es/free/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Automatically Invoice All Items | `payment_es/free/payment_action` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_es/free/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_es/free/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_es/free/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_es/cashondelivery/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_es/cashondelivery/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_es/cashondelivery/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_es/cashondelivery/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_es/cashondelivery/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Instructions | `payment_es/cashondelivery/instructions` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_es/cashondelivery/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_es/cashondelivery/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_es/cashondelivery/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_es/banktransfer/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_es/banktransfer/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_es/banktransfer/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_es/banktransfer/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_es/banktransfer/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Instructions | `payment_es/banktransfer/instructions` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_es/banktransfer/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_es/banktransfer/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_es/banktransfer/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_es/checkmo/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_es/checkmo/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_es/checkmo/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_es/checkmo/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_es/checkmo/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Make Check Payable to | `payment_es/checkmo/payable_to` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_es/checkmo/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_es/checkmo/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_es/checkmo/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_es/purchaseorder/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_es/purchaseorder/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_es/purchaseorder/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_es/purchaseorder/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_es/purchaseorder/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_es/purchaseorder/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_es/purchaseorder/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_es/purchaseorder/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_es/authorizenet_directpost/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment Action | `payment_es/authorizenet_directpost/payment_action` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_es/authorizenet_directpost/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_es/authorizenet_directpost/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Accepted Currency | `payment_es/authorizenet_directpost/currency` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Debug | `payment_es/authorizenet_directpost/debug` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Credit Card Types | `payment_es/authorizenet_directpost/cctypes` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Credit Card Verification | `payment_es/authorizenet_directpost/useccv` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_es/authorizenet_directpost/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_es/authorizenet_directpost/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_es/authorizenet_directpost/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_es/authorizenet_directpost/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_es/authorizenet_directpost/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_es/cybersource/active` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment Action | `payment_es/cybersource/payment_action` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Title | `payment_es/cybersource/title` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Profile ID | `payment_es/cybersource/profile_id` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) | ![Encrypted](/help/assets/configuration/cloud-enc.png) |
| New Order Status | `payment_es/cybersource/order_status` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Debug | `payment_es/cybersource/debug` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Credit Card Types | `payment_es/cybersource/cctypes` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment from Applicable Countries | `payment_es/cybersource/allowspecific` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment from Specific Countries | `payment_es/cybersource/specificcountry` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Minimum Order Total | `payment_es/cybersource/min_order_total` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Maximum Order Total | `payment_es/cybersource/max_order_total` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Sort Order | `payment_es/cybersource/sort_order` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Enabled | `payment_es/worldpay/active` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Title | `payment_es/worldpay/title` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Installation ID | `payment_es/worldpay/installation_id` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Remote Admin Installation ID | `payment_es/worldpay/admin_installation_id` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Allow To Edit Contact Information | `payment_es/worldpay/fix_contact` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Hide Contact Information | `payment_es/worldpay/hide_contact` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Signature Fields | `payment_es/worldpay/signature_fields` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Test Mode | `payment_es/worldpay/sandbox_flag` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment Action for Test | `payment_es/worldpay/test_action` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment Action | `payment_es/worldpay/payment_action` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment From Applicable Countries | `payment_es/worldpay/allowspecific` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment From Specific Countries | `payment_es/worldpay/specificcountry` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Set Order Status to Suspected Fraud for CVV | `payment_es/worldpay/cvv_fraud_case` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Set Order Status to Suspected Fraud for Postcode AVS | `payment_es/worldpay/avs_fraud_case` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Sort Order | `payment_es/worldpay/sort_order` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Enabled | `payment_es/eway/active` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Connection Type | `payment_es/eway/connection_type` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Title | `payment_es/eway/title` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment Action | `payment_es/eway/payment_action` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Debug | `payment_es/eway/debug` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Credit Card Types | `payment_es/eway/cctypes` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment from Applicable Countries | `payment_es/eway/allowspecific` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment from Specific Countries | `payment_es/eway/specificcountry` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Sort Order | `payment_es/eway/sort_order` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Scheduled Fetching | `payment_it/express_checkout_other/settings_ec/settings_ec_advanced/express_checkout_settlement_report/heading_schedule` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| PayPal Merchant Pages Style | `payment_it/express_checkout_other/settings_ec/settings_ec_advanced/express_checkout_frontend/paypal_pages` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Scheduled Fetching | `payment_it/paypal_group_all_in_one/payments_pro_hosted_solution_it/pphs_settings/pphs_settings_advanced/pphs_settlement_report/heading_schedule` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Scheduled Fetching | `payment_it/paypal_group_all_in_one/wps_other/settings_ec/settings_ec_advanced/express_checkout_settlement_report/heading_schedule` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| PayPal Merchant Pages Style | `payment_it/paypal_group_all_in_one/wps_other/settings_ec/settings_ec_advanced/express_checkout_frontend/paypal_pages` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_it/free/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_it/free/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_it/free/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Automatically Invoice All Items | `payment_it/free/payment_action` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_it/free/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_it/free/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_it/free/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_it/cashondelivery/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_it/cashondelivery/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_it/cashondelivery/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_it/cashondelivery/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_it/cashondelivery/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Instructions | `payment_it/cashondelivery/instructions` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_it/cashondelivery/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_it/cashondelivery/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_it/cashondelivery/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_it/banktransfer/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_it/banktransfer/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_it/banktransfer/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_it/banktransfer/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_it/banktransfer/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Instructions | `payment_it/banktransfer/instructions` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_it/banktransfer/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_it/banktransfer/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_it/banktransfer/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_it/checkmo/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_it/checkmo/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_it/checkmo/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_it/checkmo/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_it/checkmo/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_it/checkmo/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_it/checkmo/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_it/checkmo/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_it/purchaseorder/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_it/purchaseorder/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_it/purchaseorder/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_it/purchaseorder/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_it/purchaseorder/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_it/purchaseorder/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_it/purchaseorder/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_it/purchaseorder/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_it/authorizenet_directpost/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment Action | `payment_it/authorizenet_directpost/payment_action` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_it/authorizenet_directpost/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_it/authorizenet_directpost/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Accepted Currency | `payment_it/authorizenet_directpost/currency` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Debug | `payment_it/authorizenet_directpost/debug` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Credit Card Types | `payment_it/authorizenet_directpost/cctypes` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Credit Card Verification | `payment_it/authorizenet_directpost/useccv` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_it/authorizenet_directpost/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_it/authorizenet_directpost/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_it/authorizenet_directpost/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_it/authorizenet_directpost/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_it/authorizenet_directpost/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_it/cybersource/active` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment Action | `payment_it/cybersource/payment_action` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Title | `payment_it/cybersource/title` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| New Order Status | `payment_it/cybersource/order_status` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Debug | `payment_it/cybersource/debug` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Credit Card Types | `payment_it/cybersource/cctypes` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment from Applicable Countries | `payment_it/cybersource/allowspecific` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment from Specific Countries | `payment_it/cybersource/specificcountry` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Minimum Order Total | `payment_it/cybersource/min_order_total` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Maximum Order Total | `payment_it/cybersource/max_order_total` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Sort Order | `payment_it/cybersource/sort_order` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Enabled | `payment_it/worldpay/active` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Title | `payment_it/worldpay/title` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Allow To Edit Contact Information | `payment_it/worldpay/fix_contact` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Hide Contact Information | `payment_it/worldpay/hide_contact` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Signature Fields | `payment_it/worldpay/signature_fields` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Debug | `payment_it/worldpay/debug` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment Action for Test | `payment_it/worldpay/test_action` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment Action | `payment_it/worldpay/payment_action` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment From Applicable Countries | `payment_it/worldpay/allowspecific` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment From Specific Countries | `payment_it/worldpay/specificcountry` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Set Order Status to Suspected Fraud for CVV | `payment_it/worldpay/cvv_fraud_case` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Set Order Status to Suspected Fraud for Postcode AVS | `payment_it/worldpay/avs_fraud_case` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Sort Order | `payment_it/worldpay/sort_order` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Enabled | `payment_it/eway/active` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Connection Type | `payment_it/eway/connection_type` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Title | `payment_it/eway/title` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment Action | `payment_it/eway/payment_action` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Debug | `payment_it/eway/debug` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Credit Card Types | `payment_it/eway/cctypes` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment from Applicable Countries | `payment_it/eway/allowspecific` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment from Specific Countries | `payment_it/eway/specificcountry` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Sort Order | `payment_it/eway/sort_order` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Scheduled Fetching | `payment_fr/express_checkout_other/settings_ec/settings_ec_advanced/express_checkout_settlement_report/heading_schedule` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| PayPal Merchant Pages Style | `payment_fr/express_checkout_other/settings_ec/settings_ec_advanced/express_checkout_frontend/paypal_pages` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Scheduled Fetching | `payment_fr/paypal_group_all_in_one/payments_pro_hosted_solution_fr/pphs_settings/pphs_settings_advanced/pphs_settlement_report/heading_schedule` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Scheduled Fetching | `payment_fr/paypal_group_all_in_one/wps_other/settings_ec/settings_ec_advanced/express_checkout_settlement_report/heading_schedule` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| PayPal Merchant Pages Style | `payment_fr/paypal_group_all_in_one/wps_other/settings_ec/settings_ec_advanced/express_checkout_frontend/paypal_pages` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_fr/free/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_fr/free/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_fr/free/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Automatically Invoice All Items | `payment_fr/free/payment_action` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_fr/free/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_fr/free/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_fr/free/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_fr/cashondelivery/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_fr/cashondelivery/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_fr/cashondelivery/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_fr/cashondelivery/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_fr/cashondelivery/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Instructions | `payment_fr/cashondelivery/instructions` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_fr/cashondelivery/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_fr/cashondelivery/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_fr/cashondelivery/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_fr/banktransfer/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_fr/banktransfer/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_fr/banktransfer/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_fr/banktransfer/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_fr/banktransfer/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Instructions | `payment_fr/banktransfer/instructions` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_fr/banktransfer/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_fr/banktransfer/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_fr/banktransfer/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_fr/checkmo/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_fr/checkmo/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_fr/checkmo/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_fr/checkmo/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_fr/checkmo/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_fr/checkmo/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_fr/checkmo/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_fr/checkmo/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_fr/purchaseorder/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_fr/purchaseorder/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_fr/purchaseorder/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_fr/purchaseorder/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_fr/purchaseorder/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_fr/purchaseorder/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_fr/purchaseorder/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_fr/purchaseorder/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_fr/authorizenet_directpost/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment Action | `payment_fr/authorizenet_directpost/payment_action` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_fr/authorizenet_directpost/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_fr/authorizenet_directpost/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Accepted Currency | `payment_fr/authorizenet_directpost/currency` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Debug | `payment_fr/authorizenet_directpost/debug` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Credit Card Types | `payment_fr/authorizenet_directpost/cctypes` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Credit Card Verification | `payment_fr/authorizenet_directpost/useccv` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_fr/authorizenet_directpost/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_fr/authorizenet_directpost/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_fr/authorizenet_directpost/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_fr/authorizenet_directpost/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_fr/authorizenet_directpost/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_fr/cybersource/active` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment Action | `payment_fr/cybersource/payment_action` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Title | `payment_fr/cybersource/title` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| New Order Status | `payment_fr/cybersource/order_status` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Debug | `payment_fr/cybersource/debug` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Credit Card Types | `payment_fr/cybersource/cctypes` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment from Applicable Countries | `payment_fr/cybersource/allowspecific` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment from Specific Countries | `payment_fr/cybersource/specificcountry` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Minimum Order Total | `payment_fr/cybersource/min_order_total` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Maximum Order Total | `payment_fr/cybersource/max_order_total` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Sort Order | `payment_fr/cybersource/sort_order` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Enabled | `payment_fr/worldpay/active` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Title | `payment_fr/worldpay/title` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Allow To Edit Contact Information | `payment_fr/worldpay/fix_contact` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Hide Contact Information | `payment_fr/worldpay/hide_contact` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Debug | `payment_fr/worldpay/debug` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment Action for Test | `payment_fr/worldpay/test_action` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment Action | `payment_fr/worldpay/payment_action` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment From Applicable Countries | `payment_fr/worldpay/allowspecific` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment From Specific Countries | `payment_fr/worldpay/specificcountry` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Set Order Status to Suspected Fraud for CVV | `payment_fr/worldpay/cvv_fraud_case` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Set Order Status to Suspected Fraud for Postcode AVS | `payment_fr/worldpay/avs_fraud_case` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Sort Order | `payment_fr/worldpay/sort_order` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Enabled | `payment_fr/eway/active` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Connection Type | `payment_fr/eway/connection_type` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Title | `payment_fr/eway/title` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment Action | `payment_fr/eway/payment_action` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Debug | `payment_fr/eway/debug` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Credit Card Types | `payment_fr/eway/cctypes` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment from Applicable Countries | `payment_fr/eway/allowspecific` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment from Specific Countries | `payment_fr/eway/specificcountry` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Sort Order | `payment_fr/eway/sort_order` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Scheduled Fetching | `payment_jp/express_checkout_other/settings_ec/settings_ec_advanced/express_checkout_settlement_report/heading_schedule` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| PayPal Merchant Pages Style | `payment_jp/express_checkout_other/settings_ec/settings_ec_advanced/express_checkout_frontend/paypal_pages` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Scheduled Fetching | `payment_jp/paypal_group_all_in_one/payments_pro_hosted_solution_jp/pphs_settings/pphs_settings_advanced/pphs_settlement_report/heading_schedule` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Scheduled Fetching | `payment_jp/paypal_group_all_in_one/wps_other/settings_ec/settings_ec_advanced/express_checkout_settlement_report/heading_schedule` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| PayPal Merchant Pages Style | `payment_jp/paypal_group_all_in_one/wps_other/settings_ec/settings_ec_advanced/express_checkout_frontend/paypal_pages` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_jp/free/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_jp/free/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_jp/free/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Automatically Invoice All Items | `payment_jp/free/payment_action` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_jp/free/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_jp/free/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_jp/free/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_jp/cashondelivery/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_jp/cashondelivery/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_jp/cashondelivery/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_jp/cashondelivery/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_jp/cashondelivery/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Instructions | `payment_jp/cashondelivery/instructions` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_jp/cashondelivery/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_jp/cashondelivery/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_jp/cashondelivery/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_jp/banktransfer/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_jp/banktransfer/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_jp/banktransfer/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_jp/banktransfer/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_jp/banktransfer/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Instructions | `payment_jp/banktransfer/instructions` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_jp/banktransfer/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_jp/banktransfer/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_jp/banktransfer/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_jp/checkmo/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_jp/checkmo/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_jp/checkmo/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_jp/checkmo/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_jp/checkmo/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_jp/checkmo/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_jp/checkmo/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_jp/checkmo/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_jp/purchaseorder/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_jp/purchaseorder/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_jp/purchaseorder/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_jp/purchaseorder/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_jp/purchaseorder/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_jp/purchaseorder/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_jp/purchaseorder/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_jp/purchaseorder/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_jp/authorizenet_directpost/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment Action | `payment_jp/authorizenet_directpost/payment_action` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_jp/authorizenet_directpost/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_jp/authorizenet_directpost/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Accepted Currency | `payment_jp/authorizenet_directpost/currency` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Debug | `payment_jp/authorizenet_directpost/debug` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Credit Card Types | `payment_jp/authorizenet_directpost/cctypes` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Credit Card Verification | `payment_jp/authorizenet_directpost/useccv` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_jp/authorizenet_directpost/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_jp/authorizenet_directpost/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_jp/authorizenet_directpost/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_jp/authorizenet_directpost/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_jp/authorizenet_directpost/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_jp/cybersource/active` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment Action | `payment_jp/cybersource/payment_action` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Title | `payment_jp/cybersource/title` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Debug | `payment_jp/cybersource/debug` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Credit Card Types | `payment_jp/cybersource/cctypes` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment from Applicable Countries | `payment_jp/cybersource/allowspecific` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment from Specific Countries | `payment_jp/cybersource/specificcountry` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Minimum Order Total | `payment_jp/cybersource/min_order_total` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Maximum Order Total | `payment_jp/cybersource/max_order_total` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Sort Order | `payment_jp/cybersource/sort_order` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Enabled | `payment_jp/worldpay/active` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Title | `payment_jp/worldpay/title` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Allow To Edit Contact Information | `payment_jp/worldpay/fix_contact` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Hide Contact Information | `payment_jp/worldpay/hide_contact` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Debug | `payment_jp/worldpay/debug` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment Action for Test | `payment_jp/worldpay/test_action` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment Action | `payment_jp/worldpay/payment_action` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment From Applicable Countries | `payment_jp/worldpay/allowspecific` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment From Specific Countries | `payment_jp/worldpay/specificcountry` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Set Order Status to Suspected Fraud for CVV | `payment_jp/worldpay/cvv_fraud_case` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Set Order Status to Suspected Fraud for Postcode AVS | `payment_jp/worldpay/avs_fraud_case` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Sort Order | `payment_jp/worldpay/sort_order` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Enabled | `payment_jp/eway/active` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Connection Type | `payment_jp/eway/connection_type` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Title | `payment_jp/eway/title` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment Action | `payment_jp/eway/payment_action` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Debug | `payment_jp/eway/debug` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Credit Card Types | `payment_jp/eway/cctypes` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment from Applicable Countries | `payment_jp/eway/allowspecific` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment from Specific Countries | `payment_jp/eway/specificcountry` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Sort Order | `payment_jp/eway/sort_order` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Scheduled Fetching | `payment_au/express_checkout_other/settings_ec/settings_ec_advanced/express_checkout_settlement_report/heading_schedule` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| PayPal Merchant Pages Style | `payment_au/express_checkout_other/settings_ec/settings_ec_advanced/express_checkout_frontend/paypal_pages` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Scheduled Fetching | `payment_au/paypal_group_all_in_one/payments_pro_hosted_solution_au/pphs_settings/pphs_settings_advanced/pphs_settlement_report/heading_schedule` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Scheduled Fetching | `payment_au/paypal_group_all_in_one/wps_other/settings_ec/settings_ec_advanced/express_checkout_settlement_report/heading_schedule` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| PayPal Merchant Pages Style | `payment_au/paypal_group_all_in_one/wps_other/settings_ec/settings_ec_advanced/express_checkout_frontend/paypal_pages` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Credit Card Settings | `payment_au/paypal_payment_gateways/paypal_payflowpro_au/settings_paypal_payflow/heading_cc` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Reject Transaction if: | `payment_au/paypal_payment_gateways/paypal_payflowpro_au/settings_paypal_payflow/settings_paypal_payflow_advanced/paypal_payflow_avs_check/heading_avs_settings` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Scheduled Fetching | `payment_au/paypal_payment_gateways/paypal_payflowpro_au/settings_paypal_payflow/settings_paypal_payflow_advanced/paypal_payflow_settlement_report/heading_schedule` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_au/free/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_au/free/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_au/free/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Automatically Invoice All Items | `payment_au/free/payment_action` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_au/free/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_au/free/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_au/free/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_au/cashondelivery/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_au/cashondelivery/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_au/cashondelivery/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_au/cashondelivery/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_au/cashondelivery/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Instructions | `payment_au/cashondelivery/instructions` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_au/cashondelivery/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_au/cashondelivery/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_au/cashondelivery/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_au/banktransfer/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_au/banktransfer/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_au/banktransfer/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_au/banktransfer/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_au/banktransfer/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Instructions | `payment_au/banktransfer/instructions` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_au/banktransfer/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_au/banktransfer/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_au/banktransfer/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_au/checkmo/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_au/checkmo/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_au/checkmo/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_au/checkmo/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_au/checkmo/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Make Check Payable to | `payment_au/checkmo/payable_to` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Send Check to | `payment_au/checkmo/mailing_address` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_au/checkmo/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_au/checkmo/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_au/checkmo/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_au/purchaseorder/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_au/purchaseorder/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_au/purchaseorder/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_au/purchaseorder/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_au/purchaseorder/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_au/purchaseorder/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_au/purchaseorder/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_au/purchaseorder/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_au/authorizenet_directpost/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment Action | `payment_au/authorizenet_directpost/payment_action` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_au/authorizenet_directpost/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_au/authorizenet_directpost/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Accepted Currency | `payment_au/authorizenet_directpost/currency` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Debug | `payment_au/authorizenet_directpost/debug` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Credit Card Types | `payment_au/authorizenet_directpost/cctypes` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Credit Card Verification | `payment_au/authorizenet_directpost/useccv` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_au/authorizenet_directpost/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_au/authorizenet_directpost/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_au/authorizenet_directpost/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_au/authorizenet_directpost/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_au/authorizenet_directpost/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_au/cybersource/active` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment Action | `payment_au/cybersource/payment_action` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Title | `payment_au/cybersource/title` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Merchant ID | `payment_au/cybersource/merchant_id` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) | ![Encrypted](/help/assets/configuration/cloud-enc.png) |
| Profile ID | `payment_au/cybersource/profile_id` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) | ![Encrypted](/help/assets/configuration/cloud-enc.png) |
| New Order Status | `payment_au/cybersource/order_status` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Debug | `payment_au/cybersource/debug` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Credit Card Types | `payment_au/cybersource/cctypes` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment from Applicable Countries | `payment_au/cybersource/allowspecific` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment from Specific Countries | `payment_au/cybersource/specificcountry` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Minimum Order Total | `payment_au/cybersource/min_order_total` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Maximum Order Total | `payment_au/cybersource/max_order_total` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Sort Order | `payment_au/cybersource/sort_order` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Enabled | `payment_au/worldpay/active` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Title | `payment_au/worldpay/title` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Installation ID | `payment_au/worldpay/installation_id` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Allow To Edit Contact Information | `payment_au/worldpay/fix_contact` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Hide Contact Information | `payment_au/worldpay/hide_contact` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Signature Fields | `payment_au/worldpay/signature_fields` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Debug | `payment_au/worldpay/debug` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Test Mode | `payment_au/worldpay/sandbox_flag` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment Action for Test | `payment_au/worldpay/test_action` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment Action | `payment_au/worldpay/payment_action` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment From Applicable Countries | `payment_au/worldpay/allowspecific` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment From Specific Countries | `payment_au/worldpay/specificcountry` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Set Order Status to Suspected Fraud for CVV | `payment_au/worldpay/cvv_fraud_case` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Set Order Status to Suspected Fraud for Postcode AVS | `payment_au/worldpay/avs_fraud_case` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Sort Order | `payment_au/worldpay/sort_order` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Enabled | `payment_au/eway/active` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Connection Type | `payment_au/eway/connection_type` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Title | `payment_au/eway/title` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment Action | `payment_au/eway/payment_action` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Debug | `payment_au/eway/debug` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Credit Card Types | `payment_au/eway/cctypes` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment from Applicable Countries | `payment_au/eway/allowspecific` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment from Specific Countries | `payment_au/eway/specificcountry` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Sort Order | `payment_au/eway/sort_order` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Scheduled Fetching | `payment_ca/express_checkout_other/settings_ec/settings_ec_advanced/express_checkout_settlement_report/heading_schedule` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| PayPal Merchant Pages Style | `payment_ca/express_checkout_other/settings_ec/settings_ec_advanced/express_checkout_frontend/paypal_pages` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Scheduled Fetching | `payment_ca/paypal_group_all_in_one/wps_other/settings_ec/settings_ec_advanced/express_checkout_settlement_report/heading_schedule` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| PayPal Merchant Pages Style | `payment_ca/paypal_group_all_in_one/wps_other/settings_ec/settings_ec_advanced/express_checkout_frontend/paypal_pages` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enable this Solution | `payment/paypal_payment_pro/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Credit Card Settings | `payment_ca/paypal_payment_gateways/wpp_ca/settings_paypal_payflow/heading_cc` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Reject Transaction if: | `payment_ca/paypal_payment_gateways/wpp_ca/settings_paypal_payflow/settings_paypal_payflow_advanced/paypal_payflow_avs_check/heading_avs_settings` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Scheduled Fetching | `payment_ca/paypal_payment_gateways/wpp_ca/settings_paypal_payflow/settings_paypal_payflow_advanced/paypal_payflow_settlement_report/heading_schedule` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Credit Card Settings | `payment_ca/paypal_payment_gateways/paypal_payflowpro_ca/settings_paypal_payflow/heading_cc` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Reject Transaction if: | `payment_ca/paypal_payment_gateways/paypal_payflowpro_ca/settings_paypal_payflow/settings_paypal_payflow_advanced/paypal_payflow_avs_check/heading_avs_settings` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Scheduled Fetching | `payment_ca/paypal_payment_gateways/paypal_payflowpro_ca/settings_paypal_payflow/settings_paypal_payflow_advanced/paypal_payflow_settlement_report/heading_schedule` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Scheduled Fetching | `payment_ca/paypal_payment_gateways/payflow_link_ca/settings_payflow_link/settings_payflow_link_advanced/payflow_link_settlement_report/heading_schedule` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| PayPal Merchant Pages Style | `payment_ca/paypal_payment_gateways/payflow_link_ca/settings_payflow_link/settings_payflow_link_advanced/payflow_link_frontend/paypal_pages` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_ca/free/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_ca/free/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_ca/free/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Automatically Invoice All Items | `payment_ca/free/payment_action` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_ca/free/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_ca/free/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_ca/free/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_ca/cashondelivery/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_ca/cashondelivery/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_ca/cashondelivery/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_ca/cashondelivery/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_ca/cashondelivery/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Instructions | `payment_ca/cashondelivery/instructions` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_ca/cashondelivery/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_ca/cashondelivery/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_ca/cashondelivery/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_ca/banktransfer/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_ca/banktransfer/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_ca/banktransfer/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_ca/banktransfer/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_ca/banktransfer/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Instructions | `payment_ca/banktransfer/instructions` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_ca/banktransfer/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_ca/banktransfer/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_ca/banktransfer/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_ca/checkmo/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_ca/checkmo/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_ca/checkmo/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_ca/checkmo/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_ca/checkmo/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_ca/checkmo/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_ca/checkmo/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_ca/checkmo/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_ca/purchaseorder/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_ca/purchaseorder/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_ca/purchaseorder/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_ca/purchaseorder/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_ca/purchaseorder/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_ca/purchaseorder/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_ca/purchaseorder/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_ca/purchaseorder/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_ca/authorizenet_directpost/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment Action | `payment_ca/authorizenet_directpost/payment_action` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_ca/authorizenet_directpost/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Accepted Currency | `payment_ca/authorizenet_directpost/currency` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Debug | `payment_ca/authorizenet_directpost/debug` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Credit Card Types | `payment_ca/authorizenet_directpost/cctypes` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Credit Card Verification | `payment_ca/authorizenet_directpost/useccv` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_ca/authorizenet_directpost/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_ca/authorizenet_directpost/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_ca/authorizenet_directpost/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_ca/authorizenet_directpost/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_ca/authorizenet_directpost/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_ca/cybersource/active` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment Action | `payment_ca/cybersource/payment_action` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Title | `payment_ca/cybersource/title` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Debug | `payment_ca/cybersource/debug` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Credit Card Types | `payment_ca/cybersource/cctypes` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment from Applicable Countries | `payment_ca/cybersource/allowspecific` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment from Specific Countries | `payment_ca/cybersource/specificcountry` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Minimum Order Total | `payment_ca/cybersource/min_order_total` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Maximum Order Total | `payment_ca/cybersource/max_order_total` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Sort Order | `payment_ca/cybersource/sort_order` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Enabled | `payment_ca/worldpay/active` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Title | `payment_ca/worldpay/title` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Allow To Edit Contact Information | `payment_ca/worldpay/fix_contact` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Hide Contact Information | `payment_ca/worldpay/hide_contact` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Signature Fields | `payment_ca/worldpay/signature_fields` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Debug | `payment_ca/worldpay/debug` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment Action for Test | `payment_ca/worldpay/test_action` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment Action | `payment_ca/worldpay/payment_action` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment From Applicable Countries | `payment_ca/worldpay/allowspecific` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment From Specific Countries | `payment_ca/worldpay/specificcountry` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Set Order Status to Suspected Fraud for CVV | `payment_ca/worldpay/cvv_fraud_case` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Set Order Status to Suspected Fraud for Postcode AVS | `payment_ca/worldpay/avs_fraud_case` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Sort Order | `payment_ca/worldpay/sort_order` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Enabled | `payment_ca/eway/active` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Connection Type | `payment_ca/eway/connection_type` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Title | `payment_ca/eway/title` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment Action | `payment_ca/eway/payment_action` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Debug | `payment_ca/eway/debug` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Credit Card Types | `payment_ca/eway/cctypes` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment from Applicable Countries | `payment_ca/eway/allowspecific` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment from Specific Countries | `payment_ca/eway/specificcountry` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Sort Order | `payment_ca/eway/sort_order` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Scheduled Fetching | `payment_other/express_checkout_other/settings_ec/settings_ec_advanced/express_checkout_settlement_report/heading_schedule` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| PayPal Merchant Pages Style | `payment_other/express_checkout_other/settings_ec/settings_ec_advanced/express_checkout_frontend/paypal_pages` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Scheduled Fetching | `payment_other/paypal_group_all_in_one/wps_other/settings_ec/settings_ec_advanced/express_checkout_settlement_report/heading_schedule` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| PayPal Merchant Pages Style | `payment_other/paypal_group_all_in_one/wps_other/settings_ec/settings_ec_advanced/express_checkout_frontend/paypal_pages` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_other/free/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_other/free/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_other/free/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Automatically Invoice All Items | `payment_other/free/payment_action` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_other/free/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_other/free/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_other/free/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_other/cashondelivery/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_other/cashondelivery/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_other/cashondelivery/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_other/cashondelivery/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_other/cashondelivery/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Instructions | `payment_other/cashondelivery/instructions` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_other/cashondelivery/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_other/cashondelivery/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_other/cashondelivery/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_other/banktransfer/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_other/banktransfer/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_other/banktransfer/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_other/banktransfer/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_other/banktransfer/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Instructions | `payment_other/banktransfer/instructions` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_other/banktransfer/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_other/banktransfer/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_other/banktransfer/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_other/checkmo/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_other/checkmo/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_other/checkmo/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_other/checkmo/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_other/checkmo/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_other/checkmo/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_other/checkmo/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_other/checkmo/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_other/purchaseorder/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_other/purchaseorder/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_other/purchaseorder/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_other/purchaseorder/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_other/purchaseorder/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_other/purchaseorder/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_other/purchaseorder/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_other/purchaseorder/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_other/authorizenet_directpost/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment Action | `payment_other/authorizenet_directpost/payment_action` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_other/authorizenet_directpost/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Accepted Currency | `payment_other/authorizenet_directpost/currency` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Debug | `payment_other/authorizenet_directpost/debug` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Email Customer | `payment_other/authorizenet_directpost/email_customer` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Credit Card Types | `payment_other/authorizenet_directpost/cctypes` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Credit Card Verification | `payment_other/authorizenet_directpost/useccv` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_other/authorizenet_directpost/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_other/authorizenet_directpost/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_other/authorizenet_directpost/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_other/authorizenet_directpost/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_other/authorizenet_directpost/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_other/cybersource/active` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment Action | `payment_other/cybersource/payment_action` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Title | `payment_other/cybersource/title` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Debug | `payment_other/cybersource/debug` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Credit Card Types | `payment_other/cybersource/cctypes` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment from Applicable Countries | `payment_other/cybersource/allowspecific` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment from Specific Countries | `payment_other/cybersource/specificcountry` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Minimum Order Total | `payment_other/cybersource/min_order_total` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Maximum Order Total | `payment_other/cybersource/max_order_total` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Sort Order | `payment_other/cybersource/sort_order` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Enabled | `payment_other/worldpay/active` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Title | `payment_other/worldpay/title` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Allow To Edit Contact Information | `payment_other/worldpay/fix_contact` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Hide Contact Information | `payment_other/worldpay/hide_contact` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Signature Fields | `payment_other/worldpay/signature_fields` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Debug | `payment_other/worldpay/debug` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment Action for Test | `payment_other/worldpay/test_action` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment Action | `payment_other/worldpay/payment_action` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment From Applicable Countries | `payment_other/worldpay/allowspecific` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment From Specific Countries | `payment_other/worldpay/specificcountry` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Set Order Status to Suspected Fraud for CVV | `payment_other/worldpay/cvv_fraud_case` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Set Order Status to Suspected Fraud for Postcode AVS | `payment_other/worldpay/avs_fraud_case` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Sort Order | `payment_other/worldpay/sort_order` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Enabled | `payment_other/eway/active` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Connection Type | `payment_other/eway/connection_type` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Title | `payment_other/eway/title` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment Action | `payment_other/eway/payment_action` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Debug | `payment_other/eway/debug` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Credit Card Types | `payment_other/eway/cctypes` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment from Applicable Countries | `payment_other/eway/allowspecific` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment from Specific Countries | `payment_other/eway/specificcountry` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Sort Order | `payment_other/eway/sort_order` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Scheduled Fetching | `payment_de/paypal_payment_solutions/express_checkout_de/settings_ec/settings_ec_advanced/express_checkout_settlement_report/heading_schedule` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| PayPal Merchant Pages Style | `payment_de/paypal_payment_solutions/express_checkout_de/settings_ec/settings_ec_advanced/express_checkout_frontend/paypal_pages` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_de/checkmo/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_de/checkmo/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_de/checkmo/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_de/checkmo/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_de/checkmo/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_de/checkmo/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_de/checkmo/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_de/checkmo/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_de/banktransfer/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_de/banktransfer/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_de/banktransfer/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_de/banktransfer/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_de/banktransfer/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Instructions | `payment_de/banktransfer/instructions` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_de/banktransfer/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_de/banktransfer/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_de/banktransfer/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_de/cashondelivery/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_de/cashondelivery/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_de/cashondelivery/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_de/cashondelivery/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_de/cashondelivery/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Instructions | `payment_de/cashondelivery/instructions` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_de/cashondelivery/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_de/cashondelivery/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_de/cashondelivery/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_de/free/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_de/free/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_de/free/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Automatically Invoice All Items | `payment_de/free/payment_action` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_de/free/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_de/free/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_de/free/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_de/purchaseorder/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_de/purchaseorder/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_de/purchaseorder/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_de/purchaseorder/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_de/purchaseorder/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_de/purchaseorder/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_de/purchaseorder/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_de/purchaseorder/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_de/cybersource/active` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment Action | `payment_de/cybersource/payment_action` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Title | `payment_de/cybersource/title` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| New Order Status | `payment_de/cybersource/order_status` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Debug | `payment_de/cybersource/debug` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Credit Card Types | `payment_de/cybersource/cctypes` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment from Applicable Countries | `payment_de/cybersource/allowspecific` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment from Specific Countries | `payment_de/cybersource/specificcountry` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Minimum Order Total | `payment_de/cybersource/min_order_total` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Maximum Order Total | `payment_de/cybersource/max_order_total` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Sort Order | `payment_de/cybersource/sort_order` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Enabled | `payment_de/authorizenet_directpost/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment Action | `payment_de/authorizenet_directpost/payment_action` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_de/authorizenet_directpost/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_de/authorizenet_directpost/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Accepted Currency | `payment_de/authorizenet_directpost/currency` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Debug | `payment_de/authorizenet_directpost/debug` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Credit Card Types | `payment_de/authorizenet_directpost/cctypes` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Credit Card Verification | `payment_de/authorizenet_directpost/useccv` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_de/authorizenet_directpost/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_de/authorizenet_directpost/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_de/authorizenet_directpost/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_de/authorizenet_directpost/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_de/authorizenet_directpost/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_de/worldpay/active` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Title | `payment_de/worldpay/title` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Allow To Edit Contact Information | `payment_de/worldpay/fix_contact` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Hide Contact Information | `payment_de/worldpay/hide_contact` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Signature Fields | `payment_de/worldpay/signature_fields` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Test Mode | `payment_de/worldpay/sandbox_flag` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment Action for Test | `payment_de/worldpay/test_action` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment Action | `payment_de/worldpay/payment_action` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment From Applicable Countries | `payment_de/worldpay/allowspecific` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment From Specific Countries | `payment_de/worldpay/specificcountry` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Set Order Status to Suspected Fraud for CVV | `payment_de/worldpay/cvv_fraud_case` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Set Order Status to Suspected Fraud for Postcode AVS | `payment_de/worldpay/avs_fraud_case` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Sort Order | `payment_de/worldpay/sort_order` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Enabled | `payment_de/eway/active` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Connection Type | `payment_de/eway/connection_type` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Title | `payment_de/eway/title` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment Action | `payment_de/eway/payment_action` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Debug | `payment_de/eway/debug` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Credit Card Types | `payment_de/eway/cctypes` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment from Applicable Countries | `payment_de/eway/allowspecific` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment from Specific Countries | `payment_de/eway/specificcountry` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Sort Order | `payment_de/eway/sort_order` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Scheduled Fetching | `payment_gb/paypal_alternative_payment_methods/express_checkout_gb/settings_ec/settings_ec_advanced/express_checkout_settlement_report/heading_schedule` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| PayPal Merchant Pages Style | `payment_gb/paypal_alternative_payment_methods/express_checkout_gb/settings_ec/settings_ec_advanced/express_checkout_frontend/paypal_pages` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Scheduled Fetching | `payment_gb/paypal_group_all_in_one/payments_pro_hosted_solution_with_express_checkout/pphs_settings/pphs_settings_advanced/pphs_settlement_report/heading_schedule` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| PayPal Merchant Pages Style | `payment_gb/paypal_group_all_in_one/payments_pro_hosted_solution_with_express_checkout/pphs_settings/pphs_settings_advanced/pphs_frontend/paypal_pages` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Scheduled Fetching | `payment_gb/paypal_group_all_in_one/wps_express/settings_ec/settings_ec_advanced/express_checkout_settlement_report/heading_schedule` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| PayPal Merchant Pages Style | `payment_gb/paypal_group_all_in_one/wps_express/settings_ec/settings_ec_advanced/express_checkout_frontend/paypal_pages` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_gb/checkmo/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_gb/checkmo/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_gb/checkmo/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_gb/checkmo/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_gb/checkmo/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Make Check Payable to | `payment_gb/checkmo/payable_to` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_gb/checkmo/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_gb/checkmo/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_gb/checkmo/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_gb/banktransfer/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_gb/banktransfer/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_gb/banktransfer/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_gb/banktransfer/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_gb/banktransfer/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Instructions | `payment_gb/banktransfer/instructions` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_gb/banktransfer/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_gb/banktransfer/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_gb/banktransfer/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_gb/cashondelivery/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_gb/cashondelivery/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_gb/cashondelivery/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_gb/cashondelivery/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_gb/cashondelivery/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Instructions | `payment_gb/cashondelivery/instructions` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_gb/cashondelivery/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_gb/cashondelivery/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_gb/cashondelivery/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_gb/free/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_gb/free/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_gb/free/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Automatically Invoice All Items | `payment_gb/free/payment_action` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_gb/free/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_gb/free/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_gb/free/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_gb/purchaseorder/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_gb/purchaseorder/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_gb/purchaseorder/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_gb/purchaseorder/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_gb/purchaseorder/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_gb/purchaseorder/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_gb/purchaseorder/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_gb/purchaseorder/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_gb/cybersource/active` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment Action | `payment_gb/cybersource/payment_action` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Title | `payment_gb/cybersource/title` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| New Order Status | `payment_gb/cybersource/order_status` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Debug | `payment_gb/cybersource/debug` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Credit Card Types | `payment_gb/cybersource/cctypes` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment from Applicable Countries | `payment_gb/cybersource/allowspecific` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment from Specific Countries | `payment_gb/cybersource/specificcountry` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Minimum Order Total | `payment_gb/cybersource/min_order_total` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Maximum Order Total | `payment_gb/cybersource/max_order_total` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Sort Order | `payment_gb/cybersource/sort_order` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Enabled | `payment_gb/authorizenet_directpost/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment Action | `payment_gb/authorizenet_directpost/payment_action` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_gb/authorizenet_directpost/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_gb/authorizenet_directpost/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Accepted Currency | `payment_gb/authorizenet_directpost/currency` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Debug | `payment_gb/authorizenet_directpost/debug` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Credit Card Types | `payment_gb/authorizenet_directpost/cctypes` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Credit Card Verification | `payment_gb/authorizenet_directpost/useccv` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_gb/authorizenet_directpost/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_gb/authorizenet_directpost/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_gb/authorizenet_directpost/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_gb/authorizenet_directpost/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_gb/authorizenet_directpost/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_gb/worldpay/active` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Title | `payment_gb/worldpay/title` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| MD5 Secret for Transactions | `payment_gb/worldpay/md5_secret` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Allow To Edit Contact Information | `payment_gb/worldpay/fix_contact` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Hide Contact Information | `payment_gb/worldpay/hide_contact` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Signature Fields | `payment_gb/worldpay/signature_fields` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Debug | `payment_gb/worldpay/debug` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment Action for Test | `payment_gb/worldpay/test_action` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment Action | `payment_gb/worldpay/payment_action` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment From Applicable Countries | `payment_gb/worldpay/allowspecific` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment From Specific Countries | `payment_gb/worldpay/specificcountry` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Set Order Status to Suspected Fraud for CVV | `payment_gb/worldpay/cvv_fraud_case` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Set Order Status to Suspected Fraud for Postcode AVS | `payment_gb/worldpay/avs_fraud_case` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Sort Order | `payment_gb/worldpay/sort_order` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Enabled | `payment_gb/eway/active` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Connection Type | `payment_gb/eway/connection_type` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Title | `payment_gb/eway/title` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment Action | `payment_gb/eway/payment_action` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Debug | `payment_gb/eway/debug` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Credit Card Types | `payment_gb/eway/cctypes` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment from Applicable Countries | `payment_gb/eway/allowspecific` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment from Specific Countries | `payment_gb/eway/specificcountry` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Sort Order | `payment_gb/eway/sort_order` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Scheduled Fetching | `payment_us/paypal_alternative_payment_methods/express_checkout_us/settings_ec/settings_ec_advanced/express_checkout_settlement_report/heading_schedule` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| PayPal Merchant Pages Style | `payment_us/paypal_alternative_payment_methods/express_checkout_us/settings_ec/settings_ec_advanced/express_checkout_frontend/paypal_pages` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Scheduled Fetching | `payment_us/paypal_group_all_in_one/payflow_advanced/settings_payments_advanced/settings_payments_advanced_advanced/settlement_report/heading_schedule` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| PayPal Merchant Pages Style | `payment_us/paypal_group_all_in_one/payflow_advanced/settings_payments_advanced/settings_payments_advanced_advanced/frontend/paypal_pages` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Credit Card Settings | `payment_us/paypal_group_all_in_one/wpp_usuk/settings_paypal_payflow/heading_cc` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Reject Transaction if: | `payment_us/paypal_group_all_in_one/wpp_usuk/settings_paypal_payflow/settings_paypal_payflow_advanced/paypal_payflow_avs_check/heading_avs_settings` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Scheduled Fetching | `payment_us/paypal_group_all_in_one/wpp_usuk/settings_paypal_payflow/settings_paypal_payflow_advanced/paypal_payflow_settlement_report/heading_schedule` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| PayPal Merchant Pages Style | `payment_us/paypal_group_all_in_one/wpp_usuk/settings_paypal_payflow/settings_paypal_payflow_advanced/paypal_payflow_frontend/paypal_pages` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enable PayPal Credit | `payment/wps_express_bml/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Scheduled Fetching | `payment_us/paypal_group_all_in_one/wps_express/settings_ec/settings_ec_advanced/express_checkout_settlement_report/heading_schedule` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| PayPal Merchant Pages Style | `payment_us/paypal_group_all_in_one/wps_express/settings_ec/settings_ec_advanced/express_checkout_frontend/paypal_pages` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Credit Card Settings | `payment_us/paypal_payment_gateways/paypal_payflowpro_with_express_checkout/settings_paypal_payflow/heading_cc` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Reject Transaction if: | `payment_us/paypal_payment_gateways/paypal_payflowpro_with_express_checkout/settings_paypal_payflow/settings_paypal_payflow_advanced/paypal_payflow_avs_check/heading_avs_settings` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Scheduled Fetching | `payment_us/paypal_payment_gateways/paypal_payflowpro_with_express_checkout/settings_paypal_payflow/settings_paypal_payflow_advanced/paypal_payflow_settlement_report/heading_schedule` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| PayPal Merchant Pages Style | `payment_us/paypal_payment_gateways/paypal_payflowpro_with_express_checkout/settings_paypal_payflow/settings_paypal_payflow_advanced/paypal_payflow_frontend/paypal_pages` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Scheduled Fetching | `payment_us/paypal_payment_gateways/payflow_link_us/settings_payflow_link/settings_payflow_link_advanced/payflow_link_settlement_report/heading_schedule` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| PayPal Merchant Pages Style | `payment_us/paypal_payment_gateways/payflow_link_us/settings_payflow_link/settings_payflow_link_advanced/payflow_link_frontend/paypal_pages` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_us/free/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_us/free/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_us/free/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Automatically Invoice All Items | `payment_us/free/payment_action` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_us/free/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_us/free/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_us/free/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_us/cashondelivery/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_us/cashondelivery/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_us/cashondelivery/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_us/cashondelivery/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_us/cashondelivery/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Instructions | `payment_us/cashondelivery/instructions` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_us/cashondelivery/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_us/cashondelivery/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_us/cashondelivery/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_us/banktransfer/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_us/banktransfer/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_us/banktransfer/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_us/banktransfer/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_us/banktransfer/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Instructions | `payment_us/banktransfer/instructions` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_us/banktransfer/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_us/banktransfer/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_us/banktransfer/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_us/checkmo/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_us/checkmo/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_us/checkmo/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_us/checkmo/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_us/checkmo/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Make Check Payable to | `payment_us/checkmo/payable_to` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_us/checkmo/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_us/checkmo/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_us/checkmo/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_us/purchaseorder/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_us/purchaseorder/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_us/purchaseorder/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_us/purchaseorder/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_us/purchaseorder/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_us/purchaseorder/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_us/purchaseorder/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_us/purchaseorder/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_us/authorizenet_directpost/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment Action | `payment_us/authorizenet_directpost/payment_action` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Title | `payment_us/authorizenet_directpost/title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Order Status | `payment_us/authorizenet_directpost/order_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Accepted Currency | `payment_us/authorizenet_directpost/currency` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Debug | `payment_us/authorizenet_directpost/debug` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Credit Card Types | `payment_us/authorizenet_directpost/cctypes` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Credit Card Verification | `payment_us/authorizenet_directpost/useccv` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Applicable Countries | `payment_us/authorizenet_directpost/allowspecific` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Payment from Specific Countries | `payment_us/authorizenet_directpost/specificcountry` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Total | `payment_us/authorizenet_directpost/min_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Order Total | `payment_us/authorizenet_directpost/max_order_total` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `payment_us/authorizenet_directpost/sort_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `payment_us/cybersource/active` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment Action | `payment_us/cybersource/payment_action` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Title | `payment_us/cybersource/title` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| New Order Status | `payment_us/cybersource/order_status` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Debug | `payment_us/cybersource/debug` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Credit Card Types | `payment_us/cybersource/cctypes` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment from Applicable Countries | `payment_us/cybersource/allowspecific` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment from Specific Countries | `payment_us/cybersource/specificcountry` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Minimum Order Total | `payment_us/cybersource/min_order_total` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Maximum Order Total | `payment_us/cybersource/max_order_total` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Sort Order | `payment_us/cybersource/sort_order` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Enabled | `payment_us/worldpay/active` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Title | `payment_us/worldpay/title` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Allow To Edit Contact Information | `payment_us/worldpay/fix_contact` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Hide Contact Information | `payment_us/worldpay/hide_contact` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Signature Fields | `payment_us/worldpay/signature_fields` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Debug | `payment_us/worldpay/debug` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment Action for Test | `payment_us/worldpay/test_action` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment Action | `payment_us/worldpay/payment_action` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment From Applicable Countries | `payment_us/worldpay/allowspecific` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment From Specific Countries | `payment_us/worldpay/specificcountry` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Set Order Status to Suspected Fraud for CVV | `payment_us/worldpay/cvv_fraud_case` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Set Order Status to Suspected Fraud for Postcode AVS | `payment_us/worldpay/avs_fraud_case` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Sort Order | `payment_us/worldpay/sort_order` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Enabled | `payment_us/eway/active` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Connection Type | `payment_us/eway/connection_type` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Title | `payment_us/eway/title` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment Action | `payment_us/eway/payment_action` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Debug | `payment_us/eway/debug` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Credit Card Types | `payment_us/eway/cctypes` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment from Applicable Countries | `payment_us/eway/allowspecific` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Payment from Specific Countries | `payment_us/eway/specificcountry` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Sort Order | `payment_us/eway/sort_order` | |

{style="table-layout:auto"}
