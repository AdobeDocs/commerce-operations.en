---
title: Best Practice for OPcache memory size
description: Describes how to avoid performance degradation by specific settings of OPcache memory consumption on Adobe Commerce projects.
role: Developer
feature: Best Practices
feature-set: Commerce
---

# Best practice for OPcache memory size in Adobe Commerce

For Adobe Commerce on cloud infrastructure Pro plan architecture 2.3.x, it is recommended to set `opcache.memory_consumption` to at least 2 GB, to avoid performance degradation.

## Affected products and versions

* Adobe Commerce on cloud infrastructure Pro plan architecture 2.3.x
* PHP 7.0 and later

[All supported versions](../../release/versions.html) of:

* Adobe Commerce on-premises
* Adobe Commerce on cloud infrastructure

## Configure memory

Allocate at least **2GB** of memory for the [OPcache PHP module](https://www.php.net/manual/en/book.opcache.php). The OPcache module is configured in the `php.ini` file. To allocate 2048 MB of memory, set `opcache.memory_consumption = 2048`. 


## Related Articles

For more details see:

* [Performance Best Practices - PHP Settings](../../../performance/software.md#php-settings) 
* [Configure PHP options](https://devdocs.magento.com/cloud/project/project-conf-files_magento-app.html#customize-phpini-settings) in our developer documentation.

Best Practices for improving Adobe Commerce on cloud infrastructure site performance:

* [Database best practices for Adobe Commerce on cloud infrastructure](https://support.magento.com/hc/en-us/articles/360041997312-Database-best-practices-for-Magento-Commerce-Cloud)
* [Most common database issues in Adobe Commerce on cloud infrastructure](../maintenance/)
* [Indexers "Update On Schedule" optimizes Adobe Commerce performance](https://support.magento.com/hc/en-us/articles/360040227191-Indexers-Update-On-Schedule-optimizes-Magento-performance)
