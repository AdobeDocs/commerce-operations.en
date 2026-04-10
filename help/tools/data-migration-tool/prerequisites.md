---
title: '[!DNL Data Migration Tool] prerequisites'
description: Learn what you need to do before you start using the [!DNL Data Migration Tool] to transfer data between Magento 1 and Magento 2.
exl-id: 42dfa1ca-41ed-453d-a3e4-41ff36817ca3
topic: Commerce, Migration
---
# [!DNL Data Migration Tool] prerequisites

Before starting migration, make sure that the following requirements are met.

## Magento 2 system

*  Set up your Magento 2 system so that it meets the [system requirements](../../installation/system-requirements.md).

   Use a topology and design that at least matches your existing Magento 1 system.

*  [Install Magento 2](../../installation/overview.md).

## Cron

Do not start Magento 2 cron jobs.

## Database

*  After installation, back up or [dump](https://dev.mysql.com/doc/refman/8.0/en/mysqldump.html) your Magento 2 database as soon as possible. This allows you to restore the initial database state if migration is not successful.

*  Verify if the [!DNL Data Migration Tool] has network access to connect the Magento 1 and Magento 2 databases.

   Open ports in your firewall so that the Migration Tool can communicate with the databases.

*  Make sure your MySQL accounts have all the necessary privileges to access Magento databases.

  If Binary Logging is enabled for your Magento 1 database, set the global [`log_bin_trust_function_creators`](https://dev.mysql.com/doc/refman/5.7/en/server-system-variables.html#sysvar_log_bin_trust_function_creators) MySQL system variable to `1`, or grant the [SUPER privilege](https://dev.mysql.com/doc/refman/5.7/en/privileges-provided.html#priv_super) to your account.

*  We do not recommend creating new entities (products, categories, and attributes) in your Magento 2 store before migration because the [!DNL Data Migration Tool] overwrites such new entities with the old ones from Magento 1.

## Extensions

Migrate Magento 1 extension code to Magento 2.

To find the latest extensions versions, visit [!DNL [Commerce Marketplace]](https://commercemarketplace.adobe.com//) or contact your extension provider.

You can also use the [!DNL [Code Migration Tool]](https://github.com/magento-commerce/code-migration/blob/develop/README.md).
