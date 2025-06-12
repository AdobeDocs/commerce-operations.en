---
title: 'ACSD-54890: `aggregate_sales_report_bestsellers_data` causes [!DNL MySQL] errors'
description: Apply the ACSD-54890 patch to fix the Adobe Commerce issue where the `aggregate_sales_report_bestsellers_data` causes [!DNL MySQL] errors due to `/tmpdisk` being out of space.
feature: Attributes
role: Admin, Developer
exl-id: 21f926e0-a4f4-45ae-9397-4885a85db947
---
# ACSD-54890: `aggregate_sales_report_bestsellers_data` causes MySQL errors

The ACSD-54890 patch fixes the issue where the `aggregate_sales_report_bestsellers_data` causes [!DNL MySQL] errors due to `/tmpdisk` being out of space. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.42 is installed. The patch ID is ACSD-54890. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

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

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide

## Related reading

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide
* [Best practices for modifying database tables](https://experienceleague.adobe.com/en/docs/commerce-operations/implementation-playbook/best-practices/development/modifying-core-and-third-party-tables#why-adobe-recommends-avoiding-modifications) in the Commerce Implementation Playbook

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
