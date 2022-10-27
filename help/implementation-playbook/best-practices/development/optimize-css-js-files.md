---
title: Optimize CSS and JS files
description: Learn how to merge and minify CSS and JS files for Adobe Commerce projects using the Admin or command line.
role: Developer
feature: Best Practices
feature-set: Commerce
---

# Optimize CSS and JS files

For a more responsive Commerce site, reduce the time required to load CSS and Javascript (JS) files by configuring Adobe Commerce to merge, minify, and bundle separate files into a single file.

## Affected products and versions

[All supported versions, 2.3 and later](../../../release/versions.md) of:

* Adobe Commerce on cloud infrastructure
* Adobe Commerce on-premises
* Magento Open Source

## Merge or minify CSS files

The time it takes to load CSS and Javascript (JS) files can be reduced by merging, minifying, and bundling separate files into a single file.

>[!IMPORTANT] 
>
>Adobe Commerce on cloud infrastructure always runs on Production mode and it is not possible to set it otherwise, therefore you must use the command line method to enable merging, minifying, and bundling.

### Using Admin

To enable CSS merging or minification, go into the [!UICONTROL **Admin** > **Stores** > **Setting** > **Configuration** > **Advanced** > **Developer** > **CSS Settings**].

### Using the command line

To enable CSS merging in Adobe Commerce on cloud infrastructure:

1. Run this command locally:

   ```bash
   bin/magento config:set --lock-config dev/css/merge_css_files 1
   ```

1. Commit changes to the `app/etc/config.php` file and redeploy.

To enable CSS minification in Adobe Commerce on cloud infrastructure:

1. Run this command locally:

   ```bash
   bin/magento config:set --lock-config dev/css/minify_files 1
   ```

1. Commit changes to the `app/etc/config.php` file and redeploy.

## Minify JS files

### Using Admin

On the *Admin* sidebar, go to **Stores** > **Settings** > **Configuration** > **Advanced** > **Developer** > **JavaScript Settings**.

### Using the command line

To enable JS minification in Adobe Commerce on cloud infrastructure:

1. Run this command locally:

   ```bash
   bin/magento config:set --lock-config dev/js/minify_files 1
   ```

1. Commit changes to the `app/etc/config.php` file and redeploy.

## Merge and bundle JS files

* You can turn on merging or bundling in the Commerce Admin (merging and bundling cannot be enabled at the same time): [!UICONTROL **Stores** > **Settings** > **Configuration** > **Advanced** > **Developer** > **JavaScript Settings**].
* You can also enable Adobe Commerce built-in bundling (basic bundling) from the command line:

   ```bash
   php -f bin/magento config:set dev/js/enable_js_bundling 1
   ```

## Additional information

* To learn more about optimizing resource files, refer to [Optimizing Resource Files](https://docs.magento.com/user-guide/system/file-optimization.html) in our user guide.
* To learn to enable CSS file optimization, refer to [Frontend Developer Guide > Cascading style sheets (CSS) > CSS merging](https://devdocs.magento.com/guides/v2.3/frontend-dev-guide/css-topics/css-overview.html#css-merging-minification-and-performance), minification and performance in our developer documentation.
