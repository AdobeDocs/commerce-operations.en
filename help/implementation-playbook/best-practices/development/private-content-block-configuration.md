---
title: Best practices for private content blocks
description: Learn best practices for configuring private content blocks to optimize storefront performance.
role: Developer
feature: Best Practices
feature-set: Commerce
---


# Best practices for private content blocks

When a private content block contains the `_isScopePrivate` variable, the block is not cacheable. As a result, each request to Adobe Commerce can trigger additional [AJAX requests](https://support.magento.com/hc/en-us/articles/360039286472-High-throughput-AJAX-requests-cause-poor-performance) for the non-cacheable blocks.

Instead of using the `_isScopePrivate` variable for private content, create a block and a template to display user-agnostic data. This data is replaced with user-specific data by the Adobe Commerce [UI component](https://glossary.magento.com/ui-component/), which handles pre-rendering data more efficiently. For instructions, see [Private Content](https://developer.adobe.com/commerce/php/development/cache/page/private-content/) in the _[!DNL Commerce PHP Extensions Guide]_.


## Potential performance impacts

Sites that have private content blocks containing the `_isScopePrivate` variables can trigger AJAX requests to retrieve the same data for each customer request. This increase response time and uses additional resources that could be used to handle more business-critical storefront operations such as customer registration, shopping cart updates, order submission, and payment transactions.

## Additional information

- [Private Content](../../../performance/configuration.md#client-side-optimization-settings)
- [High throughput AJAX requests cause poor performance](https://experienceleague.adobe.com/docs/commerce-knowledge-base/kb/troubleshooting/miscellaneous/high-throughput-ajax-requests-cause-poor-performance.html)

