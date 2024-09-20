---
title: 'ACSD-56790: **[!UICONTROL move out of stock to bottom]** option does not work while sorting products in the  [!DNL Visual Merchandiser]'
description: Apply the ACSD-56790 patch to fix the Adobe Commerce issue where the move out of stock to bottom option does not work while sorting products in the Visual Merchandiser.
feature: Products, Categories
role: Admin, Developer
exl-id: a0c61696-a12d-4c1a-a061-e2f17f38e1f4
---
# ACSD-56790: **[!UICONTROL move out of stock to bottom]** option does not work while sorting products in the [!DNL Visual Merchandiser]

The ACSD-56790 patch fixes the issue where the move out of stock to bottom option does not work while sorting products in the [!DNL Visual Merchandiser]. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.44 is installed. The patch ID is ACSD-56790. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.6 - 2.4.6-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The **[!UICONTROL move out of stock to bottom]** option does not work while sorting products in the [!DNL Visual Merchandiser]

<u>Steps to reproduce</u>:

1. Install Adobe Commerce. 
1. Go to **[!UICONTROL Admin]** > **[!UICONTROL Stores]** > **[!UICONTROL Attributes]** > **[!UICONTROL Product]** and create the following attributes.
1. Create a new website: **Non-main**.
1. Create a **Non-main Store** on this new website.
1. Create two stores:

    * First in the **Main website Store**.
    * Second in the **Non-main Store**.

1. Create two sources:
   * Letters.
   * Numbers.

1. Create two stocks:
   * First Main - sales channels: Main Website - assigned sources: Letters.
   * Second Non-main - sales channels: Non-main - assigned sources: Numbers.

1. Create three simple products on both websites, all in the Default category, all assigned to both sources:

    * ProductA - Qty *10* in Letters, Qty *0* in Numbers.
    * Product1 - Qty *0* in Letters, Qty *10* in Numbers.
    * ProductA1 - Qty *10* in Letters, Qty *10* in Numbers.

1. Go to **[!UICONTROL Catalog]** > **[!UICONTROL Categories]** and select  **[!UICONTROL Default category]**.
1. Change the scope to **First**.
1. Expand the Products in the Category section.
1. Pick the sort order as: **[!UICONTROL move out of stock to bottom]**

<u>Expected results</u>:

The list of the products with the **out-of-stock** products are moved to the bottom. 

<u>Actual results</u>:

The products fail to load. A page redirects to the admin dashboard with the error message: `Invalid security or form key. Please refresh the page`
 
## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
