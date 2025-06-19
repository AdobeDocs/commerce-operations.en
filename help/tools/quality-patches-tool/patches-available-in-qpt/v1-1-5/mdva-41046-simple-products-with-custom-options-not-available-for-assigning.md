---
title: 'MDVA-41046: Simple products with custom options not available for assigning'
description: The MDVA-41046 patch solves the issue where simple products with custom options are not available for assigning to configurable/grouped product. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.5 is installed. The patch ID is MDVA-41046. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.
feature: Products
role: Developer
exl-id: 7fd7a9db-f834-4aea-a9d7-6e9535c037c8
type: Troubleshooting
---
# MDVA-41046: Simple products with custom options not available for assigning

The MDVA-41046 patch solves the issue where simple products with custom options are not available for assigning to configurable/grouped product. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.5 is installed. The patch ID is MDVA-41046. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.0 - 2.4.3-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

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

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to the [Patches available in QPT](https://support.magento.com/hc/en-us/sections/360010506631-Patches-available-in-MQP-tool-) section.
