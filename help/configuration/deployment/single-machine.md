---
title: Single machine deployment
description: Learn how to deploy updates to Commerce on a production server using the command line.
feature: Configuration, Deploy
exl-id: ca73309c-7584-4506-99de-dd933651eeb6
---
# Single-machine deployment

This topic provides instructions for deploying updates to Commerce on a production server using the command line. This process applies to technical users responsible for stores running on a single machine with some themes and locales installed.

## Assumptions

- You installed Commerce using [Composer](../../installation/composer.md).
- You are directly applying updates to the server.

>[!WARNING]
>
>This guide does not apply if you used `git clone` to install Commerce.
>Contributing developers should use [this guide](https://developer.adobe.com/commerce/contributor/guides/install/update-dependencies) to update their Commerce installation.

## Deployment steps

1. Log in to your production server as, or switch to, the [file system owner](../../installation/prerequisites/file-system/overview.md).

1. Change directory to the Commerce base directory:

   ```bash
   cd <Commerce base directory>
   ```

1. Enable maintenance mode using the command:

   ```bash
   bin/magento maintenance:enable
   ```

1. Apply updates to Commerce or its components using the following command pattern:

   ```bash
   composer require-commerce <package> <version> --no-update
   ```

   **package**: The name of the package you want to update.

   For example:

   - `magento/product-community-edition`
   - `magento/product-enterprise-edition`

   **version**: The target version of the package you want to update.

1. Update components with Composer:

   ```bash
   composer update
   ```

1. Update the database schema and data:

   ```bash
   bin/magento setup:upgrade
   ```

1. Compile the code:

   ```bash
   bin/magento setup:di:compile
   ```

1. Deploy static content:

   ```bash
   bin/magento setup:static-content:deploy
   ```

1. Clean the cache:

   ```bash
   bin/magento cache:clean
   ```

1. Exit maintenance mode:

   ```bash
   bin/magento maintenance:disable
   ```

