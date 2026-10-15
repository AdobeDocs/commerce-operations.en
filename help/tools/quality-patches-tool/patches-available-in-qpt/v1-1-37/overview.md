---
title: 'Overview: [!DNL Quality Patches Tool] (QPT) v1.1.37'
description: This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.37.
feature: Tools and External Services
role: Admin, Developer
exl-id: 92338019-d71c-4fe8-984f-879d551b418f
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
# Overview: [!DNL Quality Patches Tool] (QPT) v1.1.37

This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.37.

QPT v1.1.37 includes the following patches:

1. **ACSD-52613**: Fixes the issue where caches and indexes are refreshed even when no updates are made to `Inventory_source` items by rest API.
1. **ACSD-51884**: Fixes the issue where the product image cache path becomes incorrect after running the resize command.
1. **ACSD-53628**: Fixes the issue where the CSV sales order report shows incorrect special characters.
1. **ACSD-49843**: Fixes the issue where the link on product download is not available after the ordered item is auto invoiced by online payment method with the *[!UICONTROL Payment Action]* = *[!UICONTROL Sale]* setting enabled.
1. **ACSD-53148**: Fixes the issue where two parallel requests in GraphQL for adding the same configurable product to the cart resulted in two separate items on the cart with the same product SKU.
1. **ACSD-47054**: Fixes the issue where preview reindex runs reindex for all stores, causing slowness.
1. **ACSD-52606**: Fixes the issue where the error message *Your order is not ready for pickup* is displayed when the user clicks **[!UICONTROL Notify Order is Ready for Pickup]**.
1. **ACSD-51574**: Fixes the issue where the image is not updated on the frontend after replacing it with another image with the same name. 
1. **ACSD-53728**: Fixes the issue where the product EAV indexer is taking longer to complete.    
1. **ACSD-53979**: Fixes the JS issue that occurs on the homepage if the welcome message contains a single quote.
1. **ACSD-52143**: Fixes the issue where custom options are removed after product import.    
1. **ACSD-53750**: Fixes the *Broken pipe or closed connection* error during multi-threaded `catalog_product_price` reindex.

Use the menu on the left to navigate to a specific patch page.
