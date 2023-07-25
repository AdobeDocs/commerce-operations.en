---
title: Usage
description: Learn how to use the [!DNL Quality Patches Tool].
exl-id: f9ad37e9-2d0f-4bc8-a98b-6d60b6f56d42
feature: Configuration, Install
---
# Usage

The [[!DNL Quality Patches Tool]](https://github.com/magento/quality-patches) delivers individual patches developed by Adobe and the Magento Open Source community. It allows you to apply, revert, and view general information about all individual patches that are available for the installed version of Adobe Commerce or Magento Open Source. You can apply patches to Adobe Commerce and Magento Open Source projects regardless of who developed the patch. For example, you can apply a patch developed by the community to Adobe Commerce projects.


Watch this [technical video](https://experienceleague.adobe.com/docs/commerce-learn/tutorials/tools/quality-patch-tool.html?lang=en) and learn how to use the Quality Patches Tool for Adobe Commerce and Magento Open Source.

>[!INFO]
>
>See [Apply individual patches](#apply-individual-patches) for instructions on applying patches to your Adobe Commerce or Magento Open Source projects. See [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) to review a full list of released patches.

>[!WARNING]
>
>It is not recommended to use the [!DNL Quality Patches Tool] to apply large numbers of patches because it increases the complexity of your code and makes upgrading to a new version more difficult.

## Install

>[!INFO]
>
>If it is not already installed, you must install [[!DNL Git]](https://github.com/git-guides/install-git) or [Patch](https://man7.org/linux/man-pages/man1/patch.1.html) before installing the [!DNL Quality Patches Tool]. Add the `magento/quality-patches` Composer package to your `composer.json` file:

```bash
composer require magento/quality-patches
```

## View individual patches

To view the list of individual patches available for your version of Adobe Commerce or Magento Open Source:

```bash
./vendor/bin/magento-patches status
```

You will see output similar to the following:

| Id | Title | Type | Status | Details |
|--- |--- |--- |--- |--- |
| MAGECLOUD-5069 | FPC is getting disabled during deployments  | Optional |Not applied | Affected components:<br> - magento/module-page-cache |
| MCLOUD-5650 | Hold deployment config after reading from file | Optional | Not applied | Affected components:<br> - magento/framework |
| MCLOUD-5684 | Pagination Not working - product_list_limit=all | Optional | Not applied | Affected components: - magento/module-elasticsearch |
| MCLOUD-5837  | Fix load balancer issue | Deprecated | Applied |Recommended replacement: MC-1 <br> Affected components: - magento/framework |
| BUNDLE-2554  | Set Payment info bug | Optional |  Not applied|  Affected components: <br>- amzn/amazon-pay-module |
| MC-1    | Fixes issue 1 | Optional | Applied |  Affected components: <br> - magento/module-cms |
| MC-2  | Fixes issue 2  | Optional | Not applied |  Affected components: <br> - magento/module-cms |
| MC-3  | Fixes issue 3  | Optional  | Not applied | Required patches:<br> - MC-2 <br>Affected components: <br>- magento/module-cms |  
|  MC-3-V2   | Updated fix for issue 3, replaces MC-3 patch  | Optional | N/A  | Affected components:  <br>- magento/module-cms  |  

Adobe Commerce 2.3.5.

The status table includes:

-  **Type**:
    -  `Optional` — All patches from the [!DNL Quality Patches Tool] and the [Commerce on Cloud Infrastructure Guide > Apply patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) package are optional for Adobe Commerce and Magento Open Source installations.
    -  `Deprecated` — Adobe has deprecated the individual patch. If you have applied the patch, we recommend that you revert it. The revert operation also removes the patch from the status table.

-  **Status**:
    -  `Applied` — The patch has been applied.
    -  `Not applied` — The patch has not been applied.
    -  `N/A` — The status of the patch cannot be defined due to conflicts.

-  **Details**:
    -  `Affected components` — The list of affected modules.
    -  `Required patches` — The list of patches that must be applied for an indicated patch to work properly (dependencies).
    -  `Recommended replacement` — The patch that is a recommended replacement for a deprecated patch.

>[!INFO]
>
>After upgrading to a new version of Adobe Commerce or Magento Open Source, you must re-apply patches if the patches are not included in the new version. See [Re-apply patches after an upgrade](#re-apply-patches-after-an-upgrade).

## Apply individual patches {#apply-individual-patches}

>[!WARNING]
>
>It is a best practice to test all patches in a staging or development environment before deploying to production. It is also recommended to back up your data before applying a patch. See [Backup and rollback the file system, media, and database](https://experienceleague.adobe.com/docs/commerce-operations/installation-guide/tutorials/backup.html).

To apply a single patch, run the following command where `MAGETWO-XXXX` is the patch ID specified in the status table:

```bash
./vendor/bin/magento-patches apply MAGETWO-XXXX
```

You can also apply several patches at the same time by separating each additional patch ID with a space:

```bash
./vendor/bin/magento-patches apply MAGETWO-XXXX MAGETWO-YYYY
```

You must clean the cache after applying patches to see changes in the Adobe Commerce application:

```bash
./bin/magento cache:clean
```

>[!INFO]
>
>Consider keeping a list of applied patches in a separate location. You might need to re-apply some of them after upgrading to a new version of Adobe Commerce or Magento Open Source. See [Re-apply patches after an upgrade](#re-apply-patches-after-an-upgrade).

## Revert individual patches

>[!WARNING]
>
>It is a best practice to test all patches in a staging or development environment before deploying to production. It is also recommended to back up your data before applying a patch. See [Backup and rollback the file system, media, and database](https://experienceleague.adobe.com/docs/commerce-operations/installation-guide/tutorials/backup.html).

To revert a single patch, run the following command where `MAGETWO-XXXX` is the patch ID specified in the status table:

```bash
./vendor/bin/magento-patches revert MAGETWO-XXXX
```

Also, you can revert several patches at the same time by separating each additional patch ID with a space:

```bash
./vendor/bin/magento-patches revert MAGETWO-XXXX MAGETWO-YYYY
```

To revert all applied patches:

```bash
./vendor/bin/magento-patches revert --all
```

You must clean the cache after reverting patches to see changes in the Adobe Commerce application:

```bash
./bin/magento cache:clean
```

## Get updates

Adobe Commerce periodically releases new individual patches. You must update the [!DNL Quality Patches Tool] to get new individual patches:

```bash
composer update magento/quality-patches
```

View the added patches:

>[!TIP]
>
>New add patches display at the bottom of the table.

```bash
./vendor/bin/magento-patches status
```

## Re-apply patches after an upgrade {#re-apply-patches-after-an-upgrade}

When you upgrade to a new version of Adobe Commerce or Magento Open Source, you must re-apply patches if the patches are not included in the new version.

To re-apply patches:

1. Update the [!DNL Quality Patches Tool]:

   ```bash
   composer update magento/quality-patches.
   ```

1. Open the list of previously applied patches, which was recommended in [Apply individual patches](#apply-individual-patches).

1. Apply the patches:

   ```bash
   ./vendor/bin/magento-patches apply MAGETWO-XXXX
   ```

   The best practice is to apply patches one at a time.

1. Clean the cache:

   ```bash
   ./bin/magento cache:clean
   ```

   >[!INFO]
   >
   >When you run the `status` command, the patches that were included in the new version are no longer displayed in the table of available patches.

## Logging

The [!DNL Quality Patches Tool] logs all operations in the `<Magento_root>/var/log/patch.log` file.
