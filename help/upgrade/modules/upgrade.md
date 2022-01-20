---
title: Upgrade Modules and Extensions
description: Use the command-line interface and Composer to upgrade Adobe Commerce and Magento Open Source modules and extensions.
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

If you want to continue using these extensions with Adobe Commerce and Magento Open Source 2.4.4 and later, you must update the corresponding package dependencies in your `composer.json` file _before_ upgrading to 2.4.4.

The following table shows the Composer package name and version for the Adobe Commerce Marketplace extensions that you should use to replace the VBE packages in your project:

| Extension  | Marketplace package and version                         |
|------------|---------------------------------------------------------|
| Amazon Pay | `amzn/amazon-pay-magento-2-module: 5.9.1`               |
| dotdigital | `dotmailer/TBD: x.x.x` |
| Klarna     | `klarna/TBD: x.x.x`                             |
| Vertex     | `vertex/TBD: x.x.x`                  |
| Yotpo      | `yotpo/module-yotpo: x.x.x`     |
