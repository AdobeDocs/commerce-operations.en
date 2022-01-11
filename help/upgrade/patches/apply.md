---
title: Apply Patches
description: Learn about the methods for applying patches to an Adobe Commerce or Magento Open Source project.
---

# Apply patches

You can apply patches using any of the following methods:

-  [Quality Patches Tool](https://devdocs.magento.com/quality-patches/tool.html)
-  [Command line](../patches/apply.md#command-line)
-  [Composer](../patches/apply.md#composer)

## Composer

>[!IMPORTANT]
>
>To apply official quality patches, use the [Quality Patches Tool](https://devdocs.magento.com/quality-patches/tool.html). Always perform comprehensive testing before deploying any custom patch.

To apply a custom patch using Composer:

1. Open your command-line application and navigate to your project directory.
1. Add the `cweagans/composer-patches` plugin to the `composer.json` file.

   ```bash
   composer require cweagans/composer-patches
   ```

1. Edit the `composer.json` file and add the following section to specify:
   - **Module:** *\"magento/module-payment\"*
   - **Title:** *\"MAGETWO-56934: Checkout page freezes when ordering with Authorize.net with invalid credit card\"*
   - **Path to patch:** *\"patches/composer/github-issue-6474.diff\"*

   For example:

   ```json
   "extra": {
       "composer-exit-on-patch-failure": true,
       "patches": {
           "magento/module-payment": {
               "MAGETWO-56934: Checkout page freezes when ordering with Authorize.net with invalid credit card": "patches/composer/github-issue-6474.diff"
           }
       }
   }
   ```

   If a patch affects multiple modules, you must create multiple patch files targeting multiple modules.

1. Apply the patch. Use the `-v` option only if you want to see debugging information.

   ```bash
   composer -v install
   ```

1. Update the `composer.lock` file. The lock file tracks which patches have been applied to each Composer package in an object.

   ```bash
   composer update --lock
   ```

## Command line

To apply patches from the command line:

1. Upload the local file into the `<Magento_root>` directory on the server using FTP, SFTP, SSH, or your normal transport method.
1. Log into the server as the [admin user](https://devdocs.magento.com/guides/v2.4/config-guide/cli/config-cli.html#config-install-cli-first) and verify that the file is in the correct directory.
1. In the command-line interface, run the following commands according to the patch extension:

   ```bash
   patch < patch_file_name.patch
   ```

   The command assumes the file to be patched is located relative to the patch file.

   >[!NOTE]
   >
   >If the command line shows: `File to patch:`, it means it cannot locate the intended file, even if the path seems correct. In the box displayed in the command-line terminal, the first line shows the file to be patched. Copy the file path and paste it into the `File to patch:` prompt and press `Enter` and the patch should complete.

1. For the changes to be reflected, refresh the cache in the Admin under **System** > Tools > **Cache Management**.

   Alternatively, the patch can be applied locally with the same command, then committed and pushed normally.
