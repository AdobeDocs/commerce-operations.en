---
title: General configuration paths reference
description: See a list of general and advanced configuration values.
---

# General and advanced configuration paths reference

This topic lists general and advanced configuration paths and _not_ [sensitive and system-specific values](config-reference-sens.md). The [`magento app:config:dump` command](../cli/export-configuration.md) writes these values to the shared configuration file, `app/etc/config.php`, which should be in source control.

To optionally override any configuration settings or to set sensitive settings, see [Use environment variables to override configuration settings](override-config-settings.md#environment-variables).

## General category

This section lists variable names and configuration paths available for options in the Admin under **Stores** > Settings > **Configuration** > **General**.

### General paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > General > **General**.

| Name  | Config path | EE only? | Sensitive? |
|--------------|--------------|--------------|--------------|
| Default Country | `general/country/default` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> | ![Sensitive](../../assets/configuration/cloud-sens.png) |
| Allow Countries | `general/country/allow` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> | ![Sensitive](../../assets/configuration/cloud-sens.png) |
| Zip/Postal Code is optional for | `general/country/optional_zip_countries` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> | ![Sensitive](../../assets/configuration/cloud-sens.png) |
| European Union Countries | `general/country/eu_countries` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> | ![Sensitive](../../assets/configuration/cloud-sens.png) |
| Top destinations | `general/country/destinations` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| State is Required for | `general/region/state_required` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Allow to Choose State if It is Optional for Country | `general/region/display_all` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> | |
| Timezone | `general/locale/timezone` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> | |
| Locale | `general/locale/code` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> | |
| Weight Unit | `general/locale/weight_unit` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> | |
| First Day of Week | `general/locale/firstday` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> | |
| Weekend Days | `general/locale/weekend` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> | |
| Access Restriction | `general/restriction/is_active` | ![EE-only](../../assets/configuration/cloud-ee.png) | |
| Restriction Mode | `general/restriction/mode` | ![EE-only](../../assets/configuration/cloud-ee.png) | |
| Startup Page | `general/restriction/http_redirect` | ![EE-only](../../assets/configuration/cloud-ee.png) | |
| Landing Page | `general/restriction/cms_page` |![EE-only](../../assets/configuration/cloud-ee.png) | |
| HTTP Response | `general/restriction/http_status` |![EE-only](../../assets/configuration/cloud-ee.png) | |
| Store Name | `general/store_information/name` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> | |
| Store Phone Number | `general/store_information/phone` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> | |
| Store Hours of Operation | `general/store_information/hours` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> | |
| Country | `general/store_information/country_id` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> | |
| Region/State | `general/store_information/region_id` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> | |
| ZIP/Postal Code | `general/store_information/postcode` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> | |
| City | `general/store_information/city` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> | |
| Street Address | `general/store_information/street_line1` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> | |
| Street Address Line 2 | `general/store_information/street_line2` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> | |
| VAT Number | `general/store_information/merchant_vat_number` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> | |
| Enable Single-Store Mode | `general/single_store_mode/enabled` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> | |

{style="table-layout:auto"}

### Web paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **General** > **Web**.

| Name  | Config path | EE only? |
|--------------|--------------|--------------|
| Add Store Code to Urls | `web/url/use_store` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Auto-redirect to Base URL | `web/url/redirect_to_base` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Use Web Server Rewrites | `web/seo/use_rewrites` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Use Secure URLs on Storefront | `web/secure/use_in_frontend` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Use Secure URLs in Admin | `web/secure/use_in_adminhtml` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Enable HTTP Strict Transport Security (HSTS) | `web/secure/enable_hsts` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Upgrade Insecure Requests | `web/secure/enable_upgrade_insecure` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Offloader header | `web/secure/offloader_header` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| CMS Home Page | `web/default/cms_home_page` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| CMS No Route Page | `web/default/cms_no_route` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| CMS No Cookies Page | `web/default/cms_no_cookies` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Show Breadcrumbs for CMS Pages | `web/default/show_cms_breadcrumbs` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Cookie Lifetime | `web/cookie/cookie_lifetime` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Use HTTP Only | `web/cookie/cookie_httponly` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Cookie Restriction Mode | `web/cookie/cookie_restriction` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Validate REMOTE_ADDR | `web/session/use_remote_addr` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Validate HTTP_VIA | `web/session/use_http_via` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Validate HTTP_X_FORWARDED_FOR | `web/session/use_http_x_forwarded_for` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Validate HTTP_USER_AGENT | `web/session/use_http_user_agent` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Use SID on Storefront | `web/session/use_frontend_sid` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Redirect to CMS-page if Cookies are Disabled | `web/browser_capabilities/cookies` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Show Notice if JavaScript is Disabled | `web/browser_capabilities/javascript` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Show Notice if Local Storage is Disabled | `web/browser_capabilities/local_storage` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |

{style="table-layout:fixed"}

### Currency setup paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **General** > **Currency setup**.

| Name  | Config path | EE only? |
|--------------|--------------|--------------|
| Base Currency | `currency/options/base` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Default Display Currency | `currency/options/default` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Allowed Currencies | `currency/options/allow` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Yahoo Finance Exchange | `TBD` | |
| Fixer.io | `TBD` | |
| Webservicex | `TBD` | |
| Connection Timeout in Seconds | `currency/yahoofinance/timeout` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Connection Timeout in Seconds | `currency/fixerio/timeout` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Connection Timeout in Seconds | `currency/webservicex/timeout` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Enabled | `currency/import/enabled` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Service | `currency/import/service` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Start Time | `currency/import/time` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Frequency | `currency/import/frequency` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Error Email Recipient | `currency/import/error_email` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Error Email Sender | `currency/import/error_email_identity` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Error Email Template | `currency/import/error_email_template` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |

### Contacts paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **General** > **Contacts**.

| Name  | Config path | EE only? |
|--------------|--------------|--------------|
| Enable Contact Us | `contact/contact/enabled` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Send Emails To | `contact/email/recipient_email` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Email Sender | `contact/email/sender_email_identity` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Email Template | `contact/email/email_template` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |

### Reports paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **General** > **Reports**.

| Name  | Config path | EE only? |
|--------------|--------------|--------------|
| Year-To-Date Starts | `reports/dashboard/ytd_start` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Current Month Starts | `reports/dashboard/mtd_start` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |

### Content management paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **General** > **Content Management**.

| Name  | Config path | EE only? |
|--------------|--------------|--------------|
| Enable WYSIWYG Editor | `cms/wysiwyg/enabled` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Use Static URLs for Media Content in WYSIWYG for Catalog | `cms/wysiwyg/use_static_urls_in_catalog` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Enable Hierarchy Functionality | `cms/hierarchy/enabled` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Enable Hierarchy Metadata | `cms/hierarchy/metadata_enabled` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Default Layout for Hierarchy Menu | `cms/hierarchy/menu_layout` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |

### New Relic reporting paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **General** > **New Relic Reporting**.

| Name  | Config path | EE only? |
|--------------|--------------|--------------|
| Enable New Relic Integration | `newrelicreporting/general/enable` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| New Relic Application Name | `newrelicreporting/general/app_name` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Enable Cron | `newrelicreporting/cron/enable_cron` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |

## Advanced category

This section lists variable names and config paths available for options in the Admin under **Stores** > Settings > **Configuration** > **Advanced**.

### Admin paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Advanced** > **Admin**.

| Name  | Config path | EE only? |
|--------------|--------------|--------------|
| Forgot Password Email Template | `admin/emails/forgot_email_template` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Forgot and Reset Email Sender | `admin/emails/forgot_email_identity` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| User Notification Template | `admin/emails/user_notification_template` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Startup Page | `admin/startup/menu_item_id` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Use Custom Admin URL | `admin/url/use_custom` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Use Custom Admin Path | `admin/url/use_custom_path` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Admin Account Sharing | `admin/security/admin_account_sharing` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Password Reset Protection Type | `admin/security/password_reset_protection_type` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Recovery Link Expiration Period (hours) | `admin/security/password_reset_link_expiration_period` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Max Number of Password Reset Requests | `admin/security/max_number_password_reset_requests` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Min Time Between Password Reset Requests | `admin/security/min_time_between_password_reset_requests` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Add Secret Key to URLs | `admin/security/use_form_key` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Login is Case Sensitive | `admin/security/use_case_sensitive_login` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Admin Session Lifetime (seconds) | `admin/security/session_lifetime` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Maximum Login Failures to Lockout Account | `admin/security/lockout_failures` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Lockout Time (minutes) | `admin/security/lockout_threshold` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Password Lifetime (days) | `admin/security/password_lifetime` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Password Change | `admin/security/password_is_forced` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Enable Charts | `admin/dashboard/enable_charts` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Enable CAPTCHA in Admin | `admin/captcha/enable` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Font | `admin/captcha/font` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Forms | `admin/captcha/forms` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Displaying Mode | `admin/captcha/mode` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Number of Unsuccessful Attempts to Login | `admin/captcha/failed_attempts_login` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| CAPTCHA Timeout (minutes) | `admin/captcha/timeout` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Number of Symbols | `admin/captcha/length` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Symbols Used in CAPTCHA | `admin/captcha/symbols` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Case Sensitive | `admin/captcha/case_sensitive` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Enabled Actions | `admin/magento_logging/actions` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |

### System paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Advanced** > **System**.

| Name  | Config path | EE only? |
|--------------|--------------|--------------|
| Successful Messages Lifetime | `system/mysqlmq/successful_messages_lifetime` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Retry Messages In Progress After | `system/mysqlmq/retry_inprogress_after` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Failed Messages Lifetime | `system/mysqlmq/failed_messages_lifetime` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| New Messages Lifetime | `system/mysqlmq/new_messages_lifetime` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Generate Schedules Every | `system/cron/index/schedule_generate_every` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Schedule Ahead for | `system/cron/index/schedule_ahead_for` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Missed if Not Run Within | `system/cron/index/schedule_lifetime` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| History Cleanup Every | `system/cron/index/history_cleanup_every` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Success History Lifetime | `system/cron/index/history_success_lifetime` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Failure History Lifetime | `system/cron/index/history_failure_lifetime` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Use Separate Process | `system/cron/index/use_separate_process` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Generate Schedules Every | `system/cron/default/schedule_generate_every` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Schedule Ahead for | `system/cron/default/schedule_ahead_for` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Missed if Not Run Within | `system/cron/default/schedule_lifetime` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| History Cleanup Every | `system/cron/default/history_cleanup_every` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Success History Lifetime | `system/cron/default/history_success_lifetime` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Failure History Lifetime | `system/cron/default/history_failure_lifetime` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Generate Schedules Every | `system/cron/staging/schedule_generate_every` | ![EE-only](../../assets/configuration/cloud-ee.png) |
| Schedule Ahead for | `system/cron/staging/schedule_ahead_for` | ![EE-only](../../assets/configuration/cloud-ee.png) |
| Missed if Not Run Within | `system/cron/staging/schedule_lifetime` | ![EE-only](../../assets/configuration/cloud-ee.png) |
| History Cleanup Every | `system/cron/staging/history_cleanup_every` | ![EE-only](../../assets/configuration/cloud-ee.png) |
| Success History Lifetime | `system/cron/staging/history_success_lifetime` | ![EE-only](../../assets/configuration/cloud-ee.png) |
| Failure History Lifetime | `system/cron/staging/history_failure_lifetime` | ![EE-only](../../assets/configuration/cloud-ee.png) |
| Use Separate Process | `system/cron/staging/use_separate_process` | ![EE-only](../../assets/configuration/cloud-ee.png) |
| Generate Schedules Every | `system/cron/catalog/event/schedule_generate_every` | ![EE-only](../../assets/configuration/cloud-ee.png) |
| Schedule Ahead for | `system/cron/catalog/event/schedule_ahead_for` | ![EE-only](../../assets/configuration/cloud-ee.png) |
| Missed if Not Run Within | `system/cron/catalog/event/schedule_lifetime` | ![EE-only](../../assets/configuration/cloud-ee.png) |
| History Cleanup Every | `system/cron/catalog/event/history_cleanup_every` | ![EE-only](../../assets/configuration/cloud-ee.png) |
| Success History Lifetime | `system/cron/catalog/event/history_success_lifetime` | ![EE-only](../../assets/configuration/cloud-ee.png) |
| Failure History Lifetime | `system/cron/catalog/event/history_failure_lifetime` | ![EE-only](../../assets/configuration/cloud-ee.png) |
| Use Separate Process | `system/cron/catalog/event/use_separate_process` | ![EE-only](../../assets/configuration/cloud-ee.png) |
| Use Separate Process | `system/cron/default/use_separate_process` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Disable Email Communications | `system/smtp/disable` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Set Return-Path | `system/smtp/set_return_path` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Return-Path Email | `system/smtp/return_path_email` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Installed Currencies | `system/currency/installed` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Use HTTPS to Get Feed | `system/adminnotification/use_https` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Update Frequency | `system/adminnotification/frequency` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Last Update | `system/adminnotification/last_update` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Enable Scheduled Backup | `system/backup/enabled` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Backup Type | `system/backup/type` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Start Time | `system/backup/time` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Frequency | `system/backup/frequency` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Maintenance Mode | `system/backup/maintenance` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Log Entry Lifetime, Days | `system/rotation/lifetime` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Log Archiving Frequency | `system/rotation/frequency` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Caching Application | `system/full_page_cache/caching_application` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| TTL for public content | `system/full_page_cache/ttl` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Grace period | `system/full_page_cache/varnish/grace_period` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Export Configuration | `system/full_page_cache/varnish/export_button_version4` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Days Saved in Log | `system/bulk/lifetime` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Media Storage | `system/media_storage_configuration/media_storage` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Select Media Database | `system/media_storage_configuration/media_database` (deprecated in Magento 2.4.3)| <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Environment Update Time | `system/media_storage_configuration/configuration_update_time` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Save Files, Days | `system/magento_scheduled_import_export_log/save_days` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Enable Scheduled File History Cleaning | `system/magento_scheduled_import_export_log/enabled` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Start Time | `system/magento_scheduled_import_export_log/time` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Frequency | `system/magento_scheduled_import_export_log/frequency` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Error Email Template | `system/magento_scheduled_import_export_log/error_email_template` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |

### Developer paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Advanced** > **Developer**.

| Name  | Config path | EE only? |
|--------------|--------------|--------------|
| Workflow type | `dev/front_end_development_workflow/type` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Allow Symlinks | `dev/template/allow_symlink` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Minify Html | `dev/template/minify_html` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Enable Template Path Hints for Storefront | `dev/debug/template_hints_storefront` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Enable Template Path Hints for Admin | `dev/debug/template_hints_admin` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Add Block Names to Hints | `dev/debug/template_hints_blocks` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Log to File | `dev/debug/debug_logging` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Log to syslog | `dev/syslog/syslog_logging` |  |
| Enabled for Storefront | `dev/translate_inline/active` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Enabled for Admin | `dev/translate_inline/active_admin` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Merge JavaScript Files | `dev/js/merge_files` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Enable JavaScript Bundling | `dev/js/enable_js_bundling` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Minify JavaScript Files | `dev/js/minify_files` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Translation Strategy | `dev/js/translate_strategy` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Log JS Errors to Session Storage | `dev/js/session_storage_logging` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Merge CSS Files | `dev/css/merge_css_files` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Minify CSS Files | `dev/css/minify_files` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Image Adapter | `dev/image/default_adapter` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Sign Static Files | `dev/static/sign` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Asynchronous indexing | `dev/grid/async_indexing` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |
| Cache User Defined Attributes | `dev/caching/cache_user_defined_attributes` | <!-- ![Not EE-only](../../assets/configuration/red-x.png) --> |

{style="table-layout:auto"}
