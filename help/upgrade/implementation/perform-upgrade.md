---
title: Perform an Upgrade
description: Follow these steps to upgrade an Adobe Commerce or Magento Open Source project.
---

# Perform an upgrade

You can upgrade your Adobe Commerce or Magento Open Source application from the command line if you installed the software by:

-  Downloading the [metapackage](https://glossary.magento.com/metapackage) using the `composer create-project` command.
-  Installing the compressed archive.

>[!NOTE]
>
>Do not use this method to upgrade if you cloned the GitHub repository. Instead, see [Upgrade a git-based installation](../developer/git-installs.md) for upgrade instructions.

The following instructions show you how to upgrade using Composer. Adobe Commerce 2.4.2 introduced support for Composer 2. If you are attempting to upgrade from <2.4.1, you must first upgrade to a version that is compatible with Composer 2 (for example, 2.4.2) using Composer 1 _before_ upgrading to Composer 2 for >2.4.2 upgrades. In addition, you must be running a [supported version](https://devdocs.magento.com/guides/v2.4/install-gde/system-requirements.html) of PHP.

>[!WARNING]
>
>The procedure for upgrading Adobe Commerce and Magento Open Source has changed. You must install a new version of the `magento/composer-root-update-plugin` package (see [prerequisites](../prepare/prerequisites.md)). In addition, the commands for upgrading have changed from `composer require magento/<package_name>` to `composer require-commerce magento/<package_name>`.

## Before you begin

You must complete the [upgrade prerequisites](../prepare/prerequisites.md) to prepare your environment before starting the upgrade process.

## Manage packages

>[!NOTE]
>
>See the examples at the end of this section for help with specifying different release levels. For example, minor release, quality patch, and security patch. Adobe Commerce customers can access patches two weeks before the General Availability (GA) date. Pre-release packages are available through Composer only. You cannot find them on the Downloads Portal or GitHub until GA. If you cannot find these packages in Composer, contact Adobe Commerce Support.

1. Switch to maintenance mode to prevent access to your store during the upgrade process.

    ```bash
    bin/magento maintenance:enable
    ```

    See [Enable or disable maintenance mode](https://devdocs.magento.com/guides/v2.4/install-gde/install/cli/install-cli-subcommands-maint.html) for additional options. Optionally, you can create a [custom maintenance mode page](https://devdocs.magento.com/guides/v2.4/comp-mgr/trouble/cman/maint-mode.html).

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

    - `<version>` —(Required) The version of Adobe Commerce or Magento Open Source you are upgrading to. For example, `2.4.3`.

    - `--no-update` —(Required) Disables the automatic update of the dependencies.

    - `--interactive-root-conflicts` —(Optional) Allows you to interactively view and update any out-of-date values from previous versions, or any customized values that do not match the version you are upgrading to.

    - `--force-root-updates` —(Optional) Overrides all conflicting custom values with the expected Magento values.

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

### Example - Minor release

Minor releases contain new features, quality fixes, and security fixes. Use Composer to specify a minor release. For example, to specify the Magento Open Source 2.4.3 metapackage:

_Magento Open Source_:

```bash
composer require-commerce magento/product-community-edition 2.4.0 --no-update
```

_Adobe Commerce_:

```bash
composer require-commerce magento/product-enterprise-edition 2.4.0 --no-update
```

### Example - Quality patch

Quality patches primarily contain functional _and_ security fixes. However, they can sometimes contain new, backward-compatible features. Use Composer to download a quality patch. For example, to specify the Magento Open Source 2.4.1 metapackage:

```bash
composer require-commerce magento/product-community-edition 2.4.3 --no-update
```

_Magento Open Source_:

```bash
composer require-commerce magento/product-community-edition 2.4.3 --no-update
```

_Adobe Commerce_:

```bash
composer require-commerce magento/product-enterprise-edition 2.4.3 --no-update
```

### Example - Security patch

Security patches contain security fixes only. They are designed to make the upgrade process faster and easier.

Security patches use the Composer naming convention `2.4.x-px`. Use Composer to specify a patch.

_Magento Open Source_:

```bash
composer require-commerce magento/product-community-edition 2.4.3-p1 --no-update
```

_Adobe Commerce_:

```bash
composer require-commerce magento/product-enterprise-edition 2.4.3-p1 --no-update
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

Open your storefront URL in a web browser to check whether the upgrade was successful. If your upgrade was unsuccessful, your storefront will not load properly.

If the application fails with a  `We're sorry, an error has occurred while generating this email.` error:

1. Reset [file system ownership and permissions](https://devdocs.magento.com/guides/v2.4/install-gde/prereq/file-system-perms.html) as a user with `root` privileges.
1. Clear the following directories:
   -  `var/cache/`
   -  `var/page_cache/`
   -  `generated/code/`
1. Check your storefront in your web browser again.
