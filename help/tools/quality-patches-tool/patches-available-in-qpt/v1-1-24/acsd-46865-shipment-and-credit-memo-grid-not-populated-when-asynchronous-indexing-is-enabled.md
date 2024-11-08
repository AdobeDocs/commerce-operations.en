---
title: 'ACSD-46865: [!UICONTROL shipment] and [!UICONTROL credit memo] not populated when [!UICONTROL asynchronous indexing] is enabled'
description: Apply the ACSD-46865 patch to fix the Adobe Commerce issue where [!UICONTROL shipment] and [!UICONTROL credit memo] grids are not populated when [!UICONTROL asynchronous indexing] is enabled.
feature: Cache, Orders, Returns, Shipping/Delivery
role: Admin
exl-id: 6f84f5b6-6c34-476c-aae5-9a8ba306f8e4
---
# ACSD-46865: [!UICONTROL shipment] and [!UICONTROL credit memo] not populated when [!UICONTROL asynchronous indexing] is enabled

The ACSD-46865 patch fixes the issue where [!UICONTROL shipment] and [!UICONTROL credit memo] grids are not populated when [!UICONTROL asynchronous indexing] is enabled. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.24 is installed. The patch ID is ACSD-46865. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.5-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

[!UICONTROL Shipment] and [!UICONTROL credit memo] grids are not populated when [!UICONTROL asynchronous indexing] is enabled.

<u>Steps to reproduce</u>:

1. In the [!DNL Commerce] Admin, go to **[!UICONTROL Set Stores]** > **[!UICONTROL Settings]** > **[!UICONTROL Configuration]** > **[!UICONTROL Advanced]** > **[!UICONTROL Developer]** > **[!UICONTROL Grid Settings]** > **[!UICONTROL Asynchronous indexing Enable]** = *YES*.
2. Again go to **[!UICONTROL Set Stores]** > **[!UICONTROL Settings]** > **[!UICONTROL Configuration]** > **[!UICONTROL Sales]** > **[!UICONTROL Sales]** > **[!UICONTROL Orders]** > **[!UICONTROL Invoices]** > **[!UICONTROL Shipments]** > **[!UICONTROL Credit Memos Archiving]** > **[!UICONTROL Enable Archiving]** = *[!UICONTROL YES]*.
3. Clean config cache.
4. Place a new guest order for a simple product.
5. Run cron.
6. Open the order in the [!UICONTROL Commerce] Admin by going to **[!UICONTROL Sales]** > **[!UICONTROL Orders]** and generate an invoice and a credit memo.
7. Move the order to [!UICONTROL Archive].
8. Create another order for a simple product.
9. Run cron.
10. Go to the new order and generate a new shipment, an invoice, and a credit memo.
11. Run cron.
12. Check the [!UICONTROL shipments], [!UICONTROL invoices], and [!UICONTROL credit memo] grids in the admin.

<u>Expected results</u>:

New [!UICONTROL shipment], [!UICONTROL invoice] and [!UICONTROL credit memo] are displayed.

<u>Actual results</u>:

New [!UICONTROL shipment], [!UICONTROL invoice], and [!UICONTROL credit memo] are not displayed.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
