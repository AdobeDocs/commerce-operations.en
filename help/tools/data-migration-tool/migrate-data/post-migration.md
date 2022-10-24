---
title: Post-data migration steps
description: Learn what steps to take after using the [!DNL Data Migration Tool] to migrate data from Magento 1 to Magento 2.
---

# Post-data migration steps

After you have completed your migration and thoroughly tested your new Magento 2 site, perform the following tasks:

*  Put Magento 1 in maintenance mode and permanently stop all [Admin](https://glossary.magento.com/admin) activities

*  Start Magento 2 cron jobs

*  [Flush all Magento 2 cache types](../../../configuration/cli/manage-cache.md#clean-and-flush-cache-types)

*  [Reindex all Magento 2 indexers](../../../configuration/cli/manage-indexers.md#reindex)

*  Change DNS and load balancers to point to the Magento 2 production hardware
