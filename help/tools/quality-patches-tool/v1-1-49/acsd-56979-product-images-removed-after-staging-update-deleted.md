---
title: 'ACSD-56979: Product images removed after staging update deleted'
description: Apply the ACSD-56979 patch to fix the Adobe Commerce issue where product images are removed after deleting a staging update
feature: Products
role: Admin, Developer
exl-id: efb8aada-d775-4428-b7fe-7ab5d41ae2b6
---
# ACSD-56979: Product images removed after staging update deleted

The ACSD-56979 patch fixes the issue where product images are removed after deleting a staging update. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.49 is installed. The patch ID is ACSD-56979. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.5.0.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6

**Compatible with Adobe Commerce and Magento Open Source versions:**

* Adobe Commerce (all deployment methods) 2.4.3 - 2.4.6-p7 

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Product images are removed after deleting a staging update.

<u>Steps to reproduce</u>:

1. On the Commerce Admin sidebar, go to **[!UICONTROL Catalog]** > **[!UICONTROL Products]** and create a product.
1. Under **[!UICONTROL Images and Videos]**, upload an image and save the product.
1. In the **[!UICONTROL Scheduled Changes]** box, select **[!UICONTROL Schedule New Update]**. 
   1. Choose a start date a few minutes in the future.
   1. Do not choose an end date.
1. In the  **[!UICONTROL Scheduled Changes]** box, select the **[!UICONTROL View/Edit]** link.
1. Go to **[!UICONTROL Remove from Update]** > **[!UICONTROL Delete the Update]** and select **[!UICONTROL Done]**.
1. Refresh the page.

<u>Expected results</u>:

Since the update is removed before the scheduled start date, the product should remain the same.

<u>Actual results</u>:

The image content is lost and shows zero bytes.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
