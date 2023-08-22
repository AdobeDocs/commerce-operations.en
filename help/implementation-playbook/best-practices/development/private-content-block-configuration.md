---
title: Best practices for private content blocks
description: Learn best practices for configuring private content blocks to optimize storefront performance.
role: Developer
feature: Best Practices
hidefromtoc: yes
exl-id: a6d2f324-f9b9-4b2b-997f-36df02c37465
---
# Best practices for private content blocks

When a private content block contains the `_isScopePrivate` variable, the block is not cacheable. Because the private block is not cached, Adobe Commerce must retrieve the same data for each customer request which increases server load.

Instead of using the `_isScopePrivate` variable for private content, create a block and a template to display user-agnostic data. This data is replaced with user-specific data by the Adobe Commerce UI component, which handles pre-rendering data more efficiently. For instructions, see [Private Content](https://developer.adobe.com/commerce/php/development/cache/page/private-content/) in the _[!DNL Commerce PHP Extensions Guide]_.

## Affected products and versions

[All supported versions](../../../release/versions.md) of:

- Adobe Commerce on cloud infrastructure
- Adobe Commerce on-premises

## Potential performance impact

Sites that have private content blocks containing the `_isScopePrivate` variables trigger AJAX requests to retrieve the same data for each customer request. This increases response time and uses additional resources that could be used to handle more business-critical storefront operations such as customer registration, shopping cart updates, order submission, and payment transactions.

## Additional information

- [Private Content](../../../performance/configuration.md#client-side-optimization-settings)
- [High throughput AJAX requests cause poor performance](https://experienceleague.adobe.com/docs/commerce-knowledge-base/kb/troubleshooting/miscellaneous/high-throughput-ajax-requests-cause-poor-performance.html)
