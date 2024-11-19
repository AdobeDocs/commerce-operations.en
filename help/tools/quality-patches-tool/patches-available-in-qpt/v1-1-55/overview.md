---
title: 'Overview: [!DNL Quality Patches Tool] (QPT) v1.1.55'
description: This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.55.
feature: Tools and External Services
role: Admin, Developer
---
# Overview: [!DNL Quality Patches Tool] (QPT) v1.1.55

This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.55.

QPT v1.1.55 includes the following patches:

1. **ACSD-58383**: Fixes the issue where issuing a refund via the [!DNL REST API] with two identical requests that are executed simultaneously, creates duplicate credit memos.
1. **ACSD-58471**: Fixes the issue where dynamic content fails to load on the product detail page when the associated catalog price rules are scheduled.
1. **ACSD-58566**: Fixes the issue where [!DNL GraphQL] returns an internal server error when querying the `created_at` field in the `addPurchaseOrderComment` mutation.
1. **ACSD-58685**: Fixes the issue where sales emails initiated while email communication is disabled are still sent once email communication is re-enabled.
1. **ACSD-58735**: Fixes the issue where a restricted admin cannot view the abandoned shopping carts on the customer account page in the [!UICONTROL Admin] for an associated website.
1. **ACSD-58828**: Fixes the issue where the server-side validation message *address is required* appears if any required field is left empty, alongside the client-side validation message. The server-side validation won't display the message for empty required fields, and the client-side validation will handle the error notification, stating, *This is a required field.*
1. **ACSD-60344**: Fixes the issue where duplicate order confirmation emails are sent when using a **[!UICONTROL Purchase Order]** with auto-approval.
1. **ACSD-61348**: Fixes the issue where wishlist items are visible via [!DNL GraphQL], but not on the storefront in a multi-website environment.
1. **ACSD-61534**: Fixes the issue where design configuration can't be set using the `bin/magento config:set` command, and locked values can be altered through form manipulation. Now locked values set from the [!DNL CLI] with `--lock-env` or `--lock-conf` can't be updated.
1. **ACSD-61785**: Fixes the issue where updating the `reward_warning_notification` attribute isn't possible via [!DNL GraphQL] mutation and [!DNL REST API] calls, aligning its behavior with `reward_update_notification`.
1. **ACSD-62591**: Fixes the issue where the theme doesn't switch properly when the **[!UICONTROL User Agent Rules]** are configured.
1. **ACSD-62793**: Fixes the issue where `datetime` attributes in exported data don't include the time component. Additionally if *[!UICONTROL Fields Enclosure]* is *enabled*, attribute values in the `additional_attributes` column are enclosed within double-quotes.
1. **ACSD-62332**: Fixes the issue where the product listing [!DNL GraphQL] query is limited to a `total_count` of 10,000 products. Also, fixes the issue where [!DNL Live Search] sets the current page to *1* instead of page *2* in the search criteria when queried via [!DNL GraphQL].

Use the menu on the left to navigate to a specific patch page.
