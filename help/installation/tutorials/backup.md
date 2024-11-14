---
title: Backup and rollback the file system, media, and database
description: Follow these steps to back up and restore your Adobe Commerce application.
exl-id: b9925198-37b4-4456-aa82-7c55d060c9eb
---
# Backup and rollback the file system, media, and database

This command enables you to back up:

*  The file system (excluding `var` and `pub/static` directories)
*  The `pub/media` directory
*  The database

Backups are stored in the `var/backups` directory and can be restored at any time using the [`magento setup:rollback`](uninstall-modules.md#roll-back-the-file-system-database-or-media-files) command.

After backing up, you can [rollback](#rollback) later.

>[!TIP]
>
>For Adobe Commerce on cloud infrastructure projects, see [Snapshots and backup management](https://experienceleague.adobe.com/en/docs/commerce-cloud-service/user-guide/develop/storage/snapshots) in the _Cloud guide_.

## Enable backups

The backup feature is disabled by default. To enable, enter the following CLI command:

```bash
bin/magento config:set system/backup/functionality_enabled 1
```

>[!WARNING]
>
>**Deprecation Notice:**
>Backup functionality is deprecated as of 2.1.16, 2.2.7, and 2.3.0. We recommend investigating additional backup technologies and binary backup tools (such as Percona XtraBackup).

## Set the open files limit

Rolling back to a previous backup can silently fail, resulting in incomplete data being written to the file system or database using the [`magento setup:rollback`](uninstall-modules.md#roll-back-the-file-system-database-or-media-files) command.

Sometimes, a long query string causes the user's allocated memory space to run out of memory because of too many recursive calls.

## How to set open files `ulimit`

We recommend setting the open files [`ulimit`](https://ss64.com/bash/ulimit.html) for the file system user to a value of `65536` or more.

You can do this either on the command line or you can make it a permanent setting for the user by editing their shell script.

Before you continue, if you haven't already done so, switch to the [file system owner](../prerequisites/file-system/overview.md).

Command:

```bash
ulimit -s 65536
```

You can change this to a larger value if needed.

>[!NOTE]
>
>The syntax for open files `ulimit` depends on the UNIX shell you use. The preceding setting should work with CentOS and Ubuntu with the Bash shell. However, for macOS, the correct setting is `ulimit -S 65532`. Consult a man page or operating system reference for more information.

To optionally set the value in the user's Bash shell:

1. If you haven't already done so, switch to the [file system owner](../prerequisites/file-system/overview.md).
1. Open `/home/<username>/.bashrc` in a text editor.
1. Add the following line:

   ```bash
   ulimit -s 65536
   ```

1. Save your changes to `.bashrc` and exit the text editor.

>[!WARNING]
>
>We recommend that you avoid setting a value for [`pcre.recursion_limit`](https://www.php.net/manual/en/pcre.configuration.php) in the `php.ini` file because it can result in incomplete rollbacks with no failure notice.

## Backing up

Command usage:

```bash
bin/magento setup:backup [--code] [--media] [--db]
```

The command performs the following tasks:

1. Puts the store in maintenance mode.
1. Executes one of the following command options.

    |Option|Meaning|Backup file name and location|
    |--- |--- |--- |
    |`--code`|Backs up the file system (excluding var and pub/static directories).|`var/backups/<timestamp>/_filesystem.tgz`|
    |`--media`|Back up the pub/media directory.|`var/backups/<timestamp>/_filesystem_media.tgz`|
    |`--db`|Back up the database.|`var/backups/<timestamp>/_db.sql`|

1. Takes the store out of maintenance mode.

For example, to back up the file system and database,

```bash
bin/magento setup:backup --code --db
```

Messages similar to the following display:

```
Enabling maintenance mode
Code backup is starting...
Code backup filename: 1434133011_filesystem.tgz (The archive can be uncompressed with 7-Zip on Windows systems)
Code backup path: /var/www/html/magento2/var/backups/1434133011_filesystem.tgz
[SUCCESS]: Code backup completed successfully.
DB backup is starting...
DB backup filename: 1434133011_db.sql
DB backup path: /var/www/html/magento2/var/backups/1434133011_db.sql
[SUCCESS]: DB backup completed successfully.
Disabling maintenance mode
```

## Rollback

This section discusses how to roll back to a backup you made previously. You must know the file name of the backup file to restore.

To find the name of your backups, enter:

```bash
bin/magento info:backups:list
```

The first string in the backup file name is the timestamp.

To roll back to a previous backup, enter:

```bash
bin/magento setup:rollback [-c|--code-file="<name>"] [-m|--media-file="<name>"] [-d|--db-file="<name>"]
```

For example, to restore a media backup named `1440611839_filesystem_media.tgz`, enter

```bash
bin/magento setup:rollback -m 1440611839_filesystem_media.tgz
```

Messages similar to the following display:

```
[SUCCESS]: Media rollback completed successfully.
Please set file permission of bin/magento to executable
Disabling maintenance mode
```
