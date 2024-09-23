---
title: 'MDVA-41046: Simple products with custom options not available for assigning'
description: The MDVA-41046 patch solves the issue where simple products with custom options are not available for assigning to configurable/grouped product. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.5 is installed. The patch ID is MDVA-41046. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.
exl-id: 01229a69-c72a-4189-9be5-1761073b74ee
feature: Products
role: Developer
---
# MDVA-41046: Simple products with custom options not available for assigning

The MDVA-41046 patch solves the issue where simple products with custom options are not available for assigning to configurable/grouped product. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.5 is installed. The patch ID is MDVA-41046. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.0 - 2.4.3-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://devdocs.magento.com/quality-patches/tool.html#patch-grid). Use the patch ID as a search keyword to locate the patch.

## Issue

Simple products with custom options are not available for assigning to configurable/grouped product.

<u>Steps to reproduce</u>:

1. Create a simple product with customizable options and set a value for the configurable attribute.
    * Use *Color* as the configurable attribute, and select *Yellow* as the color value.
1. Save the simple product.
1. Now go to the create configurable product page.
1. Go through the "Create configuration" wizard and make sure to select *Yellow* as the attribute color.
1. Without saving the configurable product, select  "Choose different product" option from the Select dropdown.
1. This will open a product grid that is filtered by color attribute yellow. Now select the simple product that was created previously with customizable options.
1. Save the configurable product.

<u>Expected results</u>:

The simple product with custom options is available for assigning (visible in grid) in step 6.

<u>Actual results</u>:

Configuration section is empty.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [Software Update Guide > Apply Patches](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching/mqp.html) in our developer documentation.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to the [Patches available in QPT](https://support.magento.com/hc/en-us/sections/360010506631-Patches-available-in-MQP-tool-) section.
