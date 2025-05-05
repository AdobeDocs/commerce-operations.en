---
title: Cron jobs
description: Learn about cron groups and creating a custom cron job.
exl-id: a9d83af7-9979-4653-adc9-30ffeb13a5ce
---
# Cron jobs

These topics discuss how to set up a custom cron job and optionally a custom cron group. If your Commerce extension requires scheduled tasks to run periodically, you can use these topics to set up a cron _job_ (the scheduled task) and optionally a cron _group_, which runs custom tasks at the same time.

If you use a Commerce-provided cron group, you do not have to define a custom cron group; however, if you want your cron jobs to run at a different schedule or you want them all to run together, you should define a cron group

The Commerce application provides the following cron groups:

- `default`, which contains most cron jobs
- `index`, which refreshes [indexers](../cli/manage-indexers.md)
- `consumers`, which runs message queue [consumers](../cli/start-message-queues.md)
- These topics are available in Adobe Commerce only
  - `staging`, which runs [Staging-related](https://experienceleague.adobe.com/en/docs/commerce-admin/content-design/staging/content-staging) tasks
  - `catalog_event`, which runs tasks for target and shopping cart rules
