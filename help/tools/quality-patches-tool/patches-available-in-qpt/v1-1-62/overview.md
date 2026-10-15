---
title: 'Overview: [!DNL Quality Patches Tool] (QPT) v1.1.62'
description: This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.62.
feature: Tools and External Services
role: Admin, Developer
exl-id: be8ffedc-b589-4a30-ba9a-eed705696825
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
# Overview: [!DNL Quality Patches Tool] (QPT) v1.1.62

This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.62.

QPT v1.1.62 includes the following patches:

1. **ACSD-63406**: Fixes the issue where expired persistent quotes are not cleared by any cron job when the `persistent_clear_expired` cron job runs.
1. **ACSD-63520**: Fixes the issue where images added through **[!UICONTROL Configurations]** in the admin panel do not adhere to the maximum upload size limit.
1. **ACSD-64523**: Fixes the issue where new products could be created without a name through the import process (via admin or API), causing the admin interface to break and resulting in invalid products.
1. **ACSD-64532**: Fixes the issue where an ENV variable set to *false* is treated as a string *false* instead of a boolean false.
1. **ACSD-64592**: Fixes the issue where the claim link from the email for a gift card in non-default stores always redirected the gift card claim to the default website.
1. **ACSD-65164**: Fixes the issue where the error message *Some of the selected item options are not currently available* occurs when reordering a configurable product with a single selected checkbox custom option.
1. **ACSD-64732**: Fixes the issue where third-party controllers were not cached correctly with customer segments.

Use the menu on the left to navigate to a specific patch page.
