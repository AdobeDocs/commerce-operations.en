---
title: 'ACSD-51735: Order item status incorrectly set to *[!UICONTROL Ordered]* when product stock is 0'
description: Apply the ACSD-51735 patch to fix the Adobe Commerce issue where the order item status is incorrectly set to *[!UICONTROL Ordered]* when the product stock is 0.
feature: Orders, Products
role: Admin
exl-id: c6376698-71dc-46b8-a5b2-86dc26a574ab
---
# ACSD-51735: Order item status incorrectly set to *[!UICONTROL Ordered]* when product stock is 0

The ACSD-51735 patch fixes the issue where the order item status is incorrectly set to *[!UICONTROL Ordered]* when the product stock is 0. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.33 is installed. The patch ID is ACSD-50895. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7. 

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.4-p4

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Order item status is incorrectly set to *[!UICONTROL Ordered]* when the product stock is 0.

<u>Prerequisites</u>:

* Adobe Commerce Inventory Management (MSI) modules are installed.
* Backorders are enabled in **[!UICONTROL Admin]** > **[!UICONTROL Store]** > **[!UICONTROL Configuration]** > **[!UICONTROL Catalog]** > **[!UICONTROL Inventory]** > **[!UICONTROL Product Stock Options]** > **[!UICONTROL Backorders]**.

<u>Steps to reproduce</u>:

1. Create a new stock.
1. Create a new source.
1. Assign the default website to the new stock and assign the new source.
1. Create a new product.

    * Set the default source Qty to 10 and the new source Qty to 0.

1. Add the product to the cart on the storefront.
1. Observe the backorder warning on checkout, indicating that the product is coming from a new source.
1. Place the order.
1. Open the order in Admin, and check the backorder status.

<u>Expected results</u>:

The order shows that Qty 1 is backordered.

<u>Actual results</u>:

The order shows that Qty 1 is ordered, not backordered.

>[!MORELIKETHIS]
>
>[Order item status is incorrectly set to *[!UICONTROL Backordered]*](/help/support-tools/patches-available-in-qpt-tool/v1-1-33/acsd-51408-order-item-status-is-set-to-backordered.md)

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
