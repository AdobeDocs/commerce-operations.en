---
title: 'Overview: [!DNL Quality Patches Tool] (QPT) v1.1.75'
description: This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.75.
feature: Tools and External Services
role: Admin, Developer
type: Troubleshooting
---
# Overview: [!DNL Quality Patches Tool] (QPT) v1.1.75

This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.75.

QPT v1.1.75 includes the following patches:
1. **ACSD-68289**: Fixes an issue where full-text search now returns matching products if the minimum match condition is met across all searchable fields collectively, rather than requiring the condition to be satisfied by a single field.
1. **ACSD-68359**: Fixes an issue where selecting a store during checkout using **[!UICONTROL Pick in Store]** no longer fails due to long URLs when many products are in the cart. Previously, this triggered a 414 error caused by excessively long URLs generated during a store sale.
1. **ACSD-68451**: Fixes an issue for multiple websites where a company admin logs in on one website, creates an unrelated company on another website, but is erroneously linked to that unrelated company.
1. **ACSD-68490**: **[!UICONTROL Add New Attribute]** button visible to restricted admin during configurable product creation.
1. **ACSD-68517**: Fixes a form resubmission error on Catalog and Catalog Search pages.
1. **ACSD-68573**: Fixes the issue where category permissions weren't applied properly to customer wishlist items. After the fix, wishlist items are properly displayed and paginated in both the web and GraphQL.
1. **ACSD-68615**: Fixes the issue where the inventory reservation compensation CLI showed an exception if the processed combination had a missing order ID.
1. **ACSD-68793**: Fixes an issue where valid products were incorrectly rejected when assigning them to a shared catalog.
1. **[ACSD-68925]**: Fixes an issue where responses for GraphQL requests are now aligned with the GraphQL over HTTP specs. A 4XX response code is returned when the request can't be parsed, is unauthorized, or encounters a general problem if the request is parsed.

Use the menu on the left to navigate to a specific patch page.
