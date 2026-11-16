---
title: 'Overview: [!DNL Quality Patches Tool] (QPT) v1.1.85'
description: This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.85.
feature: Tools and External Services
role: Admin, Developer
type: Troubleshooting
---
# Overview: [!DNL Quality Patches Tool] (QPT) v1.1.85

This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.85.

QPT v1.1.85 includes the following patches:

1. **ACP2E-4929**: Fixes the issue where attribute labels on the Compare Products page display translations from a different store view instead of the current store view.
1. **ACP2E-5075**: Fixes the issue where a fixed-amount cart price rule with a category condition incorrectly applied a discount to all children of a dynamic-price bundle product when the rule matched only the bundle parent product.
1. **ACP2E-5077**: Fixes the issue where concurrent customerCart GraphQL queries or `POST` `/V1/carts/mine REST` requests create duplicate active carts for customers who do not already have an active cart.
1. **ACP2E-5088**: Fixes the issue where a customer's persistent shopping cart is cleared when their session expires.
1. **ACP2E-3991**: Fixes the issue where the client IP address is not determined correctly.
1. **ACP2E-5092**: Fixes the issue where the Company Profile page and the Admin Customer Edit page display an error when a company address saved without a region later has a region added to its country.
1. **ACP2E-5124**: Fixes the issue where the Import button remains available in the validation results after validation fails when the Validation Strategy is set to Stop on Error.
1. **AC-17456**: Fixes the issue where editing the Global scope on the Design Configuration page in the Admin Panel returns an HTTP 500 error on PHP 8.4 and 8.5.
1. **ACP2E-5212**: Fixes the issue where Quick Order accepts non-CSV files renamed with a .csv extension.
1. **ACP2E-5300**: Fixes the issue where keyword searches for multiple space-separated or comma-separated order numbers in the Admin Panel Orders grid return no matching orders.
1. **ACP2E-5354**: Fixes the issue where updating a customer through the REST API causes a customer associated with a company account to appear multiple times in the Admin Customers grid.
1. **ACP2E-5208**: Fixes the issue where Requisition List section reloads on every Storefront page navigation, even when no changes have been made.

Use the menu on the left to navigate to a specific patch page.
