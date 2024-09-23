---
title: 'MDVA-40550: Products missing on the frontend after reindexing'
description: The MDVA-40550 patch solves the issue where reindexing results in some or all of storefront categories missing products. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.6 is installed. The patch ID is MDVA-40550. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.
exl-id: 0aca6eb2-6eb2-4ac4-8ae1-052f671c14e5
feature: Categories, Console, Products
role: Admin
---
# MDVA-40550: Products missing on the frontend after reindexing

The MDVA-40550 patch solves the issue where reindexing results in some or all of storefront categories missing products. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.6 is installed. The patch ID is MDVA-40550. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.2-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.5 - 2.4.3-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

<u>Steps to reproduce</u>:

1. Create a product.
1. Switch indexers to **Update by schedule**.
    * Assign the product to a category.
1. Enable xdebug and make xdebug breakpoint in `\Magento\Indexer\Model\Indexer::reindexAll` and `\Magento\Indexer\Model\IndexMutex::execute`.
1. Run a **full reindex** of `catalog_category_product` with the command:

    ```bash
    bin/magento indexer:reindex catalog_category_product
    ```

    * Wait for the execution to stop on the breakpoint `\Magento\Indexer\Model\Indexer::reindexAll`.

1. In another console, run a **partial reindex** in parallel with the command:

    ```bash
    bin/magento cron:run --group=index --bootstrap=standaloneProcessStarted=1
    ```

1. Wait for the execution to stop on the breakpoint `\Magento\Indexer\Model\IndexMutex::execute`. It will lock the `catalog_category_product` indexer.
1. Resume execution of the full reindex of `catalog_category_product` and wait for a lock timeout (60 seconds).

<u>Expected results</u>:

No error messages in console.

<u>Actual results</u>:

You get the following error:

*Could not acquire lock for index: catalog_category_product.*

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [Software Update Guide > Apply Patches](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching/mqp.html) in our developer documentation.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [Patches available in QPT](https://devdocs.magento.com/quality-patches/tool.html#patch-grid) in our developer documentation.
