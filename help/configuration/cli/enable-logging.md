---
title: Enable logging
description: Learn how to enable and disable different types of logging in Adobe Commerce. Discover logging configuration and management techniques.
feature: Configuration, Logs
exl-id: 78b0416a-5bad-42a9-a918-603600e98928
---
# Enable logging

{{file-system-owner}}

## Debug logging

By default, Commerce writes to the debug log (`<install_directory>/var/log/debug.log`) when it is in default or develop mode, but not when it is in production mode. Use the `bin/magento setup:config:set --enable-debug-logging` command to change the default value.

>[!INFO]
>
>As of Commerce 2.3.1, you can no longer use the `bin/magento config:set dev/debug/debug_logging` command to enable or disable debug logging for the current mode.

### To enable debug logging

1. Use the `setup:config:set` command to enable debug logging for the current mode.

   ```bash
   bin/magento setup:config:set --enable-debug-logging=true
   ```

1. Flush the cache.

   ```bash
   bin/magento cache:flush
   ```

### To disable debug logging

1. Use the `setup:config:set` command to disable debug logging for the current mode.

   ```bash
   bin/magento setup:config:set --enable-debug-logging=false
   ```

1. Flush the cache.

   ```bash
   bin/magento cache:flush
   ```

## Database logging

By default, Commerce writes database activity logs to the `<install-dir>/var/debug/db.log` file.

### To enable database logging

1. Use the `dev:query-log` command to enable or disable database logging.

   ```bash
   bin/magento dev:query-log:enable
   ```

   ```bash
   bin/magento dev:query-log:disable
   ```

1. Flush the cache.

   ```bash
   bin/magento cache:flush
   ```

## Cron logging

With the release of version 2.3.1, Commerce now creates a separate `cron` log. \
Commerce recently made cron logging more verbose, which provided more information but lengthened the `system.log` considerably.
Moving `cron` info to a dedicated log makes both logs easier to read.

By default, Commerce writes `cron` info to the `<install-directory>/var/log/cron.log` file.

## Syslog logging

By default, Commerce writes _syslog_ logs to the operating system `syslog` file.
As of Commerce 2.3.1, you must use the `magento` command to enable or disable the syslog.
The setting in the Admin has been removed.

### To enable syslog logging

Logging to `syslog` is disabled by default.

1. Use the `setup:config:set` command to change the `dev/syslog/syslog_logging` database value to `true`.

   ```bash
   bin/magento setup:config:set --enable-syslog-logging=true
   ```

1. Flush the cache.

   ```bash
   bin/magento cache:flush
   ```

### To disable syslog logging

1. Use the `setup:config:set` command to change the `dev/syslog/syslog_logging` database value to `false`.

   ```bash
   bin/magento setup:config:set --enable-syslog-logging=false
   ```

1. Flush the cache.

   ```bash
   bin/magento cache:flush
   ```
