---
title: 'ACSD-51857: Slow cron job of `aggregate_sales_report_bestsellers_data` affects performance'
description: Apply the ACSD-51857 patch to fix the Adobe Commerce issue where slow cron job `aggregate_sales_report_bestsellers_data` affects large `sales_order` and `sales_order_item` database tables.
exl-id: 444ab283-c98b-46b3-a492-706f0ce34a27
---
# ACSD-51857: Slow cron job of `aggregate_sales_report_bestsellers_data` affects performance

The ACSD-51857 patch fixes the issue where slow cron job `aggregate_sales_report_bestsellers_data` affects large `sales_order` and `sales_order_item` database tables. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.34 is installed. The patch ID is ACSD-51857. Please note that the issue was fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.3-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.0 - 2.4.6-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Cron job performance of `aggregate_sales_report_bestsellers_data` is slow on `sales_order` and `sales_order_item` database tables.

To resolve this, the main data query that grabs data for the report has been re-written to a more efficient form. It now uses a sub-query to determine data subset. 

In order for the sub-query to function as fast as possible, a new index was added for the `sales_order` database table: `SALES_ORDER_STORE_STATE_CREATED` based on `store_id`, `state`, and `created_at` columns.

<u>Prerequisites</u>

Ensure a large number of orders daily.

<u>Steps to reproduce</u>

1. Execute the `aggregate_sales_report_bestsellers_data` cron job.
1. Check the data to be displayed in the Admin dashboard, under the **[!UICONTROL Bestsellers]** tab.

<u>Expected results</u>:

*[!UICONTROL Quantity per source]* under the **[!UICONTROL Configuration]** tab shouldn't be empty.

<u>Actual results</u>:

*[!UICONTROL Quantity per source]* under the **[!UICONTROL Configuration]** tab is empty.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
