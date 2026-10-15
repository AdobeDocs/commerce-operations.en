---
title: 'ACSD-66506: Backend error occurs after deleting and reassigning Shared Catalog products'
description: Apply the ACSD-66506 patch to fix the Adobe Commerce issue where the backend throws the error *The product that was requested doesn't exist. Verify the product and try again* after deleting previously assigned products and assigning new ones to a Shared Catalog.
feature: B2B
role: Admin, Developer
type: Troubleshooting
exl-id: db08c58b-7e14-4bd8-af85-8f63aba9051b
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: bd989d82-1e15-4534-88db-f1f51dd77ffa
    internal-label: Accounts
subfeature_v2:
  - id: f56d26ed-050b-4fb7-b29b-8e6e994e80a2
    internal-label: B2B
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
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

After deleting previously assigned products and assigning new ones to a **[!UICONTROL Shared Catalog]**, the backend returns the following error: *The product that was requested doesn't exist. Verify the product and try again*

<u>Steps to reproduce</u>:

1. Create some products using the performance toolkit: `bin/magento setup:perf:generate-fixtures setup/performance-toolkit/profiles/ce/small.xml`
1. Go to **[!UICONTROL [!DNL B2B] Features]** Configuration and Set **[!UICONTROL Enable Company]** and **[!UICONTROL Enable Shared Catalog]** to `Yes`.
1. Create a new Shared Catalog.
1. Assign all generated products to the newly created Shared Catalog.
1. Use **[!UICONTROL Product Import]** to delete a product that was assigned to the Shared Catalog.
    1. Export a product filtered by SKU.
    1. Select **[!UICONTROL Import Behavior: Delete]**, then import the same file.
1. Open the **[!UICONTROL Shared Catalog]** and configure pricing and structure.
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
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/develop/upgrade/apply-patches) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
