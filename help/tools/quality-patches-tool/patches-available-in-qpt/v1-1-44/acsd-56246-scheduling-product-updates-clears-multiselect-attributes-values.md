---
title: 'ACSD-56246: Scheduling product updates clear multiselect attribute values'
description: Apply the ACSD-56246 patch to fix the Adobe Commerce issue where scheduling product updates clear multiselect attribute values.
feature: Products, Attributes, Staging
role: Admin, Developer
exl-id: ddca8ac0-6aa8-4bf1-b8c2-4819758cb198
---
# ACSD-56246: Scheduling product updates clears multiselect attributes values

The ACSD-56246 patch fixes the issue where scheduling product updates clears multiselect attributes values. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.44 is installed. The patch ID is ACSD-56246. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

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

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
