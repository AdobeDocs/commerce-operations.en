---
title: Customers configuration paths reference
description: Learn about customer configuration paths and values in Adobe Commerce Admin settings. Discover newsletter, account management, and customer service options.
feature: Configuration, Customers
exl-id: a0571423-6fbd-4cfc-9797-a13c0c24bb53
---
# Customers configuration paths reference

This section lists variable names and config paths available for options in the Admin under **Stores** > Settings > **Configuration** > **Customers**.

The [`magento app:config:dump` command](../cli/export-configuration.md) writes these values to the shared configuration file, `app/etc/config.php`, which should be in source control. To optionally override any configuration settings or to set sensitive settings, see [Use environment variables to override configuration settings](override-config-settings.md#environment-variables). This topic does _not_ list [sensitive and system-specific values](config-reference-sens.md).

## Newsletter paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Customers** > **Newsletter**.

| Name  | Config path | Commerce only? |
|--------------|--------------|--------------|
| Allow Guest Subscription | `newsletter/subscription/allow_guest_subscribe` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Need to Confirm | `newsletter/subscription/confirm` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Confirmation Email Sender | `newsletter/subscription/confirm_email_identity` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Confirmation Email Template | `newsletter/subscription/confirm_email_template` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Success Email Sender | `newsletter/subscription/success_email_identity` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Success Email Template | `newsletter/subscription/success_email_template` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Unsubscription Email Sender | `newsletter/subscription/un_email_identity` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Unsubscription Email Template | `newsletter/subscription/un_email_template` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |

{style="table-layout:auto"}

## Customer configuration paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Customers** > **Customer Configuration**.

| Name  | Config path | Commerce only? |
|--------------|--------------|--------------|
| Online Minutes Interval | `customer/online_customers/online_minutes_interval` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Share Customer Accounts | `customer/account_share/scope` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enable Automatic Assignment to Customer Group | `customer/create_account/auto_group_assign` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Tax Calculation Based On | `customer/create_account/tax_calculation_address_type` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Default Group | `customer/create_account/default_group` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Group for Valid VAT ID - Domestic | `customer/create_account/viv_domestic_group` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Group for Valid VAT ID - Intra-Union | `customer/create_account/viv_intra_union_group` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Group for Invalid VAT ID | `customer/create_account/viv_invalid_group` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Validation Error Group | `customer/create_account/viv_error_group` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Validate on Each Transaction | `customer/create_account/viv_on_each_transaction` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Default Value for Disable Automatic Group Changes Based on VAT ID | `customer/create_account/viv_disable_auto_group_assign_default` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Show VAT Number on Storefront | `customer/create_account/vat_frontend_visibility` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Default Welcome Email | `customer/create_account/email_template` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Default Welcome Email Without Password | `customer/create_account/email_no_password_template` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Email Sender | `customer/create_account/email_identity` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Require Emails Confirmation | `customer/create_account/confirm` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Confirmation Link Email | `customer/create_account/email_confirmation_template` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Welcome Email | `customer/create_account/email_confirmed_template` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Generate Human-Friendly Customer ID | `customer/create_account/generate_human_friendly_id` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Password Reset Protection Type | `customer/password/password_reset_protection_type` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Max Number of Password Reset Requests | `customer/password/max_number_password_reset_requests` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Min Time Between Password Reset Requests | `customer/password/min_time_between_password_reset_requests` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Forgot Email Template | `customer/password/forgot_email_template` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Remind Email Template | `customer/password/remind_email_template` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Reset Password Template | `customer/password/reset_password_template` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Password Template Email Sender | `customer/password/forgot_email_identity` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Recovery Link Expiration Period (hours) | `customer/password/reset_link_expiration_period` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enable Autocomplete on login/forgot password forms | `customer/password/autocomplete_on_storefront` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Number of Required Character Classes | `customer/password/required_character_classes_number` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Login Failures to Lockout Account | `customer/password/lockout_failures` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Password Length | `customer/password/minimum_password_length` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Lockout Time (minutes) | `customer/password/lockout_threshold` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Number of Lines in a Street Address | `customer/address/street_lines` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Show Prefix | `customer/address/prefix_show` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Prefix Dropdown Options | `customer/address/prefix_options` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Show Middle Name (initial) | `customer/address/middlename_show` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Show Suffix | `customer/address/suffix_show` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Suffix Dropdown Options | `customer/address/suffix_options` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Show Date of Birth | `customer/address/dob_show`<br>In keeping with current security and privacy best practices, be sure you are aware of any potential legal and security risks associated with the storage of customers' full date of birth (month, day, year) along with other personal identifiers, such as full name, before collecting or processing such data. | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Show Tax/VAT Number | `customer/address/taxvat_show` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Show Gender | `customer/address/gender_show` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enable Store Credit Functionality | `customer/magento_customerbalance/is_enabled` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Show Store Credit History to Customers | `customer/magento_customerbalance/show_history` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Refund Store Credit Automatically | `customer/magento_customerbalance/refund_automatically` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Store Credit Update Email Sender | `customer/magento_customerbalance/email_identity` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Store Credit Update Email Template | `customer/magento_customerbalance/email_template` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Redirect Customer to Account Dashboard after Logging in | `customer/startup/redirect_dashboard` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Text | `customer/address_templates/text` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Text One Line | `customer/address_templates/oneline` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| HTML | `customer/address_templates/html` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| PDF | `customer/address_templates/pdf` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enable Customer Segment Functionality | `customer/magento_customersegment/is_enabled` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Enable CAPTCHA on Storefront | `customer/captcha/enable` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Font | `customer/captcha/font` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Forms | `customer/captcha/forms` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Displaying Mode | `customer/captcha/mode` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Number of Unsuccessful Attempts to Login | `customer/captcha/failed_attempts_login` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| CAPTCHA Timeout (minutes) | `customer/captcha/timeout` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Number of Symbols | `customer/captcha/length` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Symbols Used in CAPTCHA | `customer/captcha/symbols` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Case Sensitive | `customer/captcha/case_sensitive` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |

{style="table-layout:auto"}

## Wish list paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Customers** > **Wish List**.

| Name  | Config path | Commerce only? |
|--------------|--------------|--------------|
| Enabled | `wishlist/general/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enable Multiple Wish Lists | `wishlist/general/multiple_enabled` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Number of Multiple Wish Lists | `wishlist/general/multiple_wishlist_number` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Email Sender | `wishlist/email/email_identity` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Email Template | `wishlist/email/email_template` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Max Emails Allowed to be Sent | `wishlist/email/number_limit` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Email Text Length Limit | `wishlist/email/text_limit` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Display Wish Lists Summary | `wishlist/wishlist_link/use_qty` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |

{style="table-layout:auto"}

## Invitations paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Customers** > **Invitations**.

| Name  | Config path | Commerce only? |
|--------------|--------------|--------------|
| Enable Invitations Functionality | `magento_invitation/general/enabled` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Enable Invitations on Storefront | `magento_invitation/general/enabled_on_front` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Referred Customer Group | `magento_invitation/general/registration_use_inviter_group` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| New Accounts Registration | `magento_invitation/general/registration_required_invitation` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Allow Customers to Add Custom Message to Invitation Email | `magento_invitation/general/allow_customer_message` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Max Invitations Allowed to be Sent at One Time | `magento_invitation/general/max_invitation_amount_per_send` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Customer Invitation Email Sender | `magento_invitation/email/identity` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Customer Invitation Email Template | `magento_invitation/email/template` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |

{style="table-layout:auto"}

## Reward points paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Customers** > **Reward Points**.

| Name  | Config path | Commerce only? |
|--------------|--------------|--------------|
| Enable Reward Points Functionality | `magento_reward/general/is_enabled` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Enable Reward Points Functionality on Storefront | `magento_reward/general/is_enabled_on_front` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Customers May See Reward Points History | `magento_reward/general/publish_history` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Rewards Points Balance Redemption Threshold | `magento_reward/general/min_points_balance` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Cap Reward Points Balance At | `magento_reward/general/max_points_balance` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Reward Points Expire in (days) | `magento_reward/general/expiration_days` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Reward Points Expiry Calculation | `magento_reward/general/expiry_calculation` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Refund Reward Points Automatically | `magento_reward/general/refund_automatically` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Deduct Reward Points from Refund Amount Automatically | `magento_reward/general/deduct_automatically` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Landing Page | `magento_reward/general/landing_page` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Purchase | `magento_reward/points/order` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Registration | `magento_reward/points/register` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Newsletter Signup | `magento_reward/points/newsletter` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Converting Invitation to Customer | `magento_reward/points/invitation_customer` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Invitation to Customer Conversions Quantity Limit | `magento_reward/points/invitation_customer_limit` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Converting Invitation to Order | `magento_reward/points/invitation_order` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Invitation to Order Conversions Quantity Limit | `magento_reward/points/invitation_order_limit` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Invitation Conversion to Order Reward | `magento_reward/points/invitation_order_frequency` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Review Submission | `magento_reward/points/review` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Rewarded Reviews Submission Quantity Limit | `magento_reward/points/review_limit` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Email Sender | `magento_reward/notification/email_sender` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Subscribe Customers by Default | `magento_reward/notification/subscribe_by_default` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Balance Update Email | `magento_reward/notification/balance_update_template` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Reward Points Expiry Warning Email | `magento_reward/notification/expiry_warning_template` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Expiry Warning Before (days) | `magento_reward/notification/expiry_day_before` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |

{style="table-layout:auto"}

## Promotions paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Customers** > **Promotions**.

| Name  | Config path | Commerce only? |
|--------------|--------------|--------------|
| Enable Reminder Emails | `promo/magento_reminder/enabled` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Frequency | `promo/magento_reminder/frequency` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Interval | `promo/magento_reminder/interval` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minute of the Hour | `promo/magento_reminder/minutes` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Start Time | `promo/magento_reminder/time` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Maximum Emails per One Run | `promo/magento_reminder/limit` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Email Send Failure Threshold | `promo/magento_reminder/threshold` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Reminder Email Sender | `promo/magento_reminder/identity` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Code Length | `promo/auto_generated_coupon_codes/length` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Code Format | `promo/auto_generated_coupon_codes/format` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Code Prefix | `promo/auto_generated_coupon_codes/prefix` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Code Suffix | `promo/auto_generated_coupon_codes/suffix` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Dash Every X Characters | `promo/auto_generated_coupon_codes/dash` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |

{style="table-layout:auto"}

## Gift registry paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Customers** > **Gift Registry**.

| Name  | Config path | Commerce only? |
|--------------|--------------|--------------|
| Enable Gift Registry | `magento_giftregistry/general/enabled` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Registrants | `magento_giftregistry/general/max_registrant` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Email Template | `magento_giftregistry/owner_email/template` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Email Sender | `magento_giftregistry/owner_email/identity` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Email Template | `magento_giftregistry/sharing_email/template` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Email Sender | `magento_giftregistry/sharing_email/identity` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Sent Emails Threshold | `magento_giftregistry/sharing_email/send_limit` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Email Template | `magento_giftregistry/update_email/template` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Email Sender | `magento_giftregistry/update_email/identity` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |

{style="table-layout:auto"}

## Persistent shopping cart paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Customers** > **Persistent Shopping Cart**.

| Name  | Config path | Commerce only? |
|--------------|--------------|--------------|
| Enable Persistence | `persistent/options/enabled` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Persistence Lifetime (seconds) | `persistent/options/lifetime` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enable "Remember Me" | `persistent/options/remember_enabled` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| "Remember Me" Default Value | `persistent/options/remember_default` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Clear Persistence on Sign Out | `persistent/options/logout_clear` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Persist Shopping Cart | `persistent/options/shopping_cart` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Persist Wish List | `persistent/options/wishlist` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Persist Recently Ordered Items | `persistent/options/recently_ordered` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Persist Currently Compared Products | `persistent/options/compare_current` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Persist Comparison History | `persistent/options/compare_history` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Persist Recently Viewed Products | `persistent/options/recently_viewed` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Persist Customer Group Membership and Segmentation | `persistent/options/customer` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |

{style="table-layout:auto"}
