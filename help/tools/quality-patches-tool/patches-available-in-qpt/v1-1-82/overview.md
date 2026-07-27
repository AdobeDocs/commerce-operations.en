---
title: 'Overview: [!DNL Quality Patches Tool] (QPT) v1.1.82'
description: This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.82.
feature: Tools and External Services
role: Admin, Developer
type: Troubleshooting
autotag-review: '2026-07-24T20:44:59.025Z'
TQID: 'https://experienceleague.adobe.com/Qoz-3w1ddXeHyDsyfsM0gD1kwi-Z6dc-C6P9Q-nYrUo'
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: bd989d82-1e15-4534-88db-f1f51dd77ffa
    internal-label: Accounts
  - id: c1256247-af4b-46d8-9dca-0c654ecfa157
    internal-label: Order Management System
  - id: d1e21356-0064-4f48-9089-16e3f0dbd2a6
    internal-label: Storefront
topic_v2:
  - id: c1579802-ddd4-4214-8a91-97b2066abe11
    internal-label: Troubleshooting
---
# Overview: [!DNL Quality Patches Tool] (QPT) v1.1.82

This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.82.

QPT v1.1.82 includes the following patches:

1. **ACP2E-4815**: Fixes multiple GraphQL issues that caused PHP exceptions in logs, correct association of orders with customer accounts created post-order via GraphQL, and alignment of responses with GraphQL over HTTP specifications.
1. **ACP2E-4194**: Fixes the issue where GraphQL responses return incorrect HTTP status codes for invalid, unauthorized, or malformed requests.
1. **ACP2E-4547**: Fixes the issue where an admin user can't use **[!UICONTROL Add Products by SKU]** in the Admin to add products from the standard catalog to a negotiable quote for a company assigned to a customer group that isn't linked to a shared catalog.
1. **[ACP2E-4593](/help/tools/quality-patches-tool/patches-available-in-qpt/v1-1-82/acp2e-4593.md)**: Fixes the issue where the CMS page displayed for website restrictions can be incorrect on secondary websites in multi-website deployments.
1. **ACP2E-4682**: Fixes the issue where visiting a Storefront page that checks the quote `isActive` status creates empty quote records each time the page is loaded.
1. **ACP2E-4695**: Fixes the issue where the catalog rule indexer consumes excessive memory and fails to complete, causing instability and out-of-memory errors.
1. **ACP2E-4698**: Fixes the issue where editing an image again in Page Builder text content saves an absolute media URL instead of preserving a portable media directive.
1. **ACP2E-4748**: Fixes the issue where reward points expiration processes slowly on stores with a large reward points history, causing delays in expiring reward points.
1. **ACP2E-4797**: Fixes the issue where entering 4-byte Unicode characters in the WYSIWYG editor or Page Builder content in the Admin is incorrectly blocked even when the database is configured to support `utf8mb4`.
1. **ACP2E-4799**: Fixes the issue where the `requisition_lists` GraphQL query returns a `total_count` value that reflects only the number of items on the current page instead of the total number of requisition lists that match the query criteria.
1. **ACP2E-4805**: Fixes the issue where checkout API requests become significantly slower for configurable products with many child products when the first salable child product appears late in the list.
1. **ACP2E-4840**: Fixes the issue where the quantity value requested in the `products` GraphQL query returns *null*.
1. **ACP2E-4870**: Fixes the issue where **[!UICONTROL Product Alerts]** email notifications ignore store view email settings.
1. **ACP2E-4875**: Fixes the issue where viewing customer accounts with large address books in the Admin unexpectedly logs out admin users.
1. **ACP2E-4894**: Fixes the issue where new orders are delayed in appearing in the Admin order management grids when **[!UICONTROL Asynchronous Indexing]** is enabled on high-volume stores.
1. **ACP2E-4981**: Fixes the issue where Page Builder product carousels display products in an order that doesn't reflect the position set in the Admin, and include configurable products when matching child products are individually visible.

Use the menu on the left to navigate to a specific patch page.
