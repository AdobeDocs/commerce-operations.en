---
title: 'Overview: [!DNL Quality Patches Tool] (QPT) v1.1.52'
description: This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.52.
feature: Tools and External Services
role: Admin, Developer
exl-id: e6fc655e-0809-4b47-8be1-1fc36ae30753
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
# Overview: [!DNL Quality Patches Tool] (QPT) v1.1.52

This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.52.

QPT v1.1.52 includes the following patches:

1. **ACSD-59366**: Fixes the issue where an error occurs when deleting a team that contains deactivated users who are not visible in the team list.
1. **ACSD-59865**: Fixes the issue where a [!UICONTROL Cart Price Rule] doesn't cancel previously applied rules if the quantity of the product in the cart is not enough for the rules to be applied.
1. **ACSD-59925**: Fixes the issue with sorting items in the media gallery by position in GraphQL.
1. **ACSD-59952**: Fixes the issue where an error occurs when creating a shared catalog with a group ID that is assigned to an existing shared catalog.
1. **ACSD-60590**: Improves the performance of generating *[!UICONTROL Bestsellers Aggregated Daily Reports]* for a large volume of placed orders.
1. **ACSD-60673**: Fixes the issue where the [!UICONTROL Cart Price Rule] for multiple payment methods at checkout doesn't apply appropriately to the specific payment method.
1. **ACSD-60684**: Fixes the issue where GraphQL product sorting by multiple fields doesn't work as expected.
1. **ACSD-60788**: Fixes the issue where custom scripts for [!DNL Google Tag Manager] are not executed due to Content Security Policy (CSP) errors.
1. **ACSD-61322**: Fixes the issue where Products/Categories not assigned to the [!UICONTROL Shared Catalog] for the Default (General Group) are still included in the XML Sitemap.
1. **ACSD-61366**: Fixes the issue where the `setup:static-content:deploy --jobs 4` command runs with multiple jobs failing with the *Port must be configured within host parameter* error when the port is specified for the DB connection.

Use the menu on the left to navigate to a specific patch page.
