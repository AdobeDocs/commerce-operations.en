---
title: Scheduling Admin updates on production sites
description: Learn best practices for scheduling critical updates to Adobe Commerce to prevent slow performance and outages.
role: Admin, User
feature: Best Practices
exl-id: 41c0cb87-3371-48a7-9913-264f3eea8d8d
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: cdfd3bc1-dc23-5cf0-b965-d3c0c55cde67
    internal-label: Best Practices
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
  - id: b69b2659-1057-424e-8fc5-ed9e016dc554
    internal-label: User
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
---
# Best practices for scheduling Admin updates on production sites

Schedule critical updates and operations on your Adobe Commerce sites during off-peak hours to prevent slow performance and outages on production sites.

Examples of critical actions:

- Admin configuration changes, for example updating a product attribute, or moving a product subcategory to another category
- Data import or export operations

Critical actions lead to cache invalidation and reindexing operations which significantly increase response time that can cause site outages.

## Affected products and versions

[All supported versions](../../../release/versions.md) of:

- Adobe Commerce on cloud infrastructure
- Adobe Commerce on-premises

## Additional information

- [Best practices for caching](https://experienceleague.adobe.com/en/docs/commerce-admin/systems/tools/cache-management#best-practices-for-caching)
- [Private content: Invalidate private content](https://developer.adobe.com/commerce/php/development/cache/page/private-content#invalidate-private-content)
- [Hardware recommendations: Caches](../../../performance/hardware.md#caches)
- [Advanced setup: Set up Redis](../../../performance/advanced-setup.md#set-up-redis)
