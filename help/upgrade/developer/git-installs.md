---
title: Upgrade a Git-Based Installation
description: Upgrade an Adobe Commerce installation that you cloned from a git repository.
exl-id: a8c42857-7221-4b21-8377-4bfb6308c418
last-update: 2026-04-28T00:00:00.000Z
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
---
# Upgrade a git-based installation

This topic discusses how a contributing developer can update Adobe Commerce without reinstalling it. If you are not a contributing developer, see [Perform an upgrade](../implementation/perform-upgrade.md).

To upgrade if you are a contributing developer:

{{$include /help/_includes/server-login.md}}

1. Save any changes you made to the `composer.json` file because the next steps  overwrite it.

1. Create a backup of your `composer.json` file.

   ```shell
   cp composer.json composer.json.old
   ```

1. Update your local repository to get the latest code:

   ```shell
   git pull origin develop
   ```

   >[!NOTE]
   >
   >If `git pull origin develop` fails, see [troubleshooting](https://support.magento.com/hc/en-us/articles/360034229872).

1. Diff and merge your `composer.json.old` file with the `composer.json` file.

1. Resolve dependencies and write exact versions to the `composer.lock` file. 

   ```shell
   composer update
   ```

1. Update the database:

   ```shell
   bin/magento setup:upgrade
   ```

1. Clean the cache:

   ```shell
   bin/magento cache:clean
   ```

<!-- Last updated from includes: 2026-04-17 13:49:36 -->
