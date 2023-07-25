---
title: Migration overview
description: Learn how to start migrating data from Magento 1 to Magento 2 with the [!DNL Data Migration Tool].
exl-id: b775ede1-9d1d-49d5-ad0f-763404b48278
topic: Commerce, Migration
---
# Migration overview

Before you start migration, stop all Magento 1 cron jobs.

During the migration process, follow these general rules for a successful migration:

1. **Do not** make changes in the Magento 1 Admin, except for order management (shipping, creating invoice, and credit memos)
1. **Do not** alter any code
1. **Do not** make changes in the Magento 2 Admin and storefront

>[!TIP]
>
>All operations in the Magento 1 storefront are allowed.

## Run the [!DNL Data Migration Tool]

This section shows how to run the [!DNL Data Migration Tool] to migrate settings, data, or incremental changes.

### First steps

1. Log in to the application server as, or switch to, a user with permissions to write to the file system. See [switch to the file system owner](../../../installation/prerequisites/file-system/overview.md).

   If you use the bash shell, you can use the following syntax to switch to the file system owner and enter the command at the same time:

   ```bash
   su <file system owner> -s /bin/bash -c <command>
   ```

   If the file system owner does not allow logins, you can do the following:

   ```bash
   sudo -u <file system owner>  <command>
   ```

1. To run Magento commands from any directory, add `<magento_root>/bin` to your system `PATH`.

   Because shells have differing syntax, consult a reference like [unix.stackexchange.com](https://unix.stackexchange.com/questions/117467/how-to-permanently-set-environmental-variables).

   Sample bash shell for CentOS:

   ```bash
   export PATH=$PATH:/var/www/html/magento2/bin
   ```

   Optionally, you can run the commands in the following ways:

   -  `cd <magento_root>/bin` and run them as `./magento <command name>`
   -  `<magento_root>/bin/magento <command name>`
   -  `<magento_root>` is a subdirectory of your web server docroot.

### Command syntax

Below is a typical command example:

```bash
bin/magento migrate:<mode> [-r|--reset] [-a|--auto] {<path to config.xml>}
```

Where:

-  `<mode>` may be: [`settings`](settings.md), [`data`](data.md), or [`delta`](delta.md)
-  `[-r|--reset]` is an optional argument that starts migration from the beginning. You can use this argument for testing migration.
-  `[-a|--auto]` is an optional argument that prevents migration from stopping when it encounters integrity check errors.
-  `{<path to config.xml>}` is the absolute file system path to `config.xml`; this argument is required.

>[!NOTE]
>
>Logs are written to the `<magento_root>/var/` directory.


## Migration order

When we created the [!DNL Data Migration Tool], we assumed the following data transfer sequence:

1. [Settings](settings.md)
1. [Data](data.md)
1. [Changes](delta.md)

We strongly recommend migrating data in the same order.
