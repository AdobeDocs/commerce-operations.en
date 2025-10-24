---
title: Perform an upgrade
description: Follow these steps to upgrade on-premises deployments of Adobe Commerce.
exl-id: 9183f1d2-a8dd-4232-bdee-7c431e0133df
---

# Perform an upgrade

You can upgrade _on-premises_ deployments of the Adobe Commerce application from the command line if you installed the software by:

- Downloading the Composer metapackage using the `composer create-project` command.
- Installing the compressed archive.

>[!NOTE]
>
>- For Adobe Commerce on cloud infrastructure projects, see [Upgrade Commerce version](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/commerce-version.html) in the Cloud Guide.
>- Do not use this method to upgrade if you cloned the GitHub repository. See [Upgrade a git-based installation](../developer/git-installs.md).

The following instructions show you how to upgrade using the Composer package manager. Adobe Commerce 2.4.2 introduced support for Composer 2. If you are attempting to upgrade from <2.4.1, you must first upgrade to a version that is compatible with Composer 2 (for example, 2.4.2) using Composer 1 _before_ upgrading to Composer 2 for >2.4.2 upgrades. In addition, you must be running a [supported version](../../installation/system-requirements.md) of PHP.

>[!WARNING]
>
>The procedure for upgrading Adobe Commerce has changed. You must install a new version of the `magento/composer-root-update-plugin` package (see [prerequisites](../prepare/prerequisites.md)). In addition, the commands for upgrading have changed from `composer require magento/<package_name>` to `composer require-commerce magento/<package_name>`.

## Before you begin

You must complete the [upgrade prerequisites](../prepare/prerequisites.md) to prepare your environment before starting the upgrade process.

>[!IMPORTANT]
>
>Adobe Commerce version 2.4.6-p13 does not include the `magento/inventory-composer-installer` package, which is required for smooth upgrade from older minor versions with backward-incompatible changes.<br>
>If you upgrade from 2.3 to 2.4.6-p13, run the following command to install the `magento/inventory-composer-installer` package before upgrading:
>`composer require magento/inventory-composer-installer`

## Manage packages

>[!NOTE]
>
>See the examples at the end of this section for help with specifying different release levels. For example, quality patches and security patches. If you cannot find these packages in Composer, contact Adobe Commerce Support.

1. Switch to maintenance mode to prevent access to your store during the upgrade process.

    ```bash
    bin/magento maintenance:enable
    ```

    See [Enable or disable maintenance mode](../../installation/tutorials/maintenance-mode.md) for additional options. Optionally, you can create a [custom maintenance mode page](../troubleshooting/maintenance-mode-options.md).

1. Starting the upgrade process while asynchronous processes, such as message queue consumers, are running may cause data corruption. To prevent data corruption, disable all cron jobs.

   _Adobe Commerce on cloud infrastructure:_

   ```bash
   ./vendor/bin/ece-tools cron:disable
   ```

   _Magento Open Source:_

   ```bash
   bin/magento cron:remove
   ```

1. Start all message queue consumers manually to ensure that all messages are consumed.

   ```bash
   bin/magento cron:run --group=consumers
   ```

   Wait for the cron job to complete. You can monitor the status of the job with a process viewer or by running the `ps aux | grep 'bin/magento queue'` command multiple times until all processes complete.

1. Create a backup of the `composer.json` file.

   ```bash
   cp composer.json composer.json.bak
   ```

1. Add or remove specific packages based on your needs.

   For example, if you are upgrading from Magento Open Source to Adobe Commerce, remove the Magento Open Source package.

   ```bash
   composer remove magento/product-community-edition --no-update
   ```

   You can also upgrade sample data.

   ```bash
   composer require <sample data module-1>:<version> ... <sample data module-n>:<version> --no-update
   ```

      - _Adobe Commerce:_

        ```bash
        composer require magento/module-bundle-sample-data:100.4.* magento/module-widget-sample-data:100.4.* magento/module-theme-sample-data:100.4.* magento/module-catalog-sample-data:100.4.* magento/module-customer-sample-data:100.4.* magento/module-cms-sample-data:100.4.*  magento/module-catalog-rule-sample-data:100.4.* magento/module-sales-rule-sample-data:100.4.* magento/module-review-sample-data:100.4.* magento/module-tax-sample-data:100.4.* magento/module-sales-sample-data:100.4.* magento/module-grouped-product-sample-data:100.4.* magento/module-downloadable-sample-data:100.4.* magento/module-msrp-sample-data:100.4.* magento/module-configurable-sample-data:100.4.* magento/module-product-links-sample-data:100.4.* magento/module-wishlist-sample-data:100.4.* magento/module-swatches-sample-data:100.4.* magento/sample-data-media:100.4.* magento/module-offline-shipping-sample-data:100.4.* magento/module-gift-card-sample-data:100.4.* magento/module-customer-balance-sample-data:100.4.* magento/module-target-rule-sample-data:100.4.* magento/module-gift-registry-sample-data:100.4.* magento/module-multiple-wishlist-sample-data:100.4.* --no-update

        ```

      - _Magento Open Source:_

        ```bash
        composer require magento/module-bundle-sample-data:100.4.* magento/module-widget-sample-data:100.4.* magento/module-theme-sample-data:100.4.* magento/module-catalog-sample-data:100.4.* magento/module-customer-sample-data:100.4.* magento/module-cms-sample-data:100.4.*  magento/module-catalog-rule-sample-data:100.4.* magento/module-sales-rule-sample-data:100.4.* magento/module-review-sample-data:100.4.* magento/module-tax-sample-data:100.4.* magento/module-sales-sample-data:100.4.* magento/module-grouped-product-sample-data:100.4.* magento/module-downloadable-sample-data:100.4.* magento/module-msrp-sample-data:100.4.* magento/module-configurable-sample-data:100.4.* magento/module-product-links-sample-data:100.4.* magento/module-wishlist-sample-data:100.4.* magento/module-swatches-sample-data:100.4.* magento/sample-data-media:100.4.* magento/module-offline-shipping-sample-data:100.4.* --no-update
        ```

1. Upgrade your instance using the following `composer require-commerce` command syntax:

   ```bash
   composer require-commerce magento/<product> <version> --no-update [--interactive-root-conflicts] [--force-root-updates] [--help]
   ```

   Command options include:

    - `<product>` —(Required) The package to upgrade. For on-premises installations, this value must be either `product-community-edition` or `product-enterprise-edition`.

    - `<version>` —(Required) The version of Adobe Commerce that you are upgrading to. For example, `2.4.3`.

    - `--no-update` —(Required) Disables the automatic update of the dependencies.

    - `--interactive-root-conflicts` —(Optional) Allows you to interactively view and update any out-of-date values from previous versions, or any customized values that do not match the version you are upgrading to.

    - `--force-root-updates` —(Optional) Overrides all conflicting custom values with the expected Commerce values.

    - `--help` —(Optional) Provides usage details about the plugin.

    If neither `--interactive-root-conflicts` nor `--force-root-updates` are specified, the command keeps the existing values that are in conflict and displays a warning message. To learn more about the plugin, refer to the [Plugin Usage README](https://github.com/magento/composer-root-update-plugin/blob/develop/src/Magento/ComposerRootUpdatePlugin/README.md).

1. Update the dependencies.

   ```bash
   composer update
   ```

### Example - list available versions

To see the full list of available 2.4.x versions:

_Magento Open Source_:

```bash
composer show magento/product-community-edition 2.4.* --available | grep -m 1 versions
```

_Adobe Commerce_:

```bash
composer show magento/product-enterprise-edition 2.4.* --available | grep -m 1 versions
```

### Example - Quality patch

Quality patches primarily contain functional _and_ security fixes. However, they can sometimes contain new, backward-compatible features. Use Composer to download a quality patch.

_Adobe Commerce_:

```bash
composer require-commerce magento/product-enterprise-edition 2.4.6 --no-update
```

_Magento Open Source_:

```bash
composer require-commerce magento/product-community-edition 2.4.6 --no-update
```

### Example - Security patch

Security patches contain security fixes only. They are designed to make the upgrade process faster and easier. Security patches use the Composer naming convention `2.4.x-px`.

_Adobe Commerce_:

```bash
composer require-commerce magento/product-enterprise-edition 2.4.6-p3 --no-update
```

_Magento Open Source_:

```bash
composer require-commerce magento/product-community-edition 2.4.6-p3 --no-update
```

## Update metadata

1. Update the `"name"`, `"version"`, and `"description"` fields in the `composer.json` file as needed.

   >[!NOTE]
   >
   >Updating the metadata in the `composer.json` file is entirely superficial, not functional.

1. Apply updates.

   ```bash
   composer update
   ```

1. Clear the `var/` and `generated/` subdirectories:

   ```bash
   rm -rf var/cache/*
   ```

   ```bash
   rm -rf var/page_cache/*
   ```

   ```bash
   rm -rf generated/code/*
   ```

   >[!NOTE]
   >
   >If you use a cache storage other than the filesystem, such as Redis or Memcached, you must manually clear the cache there too.

1. Update the database schema and data.

   ```bash
   bin/magento setup:upgrade
   ```

1. Disable maintenance mode.

   ```bash
   bin/magento maintenance:disable
   ```

1. _(Optional)_ Restart Varnish.

   If you use Varnish for page caching, restart it:

   ```bash
   service varnish restart
   ```

## Check your work

To check whether the upgrade was successful, open your storefront URL in a web browser. If your upgrade was unsuccessful, your storefront does not load properly.

If the application fails with a  `We're sorry, an error has occurred while generating this email.` error:

1. Reset [file system ownership and permissions](../../installation/prerequisites/file-system/configure-permissions.md) as a user with `root` privileges.
1. Clear the following directories:
   -  `var/cache/`
   -  `var/page_cache/`
   -  `generated/code/`
1. Check your storefront in your web browser again.
