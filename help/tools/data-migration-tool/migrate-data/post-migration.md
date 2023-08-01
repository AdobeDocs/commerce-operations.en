---
title: Post-data migration steps
description: Learn what steps to take after using the [!DNL Data Migration Tool] to migrate data from Magento 1 to Magento 2.
exl-id: 00171c41-ccea-4ebe-8958-becb9aa09973
topic: Commerce, Migration
---
# Post-data migration steps

After you have completed your migration and thoroughly tested your new Magento 2 site, perform the following tasks:

*  Put Magento 1 in maintenance mode and permanently stop all Admin activities

*  Start Magento 2 cron jobs

*  [Flush all Magento 2 cache types](../../../configuration/cli/manage-cache.md#clean-and-flush-cache-types)

*  [Reindex all Magento 2 indexers](../../../configuration/cli/manage-indexers.md#reindex)

*  Change DNS and load balancers to point to the Magento 2 production hardware
