---
title: 'Overview: [!DNL Quality Patches Tool] (QPT) v1.1.24'
description: This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.24.
feature: Tools and External Services
role: Admin
exl-id: 7f88a28b-f166-4c5b-8d69-239c57cc4001
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
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
---
# [!DNL Quality Patches Tool] (QPT) v1.1.24 overview

This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.24.

QPT v1.1.24 includes the following patches:

1. **ACSD-45168**: Fixes the issue where SEO-friendly URLs are not generated for products that have *url_key* attributes overridden on the store-view level.
1. **ACSD-46617**: Fixes the issue where the **[!UICONTROL Continue to Checkout]** button is greyed out even if the subtotal is greater than the configured *Minimum Order Amount*.
1. **ACSD-46770**: Fixes the issue where admin order emails are sent even when the *Email order confirmation* is unchecked.
1. **ACSD-46865**: Fixes the issue where the [!UICONTROL Shipment and Credit Memo] grid is not populated when asynchronous indexing is enabled.
1. **ACSD-47004**: Fixes the issue where VAT is not applied to a billing address without a VAT ID.
1. **ACSD-47079**: Fixes the issue where composite products (bundle, grouped, and configurable) stock status are not updated when sub-product stock status changes via REST API POST /rest/V1/inventory/source-items.
1. **ACSD-47137**: Improves the loading speed of the image gallery when the pub/media folder is very big.
1. **ACSD-47336**: Fixes *Something went wrong.* error when dismissing notifications in the Commerce Admin.
1. **ACSD-47559**: Fixes the issue where the Preview Email Template area is not fully visible.
1. **ACSD-47803**: Fixes the issue where out-of-stock configurable product swatches are displayed as available.
1. **ACSD-47920**: Fixes the issue where orders can be placed via Rest API as a guest user even when the *Allow Guest Checkout* is turned off.
1. **ACSD-47955**: Fixes the issue where GraphQL does not display the cart discount correctly.

Use the menu on the left to navigate to a specific patch page.
