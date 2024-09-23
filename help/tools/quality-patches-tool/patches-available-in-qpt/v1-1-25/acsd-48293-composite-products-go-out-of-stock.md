---
title: 'ACSD-48293: composite products out of stock when sold out child products restocked'
description: Apply the ACSD-48293 patch to fix the Adobe Commerce issue where the composite products go out of stock when the sold-out child products are returned to stock.
exl-id: 74ca34fe-e015-4daf-a608-4756c8ab3558
feature: Admin Workspace, Orders, Products
role: Admin
---
# ACSD-48293: composite products out of stock when sold out child products restocked

The ACSD-48293 patch fixes the issue where the composite products go out of stock when the sold-out child products are returned to stock. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.25 is installed. The patch ID is ACSD-48293. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.3-p3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.3 - 2.4.4

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Composite products go out of stock when the child products that were sold out are returned to stock.

<u>Steps to reproduce</u>:

1. Create a secondary website, store, and store view.
1. Create two sources and stocks and assign them to each website.
1. Enable the show out-of-stock products option under **[!UICONTROL Store]** > **[!UICONTROL Config]** > **[!UICONTROL Catalog]** > **[!UICONTROL Inventory]** > **[!UICONTROL Stock Options]** > **[!UICONTROL Display Out-of-Stock Products]** = *[!UICONTROL Yes]*.
1. Create a configurable product with one associated product using the primary website's stock source (set qty = 1).
1. Place an order for the configurable product.
1. Run the cron.
1. Open the configurable product from the storefront and confirm it is out of stock.
1. Open the configurable product from the [!UICONTROL Admin] and set the **[!UICONTROL Manage Stock Option]** to *[!UICONTROL No]*.
1. Run the cron.
1. Ship the order and add qty to the simple product making it in stock.
1. Run the cron.
1. Check the product availability on the storefront.

<u>Expected results</u>:

The configurable product is in stock.

<u>Actual results</u>:

The configurable product is out of stock.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
