---
title: Optimize CSS and JS resource files
description: Learn how to merge and minify CSS and JavaScript (JS) files for Adobe Commerce projects from the Admin or from the command line.
role: Developer
feature: Best Practices
exl-id: ff0bc407-b563-418b-9d6a-7c1dc8f235df
---
# Optimize resource files

For a more responsive Commerce site, optimize CSS and JavaScript (JS) resource files and eliminate render-blocking resources.

- **Optimize CSS and JS files**—Reduce the time required to load CSS and JavaScript (JS) files by configuring Adobe Commerce to minify and bundle files.
- **Eliminate render-blocking resources**—Consider delivering critical JS and CSS features inline and deferring all non-critical JS/CSS styles. For guidance, see [Eliminate render-blocking resources](https://web.dev/render-blocking-resources/).

## Affected products and versions

[All supported versions, 2.3 and later](../../../release/versions.md) of:

- Adobe Commerce on cloud infrastructure
- Adobe Commerce on-premises

## Merge or minify CSS files

The time it takes to load CSS and JavaScript (JS) files can be reduced by merging, minifying, and bundling separate files into a single file.

>[!IMPORTANT] 
>
>Adobe Commerce on cloud infrastructure always runs on Production mode and it is not possible to set it otherwise, therefore you must use the command-line method to enable merging, minifying, and bundling.

Do not merge or bundle files if your deployment uses HTTP/2. HTTP/2 downloads static files asynchronously. Browsers must download an entire merged file before processing the file contents.

### Using Admin

To enable CSS merging or minification, go into the **[!UICONTROL Admin]** > **[!UICONTROL Stores]** > **[!UICONTROL Settings]** > **[!UICONTROL Configuration]** > **[!UICONTROL Advanced]** > **[!UICONTROL Developer]** > **[!UICONTROL CSS Settings]**.

### Using the command line

To enable CSS merging in Adobe Commerce on cloud infrastructure:

1. Run this command locally:

   ```shell
   bin/magento config:set --lock-config dev/css/merge_css_files 1
   ```

1. Commit changes to the `app/etc/config.php` file and redeploy.

To enable CSS minification in Adobe Commerce on cloud infrastructure:

1. Run this command locally:

   ```shell
   bin/magento config:set --lock-config dev/css/minify_files 1
   ```

1. Commit changes to the `app/etc/config.php` file and redeploy.

## Minify JS files

### Using [!UICONTROL Admin]

On the [!UICONTROL Admin] sidebar, go to **[!UICONTROL Stores]** > **[!UICONTROL Settings]** > **[!UICONTROL Configuration]** > **[!UICONTROL Advanced]** > **[!UICONTROL Developer]** > **[!UICONTROL JavaScript Settings]**.

### Using the command line

To enable JS minification in Adobe Commerce on cloud infrastructure:

1. Run this command locally:

   ```shell
   bin/magento config:set --lock-config dev/js/minify_files 1
   ```

1. Commit changes to the `app/etc/config.php` file and redeploy.

## Bundle JS files

You can enable bundling in the Commerce [!UICONTROL Admin]: **[!UICONTROL Stores]** > ***[!UICONTROL Settings]** > **[!UICONTROL Configuration]** > **[!UICONTROL Advanced]** > **[!UICONTROL Developer]** > **[!UICONTROL JavaScript Settings]**.

>[!NOTE]
>
>Merging and bundling can't be enabled at the same time.

You can also enable Adobe Commerce built-in bundling (basic bundling) from the command line:

   ```shell
   php -f bin/magento config:set dev/js/enable_js_bundling 1
   ```

## Merge JS files (not recommended) {#merge-js-files}

>[!WARNING]
>
>We do not recommend enabling **[!UICONTROL Merge JavaScript Files]**. This setting was designed only for synchronously-loaded JavaScript in the **[!UICONTROL HEAD]** section of the page and can cause bundling and [!DNL RequireJS] logic to work incorrectly. It's kept for backward compatibility only and provides no performance benefit when HTTP/2 is enabled.
>
>If you have **[!UICONTROL Merge JavaScript Files]** enabled and encounter issues, try disabling it before applying any patches. See [ACSD-67908](../../../tools/quality-patches-tool/patches-available-in-qpt/v1-1-73/acsd-67908.md) if you can't disable merging.

## Additional information

- [Client-side optimization settings](../../../performance/configuration.md#client-side-optimization-settings)
- [Bundling tips](../../../performance/configuration.md#bundling-tips) in *Configuration best practices*—third-party bundling tools, HTTP/2, and guidance on deprecated JS and CSS merge
- [User Guide: Optimizing resource files](https://experienceleague.adobe.com/en/docs/commerce-admin/systems/tools/developer-tools#optimizing-resource-files)
- [Frontend Developer Guide: CSS merging, minification, and site performance](https://developer.adobe.com/commerce/frontend-core/guide/css/#css-merging-minification-and-performance)
- [Advanced JavaScript bundling](../../../performance/advanced-js-bundling.md)
