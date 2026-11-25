---
title: 'Overview: [!DNL Quality Patches Tool] (QPT) v1.1.86'
description: This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.86.
feature: Tools and External Services
role: Admin, Developer
type: Troubleshooting
---
# Overview: [!DNL Quality Patches Tool] (QPT) v1.1.86

This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.86.

QPT v1.1.86 includes the following patches:

1. **ACP2E-3094**: Fixes the issue where viewing or editing **[!UICONTROL Category Permissions]** for a category with many permissions can cause the browser to become unresponsive.
1. **ACP2E-5046**: Fixes the issue where refreshing the page while creating an order in the Admin adds the same SKU multiple times.
1. **ACP2E-5050**: Fixes the issue where viewing or saving an RMA in the Admin does not display the RMA number in the **[!UICONTROL Action Logs]** report.
1. **ACP2E-5057**: Fixes the issue where [!DNL GraphQL] queries for bundle products return global bundle option prices instead of website-specific prices when **[!UICONTROL Catalog Price Scope]** is set to **[!UICONTROL Website]**.
1. **ACP2E-5061**: Fixes the issue where a category merchandising rule cannot combine `AND` conditions with a condition that matches any of several values.
1. **ACP2E-5071**: Fixes the issue where the stock unavailability message is not always displayed on the product page when the shopper's cart already contains the full available quantity.
1. **ACP2E-5094**: Fixes the issue where page loads are significantly slower when a `MAGENTO_DC_*` environment variable is set.
1. **[ACP2E-5118](/help/tools/quality-patches-tool/patches-available-in-qpt/v1-1-86/acp2e-5118.md)**: Fixes the issue where the [!DNL Page Builder] preview does not render when the **[!UICONTROL Translations]** cache is disabled.
1. **ACP2E-5134**: Fixes the issue where removing a bundle's component product from a company’s [!UICONTROL Shared Catalog] leaves the bundle product in the shopping cart, causing an error in the cart and during checkout.
1. **ACP2E-5146**: Fixes the issue where an Admin user restricted to specific websites cannot delete customers when a customer on another website has the same ID as the Admin user.
1. **ACP2E-5176**: Fixes the issue where ecommerce events sent to [!DNL Google Analytics 4] through [!DNL Google Tag Manager] use the [!DNL Universal Analytics] format and omit several checkout events.
1. **ACP2E-5185**: Fixes the issue where moving a category in the category tree displays the error `There was a category move error` or takes several minutes to complete when the store has many URL rewrites.
1. **ACP2E-4191**: Fixes the issue where certain REST API requests enter an infinite loop when the **[!UICONTROL EAV types and attributes]** cache is disabled.
1. **ACP2E-4973**: Fixes the issue where switching from **[!UICONTROL In-Store Delivery]** to another delivery method does not clear the associated store address from the cart.
1. **ACP2E-5221**: Fixes the issue where the **[!UICONTROL Catalog Product Permissions]** indexer takes significantly longer when **[!UICONTROL Quick Order]** is enabled in installations with many stores and customer groups.
1. **ACP2E-5245**: Fixes the issue where a newly registered customer who uses the same address for shipping and billing on their first order sees that address listed twice during their next checkout.
1. **ACP2E-5248**: Fixes the issue where Admin users without the **[!UICONTROL Edit Product Status]** permission see the `null as array offset` deprecation error when opening the **[!UICONTROL Add Product]** page on [!DNL PHP] 8.5.
1. **ACP2E-5254**: Fixes the issue where products added to a requisition list do not appear when a customer opens the list until the cache is cleared.
1. **ACP2E-5268**: Fixes the issue where creating a configurable product fails when **[!UICONTROL Enable Frontend Resize]** is set to **[!UICONTROL No]**.
1. **ACP2E-3752**: Fixes the issue where product import processing throws the error `Undefined array key "apply_to"` when many product import operations are created.
1. **ACP2E-5280**: Fixes the issue where customers encounter an error when signing in while **[!UICONTROL Category Permissions]** is enabled.
1. **ACP2E-5295**: Fixes the issue where parallel product price reindexing fails with the error `Fail in child process` when run after the **[!UICONTROL Inventory]** indexer in the same process.
1. **ACP2E-5298**: Fixes the issue where Admin users with view-only access to cart price rules can generate or delete coupon codes.
1. **ACP2E-5333**: Fixes the issue where refreshing a customer segment with a **[!UICONTROL Total Number of Orders]** condition that uses the **[!UICONTROL is not]** operator and a value of one or more fails with the error `Unknown operator specified`.
1. **ACP2E-5425**: Fixes the issue where customers receive duplicate order confirmation emails for the same order.

Use the menu on the left to navigate to a specific patch page.
