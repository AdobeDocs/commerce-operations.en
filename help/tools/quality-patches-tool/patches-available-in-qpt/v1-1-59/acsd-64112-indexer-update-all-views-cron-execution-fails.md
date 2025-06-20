---
title: 'ACSD-64112: `indexer_update_all_views` cron execution fails when `MAGE_INDEXER_THREADS_COUNT` is set'
description: Apply the ACSD-64112 patch to fix the Adobe Commerce issue where the `indexer_update_all_views` cron execution fails when `MAGE_INDEXER_THREADS_COUNT` is set.
feature: Catalog Management, B2B
role: Admin, Developer
exl-id: c95f179d-5291-481f-b655-08a9db608513
type: Troubleshooting
---
# ACSD-64112: `indexer_update_all_views` cron execution fails when `MAGE_INDEXER_THREADS_COUNT` is set

>[!NOTE]
>
>This patch was replaced with [ACP2E-3705](/help/tools/quality-patches-tool/patches-available-in-qpt/v1-1-61/acp2e-3705-fixes-an-issue-where-the-indexer.md) for Adobe Commerce versions above 2.4.7.

The ACSD-64112 patch fixes the issue where the `indexer_update_all_views` cron execution fails when `MAGE_INDEXER_THREADS_COUNT` is set. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.59 is installed. The patch ID is ACSD-64112. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p10

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.5 - 2.4.6-p10

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The `indexer_update_all_views` cron execution fails when `MAGE_INDEXER_THREADS_COUNT` is set to a value greater than 2, specifically affecting the [!UICONTROL Customer Segments] indexer with B2B enabled.

<u>Steps to reproduce</u>:

1. Install a clean instance with B2B.
1. Enable **[!UICONTROL B2B Company]** and **[!UICONTROL Shared Catalog]**.
1. Create a category.
1. Create a few products and assign them to the category.
1. Execute a full reindex.
1. Set the following indexers to **[!UICONTROL Update on Schedule]**:

    ```
    bin/magento indexer:set-mode schedule catalogpermissions_category catalogpermissions_product
    ```

1. Go to the backend and load the newly created category. 
1. Click **[!UICONTROL Category Permissions]** and create a **[!UICONTROL New Permission]** for an existing customer group.
1. Ensure the `catalogpermissions_category` indexer has a backlog. Execute the following command to verify this:

    ```
    bin/magento indexer:status
    ```

1. Set the following indexer thread count in `env.php`:

    ```php
    'MAGE_INDEXER_THREADS_COUNT' => 8
    ```

1. Run the cron job:

    ```
    bin/magento cron:run
    ```

<u>Expected results</u>:

The cron job should execute without any issues.

<u>Actual results</u>:

The `indexer_update_all_views` cron job encounters the following error:

```
report.CRITICAL: PDOException: There is no active transaction in /home/vendor/magento/zend-db/library/Zend/Db/Adapter/Pdo/Abstract.php:326
```

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Additional steps required after the patch installation

(This section is optional; there might be some steps required after applying the patch to fix the issue.) 

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
