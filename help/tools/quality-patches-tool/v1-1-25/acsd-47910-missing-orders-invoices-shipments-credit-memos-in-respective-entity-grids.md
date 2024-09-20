---
title: 'ACSD-47910: missing orders, invoices, shipments, credit memos in respective entity grids'
description: Apply the ACSD-47910 patch to fix the Adobe Commerce issue where there are missing orders, invoices, shipments, and credit memos in respective entity grids.
exl-id: 4eb897ec-16e4-420e-89a6-c8f7c8740303
feature: Admin Workspace, Invoices, Orders, Returns, Shipping/Delivery
role: Admin
---
# ACSD-47910: missing orders, invoices, shipments, and credit memos in respective entity grids

The ACSD-47910 patch fixes the issue where there are missing orders, invoices, shipments, and credit memos in respective entity grids. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.25 is installed. The patch ID is ACSD-47910. The version where this issue will be fixed is not yet available.

## Affected products and versions

**The patch is created for Adobe Commerce version:**
* Adobe Commerce (all deployment methods) 2.4.4-p1

**Compatible with Adobe Commerce versions:**
* Adobe Commerce (all deployment methods)  2.4.4 - 2.4.5-p4

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Missing orders, invoices, shipments, and credit memos in respective entity grids.

<u>Steps to reproduce</u>:

1. Enable **[!UICONTROL Asynchronous indexing]** at **[!UICONTROL Stores]** > **[!UICONTROL Settings]** > **[!UICONTROL Configuration]** > **[!UICONTROL Advanced]** > **[!UICONTROL Developer]** > **[!UICONTROL Grid Settings]**.
1. Place two orders.
1. Run the cron to sync those orders to the grid.
1. Open one of the orders and make it ready to be invoiced. DO NOT SUBMIT THE INVOICE YET.
1. Make a new order ready to be placed on the frontend. DO NOT CLICK ON THE PLACE ORDER BUTTON YET.
1. Add a `sleep(30)` in the `foreach` at `NotSyncedDataProvider::L43`.
1. Run `bin/magento cron:run`.
1. Now place the new order.
1. Invoice the previous order.
1. Run the cron again expecting the new order to be synced.
1. Go to the order grid in the Admin.

<u>Expected results</u>:

The new order should appear on the order grid.

<u>Actual results</u>:

The previous order update has been synced to the grid (**[!UICONTROL status: Processing]**). The new order never appears on the grid.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
