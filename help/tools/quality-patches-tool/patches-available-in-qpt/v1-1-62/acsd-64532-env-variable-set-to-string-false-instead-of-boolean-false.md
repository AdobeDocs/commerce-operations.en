---
title: 'ACSD-64532: ENV variable set to *false* is treated as a string *false* instead of a BOOLEAN *FALSE*'
description: Apply the ACSD-64532 patch to fix the Adobe Commerce issue where a `ENV` variable set to *false* is treated as a string *false* instead of a `BOOLEAN *FALSE*`.
feature: Variables
role: Admin, Developer
---

# ACSD-64532: ENV variable set to "false" is treated as a string "false" instead of a BOOLEAN FALSE

The ACSD-64532 patch fixes the issue where the `ENV` variable set to *false* is treated as a string *false* instead of a `BOOLEAN *FALSE*`. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.62 is installed. The patch ID is ACSD-64532. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**
Adobe Commerce (all deployment methods) 2.4.6-p8

**Compatible with Adobe Commerce versions:**
Adobe Commerce (all deployment methods) 2.4.6-p2 - 2.4.7-p4

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

`ENV` variable set to *false* is treated as a string *false* instead of a `BOOLEAN *FALSE*`.

<u>Steps to reproduce</u>:
1. Add `env:MAGENTO_DC_INDEXER__USE_APPLICATION_LOCK` with value *false* to environment variables on Adobe Cloud.
1. Wait for redeployment.
1. Run the script checking the value:

    ```php
    <?php
    require '../app/bootstrap.php';
    $bootstrap = \Magento\Framework\App\Bootstrap::create(BP, $_SERVER);
    $objectManager = $bootstrap->getObjectManager();
    $deploymentConfig = $objectManager->get('Magento\Framework\App\DeploymentConfig');
    $useAppLock = $deploymentConfig->get('indexer/use_application_lock');

    var_dump($useAppLock);

    $configParsedValue = $deploymentConfig->get('indexer/use_application_lock') ?: false;

    var_dump($configParsedValue); 
    ```

<u>Expected results</u>:
`$configParsedValue`, which is the result of method `isUseApplicationLock()`, must return a negative value in order to be correctly interpreted inside method `\Magento\Indexer\Model\Mview\View\State::getStatus()`.

<u>Actual results</u>:
`$configParsedValue` has a value of *`string(5) false`*.
