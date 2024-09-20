---
title: 'ACSD-54890: `aggregate_sales_report_bestsellers_data` causes [!DNL MySQL] errors'
description: Apply the ACSD-54890 patch to fix the Adobe Commerce issue where the `aggregate_sales_report_bestsellers_data` causes [!DNL MySQL] errors due to `/tmpdisk` being out of space.
feature: Attributes
role: Admin, Developer
exl-id: 21a675dc-0750-4dc6-8cce-33e301f601bd
---
# ACSD-54890: `aggregate_sales_report_bestsellers_data` causes MySQL errors

The ACSD-54890 patch fixes the issue where the `aggregate_sales_report_bestsellers_data` causes [!DNL MySQL] errors due to `/tmpdisk` being out of space. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.42 is installed. The patch ID is ACSD-54890. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.0 - 2.4.6-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The `aggregate_sales_report_bestsellers_data` causes **[!DNL MySQL]** errors due to `/tmpdisk` being out of space.

<u>Steps to reproduce</u>:

Execute the `aggregate_sales_report_bestsellers_data` cron job when the `sales_bestsellers_aggregated_daily` table has an enormous amount of records, like tens of millions of records.

<u>Expected results</u>:

No errors occur.

<u>Actual results</u>:

The following error occurs:
`report.ERROR: Cron Job aggregate_sales_report_bestsellers_data has an error: SQLSTATE[HY000]: General error: 3 Error writing file '/tmp/#sql/fd=72' (Errcode: 28 "No space left on device")`

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
