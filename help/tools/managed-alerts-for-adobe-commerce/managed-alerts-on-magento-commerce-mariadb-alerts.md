---
title: 'Managed alerts on Adobe Commerce: MariaDB alerts'
description: This article provides troubleshooting steps when you receive MariaDB alerts for Adobe Commerce in [!DNL New Relic]. The MariaDB alerts monitor high query load as well as excessive Data Manipulation Language (DML) queries. Both can lead to a degraded user experience or even downtime. You can receive two kinds of alerts.
feature: Cache, Observability, Support, Tools and External Services
role: Admin
exl-id: d85af2e1-090c-4ad7-a898-3a3c4a5efe3b
---
# Managed alerts on Adobe Commerce: MariaDB alerts

This article provides troubleshooting steps when you receive MariaDB alerts for Adobe Commerce in [!DNL New Relic]. The MariaDB alerts monitor high query load as well as excessive Data Manipulation Language (DML) queries. Both can lead to a degraded user experience or even downtime. You can receive two kinds of alerts:

* DML Queries Warning
* DML Queries Critical

## Affected products and versions

Adobe Commerce on cloud infrastructure Pro plan architecture

## Issue

You will receive a managed alert in [!DNL New Relic] if you have signed up to [Managed alerts for Adobe Commerce](managed-alerts-for-magento-commerce.md) and one or more of the alert thresholds have been surpassed. These alerts were developed by Adobe to give customers a standard set using insights from Support and Engineering.

 **Do!**

* Abort any deployment scheduled until this alert is cleared.
* Put your site into maintenance mode immediately if your site is or becomes completely unresponsive. For steps, refer to [Enable or disable maintenance mode](https://experienceleague.adobe.com/en/docs/commerce-operations/installation-guide/tutorials/maintenance-mode) in the Commerce Installation Guide. Make sure to add your IP to the exempt IP address list to ensure that you are still able to access your site for troubleshooting. For steps, refer to [Maintain the list of exempt IP addresses](https://experienceleague.adobe.com/en/docs/commerce-operations/installation-guide/tutorials/maintenance-mode#maintain-the-list-of-exempt-ip-addresses).
* End any scripts such as imports that may be the cause of the alert if site performance is impacted.

 **Don't!**

* Run indexers or additional crons which may cause additional stress on MariaDB.
* Do any major administrative tasks (i.e., Commerce Admin, data imports / exports).
* Clear your cache.

## Solution

**DML Queries (queries that modify the database using UPDATE, INSERT, and DELETE)**

If you receive a DML Queries Critical alert, start at step one. If you receive a DML Queries Warning alert, start at step two.

1. Check if an Adobe Commerce support ticket exists. For steps, refer to our knowledge base [Track your support tickets](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/help-center-guide/magento-help-center-user-guide#track-support-case). Support may have received a [!DNL New Relic] threshold alert, created a ticket and started working on the issue. If no ticket exists, create one. The ticket should have the following information:
    * Contact Reason: select **[!UICONTROL New Relic MariaDB alert received]**.
    * Description of the alert.
    * [[!DNL New Relic] Incident link](https://docs.newrelic.com/docs/alerts-applied-intelligence/new-relic-alerts/alert-incidents/view-violation-event-details-incidents). This is included in your [Managed alerts for Adobe Commerce](managed-alerts-for-magento-commerce.md).
1. To identify the source of the issue, try to identify the DML queries:
    1. Review your database operations by using steps from New Relic [Databases page](https://docs.newrelic.com/docs/apm/apm-ui-pages/monitoring/databases-page-view-operations-throughput-response-time).
    1. Sort by **[!UICONTROL CALL COUNT]**, then **[!UICONTROL OPERATION]**. Review `INSERT`, `DELETE`, and `UPDATE` operations.
    1. Look for high AVG.
    1. Click through to find database operation callers. This will identify transactions using that query by time.
    1. Seek out either code optimizations, or operational optimizations:
          * Code optimizations: Look to optimize queries with bulk inserts / updates, minimizing index usage, or throttling code.
          * Operational optimizations: Offload resource intensive data modifications to lower traffic times.
          * Additional optimizations: Ensure that you are on the latest version of ECE-Tools. For steps, refer to [Update ece-tools version](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/dev-tools/ece-tools/update-package) in the Commerce on Cloud Guide.
