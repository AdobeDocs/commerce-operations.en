---
title: 'ACSD-66404: Cron job fails to clear changelog tables due to [!DNL Galera Cluster] transaction size limits'
description: Apply the ACSD-66404 patch to fix the Adobe Commerce issue where with cron job not clearing changelog tables and causing [!DNL Galera Cluster] issues in case of large amount of data in these tables.
feature: System
role: Admin, Developer
type: Troubleshooting
---

# ACSD-66404: Cron job fails to clear changelog tables due to [!DNL Galera Cluster] transaction size limits

The ACSD-66404 patch fixes the issue where the cron job fails to clear changelog tables, causing [!DNL Galera Cluster] issues when handling large amounts of data. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.69 is installed. The patch ID is ACSD-66404. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p6, 2.4.7-p6

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.8-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Cron job not clearing changelog tables and causing [!DNL Galera Cluster] issues in case of large amount of data in these tables.

<u>Steps to reproduce</u>:

1. Generate a lot of products using performance profiles.
1. Perform a bulk update for all the products in the system, so there are a lot of entries in `inventory_cl` DB table.
1. Run the `indexer_clean_all_changelogs` cron job.

<u>Expected results</u>:

The `indexer_clean_all_changelogs` cron job is able to perform changelog cleanup on large changelog (10+ GB) in multiple delete queries, without causing [!DNL Galera Cluster] issues.

<u>Actual results</u>:

The `indexer_clean_all_changelogs` cron job performs changelog cleanup on large changelog (10+ GB) in a single delete query, causing [!DNL Galera Cluster] issues.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide
