---
title: 'ACSD-62577: Storefront search performance optimization'
description: Apply the ACSD-62577 patch to fix the Adobe Commerce issue where storefront search performance is degraded due to slow query execution caused by a large `search_query` table.
feature: Search
role: Admin, Developer
---
# ACSD-62577: Storefront search performance optimization

The ACSD-62577 patch fixes the issue with slow performance of storefront search queries by optimizing both query and table indexes. This patch is available with the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.56. The patch ID is ACSD-62577. Please note that the issue was is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods) 2.4.6, 2.4.7-p2

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Large `search_query` tables significantly slow down storefront searches, increasing frontend response times due to inefficient queries and lack of optimized table indexes.

<u>Steps to reproduce</u>:

1. Set up Adobe Commerce Develop using the performance toolkit `small.xml`.
1. Access the SQL command line and delete the search_query table using the following commands:

    ```
    SET FOREIGN_KEY_CHECKS = 0;  
    DROP TABLE search_query;  
    SET FOREIGN_KEY_CHECKS = 1;  
    ```
1. Populate the `search_query` table with a large number of records, ex: 4 million records.
1. Trigger reindexing and flush caches.

    ```
    bin/magento indexer:reindex  
    bin/magento c:c  
    bin/magento c:f  

    ```
1. Enable database debug logs:

    ```
    bin/magento dev:query-log:enable  
    ```
1. Search a term in the storefront search bar, e.g., 
`http://your_magento_instance/default/catalogsearch/result/?q=test.`
1. Check the db.log for the query execution time for the following SQL:

    ```
    SELECT COUNT(*) FROM (  
    SELECT DISTINCT `main_table`.`query_text`  
    FROM `search_query` AS `main_table`  
    WHERE (main_table.store_id IN (1))  
    AND (main_table.num_results > 0)  
    ORDER BY `main_table`.`popularity` DESC  
    LIMIT 100  ) AS `result` WHERE (result.query_text = 'test')  
    ```
<u>Expected results</u>:

The query execution time is optimized, resulting in a less significant increase in response time when processing large `search_query` tables.

<u>Actual results</u>:

The query execution time increases significantly due to inefficient handling of the large search_query table:

```
TIME: 10.8520 seconds  

```
## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
