---
title: 'Overview: [!DNL Quality Patches Tool] (QPT) v1.1.84'
description: This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.84.
feature: Tools and External Services
role: Admin, Developer
type: Troubleshooting
---
# Overview: [!DNL Quality Patches Tool] (QPT) v1.1.84

This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.84.

QPT v1.1.84 includes the following patches:

1. **ACP2E-4913**: Fixes the issue where shipping and invoicing operations fail due to a deadlock.
1. **ACP2E-5005**: Fixes the issue where the quantity of a bundle product option in a negotiable quote reverts to its previous value when the bundle product is reconfigured in the Admin, and the quantity is edited.
1. **ACP2E-5009**: Fixes the issue where data migration from Magento Open Source to Adobe Commerce does not correctly migrate category scheduled design changes and product Special Price scheduled updates, causing some scheduled updates to be missing or skipped during migration, and improves migration performance.
1. **ACP2E-5017**: Fixes the issue where querying customer role through GraphQL returns an Internal server error when the customer is not assigned to a company.
1. **ACP2E-5027**: Fixes the issue where indexers remain stuck in a loop and reindexing does not complete when file locking is enabled.
1. **ACP2E-5029**: Fixes the issue where changes to catalog price rules do not appear in Live Search until a manual resynchronization is performed.
1. **ACP2E-5041**: Fixes the issue where saving a product during a scheduled update causes the Storefront to show the regular price instead of the Special Price after the update ends.
1. **ACP2E-5059**: Fixes the issue where customers receive duplicate order confirmation emails for the same order.
1. **ACP2E-5122**: Fixes the issue where handled errors from GraphQL requests for the shopping cart are incorrectly recorded in exception logs as application errors.
1. **ACP2E-5143**: Fixes the issue where the GraphQL route query renders full CMS page content when only routing metadata is requested, increasing database queries for CMS pages that contain Page Builder widgets.
1. **ACP2E-5183**: Fixes the issue where static content deployment fails on PHP 8.5 while compiling a LESS file that uses the @magento_import directive.
1. **ACP2E-5242**: Fixes the issue where checking product availability while adding items to the cart displays an error indicating that the website cannot be found.
1. **ACP2E-5263**: Fixes the issue where exporting products to a CSV file can stop before all products are included, resulting in an incomplete file.
1. **ACP2E-5034**: Fixes the issue where negotiable quote management incorrectly resets totals to zero when recalculating a quote after selecting a shipping method, discards updates to bundle product option quantities made through the Configure action in the Admin, and does not correctly reflect item-level discounts applied to dynamic price bundle products in quote subtotals.
1. **ACP2E-4741**: Fixes the issue where a product disappears from the Storefront after a product linked to it as a Related Product, Up-Sell, or Cross-Sell is saved while a non-default stock and source are in use.
1. **ACP2E-5079**: Fixes the issue where evaluating a customer segment assigned to multiple websites returns matching customers only from the first website when customer accounts are shared globally.
1. **ACP2E-5127**: Fixes the issue where editing a company account in the Admin panel with a non-default locale resets its Credit Limit to 0.
1. **AC-15494**: Fixes the issue where the products query returns product names with HTML-escaped special characters instead of their original characters.

Use the menu on the left to navigate to a specific patch page.
