---
title: 'ACSD-54319: Product price shows zero in *[!UICONTROL Products in Carts]* report'
description: Apply the ACSD-54319 patch to fix the Adobe Commerce issue where the product price shows zero in *[!UICONTROL Products in Carts]* report
feature: Reporting, Products
role: Admin, Developer
exl-id: f53b3ed3-d5d5-461c-bba2-4f9f3f038580
---
# ACSD-54319: Product price shows zero in *[!UICONTROL Products in Carts]* report

The ACSD-54319 patch fixes the issue where the product price shows zero in *[!UICONTROL Products in Carts]* report. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.40 is installed. The patch ID is ACSD-54319. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.2 - 2.4.5-p5

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The product price shows zero in *[!UICONTROL Products in Carts]* report.

<u>Steps to reproduce</u>:

1. Set **[!UICONTROL Catalog Price Scope]** to **[!UICONTROL Website]** from **[!UICONTROL Stores]** > **[!UICONTROL Configuration]** > **[!UICONTROL Catalog]** > **[!UICONTROL Catalog]** > **[!UICONTROL Price]** > **[!UICONTROL Catalog Price Scope]**.
1. Create a second website from **[!UICONTROL Stores]** > **[!UICONTROL All Stores]**.
1. Create a product from **[!UICONTROL Catalog]** > **[!UICONTROL Products]**.
1. Assign this product to the second website only.
1. Add a product to the cart from the second website.
1. Go to **[!UICONTROL Admin]** > **[!UICONTROL Reports]** > **[!UICONTROL Marketing]** > **[!UICONTROL Products In Carts]** grid.
1. Check the *[!UICONTROL Price]* column in *[!UICONTROL Products In Carts]* grid.

<u>Expected results</u>:

Product price is not zero in *[!UICONTROL Products in Carts]* report grid.

<u>Actual results</u>:

Product price is zero in *[!UICONTROL Products in Carts]* report grid.
 
## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
