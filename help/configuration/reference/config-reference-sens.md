---
title: Sensitive and system-specific paths
description: Learn about sensitive and system-specific configuration paths for Adobe Commerce. Discover secure configuration and environment variable management.
feature: Configuration, System
exl-id: 127880ab-7507-4e53-8b51-dfa6557d0b18
---
# Sensitive and system-specific settings

This topic lists configuration paths for system-specific and sensitive settings:

- The [`magento app:config:dump` command](../cli/export-configuration.md) writes system-specific settings to the system-specific configuration file, `app/etc/env.php`, which should _not_ be in source control. It also writes shared configuration for all Commerce instances to `app/etc/config.php`, this file _should_ be in source control.
- The [`magento config:sensitive:set` command](../cli/set-configuration-values.md) writes sensitive settings to `app/etc/env.php`.

  You can also set sensitive values using configuration variables as discussed in [Use environment variables to override configuration settings](../reference/override-config-settings.md#environment-variables).

For a list of other configuration paths, see:

- [All configuration paths except payments](../reference/config-reference-general.md)
- [Payment configuration paths](../reference/config-reference-payment.md).

>[!INFO]
>
>All configuration paths listed in this topic are sensitive. The `System-specific?` column shows which values are also system-specific.

## General category sensitive and system-specific paths

This section lists variable names and configuration paths available for options in the Admin under **Stores** > Settings > **Configuration** > **General**.

### Web paths sensitive and system-specific paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **General** > **Web**.

| Name  | Config path | Commerce version support | Encrypted? | System-specific? | Sensitive? |
|--------------|--------------|--------------|--------------|--------------|--------------|
| Base URL | `web/unsecure/base_url` |  | | System-specific | |
| Base Link URL | `web/unsecure/base_link_url` |  | | System-specific | |
| Base URL for Static View Files | `web/unsecure/base_static_url` |  | | System-specific | |
| Base URL for User Media Files | `web/unsecure/base_media_url` |  | | System-specific | |
| Secure Base URL | `web/secure/base_url` |  | | System-specific | |
| Secure Base Link URL | `web/secure/base_link_url` |  | | System-specific | |
| Secure Base URL for Static View Files | `web/secure/base_static_url` |  | | System-specific | |
| Secure Base URL for User Media Files | `web/secure/base_media_url` |  | | System-specific | |
| Default Web URL | `web/default/front` |  | | System-specific | |
| Default No-route URL | `web/default/no_route` |  | | System-specific | |
| Cookie Path | `web/cookie/cookie_path` |  | | System-specific | |
| Cookie Domain | `web/cookie/cookie_domain` |  | | System-specific | |
| Cookie Lifetime | `web/cookie/cookie_lifetime` |  | | System-specific | |
| Use HTTP Only | `web/cookie/cookie_httponly` |  | | System-specific | |
| Cookie Restriction Mode | `web/cookie/cookie_restriction` |  | | System-specific | |

{style="table-layout:auto"}

### Currency setup sensitive and system-specific paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **General** > **Currency setup**.

| Name | Config path | Commerce version support| Encrypted? | System-specific? | Sensitive? |
| --- | --- | --- | --- | --- | --- |
| Error Email Recipient | `currency/import/error_email` |  | | | Sensitive |

{style="table-layout:auto"}

### Store email address sensitive and system-specific paths

These configuration values are available in the Admin in **Stores** > Settings > **Email Configuration** > **General** > **Store Email Addresses**.

| Name  | Config path | Commerce version support| Encrypted? | System-specific? | Sensitive? |
|--------------|--------------|--------------|--------------|--------------|--------------|
| Sender Name | `trans_email/ident_general/name` | | | | Sensitive |
| Sender Email | `trans_email/ident_general/email` |  | | | Sensitive |
| Sender Name | `trans_email/ident_sales/name` |  | | | Sensitive |
| Sender Email | `trans_email/ident_sales/email` |  | | | Sensitive |
| Sender Name | `trans_email/ident_support/name` |  | | | Sensitive |
| Sender Email | `trans_email/ident_support/email` |  | | | Sensitive |
| Sender Name | `trans_email/ident_custom1/name` |  | | | Sensitive |
| Sender Email | `trans_email/ident_custom1/email` |  | | | Sensitive |
| Sender Name | `trans_email/ident_custom2/name` |  | | | Sensitive |
| Sender Email | `trans_email/ident_custom2/email` |  | | | Sensitive |

{style="table-layout:auto"}

### Contacts sensitive and system-specific paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **General** > **Contacts**.

| Name  | Config path | Commerce version support| Encrypted? | System-specific? | Sensitive? |
|--------------|--------------|--------------|--------------|--------------|--------------|
| Send Emails To | `contact/email/recipient_email` |  | | | Sensitive |
| Email Sender | `contact/email/sender_email_identity` |  | | | Sensitive |
| Email Template | `contact/email/email_template` |  | | | Sensitive |

{style="table-layout:auto"}

### New Relic reporting sensitive and system-specific paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **General** > **New Relic Reporting**.

| Name  | Config path | Commerce version support| Encrypted? | System-specific? | Sensitive? |
|--------------|--------------|--------------|--------------|--------------|--------------|
| New Relic Account ID | `newrelicreporting/general/account_id` |  | | | Sensitive |
| New Relic Application ID | `newrelicreporting/general/app_id` |  | | | Sensitive |
| New Relic API Key | `newrelicreporting/general/api` |  | Encrypted | | Sensitive |
| Insights API Key | `newrelicreporting/general/insights_insert_key` |  | Encrypted | | Sensitive |
| New Relic API URL | `newrelicreporting/general/api_url` |  | | System-specific | Sensitive |
| Insights API URL | `newrelicreporting/general/insights_api_url` |  | | System-specific | Sensitive |

{style="table-layout:auto"}

## Customers category sensitive and system-specific paths

This section lists variable names and config paths available for options in the Admin under **Stores** > Settings > **Configuration** > **Customers**.

### Customer configuration sensitive and system-specific paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Customers** > **Customer Configuration**.

| Name  | Config path | Commerce version support| Encrypted? | System-specific? | Sensitive? |
|--------------|--------------|--------------|--------------|--------------|--------------|
| Default Email Domain | `customer/create_account/email_domain` |  | | System-specific | |

{style="table-layout:auto"}

## Catalog category

This section lists variable names and config paths available for options in the Admin under **Stores** > Settings > **Configuration** > **Catalog**.

### Catalog sensitive and system-specific paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Catalog** > **Catalog**.

| Name | Config path | Commerce version support | Encrypted? | System-specific? | Sensitive? |
|--------------|--------------|--------------|--------------|--------------|--------------|
| Error Email Recipient | `catalog/productalert_cron/error_email` |  | | | Sensitive |
| YouTube API Key | `catalog/product_video/youtube_api_key` |  | | | Sensitive |
| Solr Server Hostname | `catalog/search/solr_server_hostname` | Commerce Enterprise only | | System-specific | Sensitive |
| Solr Server Port | `catalog/search/solr_server_port` | Commerce Enterprise only | | System-specific | Sensitive |
| Solr Server Username | `catalog/search/solr_server_username` | Commerce Enterprise only | | System-specific | Sensitive |
| Solr Server Password | `catalog/search/solr_server_password` | Commerce Enterprise only | | System-specific | Sensitive |
| Solr Server Path | `catalog/search/solr_server_path` | Commerce Enterprise only | | System-specific | Sensitive |
| Elasticsearch Server Hostname | `catalog/search/elasticsearch_server_hostname` |  | | System-specific | Sensitive |
| Elasticsearch Server Port | `catalog/search/elasticsearch_server_port` |  | | System-specific | Sensitive |
| Elasticsearch Index Prefix | `catalog/search/elasticsearch_index_prefix` |  | | System-specific | Sensitive |
| Enable Elasticsearch HTTP Auth | `catalog/search/elasticsearch_enable_auth` |  | | System-specific | |
| Elasticsearch HTTP Username | `catalog/search/elasticsearch_username` |  | | System-specific | |
| Elasticsearch HTTP Password | `catalog/search/elasticsearch_password` |  | | System-specific | |
| Elasticsearch Server Timeout | `catalog/search/elasticsearch_server_timeout` |  | | System-specific | |
| Elasticsearch HTTP Username | `catalog/search/elasticsearch_username` | | | System-specific | |
| Elasticsearch HTTP Password | `catalog/search/elasticsearch_password` | | | System-specific | |
| Elasticsearch Server Timeout | `catalog/search/elasticsearch_server_timeout` | | | System-specific | |
| OpenSearch Server Hostname | `catalog/search/opensearch_server_hostname` | | | System-specific | Sensitive |
| OpenSearch Server Port | `catalog/search/opensearch_server_port` | | | System-specific | Sensitive |
| OpenSearch Index Prefix | `catalog/search/opensearch_index_prefix` | | | System-specific | Sensitive |
| Enable OpenSearch HTTP Auth | `catalog/search/opensearch_enable_auth` | | | System-specific | |
| OpenSearch HTTP Username | `catalog/search/opensearch_username` | | | System-specific | |
| OpenSearch HTTP Password | `catalog/search/opensearch_password` | | | System-specific | |
| OpenSearch Server Timeout | `catalog/search/opensearch_server_timeout` | | | System-specific | |

{style="table-layout:auto"}

>[!NOTE]
>
>OpenSearch settings were introduced in Adobe Commerce 2.4.6.

### Inventory sensitive and system-specific paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Catalog** > **Inventory**.

| Name | Config path | Commerce version support| Encrypted? | System-specific? | Sensitive? | |
|--------------|--------------|--------------|--------------|--------------|--------------| |
| Google API key | `cataloginventory/source_selection_distance_based_google/api_key` |  | Encrypted | | Sensitive |

### XML sitemap sensitive and system-specific paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Catalog** > **XML Sitemap**.

| Name | Config path | Commerce version support| Encrypted? | System-specific? | Sensitive? |
|--------------|--------------|--------------|--------------|--------------|--------------|
| Error Email Recipient | `sitemap/generate/error_email` |  | | | Sensitive |

{style="table-layout:auto"}

## Sales category

This section lists variable names and config paths available for options in the Admin under **Stores** > Settings > **Configuration** > **Sales**.

### Shipping settings sensitive and system-specific paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Sales** > **Shipping Settings**.

| Name | Config path | Commerce version support| Encrypted? | System-specific? | Sensitive? |
|--------------|--------------|--------------|--------------|--------------|--------------|
| Country | `shipping/origin/country_id` |  | | | Sensitive |
| Region/State | `shipping/origin/region_id` |  | | | Sensitive |
| ZIP/Postal Code | `shipping/origin/postcode` |  | | | Sensitive |
| City | `shipping/origin/city` |  | | | Sensitive |
| Street Address | `shipping/origin/street_line1` |  | | | Sensitive |
| Street Address Line 2 | `shipping/origin/street_line2` |  | | | Sensitive |
| Live Account | `carriers/ups/is_account_live` |  | | System-specific | |

{style="table-layout:auto"}

### Sales emails sensitive and system-specific paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Sales** > **Sales Emails**.

| Name | Config path | Commerce version support| Encrypted? | System-specific? | Sensitive? |
|--------------|--------------|--------------|--------------|--------------|--------------|
| Send Order Email Copy To | `sales_email/order/copy_to` |  | | | Sensitive |
| Send Order Comment Email Copy To | `sales_email/order_comment/copy_to` |  | | | Sensitive |
| Send Invoice Email Copy To | `sales_email/invoice/copy_to` |  | | | Sensitive |
| Send Invoice Comment Email Copy To | `sales_email/invoice_comment/copy_to` |  | | | Sensitive |
| Send Shipment Email Copy To | `sales_email/shipment/copy_to` |  | | | Sensitive |
| Send Shipment Comment Email Copy To | `sales_email/shipment_comment/copy_to` |  | | | Sensitive |
| Send Credit Memo Email Copy To | `sales_email/creditmemo/copy_to` |  | | | Sensitive |
| Send Credit Memo Comment Email Copy To | `sales_email/creditmemo_comment/copy_to` |  | | | Sensitive |
| Send Pickup Ready Email Copy To | `sales_email/temando_pickup/copy_to` |  | | | Sensitive |

{style="table-layout:auto"}

### Checkout sensitive and system-specific paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Sales** > **Checkout**.

| Name | Config path | Commerce version support| Encrypted? | System-specific? | Sensitive? |
|--------------|--------------|--------------|--------------|--------------|--------------|
| Send Payment Failed Email Copy To | `checkout/payment_failed/copy_to` |  | | | Sensitive |

{style="table-layout:auto"}

### Google API sensitive and system-specific paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Sales** > **Google API**.

| Name | Config path | Commerce version support| Encrypted? | System-specific? | Sensitive? |
|--------------|--------------|--------------|--------------|--------------|--------------|
| Container Id | `google/analytics/container_id` | Commerce Enterprise only | | | Sensitive |

{style="table-layout:auto"}

### Delivery methods sensitive and system-specific paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Sales** > **Delivery Methods**.

| Name | Config path | Commerce version support| Encrypted? | System-specific? | Sensitive? |
|--------------|--------------|--------------|--------------|--------------|--------------|
| Gateway URL | `carriers/usps/gateway_url` |  | | | Sensitive |
| Secure Gateway URL | `carriers/usps/gateway_secure_url` |  | | | Sensitive |
| Title | `carriers/usps/title` |  | | | |
| User ID | `carriers/usps/userid` |  | Encrypted | | Sensitive |
| Password | `carriers/usps/password` |  | Encrypted | | Sensitive |
| User ID | `carriers/ups/username` |  | Encrypted | | Sensitive |
| Password | `carriers/ups/password` |  | Encrypted | | Sensitive |
| Access License Number | `carriers/ups/access_license_number` |  | Encrypted | | Sensitive |
| Tracking XML URL | `carriers/ups/tracking_xml_url` |  | | | Sensitive |
| Gateway XML URL | `carriers/ups/gateway_xml_url` |  | | | Sensitive |
| Shipper Number | `carriers/ups/shipper_number` |  | | | Sensitive |
| Debug | `carriers/ups/debug` |  | | | Sensitive |
| Account ID | `carriers/fedex/account` |  | Encrypted | | Sensitive |
| Key | `carriers/fedex/key` |  | Encrypted | | Sensitive |
| Meter Number | `carriers/fedex/meter_number` |  | Encrypted | | Sensitive |
| Password | `carriers/fedex/password` |  | Encrypted | | Sensitive |
| Access ID | `carriers/dhl/id` |  | Encrypted | | Sensitive |
| Password | `carriers/dhl/password` |  | Encrypted | | Sensitive |
| Debug | `carriers/dhl/debug` |  | | | |
| Account Number | `carriers/dhl/account` |  | | | Sensitive |
| Gateway URL | `carriers/dhl/gateway_url` |  | | | Sensitive |
| Sandbox Mode | `carriers/fedex/sandbox_mode` |  | | | Sensitive |

{style="table-layout:auto"}

### Sales sensitive and system-specific paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Sales** > **Sales**.

| Name | Config path | Commerce version support| Encrypted? | System-specific? | Sensitive? |
|--------------|--------------|--------------|--------------|--------------|--------------|
| Contact Name | `sales/magento_rma/store_name` | Commerce Enterprise only | | | Sensitive |
| Street Address | `sales/magento_rma/address` | Commerce Enterprise only | | | Sensitive |
| Street Address | `sales/magento_rma/address1` |  | | | Sensitive |
| City | `sales/magento_rma/city` | Commerce Enterprise only | | | Sensitive |
| State/Province | `sales/magento_rma/region_id` | Commerce Enterprise only | | | Sensitive |
| ZIP/Postal Code | `sales/magento_rma/zip` | Commerce Enterprise only | | | Sensitive |
| Country | `sales/magento_rma/country_id` | Commerce Enterprise only | | | Sensitive |
| Send RMA Email Copy To | `sales_email/magento_rma/copy_to` | Commerce Enterprise only | | | Sensitive |
| Send RMA Authorization Email Copy To | `sales_email/magento_rma_auth/copy_to` | Commerce Enterprise only | | | Sensitive |
| Send RMA Comment Email Copy To | `sales_email/magento_rma_comment/copy_to` | Commerce Enterprise only | | | Sensitive |
| Send RMA Comment Email Copy To | `sales_email/magento_rma_customer_comment/copy_to` | Commerce Enterprise only | | | Sensitive |

{style="table-layout:auto"}

### Google API paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Sales** > **Google API**.

| Name  | Config path | Commerce version support | Encrypted? | System-specific? | Sensitive? |
|--------------|--------------|--------------|--------------|--------------|--------------|
| Account Number | `google/analytics/account` |  | | | Sensitive |

{style="table-layout:auto"}

## Advanced category

This section lists variable names and config paths available for options in the Admin under **Stores** > Settings > **Configuration** > **Advanced**.

### Admin sensitive and system-specific paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Advanced** > **Admin**.

| Name | Config path | Commerce version support | Encrypted? | System-specific? | Sensitive? |
|--------------|--------------|--------------|--------------|--------------|--------------|
| Custom Admin URL | `admin/url/custom` |  | | | Sensitive |
| Custom Admin Path | `admin/url/custom_path` |  | | | Sensitive |

{style="table-layout:auto"}

### System sensitive and system-specific paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Advanced** > **System**.

| Name | Config path | Commerce version support | Encrypted? | System-specific? | Sensitive? |
|--------------|--------------|--------------|--------------|--------------|--------------|
| Error Email Recipient | `system/magento_scheduled_import_export_log/error_email` |  | | | Sensitive |
| Access list | `system/full_page_cache/varnish/access_list` |  |  | | Sensitive |
| Error Email Sender | `system/magento_scheduled_import_export_log/error_email_identity` |  |  | | Sensitive |

{style="table-layout:auto"}

### Developer sensitive and system-specific paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Advanced** > **Developer**.

| Name | Config path | Commerce version support | Encrypted? | System-specific? | Sensitive? |
|--------------|--------------|--------------|--------------|--------------|--------------|
| Allowed IPs (comma separated) | `dev/restrict/allow_ips` |  | | System-specific | Sensitive |

{style="table-layout:auto"}

## Advanced category

This section lists variable names and config paths available for options in the Admin under **Stores** > Settings > **Configuration** > **Advanced**.

### System paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Advanced** > **System**.

| Name | Config path | Commerce version support | Encrypted? | System-specific? | Sensitive? |
|--------------|--------------|--------------|--------------|--------------|--------------|
| Host | `system/smtp/host` |  | | System-specific | Sensitive |
| Port (25) | `system/smtp/port` |  | | System-specific | Sensitive |
| Backend host | `system/full_page_cache/varnish/backend_host` |  | | System-specific | Sensitive |
| Backend port | `system/full_page_cache/varnish/backend_port` |  | | System-specific | Sensitive |

{style="table-layout:auto"}

### Developer paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Advanced** > **Developer**.

| Name  | Config path | Commerce version support | Encrypted? | System-specific? | Sensitive? |
|--------------|--------------|--------------|--------------|--------------|--------------|
| Log JS Errors to Session Storage Key | `dev/js/session_storage_key` | ![Not Commerce-only](/help/assets/configuration/red-x.png) | | System-specific | |

{style="table-layout:auto"}

## Payment sensitive and system-specific paths

This section lists variable names and config paths available for options in the Admin under **Stores** > Settings > **Configuration** > **Sales** > **Payment**.

### General variable

| Name | Config path | Commerce version support | Encrypted? |
|--------------|--------------|--------------|--------------|
| Merchant Country | `paypal/general/merchant_country` |  | Sensitive |

{style="table-layout:auto"}

>[!INFO]
>
>Your choice for this variable determines which [International paths](#international-paths) you can use.

### PayPal sensitive and system-specific paths

| Name | Config path | Commerce version support | Encrypted? | System-specific? | Sensitive? |
|--------------|--------------|--------------|--------------|--------------|--------------|
| Email Associated with PayPal Merchant Account (Optional) | `paypal/general/business_account` |  | | | Sensitive |
| Merchant Account ID | `payment/paypal_express/merchant_id` |  | | | Sensitive |
| Publisher ID | `payment/paypal_express_bml/publisher_id` |  | | | Sensitive |
| Password | `paypal/fetch_reports/ftp_password` |  | Encrypted | | Sensitive |
| Login | `paypal/fetch_reports/ftp_login` |  | Encrypted | | Sensitive |
| Custom Endpoint Hostname or IP-Address | `paypal/fetch_reports/ftp_ip` |  | | System-specific | Sensitive |
| Sandbox Mode | `paypal/fetch_reports/ftp_sandbox` |  | | System-specific | |
| Debug Mode | `payment/paypal_express/debug` |  | | System-specific | |
| Debug Mode | `payment/paypal_billing_agreement/debug` |  | | System-specific | |
| SFTP Credentials | `payment_all_paypal/express_checkout/settings_ec/settings_ec_advanced/express_checkout_settlement_report/heading_sftp` |  | | | Sensitive |

{style="table-layout:auto"}

### PayPal Payflow Pro sensitive and system-specific paths

| Name  | Config path | Commerce version support | Encrypted? | System-specific? | Sensitive? |
|--------------|--------------|--------------|--------------|--------------|--------------|
| User | `payment/payflow_advanced/user` |  | Encrypted | | Sensitive |
| Password | `payment/payflow_advanced/pwd` |  | Encrypted | | Sensitive |
| Custom Path | `paypal/fetch_reports/ftp_path` |  | | System-specific |  Sensitive |
| User | `payment/payflowpro/user` |  | Encrypted | | Sensitive |
| Password | `payment/payflowpro/pwd` |  | Encrypted | System-specific | Sensitive |
| Test Mode | `payment/payflowpro/sandbox_flag` |  | | System-specific | |
| Partner | `payment/payflowpro/partner` |  | | | Sensitive |
| Proxy Host | `payment/payflowpro/proxy_host` |  | | System-specific | Sensitive |
| Proxy Port | `payment/payflowpro/proxy_port` |  | | System-specific | Sensitive |
| Debug Mode | `payment/payflowpro/debug` |  | | System-specific | |
| SFTP Credentials | `payment_all_paypal/paypal_payflowpro/settings_paypal_payflow/settings_paypal_payflow_advanced/paypal_payflow_settlement_report/heading_sftp` |  | | System-specific | |
| Credit Card Settings | `payment_all_paypal/paypal_payflowpro/settings_paypal_payflow/heading_cc` |  | | | Sensitive |

{style="table-layout:auto"}

### PayPal Payflow Link sensitive and system-specific paths

| Name | Config path | Commerce version support | Encrypted? | System-specific? | Sensitive? |
|--------------|--------------|--------------|--------------|--------------|--------------|
| User | `payment/payflow_link/user` |  | Encrypted | | Sensitive |
| Password | `payment/payflow_link/pwd` |  | Encrypted | | Sensitive |
| Test Mode | `payment/payflow_link/sandbox_flag` |  | | System-specific | |
| Use Proxy | `payment/payflow_link/use_proxy` |  | | System-specific | |
| Proxy Host | `payment/payflow_link/proxy_host` |  | | System-specific | |
| Proxy Port | `payment/payflow_link/proxy_port` |  |  | System-specific | |
| Debug Mode | `payment/payflow_link/debug` |  | | System-specific | |
| URL method for Cancel URL and Return URL | `payment/payflow_link/url_method` |  | | System-specific | |
| Debug Mode | `payment/payflow_express/debug` |  | | System-specific | |
| SFTP Credentials | `payment_all_paypal/payflow_link/settings_payflow_link/settings_payflow_link_advanced/payflow_link_settlement_report/heading_sftp` |  | | | Sensitive |

{style="table-layout:auto"}

### PayPal Payments Pro sensitive and system-specific paths

| Name | Config path | Commerce version support | Encrypted? | System-specific? | Sensitive? |
|--------------|--------------|--------------|--------------|--------------|--------------|
| API Username | `paypal/wpp/api_username` |  | Encrypted | | Sensitive |
| API Password | `paypal/wpp/api_password` |  | Encrypted | | Sensitive |
| API Signature | `paypal/wpp/api_signature` |  | Encrypted | | Sensitive |
| API Certificate | `paypal/wpp/api_cert` |  | | | Sensitive |
| Proxy Host | `paypal/wpp/proxy_host` |  | | System-specific | Sensitive |
| Proxy Port | `paypal/wpp/proxy_port` |  | | System-specific | Sensitive |
| Sandbox Mode | `paypal/wpp/sandbox_flag` |  | | System-specific | |
| SFTP Credentials | `payment_all_paypal/payments_pro_hosted_solution_without_bml/pphs_settings/pphs_settings_advanced/pphs_settlement_report/heading_sftp` |  | | | Sensitive |

{style="table-layout:auto"}

### PayPal Payments Pro Hosted sensitive and system-specific paths

| Name | Config path | Commerce version support | Encrypted? | System-specific? | Sensitive? |
|--------------|--------------|--------------|--------------|--------------|--------------|
| Debug Mode | `payment/hosted_pro/debug` |  | | System-specific | |
| SFTP Credentials | `payment_all_paypal/payments_pro_hosted_solution/pphs_settings/pphs_settings_advanced/pphs_settlement_report/heading_sftp` |  | | | Sensitive |
| SFTP Credentials | `payment_au/paypal_group_all_in_one/payments_pro_hosted_solution_au/pphs_settings/pphs_settings_advanced/pphs_settlement_report/heading_sftp` |  | | | Sensitive |

{style="table-layout:auto"}

### Braintree sensitive and system-specific paths

| Name | Config path | Commerce version support | Encrypted? | System-specific? | Sensitive? |
|--------------|--------------|--------------|--------------|--------------|--------------|
| Merchant ID | `payment/braintree/merchant_id` |  | | | Sensitive |
| Public Key | `payment/braintree/public_key` |  | Encrypted | | Sensitive |
| Private Key | `payment/braintree/private_key` |  | Encrypted | | Sensitive |
| Merchant Account ID | `payment/braintree/merchant_account_id` |  | | | Sensitive |
| Kount Merchant ID | `payment/braintree/kount_id` |  | | | Sensitive |
| Override Merchant Name | `payment/braintree_paypal/merchant_name_override` |  | | | Sensitive |
| Phone | `payment/braintree/descriptor_phone` |  | | | Sensitive |
| URL | `payment/braintree/descriptor_url` |  | | System-specific | |

{style="table-layout:auto"}

### Check / Money Order paths

| Name | Config path | Commerce version support | Encrypted? | System-specific? | Sensitive? |
|--------------|--------------|--------------|--------------|--------------|--------------|
| Send Check to | `payment/checkmo/mailing_address` |  | | | Sensitive |
| Send Check to | `payment_us/checkmo/mailing_address` |  | | | Sensitive |

{style="table-layout:auto"}

### International paths

| Name | Config path | Commerce version support | Encrypted? | System-specific? | Sensitive? |
|--------------|--------------|--------------|--------------|--------------|--------------|
| Transaction Key | `payment_au/authorizenet_directpost/trans_key` |  | Encrypted | System-specific | Sensitive |
| Test Mode | `payment_au/authorizenet_directpost/test` |  | | System-specific | |
| Gateway URL | `payment_au/authorizenet_directpost/cgi_url` |  | | System-specific | Sensitive |
| Transaction Details URL | `payment_au/authorizenet_directpost/cgi_url_td` |  | | System-specific | Sensitive |
| Transaction Key | `payment_au/cybersource/transaction_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Access Key | `payment_au/cybersource/access_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Secret Key | `payment_au/cybersource/secret_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Test Mode | `payment_au/cybersource/sandbox_flag` | Commerce Enterprise only | | System-specific | |
| Payment Response Password | `payment_au/worldpay/response_password` | Commerce Enterprise only | | System-specific | Sensitive |
| Remote Admin Authorization Password | `payment_au/worldpay/auth_password` | Commerce Enterprise only | | System-specific | Sensitive |
| Sandbox Mode | `payment_au/eway/sandbox_flag` | Commerce Enterprise only | | System-specific | |
| Live API Key | `payment_au/eway/live_api_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Live API Password | `payment_au/eway/live_api_password` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Live Client-side Encryption Key | `payment_au/eway/live_encryption_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Sandbox API Key | `payment_au/eway/sandbox_api_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Sandbox API Password | `payment_au/eway/sandbox_api_password` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Sandbox Client-side Encryption Key | `payment_au/eway/sandbox_encryption_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Transaction Key | `payment_es/authorizenet_directpost/trans_key` |  | Encrypted | System-specific | Sensitive |
| Test Mode | `payment_es/authorizenet_directpost/test` |  | | System-specific | |
| Gateway URL | `payment_es/authorizenet_directpost/cgi_url` |  | | System-specific | Sensitive |
| Transaction Details URL | `payment_es/authorizenet_directpost/cgi_url_td` |  | | System-specific | Sensitive |
| Transaction Key | `payment_es/cybersource/transaction_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Access Key | `payment_es/cybersource/access_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Secret Key | `payment_es/cybersource/secret_key` |Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Test Mode | `payment_es/cybersource/sandbox_flag` | Commerce Enterprise only | | System-specific | |
| Payment Response Password | `payment_es/worldpay/response_password` | Commerce Enterprise only | | System-specific | Sensitive |
| Remote Admin Authorization Password | `payment_es/worldpay/auth_password` | Commerce Enterprise only | | System-specific | Sensitive |
| MD5 Secret for Transactions | `payment_es/worldpay/md5_secret` | Commerce Enterprise only | | System-specific | Sensitive |
| Debug | `payment_es/worldpay/debug` | Commerce Enterprise only | | System-specific | |
| Sandbox Mode | `payment_es/eway/sandbox_flag` | Commerce Enterprise only | | System-specific | |
| Live API Key | `payment_es/eway/live_api_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Live API Password | `payment_es/eway/live_api_password` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Live Client-side Encryption Key | `payment_es/eway/live_encryption_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Sandbox API Key | `payment_es/eway/sandbox_api_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Sandbox API Password | `payment_es/eway/sandbox_api_password` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Sandbox Client-side Encryption Key | `payment_es/eway/sandbox_encryption_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Transaction Key | `payment_nz/authorizenet_directpost/trans_key` |  | Encrypted | System-specific | Sensitive |
| Test Mode | `payment_nz/authorizenet_directpost/test` |  | | System-specific | |
| Gateway URL | `payment_nz/authorizenet_directpost/cgi_url` |  | | System-specific | Sensitive |
| Transaction Details URL | `payment_nz/authorizenet_directpost/cgi_url_td` |  | | System-specific | Sensitive |
| Test Mode | `payment_nz/cybersource/sandbox_flag` | Commerce Enterprise only | | System-specific | |
| Test Mode | `payment_nz/worldpay/sandbox_flag` | Commerce Enterprise only | | System-specific | |
| Sandbox Mode | `payment_nz/eway/sandbox_flag` | Commerce Enterprise only | | System-specific | |
| Live API Key | `payment_nz/eway/live_api_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Live API Password | `payment_nz/eway/live_api_password` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Live Client-side Encryption Key | `payment_nz/eway/live_encryption_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Sandbox API Key | `payment_nz/eway/sandbox_api_key` | Commerce Enterprise only | Encrypted | | Sensitive |
| Sandbox API Password | `payment_nz/eway/sandbox_api_password` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Sandbox Client-side Encryption Key | `payment_nz/eway/sandbox_encryption_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Test Mode | `payment/payflow_advanced/sandbox_flag` |  | | System-specific | |
| Proxy Host | `payment/payflow_advanced/proxy_host` |  | | System-specific | Sensitive |
| Proxy Port | `payment/payflow_advanced/proxy_port` |  | | System-specific | |
| Debug Mode | `payment/payflow_advanced/debug` |  | | System-specific | |
| URL method for Cancel URL and Return URL | `payment/payflow_advanced/url_method` |  | | System-specific | |
| Test Mode | `payment_us/authorizenet_directpost/test` |  | | System-specific | |
| Gateway URL | `payment_us/authorizenet_directpost/cgi_url` |  | | System-specific | Sensitive |
| Transaction Details URL | `payment_us/authorizenet_directpost/cgi_url_td` |  | | System-specific | Sensitive |
| Access Key | `payment_us/cybersource/access_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Secret Key | `payment_us/cybersource/secret_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Test Mode | `payment_us/cybersource/sandbox_flag` | Commerce Enterprise only | | System-specific | |
| Test Mode | `payment_us/worldpay/sandbox_flag` | Commerce Enterprise only | | System-specific | |
| Sandbox Mode | `payment_us/eway/sandbox_flag` | Commerce Enterprise only | | System-specific | |
| Live API Key | `payment_us/eway/live_api_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Live API Password | `payment_us/eway/live_api_password` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Live Client-side Encryption Key | `payment_us/eway/live_encryption_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Sandbox API Key | `payment_us/eway/sandbox_api_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Sandbox API Password | `payment_us/eway/sandbox_api_password` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Sandbox Client-side Encryption Key | `payment_us/eway/sandbox_encryption_key` | Commerce Enterprise only | Encrypted | System-specific | |
| Test Mode | `payment_gb/cybersource/sandbox_flag` | Commerce Enterprise only | | System-specific | |
| Test Mode | `payment_gb/authorizenet_directpost/test` |  | | System-specific | |
| Gateway URL | `payment_gb/authorizenet_directpost/cgi_url` |  | | System-specific | Sensitive |
| Transaction Details URL | `payment_gb/authorizenet_directpost/cgi_url_td` |  | | System-specific | Sensitive |
| Test Mode | `payment_gb/worldpay/sandbox_flag` | Commerce Enterprise only | | System-specific | |
| Sandbox Mode | `payment_gb/eway/sandbox_flag` | Commerce Enterprise only | | System-specific | |
| Live API Key | `payment_gb/eway/live_api_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Live API Password | `payment_gb/eway/live_api_password` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Live Client-side Encryption Key | `payment_gb/eway/live_encryption_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Sandbox API Key | `payment_gb/eway/sandbox_api_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Sandbox API Password | `payment_gb/eway/sandbox_api_password` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Sandbox Client-side Encryption Key | `payment_gb/eway/sandbox_encryption_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Transaction Key | `payment_de/cybersource/transaction_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Access Key | `payment_de/cybersource/access_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Secret Key | `payment_de/cybersource/secret_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Test Mode | `payment_de/cybersource/sandbox_flag` | Commerce Enterprise only | | System-specific | |
| Transaction Key | `payment_de/authorizenet_directpost/trans_key` |  | Encrypted | System-specific | Sensitive |
| Test Mode | `payment_de/authorizenet_directpost/test` |  | | System-specific | |
| Gateway URL | `payment_de/authorizenet_directpost/cgi_url` |  | | System-specific | Sensitive |
| Transaction Details URL | `payment_de/authorizenet_directpost/cgi_url_td` |  | | System-specific | Sensitive |
| Payment Response Password | `payment_de/worldpay/response_password` | Commerce Enterprise only | | System-specific | Sensitive |
| Remote Admin Authorization Password | `payment_de/worldpay/auth_password` | Commerce Enterprise only | | System-specific | Sensitive |
| Debug | `payment_de/worldpay/debug` | Commerce Enterprise only | | System-specific | |
| Sandbox Mode | `payment_de/eway/sandbox_flag` | Commerce Enterprise only | | System-specific | |
| Live API Key | `payment_de/eway/live_api_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Live API Password | `payment_de/eway/live_api_password` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Live Client-side Encryption Key | `payment_de/eway/live_encryption_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Sandbox API Key | `payment_de/eway/sandbox_api_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Sandbox API Password | `payment_de/eway/sandbox_api_password` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Sandbox Client-side Encryption Key | `payment_de/eway/sandbox_encryption_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Transaction Key | `payment_other/authorizenet_directpost/trans_key` |  | Encrypted | System-specific | Sensitive |
| Test Mode | `payment_other/authorizenet_directpost/test` |  | | System-specific | Sensitive |
| Gateway URL | `payment_other/authorizenet_directpost/cgi_url` |  | | System-specific | Sensitive |
| Transaction Details URL | `payment_other/authorizenet_directpost/cgi_url_td` |  | | System-specific | |
| Transaction Key | `payment_other/cybersource/transaction_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Access Key | `payment_other/cybersource/access_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Secret Key | `payment_other/cybersource/secret_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| New Order Status | `payment_other/cybersource/order_status` | Commerce Enterprise only | | System-specific | |
| Test Mode | `payment_other/cybersource/sandbox_flag` | Commerce Enterprise only | | System-specific | |
| Payment Response Password | `payment_other/worldpay/response_password` | Commerce Enterprise only | | System-specific | Sensitive |
| Remote Admin Authorization Password | `payment_other/worldpay/auth_password` | Commerce Enterprise only | | System-specific | Sensitive |
| Test Mode | `payment_other/worldpay/sandbox_flag` | Commerce Enterprise only | | System-specific | |
| Sandbox Mode | `payment_other/eway/sandbox_flag` | Commerce Enterprise only | | System-specific | |
| Live API Key | `payment_other/eway/live_api_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Live API Password | `payment_other/eway/live_api_password` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Live Client-side Encryption Key | `payment_other/eway/live_encryption_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Sandbox API Key | `payment_other/eway/sandbox_api_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Sandbox API Password | `payment_other/eway/sandbox_api_password` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Sandbox Client-side Encryption Key | `payment_other/eway/sandbox_encryption_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Transaction Key | `payment_ca/authorizenet_directpost/trans_key` |  | Encrypted | System-specific | Sensitive |
| Test Mode | `payment_ca/authorizenet_directpost/test` |  | | System-specific | |
| Gateway URL | `payment_ca/authorizenet_directpost/cgi_url` |  | | System-specific | Sensitive |
| Transaction Details URL | `payment_ca/authorizenet_directpost/cgi_url_td` |  | | System-specific | Sensitive |
| Transaction Key | `payment_ca/cybersource/transaction_key` | Commerce Enterprise only | Encrypted |  System-specific | Sensitive |
| Access Key | `payment_ca/cybersource/access_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Secret Key | `payment_ca/cybersource/secret_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| New Order Status | `payment_ca/cybersource/order_status` | Commerce Enterprise only | | | |
| Test Mode | `payment_ca/cybersource/sandbox_flag` | Commerce Enterprise only | | System-specific | |
| Payment Response Password | `payment_ca/worldpay/response_password` | Commerce Enterprise only | | System-specific | |
| Remote Admin Authorization Password | `payment_ca/worldpay/auth_password` | Commerce Enterprise only | | System-specific | Sensitive |
| Test Mode | `payment_ca/worldpay/sandbox_flag` | Commerce Enterprise only | | System-specific | |
| Sandbox Mode | `payment_ca/eway/sandbox_flag` | Commerce Enterprise only | | System-specific | |
| Live API Key | `payment_ca/eway/live_api_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Live API Password | `payment_ca/eway/live_api_password` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Live Client-side Encryption Key | `payment_ca/eway/live_encryption_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Sandbox API Key | `payment_ca/eway/sandbox_api_key` | Commerce Enterprise only | Encrypted | |  Sensitive |
| Sandbox API Password | `payment_ca/eway/sandbox_api_password` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Sandbox Client-side Encryption Key | `payment_ca/eway/sandbox_encryption_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Transaction Key | `payment_hk/authorizenet_directpost/trans_key` |  | Encrypted | System-specific | Sensitive |
| Test Mode | `payment_hk/authorizenet_directpost/test` |  | | System-specific | |
| Gateway URL | `payment_hk/authorizenet_directpost/cgi_url` |  | | | Sensitive |
| Transaction Details URL | `payment_hk/authorizenet_directpost/cgi_url_td` |  | | System-specific | Sensitive |
| Transaction Key | `payment_hk/cybersource/transaction_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Access Key | `payment_hk/cybersource/access_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Secret Key | `payment_hk/cybersource/secret_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Test Mode | `payment_hk/cybersource/sandbox_flag` | Commerce Enterprise only | | System-specific | Sensitive |
| Payment Response Password | `payment_hk/worldpay/response_password` | Commerce Enterprise only | | System-specific | Sensitive |
| Remote Admin Authorization Password | `payment_hk/worldpay/auth_password` | Commerce Enterprise only | | System-specific | Sensitive |
| Test Mode | `payment_hk/worldpay/sandbox_flag` | Commerce Enterprise only | | System-specific | Sensitive |
| Live API Key | `payment_hk/eway/live_api_key` | Commerce Enterprise only | Encrypted | | Sensitive |
| Live API Password | `payment_hk/eway/live_api_password` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Live Client-side Encryption Key | `payment_hk/eway/live_encryption_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Sandbox API Key | `payment_hk/eway/sandbox_api_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Sandbox API Password | `payment_hk/eway/sandbox_api_password` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Sandbox Client-side Encryption Key | `payment_hk/eway/sandbox_encryption_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Transaction Key | `payment_jp/authorizenet_directpost/trans_key` |  | Encrypted | System-specific | Sensitive |
| Test Mode | `payment_jp/authorizenet_directpost/test` |  | | System-specific | |
| Gateway URL | `payment_jp/authorizenet_directpost/cgi_url` |  | | System-specific | Sensitive |
| Transaction Details URL | `payment_jp/authorizenet_directpost/cgi_url_td` |  | | System-specific | Sensitive |
| Transaction Key | `payment_jp/cybersource/transaction_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Access Key | `payment_jp/cybersource/access_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Secret Key | `payment_jp/cybersource/secret_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| New Order Status | `payment_jp/cybersource/order_status` | Commerce Enterprise only | | System-specific | |
| Test Mode | `payment_jp/cybersource/sandbox_flag` | Commerce Enterprise only | | System-specific | |
| Payment Response Password | `payment_jp/worldpay/response_password` | Commerce Enterprise only | | System-specific | Sensitive |
| Remote Admin Authorization Password | `payment_jp/worldpay/auth_password` | Commerce Enterprise only | | System-specific | Sensitive |
| Test Mode | `payment_jp/worldpay/sandbox_flag` | Commerce Enterprise only | | System-specific | |
| Sandbox Mode | `payment_jp/eway/sandbox_flag` | Commerce Enterprise only | | System-specific | |
| Live API Key | `payment_jp/eway/live_api_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Live API Password | `payment_jp/eway/live_api_password` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Live Client-side Encryption Key | `payment_jp/eway/live_encryption_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Sandbox API Key | `payment_jp/eway/sandbox_api_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Sandbox API Password | `payment_jp/eway/sandbox_api_password` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Sandbox Client-side Encryption Key | `payment_jp/eway/sandbox_encryption_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Transaction Key | `payment_fr/authorizenet_directpost/trans_key` |  | Encrypted | System-specific | Sensitive |
| Test Mode | `payment_fr/authorizenet_directpost/test` |  | | System-specific | |
| Gateway URL | `payment_fr/authorizenet_directpost/cgi_url` |  | | System-specific | Sensitive |
| Transaction Details URL | `payment_fr/authorizenet_directpost/cgi_url_td` |  | | System-specific | Sensitive |
| Transaction Key | `payment_fr/cybersource/transaction_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Access Key | `payment_fr/cybersource/access_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Secret Key | `payment_fr/cybersource/secret_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Test Mode | `payment_fr/cybersource/sandbox_flag` | Commerce Enterprise only | | System-specific | |
| Payment Response Password | `payment_fr/worldpay/response_password` | Commerce Enterprise only | | System-specific  | Sensitive |
| Remote Admin Authorization Password | `payment_fr/worldpay/auth_password` | Commerce Enterprise only | | System-specific | Sensitive |
| Test Mode | `payment_fr/worldpay/sandbox_flag` | Commerce Enterprise only |  | System-specific | |
| Sandbox Mode | `payment_fr/eway/sandbox_flag` | Commerce Enterprise only | | System-specific | |
| Live API Key | `payment_fr/eway/live_api_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Live API Password | `payment_fr/eway/live_api_password` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Live Client-side Encryption Key | `payment_fr/eway/live_encryption_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Sandbox API Key | `payment_fr/eway/sandbox_api_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Sandbox API Password | `payment_fr/eway/sandbox_api_password` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Sandbox Client-side Encryption Key | `payment_fr/eway/sandbox_encryption_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Transaction Key | `payment_it/authorizenet_directpost/trans_key` |  | Encrypted | System-specific | Sensitive |
| Test Mode | `payment_it/authorizenet_directpost/test` |  | | System-specific | |
| Gateway URL | `payment_it/authorizenet_directpost/cgi_url` |  | | System-specific | Sensitive |
| Transaction Details URL | `payment_it/authorizenet_directpost/cgi_url_td` |  | | System-specific | Sensitive |
| Transaction Key | `payment_it/cybersource/transaction_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Access Key | `payment_it/cybersource/access_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Secret Key | `payment_it/cybersource/secret_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Test Mode | `payment_it/cybersource/sandbox_flag` | Commerce Enterprise only | | System-specific | |
| Payment Response Password | `payment_it/worldpay/response_password` | Commerce Enterprise only | | System-specific | Sensitive |
| Remote Admin Authorization Password | `payment_it/worldpay/auth_password` | Commerce Enterprise only | | System-specific | Sensitive |
| Test Mode | `payment_it/worldpay/sandbox_flag` | Commerce Enterprise only | | System-specific | |
| Sandbox Mode | `payment_it/eway/sandbox_flag` | Commerce Enterprise only | | System-specific | |
| Live API Key | `payment_it/eway/live_api_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Live API Password | `payment_it/eway/live_api_password` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Live Client-side Encryption Key | `payment_it/eway/live_encryption_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Sandbox API Key | `payment_it/eway/sandbox_api_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Sandbox API Password | `payment_it/eway/sandbox_api_password` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| Sandbox Client-side Encryption Key | `payment_it/eway/sandbox_encryption_key` | Commerce Enterprise only | Encrypted | System-specific | Sensitive |
| API Key | `fraud_protection/signifyd/api_key`   | Commerce Enterprise only | Encrypted |  System-specific | Sensitive |
| API URL  |  `fraud_protection/signifyd/api_url`  |  Commerce Enterprise only |  | System-specific | Sensitive |
| SFTP Credentials | `payment_au/express_checkout_other/settings_ec/settings_ec_advanced/express_checkout_settlement_report/heading_sftp` |  | | | Sensitive |
| SFTP Credentials | `payment_au/paypal_group_all_in_one/wps_other/settings_ec/settings_ec_advanced/express_checkout_settlement_report/heading_sftp` |  | | | Sensitive |
| SFTP Credentials | `payment_au/paypal_payment_gateways/paypal_payflowpro_au/settings_paypal_payflow/settings_paypal_payflow_advanced/paypal_payflow_settlement_report/heading_sftp` |  | | | Sensitive |
| API Login ID | `payment_au/authorizenet_directpost/login` |  | Encrypted | | Sensitive |
| Merchant MD5 | `payment_au/authorizenet_directpost/trans_md5` |  | Encrypted | | Sensitive |
| Email Customer | `payment_au/authorizenet_directpost/email_customer` |  | | | Sensitive |
| Merchant's Email | `payment_au/authorizenet_directpost/merchant_email` |  | | | Sensitive |
| Remote Admin Installation ID | `payment_au/worldpay/admin_installation_id` | Commerce Enterprise only | | | Sensitive |
| MD5 Secret for Transactions | `payment_au/worldpay/md5_secret` | Commerce Enterprise only | | | Sensitive |
| SFTP Credentials | `payment_es/express_checkout_other/settings_ec/settings_ec_advanced/express_checkout_settlement_report/heading_sftp` |  | | | Sensitive |
| SFTP Credentials | `payment_es/paypal_group_all_in_one/payments_pro_hosted_solution_es/pphs_settings/pphs_settings_advanced/pphs_settlement_report/heading_sftp` |  | | | Sensitive |
| SFTP Credentials | `payment_es/paypal_group_all_in_one/wps_other/settings_ec/settings_ec_advanced/express_checkout_settlement_report/heading_sftp` |  | | | Sensitive |
| Send Check to | `payment_es/checkmo/mailing_address` |  | | | Sensitive |
| API Login ID | `payment_es/authorizenet_directpost/login` |  | Encrypted | | Sensitive |
| Merchant MD5 | `payment_es/authorizenet_directpost/trans_md5` |  | Encrypted | | Sensitive |
| Email Customer | `payment_es/authorizenet_directpost/email_customer` |  | | | Sensitive |
| Merchant's Email | `payment_es/authorizenet_directpost/merchant_email` |  | | | Sensitive |
| Merchant ID | `payment_es/cybersource/merchant_id` | Commerce Enterprise only | Encrypted | | Sensitive |
| Profile ID | `payment_es/cybersource/profile_id` | Commerce Enterprise only | Encrypted | | Sensitive |
| Remote Admin Installation ID | `payment_es/worldpay/admin_installation_id` | Commerce Enterprise only | | | Sensitive |
| SFTP Credentials | `payment_nz/express_checkout_other/settings_ec/settings_ec_advanced/express_checkout_settlement_report/heading_sftp` |  | | | Sensitive |
| SFTP Credentials | | | | | |
| SFTP Credentials | `payment_nz/paypal_group_all_in_one/wps_other/settings_ec/settings_ec_advanced/express_checkout_settlement_report/heading_sftp` |  | | | Sensitive |
| SFTP Credentials | `payment_nz/paypal_payment_gateways/paypal_payflowpro_nz/settings_paypal_payflow/settings_paypal_payflow_advanced/paypal_payflow_settlement_report/heading_sftp` |  | | | Sensitive |
| API Login ID | `payment_nz/authorizenet_directpost/login` |  | Encrypted | | Sensitive |
| Merchant MD5 | `payment_nz/authorizenet_directpost/trans_md5` |  | Encrypted | | Sensitive |
| Email Customer | `payment_nz/authorizenet_directpost/email_customer` |  | | | Sensitive |
| Merchant's Email | `payment_nz/authorizenet_directpost/merchant_email` |  | | | Sensitive |
| Merchant ID | `payment_nz/cybersource/merchant_id` | Commerce Enterprise only | Encrypted | | Sensitive |
| Transaction Key | `payment_nz/cybersource/transaction_key` | Commerce Enterprise only | Encrypted | | Sensitive |
| Profile ID | `payment_nz/cybersource/profile_id` | Commerce Enterprise only | Encrypted | | Sensitive |
| Access Key | `payment_nz/cybersource/access_key` | Commerce Enterprise only | Encrypted | | Sensitive |
| Secret Key | `payment_nz/cybersource/secret_key` | Commerce Enterprise only | Encrypted | | Sensitive |
| Installation ID | `payment_nz/worldpay/installation_id` | Commerce Enterprise only | | | Sensitive |
| Payment Response Password | `payment_nz/worldpay/response_password` | Commerce Enterprise only | | | Sensitive |
| Remote Admin Installation ID | `payment_nz/worldpay/admin_installation_id` | Commerce Enterprise only | | | Sensitive |
| Remote Admin Authorization Password | `payment_nz/worldpay/auth_password` | Commerce Enterprise only | | | Sensitive |
| MD5 Secret for Transactions | `payment_nz/worldpay/md5_secret` | Commerce Enterprise only | | | Sensitive |
| SFTP Credentials | `payment_us/paypal_alternative_payment_methods/express_checkout_us/settings_ec/settings_ec_advanced/express_checkout_settlement_report/heading_sftp` |  | | | Sensitive |
| SFTP Credentials | `payment_us/paypal_group_all_in_one/payflow_advanced/settings_payments_advanced/settings_payments_advanced_advanced/settlement_report/heading_sftp` |  | | | Sensitive |
| SFTP Credentials | `payment_us/paypal_group_all_in_one/wpp_usuk/settings_paypal_payflow/settings_paypal_payflow_advanced/paypal_payflow_settlement_report/heading_sftp` |  | | | Sensitive |
| SFTP Credentials | `payment_us/paypal_group_all_in_one/wps_express/settings_ec/settings_ec_advanced/express_checkout_settlement_report/heading_sftp` |  | | | Sensitive |
| SFTP Credentials | `payment_us/paypal_payment_gateways/paypal_payflowpro_with_express_checkout/settings_paypal_payflow/settings_paypal_payflow_advanced/paypal_payflow_settlement_report/heading_sftp` |  | | | Sensitive |
| SFTP Credentials | `payment_us/paypal_payment_gateways/payflow_link_us/settings_payflow_link/settings_payflow_link_advanced/payflow_link_settlement_report/heading_sftp` |  | | | Sensitive |
| API Login ID | `payment_us/authorizenet_directpost/login` |  | Encrypted | | Sensitive |
| Transaction Key | `payment_us/authorizenet_directpost/trans_key` |  | Encrypted | | Sensitive |
| Merchant MD5 | `payment_us/authorizenet_directpost/trans_md5` |  | Encrypted | | Sensitive |
| Email Customer | `payment_us/authorizenet_directpost/email_customer` |  | | | Sensitive |
| Merchant's Email | `payment_us/authorizenet_directpost/merchant_email` |  | | | Sensitive |
| Merchant ID | `payment_us/cybersource/merchant_id` | Commerce Enterprise only | Encrypted | | Sensitive |
| Transaction Key | `payment_us/cybersource/transaction_key` | Commerce Enterprise only | Encrypted | | Sensitive |
| Profile ID | `payment_us/cybersource/profile_id` | Commerce Enterprise only | Encrypted | | Sensitive |
| Installation ID | `payment_us/worldpay/installation_id` | Commerce Enterprise only | | | Sensitive |
| Payment Response Password | `payment_us/worldpay/response_password` | Commerce Enterprise only | | | Sensitive |
| Remote Admin Installation ID | `payment_us/worldpay/admin_installation_id` | Commerce Enterprise only | | | Sensitive |
| Remote Admin Authorization Password | `payment_us/worldpay/auth_password` | Commerce Enterprise only | | | Sensitive |
| MD5 Secret for Transactions | `payment_us/worldpay/md5_secret` | Commerce Enterprise only | | | Sensitive |
| SFTP Credentials | `payment_gb/paypal_alternative_payment_methods/express_checkout_gb/settings_ec/settings_ec_advanced/express_checkout_settlement_report/heading_sftp` |  |  | | Sensitive |
| SFTP Credentials | `payment_gb/paypal_group_all_in_one/payments_pro_hosted_solution_with_express_checkout/pphs_settings/pphs_settings_advanced/pphs_settlement_report/heading_sftp` |  | | | Sensitive |
| SFTP Credentials | `payment_gb/paypal_group_all_in_one/wps_express/settings_ec/settings_ec_advanced/express_checkout_settlement_report/heading_sftp` |  | | | Sensitive |
| Send Check to | `payment_gb/checkmo/mailing_address` |  | | | Sensitive |
| Merchant ID | `payment_gb/cybersource/merchant_id` | Commerce Enterprise only | Encrypted | | Sensitive |
| Transaction Key | `payment_gb/cybersource/transaction_key` | Commerce Enterprise only | Encrypted | | Sensitive |
| Profile ID | `payment_gb/cybersource/profile_id` | Commerce Enterprise only | Encrypted | | Sensitive |
| Access Key | `payment_gb/cybersource/access_key` | Commerce Enterprise only | Encrypted | | Sensitive |
| Secret Key | `payment_gb/cybersource/secret_key` | Commerce Enterprise only | Encrypted | | Sensitive |
| API Login ID | `payment_gb/authorizenet_directpost/login` |  | Encrypted | | Sensitive |
| Transaction Key | `payment_gb/authorizenet_directpost/trans_key` |  | Encrypted | | Sensitive |
| Merchant MD5 | `payment_gb/authorizenet_directpost/trans_md5` |  | Encrypted | | Sensitive |
| Email Customer | `payment_gb/authorizenet_directpost/email_customer` |  | | | Sensitive |
| Merchant's Email | `payment_gb/authorizenet_directpost/merchant_email` |  |  | | Sensitive |
| Installation ID | `payment_gb/worldpay/installation_id` | Commerce Enterprise only | | | Sensitive |
| Payment Response Password | `payment_gb/worldpay/response_password` | Commerce Enterprise only | | | Sensitive |
| Remote Admin Installation ID | `payment_gb/worldpay/admin_installation_id` | Commerce Enterprise only | | | Sensitive |
| Remote Admin Authorization Password | `payment_gb/worldpay/auth_password` | Commerce Enterprise only | | | Sensitive |
| SFTP Credentials | `payment_de/paypal_payment_solutions/express_checkout_de/settings_ec/settings_ec_advanced/express_checkout_settlement_report/heading_sftp` |  | | | Sensitive |
| Make Check Payable to | `payment_de/checkmo/payable_to` |  | | | Sensitive |
| Send Check to | `payment_de/checkmo/mailing_address` |  | | | Sensitive |
| Merchant ID | `payment_de/cybersource/merchant_id` | Commerce Enterprise only | Encrypted | | Sensitive |
| Profile ID | `payment_de/cybersource/profile_id` | Commerce Enterprise only | Encrypted | | Sensitive |
| API Login ID | `payment_de/authorizenet_directpost/login` |  | Encrypted | | Sensitive |
| Merchant MD5 | `payment_de/authorizenet_directpost/trans_md5` |  | Encrypted | | Sensitive |
| Email Customer | `payment_de/authorizenet_directpost/email_customer` |  | | | Sensitive |
| Merchant's Email | `payment_de/authorizenet_directpost/merchant_email` |  | | | Sensitive |
| Installation ID | `payment_de/worldpay/installation_id` | Commerce Enterprise only | | | |
| Remote Admin Installation ID | `payment_de/worldpay/admin_installation_id` | Commerce Enterprise only | | | Sensitive |
| MD5 Secret for Transactions | `payment_de/worldpay/md5_secret` | Commerce Enterprise only | | | Sensitive |
| SFTP Credentials | `payment_other/express_checkout_other/settings_ec/settings_ec_advanced/express_checkout_settlement_report/heading_sftp` |  |  | | Sensitive |
| SFTP Credentials | `payment_other/paypal_group_all_in_one/wps_other/settings_ec/settings_ec_advanced/express_checkout_settlement_report/heading_sftp` |  | | | Sensitive |
| Make Check Payable to | `payment_other/checkmo/payable_to` |  | | | Sensitive |
| Send Check to | `payment_other/checkmo/mailing_address` |  | | | Sensitive |
| API Login ID | `payment_other/authorizenet_directpost/login` |  | Encrypted | | Sensitive |
| Merchant MD5 | `payment_other/authorizenet_directpost/trans_md5` |  | Encrypted | | Sensitive |
| New Order Status | `payment_other/authorizenet_directpost/order_status` |  | | | Sensitive |
| Merchant's Email | `payment_other/authorizenet_directpost/merchant_email` |  | | | Sensitive |
| Merchant ID | `payment_other/cybersource/merchant_id` | Commerce Enterprise only | Encrypted | | Sensitive |
| Profile ID | `payment_other/cybersource/profile_id` | Commerce Enterprise only | Encrypted | | Sensitive |
| Installation ID | `payment_other/worldpay/installation_id` | Commerce Enterprise only | | | Sensitive |
| Remote Admin Installation ID | `payment_other/worldpay/admin_installation_id` | Commerce Enterprise only | | | Sensitive |
| MD5 Secret for Transactions | `payment_other/worldpay/md5_secret` | Commerce Enterprise only | | | Sensitive |
| SFTP Credentials | `payment_ca/express_checkout_other/settings_ec/settings_ec_advanced/express_checkout_settlement_report/heading_sftp` |  | | | Sensitive |
| SFTP Credentials | `payment_ca/paypal_group_all_in_one/wps_other/settings_ec/settings_ec_advanced/express_checkout_settlement_report/heading_sftp` |  | | | Sensitive |
| SFTP Credentials | `payment_ca/paypal_payment_gateways/wpp_ca/settings_paypal_payflow/settings_paypal_payflow_advanced/paypal_payflow_settlement_report/heading_sftp` |  | | | Sensitive |
| SFTP Credentials | `payment_ca/paypal_payment_gateways/paypal_payflowpro_ca/settings_paypal_payflow/settings_paypal_payflow_advanced/paypal_payflow_settlement_report/heading_sftp` |  | | | Sensitive |
| SFTP Credentials | `payment_ca/paypal_payment_gateways/payflow_link_ca/settings_payflow_link/settings_payflow_link_advanced/payflow_link_settlement_report/heading_sftp` |  | | | Sensitive |
| Make Check Payable to | `payment_ca/checkmo/payable_to` |  | | | Sensitive |
| Send Check to | `payment_ca/checkmo/mailing_address` |  | | | Sensitive |
| API Login ID | `payment_ca/authorizenet_directpost/login` |  | Encrypted | | Sensitive |
| Merchant MD5 | `payment_ca/authorizenet_directpost/trans_md5` |  | Encrypted | | Sensitive |
| New Order Status | `payment_ca/authorizenet_directpost/order_status` |  | | | Sensitive |
| Email Customer | `payment_ca/authorizenet_directpost/email_customer` |  | | | Sensitive |
| Merchant's Email | `payment_ca/authorizenet_directpost/merchant_email` |  | | | Sensitive |
| Merchant ID | `payment_ca/cybersource/merchant_id` | Commerce Enterprise only | Encrypted | | Sensitive |
| Profile ID | `payment_ca/cybersource/profile_id` | Commerce Enterprise only | Encrypted | | Sensitive |
| Installation ID | `payment_ca/worldpay/installation_id` | Commerce Enterprise only | | | Sensitive |
| Remote Admin Installation ID | `payment_ca/worldpay/admin_installation_id` | Commerce Enterprise only | | | Sensitive |
| MD5 Secret for Transactions | `payment_ca/worldpay/md5_secret` | Commerce Enterprise only | | | Sensitive |
| SFTP Credentials | `payment_hk/express_checkout_other/settings_ec/settings_ec_advanced/express_checkout_settlement_report/heading_sftp` |  | | | Sensitive |
| SFTP Credentials | `payment_hk/paypal_group_all_in_one/payments_pro_hosted_solution_hk/pphs_settings/pphs_settings_advanced/pphs_settlement_report/heading_sftp` |  |  | | Sensitive |
| SFTP Credentials | `payment_hk/paypal_group_all_in_one/wps_other/settings_ec/settings_ec_advanced/express_checkout_settlement_report/heading_sftp` |  | | | Sensitive |
| Make Check Payable to | `payment_hk/checkmo/payable_to` |  | | | Sensitive |
| Send Check to | `payment_hk/checkmo/mailing_address` |  | | | Sensitive |
| API Login ID | `payment_hk/authorizenet_directpost/login` |  | Encrypted | | Sensitive |
| Merchant MD5 | `payment_hk/authorizenet_directpost/trans_md5` |  | Encrypted | | Sensitive |
| Email Customer | `payment_hk/authorizenet_directpost/email_customer` |  | | | Sensitive |
| Merchant's Email | `payment_hk/authorizenet_directpost/merchant_email` |  | | | Sensitive |
| Merchant ID | `payment_hk/cybersource/merchant_id` | Commerce Enterprise only | Encrypted | | Sensitive |
| Profile ID | `payment_hk/cybersource/profile_id` | Commerce Enterprise only | Encrypted | | Sensitive |
| Installation ID | `payment_hk/worldpay/installation_id` | Commerce Enterprise only | | | Sensitive |
| Remote Admin Installation ID | `payment_hk/worldpay/admin_installation_id` | Commerce Enterprise only | | | Sensitive |
| MD5 Secret for Transactions | `payment_hk/worldpay/md5_secret` | Commerce Enterprise only | | | Sensitive |
| Signature Fields | `payment_hk/worldpay/signature_fields` | Commerce Enterprise only | | | Sensitive |
| SFTP Credentials | `payment_jp/express_checkout_other/settings_ec/settings_ec_advanced/express_checkout_settlement_report/heading_sftp` |  | | | Sensitive |
| SFTP Credentials | `payment_jp/paypal_group_all_in_one/payments_pro_hosted_solution_jp/pphs_settings/pphs_settings_advanced/pphs_settlement_report/heading_sftp` |  | | | Sensitive |
| SFTP Credentials | `payment_jp/paypal_group_all_in_one/wps_other/settings_ec/settings_ec_advanced/express_checkout_settlement_report/heading_sftp` |  | | | Sensitive |
| Make Check Payable to | `payment_jp/checkmo/payable_to` |  | | | Sensitive |
| Send Check to | `payment_jp/checkmo/mailing_address` |  | | | Sensitive |
| API Login ID | `payment_jp/authorizenet_directpost/login` |  | Encrypted | | Sensitive |
| Merchant MD5 | `payment_jp/authorizenet_directpost/trans_md5` |  | Encrypted | | Sensitive |
| Email Customer | `payment_jp/authorizenet_directpost/email_customer` |  | | | Sensitive |
| Merchant's Email | `payment_jp/authorizenet_directpost/merchant_email` |  | | | Sensitive |
| Merchant ID | `payment_jp/cybersource/merchant_id` | Commerce Enterprise only | Encrypted | | Sensitive |
| Profile ID | `payment_jp/cybersource/profile_id` | Commerce Enterprise only | Encrypted | | Sensitive |
| Installation ID | `payment_jp/worldpay/installation_id` | Commerce Enterprise only | | | |
| Remote Admin Installation ID | `payment_jp/worldpay/admin_installation_id` | Commerce Enterprise only | | | Sensitive |
| MD5 Secret for Transactions | `payment_jp/worldpay/md5_secret` | Commerce Enterprise only | | | Sensitive |
| Signature Fields | `payment_jp/worldpay/signature_fields` | Commerce Enterprise only | | | Sensitive |
| SFTP Credentials | `payment_fr/express_checkout_other/settings_ec/settings_ec_advanced/express_checkout_settlement_report/heading_sftp` |  | | | Sensitive |
| SFTP Credentials | `payment_fr/paypal_group_all_in_one/payments_pro_hosted_solution_fr/pphs_settings/pphs_settings_advanced/pphs_settlement_report/heading_sftp` |  | | | Sensitive |
| SFTP Credentials | `payment_fr/paypal_group_all_in_one/wps_other/settings_ec/settings_ec_advanced/express_checkout_settlement_report/heading_sftp` |  | | | Sensitive |
| Make Check Payable to | `payment_fr/checkmo/payable_to` |  | | | Sensitive |
| Send Check to | `payment_fr/checkmo/mailing_address` |  | | | Sensitive |
| API Login ID | `payment_fr/authorizenet_directpost/login` |  | Encrypted | | Sensitive |
| Merchant MD5 | `payment_fr/authorizenet_directpost/trans_md5` |  | Encrypted | | Sensitive |
| Email Customer | `payment_fr/authorizenet_directpost/email_customer` |  | | | Sensitive |
| Merchant's Email | `payment_fr/authorizenet_directpost/merchant_email` |  | | | Sensitive |
| Merchant ID | `payment_fr/cybersource/merchant_id` | Commerce Enterprise only | Encrypted | | Sensitive |
| Profile ID | `payment_fr/cybersource/profile_id` | Commerce Enterprise only | Encrypted | | Sensitive |
| Installation ID | `payment_fr/worldpay/installation_id` | Commerce Enterprise only | | | Sensitive |
| Remote Admin Installation ID | `payment_fr/worldpay/admin_installation_id` | Commerce Enterprise only | | | Sensitive |
| MD5 Secret for Transactions | `payment_fr/worldpay/md5_secret` | Commerce Enterprise only | | | Sensitive |
| Signature Fields | `payment_fr/worldpay/signature_fields` | Commerce Enterprise only | | | Sensitive |
| SFTP Credentials | `payment_it/express_checkout_other/settings_ec/settings_ec_advanced/express_checkout_settlement_report/heading_sftp` |  | | | Sensitive |
| SFTP Credentials | `payment_it/paypal_group_all_in_one/payments_pro_hosted_solution_it/pphs_settings/pphs_settings_advanced/pphs_settlement_report/heading_sftp` |  | | | Sensitive |
| SFTP Credentials | `payment_it/paypal_group_all_in_one/wps_other/settings_ec/settings_ec_advanced/express_checkout_settlement_report/heading_sftp` |  | | | Sensitive |
| Make Check Payable to | `payment_it/checkmo/payable_to` |  | | | Sensitive |
| Send Check to | `payment_it/checkmo/mailing_address` |  | | | Sensitive |
| API Login ID | `payment_it/authorizenet_directpost/login` |  | Encrypted | | Sensitive |
| Merchant MD5 | `payment_it/authorizenet_directpost/trans_md5` |  | Encrypted | | Sensitive |
| Email Customer | `payment_it/authorizenet_directpost/email_customer` |  | | | Sensitive |
| Merchant's Email | `payment_it/authorizenet_directpost/merchant_email` |  | | | Sensitive |
| Merchant ID | `payment_it/cybersource/merchant_id` | Commerce Enterprise only | Encrypted | | Sensitive |
| Profile ID | `payment_it/cybersource/profile_id` | Commerce Enterprise only | Encrypted | | Sensitive |
| Installation ID | `payment_it/worldpay/installation_id` | Commerce Enterprise only | | | Sensitive |
| Remote Admin Installation ID | `payment_it/worldpay/admin_installation_id` | Commerce Enterprise only | | | Sensitive |
| MD5 Secret for Transactions | `payment_it/worldpay/md5_secret` | Commerce Enterprise only | | | Sensitive |

{style="table-layout:auto"}
