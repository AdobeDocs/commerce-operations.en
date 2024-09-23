---
title: 'ACSD-47704: Bundled product shows the price of in stock products only'
description: Apply the ACSD-47704 patch to fix the Adobe Commerce issue where a bundled product shows the price of in stock products only.
exl-id: 91fbeaf7-4bc2-49b1-a561-c3e63f193eaa
feature: Admin Workspace, Customer Service, Orders, Products
role: Admin
---
# ACSD-47704: Bundled product shows the price of in stock products only

The ACSD-47704 patch fixes the issue where customer segment prices are cached incorrectly between customer groups. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.28 is installed. The patch ID is ACSD-47704. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.1-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.7 - 2.4.6-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The price of a bundled product with Dynamic Pricing enabled is incorrect due to only in-stock items being included.

<u>Steps to reproduce</u>:

1. Go to the Commerce Admin panel.
1. Go to **[!UICONTROL CATALOG]** > **[!UICONTROL Products]** > **[!UICONTROL Add Product]** > **[!UICONTROL Bundle Product]**.
1. Set **[UICONROL Dynamic Price]** to **[!UICONTROL Yes]**.
1. Bundle items:
   * Set **[!UICONTROL Ship bundle items]** to **[!UICONTROL Together]**
   * Select **[!UICONTROL Add Option]**
      * **[!UICONTROL Title]** = o1
      * **[!UICONTROL Input type]** = **[!UICONTROL Dropdown]**
     * Mark required checkbox
     * Add any simple product which is in stock; for example, Joust Duffle Bag SKU 24-MB01. Before adding the product, note down its price - $34
    * Default quantity: 1
   *  Select **[!UICONTROL Add Option]**
      * **[!UICONTROL Option Title]** = o2
      * **[!UICONTROL Input type]** = **[!UICONTROL Dropdown]**
      * Mark required checkbox
      * Add any simple product which is in stock, different from the product added in the step before; for example - Strive Shoulder Pack 24-MB04. Before adding the product, note down its price - $32
      * Default quantity: 1
1. Save product.
1. Go to the storefront and find the product created in the previous steps. Note down its price - $66
(66 = 32 + 34).
Currently, the price of the bundle product is equal to the sum of the prices of its options.
1. Go to the Commerce Admin panel. Go to **[!UICONTROL CATALOG]** > **[!UICONTROL Products]**.
1. Find one of the simple products assigned as an option to the bundle product earlier:
SKU 24-MB01 and a price of $34.
1. Change its quantity to 0.
1. Save the product.
1. Go to the storefront and find the bundle product created in the previous steps. Note down its price - $32. Previously it was priced at $66, which was the sum of $34 from SKU 24-MB01 and $32 from SKU 24-MB04. Now that product 24-MB01 is out of stock, the bundle price is listed as $32. It is the price of the other product, which is an in-stock option.

<u>Expected results</u>:

The price of bundle products with Dynamic Pricing enabled is calculated consistently, no matter if options are in stock or out of stock.

<u>Actual results</u>:

The price of the bundle product with Dynamic Pricing enabled is miscalculated. It takes into account only options that are in stock, resulting in a lower amount displayed than the actual one when one of the options is out of stock.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
