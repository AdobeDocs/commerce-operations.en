---
title: 'Overview: [!DNL Quality Patches Tool] (QPT) v1.1.75'
description: This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.75.
feature: Tools and External Services
role: Admin, Developer
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
# Overview: [!DNL Quality Patches Tool] (QPT) v1.1.75

This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.75.

QPT v1.1.75 includes the following patches:
1. **ACSD-68289**: Fixes an issue where full-text search now returns matching products if the minimum match condition is met across all searchable fields collectively, rather than requiring the condition to be satisfied by a single field.
1. **ACSD-68359**: Fixes *414* error when selecting **[!UICONTROL Pick in Store]** with large carts.
1. **ACSD-68451**: Fixes an issue for multiple websites where a company admin logs in on one website, creates an unrelated company on another website, but is erroneously linked to that unrelated company.
1. **ACSD-68517**: Fixes a form resubmission error on **[!UICONTROL Catalog]** and **[!UICONTROL Catalog Search]** pages.
1. **ACSD-68490**: **[!UICONTROL Add New Attribute]** button visible to restricted admin during configurable product creation.
1. **ACSD-68573**: Category permissions were not applied to customer wishlist items, causing incorrect display and pagination on the web storefront and in [!DNL GraphQL].
1. **ACSD-68615**: Fixes the issue where the inventory reservation compensation CLI showed an exception if the processed combination had a missing order ID.
1. **ACSD‑68793**: Fixes an issue where valid products were incorrectly rejected when assigning them to a shared catalog.
1. **ACSD-68925**: Fixes an issue where responses for GraphQL requests are now aligned with the GraphQL over HTTP specs. A 4XX response code is returned when the request can't be parsed, is unauthorized, or encounters a general problem if the request is parsed.

Use the menu on the left to navigate to a specific patch page.
