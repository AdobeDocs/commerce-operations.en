---
title: 'ACSD-63323: Resolves [!UICONTROL Select All] functionality and enhances pagination and record count in product category popup'
description: Apply the ACSD-63323 patch to fix the Adobe Commerce issue where the [!UICONTROL Select All] option doesn't work when adding products to a category. Additionally, it ensures that pagination and the record count label function correctly when adding products to a category via the popup grid.
feature: Products
role: Admin, Developer
---

# ACSD-63323: resolves [!UICONTROL Select All] functionality and enhances pagination and record count in product category popup

The ACSD-63323 patch fixes the issue where the [!UICONTROL Select All option doesn't work when adding products to a category. Additionally, it ensures that pagination and the record count label function correctly when adding products to a category via the popup grid. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) is installed. The patch ID is ACSD-63323. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**
* Adobe Commerce on-premises 2.4.7-p2
* Adobe Commerce on cloud infrastructure 2.4.7-p2

**Compatible with Adobe Commerce versions:**
* Adobe Commerce on-premises 2.4.7 - 2.4.7-p4
* Adobe Commerce on cloud infrastructure 2.4.7 - 2.4.7-p4

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Fixes the issue where the Select all option doesn't work in Admin > **[!UICONTROL Categories]** > a category >  [!UICONTROL Products in Category] > **[!UICONTROL Add Products]**. Additionally, it ensures that pagination and the record count label function correctly when adding products to a category via the popup grid.


<u>Steps to reproduce</u>:

1. Generate 1200 products using the command:

   ```bash
   bin/magento setup:perf:generate-fixtures ./setup/performance-toolkit/profiles/ce/small.xml
   ```

1. Open **[!UICONTROL Catalog]** > **[UICONTROL Products]** and see the number of products: *1200* records found.
1. Open a Default Category > *[!UICONTROL Products in Category]* > **[!UICONTROL Add Products]**.
1. Click on Assign > **[!UICONTROL Select All]**.
1. Change the number of products on the page to value = *5*.


**Expected results**: 

The message should be: 1200 records found (1200 selected).

**Actual results**:

* Pagination doesn't work.
* The wrong message is shown: 5 records found (20 selected).

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.


## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]]: A self-service tool for quality patches in the Tools guide (/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.


