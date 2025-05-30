---
title: 'Managed alerts on Adobe Commerce: [!DNL Redis] memory critical alert'
description: This article provides troubleshooting steps for when you receive a [!DNL Redis] memory critical alert for Adobe Commerce in [!DNL New Relic]. Immediate action is required to resolve the issue.
feature: Cache, Categories, Observability, Services, Support, Tools and External Services, Variables
role: Admin
exl-id: 1233889e-8c02-4ad6-b12c-683010b7bf35
---
# Managed alerts on Adobe Commerce: [!DNL Redis] memory critical alert

This article provides troubleshooting steps for when you receive a [!DNL Redis] memory critical alert for Adobe Commerce in [!DNL New Relic]. Immediate action is required to resolve the issue. The alert will look something like the following, depending on the alert notification channel you selected.

![new_relic_redis_memory_critical.png](../../assets/managed-alerts/new_relic_redis_memory_critical.png)

## Affected products and versions

All versions of Adobe Commerce on cloud infrastructure Pro plan architecture

## Issue

You will receive an alert in [!DNL New Relic] if you have signed up to [Managed alerts for Adobe Commerce](managed-alerts-for-magento-commerce.md) and one or more of the alert thresholds have been surpassed. These alerts were developed by Adobe to give merchants a standard set of alerts using insights from Support and Engineering.

 **<u>Do!</u>**

* Abort any deployment scheduled until this alert is cleared.
* Put your site into maintenance mode immediately if your site is or becomes completely unresponsive. For steps refer to [Enable or disable maintenance mode](https://experienceleague.adobe.com/en/docs/commerce-operations/installation-guide/tutorials/maintenance-mode) in the Commerce Installation Guide. Make sure to add your IP to the exempt IP address list to ensure that you are still able to access your site for troubleshooting. For steps, refer to [Maintain the list of exempt IP addresses](https://experienceleague.adobe.com/en/docs/commerce-operations/installation-guide/tutorials/maintenance-mode#maintain-the-list-of-exempt-ip-addresses) in the Commerce Installation Guide.

 **<u>Don't!</u>**

* Launch additional marketing campaigns which may bring additional pageviews to your site.
* Run indexers or additional crons which may cause additional stress on CPU or disk.
* Do any major administrative tasks (i.e., major action in the Commerce Admin such as data imports / exports, flushing media, saving categories with a great number of assigned products, and mass updates).
* Clear your cache.

## Solution

Follow these steps to identify and troubleshoot the cause.

 **Because this is a critical alert, it is highly recommended you complete Step 1 before you try to troubleshoot the issue (Step 2 onwards).**

1. Check if an Adobe Commerce support ticket exists. For steps, refer to [Track your support tickets](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/help-center-guide/magento-help-center-user-guide#track-support-case) in the Commerce Support Knowledge Base. Support may have already received a [!DNL New Relic] threshold alert, created a ticket and started working on the issue. If no ticket exists, create one. The ticket should have the following information:

    * Contact Reason: select **[!UICONTROL New Relic CRITICAL alert received]**.
    * Description of the alert.
    * [[!DNL New Relic] incident link](https://docs.newrelic.com/docs/alerts-applied-intelligence/new-relic-alerts/alert-incidents/view-violation-event-details-incidents/). This is included in your [Managed Alerts for Adobe Commerce](managed-alerts-for-magento-commerce.md).

1. If no support ticket exists, check if [!DNL Redis] Used Memory is increasing or decreasing by going to [one.newrelic.com](https://login.newrelic.com) > **[!UICONTROL Infrastructure]** > **[!UICONTROL Third-party services]** page, select the [!DNL Redis] dashboard. If it is stable or increasing, [submit a support ticket](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/help-center-guide/magento-help-center-user-guide#support-case) to have your cluster upsized, or increase the `maxmemory` limit to the next level.
1. If you cannot identify the cause of increased [!DNL Redis] memory consumption, review recent trends to identify issues with recent code deployments or configuration changes (for example, new customer groups and large changes to the catalog). It is recommended that you review the past seven days of activity for any correlations in code deployments or changes.
1. Check for misbehaving third party extensions:

    * Try to find a correlation with recently installed third party extensions and the time the issue started.
    * Review extensions which potentially could affect the Adobe Commerce cache and cause the cache to grow quickly. For example, custom layout blocks, overriding cache functionality, and storing large amounts of data in cache.

1. If there is no evidence of misbehaving extensions, [Install latest patches to fix [!DNL Redis] issues for Adobe Commerce on cloud infrastructure](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/troubleshooting/miscellaneous/install-latest-patches-to-fix-magento-redis-issues).
1. If the above steps do not help you identify or troubleshoot the source of the issue, consider enabling L2 cache to reduce network traffic between the app and [!DNL Redis]. For general information on what is L2 cache, refer to [L2 caching in the Adobe Commerce application](https://experienceleague.adobe.com/en/docs/commerce-operations/configuration-guide/cache/level-two-cache) in the Commerce Configuration Guide. To enable L2 cache for cloud infrastructure, try the following:

    * Upgrade ECE Tools if below 2002.1.2 version.
    * Configure L2 Cache by using [Use REDIS\_BACKEND variable](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/configure/env/stage/variables-deploy#redis_backend) and updating the `.magento.env.yaml` file:

   ```yaml
   stage:
       deploy:
           REDIS_BACKEND: '\Magento\Framework\Cache\Backend\RemoteSynchronizedCache'
   ```
