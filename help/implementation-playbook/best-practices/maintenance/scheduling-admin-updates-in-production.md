---
title: Scheduling Admin updates on production sites
description: Maintain and optimize site performance by following best practices for configure indexers
role: Admin, User
feature: Best Practices
feature-set: Commerce
---

# Best practices for scheduling Admin updates on production sites

Schedule critical updates and operations on your Adobe Commerce sites during off-peak hours to prevent slow performance and outages on production sites.

Examples of critical actions:

- Admin configuration changes, for example updating a product attribute, or moving a product subcategory to another category
- Data import or export operations

Critical actions lead to cache invalidation and reindexing operations which significantly increases response time and can cause site outages.

## Affected products and versions

[All supported versions](../../../release/versions.md) of:

- Adobe Commerce on cloud infrastructure
- Adobe Commerce on-premises


## Additional information

- [Best practices for caching](https://docs.magento.com/user-guide/system/cache-management.html#best-practices-for-caching)
- [Private content: Invalidate private content](https://developer.adobe.com/commerce/php/development/cache/page/private-content/#invalidate-private-content)
- [Hardware recommendations: Caches](../../../performance/hardware.md#caches)
- [Advanced setup: Set up Redis](../../../performance/advanced-setup.md#set-up-redis)
