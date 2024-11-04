---
title: Scheduling Admin updates on production sites
description: Learn best practices for scheduling critical updates to Adobe Commerce to prevent slow performance and outages.
role: Admin, User
feature: Best Practices
exl-id: 41c0cb87-3371-48a7-9913-264f3eea8d8d
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
- [Private content: Invalidate private content](https://developer.adobe.com/commerce/php/development/cache/page/private-content/#invalidate-private-content)
- [Hardware recommendations: Caches](../../../performance/hardware.md#caches)
- [Advanced setup: Set up Redis](../../../performance/advanced-setup.md#set-up-redis)
