---
title: 'ACSD-66865: Saving a [!UICONTROL Catalog Price Rule] invalidates indexers and provides an alternative to reindex only affected products'
description: Apply the ACSD-66865 patch to fix the Adobe Commerce issue where  saving a [!UICONTROL Catalog Price Rules] invalidates indexers and provides an alternative to reindex only affected products.
feature: Price Rules, Price Indexer
role: Admin, Developer
type: Troubleshooting
exl-id: 68baf176-ee6e-4ba8-8a34-8adb8d1e16fe
---
# ACSD-66865: Saving a **[!UICONTROL Catalog Price Rule]** invalidates indexers and provides an alternative to reindex only affected products

The ACSD-66865 patch fixes the issue where saving a **[!UICONTROL Catalog Price Rule]** invalidates indexers and provides an alternative to reindex only affected products. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.68 is installed. The patch ID is ACSD-66865. Please note that this issue was fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p5

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.7 - 2.4.7-p6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Saving a **[!UICONTROL Catalog Price Rule]** causes all indexers to be invalidated, triggering full reindexes instead of reindexing only affected products.

<u>Steps to reproduce</u>:

1. Ensure cron isn't running and all indexers are set to update on schedule (except `customer_grid` which can update on save).
2. Run a full manual reindex using the command: `php bin/magento indexer:reindex`.
3. Verify all indexes show status *[!UICONTROL Ready]* with *0* items in the backlog.
4. On the Admin sidebar, go to **[!UICONTROL Marketing]** > *[!UICONTROL Promotions]* > **[!UICONTROL Catalog Price Rule]**. Create an active catalog price rule for a single product (for example, using a *SKU* condition).
5. Run the command: `php bin/magento indexer:status` to check indexer status.
6. Observe that multiple indexes are marked as **[!UICONTROL Reindex Required]** even though only one product is affected.

<u>Expected results</u>:

Only the affected product data is identified, and a partial reindex is triggered instead of a full reindex across all indexers.

<u>Actual results</u>:

A full reindex is triggered for all indexers, even when only a single product is affected by the **[!UICONTROL Catalog Price Rule]**.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
