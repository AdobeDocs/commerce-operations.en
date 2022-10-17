---
title: Realpath cache size
description: Learn how to properly set realpath cache size for Adobe Commerce. 
role: Developer
feature: Best Practices
---

# Realpath cache size best practices

It is recommended that you set realpath cache size to 10 MB for Adobe Commerce on-premises 2.3.x and Adobe Commerce on cloud infrastructure 2.3.x users. Realpath cache caches the real file system paths of filenames referenced instead of looking them up each time. Every time various file functions are performed or require a file and use a relative path, PHP has to look up where that file really exists.

## Affected products and versions

* Adobe Commerce on-premises, all versions 2.3.x and above
* Adobe Commerce on cloud infrastructure, all versions 2.3.x and above

## Best Practice

If realpath cache size is too low or high, it adds additional overhead during cache generation. Increase realpath_cache_size php setting in the php.ini file. Adobe Commerce best practice states that the allocated memory for realpath cache needs to be **10 MB**. Refer to [Configure PHP Options](https://devdocs.magento.com/cloud/project/project-conf-files_magento-app.html#customize-phpini-settings) in our developer documentation.

## Additional information

Refer to [PHP settings](https://devdocs.magento.com/guides/v2.3/performance-best-practices/software.html#php-settings) in our developer documentation.

Best practices to improve Adobe Commerce on cloud infrastructure site performance in our Support Knowledge Base:

* [Database best practices for Magento Commerce Cloud](https://support.magento.com/hc/en-us/articles/360041997312-Database-best-practices-for-Magento-Commerce-Cloud)
* [Most common database issues in Magento Commerce Cloud](https://support.magento.com/hc/en-us/articles/360041739651-Most-common-database-issues-in-Magento-Commerce-Cloud)
* [Indexers "Update On Schedule" optimizes Magento performance](https://support.magento.com/hc/en-us/articles/360040227191-Indexers-Update-On-Schedule-optimizes-Magento-performance-)
