---
title: Data migration best practices
description: Follow these data migration best practices to ensure a successful upgrade from Magento 1 to Magento 2.
exl-id: 0cd51987-a514-434d-b21e-2739ada2ce85
---
# Data migration best practices

This section provides best recommendations to accelerate and simplify your migration and guidance about how much time it may take.

*  **Use a copy of the database from a Magento 1 instance** when performing migration testing. Do not use the production instance of your Magento 1 store database.

*  **Remove outdated and redundant data** from your Magento 1 database before migration.

  Such data may include logs, order quotes, recently viewed or compared products, visitors, event-specific categories, and promotional rules.

*  **Follow the [general rules for successful migration](migrate-data/overview.md#migration-overview)**.

*  To boost performance, **enable the `direct_document_copy` option** in your `config.xml` file:

   ```xml
   <direct_document_copy>1</direct_document_copy>
   ```

>[!NOTE]
>
>Both Magento 1 and Magento 2 databases must be located on the same MySQL server and the database account must have access to both databases.

## Benchmarking estimates

Adobe has tested data migration on the following system:

*  Virtual Box VM, CentOS 6, 2.5 GB RAM, CPU 1 core 2.6 GHz
*  Database with 177,000 products, 355,000 orders, and 214,000 customers

## Performance results

*  Settings migration time: ~10 minutes
*  Data migration time: ~9 hours (all data except URL rewrites, ~85% of total data)
*  Site downtime estimate: a few minutes to reindex and change DNS settings. Additional time required to warm up the page cache.
