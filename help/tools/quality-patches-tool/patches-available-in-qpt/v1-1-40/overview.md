---
title: 'Overview: [!DNL Quality Patches Tool] (QPT) v1.1.40'
description: This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.40.
feature: Tools and External Services
role: Admin, Developer
exl-id: fd0caa46-834a-4553-bb59-e4c968c59c15
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
# Overview: [!DNL Quality Patches Tool] (QPT) v1.1.40

This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.40.

QPT v1.1.40 includes the following patches:

1. **ACSD-54680**: Fixes the issue where it is not possible to process a B2B Quote submitted for a product with Multiple Assigned Sources.
1. **ACSD-54040**: Fixes the issue where the *[!UICONTROL Created]* field is blank in order details when B2B modules are enabled.
1. **ACSD-54319**: Fixes the issue where the product price shows zero in the *[!UICONTROL Product in Cart]* report.
1. **ACSD-53378**: Improves checkout page load time for customers who have large address books.
1. **ACSD-52657**: Fixes the issue where the minicart is not updated on the secondary storeview, which uses a subdomain.
1. **ACSD-53414**: Fixes the issue where a restricted admin user can see CMS pages outside of their permissions scope.
1. **ACSD-54472**: Fixes the issue where customers of a rejected company can still authenticate, and customers of a blocked and rejected company can still place orders. The patch adds additional validation for GraphQL endpoints.
1. **ACSD-52801**: Adds the option to do a partial match when searching for products in GraphQL.
1. **ACSD-55004**: Fixes the issue where the validator crashes while uploading an import file larger than the value configured in `php.ini`.
1. **ACSD-54989**: Fixes the issue where a company admin cannot place an order when *[!UICONTROL Enable Purchase Orders]* is set to *[!UICONTROL Yes]* and *[!UICONTROL Purchase Order]* is set to *[!UICONTROL No]*.
1. **ACSD-54007**: Fixes the error *"Undefined array key "_scope""* on importing customer data.
1. **ACSD-55031**: Fixes the *Type "mixed" cannot be nullable* error during compilation.
1. **ACSD-54961**: Fixes the issue where a restricted admin user cannot mass update the *Product Review* status.

Use the menu on the left to navigate to a specific patch page.
