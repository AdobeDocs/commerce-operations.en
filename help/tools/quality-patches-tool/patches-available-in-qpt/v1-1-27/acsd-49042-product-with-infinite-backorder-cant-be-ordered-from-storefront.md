---
title: "ACSD-49042: Product with infinite backorder can't be ordered from storefront"
description: Apply the ACSD-49042 patch to fix the Adobe Commerce issue where a product with infinite backorder cannot be ordered from the storefront.
exl-id: b9227296-f300-447c-a241-30ccc0691c9a
feature: Admin Workspace, Orders, Products, Storefront
role: Admin
---
# ACSD-49042: Product with infinite backorder can't be ordered from storefront

The ACSD-49042 patch fixes the issue where a product with infinite backorder cannot be ordered from the storefront. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.27 is installed. The patch ID is ACSD-49042. Please note that the issue was fixed in Adobe Commerce 2.4.5.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.4-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The error occurs when a product with infinite backorder cannot be ordered from the storefront.

<u>Steps to reproduce</u>:

1. Set the following configuration settings:
    * **[!UICONTROL Display Out of Stock Products]** set to *[!UICONTROL Yes]*.
    * **[!UICONTROL Backorders]** set to *[!UICONTROL Allow Qty Below 0]*.
1. Add a new **[!DNL custom stock]** and **[!DNL custom source]**.
1. Assign a product to the **[!DNL custom source]** and make sure there is an inventory number set for it (For Example: *10*).
1. On the product edit page, open **[!UICONTROL Advanced Inventory]**. Set the **[!UICONTROL minimum quantity]** in the cart, (For Example: *160*). The quantity must be above inventory.
1. Go to the storefront and buy a product to create a reservation.
1. Change the **[!UICONTROL product quantity]** to *0*. The critical point is to save the product from the **[!DNL Admin panel]** when there is a reservation.
1. Open the **[!UICONTROL product page]** on the storefront and try to add the product to the cart.

<u>Expected results</u>:

It's possible to add the product to the cart because backorders for a quantity below *0* are allowed.

<u>Actual results</u>:

The product is displayed to be out of stock.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
