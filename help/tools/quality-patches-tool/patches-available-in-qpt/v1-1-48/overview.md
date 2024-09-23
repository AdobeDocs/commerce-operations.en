---
title: 'Overview: [!DNL Quality Patches Tool] (QPT) v1.1.48'
description: This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.48.
feature: Tools and External Services
role: Admin, Developer
exl-id: 6170c616-312c-4de3-98dc-e2c27c376608
---
# Overview: [!DNL Quality Patches Tool] (QPT) v1.1.48

This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.48.

QPT v1.1.48 includes the following patches:

1. **ACSD-55566**: Fixes the issue where the *[!UICONTROL mergeCart mutation]* fails with an *Internal Server Error* in GraphQL response when merging source and destination carts have the same bundled items. 
1. **ACSD-56546**: Fixes the issue where configurable and bundled products display as *[!UICONTROL Out of Stock]* on the storefront when the *[!UICONTROL Display Out of Stock Product]* configuration is disabled.
1. **ACSD-56635**: Fixes the issue where the imported customer is duplicated with the same email address when import is used with [!UICONTROL Account Sharing] set to *[!UICONTROL Global]*.
1. **ACSD-56741**: Fixes the error message *Trying to access array offset on value of type null* that displays during `setup:upgrade` when the database contains a custom MySQL trigger not related to the indexation mechanism and [!DNL MView].
1. **ACSD-57315**: Fixes the issue where a new transaction is created in [!DNL PayPal Payflow Pro] each time the **[!UICONTROL Fetch]** button is clicked on the view transaction screen in the [!UICONTROL Admin].
1. **ACSD-57337**: Fixes the issue where an admin user with access restrictions to specific websites is able to see companies from all websites in the *[!UICONTROL Companies]* grid.
1. **ACSD-57394**: Fixes incorrect product sorting by multiple sort fields in GraphQL.
1. **ACSD-57565**: Fixes the issue where the *[!UICONTROL Order]* dashboard displays incorrect order information until the time period is updated. The dashboard now displays correct order statistics on first load.
1. **ACSD-57854**: Fixes the issue where product GraphQL requests return disabled categories in the category aggregations.
1. **ACSD-58008**: Fixes the issue where updating a scheduled update removes the previous version of the staged item if no end date is specified.

Use the menu on the left to navigate to a specific patch page.

