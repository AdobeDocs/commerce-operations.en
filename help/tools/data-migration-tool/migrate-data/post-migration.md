---
title: Post-data migration steps
description: Learn what steps to take after using the [!DNL Data Migration Tool] to migrate data from Magento 1 to Magento 2.
exl-id: 00171c41-ccea-4ebe-8958-becb9aa09973
topic: Commerce, Migration
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
---
# Post-data migration steps

After you have completed your migration and thoroughly tested your new Magento 2 site, perform the following tasks:

*  Put Magento 1 in maintenance mode and permanently stop all Admin activities

*  Start Magento 2 cron jobs

*  [Flush all Magento 2 cache types](../../../configuration/cli/manage-cache.md#clean-and-flush-cache-types)

*  [Reindex all Magento 2 indexers](../../../configuration/cli/manage-indexers.md#reindex)

*  Change DNS and load balancers to point to the Magento 2 production hardware
