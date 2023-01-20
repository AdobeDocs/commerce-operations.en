---
title: "How to use the [!DNL Observation for Adobe Commerce] nerdlet"
description: Learn how to use the [!DNL Observation for Adobe Commerce] nerdlet.
---
# How to use the [!DNL Observation for Adobe Commerce] nerdlet

## General approach to looking at issues

Check environment resources states:

* Examine the % of **[!UICONTROL Storage Free and MySQL % free storage by node]** frames.

  * Follow the links in the frame's header if you see low storage.

* Examine the % of **[!UICONTROL free system memory and Swap memory free in bytes]** frames.

  * If these display very low memory states, they can be contributors to problems.

* Examine the **[!UICONTROL Alerts during the timeframe]** frame.

  * Adobe Commerce on cloud infrastructure provides [!DNL Managed alerts]. You can click on the link in the header to see [!DNL Support Knowledge Base] articles that will help determine actions on your part for specific alerts.

* Examine the **[!UICONTROL CPU % by host]** frame: If it is exhibiting high CPU utilization, check the [!DNL Support Knowledge Base] article in the header for the frame. Also, check to ensure that database imports/exports or backups are not being done during peak traffic periods.

* Check the **[!UICONTROL Web Traffic volume compared to one week ago]** frame: If the traffic is much higher than the prior week during the same period, can it be explained (sale campaign or new products that have been marketed, for example)?
  * If an increase in traffic can't be explained, look at the Average Response time (milliseconds) for the production environment. Is the higher traffic contributing to a response time different than what is normal? Expand the timeframe to see if it is an anomaly.
  * Is the increase in traffic impacting web transactions? Check the **[!UICONTROL Response Code]** frame for errors. If the site is down, you can click on the `Site Down?` link in the frame header. The frame will identify any errors that are occurring and their frequency.
  * Did someone deploy changes to your website? The **[!UICONTROL Deployment Log Entries]** frame will indicate whether any deployments have been done during the issue timeframe. If the problem is immediately following deployment, it might be that deployment activities are adding additional load to the site (caches cleared, services restarted, etc.).
  * Did an upsize or downsize occur? If your site was upsized temporarily, it might have been returned to its original cluster size. If a request was made to increase the site capacity, an upsize might occur. Check the **[!UICONTROL Upsize/Downsize – vCPU view over the timeline]** frame. This frame will sometimes detect an outage on one particular node. If you see the size decrease, that may indicate an issue with one or more nodes.

* The **[!UICONTROL IP Frequency]** tab identifies request frequency from IP addresses that are made against the origin servers (meaning that the request could not be served from [!DNL Fastly] as 74 it wasn't cached).

  * For any [!DNL Fastly] related issues, check the **[!UICONTROL Fastly Cache]** frame, and select the Error facet to see the percentage of requests that are errors. They may indicate a backend issue if they coincide with non-web load.
  * If the load does not appear to be due to web traffic, there may be errors or a build-up of non-web requests, such as slow queries or [!DNL crons].

* Check the **[!UICONTROL Database Errors]** frame for errors that may coincide with the issue/problem timeline.
* Check the **[!UICONTROL Database mysql-slow.log]** frame to identify SQL statements that are occurring. `INSERT`, `UPDATE`, and `DELETE` commands may take a while if the query is not optimized. Even `SELECT` statements can be very inefficient if done against large tables.
* **[!UICONTROL PHP States]** and **[!UICONTROL PHP Errors]** frames will show potential issues with PHP. The **[!UICONTROL PHP States]** frame will show PHP process terminations, starts, and when the service reaches the ready state by node. The **[!UICONTROL PHP Errors]** frame may help isolate where the issue is with PHP, such as memory size, workers, or the number of servers.
* To see latency in transactions, the Transactions – Avg, Max, Min table can be sorted by column to show the longest-running transaction duration. An overloaded cluster will have latent durations in transactions, but it will also show anomalies that might pinpoint a problem with a method or [!DNL cron].
* The **[!UICONTROL Cron error]** frame will show [!DNL cron] locks, SQL errors that may be associated with [!DNL cron] logs, and shared staging [!DNL crons] that may be running on production environments when there is a dedicated staging environment.
* The [!UICONTROL ElasticSearch Errors] frame shows errors that may indicate major problems with [!DNL Elasticsearch] queries, data, or indices.
