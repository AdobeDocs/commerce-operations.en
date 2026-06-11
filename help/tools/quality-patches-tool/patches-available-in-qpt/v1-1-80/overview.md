---
title: 'Overview: [!DNL Quality Patches Tool] (QPT) v1.1.80'
description: This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.80.
feature: Tools and External Services
role: Admin, Developer
type: Troubleshooting
---
# Overview: [!DNL Quality Patches Tool] (QPT) v1.1.80

This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.80.

QPT v1.1.80 includes the following patches:
1. **ACP2E-4239**: Fixes the issue where Admin grid filters using date attributes return incorrect results due to timezone differences between the selected date, stored UTC values, and the configured store timezone.
1. **ACP2E-4472**: Fixes the issue where a null quote is created during the "Login as Customer" flow.
1. **ACP2E-4481**: Fixes the issue where bundle product saleability is not recalculated correctly after an order is canceled.
1. **ACP2E-4488**: Fixes the issue where saving or editing products in Admin is slow for products with large attribute sets.
1. **ACP2E-4493**: Fixes the issue where the Sales Order Archive grid displays an incorrect order status when asynchronous indexing is enabled.
1. **ACP2E-4496**: Fixes the issue where the analytics cron job causes performance degradation during execution, resulting in improved overall system performance.
1. **ACP2E-4533**: Fixes the issue where placeholder images do not load on the Storefront when a store code is included in the URL.
1. **ACP2E-4552**: Fixes the issue where the company status is not returned in the GraphQL response.
1. **ACP2E-4610**: Fixes the issue where the sales_clean_quotes cron job has performance issues.
1. **ACP2E-4615**: Fixes the issue where online order refunds fail with a PayPal error stating "PayPal gateway rejects the request. Internal Error.".
1. **ACP2E-4626**: Fixes the issue where some Storefront JavaScript files were requested and executed twice, causing intermittent duplicate loads and unstable behavior.
1. **ACP2E-4653**: Fixes the issue where the Cart Price Rule condition attribute scope for "Category (Parent Only)" and "Category (Children Only)" is not exposed when retrieving or updating rules through the REST API.
1. **ACP2E-4808**: Fixes the issue where the Weight attribute on the storefront product page displays only a raw numeric value in the "Additional Information" or "More Information" section without the configured unit of measurement (lbs or kgs).
1. **ACP2E-4156**: Fixes the issue where shipping address validation in the REST API does not adhere to the attribute configuration defined in Admin.
1. **ACP2E-4813**: Fixes the issue where USPS shipping methods are unavailable at checkout and shipping estimates are incorrect for certain products, including orders that split into multiple packages.
1. **ACSD-53502**: Fixes the issue where Add to Cart intermittently fails on the storefront in iOS Safari due to recursive calls to the New Relic monitoring script, causing page reloads.

Use the menu on the left to navigate to a specific patch page.
