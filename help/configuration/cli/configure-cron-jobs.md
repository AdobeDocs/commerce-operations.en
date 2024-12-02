---
title: Configure and run cron jobs
description: Learn how to manage cron jobs.
exl-id: 8ba2b2f9-5200-4e96-9799-1b00d7d23ce1
---
# Configure cron jobs

{{file-system-owner}}

Several Commerce features require at least one cron job, which schedules activities to occur in the future. A partial list of these activities follows:

- Catalog price rules
- Newsletters
- Generating Google sitemaps
- Customer Alerts/Notifications (product price change, product back in stock)
- Reindexing
- Private sales (Adobe Commerce only)
- Automatic updating of currency rates
- All Commerce e-mails (including order confirmation and transactional)

>[!WARNING]
>
>You can no longer run `dev/tools/cron.sh` because the script has been removed.

>[!INFO]
>
>Commerce depends on proper cron job configuration for many important system functions, including indexing. Failure to set it up properly means that Commerce will not function as expected.

UNIX systems schedule tasks to be performed by particular users using a _crontab_, which is a file that contains instructions to the cron daemon that tell the daemon in effect to "run this command at this time on this date". Each user has its own crontab, and commands in any given crontab are executed as the user who owns it.

To run cron in a web browser, see [Secure cron.php to run in a browser](../security/secure-cron-php.md).

## Create or remove the Commerce crontab

This section discusses how to create or remove your Commerce crontab (that is, the configuration for Commerce cron jobs).

The _crontab_ is the configuration used to run cron jobs.

The Commerce application uses cron tasks that can run with different configurations. The PHP command-line configuration controls the general cron job that reindexes indexers, generates e-mails, generates the sitemap, and so on.

>[!WARNING]
>
>- To avoid issues during installation and upgrade, we strongly recommend you apply the same PHP settings to both the PHP command-line configuration and to the PHP web server plug-in's configuration. For more information, see [Required PHP settings](../../installation/prerequisites/php-settings.md).
>- In a multi-node system, crontab can run on only one node. This applies to you only if you set up more than one webnode for reasons related to performance or scalability.

### Create the Commerce crontab

Starting with version 2.2, Commerce creates a crontab for you. We add the Commerce crontab to any configured crontab for the Commerce file system owner. In other words, if you already set up crontabs for other extensions or applications, we add the Commerce crontab to it.

The Commerce crontab is inside `#~ MAGENTO START` and `#~ MAGENTO END` comments in your crontab.

To create the Commerce crontab:

1. Log in as, or switch to, the [file system owner](../../installation/prerequisites/file-system/overview.md).
1. Change to your Commerce installation directory.
1. Enter the following command:

   ```bash
   bin/magento cron:install [--force]
   ```

Use `--force` to rewrite an existing crontab.

>[!INFO]
>
>- `magento cron:install` does not rewrite an existing crontab inside `#~ MAGENTO START` and `#~ MAGENTO END` comments in your crontab.
>- `magento cron:install --force` has no effect on any cron jobs outside the Commerce comments.

To view the crontab, enter the following command as the file system owner:

```bash
crontab -l
```

A sample follows:

```
#~ MAGENTO START c5f9e5ed71cceaabc4d4fd9b3e827a2b
* * * * * /usr/bin/php /var/www/html/magento2/bin/magento cron:run 2>&1 | grep -v "Ran jobs by schedule" >> /var/www/html/magento2/var/log/magento.cron.log
#~ MAGENTO END c5f9e5ed71cceaabc4d4fd9b3e827a2b
```

>[!INFO]
>
>The `update/cron.php` file has been removed in Commerce 2.4.0, if this file exists on your installation, it can be safely removed.
>
>Any reference to `update/cron.php` and `bin/magento setup:cron:run` should also be removed from the crontab'

### Remove the Commerce crontab

You should remove the Commerce crontab only before uninstalling the Commerce application.

To remove the Commerce crontab:

1. Log in as or switch to the [file system owner](../../installation/prerequisites/file-system/overview.md).
1. Change to the Commerce installation directory.
1. Enter the following command:

   ```bash
   bin/magento cron:remove
   ```

>[!INFO]
>
>This command has no effect on cron jobs outside the `#~ MAGENTO START` and `#~ MAGENTO END` comments in your crontab.

## Run cron from the command line

Command options:

```bash
bin/magento cron:run [--group="<cron group name>"]
```

where `--group` specifies the cron group to run (omit this option to run cron for all groups)

To run the indexing cron job, enter:

```bash
bin/magento cron:run --group index
```

To run the default cron job, enter:

```bash
bin/magento cron:run --group default
```

To set up custom cron jobs and groups, see [Configure custom cron jobs and cron groups](../cron/custom-cron.md).

>[!INFO]
>
>You must run cron twice: the first time to discover tasks to run and the second time — to run the tasks themselves. The second cron run must occur on or after the `scheduled_at` time for every task.

## Logging

All `cron` job information has moved from `system.log` into a separate `cron.log`.
By default, the cron information can be found at `<install_directory>/var/log/cron.log`.
All exceptions from cron jobs are logged by `\Magento\Cron\Observer\ProcessCronQueueObserver::execute`.

In addition to being logged in `cron.log`:

- Failed jobs with `ERROR` and `MISSED` statuses are logged to the `<install_directory>/var/log/support_report.log`.

- Jobs with an `ERROR` status are always logged as `CRITICAL` in `<install_directory>/var/log/exception.log`.

- Jobs with a `MISSED` status are logged as `INFO` in the `<install_directory>/var/log/debug.log` directory (developer mode only).

>[!INFO]
>
>All cron data is also written to the `cron_schedule` table in the Commerce database. The table provides a history of cron jobs, including:
>
>- Job ID and code
>- Status
>- Created date
>- Scheduled date
>- Executed date
>- Finished date
>
>To see records in the table, log in to the Commerce database on the command line and enter `SELECT * from cron_schedule;`.
