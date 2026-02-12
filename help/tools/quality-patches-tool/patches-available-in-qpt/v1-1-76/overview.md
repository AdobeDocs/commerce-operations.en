---
title: 'Overview: [!DNL Quality Patches Tool] (QPT) v1.1.76'
description: This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.76.
feature: Tools and External Services
role: Admin, Developer
type: Troubleshooting
---
# Overview: [!DNL Quality Patches Tool] (QPT) v1.1.76

This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.76.

QPT v1.1.76 includes the following patches:
1. **ACSD-67091**: Fixes the maximum writeset size error to ensure catalog rule product index cleanup by implementing two deletion strategies based on data volume.
1. **ACSD-67370**: Fixes multiple issues where incorrect prices were shown for Bundle products on PDP/PLP and the cart page for multi-currency stores.
1. **ACSD-68410**: Fixes an issue where placing an order for a negotiable quote incorrectly adds or merges additional cart lines to the quote. Products are now correctly added to the shopping cart after leaving the last step of negotiable quote checkout.
1. **ACSD-69086**: Fixes the issue where the cron job fails to clear changelog tables, causing [!DNL Galera Cluster] crashes when handling large amounts of data.
1. **ACSD-69115**: Fixes an issue where shopping cart errors weren't displayed to the admin user when managing the shopping cart for a customer assigned to a non-default website.
1. **ACSD-69129**: Fixes an issue where deleting the default base website and using the secondary website as the default results in an error when attempting to update the tier price for the secondary website via the [!DNL REST] API.
1. **ACSD-69203**: Fixes an issue where the **[!UICONTROL Products List]** widget returns incorrect results when multiple categories were listed in the category condition.
1. **ACSD-69261**: Fixes an issue where a cart price rule coupon configured for single use per customer was reused multiple times due to incorrect handling of the `times_used` attribute in partial invoice and remaining quantity cancellation scenarios.
1. **ACSD-69308**: Fixes an issue where catalog price rules didn't apply when `special_price` was set only at the website level (not at **[!UICONTROL All Store Views]**). After the fix, catalog price rules apply correctly by checking the website's default store first.
1. **ACSD-69319**: Fixes an issue where bundle prices weren't indexed properly when child products had stock under custom sources.
1. **ACSD-69325**: Fixes an issue where modifying the SKU case caused the product to appear out-of-stock on the storefront.
1. **ACSD-69331**: Fixes an issue where content creators in the media gallery could not create folders with only the `create_folder` permission. After the fix, they can create folders as expected.
1. **ACSD-69333**: Fixes an issue where SKU changes were allowed for products with an active scheduled update. After the fix, SKU changes are prohibited during active updates; saves fail with a clear error, and the admin SKU field is disabled. This prevents MSI.
1. **ACSD-69541**: Fixes an issue where reducing a product's quantity in the admin to less than what already exists in a cart made it impossible to edit the product quantity in that cart via GraphQL.

Use the menu on the left to navigate to a specific patch page.
