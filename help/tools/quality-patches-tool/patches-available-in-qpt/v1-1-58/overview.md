---
title: 'Overview: [!DNL Quality Patches Tool] (QPT) v1.1.58'
description: This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.58.
feature: Tools and External Services
role: Admin, Developer
exl-id: 61bf8b82-f897-41f6-8524-5aa74c6440f1
---
# Overview: [!DNL Quality Patches Tool] (QPT) v1.1.58

This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.58.

QPT v1.1.58 includes the following patches:

1. **ACSD-48570**: Fixes the issue where the reset password page couldn't be reached by clicking the [!UICONTROL Admin] reset password link when **Add Store Code to URLs** was *enabled*, which previously resulted in the login page or a 404 page being displayed.
1. **ACSD-62118**: Fixes the issue where the `sales_order_tax_item` table isn't fully updated when [!DNL B2B] orders are placed using the Purchase Order method.
1. **ACSD-63067**: Fixes the issue where all product quantities are incorrectly highlighted, and the message *[!DNL Please specify the quantity of product(s).]* is displayed for all products in a grouped product when only one quantity is incorrect.
1. **ACSD-63090**: Fixes the issue where shopping cart items are removed when a product is deleted, after being added to the cart.
1. **ACSD-63182**: Fixes the issue where an error occurs when saving a duplicated bundle product with **[!DNL MSI]** *enabled*.
1. **ACSD-63283**: Fixes the issue where ordering items from the gift registry causes an exception and where gift registry updates include items that don't belong to the registry.
1. **ACSD-63299**: Fixes the issue where the special price for a configurable product doesn't display on the storefront.
1. **ACSD-63325**: Fixes the issue where a `Syntax Error: Unexpected <EOF>` error occurs when submitting an empty [!DNL GraphQL] request.
1. **ACSD-63329**: Fixes the issue where the default values for attributes with **[!UICONTROL Date]** or **[!UICONTROL Date and Time]** input types aren't set when creating products via the [!DNL REST API].
1. **ACSD-63572**: Fixes the issue where the `CatalogRule` indexer temporary tables aren't cleaned up if the indexer process is terminated.
1. **ACSD-63578**: Fixes the issue where clicking the **[!UICONTROL Delete]** button in **[!UICONTROL Add to Order by SKU]** in the [!UICONTROL Admin] doesn't remove the [!DNL SKU].

Use the menu on the left to navigate to a specific patch page.
