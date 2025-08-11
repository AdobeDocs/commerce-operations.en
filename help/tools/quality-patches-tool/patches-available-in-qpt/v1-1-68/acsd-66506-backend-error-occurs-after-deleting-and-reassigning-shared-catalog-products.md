---
title: 'ACSD-66506: Backend error occurs after deleting and reassigning Shared Catalog products'
description: Apply the ACSD-66506 patch to fix the Adobe Commerce issue where the backend throws the error *The product that was requested doesn't exist. Verify the product and try again* after deleting previously assigned products and assigning new ones to a Shared Catalog.
feature: B2B
role: Admin, Developer
type: Troubleshooting
---

# ACSD-66506: Backend error occurs after deleting and reassigning Shared Catalog products

The ACSD-66506 patch fixes the issue where the backend throws the error *The product that was requested doesn't exist. Verify the product and try again* after deleting previously assigned products and assigning new ones to a Shared Catalog. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.68 is installed. The patch ID is ACSD-66506. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.7-p3 - 2.4.8-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Issue where the backend throws the error *The product that was requested doesn't exist. Verify the product and try again* after deleting previously assigned products and assigning new ones to a Shared Catalog.

<u>Steps to reproduce</u>:

1. Create some products using the performance toolkit: `bin/magento setup:perf:generate-fixtures setup/performance-toolkit/profiles/ce/small.xml`
1. Go to **[!UICONTROL [!DNL B2B] Features]** Configuration and enable both **[!UICONTROL Company]** and **[!UICONTROL Shared Catalog]**.
1. Create a new Shared Catalog.
1. Assign all generated products to the newly created Shared Catalog.
1. Use **[!UICONTROL Product Import]** to delete a product that was assigned to the Shared Catalog.
    1. Export a product filtered by SKU.
    1. Select **[!UICONTROL Import Behavior: Delete]**, then import the same file.
1. Open the Shared Catalog and configure pricing and structure.
    1. Select **[!UICONTROL Set Pricing and Structure]**.
    1. Click **[!UICONTROL Next]**, then **[!UICONTROL Generate Catalog]**.
    1. Click **[!UICONTROL Save]**.

<u>Expected results</u>:

No error occurs and products remain in the Shared Catalog even if an error occurs.

<u>Actual results</u>:

An error occurs: *The product that was requested doesn't exist. Verify the product and try again*, and all products are removed from the Shared Catalog.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
