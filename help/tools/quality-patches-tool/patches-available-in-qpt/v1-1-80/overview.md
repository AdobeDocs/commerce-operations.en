---
title: 'Overview: [!DNL Quality Patches Tool] (QPT) v1.1.80'
description: This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.80.
feature: Tools and External Services
role: Admin, Developer
type: Troubleshooting
autotag-review: '2026-06-11T01:10:37.916Z'
TQID: 'https://experienceleague.adobe.com/q2sNWUJQCm4eRUP8RusytBAqQoscU4F9qDtDIeNmm6E'
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: c1256247-af4b-46d8-9dca-0c654ecfa157
    internal-label: Order Management System
  - id: d1e21356-0064-4f48-9089-16e3f0dbd2a6
    internal-label: Storefront
  - id: dac87252-6066-4d6e-a9d2-f6d84c323de7
    internal-label: Configuration
topic_v2:
  - id: c1579802-ddd4-4214-8a91-97b2066abe11
    internal-label: Troubleshooting
---
# Overview: [!DNL Quality Patches Tool] (QPT) v1.1.80

This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.80.

QPT v1.1.80 includes the following patches:

1. **ACP2E-4239**: Fixes the issue where Admin grid filters using date attributes return incorrect results due to timezone differences between the selected date, stored UTC values, and the configured store timezone.
1. **ACP2E-4472**: Fixes the issue where a null quote is created during the **[!UICONTROL Login as Customer]** flow.
1. **ACP2E-4481**: Fixes the issue where bundle product saleability isn't recalculated correctly after an order is canceled.
1. **ACP2E-4488**: Fixes the issue where saving or editing products in [!UICONTROL Admin] is slow for products with large attribute sets.
1. **ACP2E-4493**: Fixes the issue where the Sales Order Archive grid displays an incorrect order status when asynchronous indexing is enabled.
1. **ACP2E-4496**: Fixes the issue where the analytics cron job causes performance degradation during execution, resulting in improved overall system performance.
1. **ACP2E-4533**: Fixes the issue where placeholder images don't load on the Storefront when a store code is included in the URL.
1. **ACP2E-4552**: Fixes the issue where the company status isn't returned in the GraphQL response.
1. **ACP2E-4610**: Fixes the issue where the `sales_clean_quotes` cron job has performance issues.
1. **ACP2E-4615**: Fixes the issue where online order refunds fail with a PayPal error stating, *PayPal gateway rejects the request. Internal Error.*.
1. **ACP2E-4626**: Fixes the issue where some Storefront JavaScript files were requested and executed twice, causing intermittent duplicate loads and unstable behavior.
1. **[ACP2E-4653](/help/tools/quality-patches-tool/patches-available-in-qpt/v1-1-80/acp2e-4653.md)**: Fixes the issue where the Cart Price Rule condition attribute scope for **[!UICONTROL Category (Parent Only)]** and **[UICONTROL Category (Children Only)]** is not exposed when retrieving or updating rules through the [!DNL REST] API.
1. **ACP2E-4808**: Fixes the issue where the Weight attribute on the storefront product page displays only a raw numeric value in the **[!UICONTROL Additional Information]** or **[!UICONTROL More Information]** section without the configured unit of measurement (lbs or kgs).
1. **ACP2E-4156**: Fixes the issue where shipping address validation in the REST API doesn't adhere to the attribute configuration defined in the [!UICONTROL Admin].
1. **ACP2E-4813**: Fixes the issue where USPS shipping methods are unavailable at checkout and shipping estimates are incorrect for certain products, including orders that split into multiple packages.
1. **ACSD-53502**: Fixes the issue where **[!UICONTROL Add to Cart]** intermittently fails on the storefront in iOS [!DNL Safari] due to recursive calls to the New Relic monitoring script, causing page reloads.

Use the menu on the left to navigate to a specific patch page.
