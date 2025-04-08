---
title: 'ACP2E-3705: `indexer_update_all_views` cron execution fails when `MAGE_INDEXER_THREADS_COUNT` is set'
description: Apply the ACP2E-3705 patch to fix the Adobe Commerce issue where the `indexer_update_all_views` cron execution fails when `MAGE_INDEXER_THREADS_COUNT` is set.
feature: Catalog Management, B2B
role: Admin, Developer
---

# ACP2E-3705: `indexer_update_all_views` cron execution fails when `MAGE_INDEXER_THREADS_COUNT` is set

>[!NOTE]
>
>This patch replaces the [ACSD-64112](/help/tools/quality-patches-tool/patches-available-in-qpt/v1-1-59/acsd-64112-indexer-update-all-views-cron-execution-fails.md) for versions 2.4.7 and above.

The ACP2E-3705 patch fixes the issue where the `indexer_update_all_views` cron execution fails when `MAGE_INDEXER_THREADS_COUNT` is set. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.61 is installed. The patch ID is ACP2E-3705. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.7 - 2.4.7-p4

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The `indexer_update_all_views` cron execution fails when `MAGE_INDEXER_THREADS_COUNT` is set to a value greater than *2*, specifically affecting the [!UICONTROL Customer Segments] indexer with B2B enabled.

<u>Steps to reproduce</u>:

1. Apply the QPT patch [ACSD-64112](/help/tools/quality-patches-tool/patches-available-in-qpt/v1-1-59/acsd-64112-indexer-update-all-views-cron-execution-fails.md).
1. Go to **[!UICONTROL Admin]** > **[!UICONTROL Stores]** > **[!UICONTROL Configuration]** > **[!UICONTROL Catalog]** > **[!UICONTROL Category permissions]**.
1. Enable **[!UICONTROL Category Permissions]**.
1. Set the following indexers to **[!UICONTROL Update on Schedule]** mode:

    ```
    bin/magento indexer:set-mode schedule catalogpermissions_category catalogpermissions_product
    ```

1. Create a few products and assign them to a category.
1. Execute a full reindex.
1. Go to a category and set **[!UICONTROL Category Permissions]**.
1. Run `indexer_update_all_views` cron job with `MAGE_INDEXER_THREADS_COUNT` set to *8*.

<u>Expected results</u>:

* Reindex is completed without any errors.

<u>Actual results</u>:

```
Magento\Framework\DB\Adapter\TableNotFoundException: SQLSTATE[42S02]: Base table or view not found: 1146 Table 'magento.catalogpermissions_category_cl__tmp67acb6582cec12_69065236' doesn't exist, query was: SELECT MAX(id) as max, COUNT(*) as cnt FROM (SELECT `catalogpermissions_category_cl__tmp67acb6582cec12_69065236`.* FROM
```


## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: Upgrades and Patches > Apply Patches in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
