---
title: 'Overview: [!DNL Quality Patches Tool] (QPT) v1.1.35'
description: This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.35.
feature: Tools and External Services
role: Admin
exl-id: 46228690-44ce-462f-b700-1aea6fa0eeab
---
# Overview: [!DNL Quality Patches Tool] (QPT) v1.1.35

This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.35.

QPT v1.1.35 includes the following patches:

1. **ACSD-51899**: Fixes the issue where the default shipping address on the checkout shipping step is auto-populated with a previously selected in-store pickup address.
1. **ACSD-52041**: Fixes the issue where the error message: *[ERROR] [!DNL Page Builder] was rendering for 5 seconds without releasing locks*. appears in [!DNL Chrome] browser when saving content edited with [!DNL Page Builder].
1. **ACSD-52095**: Fixes the issue where the `manage_stock` value was incorrectly set to 0 in the CSV file after product export.
1. **ACSD-51358**: Fixes the issue where removing a scheduled update without an end date leads to removing other scheduled updates for the same entity.
1. **ACSD-48070**: Fixes the issue where editing a scheduled update triggers an exception.
1. **ACSD-51890**: Fixes the issue where the [!UICONTROL Submit review] button can be clicked multiple times without [!DNL Google] reCAPTCHA v3 validation.
1. **ACSD-51984**: Fixes the issue where unchecked *Use Default Value and non-default product field values* are not saved for the second website, store, and store view.
1. **ACSD-52398**: Fixes the error *The requested qty is not available* that occurs when trying to update the quantity of a bundled product in the cart on the storefront.
1. **ACSD-52786**: Fixes the issue where a catalog rule condition SKU is applied to all products starting with the given SKU.
1. **ACSD-52921**: Fixes the issue where an internal error occurs if requesting cart details from GraphQL when there is an out-of-stock configurable product in the cart.
1. **ACSD-51683**: Fixes the issue where a customizable option can't be added to the cart using GraphQL.
1. **ACSD-52133**: Fixes the issue where a customer account cannot be saved after an upgrade.
1. **ACSD-52202**: Fixes the issue where the salable qty of default stock wrongly changes to 0 when a non-default stock is changed to 0 qty on order fulfillment.
1. **ACSD-51265**: Fixes the issue with `catalog_product_price` reindexing performance when there are too many bundled products in the system.
1. **ACSD-52831**: Fixes the issue where customers cannot place negotiable quote orders when [!DNL Google reCAPTCHA v3 Invisible] is enabled.
1. **ACSD-51845**: Fixes the issue where subsequent products with tier prices and different attribute sets cannot be updated via asynchronous bulk REST API.
1. **ACSD-52815**: Fixes the issue where the input for the quantity field of a non-default source supports only up to 6 digits, unlike 8 for a default stock.
1. **ACSD-51149**: Fixes the issue where [!UICONTROL Scheduled ImportExport] with enabled [!UICONTROL Catalog Permissions] invalidates indexers and then cache flushes by cron.
1. **ACSD-50815**: Fixes the issue where the decimal quantity for a simple product cannot be used for a new bundled product option.
1. **ACSD-52399**: Fixes the issue where the configurable product option with a salable Qty of 0 shows *In Stock* on the product page. 

Use the menu on the left to navigate to a specific patch page.
