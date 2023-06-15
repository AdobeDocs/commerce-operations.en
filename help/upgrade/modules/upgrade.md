---
title: Upgrade Modules and Extensions
description: Use the command-line interface and Composer to upgrade Adobe Commerce and Magento Open Source modules and extensions.
exl-id: 017d75df-fd21-4fb4-abc9-80a35fc47d0f
---
# Upgrade modules and extensions

To update or upgrade a module or extension:

1. Download the updated file from Marketplace or another extension developer. Take note of the module name and version.

1. Export the contents to your Adobe Commerce or Magento Open Source root installation directory.

1. If a Composer package exists for the module, run one of the following.

   Update per module name:

   ```bash
   composer update vendor/module-name
   ```

   Update per version:

   ```bash
   composer require vendor/module-name ^x.x.x
   ```

1. Run the following commands to upgrade, deploy, and clean the cache.

   ```bash
   bin/magento setup:upgrade --keep-generated
   ```
   
   ```bash
   bin/magento setup:static-content:deploy
   ```

   ```bash
   bin/magento cache:clean
   ```

## Vendor bundled extensions (VBEs)

Adobe removed all [VBEs](https://devdocs.magento.com/extensions/vendor/) in 2.4.4. Vendors continue to support these extensions on the Adobe Commerce Marketplace.

If you want to continue using these extensions with Adobe Commerce 2.4.4 and later, you must update the corresponding package dependencies in your `composer.json` file _before_ upgrading to 2.4.4. Contact the vendor for the package name and version to use.

See the following Adobe Commerce Marketplace listings for more information:

- [Amazon Pay](https://marketplace.magento.com/amzn-amazon-pay-magento-2-module.html)
- [Dotdigital](https://marketplace.magento.com/dotdigital-dotdigital-magento2-os-package.html)
- [Klarna](https://marketplace.magento.com/klarna-m2-klarna.html)
- [Vertex](https://marketplace.magento.com/vertexinc-vertex-tax-module.html)
- [Yotpo](https://marketplace.magento.com/yotpo-module-yotpo.html)
