---
title: The [!DNL Cron] tab
description: Learn about the [!DNL Cron] tab of [!DNL Observation for Adobe Commerce].
exl-id: 66f5ffd6-4118-4534-b2d6-09c7a30e5e13
feature: Configuration, Observability
---
# The [!DNL Cron] tab

This tab is an attempt to quickly isolate issues and causes of [!DNL cron] problems.

## [!UICONTROL Cron transaction duration in seconds]

![Cron transaction duration in seconds](../../assets/tools/observation-for-adobe-commerce/cron-tab-1.jpg)

The **[!UICONTROL Cron transaction duration in seconds]** frame displays [!DNL crons] transaction duration in seconds. This will display transactions that have long runtimes. A deeper dive into APM will show more details on what query the transaction/operation may be running.

## [!UICONTROL MySQL Non-Sleeping Threads by Node]

![MySQL Non Sleeping Threads by Node](../../assets/tools/observation-for-adobe-commerce/cron-tab-2.jpg)

The **[!UICONTROL MySQL Non-Sleeping Threads by Node]** frame shows the MySQL Non-Sleeping threads by node across the selected timeframe.

## [!UICONTROL SQL Trace count by path]

![SQL Trace count by path](../../assets/tools/observation-for-adobe-commerce/cron-tab-3.jpg)

The **[!UICONTROL SQL Trace count by path]** frame looks at MySQL trace counts by path, which can help trace SQL statements across a selected timeframe.

## [!UICONTROL Cron database call]

![Cron database call](../../assets/tools/observation-for-adobe-commerce/cron-tab-4.jpg)

The **[!UICONTROL Cron database call]** frame looks at the number of [!DNL crons] calling to the database across a selected timeframe.

## [!UICONTROL Cron schedule table locks]

![Cron schedule table locks](../../assets/tools/observation-for-adobe-commerce/cron-tab-5.jpg)

The **[!UICONTROL Cron schedule table locks]** frame looks at [!DNL cron] schedule table locks across a selected timeframe.

## [!UICONTROL Cron schedule clean cron fired]

![Cron schedule table locks](../../assets/tools/observation-for-adobe-commerce/cron-tab-6.jpg)

The **[!UICONTROL Cron schedule clean cron fired]** frame looks at the number of [!DNL crons] cleaned up across a selected timeframe. If no data is displayed in this frame, it could indicate a problem with [!DNL crons] running correctly. If the [!DNL cron] job schedule is not cleaned, [!DNL crons] will not run optimally and may take longer to run.

## [!UICONTROL Cron schedule clean records details table]

![Cron schedule clean records details table](../../assets/tools/observation-for-adobe-commerce/cron-tab-7.jpg)

The **[!UICONTROL Cron schedule clean records details table]** table provides details on the job to clean records from the `cron_schedule` table across a selected timeframe.

## [!UICONTROL cron_schedule table updates]

![cron_schedule table updates](../../assets/tools/observation-for-adobe-commerce/cron-tab-8.jpg)

The **[!UICONTROL cron_schedule table updates]** frame looks at the number of [!DNL cron] scheduled table updates across a selected timeframe. High activity on the delete or updating of this table may indicate an issue with [!DNL crons]. Also, [!DNL crons] update this table when they run and complete, so if there is no activity on this table and there are [!DNL crons] configured, there could be a problem with [!DNL crons].

## [!UICONTROL Datastore Operations Tables]

![Datastore Operations Tables](../../assets/tools/observation-for-adobe-commerce/cron-tab-9.jpg)

The **[!UICONTROL Datastore Operations Tables]** looks at database table operations, including `SELECT`, `DELETE`, and `UPDATE` across a selected timeframe. This frame shows the database tables with the highest operation frequency against them.
