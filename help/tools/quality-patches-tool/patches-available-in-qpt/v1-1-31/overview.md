---
title: 'Overview: [!DNL Quality Patches Tool] (QPT) v1.1.31'
description: This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.31.
feature: Tools and External Services
role: Admin
exl-id: d37c7f05-1bf5-495b-9b9e-ac9dd117a3ab
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
# Overview: [!DNL Quality Patches Tool] (QPT) v1.1.31

This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.31.

QPT v1.1.31 includes the following patches:

1. **ACSD-50817**: Optimizes cron job `sales_clean_quotes` to run faster by adding a composite index on `store_id` and `updated_at` columns in the quote table.
1. **ACSD-50345**: Fixes the issue where: [!DNL Google reCAPTCHA v2] does not reload after submitting a failed payment, [!DNL Google reCAPTCHA v3 Invisible] is not working on checkout and the order cannot be placed, and [!UICONTROL PlaceOrder] event was not triggered.
1. **ACSD-49392**: Fixes the issue where the order status changes to closed after a partial refund for a bundled product.
1. **ACSD-51036**: Fixes the issue where race conditions during concurrent REST API calls result in an overwrite of shipping status information in the [!UICONTROL Items Ordered] table.
1. **ACSD-50858**: Fixes the issue where a coupon is incorrectly marked as used after a failed card payment.

Use the menu on the left to navigate to a specific patch page.
