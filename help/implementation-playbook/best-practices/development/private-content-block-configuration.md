---
title: Best practices for private content blocks
description: Learn best practices for configuring private content blocks to optimize storefront performance.
role: Developer
feature: Best Practices
exl-id: a6d2f324-f9b9-4b2b-997f-36df02c37465
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: cdfd3bc1-dc23-5cf0-b965-d3c0c55cde67
    internal-label: Best Practices
role_v2:
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
---
# Best practices for private content blocks

When a private content block contains the `_isScopePrivate` variable, the block is not cacheable. Because the private block is not cached, Adobe Commerce must retrieve the same data for each customer request which increases server load.

Instead of using the `_isScopePrivate` variable for private content, create a block and a template to display user-agnostic data. This data is replaced with user-specific data by the Adobe Commerce UI component, which handles pre-rendering data more efficiently. For instructions, see [Private Content](https://developer.adobe.com/commerce/php/development/cache/page/private-content) in the _[!DNL Commerce PHP Extensions Guide]_.

## Affected products and versions

[All supported versions](../../../release/versions.md) of:

- Adobe Commerce on cloud infrastructure
- Adobe Commerce on-premises

## Potential performance impact

Sites that have private content blocks containing the `_isScopePrivate` variables trigger AJAX requests to retrieve the same data for each customer request. This increases response time and uses additional resources that could be used to handle more business-critical storefront operations such as customer registration, shopping cart updates, order submission, and payment transactions.

## Additional information

- [Private Content](../../../performance/configuration.md#client-side-optimization-settings)
- [Cacheable and Private Blocks](https://developer.adobe.com/commerce/php/development/cache/page/private-content#cacheable-and-private-blocks) in the _[!DNL Commerce PHP Extensions Guide]_
