---
title: Realpath cache size
description: Learn how to optimize Adobe Commerce performance by updating the PHP readlpath cache configuration to use recommended settings.
role: Developer
feature: Best Practices
feature-set: Commerce
exl-id: 1cd48155-5d60-48b2-b07b-9b5784b81681
---
# Realpath cache configuration best practices

Realpath cache caches the real file system paths of filenames referenced instead of looking them up each time. Every time various file functions are performed or require a file and use a relative path, PHP has to look up where that file really exists.

To improve Commerce performance, use the following recommended settings to configure the `realpath_cache` settings in the `php.ini` file: 

- Set the cache size to 10 MB (`realpath cache_size=10M`)
- Set time to live (ttl) to 7200 seconds (`realpath_cache_ttl=7200`) 

For configuration instructions, see [How to set PHP options](../../../installation/prerequisites/php-settings.md#how-to-set-php-options).

## Affected products and versions

- Adobe Commerce on-premises, all versions 2.3.x and above
- Adobe Commerce on cloud infrastructure, all versions 2.3.x and above

## Potential performance impact

If the Realpath cache configuration values are too low or too high, it adds additional overhead during cache generation which slows performance.

## Additional information

- [On-premises: PHP settings](../../../performance/software.md#php-settings)
- On cloud infrastructure:
  - [Database best practices](database-on-cloud.md)
  - [Most common database issues in Magento Commerce Cloud](../maintenance/resolve-database-performance-issues.md)
- [Indexers "Update On Schedule" optimizes Magento performance](../maintenance/indexer-configuration.md)
