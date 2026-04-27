---
title: 'Overview: [!DNL Quality Patches Tool] (QPT) v1.1.78'
description: This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.78.
feature: Tools and External Services
role: Admin, Developer
type: Troubleshooting
---
# Overview: [!DNL Quality Patches Tool] (QPT) v1.1.78

This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.78.

QPT v1.1.78 includes the following patches:
1. **ACP2E-4416**: Fixes the issue where customer reward points are not initialized when created in the Admin.
1. **[ACP2E-4419](/help/tools/quality-patches-tool/patches-available-in-qpt/v1-1-78/acp2e-4419.md)**: Fixes the issue where gift cards are not applied correctly at checkout after successful reCAPTCHA v2 ('I am not a robot') validation on the storefront.
1. **ACP2E-4431**: Fixes the issue where Related Products matched by the target rules are deleted during the reindex process.
1. **ACP2E-4448**: Fixes the issue where configuration changes made during Redis outages are not reflected after Redis recovers, causing stale values to persist.
1. **ACP2E-4452**: Fixes the issue where product prices on the Quick Order page include tax regardless of the tax display configuration.
1. **ACP2E-4456**: Fixes an issue where canceling an order using a GraphQL mutation does not transition an order paid entirely with gift cards to the Closed status.
1. **ACP2E-4507**: Fixes the issue where Password Options configuration is not applied for customer password reset requests made through GraphQL mutations.
1. **ACP2E-4513**: Fixes the issue where expired CAPTCHA images are not deleted from the system.
1. **ACP2E-4522**: Fixes the issue where an intermittent duplicate key error occurs on the quote_coupons table when multiple cart merge or quote save requests run at the same time.
1. **ACP2E-4528**: Fixes the issue with city validation in customer addresses, which now allows a forward slash (/) character and rejects invalid characters such as !, ", #, and ?.
1. **ACP2E-4535**: Fixes an issue where submitting the forgot-password form causes the session to be destroyed or regenerated (PHPSESSID changes) and the guest cart is cleared.
1. **ACP2E-4540**: Fixes the issue where the Fotorama library was not loading correctly, causing only the first attached image to be visible.
1. **ACP2E-4555**: Fixes the issue where modern telephone numbers containing "." or "/" are not validated properly.
1. **ACP2E-4565**: Fixes the issue where the Company GraphQL query returns "The current customer isn't authorized" when the X-Adobe-Company header is used.
1. **ACP2E-4591**: Fixes the issue where customer segments based on order count, such as "First-time buyers", did not update when orders were placed via the REST API.
1. **ACP2E-4609**: Fixes the issue where the My Quotes page shows no quotes when some quotes contain deleted products.
1. **ACP2E-4613**: Fixes the issue where large media directory structures caused slow gettree responses, leading to extended Media Gallery directory tree loading times.
1. **ACP2E-4628**: Fixes the issue where importing customers with uppercase email addresses results in the undefined array key error, when Account Sharing is set to Global.
1. **ACP2E-4665**: Fixes the issue where child products of configurable products containing videos in the product galleries are not listed when requested through REST API.
1. **ACP2E-4732**: Fixes an issue where partial indexation stopped for customers with a large number of updates when the version_id column in the changelog table reached its maximum value.
1. **ACP2E-4763**: Fixes the issue where the GraphQL customerOrders query returns inflated original_price_including_tax and original_row_total_including_tax values when Catalog Prices are set to Including Tax, due to tax being applied twice.
1. **ACSD-60989**: Fixes the issue where modifying a column with a foreign key through a declarative schema causes errors on MariaDB.

Use the menu on the left to navigate to a specific patch page.
