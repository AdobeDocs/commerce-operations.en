---
title: General configuration paths reference
description: Learn about general and advanced configuration paths and values for Adobe Commerce. Discover system, security, and administrative configuration options.
feature: Configuration, Observability, Roles/Permissions, System
exl-id: 3c557746-5182-4929-aebf-5b6fe76f0d8f
---
# General and advanced configuration paths reference

This topic lists general and advanced configuration paths and _not_ [sensitive and system-specific values](config-reference-sens.md). The [`magento app:config:dump` command](../cli/export-configuration.md) writes these values to the shared configuration file, `app/etc/config.php`, which should be in source control.

To optionally override any configuration settings or to set sensitive settings, see [Use environment variables to override configuration settings](override-config-settings.md#environment-variables).

## General category

This section lists variable names and configuration paths available for options in the Admin under **Stores** > Settings > **Configuration** > **General**.

### General paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > General > **General**.

| Name  | Config path | Commerce only? | Sensitive? |
|--------------|--------------|--------------|--------------|
| Default Country | `general/country/default` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> | ![Sensitive](/help/assets/configuration/cloud-sens.png) |
| Allow Countries | `general/country/allow` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> | ![Sensitive](/help/assets/configuration/cloud-sens.png) |
| Zip/Postal Code is optional for | `general/country/optional_zip_countries` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> | ![Sensitive](/help/assets/configuration/cloud-sens.png) |
| European Union Countries | `general/country/eu_countries` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> | ![Sensitive](/help/assets/configuration/cloud-sens.png) |
| Top destinations | `general/country/destinations` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| State is Required for | `general/region/state_required` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Allow to Choose State if It is Optional for Country | `general/region/display_all` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> | |
| Timezone | `general/locale/timezone` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> | |
| Locale | `general/locale/code` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> | |
| Weight Unit | `general/locale/weight_unit` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> | |
| First Day of Week | `general/locale/firstday` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> | |
| Weekend Days | `general/locale/weekend` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> | |
| Access Restriction | `general/restriction/is_active` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) | |
| Restriction Mode | `general/restriction/mode` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) | |
| Startup Page | `general/restriction/http_redirect` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) | |
| Landing Page | `general/restriction/cms_page` |![Commerce-only](/help/assets/configuration/cloud-ee.png) | |
| HTTP Response | `general/restriction/http_status` |![Commerce-only](/help/assets/configuration/cloud-ee.png) | |
| Store Name | `general/store_information/name` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> | |
| Store Phone Number | `general/store_information/phone` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> | |
| Store Hours of Operation | `general/store_information/hours` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> | |
| Country | `general/store_information/country_id` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> | |
| Region/State | `general/store_information/region_id` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> | |
| ZIP/Postal Code | `general/store_information/postcode` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> | |
| City | `general/store_information/city` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> | |
| Street Address | `general/store_information/street_line1` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> | |
| Street Address Line 2 | `general/store_information/street_line2` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> | |
| VAT Number | `general/store_information/merchant_vat_number` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> | |
| Enable Single-Store Mode | `general/single_store_mode/enabled` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> | |

{style="table-layout:auto"}

### Web paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **General** > **Web**.

| Name  | Config path | Commerce only? |
|--------------|--------------|--------------|
| Add Store Code to Urls | `web/url/use_store` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Auto-redirect to Base URL | `web/url/redirect_to_base` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Use Web Server Rewrites | `web/seo/use_rewrites` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Use Secure URLs on Storefront | `web/secure/use_in_frontend` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Use Secure URLs in the Admin | `web/secure/use_in_adminhtml` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enable HTTP Strict Transport Security (HSTS) | `web/secure/enable_hsts` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Upgrade Insecure Requests | `web/secure/enable_upgrade_insecure` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Offloader header | `web/secure/offloader_header` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| CMS Home Page | `web/default/cms_home_page` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| CMS No Route Page | `web/default/cms_no_route` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| CMS No Cookies Page | `web/default/cms_no_cookies` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Show Breadcrumbs for CMS Pages | `web/default/show_cms_breadcrumbs` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Cookie Lifetime | `web/cookie/cookie_lifetime` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Use HTTP Only | `web/cookie/cookie_httponly` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Cookie Restriction Mode | `web/cookie/cookie_restriction` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Validate REMOTE_ADDR | `web/session/use_remote_addr` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Validate HTTP_VIA | `web/session/use_http_via` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Validate HTTP_X_FORWARDED_FOR | `web/session/use_http_x_forwarded_for` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Validate HTTP_USER_AGENT | `web/session/use_http_user_agent` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Use SID on Storefront | `web/session/use_frontend_sid` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Redirect to CMS-page if Cookies are Disabled | `web/browser_capabilities/cookies` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Show Notice if JavaScript is Disabled | `web/browser_capabilities/javascript` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Show Notice if Local Storage is Disabled | `web/browser_capabilities/local_storage` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |

{style="table-layout:auto"}

### Currency setup paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **General** > **Currency setup**.

| Name  | Config path | Commerce only? |
|--------------|--------------|--------------|
| Base Currency | `currency/options/base` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Default Display Currency | `currency/options/default` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Allowed Currencies | `currency/options/allow` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Yahoo Finance Exchange | `TBD` | |
| Fixer.io | `TBD` | |
| Webservicex | `TBD` | |
| Connection Timeout in Seconds | `currency/yahoofinance/timeout` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Connection Timeout in Seconds | `currency/fixerio/timeout` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Connection Timeout in Seconds | `currency/webservicex/timeout` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `currency/import/enabled` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Service | `currency/import/service` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Start Time | `currency/import/time` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Frequency | `currency/import/frequency` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Error Email Recipient | `currency/import/error_email` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Error Email Sender | `currency/import/error_email_identity` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Error Email Template | `currency/import/error_email_template` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |

{style="table-layout:auto"}

### Contacts paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **General** > **Contacts**.

| Name  | Config path | Commerce only? |
|--------------|--------------|--------------|
| Enable Contact Us | `contact/contact/enabled` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Send Emails To | `contact/email/recipient_email` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Email Sender | `contact/email/sender_email_identity` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Email Template | `contact/email/email_template` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |

{style="table-layout:auto"}

### Reports paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **General** > **Reports**.

| Name  | Config path | Commerce only? |
|--------------|--------------|--------------|
| Year-To-Date Starts | `reports/dashboard/ytd_start` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Current Month Starts | `reports/dashboard/mtd_start` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |

{style="table-layout:auto"}

### Content management paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **General** > **Content Management**.

| Name  | Config path | Commerce only? |
|--------------|--------------|--------------|
| Enable WYSIWYG Editor | `cms/wysiwyg/enabled` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Use Static URLs for Media Content in WYSIWYG for Catalog | `cms/wysiwyg/use_static_urls_in_catalog` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enable Hierarchy Functionality | `cms/hierarchy/enabled` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enable Hierarchy Metadata | `cms/hierarchy/metadata_enabled` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Default Layout for Hierarchy Menu | `cms/hierarchy/menu_layout` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |

{style="table-layout:auto"}

### New Relic reporting paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **General** > **New Relic Reporting**.

| Name  | Config path | Commerce only? |
|--------------|--------------|--------------|
| Enable New Relic Integration | `newrelicreporting/general/enable` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Relic Application Name | `newrelicreporting/general/app_name` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enable Cron | `newrelicreporting/cron/enable_cron` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |

{style="table-layout:auto"}

## Advanced category

This section lists variable names and config paths available for options in the Admin under **Stores** > Settings > **Configuration** > **Advanced**.

### Admin paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Advanced** > **Admin**.

| Name  | Config path | Commerce only? |
|--------------|--------------|--------------|
| Forgot Password Email Template | `admin/emails/forgot_email_template` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Forgot and Reset Email Sender | `admin/emails/forgot_email_identity` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| User Notification Template | `admin/emails/user_notification_template` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Startup Page | `admin/startup/menu_item_id` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Use Custom Admin URL | `admin/url/use_custom` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Use Custom Admin Path | `admin/url/use_custom_path` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Admin Account Sharing | `admin/security/admin_account_sharing` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Password Reset Protection Type | `admin/security/password_reset_protection_type` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Recovery Link Expiration Period (hours) | `admin/security/password_reset_link_expiration_period` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Max Number of Password Reset Requests | `admin/security/max_number_password_reset_requests` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Min Time Between Password Reset Requests | `admin/security/min_time_between_password_reset_requests` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Add Secret Key to URLs | `admin/security/use_form_key` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Login is Case Sensitive | `admin/security/use_case_sensitive_login` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Admin Session Lifetime (seconds) | `admin/security/session_lifetime` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Login Failures to Lockout Account | `admin/security/lockout_failures` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Lockout Time (minutes) | `admin/security/lockout_threshold` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Password Lifetime (days) | `admin/security/password_lifetime` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Password Change | `admin/security/password_is_forced` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enable Charts | `admin/dashboard/enable_charts` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enable CAPTCHA in the Admin | `admin/captcha/enable` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Font | `admin/captcha/font` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Forms | `admin/captcha/forms` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Displaying Mode | `admin/captcha/mode` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Number of Unsuccessful Attempts to Login | `admin/captcha/failed_attempts_login` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| CAPTCHA Timeout (minutes) | `admin/captcha/timeout` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Number of Symbols | `admin/captcha/length` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Symbols Used in CAPTCHA | `admin/captcha/symbols` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Case Sensitive | `admin/captcha/case_sensitive` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled Actions | `admin/magento_logging/actions` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |

{style="table-layout:auto"}

### System paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Advanced** > **System**.

| Name  | Config path | Commerce only? |
|--------------|--------------|--------------|
| Successful Messages Lifetime | `system/mysqlmq/successful_messages_lifetime` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Retry Messages In Progress After | `system/mysqlmq/retry_inprogress_after` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Failed Messages Lifetime | `system/mysqlmq/failed_messages_lifetime` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Messages Lifetime | `system/mysqlmq/new_messages_lifetime` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Generate Schedules Every | `system/cron/index/schedule_generate_every` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Schedule Ahead for | `system/cron/index/schedule_ahead_for` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Missed if Not Run Within | `system/cron/index/schedule_lifetime` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| History Cleanup Every | `system/cron/index/history_cleanup_every` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Success History Lifetime | `system/cron/index/history_success_lifetime` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Failure History Lifetime | `system/cron/index/history_failure_lifetime` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Use Separate Process | `system/cron/index/use_separate_process` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Generate Schedules Every | `system/cron/default/schedule_generate_every` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Schedule Ahead for | `system/cron/default/schedule_ahead_for` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Missed if Not Run Within | `system/cron/default/schedule_lifetime` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| History Cleanup Every | `system/cron/default/history_cleanup_every` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Success History Lifetime | `system/cron/default/history_success_lifetime` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Failure History Lifetime | `system/cron/default/history_failure_lifetime` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Generate Schedules Every | `system/cron/staging/schedule_generate_every` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Schedule Ahead for | `system/cron/staging/schedule_ahead_for` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Missed if Not Run Within | `system/cron/staging/schedule_lifetime` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| History Cleanup Every | `system/cron/staging/history_cleanup_every` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Success History Lifetime | `system/cron/staging/history_success_lifetime` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Failure History Lifetime | `system/cron/staging/history_failure_lifetime` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Use Separate Process | `system/cron/staging/use_separate_process` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Generate Schedules Every | `system/cron/catalog/event/schedule_generate_every` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Schedule Ahead for | `system/cron/catalog/event/schedule_ahead_for` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Missed if Not Run Within | `system/cron/catalog/event/schedule_lifetime` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| History Cleanup Every | `system/cron/catalog/event/history_cleanup_every` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Success History Lifetime | `system/cron/catalog/event/history_success_lifetime` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Failure History Lifetime | `system/cron/catalog/event/history_failure_lifetime` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Use Separate Process | `system/cron/catalog/event/use_separate_process` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Use Separate Process | `system/cron/default/use_separate_process` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Disable Email Communications | `system/smtp/disable` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Set Return-Path | `system/smtp/set_return_path` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Return-Path Email | `system/smtp/return_path_email` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Installed Currencies | `system/currency/installed` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Use HTTPS to Get Feed | `system/adminnotification/use_https` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Update Frequency | `system/adminnotification/frequency` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Last Update | `system/adminnotification/last_update` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enable Scheduled Backup | `system/backup/enabled` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Backup Type | `system/backup/type` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Start Time | `system/backup/time` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Frequency | `system/backup/frequency` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maintenance Mode | `system/backup/maintenance` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Log Entry Lifetime, Days | `system/rotation/lifetime` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Log Archiving Frequency | `system/rotation/frequency` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Caching Application | `system/full_page_cache/caching_application` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| TTL for public content | `system/full_page_cache/ttl` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Grace period | `system/full_page_cache/varnish/grace_period` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Export Configuration | `system/full_page_cache/varnish/export_button_version4` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Days Saved in Log | `system/bulk/lifetime` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Media Storage | `system/media_storage_configuration/media_storage` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Select Media Database | `system/media_storage_configuration/media_database` (deprecated in Commerce 2.4.3)| <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Environment Update Time | `system/media_storage_configuration/configuration_update_time` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Save Files, Days | `system/magento_scheduled_import_export_log/save_days` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enable Scheduled File History Cleaning | `system/magento_scheduled_import_export_log/enabled` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Start Time | `system/magento_scheduled_import_export_log/time` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Frequency | `system/magento_scheduled_import_export_log/frequency` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Error Email Template | `system/magento_scheduled_import_export_log/error_email_template` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |

{style="table-layout:auto"}

### Developer paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Advanced** > **Developer**.

| Name  | Config path | Commerce only? |
|--------------|--------------|--------------|
| Workflow type | `dev/front_end_development_workflow/type` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Allow Symlinks | `dev/template/allow_symlink` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minify Html | `dev/template/minify_html` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enable Template Path Hints for Storefront | `dev/debug/template_hints_storefront` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enable Template Path Hints for Admin | `dev/debug/template_hints_admin` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Add Block Names to Hints | `dev/debug/template_hints_blocks` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Log to File | `dev/debug/debug_logging` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Log to syslog | `dev/syslog/syslog_logging` |  |
| Enabled for Storefront | `dev/translate_inline/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled for Admin | `dev/translate_inline/active_admin` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Merge JavaScript Files | `dev/js/merge_files` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enable JavaScript Bundling | `dev/js/enable_js_bundling` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minify JavaScript Files | `dev/js/minify_files` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Translation Strategy | `dev/js/translate_strategy` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Log JS Errors to Session Storage | `dev/js/session_storage_logging` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Merge CSS Files | `dev/css/merge_css_files` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minify CSS Files | `dev/css/minify_files` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Image Adapter | `dev/image/default_adapter` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Sign Static Files | `dev/static/sign` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Asynchronous indexing | `dev/grid/async_indexing` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Cache User Defined Attributes | `dev/caching/cache_user_defined_attributes` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |

{style="table-layout:auto"}
