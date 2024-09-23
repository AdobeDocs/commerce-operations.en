---
title: 'ACSD-47908: *A value less than or equal to 0 is expected* error during checkout'
description: Apply the ACSD-47908 patch to fix the Adobe Commerce error *A value less than or equal to 0 is expected* when selecting the source and quantity on the shipping step during checkout.
exl-id: fec90e4b-9cb8-4cd9-9e85-ccada840c896
feature: Admin Workspace, Checkout, Orders
role: Admin
---
# ACSD-47908: *A value less than or equal to 0 is expected* error during checkout

The ACSD-47908 patch fixes the error *A value less than or equal to 0 is expected* when selecting the source and quantity in the shipping step during checkout. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.27 is installed. The patch ID is ACSD-47908. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.7 - 2.4.6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The following error is thrown when selecting the source and quantity in the shipping step during checkout: *A value less than or equal to 0 is expected*.

<u>Prerequisites</u>:

Install Adobe Commerce Inventory Management (MSI) modules.

<u>Steps to reproduce</u>:

1. Go to **[!UICONTROL Stores]** > **[!UICONTROL Inventory]** > **[!UICONTROL Sources]** and configure multiple sources.
1. Go to **[!UICONTROL Stores]** > **[!UICONTROL Inventory]** > **[!UICONTROL Stock]** and create a new stock. 
    * Now assign the sources to the new stock.
1. Go to **[!UICONTROL Catalog]** > **[!UICONTROL Products]** and edit at least one product. 
    * Make sure that the products are assigned to the new sources, and specify the available quantity.
1. Go to **[!UICONTROL Sales]** > **[!UICONTROL Orders]** and create a new order.
1. Add those products to the order and place it.
1. Click **[!UICONTROL Ship]**.
1. Select the source to be shipped from.
1. Specify the quantity of each item to be shipped.
1. Reload the page.
1. Click on **[!UICONTROL Proceed to Shipment]**.

<u>Expected results</u>:

The new shipment page opens without any error.

<u>Actual results</u>:

* The quantity entered cannot be validated.
* The following error is thrown: *Please enter a value less than or equal to 0*.

  The error is, however, inconsistent and may not always appear.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
