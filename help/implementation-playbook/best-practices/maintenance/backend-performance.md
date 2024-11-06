---
title: Optimize backend performance
description: Learn about optimizing the backend performance of Adobe Commerce sites.
badge: label="Contributed by objectsource" type="Informative" url="https://objectsource.co.uk/" tooltip="objectsource"
role: Admin, User, Developer
feature: Best Practices
exl-id: 18bc97a0-3d34-4d48-a3e2-84af2da7d0d3
---
# Best practices for optimizing backend performance

This topic outlines best practices for investigating and optimizing the backend performance of Adobe Commerce sites with a focus on database optimization and testing. Developers can use this information to investigate the unique context of each Commerce project and identify opportunities to optimize backend configuration and operations to improve site performance.

>[!NOTE]
>
>Recommendations and examples are inspired by processes that objectsource follows in real-world client engagements to deliver high-performing Adobe Commerce sites at scale.

## Affected products and versions

[All supported versions](../../../release/versions.md) of:

- Adobe Commerce on cloud infrastructure
- Adobe Commerce on-premises

## Optimize the database for improved performance

Database optimization is a sure-fire way to enhance the user experience and increase sales. When you optimize the database, the backbone of a Commerce site, you can prevent slow website performance and eliminate lengthy load times that create friction for customers.

### Stress testing

High-traffic periods such as Black Friday demand that Commerce sites handle massive traffic volumes. In preparation for such events, stress testing is essential to understand how a site operates under exponential load increases.

One tool you can use for stress testing is GTmetrix. Gauge site readiness for load increases by configuring GTmetrix to replicate and multiply normal visitor behavior and actions. Then, run tests to identify and resolve issues that might affect performance and site availability during major shopping events.

Learn more about preparing Commerce projects for high-traffic periods:

- [Holiday Readiness](https://experienceleague.adobe.com/docs/events/commerce-intelligence-webinar-recordings/2021/holiday-readiness.html)
- [Holiday Shopping Analysis](https://experienceleague.adobe.com/docs/commerce-business-intelligence/mbi/analyze/performance/holiday-season-perf.html)
- [Surge Capacity Increase](https://experienceleague.adobe.com/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/2021-holiday-surge-capacity-requests-for-magento-commerce-cloud.html)

### Load testing

You can also use GTmetrix or a similar tool to load test Commerce projects. As a precursor to stress testing, load testing is an essential practice for large-scale, high-traffic sites. Prevent unexpected site outages, frustrated customers, and financial losses by anticipating and mitigating issues that affect site performance under peak loads.

Use GTmetrix to simulate heavy traffic and analyze site performance to get clear information about site capacity. This analysis helps identify and address bottlenecks and identify opportunities to optimize, ensuring that Commerce sites can operate effectively under increased load.

Learn more about testing Adobe Commerce projects:

- [Testing guidance](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/test/guidance.html)  (cloud infrastructure)
- [Application testing](https://developer.adobe.com/commerce/testing/guide/)

### Identify and resolve performance issues

Address performance issues by using various tools like New Relic and Observation for Adobe Commerce to detect bottlenecks and optimize Commerce sites effectively. [New Relic](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/monitor/new-relic/new-relic-service.html) is included with Adobe Commerce on cloud infrastructure, and [Observation for Adobe Commerce](/help/tools/observation-for-adobe-commerce/intro.md) is included for both cloud and on-premises deployments.

Use these tools to analyze site performance and identify performance issues related to:

- CPU-intensive features
- Cache management configuration for queries and backend operations
- Third-party API calls
- Cron scheduling

For example, you can closely examine transactions with a focus on product detail and category pages. Identify time-consuming processes that can be optimized to improve performance. In one client engagement, objectsource noticed a performance issue on a product detail page and found an API call that was consuming 3.5% of the performance time. Based on this result, they examined the hierarchy of code execution to pinpoint and fix the issue causing the bottleneck.

Learn more about managing site performance:

- [Performance monitoring](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/monitor/performance.html) (cloud infrastructure)
- [Configuration best practices](/help/performance/configuration.md)
- [Observation for Adobe Commerce](/help/tools/observation-for-adobe-commerce/intro.md)

### Optimize MySQL performance

Addressing MySQL performance issues by implementing database clustering and query optimization is an effective approach to improve performance before and during high-traffic periods like Black Friday.

#### Implementing database clustering

High-traffic websites often face database bottlenecks, primarily caused by reliance on a single MySQL server. You can address these bottlenecks by implementing database clustering, a distributed architecture that improves performance and ensures high availability.

Database clustering minimizes the impact of database-related issues during peak traffic periods by enabling multiple web nodes to connect to multiple MySQL servers. Use tools like Galera Cluster to set up database clustering for Commerce sites. Galera Cluster is included with [Adobe Commerce projects deployed on cloud infrastructure](https://experienceleague.adobe.com/docs/commerce-operations/implementation-playbook/infrastructure/cloud/technology.html).

#### Optimizing MySQL queries

Typically, the infrastructure for most Adobe Commerce sites consists of multiple web nodes connected to a single MySQL server.

In this setup, each front-end web node connects to the Galera Cluster, which allows for multiple MySQL servers. Increasing the number of front-end web nodes can improve application performance, but the single MySQL server remains a bottleneck.

To optimize MySQL server performance and minimize bottlenecks, it is essential to identify and reduce unnecessary queries. For example, if you're sending 1,000 queries per second, but only 200 are necessary, optimizing, and decreasing the query count can significantly improve performance.

Learn more about configuring and optimizing MySQL:

- [Best Practices for database configuration](https://experienceleague.adobe.com/docs/commerce-operations/implementation-playbook/best-practices/planning/database-on-cloud.html)
- [Slow replication for Galera DB replication](https://experienceleague.adobe.com/docs/commerce-learn/tutorials/backend-development/galera-db-slow-replication.html)
- [General MySQL guidelines](/help/installation/prerequisites/database/mysql.md)
- [MySQL query caching](https://experienceleague.adobe.com/docs/commerce-learn/tutorials/backend-development/mysql-query-cache.html)

## Manage cron jobs effectively: performance and timing

Cron jobs play a vital role in processing site background tasks, such as report generation and product indexing. However, cron job optimization requires carefully considering their impact on overall performance. Developers must evaluate the scheduling frequency and determine the optimal timing based on specific requirements.

Balancing performance and convenience, it is often advisable to schedule cron jobs during low-traffic periods. However, dealing with clients in different time zones can present challenges, demanding a thoughtful approach to ensure a harmonious experience across multiple geographies.

If you are responsible for optimizing cron performance and timing, review the current cron configuration from the Commerce Admin, and learn about setting up and configuring cron jobs for Commerce projects.

Also, you can use Observation for Adobe Commerce to view cron-related performance indicators. This tool combines log data from multiple sources to help you better manage Adobe Commerce site performance and diagnose issues.

Learn more about Adobe Commerce cron implementation:

- [Cron (scheduled tasks)](https://experienceleague.adobe.com/docs/commerce-admin/systems/tools/cron.html) in the _Commerce Admin Systems User Guide_
- [Application configuration – crons property](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/configure/app/properties/crons-property.html) (cloud infrastructure)
- [Configure and run crons](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/configure/app/properties/crons-property.html) (on premises)
- [Observation for Adobe Commerce](https://experienceleague.adobe.com/docs/commerce-operations/tools/observation-for-adobe-commerce/intro.html) (See the [!UICONTROL Cron] and [!UICONTROL MySQL] tabs.)
