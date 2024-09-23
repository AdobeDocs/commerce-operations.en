---
title: 'Overview: [!DNL Quality Patches Tool] (QPT) v1.1.31'
description: This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.31.
exl-id: 0d93619e-0ae6-4dba-9b76-8aeb026c456d
feature: Tools and External Services
role: Admin
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
