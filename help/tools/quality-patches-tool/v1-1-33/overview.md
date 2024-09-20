---
title: 'Overview: [!DNL Quality Patches Tool] (QPT) v1.1.33'
description: This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.33.
feature: Tools and External Services
role: Admin
exl-id: df3ae5e2-7c57-4ccd-af34-eb78cc60bcf6
---
# Overview: [!DNL Quality Patches Tool] (QPT) v1.1.33

This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.33.

QPT v1.1.33 includes the following patches:

1. **ACSD-50478**: Fixes the database rollback command for a case when the DB dump contains triggers and a delimiter SQL command.
1. **ACSD-50512**: Fixes the error: *The downloadable link isn't related to the product. Verify the link and try again.*  that happens when updating the start date for a downloadable product staging update.
1. **ACSD-50949**: Fixes the issue where the price filter in [!UICONTROL Advanced Search] doesn't return proper results when used along the SKU filter.
1. **ACSD-51645**: Fixes the error thrown when saving a new [!UICONTROL Cart Price Rule] if the extension `Magento_OfflineShipping` is disabled.
1. **ACSD-50895**: Fixes the issue where [!DNL Google Analytics] 3 GTM tags are not fired if [!DNL Google Analytics] 4 GTM is not configured.
1. **ACSD-51102**: Fixes the issue where a catalog rule that is applied to a large number of products is not correctly indexed when the rule is enabled by a scheduled update.
1. **ACSD-50368**: Fixes the issue where the customer's `group_id` is ignored when a customer is created via Async REST API or Async Bulk REST API.
1. **ACSD-51497**: Fixes the issue where a customer can't sort a catalog page by [!UICONTROL Custom Attribute] of the dropdown type.
1. **ACSD-51408**: Fixes the issue where the order item status is incorrectly set to [!UICONTROL Backordered].
1. **ACSD-51735**: Fixes the issue where the order item status is incorrectly set to [!UICONTROL Ordered] when the product stock is *0*.
1. **ACSD-51792**: Fixes the issue where a page does not have the impression event when [!DNL Google Tag Manager] 4 is enabled.
1. **ACSD-51471**: Fixes the issue where an admin user cannot save a scheduled update for a bundled product that uses a simple product that itself has a scheduled update.
1. **ACSD-51700**: Fixes the error that happens when switching store views on a downloadable product edit page in the admin.
1. **ACSD-51120**: Fixes the issue where GraphQL GET requests cache is not cleared for CMS pages that contain CMS blocks that are updated via a staging update.
1. **ACSD-51240**: Fixes the issue where the uploaded file is missing if the registration is done via the company registration form.
1. **ACSD-51907**: Fixes the issue where a restricted admin user cannot create a credit memo with an offline refund.
1. **ACSD-52148**: Fixes the issue where the [!UICONTROL Google V3 reCAPTCHA Admin] login fails occasionally.
1. **ACSD-51431**: Fixes the issue where an indexer status is working even if there are no new entries in the changelog.
1. **ACSD-51892**: Fixes the performance issue where config files load multiple times during deployment.

Use the menu on the left to navigate to a specific patch page.
