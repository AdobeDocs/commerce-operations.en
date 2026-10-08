---
title: 'Overview: [!DNL Quality Patches Tool] (QPT) v1.1.54'
description: This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.54.
feature: Tools and External Services
role: Admin, Developer
exl-id: 1496d15e-edf9-4be0-8e14-ebb2de6f12fe
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
# Overview: [!DNL Quality Patches Tool] (QPT) v1.1.54

This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.54.

QPT v1.1.54 includes the following patches:

1. **ACSD-60267**: Fixes the issue where Fixed Product Tax (FPT) applies correctly when adding simple products with FPT directly to the cart but fails when selecting these products through configurable product options.
1. **ACSD-61103**: Fixes the issue where the failure count in the `customer_entity` table is not reset to zero after a customer successfully logs in through API endpoints.
1. **ACSD-61134**: Fixes the issue where the [!DNL Braintree Vault] payment method is automatically deselected in the checkout workflow when a shopper updates their billing address by deselecting the *[!UICONTROL My billing and shipping address are the same]* checkbox.
1. **ACSD-61199**: Fixes the issue where the CMS page hierarchy tab does not display a proper tree structure when editing a CMS page with an existing hierarchy.
1. **ACSD-61200**: Fixes the issue where the calculations for *[!UICONTROL Total Amount]* and *[!UICONTROL Total Amount Actual]* in sales are missing the *[!UICONTROL Discount Tax Compensation Amount]* and *[!UICONTROL Shipping Discount Tax Compensation Amount]*, causing discrepancies in the sales order data.
1. **ACSD-61522**: Fixes the issue where it is possible to enter email addresses into the guest customer's *[!UICONTROL First Name]* and *[!UICONTROL Last Name]* fields and send invalid order confirmation emails.
1. **ACSD-61756**: Improves performance of `AdvancedSalesRule` filters.
1. **ACSD-61799**: Fixes the issue where the total discount is incorrectly calculated when multiple cart rules with fixed discounts are applied to the quote.
1. **ACSD-61845**: Fixes the error that occurs when a request is sent with only *text/html* accept header.
1. **ACSD-62056**: Fixes the issue where image uploading for a configurable product fails if MSI is installed.
1. **ACSD-62485**: Fixes the issue where `async.operations.all` consumer stops working when a company is created.

Use the menu on the left to navigate to a specific patch page.
