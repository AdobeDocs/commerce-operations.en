---
title: 'ACSD-60590: Enhancing performance of Bestsellers Aggregated Daily Report generation'
description: Apply the ACSD-60590 patch to fix the Adobe Commerce issue where the Bestsellers Aggregated Daily Report takes a significant amount of time to generate for a large volume of placed orders.
feature: Reporting
role: Admin, Developer
exl-id: 3b2b92eb-d4fc-4cd7-a117-a2c1caac72ec
type: Troubleshooting
---
# ACSD-60590: Enhancing performance of Bestsellers Aggregated Daily Report generation

The ACSD-60590 patch fixes the issue where the Bestsellers Aggregated Daily Report takes a significant amount of time to generate for a large volume of placed orders. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) 1.1.52 is installed. The patch ID is ACSD-60590. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.6-p7

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The Bestsellers Aggregated Daily Report takes significant time to generate for a large volume of placed orders.

<u>Prerequisites</u>

A large number of orders (For example: *500k*).

<u>Steps to reproduce</u>:

1. Run the following command:

    `update sales_order set created_at = DATE(DATE_SUB(NOW(), INTERVAL ROUND(RAND()*3650) DAY))  ;`
   
1. Run the `aggregate_sales_report_bestsellers_data` job.

<u>Expected results</u>:

The job finishes in less than 30 seconds.

<u>Actual results</u>:

The query takes around 10 minutes for each store for `created_at` dates.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
