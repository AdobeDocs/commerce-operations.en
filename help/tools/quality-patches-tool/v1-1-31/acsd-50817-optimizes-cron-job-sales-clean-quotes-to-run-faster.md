---
title: 'ACSD-50817: Optimizes cron job sales_clean_quotes to run faster'
description: Apply the ACSD-50817 patch to optimize the cron job `sales_clean_quotes` to run faster by adding a composite index on the `store_id` and `updated_at` columns in the quote table.
exl-id: b08b12ff-37ac-4a7d-bce2-2a27e4f916f0
feature: Quotes
role: Admin
---
# ACSD-50817: Optimizes cron job `sales_clean_quotes` to run faster

The ACSD-50817 patch optimizes the cron job `sales_clean_quotes` to run faster by adding a composite index on the `store_id` and `updated_at` columns in the quote table. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.31 is installed. The patch ID is ACSD-50817.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.7 - 2.4.6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The cron job `sales_clean_quotes` is too slow. With this patch, it has been optimized to run faster by adding a composite index on the `store_id` and `updated_at` columns in the quote table.

<u>Steps to reproduce</u>:

1. Generate 50-80M of quotes with `updated_at` set as < 30 days period.
1. Run the cron job `sales_clean_quotes` or the following query on the quote table:

    ```cron
    SELECT COUNT(*) FROM `quote` AS `main_table` WHERE (`store_id` = '1') AND (`updated_at` <= '2023-02-25') AND (`is_persistent` = '0')

    SELECT * FROM `quote` AS `main_table` WHERE (`store_id` = '1') AND (`updated_at` <= '2023-02-25') AND (`is_persistent` = '0') LIMIT 50
    ```
    
<u>Expected results</u>

Cron job `sales_clean_quotes` is optimized to run faster by adding a composite index on the `store_id` and `updated_at` columns in the quote table.

<u>Actual results</u>

The query is too slow.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
