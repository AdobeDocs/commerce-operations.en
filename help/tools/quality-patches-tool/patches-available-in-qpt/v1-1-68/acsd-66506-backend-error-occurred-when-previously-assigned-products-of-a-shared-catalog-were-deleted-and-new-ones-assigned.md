---
title: 'ACSD-66506: Backend error occurred when previously assigned products of a Shared Catalog were deleted and new ones assigned'
description: Apply the ACSD-66506 patch to fix the Adobe Commerce issue where "The product that was requested doesn't exist. Verify the product and try again" error appears in the backend when previously assigned products are deleted from a Shared Catalog and new ones are assigned.
feature: B2B
role: Admin, Developer
---

# ACSD-66506: Backend error occurred when previously assigned products of a Shared Catalog were deleted and new ones assigned

The ACSD-66506 patch fixes the issue where fixes the backend error that occurred when previously assigned products of a Shared Catalog were deleted and new products were assigned. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.68 is installed. The patch ID is ACSD-66506. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.7-p3 - 2.4.8-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Issue where fixes the backend error that occurred when previously assigned products of a Shared Catalog were deleted and new products were assigned.

<u>Steps to reproduce</u>:

1. Create some products via the performance toolkit (**bin/magento setup:perf:generate-fixtures setup/performance-toolkit/profiles/ce/small.xml**).
1. Enable Company** and **Enable Shared Catalog** under **[!DNL B2B] Features* Configurations.
1. Create a new Shared Catalog.
1. Assign all the products to the new Shared Catalog.
1. Use Product Import to delete a product that was assigned to the Shared Catalog.
    1. Export a product filtered by SKU.
    1. Import the same file by selecting the **Import Behavior: Delete.**
1. Select "Set Pricing and Structure" on the Shared Catalog and just save (Configure > Next > Generate Catalog > Save).

<u>Expected results</u>:

1. No error occurs.
1. Additionally, products should not be removed from the Shared Catalog even if an error occurs.

<u>Actual results</u>:

1. An error occurs: **“The product that was requested doesn't exist. Verify the product and try again.”**
1. All products are removed from the Shared Catalog.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.