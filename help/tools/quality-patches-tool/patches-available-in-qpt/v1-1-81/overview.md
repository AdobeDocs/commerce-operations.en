---
title: 'Overview: [!DNL Quality Patches Tool] (QPT) v1.1.81'
description: This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.81.
feature: Tools and External Services
role: Admin, Developer
type: Troubleshooting
---
# Overview: [!DNL Quality Patches Tool] (QPT) v1.1.81

This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.81.

QPT v1.1.81 includes the following patches:

1. **ACP2E-4300**: Fixes the issue where changing a customer group in the Admin doesn't update catalog permissions on the Storefront, causing the catalog and cart to reflect outdated permissions.
1. **ACP2E-4401**: Fixes the issue where the Scheduled Update Preview of the Home Page link with configurable products redirects to the maintenance page instead of displaying the product list.
1. **ACP2E-4395**: Giftcard API product creation will now display an error if no amounts are specified for the global scope.
1. **ACP2E-4468**: Fixes the issue where Admin users with website scope permissions can't edit banner content.
1. **ACP2E-4630**: Fixes the issue where long product names with custom options overlap adjacent columns or items in multi-page Invoice, Shipment, Credit Memo, and Return PDFs after page breaks, making line items unreadable.
1. **ACP2E-4680**: Fixes the issue where non-salable or deleted products disappear from finalized negotiable quotes.
1. **ACP2E-4709**: Fixed an issue where CMS pages failed to save when using Page Builder.
1. **ACP2E-4786**: Fixes the issue where exporting products fails to write files when the AWS S3 remote storage is configured, due to incorrect path resolution in the storage driver.
1. **ACP2E-4801**: Fixes the issue where updating the bundle product option quantities via the Configure button in a negotiable quote from the Admin isn't applied, and changes are discarded.
1. **ACP2E-4815**: Fixes multiple GraphQL issues that caused PHP exceptions in logs, correct association of orders with customer accounts created post-order via GraphQL, and alignment of responses with GraphQL over HTTP specifications.

Use the menu on the left to navigate to a specific patch page.
