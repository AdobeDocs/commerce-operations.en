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
