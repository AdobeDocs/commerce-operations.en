---
title: 'Overview: [!DNL Quality Patches Tool] (QPT) v1.1.39'
description: This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.39.
feature: Tools and External Services
role: Admin, Developer
exl-id: 6116f566-2ff8-4148-ab60-cec65f9b7a6f
type: Troubleshooting
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: 125c1f49-aefd-5f34-a252-288937f95f6b
    internal-label: Marketing Tools
subfeature_v2:
  - id: 618ab558-d6ad-5352-99d6-d5702c6fdf80
    internal-label: Tools and External Services
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
---
# Overview: [!DNL Quality Patches Tool] (QPT) v1.1.39

This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.39.

QPT v1.1.39 includes the following patches:

1. **ACSD-53704**: Fixes the issue where reward points balance history is miscalculated after reward points expiration.
1. **ACSD-53583**: Improves partial reindex performance for *Category Products* and *Product Categories* indexers.
1. **ACSD-54026**: Fixes an incorrect error message for an `updateCompanyRole` GraphQL request for a non-authorized user.
1. **ACSD-54106**: Fixes the issue where category product sorting by name for Turkish accented characters is incorrect.
1. **ACSD-52219**: Fixes the issue where Admin grids saved filters don't work as expected when frequently switching between bookmark views.
1. **ACSD-54342**: Fixes an incorrect error message *Error in data structure: values are mixed* when importing a CSV file without valid data.
1. **ACSD-54660**: Added a new input attribute *sort* to sort customer orders in GraphQL by `sort_field` and `sort_direction`.
1. **ACSD-54776**: Fixes the issue where unchecked *[!UICONTROL Use Default Value]* and non-default product field values are not saved for the second website, store, and store view.
1. **ACSD-53998**: Fixes the issue where a **[!UICONTROL Dynamic Block]** based on a **[!UICONTROL Customer Segment]** doesn't work correctly after logging out from a customer account.
1. **ACSD-53204**: Fixes *The product can't be saved.* error when making concurrent requests to add images to the product gallery using the `rest/V1/products/<sku>/media` endpoint.
1. **ACSD-47657**: Added a caching mechanism for AWS credentials. A credentials provider now uses the Magento cache to cache credentials retrieved from AWS for EC2 configuration.

Use the menu on the left to navigate to a specific patch page.
