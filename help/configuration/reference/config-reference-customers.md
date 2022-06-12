---
title: Customers configuration paths reference
description: See a list of customers configuration values.
---

# Customers configuration paths reference

This section lists variable names and config paths available for options in the Admin under **Stores** > Settings > **Configuration** > **Customers**.

The [`magento app:config:dump` command](../cli/export-configuration.md) writes these values to the shared configuration file, `app/etc/config.php`, which should be in source control. To optionally override any configuration settings or to set sensitive settings, see [Use environment variables to override configuration settings](../reference/config-reference-var-name.html). This topic does _not_ list [sensitive and system-specific values](../reference/config-reference-sens.md).

## Newsletter paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Customers** > **Newsletter**.

Name  | Config path | EE only? |
|--------------|--------------|--------------|
Allow Guest Subscription | `newsletter/subscription/allow_guest_subscribe` | <!-- ![Not EE-only][red-x] --> |
Need to Confirm | `newsletter/subscription/confirm` | <!-- ![Not EE-only][red-x] --> |
Confirmation Email Sender | `newsletter/subscription/confirm_email_identity` | <!-- ![Not EE-only][red-x] --> |
Confirmation Email Template | `newsletter/subscription/confirm_email_template` | <!-- ![Not EE-only][red-x] --> |
Success Email Sender | `newsletter/subscription/success_email_identity` | <!-- ![Not EE-only][red-x] --> |
Success Email Template | `newsletter/subscription/success_email_template` | <!-- ![Not EE-only][red-x] --> |
Unsubscription Email Sender | `newsletter/subscription/un_email_identity` | <!-- ![Not EE-only][red-x] --> |
Unsubscription Email Template | `newsletter/subscription/un_email_template` | <!-- ![Not EE-only][red-x] --> |

## Customer configuration paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Customers** > **Customer Configuration**.

Name  | Config path | EE only? |
|--------------|--------------|--------------|
Online Minutes Interval | `customer/online_customers/online_minutes_interval` | <!-- ![Not EE-only][red-x] --> |
Share Customer Accounts | `customer/account_share/scope` | <!-- ![Not EE-only][red-x] --> |
Enable Automatic Assignment to Customer Group | `customer/create_account/auto_group_assign` | <!-- ![Not EE-only][red-x] --> |
Tax Calculation Based On | `customer/create_account/tax_calculation_address_type` | <!-- ![Not EE-only][red-x] --> |
Default Group | `customer/create_account/default_group` | <!-- ![Not EE-only][red-x] --> |
Group for Valid VAT ID - Domestic | `customer/create_account/viv_domestic_group` | <!-- ![Not EE-only][red-x] --> |
Group for Valid VAT ID - Intra-Union | `customer/create_account/viv_intra_union_group` | <!-- ![Not EE-only][red-x] --> |
Group for Invalid VAT ID | `customer/create_account/viv_invalid_group` | <!-- ![Not EE-only][red-x] --> |
Validation Error Group | `customer/create_account/viv_error_group` | <!-- ![Not EE-only][red-x] --> |
Validate on Each Transaction | `customer/create_account/viv_on_each_transaction` | <!-- ![Not EE-only][red-x] --> |
Default Value for Disable Automatic Group Changes Based on VAT ID | `customer/create_account/viv_disable_auto_group_assign_default` | <!-- ![Not EE-only][red-x] --> |
Show VAT Number on Storefront | `customer/create_account/vat_frontend_visibility` | <!-- ![Not EE-only][red-x] --> |
Default Welcome Email | `customer/create_account/email_template` | <!-- ![Not EE-only][red-x] --> |
Default Welcome Email Without Password | `customer/create_account/email_no_password_template` | <!-- ![Not EE-only][red-x] --> |
Email Sender | `customer/create_account/email_identity` | <!-- ![Not EE-only][red-x] --> |
Require Emails Confirmation | `customer/create_account/confirm` | <!-- ![Not EE-only][red-x] --> |
Confirmation Link Email | `customer/create_account/email_confirmation_template` | <!-- ![Not EE-only][red-x] --> |
Welcome Email | `customer/create_account/email_confirmed_template` | <!-- ![Not EE-only][red-x] --> |
Generate Human-Friendly Customer ID | `customer/create_account/generate_human_friendly_id` | <!-- ![Not EE-only][red-x] --> |
Password Reset Protection Type | `customer/password/password_reset_protection_type` | <!-- ![Not EE-only][red-x] --> |
Max Number of Password Reset Requests | `customer/password/max_number_password_reset_requests` | <!-- ![Not EE-only][red-x] --> |
Min Time Between Password Reset Requests | `customer/password/min_time_between_password_reset_requests` | <!-- ![Not EE-only][red-x] --> |
Forgot Email Template | `customer/password/forgot_email_template` | <!-- ![Not EE-only][red-x] --> |
Remind Email Template | `customer/password/remind_email_template` | <!-- ![Not EE-only][red-x] --> |
Reset Password Template | `customer/password/reset_password_template` | <!-- ![Not EE-only][red-x] --> |
Password Template Email Sender | `customer/password/forgot_email_identity` | <!-- ![Not EE-only][red-x] --> |
Recovery Link Expiration Period (hours) | `customer/password/reset_link_expiration_period` | <!-- ![Not EE-only][red-x] --> |
Enable Autocomplete on login/forgot password forms | `customer/password/autocomplete_on_storefront` | <!-- ![Not EE-only][red-x] --> |
Number of Required Character Classes | `customer/password/required_character_classes_number` | <!-- ![Not EE-only][red-x] --> |
Maximum Login Failures to Lockout Account | `customer/password/lockout_failures` | <!-- ![Not EE-only][red-x] --> |
Minimum Password Length | `customer/password/minimum_password_length` | <!-- ![Not EE-only][red-x] --> |
Lockout Time (minutes) | `customer/password/lockout_threshold` | <!-- ![Not EE-only][red-x] --> |
Number of Lines in a Street Address | `customer/address/street_lines` | <!-- ![Not EE-only][red-x] --> |
Show Prefix | `customer/address/prefix_show` | <!-- ![Not EE-only][red-x] --> |
Prefix Dropdown Options | `customer/address/prefix_options` | <!-- ![Not EE-only][red-x] --> |
Show Middle Name (initial) | `customer/address/middlename_show` | <!-- ![Not EE-only][red-x] --> |
Show Suffix | `customer/address/suffix_show` | <!-- ![Not EE-only][red-x] --> |
Suffix Dropdown Options | `customer/address/suffix_options` | <!-- ![Not EE-only][red-x] --> |
Show Date of Birth | `customer/address/dob_show`<br>In keeping with current security and privacy best practices, be sure you are aware of any potential legal and security risks associated with the storage of customers’ full date of birth (month, day, year) along with other personal identifiers, such as full name, before collecting or processing such data. | <!-- ![Not EE-only][red-x] --> |
Show Tax/VAT Number | `customer/address/taxvat_show` | <!-- ![Not EE-only][red-x] --> |
Show Gender | `customer/address/gender_show` | <!-- ![Not EE-only][red-x] --> |
Enable Store Credit Functionality | `customer/magento_customerbalance/is_enabled` | ![EE-only][ee] |
Show Store Credit History to Customers | `customer/magento_customerbalance/show_history` | ![EE-only][ee] |
Refund Store Credit Automatically | `customer/magento_customerbalance/refund_automatically` | ![EE-only][ee] |
Store Credit Update Email Sender | `customer/magento_customerbalance/email_identity` | ![EE-only][ee] |
Store Credit Update Email Template | `customer/magento_customerbalance/email_template` | ![EE-only][ee] |
Redirect Customer to Account Dashboard after Logging in | `customer/startup/redirect_dashboard` | <!-- ![Not EE-only][red-x] --> |
Text | `customer/address_templates/text` | <!-- ![Not EE-only][red-x] --> |
Text One Line | `customer/address_templates/oneline` | <!-- ![Not EE-only][red-x] --> |
HTML | `customer/address_templates/html` | <!-- ![Not EE-only][red-x] --> |
PDF | `customer/address_templates/pdf` | <!-- ![Not EE-only][red-x] --> |
Enable Customer Segment Functionality | `customer/magento_customersegment/is_enabled` | ![EE-only][ee] |
Enable CAPTCHA on Storefront | `customer/captcha/enable` | <!-- ![Not EE-only][red-x] --> |
Font | `customer/captcha/font` | <!-- ![Not EE-only][red-x] --> |
Forms | `customer/captcha/forms` | <!-- ![Not EE-only][red-x] --> |
Displaying Mode | `customer/captcha/mode` | <!-- ![Not EE-only][red-x] --> |
Number of Unsuccessful Attempts to Login | `customer/captcha/failed_attempts_login` | <!-- ![Not EE-only][red-x] --> |
CAPTCHA Timeout (minutes) | `customer/captcha/timeout` | <!-- ![Not EE-only][red-x] --> |
Number of Symbols | `customer/captcha/length` | <!-- ![Not EE-only][red-x] --> |
Symbols Used in CAPTCHA | `customer/captcha/symbols` | <!-- ![Not EE-only][red-x] --> |
Case Sensitive | `customer/captcha/case_sensitive` | <!-- ![Not EE-only][red-x] --> |

## Wish list paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Customers** > **Wish List**.

Name  | Config path | EE only? |
|--------------|--------------|--------------|
Enabled | `wishlist/general/active` | <!-- ![Not EE-only][red-x] --> |
Enable Multiple Wish Lists | `wishlist/general/multiple_enabled` | ![EE-only][ee] |
Number of Multiple Wish Lists | `wishlist/general/multiple_wishlist_number` | ![EE-only][ee] |
Email Sender | `wishlist/email/email_identity` | <!-- ![Not EE-only][red-x] --> |
Email Template | `wishlist/email/email_template` | <!-- ![Not EE-only][red-x] --> |
Max Emails Allowed to be Sent | `wishlist/email/number_limit` | <!-- ![Not EE-only][red-x] --> |
Email Text Length Limit | `wishlist/email/text_limit` | <!-- ![Not EE-only][red-x] --> |
Display Wish Lists Summary | `wishlist/wishlist_link/use_qty` | <!-- ![Not EE-only][red-x] --> |

## Invitations paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Customers** > **Invitations**.

Name  | Config path | EE only? |
|--------------|--------------|--------------|
Enable Invitations Functionality | `magento_invitation/general/enabled` | ![EE-only][ee] |
Enable Invitations on Storefront | `magento_invitation/general/enabled_on_front` | ![EE-only][ee] |
Referred Customer Group | `magento_invitation/general/registration_use_inviter_group` | ![EE-only][ee] |
New Accounts Registration | `magento_invitation/general/registration_required_invitation` | ![EE-only][ee] |
Allow Customers to Add Custom Message to Invitation Email | `magento_invitation/general/allow_customer_message` | ![EE-only][ee] |
Max Invitations Allowed to be Sent at One Time | `magento_invitation/general/max_invitation_amount_per_send` | ![EE-only][ee] |
Customer Invitation Email Sender | `magento_invitation/email/identity` | ![EE-only][ee] |
Customer Invitation Email Template | `magento_invitation/email/template` | ![EE-only][ee] |

## Reward points paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Customers** > **Reward Points**.

Name  | Config path | EE only? |
|--------------|--------------|--------------|
Enable Reward Points Functionality | `magento_reward/general/is_enabled` | ![EE-only][ee] |
Enable Reward Points Functionality on Storefront | `magento_reward/general/is_enabled_on_front` | ![EE-only][ee] |
Customers May See Reward Points History | `magento_reward/general/publish_history` | ![EE-only][ee] |
Rewards Points Balance Redemption Threshold | `magento_reward/general/min_points_balance` | ![EE-only][ee] |
Cap Reward Points Balance At | `magento_reward/general/max_points_balance` | ![EE-only][ee] |
Reward Points Expire in (days) | `magento_reward/general/expiration_days` | ![EE-only][ee] |
Reward Points Expiry Calculation | `magento_reward/general/expiry_calculation` | ![EE-only][ee] |
Refund Reward Points Automatically | `magento_reward/general/refund_automatically` | ![EE-only][ee] |
Deduct Reward Points from Refund Amount Automatically | `magento_reward/general/deduct_automatically` | ![EE-only][ee] |
Landing Page | `magento_reward/general/landing_page` | ![EE-only][ee] |
Purchase | `magento_reward/points/order` | ![EE-only][ee] |
Registration | `magento_reward/points/register` | ![EE-only][ee] |
Newsletter Signup | `magento_reward/points/newsletter` | ![EE-only][ee] |
Converting Invitation to Customer | `magento_reward/points/invitation_customer` | ![EE-only][ee] |
Invitation to Customer Conversions Quantity Limit | `magento_reward/points/invitation_customer_limit` | ![EE-only][ee] |
Converting Invitation to Order | `magento_reward/points/invitation_order` | ![EE-only][ee] |
Invitation to Order Conversions Quantity Limit | `magento_reward/points/invitation_order_limit` | ![EE-only][ee] |
Invitation Conversion to Order Reward | `magento_reward/points/invitation_order_frequency` | ![EE-only][ee] |
Review Submission | `magento_reward/points/review` | ![EE-only][ee] |
Rewarded Reviews Submission Quantity Limit | `magento_reward/points/review_limit` | ![EE-only][ee] |
Email Sender | `magento_reward/notification/email_sender` | ![EE-only][ee] |
Subscribe Customers by Default | `magento_reward/notification/subscribe_by_default` | ![EE-only][ee] |
Balance Update Email | `magento_reward/notification/balance_update_template` | ![EE-only][ee] |
Reward Points Expiry Warning Email | `magento_reward/notification/expiry_warning_template` | ![EE-only][ee] |
Expiry Warning Before (days) | `magento_reward/notification/expiry_day_before` | ![EE-only][ee] |

## Promotions paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Customers** > **Promotions**.

Name  | Config path | EE only? |
|--------------|--------------|--------------|
Enable Reminder Emails | `promo/magento_reminder/enabled` | <!-- ![Not EE-only][red-x] --> |
Frequency | `promo/magento_reminder/frequency` | <!-- ![Not EE-only][red-x] --> |
Interval | `promo/magento_reminder/interval` | <!-- ![Not EE-only][red-x] --> |
Minute of the Hour | `promo/magento_reminder/minutes` | ![EE-only][ee] |
Start Time | `promo/magento_reminder/time` | ![EE-only][ee] |
Maximum Emails per One Run | `promo/magento_reminder/limit` | ![EE-only][ee] |
Email Send Failure Threshold | `promo/magento_reminder/threshold` | ![EE-only][ee] |
Reminder Email Sender | `promo/magento_reminder/identity` | ![EE-only][ee] |
Code Length | `promo/auto_generated_coupon_codes/length` | <!-- ![Not EE-only][red-x] --> |
Code Format | `promo/auto_generated_coupon_codes/format` | <!-- ![Not EE-only][red-x] --> |
Code Prefix | `promo/auto_generated_coupon_codes/prefix` | <!-- ![Not EE-only][red-x] --> |
Code Suffix | `promo/auto_generated_coupon_codes/suffix` | <!-- ![Not EE-only][red-x] --> |
Dash Every X Characters | `promo/auto_generated_coupon_codes/dash` | <!-- ![Not EE-only][red-x] --> |

## Gift registry paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Customers** > **Gift Registry**.

Name  | Config path | EE only? |
|--------------|--------------|--------------|
Enable Gift Registry | `magento_giftregistry/general/enabled` | <!-- ![Not EE-only][red-x] --> |
Maximum Registrants | `magento_giftregistry/general/max_registrant` | <!-- ![Not EE-only][red-x] --> |
Email Template | `magento_giftregistry/owner_email/template` | <!-- ![Not EE-only][red-x] --> |
Email Sender | `magento_giftregistry/owner_email/identity` | <!-- ![Not EE-only][red-x] --> |
Email Template | `magento_giftregistry/sharing_email/template` | <!-- ![Not EE-only][red-x] --> |
Email Sender | `magento_giftregistry/sharing_email/identity` | <!-- ![Not EE-only][red-x] --> |
Maximum Sent Emails Threshold | `magento_giftregistry/sharing_email/send_limit` | <!-- ![Not EE-only][red-x] --> |
Email Template | `magento_giftregistry/update_email/template` | <!-- ![Not EE-only][red-x] --> |
Email Sender | `magento_giftregistry/update_email/identity` | <!-- ![Not EE-only][red-x] --> |

## Persistent shopping cart paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Customers** > **Persistent Shopping Cart**.

Name  | Config path | EE only? |
|--------------|--------------|--------------|
Enable Persistence | `persistent/options/enabled` | <!-- ![Not EE-only][red-x] --> |
Persistence Lifetime (seconds) | `persistent/options/lifetime` | <!-- ![Not EE-only][red-x] --> |
Enable "Remember Me" | `persistent/options/remember_enabled` | <!-- ![Not EE-only][red-x] --> |
"Remember Me" Default Value | `persistent/options/remember_default` | <!-- ![Not EE-only][red-x] --> |
Clear Persistence on Sign Out | `persistent/options/logout_clear` | <!-- ![Not EE-only][red-x] --> |
Persist Shopping Cart | `persistent/options/shopping_cart` | <!-- ![Not EE-only][red-x] --> |
Persist Wish List | `persistent/options/wishlist` | <!-- ![Not EE-only][red-x] --> |
Persist Recently Ordered Items | `persistent/options/recently_ordered` | <!-- ![Not EE-only][red-x] --> |
Persist Currently Compared Products | `persistent/options/compare_current` | <!-- ![Not EE-only][red-x] --> |
Persist Comparison History | `persistent/options/compare_history` | <!-- ![Not EE-only][red-x] --> |
Persist Recently Viewed Products | `persistent/options/recently_viewed` | <!-- ![Not EE-only][red-x] --> |
Persist Customer Group Membership and Segmentation | `persistent/options/customer` | <!-- ![Not EE-only][red-x] --> |

<!-- link definitions -->

[ee]: ../../assets/configuration/cloud_ee.png
[red-x]: ../../assets/configuration/red-x.png
