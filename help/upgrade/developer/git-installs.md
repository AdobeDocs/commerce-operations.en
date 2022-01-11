---
title: Upgrade a Git-Based Installation
description: Upgrade an Adobe Commerce or Magento Open Source installation that you cloned from a git repository.
---

# Upgrade a git-based installation

This topic discusses how a contributing developer can update Adobe Commerce or Magento Open Source without reinstalling it. If you are not a contributing developer, see [Perform an upgrade](../implementation/perform-upgrade.md).

To upgrade if you are a contributing developer:

1. Log in to your server.

1. Switch to the [file system owner](https://devdocs.magento.com/guides/v2.4/install-gde/prereq/file-sys-perms-over.html).

1. Change to the directory where you cloned the application. For example,

   ```bash
   cd /var/www/magento2
   ```

1. Save any changes you made to the `composer.json` file because the next steps  overwrite it.

1. Create a backup of your `composer.json` file.

   ```bash
   cp composer.json composer.json.old
   ```

1. Update your local repository to get the latest code:

   ```bash
   git pull origin develop
   ```

   >[!NOTE]
   >
   >If `git pull origin develop` fails, see [troubleshooting](https://support.magento.com/hc/en-us/articles/360034229872).

1. Diff and merge your `composer.json.old` file with the `composer.json` file.

1. Resolve dependencies and write exact versions to the `composer.lock` file. 

   ```bash
   composer update
   ```

1. Update the database:

   ```bash
   bin/magento setup:upgrade
   ```

1. Clean the cache:

   ```bash
   bin/magento cache:clean
   ```
