---
title: "The [!UICONTROL Summary] tab"
description: Learn about the [!UICONTROL summary] tab of [!DNL Observation for Adobe Commerce].
---

# The [!UICONTROL Summary] tab

The **[!UICONTROL Summary]** tab of Observation for Adobe Commerce is intended to quickly see some of the problems experienced by sites to help you auto-resolve or identify potential root causes of site  problems. The additional tabs provide deeper level information on component services, database, infrastructure, and process states.

## [!UICONTROL Transaction Overview]

![Transaction Overview](../../assets/tools/transaction-overview.jpg)

[What is a transacrion?](https://docs.newrelic.com/docs/apm/transactions/intro-transactions/transactions-new-relic-apm/#:%7E:text=transactions%20are%20reported.-,What%20is%20a%20transaction%3F,work%20in%20a%20software%20application.&text=For%20APM%2C%20it%20will%20often,when%20the%20response%20is%20sent)

“At [!DNL New Relic], a transaction is defined as one logical unit of work in a software application. Specifically, it refers to the function calls and method calls that make up that unit of work…it will often refer to a web transaction, which represents activity that happens from when the application receives a web request to when the response is sent.”

**Types of transactions:**

**Web:** Transactions are initiated with an HTTP request. For most organizations, these represent customer-centric interactions and thus are the most important transactions to monitor.

**Non-web:** Non-web transactions are not initiated with a web request. They can include non-web worker processes, background processes, scripts, message queue activity, and other tasks.

Looking at the Transaction overview frame, there were almost 53,000 transactions with an average APDEX score of .76 and 95% of those transactions happened in under 2.313 seconds. This would be a frame where a tighter time frame may show deviation from that current average if there is an APDEX hit during a short timeframe.

## [!UICONTROL 404 page Errors frame]

![404 page Errors frame](../../assets/tools/404-page-errors.jpg)

This frame lists the [URI](https://en.wikipedia.org/wiki/Uniform_Resource_Identifier) and the count of 404 page errors during the selected timeframe.

## [!UICONTROL % of Storage Free frame]

![percent of Storage Free frame](../../assets/tools/percent-of-storage-free.jpg)

This frame will display the average % free of the storage mounts across all the nodes of your cluster. For example, if you have a three node cluster, this will show the \<mount point\>, \<environment name\>. This frame can be deceptive if there is a variance across three nodes. An example of a variance would be if the `/data/mysql` mount point free was a different value across the three node cluster. There is a frame under the MySQL tab that facets the mount points by node name to see more accurately what the `/data/mysql` storage free on each node actually is.

## [!UICONTROL % of system memory that is free frame]

![percent of system memory that is free frame](../../assets/tools/percent-of-system-memory-that-is-free.jpg)

This frame will display, by node, the amount of system memory that is free on each node.

## [!UICONTROL Swap memory free in bytes]

![swap memory free in bytes](../../assets/tools/swap-memory-free-in-bytes.jpg)

This frame displays, by node, the amount of SWAP memory that is free on the node.

## [!UICONTROL CPU % by host]

![CPU percent by host](../../assets/tools/cpu-percent-by-host.jpg)

The aggregate of all environments and nodes is displayed in this frame. You should deselect the non-production environments. You should note any instances where all nodes for the production environment are not present. This article gives tips on [High CPU Utilization](https://support.magento.com/hc/en-us/articles/360042149832#high_cpu_usage).

## [!UICONTROL Alerts during timeframe]

![alerts during timeframe](../../assets/tools/alerts-during-timeframe.jpg)

The Alerts during timeframe will display all alerts, including the Managed Alerts added by Magento Support.

## [!UICONTROL CPU Usage]

![CPU usage](../../assets/tools/cpu-usage.jpg)

If this frame is blank, it is an indicator that the Infrastructure application of New Relic is not enabled. See [this information]() on New Relic to enable it.

## [!UICONTROL Average Response Time]

![average response time](../../assets/tools/average-response-time.jpg)

This is the graph showing the average response time for transactions (Web and Other).

## [!UICONTROL Long duration cron_schedule updates]

![long duration cron_schedule updates](../../assets/tools/long-duration-cron-schedule-updates.jpg)

The `cron_schedule` table is written to at the start and finish of cron jobs. Long duration cron jobs could indicate latency in updating this table, which can indicate cron stackup or an issue with how crons are scheduled.

## [!UICONTROL Response Code]

![response code](../../assets/tools/response-code.jpg)

This frame is a good indication of web traffic and the response code of requests. It is New Relic transaction data, and it is faceted by the `httpResponseCode` returned.

## [!UICONTROL Web Traffic volume compared with one week ago Magento Managed Alerts Information]

![web traffic volume compared with one week ago](../../assets/tools/web-traffic-volume-compared.jpg)

This frame displays the web traffic volume of one week ago compared to current volume.

## [!UICONTROL Deployment Log Entries]

![deployment log entries](../../assets/tools/deployment-log-entries.jpg)

This frame displays a count of deployment and cloud log entries and facets the counts by the deployment log name.

## [!UICONTROL Deployment State]

![deployment state](../../assets/tools/deployment-state.jpg)

This frame facets particular deployment phrases from the deploy logs. Here are examples of phrases counted in the log and the facet name: 

**Deployment Log Phrases:**

* ‘%Starting generate command%') as 'start_gen'
* '%git apply /app/vendor/magento/ece-tools/patches%') as 'apply_patches'
* '%Set flag: .static_content_deploy%') as 'SCD'
* '%NOTICE: Generate command completed%') as 'gen_compl'
* '%NOTICE: Deployment completed%') as 'deploy_compl'
* '%NOTICE: Starting post-deploy.%') as 'start_pdeploy'
* '%NOTICE: Post-deploy is complete%') as 'pdeploy'
* '%deploy-complete%') as 'cl_deploy_compl'

## [!UICONTROL IP Frequency]

![IP frequency](../../assets/tools/ip-frequency.jpg)

This frame counts the (‘MISS’ and ‘PASS’) statuses for each IP from the Fastly logs. Web requests with these statuses will reach the origin server and will add load to the server. It shows the top twenty addresses in frequency. This frame can be used to detect IP attacks or sources of heavy load on a website.

## [!UICONTROL IP Response – top 20 URLs in duration]

![ip response – top 20 urls in duration](../../assets/tools/ip-response%20%E2%80%93%20top-20-urls.jpg)

This frame displays the URLs with the longest duration in response. It may indicate large image files or pages, API or pages with the longest response duration.

## [!UICONTROL API Calls by IP]

![api calls by ip](../../assets/tools/api-calls-by-ip.jpg)

This frame helps identify heavy traffic against the APIs and the IP addresses making requests from the API URLs.

## [!UICONTROL API Calls by IP, details by URL]

![api calls by ip details by url](../../assets/tools/api-calls-by-ip-details-by-url.jpg)

This frame provides details of heavy traffic against the APIs and details of the URLs making the requests.




















