---
title: 'Overview: [!DNL Quality Patches Tool] (QPT) v1.1.79'
description: This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.79.
feature: Tools and External Services
role: Admin, Developer
type: Troubleshooting
---
# Overview: [!DNL Quality Patches Tool] (QPT) v1.1.79

This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.79.

QPT v1.1.79 includes the following patches:
1. **ACP2E-4402**: Fixes the issue where products created as disabled weren't added back to related [!UICONTROL Target Rule] results after being enabled.
1. **ACP2E-4505**: Fixes the issue where it was possible to save a category with stale data from a duplicate browser tab, creating a circular dependency.
1. **ACP2E-4531**: Fixes the issue where changing a CMS page's URL key didn't update the page's hierarchical URL.
1. **ACP2E-4601**: Fixes the issue where payment transaction processing could behave inefficiently under certain conditions.
1. **ACP2E-4603**: Fixes the issue where running the [!UICONTROL Catalog Permissions] product reindex left existing permission index rows unchanged, causing updated category permission grants to not be reliably reflected on products.
1. **ACP2E-4706**: Fixes the issue where products not enabled in the [!UICONTROL Admin] scope were skipped by the [!UICONTROL Target Rule] indexer.
1. **ACP2E-4720**: Fixes the issue where free shipping wasn't properly applied nor removed for bundle products with cart discount rules.
1. **ACP2E-4411**: Fixes the issue where the incorrect price is shown for a bundle product on the cart page and in the mini-cart for multiple-currency stores.
1. **ACP2E-4475**: Fixes the issue where the products listing page incorrectly filters and sorts out-of-stock bundle products by price when the **[!UICONTROL Display Out of Stock Products]** option is enabled.
1. **ACP2E-4110**: Fixes the issue where bundle products with a special price displayed incorrect amounts on PDP and PLP in a non-default currency.
1. **AC-10698**: Fixes the issue where the system sent the currency at the all orders level instead of associating it with individual orders. Transaction prices and totals are now sent per order to Google Tag, improving ecommerce data tracking accuracy.
1. **AC-10737**: Fixes an issue where the `bin/magento setup:db:status` command doesn't recognize the JSON data type.

Use the menu on the left to navigate to a specific patch page.
