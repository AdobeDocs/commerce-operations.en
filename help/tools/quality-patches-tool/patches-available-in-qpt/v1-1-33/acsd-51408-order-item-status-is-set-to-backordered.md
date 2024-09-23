---
title: 'ACSD-51408: Order item status is incorrectly set to [!UICONTROL backordered]'
description: Apply the ACSD-51408 patch to fix the Adobe Commerce issue where the order item status is incorrectly set to [!UICONTROL backordered].
feature: B2B, Orders
role: Admin
exl-id: 0355beca-4612-438f-8f91-be42d8d637e9
---
# ACSD-51408: Order item status is incorrectly set to *[!UICONTROL backordered]* 

The ACSD-51408 patch fixes the issue where the order item status is incorrectly set to [!UICONTROL backordered]. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.33 is installed. The patch ID is ACSD-51408. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.7 - 2.4.6-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The order item status is incorrectly set to *[!UICONTROL backordered]*.

<u>Prerequisites</u>:

Adobe Commerce B2B and Inventory Management (MSI) modules are installed.

<u>Steps to reproduce</u>:

1. Create a new website, store, and store view.
1. Create a new source.
1. Create a new stock linked to the new website created in step 1, and assign the source created in step 2.
1. Create a company and assign it to the new website created in step 1.
1. Create a new customer and assign it to the company created in step 4.
1. Create a product, assign it to the new website, and set the **[!UICONTROL default stock]** = *0*, and the **[!UICONTROL new stock]** to greater than *0*.
1. Enable **[!UICONTROL backorders]**.
1. Enable **[!UICONTROL Check/Money Order]** payment method for the new website scope.
1. Enable the **[!UICONTROL Flat Rate shipping method]** for new website scope.
1. Create a new order from **[!UICONTROL Admin]** > **[!UICONTROL Sales]** > **[!UICONTROL Orders]** > **[!UICONTROL Create New Order]**.
1. Select the new customer created in step 5.
1. Select the new store created in step 1.
1. Choose the product created in step 6.
1. Fill out the order information, including the payment and shipping methods.
1. Submit the order.
1. Check the *Item Status*.

<u>Expected results</u>

The item is available to be shipped from the inventory. The item status is *[!UICONTROL ordered]*.

<u>Actual results</u>

The item status is *[!UICONTROL backordered]*.

>[!MORELIKETHIS]
>
>[Order item status is incorrectly set to *[!UICONTROL Ordered]* when the product stock is 0.](/help/support-tools/patches-available-in-qpt-tool/v1-1-33/acsd-51735-order-item-status-incorrectly-set.md)

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
