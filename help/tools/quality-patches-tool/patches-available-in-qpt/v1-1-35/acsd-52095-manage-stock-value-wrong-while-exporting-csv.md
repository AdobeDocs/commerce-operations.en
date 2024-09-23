---
title: 'ACSD-52095: Manage stock value is wrong while exporting CSV'
description: Apply the ACSD-52095 patch to fix the Adobe Commerce issue where the product manage stock value is wrong while exporting CSV.
feature: Inventory, Products
role: Admin, Developer
exl-id: 9e599931-e9b1-4216-b78d-3993d9c3132d
---
# ACSD-52095: [!UICONTROL Manage Stock] value is wrong while exporting CSV

The ACSD-52095 patch fixes the issue where the product `manage_stock` value is wrong while exporting CSV. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.35 is installed. The patch ID is ACSD-52095. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.7 - 2.4.5-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The `manage_stock` value is incorrectly set to 0 in the CSV file after product export.

<u>Steps to reproduce</u>:

1. Go to **[!UICONTROL Admin]** > **[!UICONTROL Store]** > **[!UICONTROL Configuration]** > **[!UICONTROL Catalog]** > **[!UICONTROL Inventory]** > **[!UICONTROL Product Stock Options]** and set **[!UICONTROL Manage Stock]** = *[!UICONTROL No]*.
1. Create a new product and save it.
1. Go to **[!UICONTROL System]** > **[!UICONTROL Export]**.
1. Select *[!UICONTROL Entity Type]* = *[!UICONTROL Products]* and export the products.
1. Check the generated CSV file: `manage_stock` = 0, `use_config_manage_stock` = 1.
1. Again go to **[!UICONTROL Admin]** > **[!UICONTROL Store]** > **[!UICONTROL Configuration]** > **[!UICONTROL Catalog]** > **[!UICONTROL Inventory]** > **[!UICONTROL Product Stock Options]**, and set  **[!UICONTROL Manage Stock]** = *[!UICONTROL Yes]*.
1. Go to **System** > **Export**.
Select *[!UICONTROL Entity Type]* = *[!UICONTROL Products and export the products]*.
1. Check the generated CSV file: `manage_stock` = 0, `use_config_manage_stock` = 1.
1. Open the product in the Admin, go to **[!UICONTROL Advanced Inventory]** and check the **[!UICONTROL Manage Stock]** value.

<u>Expected results</u>

The **[!UICONTROL Manage Stock]** value is *1* when it is enabled for the products.

<u>Actual results</u>

The **[!UICONTROL Manage Stock]** value is *0* when it is enabled for the products.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](<https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html>) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](<https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html>) in the [!DNL Quality Patches Tool] guide.
