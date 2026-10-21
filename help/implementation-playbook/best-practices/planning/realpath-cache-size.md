---
title: Realpath cache size
description: Learn how to optimize Adobe Commerce performance by updating the PHP readlpath cache configuration to use recommended settings.
role: Developer
feature: Best Practices, Cache
exl-id: 1cd48155-5d60-48b2-b07b-9b5784b81681
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: cdfd3bc1-dc23-5cf0-b965-d3c0c55cde67
    internal-label: Best Practices
  - id: e7dae43f-215c-4cdf-90d3-c5a461a6e669
    internal-label: Admin tools and workspace
subfeature_v2:
  - id: b673188e-f9fa-492a-b470-c8f949bf7827
    internal-label: Cache
role_v2:
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
---
# Realpath cache configuration best practices

Realpath cache caches the real file system paths of filenames referenced instead of looking them up each time. Every time various file functions are performed or require a file and use a relative path, PHP has to look up where that file really exists.

To improve Commerce performance, use the following recommended settings to configure the `realpath_cache` settings in the `php.ini` file: 

- Set the cache size to 10 MB (`realpath_cache_size=10M`)
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
