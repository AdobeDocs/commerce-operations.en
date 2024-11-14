---
title: 'Overview: [!DNL Quality Patches Tool] (QPT) v1.1.54'
description: This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.54.
feature: Tools and External Services
role: Admin, Developer
exl-id: 1496d15e-edf9-4be0-8e14-ebb2de6f12fe
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
