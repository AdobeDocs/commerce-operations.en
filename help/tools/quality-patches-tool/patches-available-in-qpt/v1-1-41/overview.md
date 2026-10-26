---
title: 'Overview: [!DNL Quality Patches Tool] (QPT) v1.1.41'
description: This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.41.
feature: Tools and External Services
role: Admin, Developer
exl-id: 10e1f4f9-8c6b-45b2-b6ed-0758c8019c8c
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
# Overview: [!DNL Quality Patches Tool] (QPT) v1.1.41

This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.41.

QPT v1.1.41 includes the following patches:

1. **ACSD-54376**: Fixes the issue that occurs in the shopping cart when a product is removed from the shared catalog after it has already been added to the cart.
1.  **ACSD-53722**: Fixes the issue where the bundled product options price changes to $0 when scheduled updates for different scopes become active.
1. **ACSD-53643**: Fixes the issue where the order has an incorrect total when placing a purchase order with disabled or out-of-stock products. It is fixed by hiding the *[!UICONTROL Place Order]* button for such purchase orders.
1. **ACSD-54067**: Fixes the issue where a product video doesn't play on a mobile device.
1. **ACSD-55414**: Improves performance when the MariaDB tries to cast the EAV entity_id from string to integer.
1. **ACSD-51819**: Fixes the issue where multiple orders can be placed with the same quote ID.
1. **ACSD-53118**: Fixes the issue where the *[!UICONTROL Cart Price Rule]* is applied using coupon code while the product has an empty attribute.
1. **ACSD-54324**: Fixes the issue where the GraphQL requisition_lists request does not consider pagination settings and returns all results.

Use the menu on the left to navigate to a specific patch page.
