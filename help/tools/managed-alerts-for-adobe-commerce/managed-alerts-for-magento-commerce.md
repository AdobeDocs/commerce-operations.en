---
title: Managed alerts for Adobe Commerce
description: If you are an Adobe Commerce on cloud infrastructure Pro plan architecture customer, you can use managed alerts to understand the health of your site. If you are an Adobe Commerce on cloud infrastructure Starter plan architecture customer, you will only receive alerts for the [!DNL Apdex] and error rate conditions.
feature: Observability, Support, Tools and External Services
role: Admin
---

# Managed alerts for Adobe Commerce


We've set up key dashboards and alerts to aid you in understanding when your site is reaching critical storage and [!DNL Apdex] levels (users' satisfaction with applications and services response time). This can help you take action before you notice slow response times or an outage. You will be able to troubleshoot the alerts with the articles listed below. Before you can use the alerts, first set up notification channels. Please refer to [[!DNL New Relic] Configure Notification Channels](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/monitor/new-relic/new-relic-service) in the Commerce on Cloud Guide.

>[!NOTE]
>
>If managed alerts for the Adobe Commerce alert policy is not available, it could be due to this account being newly created or [!DNL New Relic] having been recently configured. A process is run every Tuesday to add the alert policy to those accounts. The alert policy should be available to you the day after the next process is run. If the policy is still missing, [submit an Adobe Commerce support request](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/help-center-guide/magento-help-center-user-guide#support-case) and include your project ID.

See below in the table for links to the KB articles providing troubleshooting steps for these alerts:

* Managed alerts for Adobe Commerce: CPU warning alert
* Managed alerts for Adobe Commerce: CPU critical alert
* Managed alerts for Adobe Commerce: memory warning alert
* Managed alerts for Adobe Commerce: memory critical alert
* Managed alerts for Adobe Commerce: [!DNL Apdex] warning alert
* Managed alerts for Adobe Commerce: [!DNL Apdex] critical alert
* Managed alerts for Adobe Commerce: disk warning alert
* Managed alerts for Adobe Commerce: disk critical alert
* Managed alerts on Adobe Commerce: MariaDB alerts
* Managed alerts on Adobe Commerce: [!DNL Redis] memory warning alert
* Managed alerts on Adobe Commerce: [!DNL Redis] memory critical alert

>[!NOTE]
>
>The set thresholds for both Warning Alerts and Critical Alerts are based on research we are doing using historical performance data across our customer base, and represents the latest insights from Adobe Commerce's Support and Engineering teams. Please note that these thresholds are subject to change based on latest, ongoing analysis. The typical alert flow is to receive alerts lower to higher in terms of seriousness. So you will likely receive a Warning alert before you receive a Critical alert. Refer to the links to articles for troubleshooting steps.

| Severity | CPU | Memory | Disk | [!DNL Apdex] | MariaDB | [!DNL Redis] Memory | Troubleshooting Article |
|----------|-----|--------|------|-------|---------|--------------|-------------------------|
| Warning  | ✅  |        |      |       |         |              | [Managed alerts for Adobe Commerce: CPU warning alert](managed-alerts-for-magento-commerce-cpu-warning-alert.md)|
| Critical | ✅  |        |      |       |         |              | [Managed alerts for Adobe Commerce: CPU critical alert](managed-alerts-on-magento-commerce-cpu-critical-alert.md)|
| Warning  |     | ✅     |      |       |         |              | [Managed alerts for Adobe Commerce: memory warning alert](managed-alerts-for-magento-commerce-memory-warning-alert.md)|
| Critical |     | ✅     |      |       |         |              | [Managed alerts for Adobe Commerce: memory critical alert](managed-alerts-on-magento-commerce-memory-critical-alert.md)|
| Warning  |     |        |      | ✅    |         |              | [Managed alerts for Adobe Commerce: [!DNL Apdex] warning alert](managed-alerts-for-magento-commerce-apdex-warning-alert.md)|
| Critical |     |        |      | ✅    |         |              | [Managed alerts for Adobe Commerce: [!DNL Apdex] critical alert](managed-alerts-for-magento-commerce-apdex-critical-alert.md)|
| Warning  |     |        | ✅   |       |         |              | [Managed alerts for Adobe Commerce: disk warning alert](managed-alerts-for-magento-commerce-disk-warning-alert.md)|
| Critical |     |        | ✅   |       |         |              | [Managed alerts for Adobe Commerce: disk critical alert](managed-alerts-for-magento-commerce-disk-critical-alert.md)|
| Warning & Critical |     |        |      |       | ✅       |              | [Managed alerts on Adobe Commerce: MariaDB alerts](managed-alerts-on-magento-commerce-mariadb-alerts.md)|
| Warning  |     |        |      |       |         | ✅          | [Managed alerts on Adobe Commerce: [!DNL Redis] memory warning alert](managed-alerts-on-magento-commerce-redis-memory-warning-alert.md)|
| Critical |     |        |      |       |         | ✅          | [Managed alerts on Adobe Commerce: [!DNL Redis] memory critical alert](managed-alerts-on-magento-commerce-redis-memory-critical-alert.md)|
