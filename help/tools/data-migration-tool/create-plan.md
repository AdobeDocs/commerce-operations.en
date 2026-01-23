---
title: Create a Data Migration Plan
description: Learn how to create a data migration plan for upgrading from Magento 1 to Magento 2. Plan and test your migration to avoid issues.
exl-id: a14237f3-c5fe-4f5f-86eb-ed4c39507bff
topic: Commerce, Migration
---
# Create a data migration plan

To migrate successfully and avoid issues, you need to plan thoroughly and test your migration.

## Before you start: Consider an upgrade

Migration is a good time to make serious changes and get your site ready for the next level of growth. Consider whether your new site needs to be designed with additional hardware or a more advanced topology with better caching tiers.

## Step 1: Review extensions on your current site

*  What extensions have you installed?

*  Have you identified if you need all these extensions on your new site? There might be old ones you can safely remove.

*  Have you determined if Magento 2 versions of your extensions exist? Visit [Commerce Marketplace](https://commercemarketplace.adobe.com/) to find the latest versions or contact your extension provider.

*  What database assets from your extensions do you want to migrate?

## Step 2: Build and prepare your store for migration

*  Set up a Magento 2 hardware system using a topology and design that at least matches your existing Magento 1 system

*  Install Magento 2 (with all modules of this release) and the [!DNL Data Migration Tool] on a system that meets the [system requirements](../../installation/system-requirements.md)

*  Customize the [!DNL Data Migration Tool] code to skip certain data (like CMS pages, sales rules) or convert customizations during migration. Read the [!DNL Data Migration Tool]'s [Technical Specification](technical-specification.md) to learn more about how migration works

## Step 3: Dry run

Before you start migration in the production environment, go through all the migration steps in your testing environment.

In such migration testing, follow these steps:

*  Copy your Magento 1 store to a staging server

*  Fully migrate the replicated Magento 1 store to Magento 2

*  Thoroughly test your new store

## Step 4: Start your migration

1. Make sure that the [!DNL Data Migration Tool] has a network access to connect to Magento 1 and Magento 2 databases. Open the corresponding ports in your firewall.

1. Stop all activities in the Magento 1 Admin Panel (except for Order Management), such as shipping, creating invoices and credit memos. The list of allowed activities can be extended by adjusting the settings of the Delta mode in the [!DNL Data Migration Tool].

   >[!NOTE]
   >
   >Do not resume these activities until your Magento 2 store goes live.

1. We recommend stopping all Magento 1 cron jobs.

   If some jobs must run during migration, ensure that they do not create or modify database entities in ways that Delta mode cannot process.

   For example, the `enterprise_salesarchive_archive_orders` cron job moves old orders to archive. Running this job during migration is safe because the Delta mode recognizes this job and properly processes the archived orders.

1. Use the [!DNL Data Migration Tool] to migrate settings and websites.

1. Copy your Magento 1 media files to Magento 2.

   Copy these files manually from the `magento1-root/media` directory to `magento2-root/pub/media`.

1. Use the [!DNL Data Migration Tool] to bulk copy your data from the Magento 1 database to the Magento 2 database.

   If some of your extensions have data you want to migrate, you might need to install these extensions adapted for Magento 2. In case the extensions have a different structure in the Magento 2 database, use the mapping files provided with the [!DNL Data Migration Tool].

1. Reindex all Magento 2 indexers. For details, see [Manage indexers](../../configuration/cli/manage-indexers.md) in the _Configuration guide_.

## Step 5: Make changes to the migrated data (if needed)

Sometimes you may want to have your Magento 2 store with different catalog structure, sales rules, and CMS pages after migration.

It is important to practice caution while working through manual data changes. Mistakes create errors in the incremental data migration step that follows.

For example, a product deleted from Magento 2: the one that has been bought on your live Magento 1 store and which is not available anymore in your Magento 2 store. Transferring data about such purchase might cause an error while running the [!DNL Data Migration Tool] in Delta mode.

## Step 6: Update incremental data

After migrating data, use Delta mode to capture and transfer incremental updates from Magento 1 (such as new orders, reviews, and customer profile changes) to Magento 2.

*  Start the incremental migration; updates run continually. You can stop transferring updates at any time by pressing `Ctrl+C`.

*  Test your Magento 2 site during this time to catch any issues as soon as possible. If you encounter issues, press `Ctrl+C` to stop incremental migration and start it again after you resolve the issues.

>[!NOTE]
>
>Volume check warnings may appear in case you conduct testing of your Magento 2 site and run the migration process at the same time. It happens because in Magento 2 you create entities that do not exist in Magento 1 instance.

## Step 7: Go live

Once your Magento 2 site is fully migrated and functioning normally, complete the cutover:

1. Put your Magento 1 system in maintenance mode (DOWNTIME STARTS).

1. Press Control+C in the migration tool command window to stop incremental updates.

1. Start your Magento 2 cron jobs.

1. In your Magento 2 system, reindex the stock indexer. For more information, see [Manage indexers](../../configuration/cli/manage-indexers.md) in the _Configuration guide_.

1. Using a tool of your choice, hit pages in your Magento 2 system to cache pages before customers who use your storefront.

1. Perform any final verification of your Magento 2 site.

1. Change DNS, load balancers, and so on to point to new production hardware (DOWNTIME ENDS).

1. Magento 2 store is now ready to use. You and your customers can resume all activities.
