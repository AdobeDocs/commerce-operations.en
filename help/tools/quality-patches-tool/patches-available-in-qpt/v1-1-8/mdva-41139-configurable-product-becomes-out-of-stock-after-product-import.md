---
title: 'MDVA-41139: Configurable product becomes out of stock after product import'
description: The MDVA-41139 patch fixes the issue where the configurable product becomes out of stock after product import when the simple product's qty = 0 for one of its sources. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.8 is installed. The patch ID is MDVA-41139. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.
feature: Data Import/Export, Configuration, Orders, Products
role: Admin
exl-id: 7366230c-3b7f-4211-9f0d-55a528dffdbd
type: Troubleshooting
---
# MDVA-41139: Configurable product becomes out of stock after product import

The MDVA-41139 patch fixes the issue where the configurable product becomes out of stock after product import when the simple product's qty = 0 for one of its sources. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.8 is installed. The patch ID is MDVA-41139. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.3 - 2.4.3-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

The configurable product becomes out of stock after product import when the simple product's qty = 0 for one of its sources.

<u>Prerequisites</u>:

Inventory modules are installed.

<u>Steps to reproduce</u>:

1. Create a new source and stock.
1. Create a configurable product with children products assigned to the default source and the new source.
1. Set the value of default stock for each children product = 0, and for other stock > 0.
1. The configurable product is in stock.
1. Export this product and import it again.

<u>Expected results</u>:

The configurable product is in stock as the second source has quantity > 0.

<u>Actual results</u>:

The configurable product is out of stock.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
