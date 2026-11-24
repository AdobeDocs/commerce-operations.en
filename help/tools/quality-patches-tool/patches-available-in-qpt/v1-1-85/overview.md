---
title: 'Overview: [!DNL Quality Patches Tool] (QPT) v1.1.85'
description: This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.85.
feature: Tools and External Services
role: Admin, Developer
type: Troubleshooting
autotag-review: '2026-11-18T22:14:27.542Z'
TQID: 'https://experienceleague.adobe.com/OmF7Ctss9khE5ONHNnfea0dTaN-1-wGTH-EN-gx5jvo'
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: d1e21356-0064-4f48-9089-16e3f0dbd2a6
    internal-label: Storefront
  - id: 22bad240-8308-569b-a9d5-578f1ff890ca
    internal-label: Customers
  - id: 4067ab89-2e97-5de1-8d98-de8318461a8d
    internal-label: Products
  - id: 4820f335-ec9f-5611-8fe3-f5b7e3e56967
    internal-label: Orders
  - id: dac87252-6066-4d6e-a9d2-f6d84c323de7
    internal-label: Configuration
  - id: df8eaa0e-dd74-553a-8ad5-28129f8e8d3d
    internal-label: Shopping Cart
  - id: a507b1ed-4937-53da-97ae-57d36bd5b9e0
    internal-label: Price Rules
  - id: bd989d82-1e15-4534-88db-f1f51dd77ffa
    internal-label: Accounts
  - id: c4f010fa-1478-4300-a88d-706fbc036a7a
    internal-label: APIs and SDKs
  - id: 601e4abe-d9bf-58de-a779-32ed6794dcbe
    internal-label: Data Import/Export
  - id: c18ed297-2187-4aec-affb-9d9654eca6fc
    internal-label: Catalog management
  - id: 125c1f49-aefd-5f34-a252-288937f95f6b
    internal-label: Marketing Tools
subfeature_v2:
  - id: f56d26ed-050b-4fb7-b29b-8e6e994e80a2
    internal-label: B2B
  - id: e0ca0e7a-9738-48d1-b98b-615468ab4aaf
    internal-label: REST API
  - id: 618ab558-d6ad-5352-99d6-d5702c6fdf80
    internal-label: Tools and External Services
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
topic_v2:
  - id: c1579802-ddd4-4214-8a91-97b2066abe11
    internal-label: Troubleshooting
---

# Overview: [!DNL Quality Patches Tool] (QPT) v1.1.85

This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.85.

QPT v1.1.85 includes the following patches:

1. **ACP2E-4929**: Fixes the issue where attribute labels on the **[!UICONTROL Compare Products]** page display translations from a different store view instead of the current store view.
1. **ACP2E-5075**: Fixes the issue where a fixed-amount cart price rule with a category condition incorrectly applied a discount to all children of a dynamic-price bundle product when the rule matched only the bundle parent product.
1. **ACP2E-5077**: Fixes the issue where concurrent `customerCart` GraphQL queries or `POST /V1/carts/mine` REST requests create duplicate active carts for customers who do not already have an active cart.
1. **ACP2E-5088**: Fixes the issue where a customer's persistent shopping cart is cleared when their session expires.
1. **ACP2E-3991**: Fixes the issue where the client IP address is not determined correctly.
1. **ACP2E-5092**: Fixes the issue where the **[!UICONTROL Company Profile]** page and the Admin Customer Edit page display an error when a company address saved without a region later has a region added to its country.
1. **ACP2E-5124**: Fixes the issue where the **[!UICONTROL Import]** button remains available in the validation results after validation fails when the **[!UICONTROL Validation Strategy]** is set to **[!UICONTROL Stop on Error]**.
1. **AC-17456**: Fixes the issue where editing the **[!UICONTROL Global]** scope on the **[!UICONTROL Design Configuration]** page in the Admin Panel returns an *HTTP 500* error on PHP 8.4 and 8.5.
1. **ACP2E-5212**: Fixes the issue where **[!UICONTROL Quick Order]** accepts non-CSV files renamed with a `.csv` extension.
1. **ACP2E-5300**: Fixes the issue where keyword searches for multiple space-separated or comma-separated order numbers in the Admin Panel **[!UICONTROL Orders]** grid return no matching orders.
1. **ACP2E-5354**: Fixes the issue where updating a customer through the REST API causes a customer associated with a company account to appear multiple times in the Admin **[!UICONTROL Customers]** grid.
1. **ACP2E-5208**: Fixes the issue where the **[!UICONTROL Requisition List]** section reloads on every Storefront page navigation, even when no changes have been made.

Use the menu on the left to navigate to a specific patch page.
