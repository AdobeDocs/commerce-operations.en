---
title: Run the support utilities
description: Troubleshoot your Commerce project using the built-in support utility.
exl-id: 021b795f-e00d-43b5-9cbb-5b57a4795be7
---
# Run the support utilities

{{ee-only}}

{{file-system-owner}}

The Adobe Commerce Support utilities—also referred to as the [Data Collector](https://experienceleague.adobe.com/en/docs/commerce-admin/systems/tools/support#data-collector)—enable users to gather troubleshooting information about your system that can be used by our Support team.

Adobe Commerce uses these backups, also referred to as _dumps_,to analyze issues that require access to your code. A typical scenario follows:

1. You are having an issue with your Commerce store and you contact Adobe Commerce Support.
1. Support determines they need to see your code or database to reproduce the issue.
1. You back up the code to a `.tar.gz` file.

   This backup _excludes your media files to speed up the process and to result in a much smaller file.

1. You back up the database to a `.tar.gz` file.

   By default, sensitive data is hashed when making the backup.

1. You upload your backups to a file sharing service.
1. Support analyzes your issues without affecting your development or production environment.

The utilities can take several minutes to complete.

## Create a code backup

This command backs up code and compresses it in `tar.gz` format.

{{tip-backup-command}}

Command options:

```bash
bin/magento support:backup:code [--name=<file name>] [-o|--output=<path>] [-l|--logs]
```

Where:

-  **`--name`** specifies the dump file name (optional). If you omit this parameter, the dump file is time and date-stamped.
-  **`-o|--output=<path>`** is the absolute file system path to store the backup (required).
-  **`-l|--logs`** includes log files (optional).

For example, to create a code backup named `/var/www/html/magento2/var/log/mycodebackup.tar.gz`:

```bash
bin/magento support:backup:code --name mycodebackup -o /var/www/html/magento2/var/log
```

After the command completes, provide the code backup to Adobe Commerce Support.

## Create a database backup

This command backs up the Commerce database and compresses it in `tar.gz` format.

{{tip-backup-command}}

Command options:

```bash
bin/magento support:backup:db [--name=<name>] [-o|--output=<path>] [-l|--logs] [-i|--ignore-sanitize]
```

Where:

-  **`--name`** specifies the dump file name (optional). If you omit this parameter, the dump file is time and date-stamped.
-  **`-o|--output=<path>` is the absolute file system path to store the backup (required).
-  **`-l|--logs`** includes log files (optional).
-  **`-i|--ignore-sanitize`** means that data is preserved; omit the flag to hash sensitive data stored in the database when creating the backup (optional).

Sensitive data includes customer information from the following database tables:

```
'customer_entity',
'customer_entity_varchar',
'customer_address_entity',
'customer_address_entity_varchar',
'customer_grid_flat',
'quote',
'quote_address',
'sales_order',
'sales_order_address',
'sales_order_grid'
```

After the command completes, provide the database backup to Adobe Commerce Support.

## Troubleshooting: display utilities and paths

We provide commands that display paths to utilities required by the Data Collector and the command line. You can use these commands, for example, if errors like the following display in the Admin or on the command line:

```
Utility lsof not found
```

Run the following commands in the order shown to display the paths to the applications used by the support utilities and Data Collector:

1. Change to your Commerce installation directory.

   For example, `cd /var/www/magento2`

   >[!INFO]
   >
   >The commands run properly _only_ from your installation directory.

1. `bin/magento support:utility:paths` creates `<magento_root>/var/support/Paths.php`, which lists the paths to all application used by the utility.
1. `bin/magento support:utility:check` displays the file system paths.

A sample follows:

```
   gzip => /bin/gzip
   lsof => /usr/sbin/lsof
   mysqldump => /usr/bin/mysqldump
   nice => /bin/nice
   php => /usr/bin/php
   tar => /bin/tar
   sed => /bin/sed
   bash => /bin/bash
   mysql => /usr/bin/mysql
```

To resolve issues with running the tools, make sure these applications are installed and are in the web server user's `$PATH` environment variable.
