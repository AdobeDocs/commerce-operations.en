---
title: 'ACSD-49464: Invoices, shipments, and credit memos not moved back from archive'
description: Apply the ACSD-49464 patch to fix the Adobe Commerce issue where invoices, shipments, and credit memos are not moved back from the archive when the orderId is different.
feature: Admin Workspace, Invoices, Orders, Returns, Shipping/Delivery
role: Admin
exl-id: d9ccd043-cbd3-4be5-ab29-c5351da53030
---
# ACSD-49464: Invoices, shipments, and credit memos not moved back from archive

The ACSD-49464 patch fixes the issue where invoices, shipments, and credit memos are not moved back from archive when the orderId is different. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.29 is installed. The patch ID is ACSD-49464. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.7 - 2.4.6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Invoices, shipments, and credit memos are not moved back from the archive when the orderId is different.

<u>Steps to reproduce</u>:

1. Enable orders, invoices, shipments, and credit memos archiving.
1. Create and complete an order, including shipping, invoice, and credit memo.
1. Ensure the shipping, invoice, and credit memo IDs are not the same as the order number.
1. Move the order to archive.
1. Restore the archived order to order management.
1. Check invoice, shipping, and credit memo details under the respective [!UICONTROL Invoice], [!UICONTROL Shipping], and [!UICONTROL Credit Memo] grid pages.

<u>Expected results</u>:

The original related records are restored when the order is moved from the archive list to order management.

<u>Actual results</u>:

* No records for shipping, invoice, and credit memos if all the IDs are different.
* If the order and related records have the same ID, then the records are returned.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
