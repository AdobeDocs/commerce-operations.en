---
title: "MDVA-39482: Product goes out of stock if imported with '0' quantity with backorders enabled"
description: The MDVA-39482 fixes the issue where the product goes out of stock if imported with "0" quantity when MSI and backorders are enabled and the Out-of-Stock Threshold is set to a minus value. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.4 is installed. The patch ID is MDVA-39482. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.
feature: Data Import/Export, Orders, Products
role: Admin
exl-id: 9d705ebf-2372-4e59-b447-cdb5b0db32f4
---
# MDVA-39482: Product goes out of stock if imported with '0' quantity with backorders enabled

The MDVA-39482 fixes the issue where the product goes out of stock if imported with "0" quantity when MSI and backorders are enabled and the Out-of-Stock Threshold is set to a minus value. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.4 is installed. The patch ID is MDVA-39482. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods) 2.4.1-p1

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.3.6 &ndash;  2.3.7-p2, 2.4.1 - 2.4.3-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

The product goes out of stock if imported with "0" quantity when MSI and backorders are enabled and the Out-of-Stock Threshold is set to a minus value.

<u>Prerequisites</u>:

1. MSI and sample data must be installed.
1. Go to **Stores** > **Configurations** > **Catalog** > **Inventory**:
    * Set Backorders to "Allow Qty Below 0"
    * Set Out-of-Stock Threshold to "-10"

<u>Steps to reproduce</u>:

1. Make sure the SKU is **In Stock** and has quantity **24-MB01**.
1. Import the Stock Sources' CSV. Make sure you select "Stock Sources" in Entity Type:

    ```code panel
    sku,qty,out_of_stock_qty
    24-MB01,0,-10
    ```
    
1. Check the product's stock status after the Stock Sources have been imported.

<u>Expected results</u>:

24-MB01 is **In Stock** in Storefront.

<u>Actual results</u>:

24-MB01 is **Out-of-Stock** in Storefront.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to the [Patches available in QPT](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) section.
