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
| Default Country | `general/country/default` | <!-- ![Not EE-only][red-x] --> | ![Sensitive][sen] |
| Allow Countries | `general/country/allow` | <!-- ![Not EE-only][red-x] --> | ![Sensitive][sen] |
| Zip/Postal Code is optional for | `general/country/optional_zip_countries` | <!-- ![Not EE-only][red-x] --> | ![Sensitive][sen] |
| European Union Countries | `general/country/eu_countries` | <!-- ![Not EE-only][red-x] --> | ![Sensitive][sen] |
| Top destinations | `general/country/destinations` | <!-- ![Not EE-only][red-x] --> |
| State is Required for | `general/region/state_required` | <!-- ![Not EE-only][red-x] --> |
| Allow to Choose State if It is Optional for Country | `general/region/display_all` | <!-- ![Not EE-only][red-x] --> | |
| Timezone | `general/locale/timezone` | <!-- ![Not EE-only][red-x] --> | |
| Locale | `general/locale/code` | <!-- ![Not EE-only][red-x] --> | |
| Weight Unit | `general/locale/weight_unit` | <!-- ![Not EE-only][red-x] --> | |
| First Day of Week | `general/locale/firstday` | <!-- ![Not EE-only][red-x] --> | |
| Weekend Days | `general/locale/weekend` | <!-- ![Not EE-only][red-x] --> | |
| Access Restriction | `general/restriction/is_active` | ![EE-only][ee] | |
| Restriction Mode | `general/restriction/mode` | ![EE-only][ee] | |
| Startup Page | `general/restriction/http_redirect` | ![EE-only][ee] | |
| Landing Page | `general/restriction/cms_page` |![EE-only][ee] | |
| HTTP Response | `general/restriction/http_status` |![EE-only][ee] | |
| Store Name | `general/store_information/name` | <!-- ![Not EE-only][red-x] --> | |
| Store Phone Number | `general/store_information/phone` | <!-- ![Not EE-only][red-x] --> | |
| Store Hours of Operation | `general/store_information/hours` | <!-- ![Not EE-only][red-x] --> | |
| Country | `general/store_information/country_id` | <!-- ![Not EE-only][red-x] --> | |
| Region/State | `general/store_information/region_id` | <!-- ![Not EE-only][red-x] --> | |
| ZIP/Postal Code | `general/store_information/postcode` | <!-- ![Not EE-only][red-x] --> | |
| City | `general/store_information/city` | <!-- ![Not EE-only][red-x] --> | |
| Street Address | `general/store_information/street_line1` | <!-- ![Not EE-only][red-x] --> | |
| Street Address Line 2 | `general/store_information/street_line2` | <!-- ![Not EE-only][red-x] --> | |
| VAT Number | `general/store_information/merchant_vat_number` | <!-- ![Not EE-only][red-x] --> | |
| Enable Single-Store Mode | `general/single_store_mode/enabled` | <!-- ![Not EE-only][red-x] --> | |

### Web paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **General** > **Web**.

| Name  | Config path | EE only? |
|--------------|--------------|--------------|
| Add Store Code to Urls | `web/url/use_store` | <!-- ![Not EE-only][red-x] --> |
| Auto-redirect to Base URL | `web/url/redirect_to_base` | <!-- ![Not EE-only][red-x] --> |
| Use Web Server Rewrites | `web/seo/use_rewrites` | <!-- ![Not EE-only][red-x] --> |
| Use Secure URLs on Storefront | `web/secure/use_in_frontend` | <!-- ![Not EE-only][red-x] --> |
| Use Secure URLs in Admin | `web/secure/use_in_adminhtml` | <!-- ![Not EE-only][red-x] --> |
| Enable HTTP Strict Transport Security (HSTS) | `web/secure/enable_hsts` | <!-- ![Not EE-only][red-x] --> |
| Upgrade Insecure Requests | `web/secure/enable_upgrade_insecure` | <!-- ![Not EE-only][red-x] --> |
| Offloader header | `web/secure/offloader_header` | <!-- ![Not EE-only][red-x] --> |
| CMS Home Page | `web/default/cms_home_page` | <!-- ![Not EE-only][red-x] --> |
| CMS No Route Page | `web/default/cms_no_route` | <!-- ![Not EE-only][red-x] --> |
| CMS No Cookies Page | `web/default/cms_no_cookies` | <!-- ![Not EE-only][red-x] --> |
| Show Breadcrumbs for CMS Pages | `web/default/show_cms_breadcrumbs` | <!-- ![Not EE-only][red-x] --> |
| Cookie Lifetime | `web/cookie/cookie_lifetime` | <!-- ![Not EE-only][red-x] --> |
| Use HTTP Only | `web/cookie/cookie_httponly` | <!-- ![Not EE-only][red-x] --> |
| Cookie Restriction Mode | `web/cookie/cookie_restriction` | <!-- ![Not EE-only][red-x] --> |
| Validate REMOTE_ADDR | `web/session/use_remote_addr` | <!-- ![Not EE-only][red-x] --> |
| Validate HTTP_VIA | `web/session/use_http_via` | <!-- ![Not EE-only][red-x] --> |
| Validate HTTP_X_FORWARDED_FOR | `web/session/use_http_x_forwarded_for` | <!-- ![Not EE-only][red-x] --> |
| Validate HTTP_USER_AGENT | `web/session/use_http_user_agent` | <!-- ![Not EE-only][red-x] --> |
| Use SID on Storefront | `web/session/use_frontend_sid` | <!-- ![Not EE-only][red-x] --> |
| Redirect to CMS-page if Cookies are Disabled | `web/browser_capabilities/cookies` | <!-- ![Not EE-only][red-x] --> |
| Show Notice if JavaScript is Disabled | `web/browser_capabilities/javascript` | <!-- ![Not EE-only][red-x] --> |
| Show Notice if Local Storage is Disabled | `web/browser_capabilities/local_storage` | <!-- ![Not EE-only][red-x] --> |

### Currency setup paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **General** > **Currency setup**.

| Name  | Config path | EE only? |
|--------------|--------------|--------------|
| Base Currency | `currency/options/base` | <!-- ![Not EE-only][red-x] --> |
| Default Display Currency | `currency/options/default` | <!-- ![Not EE-only][red-x] --> |
| Allowed Currencies | `currency/options/allow` | <!-- ![Not EE-only][red-x] --> |
| Yahoo Finance Exchange | `TBD` |
| Fixer.io | `TBD` |
| Webservicex | `TBD` |
| Connection Timeout in Seconds | `currency/yahoofinance/timeout` | <!-- ![Not EE-only][red-x] --> |
| Connection Timeout in Seconds | `currency/fixerio/timeout` | <!-- ![Not EE-only][red-x] --> |
| Connection Timeout in Seconds | `currency/webservicex/timeout` | <!-- ![Not EE-only][red-x] --> |
| Enabled | `currency/import/enabled` | <!-- ![Not EE-only][red-x] --> |
| Service | `currency/import/service` | <!-- ![Not EE-only][red-x] --> |
| Start Time | `currency/import/time` | <!-- ![Not EE-only][red-x] --> |
| Frequency | `currency/import/frequency` | <!-- ![Not EE-only][red-x] --> |
| Error Email Recipient | `currency/import/error_email` | <!-- ![Not EE-only][red-x] --> |
| Error Email Sender | `currency/import/error_email_identity` | <!-- ![Not EE-only][red-x] --> |
| Error Email Template | `currency/import/error_email_template` | <!-- ![Not EE-only][red-x] --> |

### Contacts paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **General** > **Contacts**.

| Name  | Config path | EE only? |
|--------------|--------------|--------------|
| Enable Contact Us | `contact/contact/enabled` | <!-- ![Not EE-only][red-x] --> |
| Send Emails To | `contact/email/recipient_email` | <!-- ![Not EE-only][red-x] --> |
| Email Sender | `contact/email/sender_email_identity` | <!-- ![Not EE-only][red-x] --> |
| Email Template | `contact/email/email_template` | <!-- ![Not EE-only][red-x] --> |

### Reports paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **General** > **Reports**.

| Name  | Config path | EE only? |
|--------------|--------------|--------------|
| Year-To-Date Starts | `reports/dashboard/ytd_start` | <!-- ![Not EE-only][red-x] --> |
| Current Month Starts | `reports/dashboard/mtd_start` | <!-- ![Not EE-only][red-x] --> |

### Content management paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **General** > **Content Management**.

| Name  | Config path | EE only? |
|--------------|--------------|--------------|
| Enable WYSIWYG Editor | `cms/wysiwyg/enabled` | <!-- ![Not EE-only][red-x] --> |
| Use Static URLs for Media Content in WYSIWYG for Catalog | `cms/wysiwyg/use_static_urls_in_catalog` | <!-- ![Not EE-only][red-x] --> |
| Enable Hierarchy Functionality | `cms/hierarchy/enabled` | <!-- ![Not EE-only][red-x] --> |
| Enable Hierarchy Metadata | `cms/hierarchy/metadata_enabled` | <!-- ![Not EE-only][red-x] --> |
| Default Layout for Hierarchy Menu | `cms/hierarchy/menu_layout` | <!-- ![Not EE-only][red-x] --> |

### New Relic reporting paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **General** > **New Relic Reporting**.

| Name  | Config path | EE only? |
|--------------|--------------|--------------|
| Enable New Relic Integration | `newrelicreporting/general/enable` | <!-- ![Not EE-only][red-x] --> |
| New Relic Application Name | `newrelicreporting/general/app_name` | <!-- ![Not EE-only][red-x] --> |
| Enable Cron | `newrelicreporting/cron/enable_cron` | <!-- ![Not EE-only][red-x] --> |

## Advanced category

This section lists variable names and config paths available for options in the Admin under **Stores** > Settings > **Configuration** > **Advanced**.

### Admin paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Advanced** > **Admin**.

| Name  | Config path | EE only? |
|--------------|--------------|--------------|
| Forgot Password Email Template | `admin/emails/forgot_email_template` | <!-- ![Not EE-only][red-x] --> |
| Forgot and Reset Email Sender | `admin/emails/forgot_email_identity` | <!-- ![Not EE-only][red-x] --> |
| User Notification Template | `admin/emails/user_notification_template` | <!-- ![Not EE-only][red-x] --> |
| Startup Page | `admin/startup/menu_item_id` | <!-- ![Not EE-only][red-x] --> |
| Use Custom Admin URL | `admin/url/use_custom` | <!-- ![Not EE-only][red-x] --> |
| Use Custom Admin Path | `admin/url/use_custom_path` | <!-- ![Not EE-only][red-x] --> |
| Admin Account Sharing | `admin/security/admin_account_sharing` | <!-- ![Not EE-only][red-x] --> |
| Password Reset Protection Type | `admin/security/password_reset_protection_type` | <!-- ![Not EE-only][red-x] --> |
| Recovery Link Expiration Period (hours) | `admin/security/password_reset_link_expiration_period` | <!-- ![Not EE-only][red-x] --> |
| Max Number of Password Reset Requests | `admin/security/max_number_password_reset_requests` | <!-- ![Not EE-only][red-x] --> |
| Min Time Between Password Reset Requests | `admin/security/min_time_between_password_reset_requests` | <!-- ![Not EE-only][red-x] --> |
| Add Secret Key to URLs | `admin/security/use_form_key` | <!-- ![Not EE-only][red-x] --> |
| Login is Case Sensitive | `admin/security/use_case_sensitive_login` | <!-- ![Not EE-only][red-x] --> |
| Admin Session Lifetime (seconds) | `admin/security/session_lifetime` | <!-- ![Not EE-only][red-x] --> |
| Maximum Login Failures to Lockout Account | `admin/security/lockout_failures` | <!-- ![Not EE-only][red-x] --> |
| Lockout Time (minutes) | `admin/security/lockout_threshold` | <!-- ![Not EE-only][red-x] --> |
| Password Lifetime (days) | `admin/security/password_lifetime` | <!-- ![Not EE-only][red-x] --> |
| Password Change | `admin/security/password_is_forced` | <!-- ![Not EE-only][red-x] --> |
| Enable Charts | `admin/dashboard/enable_charts` | <!-- ![Not EE-only][red-x] --> |
| Enable CAPTCHA in Admin | `admin/captcha/enable` | <!-- ![Not EE-only][red-x] --> |
| Font | `admin/captcha/font` | <!-- ![Not EE-only][red-x] --> |
| Forms | `admin/captcha/forms` | <!-- ![Not EE-only][red-x] --> |
| Displaying Mode | `admin/captcha/mode` | <!-- ![Not EE-only][red-x] --> |
| Number of Unsuccessful Attempts to Login | `admin/captcha/failed_attempts_login` | <!-- ![Not EE-only][red-x] --> |
| CAPTCHA Timeout (minutes) | `admin/captcha/timeout` | <!-- ![Not EE-only][red-x] --> |
| Number of Symbols | `admin/captcha/length` | <!-- ![Not EE-only][red-x] --> |
| Symbols Used in CAPTCHA | `admin/captcha/symbols` | <!-- ![Not EE-only][red-x] --> |
| Case Sensitive | `admin/captcha/case_sensitive` | <!-- ![Not EE-only][red-x] --> |
| Enabled Actions | `admin/magento_logging/actions` | <!-- ![Not EE-only][red-x] --> |

### System paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Advanced** > **System**.

| Name  | Config path | EE only? |
|--------------|--------------|--------------|
| Successful Messages Lifetime | `system/mysqlmq/successful_messages_lifetime` | <!-- ![Not EE-only][red-x] --> |
| Retry Messages In Progress After | `system/mysqlmq/retry_inprogress_after` | <!-- ![Not EE-only][red-x] --> |
| Failed Messages Lifetime | `system/mysqlmq/failed_messages_lifetime` | <!-- ![Not EE-only][red-x] --> |
| New Messages Lifetime | `system/mysqlmq/new_messages_lifetime` | <!-- ![Not EE-only][red-x] --> |
| Generate Schedules Every | `system/cron/index/schedule_generate_every` | <!-- ![Not EE-only][red-x] --> |
| Schedule Ahead for | `system/cron/index/schedule_ahead_for` | <!-- ![Not EE-only][red-x] --> |
| Missed if Not Run Within | `system/cron/index/schedule_lifetime` | <!-- ![Not EE-only][red-x] --> |
| History Cleanup Every | `system/cron/index/history_cleanup_every` | <!-- ![Not EE-only][red-x] --> |
| Success History Lifetime | `system/cron/index/history_success_lifetime` | <!-- ![Not EE-only][red-x] --> |
| Failure History Lifetime | `system/cron/index/history_failure_lifetime` | <!-- ![Not EE-only][red-x] --> |
| Use Separate Process | `system/cron/index/use_separate_process` | <!-- ![Not EE-only][red-x] --> |
| Generate Schedules Every | `system/cron/default/schedule_generate_every` | <!-- ![Not EE-only][red-x] --> |
| Schedule Ahead for | `system/cron/default/schedule_ahead_for` | <!-- ![Not EE-only][red-x] --> |
| Missed if Not Run Within | `system/cron/default/schedule_lifetime` | <!-- ![Not EE-only][red-x] --> |
| History Cleanup Every | `system/cron/default/history_cleanup_every` | <!-- ![Not EE-only][red-x] --> |
| Success History Lifetime | `system/cron/default/history_success_lifetime` | <!-- ![Not EE-only][red-x] --> |
| Failure History Lifetime | `system/cron/default/history_failure_lifetime` | <!-- ![Not EE-only][red-x] --> |
| Generate Schedules Every | `system/cron/staging/schedule_generate_every` | ![EE-only][ee] |
| Schedule Ahead for | `system/cron/staging/schedule_ahead_for` | ![EE-only][ee] |
| Missed if Not Run Within | `system/cron/staging/schedule_lifetime` | ![EE-only][ee] |
| History Cleanup Every | `system/cron/staging/history_cleanup_every` | ![EE-only][ee] |
| Success History Lifetime | `system/cron/staging/history_success_lifetime` | ![EE-only][ee] |
| Failure History Lifetime | `system/cron/staging/history_failure_lifetime` | ![EE-only][ee] |
| Use Separate Process | `system/cron/staging/use_separate_process` | ![EE-only][ee] |
| Generate Schedules Every | `system/cron/catalog/event/schedule_generate_every` | ![EE-only][ee] |
| Schedule Ahead for | `system/cron/catalog/event/schedule_ahead_for` | ![EE-only][ee] |
| Missed if Not Run Within | `system/cron/catalog/event/schedule_lifetime` | ![EE-only][ee] |
| History Cleanup Every | `system/cron/catalog/event/history_cleanup_every` | ![EE-only][ee] |
| Success History Lifetime | `system/cron/catalog/event/history_success_lifetime` | ![EE-only][ee] |
| Failure History Lifetime | `system/cron/catalog/event/history_failure_lifetime` | ![EE-only][ee] |
| Use Separate Process | `system/cron/catalog/event/use_separate_process` | ![EE-only][ee] |
| Use Separate Process | `system/cron/default/use_separate_process` | <!-- ![Not EE-only][red-x] --> |
| Disable Email Communications | `system/smtp/disable` | <!-- ![Not EE-only][red-x] --> |
| Set Return-Path | `system/smtp/set_return_path` | <!-- ![Not EE-only][red-x] --> |
| Return-Path Email | `system/smtp/return_path_email` | <!-- ![Not EE-only][red-x] --> |
| Installed Currencies | `system/currency/installed` | <!-- ![Not EE-only][red-x] --> |
| Use HTTPS to Get Feed | `system/adminnotification/use_https` | <!-- ![Not EE-only][red-x] --> |
| Update Frequency | `system/adminnotification/frequency` | <!-- ![Not EE-only][red-x] --> |
| Last Update | `system/adminnotification/last_update` | <!-- ![Not EE-only][red-x] --> |
| Enable Scheduled Backup | `system/backup/enabled` | <!-- ![Not EE-only][red-x] --> |
| Backup Type | `system/backup/type` | <!-- ![Not EE-only][red-x] --> |
| Start Time | `system/backup/time` | <!-- ![Not EE-only][red-x] --> |
| Frequency | `system/backup/frequency` | <!-- ![Not EE-only][red-x] --> |
| Maintenance Mode | `system/backup/maintenance` | <!-- ![Not EE-only][red-x] --> |
| Log Entry Lifetime, Days | `system/rotation/lifetime` | <!-- ![Not EE-only][red-x] --> |
| Log Archiving Frequency | `system/rotation/frequency` | <!-- ![Not EE-only][red-x] --> |
| Caching Application | `system/full_page_cache/caching_application` | <!-- ![Not EE-only][red-x] --> |
| TTL for public content | `system/full_page_cache/ttl` | <!-- ![Not EE-only][red-x] --> |
| Grace period | `system/full_page_cache/varnish/grace_period` | <!-- ![Not EE-only][red-x] --> |
| Export Configuration | `system/full_page_cache/varnish/export_button_version4` | <!-- ![Not EE-only][red-x] --> |
| Days Saved in Log | `system/bulk/lifetime` | <!-- ![Not EE-only][red-x] --> |
| Media Storage | `system/media_storage_configuration/media_storage` | <!-- ![Not EE-only][red-x] --> |
| Select Media Database | `system/media_storage_configuration/media_database` (deprecated in Magento 2.4.3)| <!-- ![Not EE-only][red-x] --> |
| Environment Update Time | `system/media_storage_configuration/configuration_update_time` | <!-- ![Not EE-only][red-x] --> |
| Save Files, Days | `system/magento_scheduled_import_export_log/save_days` | <!-- ![Not EE-only][red-x] --> |
| Enable Scheduled File History Cleaning | `system/magento_scheduled_import_export_log/enabled` | <!-- ![Not EE-only][red-x] --> |
| Start Time | `system/magento_scheduled_import_export_log/time` | <!-- ![Not EE-only][red-x] --> |
| Frequency | `system/magento_scheduled_import_export_log/frequency` | <!-- ![Not EE-only][red-x] --> |
| Error Email Template | `system/magento_scheduled_import_export_log/error_email_template` | <!-- ![Not EE-only][red-x] --> |

### Developer paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Advanced** > **Developer**.

| Name  | Config path | EE only? |
|--------------|--------------|--------------|
| Workflow type | `dev/front_end_development_workflow/type` | <!-- ![Not EE-only][red-x] --> |
| Allow Symlinks | `dev/template/allow_symlink` | <!-- ![Not EE-only][red-x] --> |
| Minify Html | `dev/template/minify_html` | <!-- ![Not EE-only][red-x] --> |
| Enable Template Path Hints for Storefront | `dev/debug/template_hints_storefront` | <!-- ![Not EE-only][red-x] --> |
| Enable Template Path Hints for Admin | `dev/debug/template_hints_admin` | <!-- ![Not EE-only][red-x] --> |
| Add Block Names to Hints | `dev/debug/template_hints_blocks` | <!-- ![Not EE-only][red-x] --> |
| Log to File | `dev/debug/debug_logging` | <!-- ![Not EE-only][red-x] --> |
| Log to syslog | `dev/syslog/syslog_logging` |  |
| Enabled for Storefront | `dev/translate_inline/active` | <!-- ![Not EE-only][red-x] --> |
| Enabled for Admin | `dev/translate_inline/active_admin` | <!-- ![Not EE-only][red-x] --> |
| Merge JavaScript Files | `dev/js/merge_files` | <!-- ![Not EE-only][red-x] --> |
| Enable JavaScript Bundling | `dev/js/enable_js_bundling` | <!-- ![Not EE-only][red-x] --> |
| Minify JavaScript Files | `dev/js/minify_files` | <!-- ![Not EE-only][red-x] --> |
| Translation Strategy | `dev/js/translate_strategy` | <!-- ![Not EE-only][red-x] --> |
| Log JS Errors to Session Storage | `dev/js/session_storage_logging` | <!-- ![Not EE-only][red-x] --> |
| Merge CSS Files | `dev/css/merge_css_files` | <!-- ![Not EE-only][red-x] --> |
| Minify CSS Files | `dev/css/minify_files` | <!-- ![Not EE-only][red-x] --> |
| Image Adapter | `dev/image/default_adapter` | <!-- ![Not EE-only][red-x] --> |
| Sign Static Files | `dev/static/sign` | <!-- ![Not EE-only][red-x] --> |
| Asynchronous indexing | `dev/grid/async_indexing` | <!-- ![Not EE-only][red-x] --> |
| Cache User Defined Attributes | `dev/caching/cache_user_defined_attributes` | <!-- ![Not EE-only][red-x] --> |

<!-- link definitions -->

[ee]: ../../assets/configuration/cloud-ee.png
[red-x]: ../../assets/configuration/red-x.png
[sen]: ../../assets/configuration/cloud-sens.png
