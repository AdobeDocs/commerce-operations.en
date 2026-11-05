---
title: 'ACSD-56246: Scheduling product updates clear multiselect attribute values'
description: Apply the ACSD-56246 patch to fix the Adobe Commerce issue where scheduling product updates clear multiselect attribute values.
feature: Products, Attributes, Staging
role: Admin, Developer
exl-id: 1751a03d-2610-423f-be2f-b9d060452904
type: Troubleshooting
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: 4067ab89-2e97-5de1-8d98-de8318461a8d
    internal-label: Products
  - id: 76cfaac4-e563-56dd-8938-708bf8b84956
    internal-label: Attributes
  - id: 0054e3a7-7067-583b-bfd2-ab39dada9ab5
    internal-label: Staging
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
---
# ACSD-56246: Scheduling product updates clears multiselect attributes values

The ACSD-56246 patch fixes the issue where scheduling product updates clears multiselect attributes values. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.44 is installed. The patch ID is ACSD-56246. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods)  2.4.6-p3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.6 - 2.4.6-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The scheduled product updates clear multiselect attribute values.

<u>Steps to reproduce</u>:

1. Install Adobe Commerce.
1. Go to **[!UICONTROL Admin]** > **[!UICONTROL Stores]** > **[!UICONTROL Attributes]** > **[!UICONTROL Product]** and create the following attribute:

    * Default Label: Program
    * Catalog Input Type for Store Owner: Multiple Select
    * Manage Options (Values of Your Attribute): Choice, Sunscape, Safetyshield
    * Attribute Code: customer_program
    * Scope: Global
    * Add to Column Options: No
    * Use in Filter Options: No
    * Storefront Properties
    * Position: *333*
    * Allow HTML Tags on Storefront: No
  
1. Run
`bin/magento setup:perf:generate-fixtures setup/performance-toolkit/profiles/ce/small.xml`. 
1. Run
`bin/magento setup:upgrade`.
1. Go to the **[!UICONTROL Admin]** > Pick any simple product > Select all items in program attribute > Click on **[!UICONTROL Save the product]**.
1. Schedule an update for this product in the next minute, and run the command below to get the Content Staging working:
`for i in {1..100}; do bin/magento cron:run; done`.

<u>Expected results</u>:

The product's **[!UICONTROL program]** attribute should not change.

<u>Actual results</u>:

The product's **[!UICONTROL program]** attribute is cleared.
 
## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/develop/upgrade/apply-patches) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
