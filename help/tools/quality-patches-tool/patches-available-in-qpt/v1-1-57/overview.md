---
title: 'Overview: [!DNL Quality Patches Tool] (QPT) v1.1.57'
description: This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.57.
feature: Tools and External Services
role: Admin, Developer
exl-id: 3e252a71-f35f-4046-9353-169060451ffe
---
# Overview: [!DNL Quality Patches Tool] (QPT) v1.1.57

This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.57.

QPT v1.1.57 includes the following patches:

1. **ACSD-57570**: Fixes the issue where a restricted admin user with access to a particular store cannot always see all shared catalogs to which the products are assigned or can see customers that cannot save, leading to inconsistencies in the system.
1. **ACSD-58325**: Fixes the issue where the [!UICONTROL Import] button is available even after a validation error.
1. **ACSD-59083**: Fixes the issue where some database update operations result in _Base table or view not found_ error if the [!DNL mview] update is running at the same time.
1. **ACSD-61622**: Fixes the issue where [!DNL FedEx] account specific rates are missing in the response. ACSD-61622 replaces the fix documented in [[!DNL FedEx] shipping method integration migration from [!DNL SOAP] to [!DNL RESTful API]](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/troubleshooting/known-issues-patches-attached/fedex-shipping-method-integration-migration-soap-restful-api). 
1. **ACSD-61895**: Fixes the issue where the categories [!DNL GraphQL] query returns categories with *allow* permission even if the root category doesn't have *allow* permission.
1. **ACSD-62212**: Fixes the issue where the [!UICONTROL Forgot Password] email content is not translated to the store view's language. 
1. **ACSD-62481**: Fixes the issue where the customer's shopping cart gets empty even if [!UICONTROL Persistence] is enabled.
1. **ACSD-62629**: Fixes the issue where a product list used in [!UICONTROL Widgets] does not respect category condition.
1. **ACSD-62635**: Fixes the issue where multi-store related products do not display properly in the [!DNL GraphQL] product query.
1. **ACSD-62671**: Fixes the issue where the [!DNL GraphQL] request does not return up-to-date address information on the first attempt.
1. **ACSD-62689**: Fixes the issue where the customer is unable to add Categories in [!UICONTROL Related Product Rules] and [!UICONTROL Widgets] after depth 4.
1. **ACSD-62708**: Fixes the issue where [!DNL TinyMCE] 7 editor font size in the admin shows [!UICONTROL px] and not [!UICONTROL pt] after applying the fix from [!UICONTROL ACP2E-3430]. Now, you can also set the font size in [!UICONTROL px] instead of [!UICONTROL pt]. 
1. **ACSD-62758**: Fixes the issue where product videos do not render correctly on the [!UICONTROL Configurable Product] details page if the URL contains selected options.
1. **ACSD-62951**: Fixes the issue where the [!UICONTROL Credit Memo] email is sent without including items and totals.
1.  **ACSD-62965**: Fixes the issue where a *LocalizedException* message is not included in the order placement [!DNL GraphQL response].
1. **ACSD-63286**: Fixes the issue where products assigned to a shared catalog via API do not appear on the storefront until a manual reindex is executed.
1. **ACSD-63326**: Fixes the issue where the admin is redirected to a broken page after placing an order from the backend.


Use the menu on the left to navigate to a specific patch page.
