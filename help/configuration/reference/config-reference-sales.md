---
title: Sales configuration paths reference
description: See a list of sales configuration values.
---

# Sales configuration paths reference

This section lists variable names and config paths available for options in the Admin under **Stores** > Settings > **Configuration** > **Sales**.

The [`magento app:config:dump` command](../cli/export-configuration.md) writes these values to the shared configuration file, `app/etc/config.php`, which should be in source control. To optionally override any configuration settings or to set sensitive settings, see [Use environment variables to override configuration settings](override-config-settings.md#environment-variables). This topic does _not_ list [sensitive and system-specific values](config-reference-sens.md).

## Sales paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Sales** > **Sales**.

| Name  | Config path | EE only? |
|--------------|--------------|--------------|
| Hide Customer IP | `sales/general/hide_customer_ip` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Subtotal | `sales/totals_sort/subtotal` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Discount | `sales/totals_sort/discount` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Shipping | `sales/totals_sort/shipping` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Tax | `sales/totals_sort/tax` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Fixed Product Tax | `sales/totals_sort/weee` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Grand Total | `sales/totals_sort/grand_total` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Gift Cards | `sales/totals_sort/giftcardaccount` | ![EE-only](/help/assets/configuration/cloud-ee.png) |
| Store Credit | `sales/totals_sort/customerbalance` | ![EE-only](/help/assets/configuration/cloud-ee.png) |
| Allow Reorder | `sales/reorder/allow` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Logo for PDF Print-outs (200x50) | `sales/identity/logo` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Logo for HTML Print View | `sales/identity/logo_html` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Address | `sales/identity/address` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Enable | `sales/minimum_order/active` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Minimum Amount | `sales/minimum_order/amount` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Include Tax to Amount | `sales/minimum_order/tax_including` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Description Message | `sales/minimum_order/description` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Error to Show in Shopping Cart | `sales/minimum_order/error_message` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Validate Each Address Separately in Multi-address Checkout | `sales/minimum_order/multi_address` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Multi-address Description Message | `sales/minimum_order/multi_address_description` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Multi-address Error to Show in Shopping Cart | `sales/minimum_order/multi_address_error_message` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Use Aggregated Data | `sales/dashboard/use_aggregated_data` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Pending Payment Order Lifetime (minutes) | `sales/orders/delete_pending_after` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Allow Gift Messages on Order Level | `sales/gift_options/allow_order` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Allow Gift Messages for Order Items | `sales/gift_options/allow_items` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Allow Gift Wrapping on Order Level | `sales/gift_options/wrapping_allow_order` | ![EE-only](/help/assets/configuration/cloud-ee.png) |
| Allow Gift Wrapping for Order Items | `sales/gift_options/wrapping_allow_items` | ![EE-only](/help/assets/configuration/cloud-ee.png) |
| Allow Gift Receipt | `sales/gift_options/allow_gift_receipt` | ![EE-only](/help/assets/configuration/cloud-ee.png) |
| Allow Printed Card | `sales/gift_options/allow_printed_card` | ![EE-only](/help/assets/configuration/cloud-ee.png) |
| Default Price for Printed Card | `sales/gift_options/printed_card_price` | ![EE-only](/help/assets/configuration/cloud-ee.png) |
| Enable MAP | `sales/msrp/enabled` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Display Actual Price | `sales/msrp/display_price_type` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Default Popup Text Message | `sales/msrp/explanation_message` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Default "What's This" Text Message | `sales/msrp/explanation_message_whats_this` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Enable Order by SKU on My Account in Storefront | `sales/product_sku/my_account_enable` | ![EE-only](/help/assets/configuration/cloud-ee.png) |
| Enabled | `sales/instant_purchase/active` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Button Text | `sales/instant_purchase/button_text` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Customer Groups | `sales/product_sku/allowed_groups` | ![EE-only](/help/assets/configuration/cloud-ee.png) |
| Enable Archiving | `sales/magento_salesarchive/active` | ![EE-only](/help/assets/configuration/cloud-ee.png) |
| Archive Orders Purchased | `sales/magento_salesarchive/age` | ![EE-only](/help/assets/configuration/cloud-ee.png) |
| Order Statuses to be Archived | `sales/magento_salesarchive/order_statuses` | ![EE-only](/help/assets/configuration/cloud-ee.png) |
| Enable RMA on Storefront | `sales/magento_rma/enabled` | ![EE-only](/help/assets/configuration/cloud-ee.png) |
| Enable RMA on Product Level | `sales/magento_rma/enabled_on_product` | ![EE-only](/help/assets/configuration/cloud-ee.png) |
| Use Store Address | `sales/magento_rma/use_store_address` | ![EE-only](/help/assets/configuration/cloud-ee.png) |

## Sales emails paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Sales** > **Sales Emails**.

| Name  | Config path | EE only? |
|--------------|--------------|--------------|
| Asynchronous sending | `sales_email/general/async_sending` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `sales_email/order/enabled` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| New Order Confirmation Email Sender | `sales_email/order/identity` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| New Order Confirmation Template | `sales_email/order/template` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| New Order Confirmation Template for Guest | `sales_email/order/guest_template` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Send Order Email Copy Method | `sales_email/order/copy_method` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `sales_email/order_comment/enabled` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Order Comment Email Sender | `sales_email/order_comment/identity` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Order Comment Email Template | `sales_email/order_comment/template` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Order Comment Email Template for Guest | `sales_email/order_comment/guest_template` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Send Order Comments Email Copy Method | `sales_email/order_comment/copy_method` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `sales_email/invoice/enabled` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Invoice Email Sender | `sales_email/invoice/identity` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Invoice Email Template | `sales_email/invoice/template` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Invoice Email Template for Guest | `sales_email/invoice/guest_template` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Send Invoice Email Copy Method | `sales_email/invoice/copy_method` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `sales_email/invoice_comment/enabled` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Invoice Comment Email Sender | `sales_email/invoice_comment/identity` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Invoice Comment Email Template | `sales_email/invoice_comment/template` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Invoice Comment Email Template for Guest | `sales_email/invoice_comment/guest_template` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Send Invoice Comments Email Copy Method | `sales_email/invoice_comment/copy_method` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `sales_email/shipment/enabled` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Shipment Email Sender | `sales_email/shipment/identity` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Shipment Email Template | `sales_email/shipment/template` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Shipment Email Template for Guest | `sales_email/shipment/guest_template` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Send Shipment Email Copy Method | `sales_email/shipment/copy_method` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `sales_email/shipment_comment/enabled` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Shipment Comment Email Sender | `sales_email/shipment_comment/identity` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Shipment Comment Email Template | `sales_email/shipment_comment/template` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Shipment Comment Email Template for Guest | `sales_email/shipment_comment/guest_template` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Send Shipment Comments Email Copy Method | `sales_email/shipment_comment/copy_method` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `sales_email/creditmemo/enabled` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Credit Memo Email Sender | `sales_email/creditmemo/identity` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Credit Memo Email Template | `sales_email/creditmemo/template` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Credit Memo Email Template for Guest | `sales_email/creditmemo/guest_template` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Send Credit Memo Email Copy Method | `sales_email/creditmemo/copy_method` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `sales_email/creditmemo_comment/enabled` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Credit Memo Comment Email Sender | `sales_email/creditmemo_comment/identity` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Credit Memo Comment Email Template | `sales_email/creditmemo_comment/template` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Credit Memo Comment Email Template for Guest | `sales_email/creditmemo_comment/guest_template` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Send Credit Memo Comments Email Copy Method | `sales_email/creditmemo_comment/copy_method` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `sales_email/magento_rma/enabled` | ![EE-only](/help/assets/configuration/cloud-ee.png) |
| RMA Email Sender | `sales_email/magento_rma/identity` | ![EE-only](/help/assets/configuration/cloud-ee.png) |
| RMA Email Template | `sales_email/magento_rma/template` | ![EE-only](/help/assets/configuration/cloud-ee.png) |
| RMA Email Template for Guest | `sales_email/magento_rma/guest_template` | ![EE-only](/help/assets/configuration/cloud-ee.png) |
| Send RMA Email Copy Method | `sales_email/magento_rma/copy_method` | ![EE-only](/help/assets/configuration/cloud-ee.png) |
| Enabled | `sales_email/magento_rma_auth/enabled` | ![EE-only](/help/assets/configuration/cloud-ee.png) |
| RMA Authorization Email Sender | `sales_email/magento_rma_auth/identity` | ![EE-only](/help/assets/configuration/cloud-ee.png) |
| RMA Authorization Email Template | `sales_email/magento_rma_auth/template` | ![EE-only](/help/assets/configuration/cloud-ee.png) |
| RMA Authorization Email Template for Guest | `sales_email/magento_rma_auth/guest_template` | ![EE-only](/help/assets/configuration/cloud-ee.png) |
| Send RMA Authorization Email Copy Method | `sales_email/magento_rma_auth/copy_method` | ![EE-only](/help/assets/configuration/cloud-ee.png) |
| Enabled | `sales_email/magento_rma_comment/enabled` | ![EE-only](/help/assets/configuration/cloud-ee.png) |
| RMA Comment Email Sender | `sales_email/magento_rma_comment/identity` | ![EE-only](/help/assets/configuration/cloud-ee.png) |
| RMA Comment Email Template | `sales_email/magento_rma_comment/template` | ![EE-only](/help/assets/configuration/cloud-ee.png) |
| RMA Comment Email Template for Guest | `sales_email/magento_rma_comment/guest_template` | ![EE-only](/help/assets/configuration/cloud-ee.png) |
| Send RMA Email Copy Method | `sales_email/magento_rma_comment/copy_method` | ![EE-only](/help/assets/configuration/cloud-ee.png) |
| Enabled | `sales_email/magento_rma_customer_comment/enabled` | ![EE-only](/help/assets/configuration/cloud-ee.png) |
| RMA Comment Email Sender | `sales_email/magento_rma_customer_comment/identity` | ![EE-only](/help/assets/configuration/cloud-ee.png) |
| RMA Comment Email Recipient | `sales_email/magento_rma_customer_comment/recipient` | ![EE-only](/help/assets/configuration/cloud-ee.png) |
| RMA Comment Email Template | `sales_email/magento_rma_customer_comment/template` | ![EE-only](/help/assets/configuration/cloud-ee.png) |
| Send RMA Email Copy Method | `sales_email/magento_rma_customer_comment/copy_method` | ![EE-only](/help/assets/configuration/cloud-ee.png) |
| Display Order ID in Header | `sales_pdf/invoice/put_order_id` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Display Order ID in Header | `sales_pdf/shipment/put_order_id` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Display Order ID in Header | `sales_pdf/creditmemo/put_order_id` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |

## Tax paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Sales** > **Tax**.

| Name  | Config path | EE only? |
|--------------|--------------|--------------|
| Tax Class for Shipping | `tax/classes/shipping_tax_class` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Tax Class for Gift Options | `tax/classes/wrapping_tax_class` | ![EE-only](/help/assets/configuration/cloud-ee.png) |
| Default Tax Class for Product | `tax/classes/default_product_tax_class` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Default Tax Class for Customer | `tax/classes/default_customer_tax_class` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Tax Calculation Method Based On | `tax/calculation/algorithm` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Tax Calculation Based On | `tax/calculation/based_on` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Catalog Prices | `tax/calculation/price_includes_tax` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Shipping Prices | `tax/calculation/shipping_includes_tax` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Apply Customer Tax | `tax/calculation/apply_after_discount` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Apply Discount On Prices | `tax/calculation/discount_tax` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Apply Tax On | `tax/calculation/apply_tax_on` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Enable Cross Border Trade | `tax/calculation/cross_border_trade_enabled` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Default Country | `tax/defaults/country` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Default State | `tax/defaults/region` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Default Post Code | `tax/defaults/postcode` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Display Product Prices In Catalog | `tax/display/type` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Display Shipping Prices | `tax/display/shipping` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Display Prices | `tax/cart_display/price` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Display Subtotal | `tax/cart_display/subtotal` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Display Shipping Amount | `tax/cart_display/shipping` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Display Gift Wrapping Prices | `tax/cart_display/gift_wrapping` | ![EE-only](/help/assets/configuration/cloud-ee.png) |
| Display Printed Card Prices | `tax/cart_display/printed_card` | ![EE-only](/help/assets/configuration/cloud-ee.png) |
| Include Tax In Order Total | `tax/cart_display/grandtotal` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Display Full Tax Summary | `tax/cart_display/full_summary` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Display Zero Tax Subtotal | `tax/cart_display/zero_tax` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Display Prices | `tax/sales_display/price` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Display Subtotal | `tax/sales_display/subtotal` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Display Shipping Amount | `tax/sales_display/shipping` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Display Gift Wrapping Prices | `tax/sales_display/gift_wrapping` | ![EE-only](/help/assets/configuration/cloud-ee.png) |
| Display Printed Card Prices | `tax/sales_display/printed_card` | ![EE-only](/help/assets/configuration/cloud-ee.png) |
| Include Tax In Order Total | `tax/sales_display/grandtotal` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Display Full Tax Summary | `tax/sales_display/full_summary` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Display Zero Tax Subtotal | `tax/sales_display/zero_tax` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Enable FPT | `tax/weee/enable` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Display Prices In Product Lists | `tax/weee/display_list` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Display Prices On Product View Page | `tax/weee/display` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Display Prices In Sales Modules | `tax/weee/display_sales` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Display Prices In Emails | `tax/weee/display_email` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Apply Tax To FPT | `tax/weee/apply_vat` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Include FPT In Subtotal | `tax/weee/include_in_subtotal` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |

## Checkout paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Sales** > **Checkout**.

| Name  | Config path | EE only? |
|--------------|--------------|--------------|
| Enable Onepage Checkout | `checkout/options/onepage_checkout_enabled` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Allow Guest Checkout | `checkout/options/guest_checkout` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Display Billing Address On | `checkout/options/display_billing_address_on` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Enable Terms and Conditions | `checkout/options/enable_agreements` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Quote Lifetime (days) | `checkout/cart/delete_quote_after` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| After Adding a Product Redirect to Shopping Cart | `checkout/cart/redirect_to_cart` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Grouped Product Image | `checkout/cart/grouped_product_image` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Configurable Product Image | `checkout/cart/configurable_product_image` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Preview Quote Lifetime (minutes) | `checkout/cart/preview_quota_lifetime` | ![EE-only](/help/assets/configuration/cloud-ee.png) |
| Display Cart Summary | `checkout/cart_link/use_qty` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Display Shopping Cart Sidebar | `checkout/sidebar/display` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Maximum Display Recently Added Item(s) | `checkout/sidebar/count` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Payment Failed Email Sender | `checkout/payment_failed/identity` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Payment Failed Email Receiver | `checkout/payment_failed/receiver` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Payment Failed Template | `checkout/payment_failed/template` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Send Payment Failed Email Copy Method | `checkout/payment_failed/copy_method` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |

## Shipping settings paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Sales** > **Shipping Settings**.

| Name  | Config path | EE only? |
|--------------|--------------|--------------|
| Apply custom Shipping Policy | `shipping/shipping_policy/enable_shipping_policy` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Shipping Policy | `shipping/shipping_policy/shipping_policy_content` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |

## Multishipping settings paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Sales** > **Multishipping Settings**.

| Name  | Config path | EE only? |
|--------------|--------------|--------------|
| Allow Shipping to Multiple Addresses | `multishipping/options/checkout_multiple` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Maximum Qty Allowed for Shipping to Multiple Addresses | `multishipping/options/checkout_multiple_maximum_qty` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |

## Delivery methods paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Sales** > **Delivery Methods**.

| Name  | Config path | EE only? |
|--------------|--------------|--------------|
| Enabled | `carriers/flatrate/active` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Title | `carriers/flatrate/title` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Method Name | `carriers/flatrate/name` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Type | `carriers/flatrate/type` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Price | `carriers/flatrate/price` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Calculate Handling Fee | `carriers/flatrate/handling_type` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Handling Fee | `carriers/flatrate/handling_fee` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Displayed Error Message | `carriers/flatrate/specificerrmsg` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Ship to Applicable Countries | `carriers/flatrate/sallowspecific` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Ship to Specific Countries | `carriers/flatrate/specificcountry` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Show Method if Not Applicable | `carriers/flatrate/showmethod` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `carriers/flatrate/sort_order` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `carriers/freeshipping/active` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Title | `carriers/freeshipping/title` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Method Name | `carriers/freeshipping/name` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Minimum Order Amount | `carriers/freeshipping/free_shipping_subtotal` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Displayed Error Message | `carriers/freeshipping/specificerrmsg` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Ship to Applicable Countries | `carriers/freeshipping/sallowspecific` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Ship to Specific Countries | `carriers/freeshipping/specificcountry` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Show Method if Not Applicable | `carriers/freeshipping/showmethod` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `carriers/freeshipping/sort_order` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `carriers/tablerate/active` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Title | `carriers/tablerate/title` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Method Name | `carriers/tablerate/name` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Condition | `carriers/tablerate/condition_name` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Include Virtual Products in Price Calculation | `carriers/tablerate/include_virtual_price` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Export | `carriers/tablerate/export` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Import | `carriers/tablerate/import` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Calculate Handling Fee | `carriers/tablerate/handling_type` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Handling Fee | `carriers/tablerate/handling_fee` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Displayed Error Message | `carriers/tablerate/specificerrmsg` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Ship to Applicable Countries | `carriers/tablerate/sallowspecific` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Ship to Specific Countries | `carriers/tablerate/specificcountry` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Show Method if Not Applicable | `carriers/tablerate/showmethod` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `carriers/tablerate/sort_order` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Enabled for Checkout | `carriers/ups/active` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Enabled for RMA | `carriers/ups/active_rma` | ![EE-only](/help/assets/configuration/cloud-ee.png) |
| UPS Type | `carriers/ups/type` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Mode | `carriers/ups/mode_xml` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Origin of the Shipment | `carriers/ups/origin_shipment` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Gateway URL | `carriers/ups/gateway_url` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Title | `carriers/ups/title` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Enable Negotiated Rates | `carriers/ups/negotiated_active` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Packages Request Type | `carriers/ups/shipment_requesttype` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Container | `carriers/ups/container` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Weight Unit | `carriers/ups/unit_of_measure` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Destination Type | `carriers/ups/dest_type` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Maximum Package Weight (Please consult your shipping carrier for maximum supported shipping weight) | `carriers/ups/max_package_weight` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Pickup Method | `carriers/ups/pickup` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Minimum Package Weight (Please consult your shipping carrier for minimum supported shipping weight) | `carriers/ups/min_package_weight` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Calculate Handling Fee | `carriers/ups/handling_type` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Handling Applied | `carriers/ups/handling_action` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Handling Fee | `carriers/ups/handling_fee` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Allowed Methods | `carriers/ups/allowed_methods` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Free Method | `carriers/ups/free_method` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Enable Free Shipping Threshold | `carriers/ups/free_shipping_enable` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Free Shipping Amount Threshold | `carriers/ups/free_shipping_subtotal` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Displayed Error Message | `carriers/ups/specificerrmsg` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Ship to Applicable Countries | `carriers/ups/sallowspecific` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Ship to Specific Countries | `carriers/ups/specificcountry` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Show Method if Not Applicable | `carriers/ups/showmethod` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `carriers/ups/sort_order` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Enabled for Checkout | `carriers/usps/active` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Enabled for RMA | `carriers/usps/active_rma` | ![EE-only](/help/assets/configuration/cloud-ee.png) |
| Mode | `carriers/usps/mode` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Packages Request Type | `carriers/usps/shipment_requesttype` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Container | `carriers/usps/container` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Size | `carriers/usps/size` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Length | `carriers/usps/length` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Width | `carriers/usps/width` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Height | `carriers/usps/height` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Girth | `carriers/usps/girth` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Machinable | `carriers/usps/machinable` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Maximum Package Weight (Please consult your shipping carrier for maximum supported shipping weight) | `carriers/usps/max_package_weight` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Calculate Handling Fee | `carriers/usps/handling_type` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Handling Applied | `carriers/usps/handling_action` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Handling Fee | `carriers/usps/handling_fee` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Allowed Methods | `carriers/usps/allowed_methods` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Free Method | `carriers/usps/free_method` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Enable Free Shipping Threshold | `carriers/usps/free_shipping_enable` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Free Shipping Amount Threshold | `carriers/usps/free_shipping_subtotal` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Displayed Error Message | `carriers/usps/specificerrmsg` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Ship to Applicable Countries | `carriers/usps/sallowspecific` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Ship to Specific Countries | `carriers/usps/specificcountry` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Debug | `carriers/usps/debug` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Show Method if Not Applicable | `carriers/usps/showmethod` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `carriers/usps/sort_order` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Enabled for Checkout | `carriers/fedex/active` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Enabled for RMA | `carriers/fedex/active_rma` | ![EE-only](/help/assets/configuration/cloud-ee.png) |
| Title | `carriers/fedex/title` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Web-Services URL (Production) | `carriers/fedex/production_webservices_url` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Web-Services URL (Sandbox) | `carriers/fedex/sandbox_webservices_url` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Packages Request Type | `carriers/fedex/shipment_requesttype` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Packaging | `carriers/fedex/packaging` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Dropoff | `carriers/fedex/dropoff` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Weight Unit | `carriers/fedex/unit_of_measure` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Maximum Package Weight (Please consult your shipping carrier for maximum supported shipping weight) | `carriers/fedex/max_package_weight` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Calculate Handling Fee | `carriers/fedex/handling_type` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Handling Applied | `carriers/fedex/handling_action` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Handling Fee | `carriers/fedex/handling_fee` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Residential Delivery | `carriers/fedex/residence_delivery` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Allowed Methods | `carriers/fedex/allowed_methods` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Hub ID | `carriers/fedex/smartpost_hubid` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Free Method | `carriers/fedex/free_method` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Enable Free Shipping Threshold | `carriers/fedex/free_shipping_enable` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Free Shipping Amount Threshold | `carriers/fedex/free_shipping_subtotal` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Displayed Error Message | `carriers/fedex/specificerrmsg` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Ship to Applicable Countries | `carriers/fedex/sallowspecific` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Ship to Specific Countries | `carriers/fedex/specificcountry` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Debug | `carriers/fedex/debug` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Show Method if Not Applicable | `carriers/fedex/showmethod` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `carriers/fedex/sort_order` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Enabled for Checkout | `carriers/dhl/active` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Enabled for RMA | `carriers/dhl/active_rma` | ![EE-only](/help/assets/configuration/cloud-ee.png) |
| Title | `carriers/dhl/title` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Content Type | `carriers/dhl/content_type` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Calculate Handling Fee | `carriers/dhl/handling_type` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Handling Applied | `carriers/dhl/handling_action` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Handling Fee | `carriers/dhl/handling_fee` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Divide Order Weight | `carriers/dhl/divide_order_weight` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Weight Unit | `carriers/dhl/unit_of_measure` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Size | `carriers/dhl/size` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Height | `carriers/dhl/height` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Depth | `carriers/dhl/depth` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Width | `carriers/dhl/width` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Allowed Methods | `carriers/dhl/doc_methods` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Allowed Methods | `carriers/dhl/nondoc_methods` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Ready time | `carriers/dhl/ready_time` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Displayed Error Message | `carriers/dhl/specificerrmsg` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Free Method | `carriers/dhl/free_method_doc` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Free Method | `carriers/dhl/free_method_nondoc` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Enable Free Shipping Threshold | `carriers/dhl/free_shipping_enable` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Free Shipping Amount Threshold | `carriers/dhl/free_shipping_subtotal` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Ship to Applicable Countries | `carriers/dhl/sallowspecific` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Ship to Specific Countries | `carriers/dhl/specificcountry` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Show Method if Not Applicable | `carriers/dhl/showmethod` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Sort Order | `carriers/dhl/sort_order` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |

## Google API paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Sales** > **Google API**.

| Name  | Config path | EE only? |
|--------------|--------------|--------------|
| Enable | `google/analytics/active` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Account type | `google/analytics/type` | ![EE-only](/help/assets/configuration/cloud-ee.png) |
| Enable Content Experiments | `google/analytics/experiments` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| List property for the catalog page | `google/analytics/catalog_page_list_value` | ![EE-only](/help/assets/configuration/cloud-ee.png) |
| List property for the cross-sell block | `google/analytics/crosssell_block_list_value` | ![EE-only](/help/assets/configuration/cloud-ee.png) |
| List property for the up-sell block | `google/analytics/upsell_block_list_value` | ![EE-only](/help/assets/configuration/cloud-ee.png) |
| List property for the related products block | `google/analytics/related_block_list_value` | ![EE-only](/help/assets/configuration/cloud-ee.png) |
| List property for the search results page | `google/analytics/search_page_list_value` | ![EE-only](/help/assets/configuration/cloud-ee.png) |
| ’Internal Promotions’ for promotions field “Label”. | `google/analytics/promotions_list_value` | ![EE-only](/help/assets/configuration/cloud-ee.png) |
| Enable | `google/adwords/active` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Conversion ID | `google/adwords/conversion_id` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Conversion Language | `google/adwords/conversion_language` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Conversion Format | `google/adwords/conversion_format` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Conversion Color | `google/adwords/conversion_color` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Conversion Label | `google/adwords/conversion_label` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Conversion Value Type | `google/adwords/conversion_value_type` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Conversion Value | `google/adwords/conversion_value` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |

## Gift cards paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Sales** > **Gift Cards**.

| Name  | Config path | EE only? |
|--------------|--------------|--------------|
| Gift Card Notification Email Sender | `giftcard/email/identity` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Gift Card Notification Email Template | `giftcard/email/template` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Redeemable | `giftcard/general/is_redeemable` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Lifetime (days) | `giftcard/general/lifetime` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Allow Gift Message | `giftcard/general/allow_message` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Gift Message Maximum Length | `giftcard/general/message_max_length` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Generate Gift Card Account when Order Item is | `giftcard/general/order_item_status` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Gift Card Email Sender | `giftcard/giftcardaccount_email/identity` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Gift Card Template | `giftcard/giftcardaccount_email/template` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Code Length | `giftcard/giftcardaccount_general/code_length` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Code Format | `giftcard/giftcardaccount_general/code_format` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Code Prefix | `giftcard/giftcardaccount_general/code_prefix` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Code Suffix | `giftcard/giftcardaccount_general/code_suffix` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Dash Every X Characters | `giftcard/giftcardaccount_general/code_split` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| New Pool Size | `giftcard/giftcardaccount_general/pool_size` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
| Low Code Pool Threshold | `giftcard/giftcardaccount_general/pool_threshold` | <!-- ![Not EE-only](/help/assets/configuration/red-x.png) --> |
