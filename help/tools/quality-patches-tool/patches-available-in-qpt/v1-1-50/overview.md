---
title: 'Overview: [!DNL Quality Patches Tool] (QPT) v1.1.50'
description: This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.50.
feature: Tools and External Services
role: Admin, Developer
exl-id: 2bda5e91-a213-434a-b4e4-0dffeb222cae
---
# Overview: [!DNL Quality Patches Tool] (QPT) v1.1.50

This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.50.

QPT v1.1.50 includes the following patches:

1. **ACSD-59280**: Fixes the issue where the error *Call to undefined method ReflectionUnionType::getName()* occurs when installing 2.4.4-pX versions.
1. **ACSD-45049**: Fixes the issue where the customer *[!UICONTROL Is required]* attribute setting doesn't work properly as per website scope in Admin.
1. **ACSD-46938**: Fixes the issue with the performance of DB triggers recreation during `setup:upgrade`.
1. **ACSD-48210**: Fixes the issue where updating the *[!UICONTROL website scope]* attribute in a specific store view overrides the attribute values in the global scope.
1. **ACSD-54887**: Fixes the issue where the customer shopping cart gets cleared after the customer session has expired with *[!UICONTROL Persistent Shopping Cart]* enabled.
1. **ACSD-58141**: Fixes the issue where `PHPSESSID` regenerates on POST requests on the storefront area for a logged-in customer if the [!UICONTROL L2 Redis cache] is enabled and the customer is updated from Admin.
1. **ACSD-58352**: Fixes the issue where return attribute labels for the default store view are returned via GraphQL API when a non-default store view is specified in the request header.
1. **ACSD-58442**: Fixes the issue where devices with a width of *768px* are treated as mobile, causing the menu and header to load in a mobile view instead of desktop.
1. **ACSD-58790**: Fixes *pinch-to-zoom* functionality on the product detail page images in mobile view on [!DNL Chrome].
1. **ACSD-59036**: Fixes an exception that happens when loading product prices with both lower and upper bounds equal to *$0*.
1. **ACSD-59229**: Fixes the issue where customer group-related information is saved in the wrong segment due to the old value of the [!UICONTROL X-Magento-Vary] in request.
1. **ACSD-59378**: Fixes the issue where store-level URL rewrites are incorrectly updated during import.
1. **ACSD-59514**: Fixes the issue where forms in the Admin area with [!DNL Page Builder] throw the *[!DNL Page Builder] was rendering for 5 seconds without releasing locks.* error in the browser console after submitting the form and changes can't be saved.
1. **ACSD-60303**: Fixes the issue where an order from Admin cannot be placed if HTML minification is enabled.
1. **ACSD-60441**: Fixes the issue with updating customers via `V1/customers REST API` endpoint when using the integration access token generated from the backend.

Use the menu on the left to navigate to a specific patch page.
