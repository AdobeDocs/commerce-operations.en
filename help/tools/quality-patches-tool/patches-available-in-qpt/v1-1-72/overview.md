---
title: 'Overview: [!DNL Quality Patches Tool] (QPT) v1.1.72'
description: This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.72.
feature: Tools and External Services
role: Admin, Developer
type: Troubleshooting
---
# Overview: [!DNL Quality Patches Tool] (QPT) v1.1.72

This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.72.

QPT v1.1.72 includes the following patches:
1. **ACSD-68040**: Frontend search page experiences performance degradation on [!DNL MariaDB] 10.6 and 11.4 with many historical search requests.
1. **ACSD-67941**: GraphQL requests with unknown filter names cause PHP exception logs.
1. **ACSD-68064**: Creating scheduled updates results in duplicate entries in environments with a high number of nested categories.
1. **ACSD-66807**: `report_viewed_product_index` table shows an incorrect count of product page views.
1. **ACSD-67383**: Login as Customer with two company admin accounts in the same session causes a *No such entity with cartId* error.
1. **ACSD-67518**: Advanced reporting generates duplicated header rows when the row count exceeds the batch size.
1. **ACSD-67639**: Creating a credit memo fails for bundle products with **[!UICONTROL Dynamic Price]** set to *No*.
1. **[ACSD-67696](/help/tools/quality-patches-tool/patches-available-in-qpt/v1-1-72/acsd-67696.md)**: `media_gallery` entries don't return in the Cart GraphQL product node after a cache flush.
1. **ACSD-67946**: Cart updates show duplicate error banners.
1. **ACSD-68011**: Non-Existent SKUs assigned to shared catalog via /V1/sharedCatalog/:id/assignProducts API.
1. **ACSD-68118**: `customerCart` GraphQL query returns product attribute values that don't reflect the store header, causing inconsistent localization.
1. **ACSD-68092**: Bundle product options are lost after multiple saves due to improper synchronization between scheduled updates and base product data.
1. **ACSD-67424**: `updated_at` value in the `GET /carts/search` [!DNL REST] API response doesn't match the value shown in the **[!UICONTROL Admin panel]** when using Negotiable Quotes.
1. **ACSD-67187**: Admin users restricted to non-default websites see the error, *"*Please create at least a public shared catalog to proceed*, and can't access the **[!UICONTROL Add New Company]** button on the Company grid.

Use the menu on the left to navigate to a specific patch page.
