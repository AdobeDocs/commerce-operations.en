---
title: 'Managed alerts for Adobe Commerce: memory warning alert'
description: This article provides troubleshooting steps for when you receive a memory warning alert for Adobe Commerce in New Relic. Immediate action is required to remedy the issue. The alert will look something like the following, depending on the alert notification channel you selected.
exl-id: bb5eb3f4-b162-4737-93d5-4037f2844bb1
feature: Cache, Marketing Tools, Observability, Support, Tools and External Services
role: Admin
---
# Managed alerts for Adobe Commerce: memory warning alert

This article provides troubleshooting steps for when you receive a memory warning alert for Adobe Commerce in New Relic. Immediate action is required to remedy the issue. The alert will look something like the following, depending on the alert notification channel you selected.

![memory warning](assets/memory-warning-magento-managed.png){width="500"}

## Affected products and versions

Adobe Commerce on cloud infrastructure Pro plan architecture

## Issue

You will receive an alert in New Relic if you have signed up to [Managed alerts for Adobe Commerce](/help/support-tools/managed-alerts-for-adobe-commerce/managed-alerts-for-magento-commerce.md) and one or more of the alert thresholds have been surpassed. These alerts were developed by Adobe Commerce to give customers a standard set using insights from Support and Engineering.

 <u>**Do!**</u>:

* It is recommended that you abort any deployment scheduled until this alert is cleared.
* Put your site into maintenance mode immediately if your site is or becomes completely unresponsive. For steps, refer to [Installation Guide > Enable or disable maintenance mode](https://experienceleague.adobe.com/en/docs/commerce-operations/installation-guide/tutorials/maintenance-mode) in our developer documentation. Make sure to add your IP to the exempt IP address list to ensure that you are still able to access your site for troubleshooting. For steps, refer to [Maintain the list of exempt IP addresses](https://experienceleague.adobe.com/en/docs/commerce-operations/installation-guide/tutorials/maintenance-mode#instgde-cli-maint-exempt) in our developer documentation.

<u>**Don't!**</u>:

* Launch additional marketing campaigns which may bring additional pageviews to your site.
* Run indexers or additional crons, which may cause additional stress on CPU or disk.
* Do any major administrative tasks (i.e., the Admin, data imports/exports).
* Clear your cache.

## Solution

Follow these steps to identify and troubleshoot the cause.

1. Use [New Relic APM's Infrastructure page](https://docs.newrelic.com/docs/infrastructure/infrastructure-ui-pages/infra-hosts-ui-page/) to identify top memory-intensive processes. For steps, refer to New Relic [Infrastructure monitoring Hosts page > Processes tab](https://docs.newrelic.com/docs/infrastructure/infrastructure-ui-pages/infra-hosts-ui-page/#processes). If services like Redis or MySQL are the top source of memory consumption, try the following:

    * Check that you are on the latest version. Newer versions can sometimes fix memory leaks. If you are not on the latest version, consider upgrading. For steps, refer to [Adobe Commerce on cloud infrastructure > Services > Change Services](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/configure/service/services-yaml.html) in our developer documentation.
    * If you still cannot identify the source of increased memory consumption, check for MySQL issues like long-running queries, Primary keys not defined, and duplicate indexes. For steps, refer to [Most Common database Issues in Adobe Commerce on cloud infrastructure](https://experienceleague.adobe.com/docs/commerce-operations/implementation-playbook/best-practices/maintenance/resolve-database-performance-issues.html) in our support knowledge base.
    * If there are no MySQL issues, check for PHP issues. Review running processes by running `ps aufx` in the CLI/Terminal. In the terminal output, you will see cron jobs and processes that are currently being executed. Check the output for the processes' execution time. If there is a cron with a long execution time, the cron may be hanging. Refer to [Slow performance, slow and long-running crons](/help/troubleshooting/miscellaneous/slow-performance-slow-and-long-running-crons.md) and [Cron job stuck in "running" status](/help/troubleshooting/miscellaneous/cron-job-is-stuck-in-running-status.md) in our support knowledge base for troubleshooting steps.

1. If you are still struggling to identify the source of the problem, use [New Relic APM's Transaction page](https://docs.newrelic.com/docs/apm/applications-menu/monitoring/transactions-page-find-specific-performance-problems) to identify transactions with performance issues:

    * Sort transactions by ascending Apdex scores. [Apdex](https://docs.newrelic.com/docs/apm/new-relic-apm/apdex/apdex-measure-user-satisfaction) refers to user satisfaction to the response time of your web applications and services. A [low Apdex score](/help/support-tools/managed-alerts-for-adobe-commerce/managed-alerts-for-magento-commerce-apdex-warning-alert.md) can indicate a bottleneck (a transaction with a higher response time). Usually, it is the database, Redis, or PHP. For steps, refer to New Relic [View transactions with highest Apdex dissatisfaction](https://docs.newrelic.com/docs/apm/new-relic-apm/apdex/view-your-apdex-score#apdex-dissat).
    * Sort transactions by highest throughput, the slowest average response time, most time-consuming, and other thresholds. For steps, refer to New Relic [Find specific performance problems](https://docs.newrelic.com/docs/apm/applications-menu/monitoring/transactions-page-find-specific-performance-problems). If you are still struggling to identify the issue, use New Relic APM's Infrastructure page.

1. If you cannot identify the cause of increased memory consumption, review recent trends to identify issues with recent code deployments or configuration changes (for example, new customer groups and large changes to the catalog). It is recommended that you review the past seven days of activity for any correlations in code deployments or changes.

1. If the above methods do not help you find the cause and/or solution within a reasonable time, request an upsize or place the site into maintenance mode if you have not already. For steps, refer to [How to request temp resize](/help/how-to/general/how-to-request-temporary-magento-upsize.md) in our support knowledge base and [Installation Guide > Enable or disable maintenance mode](https://experienceleague.adobe.com/en/docs/commerce-operations/installation-guide/tutorials/maintenance-mode) in our developer documentation.

1. If the upsize returns the site to normal operations, consider requesting a permanent upsize (contact your Adobe Account Team), or try to reproduce the problem in your Dedicated Staging by running a load test and optimize queries, or code that reduces pressure on services. Refer to [Adobe Commerce on cloud infrastructure  > Test Deployment > Load and stress testing](https://experienceleague.adobe.com/en/docs/commerce-cloud-service/user-guide/develop/test/staging-and-production#load-and-stress-testing) in our developer documentation.