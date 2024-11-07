---
title: Best Practice for OPcache memory size
description: Describes how to avoid performance degradation by specific settings of OPcache memory consumption on Adobe Commerce projects.
role: Developer
feature: Best Practices
exl-id: d1e10068-e4e8-4e75-9f30-f3a89a08d791
---
# Best practice for OPcache memory size in Adobe Commerce

For Adobe Commerce on cloud infrastructure Pro plan architecture 2.3.x, it is recommended to set `opcache.memory_consumption` to at least 2 GB, to avoid performance degradation.

## Affected products and versions

* Adobe Commerce on cloud infrastructure Pro plan architecture 2.3.x
* PHP 7.0 and later

## Configure memory

Allocate at least **2GB** of memory for the [OPcache PHP module](https://www.php.net/manual/en/book.opcache.php). The OPcache module is configured in the `php.ini` file. To allocate 2048 MB of memory, set `opcache.memory_consumption = 2048`. 

## Additional information

* [Performance Best Practices - PHP Settings](../../../performance/software.md#php-settings) 
* [Configure PHP options](https://experienceleague.adobe.com/en/docs/commerce-cloud-service/user-guide/configure/app/configure-app-yaml)
* [Database best practices for Adobe Commerce on cloud infrastructure](database-on-cloud.md)
* [Most common database issues in Adobe Commerce on cloud infrastructure](../maintenance/resolve-database-performance-issues.md)
* [Indexers "Update On Schedule" optimizes Adobe Commerce performance](../maintenance/indexer-configuration.md)
