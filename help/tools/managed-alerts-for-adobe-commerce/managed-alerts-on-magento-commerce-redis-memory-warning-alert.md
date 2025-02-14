---
title: 'Managed alerts on Adobe Commerce: Redis memory warning alert'
description: 'This article provides troubleshooting steps for when you receive a Redis warning alert for Adobe Commerce in New Relic. Immediate action is 
feature: Categories, Marketing Tools, Observability, Services, Support, Tools and External Services, Variables
role: Admin
---
# Managed alerts on Adobe Commerce: Redis memory warning alert

This article provides troubleshooting steps for when you receive a Redis warning alert for Adobe Commerce in New Relic. Immediate action is required to resolve the issue. The alert will look something like the following, depending on the alert notification channel you selected:

![new_relic_redis_memory_warning.png](../../assets/managed-alerts/new_relic_redis_memory_warning.png)

## Affected products and versions

All versions of Adobe Commerce on cloud infrastructure Pro plan architecture.

## Issue

You will receive an alert in New Relic if you have signed up to [Managed alerts for Adobe Commerce](/managed-alerts-for-magento-commerce.md) and one or more of the alert thresholds have been surpassed. These alerts were developed by Adobe to give merchants a standard set of alerts using insights from Support and Engineering.

 **<u>Do!</u>**

* It is recommended you abort any deployment scheduled until this alert is cleared.
* If your site is or becomes completely unresponsive, immediately put your site into maintenance mode. For steps, refer to [Enable or disable maintenance mode](/docs/commerce-operations/installation-guide/tutorials/maintenance-mode) in the Commerce Installation Guide.
* Make sure to add your IP to the exempt IP address list to ensure that you are still able to access your site for troubleshooting. For steps, refer to [Maintain the list of exempt IP addresses](/docs/commerce-operations/installation-guide/tutorials/maintenance-mode.html#maintain-the-list-of-exempt-ip-addresses) in the Commerce Installation Guide.

 **<u>Don't!</u>**

* Launch additional marketing campaigns which may bring additional pageviews to your site.
* Run indexers or additional crons which may cause additional stress on CPU or disk.
* Do any major administrative tasks (i.e., major action in the Commerce Admin such as data imports/exports, flushing media, saving categories with a great number of assigned products, and mass updates).
* Clear your cache.

## Solution

Follow these steps to identify and troubleshoot the cause.

1. Check if Redis Used Memory is increasing or decreasing by going to [one.newrelic.com](https://login.newrelic.com/login) > **Infrastructure** > **Third-party services** page, select the Redis dashboard. If it is stable or increasing, [submit a support ticket](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/help-center-guide/magento-help-center-user-guide#support-case) to have your cluster upsized, or increase the `maxmemory` limit to the next level.
1. If you cannot identify the cause of increased Redis memory consumption, review recent trends to identify issues with recent code deployments or configuration changes (for example, new customer groups and large changes to the catalog). It is recommended that you review the past seven days of activity for any correlations in code deployments or changes.
1. Check for misbehaving third party extensions:
    * Try to find a correlation with recently installed third party extensions and the time the issue started.
    * Review extensions which potentially could affect the Adobe Commerce cache and cause the cache to grow quickly. For example, custom layout blocks, overriding cache functionality, and storing large amounts of data in cache.
1. If there is no evidence of misbehaving extensions, [Install latest patches to fix Redis issues for Adobe Commerce on cloud infrastructure](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/troubleshooting/miscellaneous/install-latest-patches-to-fix-magento-redis-issues). If the above steps do not help you identify or troubleshoot the source of the issue, consider enabling L2 cache to reduce network traffic between the app and Redis. For general information on what is L2 cache, refer to [L2 caching in the Adobe Commerce application](/docs/commerce-operations/configuration-guide/cache/level-two-cache.html) in the Commerce Configuration Guide. To enable L2 cache for cloud infrastructure, try the following:
    * Upgrade ECE Tools if below 2002.1.2 version.
    * Configure L2 Cache by using [Use REDIS\_BACKEND variable](/docs/commerce-cloud-service/user-guide/configure/env/stage/variables-deploy.html#redis_backend) and updating `.magento.env.yaml` file:

    ```yaml
    stage:
       deploy:
           REDIS_BACKEND: '\Magento\Framework\Cache\Backend\RemoteSynchronizedCache'
    ```
