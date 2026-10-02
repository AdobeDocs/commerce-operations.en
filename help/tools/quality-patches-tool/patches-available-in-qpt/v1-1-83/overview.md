---
title: 'Overview: [!DNL Quality Patches Tool] (QPT) v1.1.83'
description: This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.83.
feature: Tools and External Services
role: Admin, Developer
type: Troubleshooting
---
# Overview: [!DNL Quality Patches Tool] (QPT) v1.1.83

This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.83.

QPT v1.1.83 includes the following patches:

1. **AC-17975**: Fixes multiple PHP 8.5 compatibility issues affecting Admin workflows, checkout authentication, CAPTCHA processing, category management, configuration pages, and command-line operations in certain PHP environments.
1. **AC-18128**: Fixes the issue where order dates and order comment timestamps returned by GraphQL can display incorrect calendar dates in non-English locale settings.
1. **AC-18096**: Fixes the issue where Sales GraphQL date fields return dates in a different format than previous releases by reverting the date format from slash-separated (/) to dash-separated (-).
1. **ACP2E-4639**: Fixes the issue  where the requisition list items type was misspelled in the GraphQL schema, while the older items field and RequistionListItems type remain available but are deprecated.
1. **ACP2E-4838**: Fixes the issue where an Admin user with restricted permissions cannot delete customers from the Customers grid.
1. **ACP2E-4877**: Fixes the issue where orders placed using Payment on Account could not be edited in Admin while in Pending status.
1. **ACP2E-4908**: Fixes the issue where large catalogs could cause excessive memory use in Redis or Valkey because separate layout cache entries were created for each product in each store view.
1. **AC-12854**: Fixes the issue where reordering an order in the admin creates a new order number with a -1 suffix instead of assigning the next sequential order number.
1. **ACP2E-4977**: Fixes the issue where invoice and credit memo grand totals for configurable products do not include Fixed Product Tax (FPT), resulting in totals lower than the order total.
1. **AC-16530**: Fixes the issue where the shopping cart did not consistently reflect scheduled updates to catalog price rules.
1. **AC-11389**: Fixes the issue where discounts, taxes, and order totals are calculated incorrectly in some rounding scenarios.
1. **ACP2E-4998**: Fixes the issue where the POST /V1/products/tier-prices REST API request failed for the entire request when one SKU in the payload did not exist, preventing valid SKUs from being updated.
1. **ACP2E-5015**: Fixes the issue where saving a shared catalog in the Admin can unintentionally remove assigned products and pricing when required catalog data is unavailable.
1. **AC-14940**: Fixes the issue where clicking Reset Password for a customer account in the Admin did not send the password reset email in some store-related cases.
1. **ACP2E-5101**: Fixes the issue where installing B2B module failed when indexers were set to Update on Schedule.
1. **ACP2E-5205**: Fixes the issue when category loading takes a considerable amount of time or causes a timeout when a large number of categories and products are involved. Also, product count is properly displayed for each category leaf.
1. **ACP2E-3211**: Fixes the issue where adding the same product to the cart at the same time on the Storefront creates separate items in the cart for the same SKU instead of combining them into a single item.
1. **ACP2E-5223**: Fixes the issue where the Catalog Permissions index includes websites that are excluded from a customer group.

Use the menu on the left to navigate to a specific patch page.
