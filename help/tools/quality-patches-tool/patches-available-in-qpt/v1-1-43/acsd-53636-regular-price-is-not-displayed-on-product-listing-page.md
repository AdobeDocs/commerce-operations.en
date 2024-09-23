---
title: 'ACSD-53636: Regular price is not displayed on [!UICONTROL Product Listing] page'
description: Apply the ACSD-53636 patch to fix the Adobe Commerce issue where the regular price is not displayed on *[!UICONTROL Product Listing]* pages for configurable products that have child products with special prices.
feature: Catalog Management, Products
role: Admin, Developer
exl-id: 97b4eb64-92d1-4db1-8e5b-915b16115663
---
# ACSD-53636: Regular price is not displayed on *[!UICONTROL Product Listing]* page

The ACSD-53636 patch fixes the issue where the regular price is not displayed on *[!UICONTROL Product Listing]* pages for configurable products that have child products with special prices. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.43 is installed. The patch ID is ACSD-53636. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.3 - 2.4.4-p6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The regular price is not displayed on *[!UICONTROL Product Listing]* pages for configurable products that have child products with special prices.

<u>Steps to reproduce</u>:

1. Log in to the admin and go to **[!UICONTROL Admin]** > **[!UICONTROL Catalog]**, and create or open any configurable product.
2. Open the child product and add a special price to all or one of the child products and save the product.
3. Go to frontend and open the **[!UICONTROL Product Detail]** page of the configurable product; on the swatches of the child product with special price, you will see the *[!UICONTROL Regular price]* striked out (expected).
4. Go to frontend and open the **[!UICONTROL Product Listing]** page for the configurable product with special price; see that the configurable product swatch changes don't display the regular price unlike the *[!UICONTROL Product Detail Page]* and other simple products.

<u>Expected results</u>:

On the *[!UICONTROL Product Listing]* page, the configurable product shows the regular price for its child product.

<u>Actual results</u>:

On the *[!UICONTROL Product Listing]* page, the configurable product does not show the regular price for its child product.
 
## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
