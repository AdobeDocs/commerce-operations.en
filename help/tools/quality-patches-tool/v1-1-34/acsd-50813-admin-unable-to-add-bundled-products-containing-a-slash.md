---
title: 'ACSD-50813: Admin unable to add bundled products containing a slash'
description: Apply the ACSD-50813 patch to fix the Adobe Commerce performance issue where the admin cannot add bundled products containing a slash mark (`/`) in the SKU with the *Add Products by SKU* functionality to the admin order.
exl-id: 80dfe877-9dfd-44a9-9bf0-37e929642fc0
---
# ACSD-50813: Admin unable to add bundled products containing a slash

The ACSD-50813 patch fixes the issue where the admin cannot add bundled products containing a slash mark (`/`) in the SKU with the *[!UICONTROL Add Products by SKU]* functionality to the admin order. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.34 is installed. The patch ID is ACSD-50813. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.5 - 2.4.6-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Admin cannot add bundled products containing a slash mark (`/`) in the SKU with the *[!UICONTROL Add Products by SKU]* functionality to the admin order.

<u>Steps to reproduce</u>:

1. Go to **[!UICONTROL Catalog]** > **[!UICONTROL Products]**.
1. Create a simple product.
1. Create a new bundled product.
1. Add a slash mark (`/`) in the middle of the SKU (Example: *Bu/ndle*).
1. Add a bundled option with **[!UICONTROL Input Type]** = *[!UICONTROL Dropdown]*.
1. Assign at least one simple product to the option.
1. Go to **[!UICONTROL Sales]** > **[!UICONTROL Orders]**, and create a new order.
1. Click on **[!UICONTROL Add Products by SKU]**.
1. Enter your SKU, and click on **[!UICONTROL Add to Order]**.
1. Open the browser console.
1. Click on **[!UICONTROL Configure]**.

<u>Expected results</u>:

There is no error.

<u>Actual results</u>:

JS error in console:

*Uncaught Error: Syntax error, unrecognized expression: div[id=sku_bu/ndle]*

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
