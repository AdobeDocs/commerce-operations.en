---
title: 'Overview: [!DNL Quality Patches Tool] (QPT) v1.1.83'
description: This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.83.
feature: Tools and External Services
role: Admin, Developer
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
# Overview: [!DNL Quality Patches Tool] (QPT) v1.1.83

This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.83.

QPT v1.1.83 includes the following patches:

1. **AC-17975**: Fixes multiple PHP 8.5 compatibility issues affecting Admin workflows, checkout authentication, CAPTCHA processing, category management, configuration pages, and command-line operations in certain PHP environments.
1. **AC-18128**: Fixes the issue where order dates and order comment timestamps returned by GraphQL display incorrect calendar dates in non-English locale settings.
1. **AC-18096**: Fixes the issue where Sales GraphQL date fields return dates in a different format than previous releases by reverting the date format from slash-separated (`/`) to dash-separated (`-`).
1. **ACP2E-4639**: Fixes the issue  where the requisition list items type was misspelled in the GraphQL schema, while the older items field and `RequistionListItems` type remain available but are deprecated.
1. **ACP2E-4838**: Fixes the issue where an Admin user with restricted permissions can't delete customers from the Customers grid.
1. **ACP2E-4877**: Fixes the issue where orders placed using **[!UICONTROL Payment on Account]** couldn't be edited in Admin while in *Pending* status.
1. **ACP2E-4908**: Fixes the issue where large catalogs cause excessive memory use in Redis or Valkey because separate layout cache entries were created for each product in each store view.
1. **[AC-12854](/help/tools/quality-patches-tool/patches-available-in-qpt/v1-1-83/ac-12854.md)**: Fixes the issue where reordering an order in the Admin creates a new order number with a `-1` suffix instead of assigning the next sequential order number.
1. **ACP2E-4977**: Fixes the issue where invoice and credit memo grand totals for configurable products don't include **[!UICONTROL Fixed Product Tax]** (FPT), resulting in totals lower than the order total.
1. **AC-16530**: Fixes the issue where the shopping cart didn't consistently reflect scheduled updates to catalog price rules.
1. **AC-11389**: Fixes the issue where discounts, taxes, and order totals are calculated incorrectly in some rounding scenarios.
1. **ACP2E-4998**: Fixes the issue where the `POST /V1/products/tier-prices` REST API request failed for the entire request when one SKU in the payload didn't exist, preventing valid SKUs from being updated.
1. **ACP2E-5015**: Fixes the issue where saving a shared catalog in the Admin can unintentionally remove assigned products and pricing when required catalog data is unavailable.
1. **AC-14940**: Fixes the issue where clicking **[!UICONTROL Reset Password]** for a customer account in the Admin didn't send the password reset email in some store-related cases.
1. **[ACP2E-5101](/help/tools/quality-patches-tool/patches-available-in-qpt/v1-1-83/acp2e-5101.md)**: Fixes the issue where installing B2B module failed when indexers were set to **[!UICONTROL Update by Schedule]**.
1. **ACP2E-5205**: Fixes the issue when category loading takes a considerable amount of time or causes a timeout when a large number of categories and products are involved. Also, product count is now properly displayed for each category leaf.
1. **ACP2E-3211**: Fixes the issue where adding the same product to the cart at the same time on the storefront creates separate items in the cart for the same SKU instead of combining them into a single item.
1. **ACP2E-5223**: Fixes the issue where the Catalog Permissions index includes websites that are excluded from a customer group.

Use the menu on the left to navigate to a specific patch page.
