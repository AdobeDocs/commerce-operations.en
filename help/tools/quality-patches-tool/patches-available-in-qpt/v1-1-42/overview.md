---
title: 'Overview: [!DNL Quality Patches Tool] (QPT) v1.1.42'
description: This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.42.
feature: Tools and External Services
role: Admin, Developer
exl-id: 49f7ebd6-7a5f-49da-8fac-c3c2b73b52c1
---
# Overview: [!DNL Quality Patches Tool] (QPT) v1.1.42

This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.42.

QPT v1.1.42 includes the following patches:

1. **ACSD-53658**: Fixes the issue where *[!UICONTROL Recently Viewed]* product data is not updated properly in the store view.
1. **ACSD-54626**: Fixes the issue where you can't create a new purchase order rule (`createPurchaseOrderApprovalRule`) with the `NUMBER_OF_SKUS` attribute via GraphQL.
1. **ACSD-53845**: Fixes the MySQL connection timeout issue when `consumer max_messages` = 0.
1. **ACSD-54890**: Fixes the issue where `aggregate_sales_report_bestsellers_data` causes MySQL errors due to `/tmp` disk being out of space.
1. **ACSD-55112**: Fixes the issue where the *[!UICONTROL Submit review]* button can be clicked multiple times without [!DNL Google reCAPTCHA v3] validation.
1. **ACSD-54264**: Fixes the issue where the error message *You cannot update the requested attribute. Row ID: store_id* appears when a customer tries to check out with a negotiable quote from another store view.
1. **ACSD-54418**: Fixes the issue where a fixed amount of discount is incorrectly applied to each child product of the dynamically priced bundle.
1. **ACSD-55238**: Fixes the issue with saving the empty product meta description.
1. **ACSD-54966**: Fixes the issue where a coupon code with a limited use per customer can't be reused if the previous order failed.
1. **ACSD-54060**: Fixes the issue where a restricted admin can't save a product if it's a child of another product assigned to a different scope.
1. **ACSD-48910**: Fixes the issue where a bundled product assigned to multiple sources goes out-of-stock after an order is invoiced and shipped, even if it has a non-zero quantity.
1. **ACSD-55381**: Fixes an internal server error when querying `configurable_product_option_uid` and `configurable_product_option_value_uid` fields from a B2B *[!UICONTROL Requisition list]* via GraphQL.
1. **ACSD-55628**: Fixes uploading a file on the company registration form and replacing a file for a customer attribute on the storefront.

Use the menu on the left to navigate to a specific patch page.
