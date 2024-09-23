---
title: 'ACSD-49286: Product added twice to cart when multiple product widgets are present'
description: Apply the ACSD-49286 patch to fix the Adobe Commerce issue where the product is added twice to a cart when multiple product widgets are present on the page.
exl-id: b1764943-945d-4ef9-9bbe-3f3c8383b5b1
feature: Admin Workspace, Orders, Products, Shopping Cart
role: Admin
---
# ACSD-49286: Product added twice to cart when multiple product widgets are present

The ACSD-49286 patch fixes the issue where the product is added twice to a cart when multiple product widgets are present on the page. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.28 is installed. The patch ID is ACSD-49286. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.3 - 2.4.6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Product is added twice to a cart when multiple product widgets are present on the page.

<u>Steps to reproduce</u>:

1. Log in to admin and go to **[!UICONTROL Admin]** > **[!UICONTROL Content]** > **[!UICONTROL Page]** > **[!UICONTROL Home Page]**
1. In the content section, click on **[!UICONTROL Edit]** using [!DNL Page Builder].
1. Add two row elements to **[!UICONTROL Content]**.
1. Add products into both row elements.
1. In the first row, set product appearance as [!UICONTROL Product Grid] and select any category to display.
1. In the second row, set product appearance as [!UICONTROL Product Carousel] and select any other category to display.
1. Go to the storefront **[!UICONTROL Home Page]**, and add one product from Product Grid.
1. Add another product from [!UICONTROL Product Carousel].

<u>Expected results</u>:

Product quantity should not double up after adding a product to the cart from [!UICONTROL Product Grid].

<u>Actual results</u>:

Product quantity doubles up after adding a product to the cart from [!UICONTROL Product Grid].

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide. 

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
