---
title: 'ACSD-66082: Cannot update the swatch image of a product through product import'
description: Apply the ACSD-66082 patch to fix the Adobe Commerce issue where uploading a CSV file with the swatch_image field set to EMPTY_VALUE to unset swatch images causes the import process to fail with an error.
feature: Products, Data Import/Export, Media
role: Admin, Developer
type: Troubleshooting
exl-id: 0bfff90e-5f1f-4c87-8a99-efc5bb0d814b
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: 4067ab89-2e97-5de1-8d98-de8318461a8d
    internal-label: Products
  - id: 601e4abe-d9bf-58de-a779-32ed6794dcbe
    internal-label: Data Import/Export
  - id: 4ca54350-01cb-5b22-8966-5f2873dc6d90
    internal-label: Media
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
---
# ACSD-66082: Cannot update the swatch image of a product through product import

The ACSD-66082 patch fixes the issue where it was not possible to update the swatch image of a product through product import. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.68 is installed. The patch ID is ACSD-66082. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p5

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.6 - 2.4.8-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Uploading a CSV file with the `swatch_image` field set to `EMPTY_VALUE` to unset swatch images causes the import process to fail with an error.

<u>Steps to reproduce</u>:

1. Create a simple product. Go to **[!UICONTROL Catalog]** > **[!UICONTROL Products]**. Click the down arrow next to the **[!UICONTROL Add Product]** button and choose **[!UICONTROL Simple Product]**. Set its **[!UICONTROL SKU]** to *ABC*.
1. Upload a PNG image named *testing.png* to `var/import/images/`.
1. Create a CSV file with the following content:

    ```text
    sku,swatch_image,swatch_image_label
    ABC,testing.png,testing
    ```

1. Go to **[!UICONTROL System]** > **[!UICONTROL Import]** to import the file by adjusting the following settings:  
    * **[!UICONTROL Entity type]**: *Products*
    * **[!UICONTROL Import Behavior]**: *Add/Update*
    * Click **[!UICONTROL Choose File]** to select the CSV file created in the previous step to import. The import is successful, and the swatch is added.
1. Update the CSV with the following content:

    ```text
    sku,swatch_image,swatch_image_label
    ABC,__EMPTY__VALUE__,__EMPTY__VALUE__
    ```

1. Repeat the import process.

<u>Expected results</u>:

The swatch image is unset.

<u>Actual results</u>:

The import process throws an error.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/develop/upgrade/apply-patches) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
