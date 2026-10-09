---
title: 'Overview: [!DNL Quality Patches Tool] (QPT) v1.1.53'
description: This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.53.
feature: Tools and External Services
role: Admin, Developer
exl-id: 4e7c8d45-dc0c-4182-8cd0-727b28294d58
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
# Overview: [!DNL Quality Patches Tool] (QPT) v1.1.53

This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.53.

QPT v1.1.53 includes the following patches:

1. **ACSD-48318**: Fixes the issue where environment emulation nesting is not allowed. Now, the emulation starts during the `send()` call once the emulation stops during the `getInfoBlockHtml()` call. 
1. **ACSD-59930**: Improves performance of the company's *[!UICONTROL Create]*, *[!UICONTROL Save]*, and *[!UICONTROL Delete]* flows. 
1. **ACSD-60584**: Fixes the issue where an access token created for the user on one website is allowed to access or change customer information on other websites.
1. **ACSD-60804**: Fixes the issue where editing a customer that is linked to a deleted company causes the error *Call to a member function `getSuperUserId()` on null*. 
1. **ACSD-61133**: Fixes the issue where the `sales_clean_quotes` cron deletes quotes from unapproved purchase orders.
1. **ACSD-61528**: Fixes the issue where retrieving roles from the [!UICONTROL Admin] using GraphQL returns no results.  
1. **ACSD-61553**: Fixes the issue where *[!UICONTROL Cart Price Rule]* discounts are incorrectly calculated when multiple discounts with different priorities and *[!UICONTROL Maximum Qty Discount is Applied To]* are applied to the product. 
1. **ACSD-61667**: Improves inventory performance for creating shipping in the case of many sources with *In-Store Pickup*. 
1. **ACSD-61969**: Fixes the issue where the user is required to type in a case-sensitive coupon code that exactly matches the configured coupon code.

Use the menu on the left to navigate to a specific patch page.
