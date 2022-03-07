---
title: How Patches Work
description: Learn about the different types of patches for Adobe Commerce and Magento Open Source and how they work.
---

# How patches work

>[!WARNING]
>
>We strongly recommend testing all patches in a staging or development environment before deploying to production. We also strongly recommend backing up your data before applying a patch. See [Back up and roll back the file system](https://devdocs.magento.com/guides/v2.4/install-gde/install/cli/install-cli-backup.html).

Patch (or diff) files are text files that note:

- The file(s) to be changed.
- The line number to begin the change and the number of lines to be changed.
- The new code to swap in.

When the [patch](https://en.wikipedia.org/wiki/Patch_(Unix)) program is run, this file is read in and the specified changes are made to the file(s).

There are three types of patches:

- **Hotfixes**—Patches that Adobe publishes on the [Security Center](https://magento.com/security/patches).
- **Individual patches**—Patches that Adobe Commerce Support creates and distributes on an individual basis.
- **Custom patches**—Unofficial patches that you can create from a git commit.

## Hotfixes

Hotfixes are patches that contain high-impact security or quality fixes that affect many merchants. These fixes are applied to the next patch release for the applicable minor version. Adobe releases hotfixes as needed.

You can find hotfixes in the [Security Center](https://magento.com/security/patches). Follow the instructions on the page to download the patch file, depending on your version and installation type. Use the [command line](../patches/apply.md#) or [Composer](../patches/apply.md) to apply hot fix patches.

>[!NOTE]
>
>Hot fixes can contain backward incompatible changes.

## Individual patches

Individual patches contain low-impact quality fixes for a specific issue. These fixes are applied to the most recently supported minor version (for example, 2.4.x), but could be missing from the previous supported minor version (for example, 2.3.x). Adobe releases individual patches as needed.

Use the [Quality Patches Tool](https://devdocs.magento.com/quality-patches/tool.html) to apply individual patches.

>[!NOTE]
>
>Individual patches do not contain backward incompatible changes.

## Custom patches

Sometimes it takes a while for the Adobe Engineering Team to include a bug fix made on GitHub in an Adobe Commerce or Magento Open Source Composer release. In the meantime, you can create a patch from GitHub and use the [`cweagans/composer-patches`](https://github.com/cweagans/composer-patches/) plugin to apply it to your Composer-based installation.

Use the [command line][] or [Composer][] to apply custom patches.

There are many ways to create custom patch files. The following example focuses on creating a patch from a known git commit.

To create a custom patch:

1. Create a `patches/composer` directory in your local project.
1. Identify the GitHub commit or pull request to use for the patch. This example uses the [`2d31571`](https://github.com/magento/magento2/commit/2d31571f1bacd11aa2ec795180abf682e0e9aede) commit, linked to GitHub issue [#6474](https://github.com/magento/magento2/issues/6474).
1. Append the `.patch` or the `.diff` extensions to the commit URL. Use `.diff` for a smaller file size. For example: [https://github.com/magento/magento2/commit/2d31571f1bacd11aa2ec795180abf682e0e9aede.diff](https://github.com/magento/magento2/commit/2d31571f1bacd11aa2ec795180abf682e0e9aede.diff)
1. Save the page as a file in the `patches/composer` directory. For example, `github-issue-6474.diff`.
1. Edit the file and remove `app/code/<VENDOR>/<PACKAGE>` from all paths so that they are relative to the `vendor/<VENDOR>/<PACKAGE>` directory.

   >[!NOTE]
   >
   >Text editors that automatically remove trailing whitespace or add new lines can break the patch. Use a simple text editor to make these changes.

The following example shows the previously mentioned DIFF file after removing all instances of `app/code/Magento/Payment`:

```diff
diff --git a/view/frontend/web/js/view/payment/iframe.js b/view/frontend/web/js/view/payment/iframe.js
index c8a6fef58d31..7d01c195791e 100644
--- a/view/frontend/web/js/view/payment/iframe.js
+++ b/view/frontend/web/js/view/payment/iframe.js
@@ -154,6 +154,7 @@ define(
              */
             clearTimeout: function () {
                 clearTimeout(this.timeoutId);
+                this.fail();
 
                 return this;
             },
```

## Applying patches

You can apply patches using any of the following methods:

-  [Quality Patches Tool](https://devdocs.magento.com/quality-patches/tool.html)
-  [Command line](/help/upgrade/patches/apply.md#command-line)
-  [Composer](/help/upgrade/patches/apply.md#composer)

>[!NOTE]
>
>To apply a patch to an Adobe Commerce on cloud infrastructure project, see [Apply patches](https://devdocs.magento.com/cloud/project/project-patch.html) in the _Cloud guide_.
