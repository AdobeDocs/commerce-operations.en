---
title: 'MDVA-37115: "Only 0 left" notice is shown on product page'
description: The MDVA-37115 patch solves the issue where the unnecessary *Only 0 left* notice is shown on the configurable product page. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.2 is installed. The patch ID is MDVA-37115. Please note that the issue was fixed in Adobe Commerce 2.4.3.
exl-id: 08aa6ac7-13ae-44c1-9db4-d449c3d8c985
feature: Configuration, Products, Orders
role: Admin
---
# MDVA-37115: "Only 0 left" notice is shown on product page

The MDVA-37115 patch solves the issue where the unnecessary *Only 0 left* notice is shown on the configurable product page. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.2 is installed. The patch ID is MDVA-37115. Please note that the issue was fixed in Adobe Commerce 2.4.3.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment types) 2.4.2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment types) 2.4.2 - 2.4.2-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://devdocs.magento.com/quality-patches/tool.html#patch-grid). Use the patch ID as a search keyword to locate the patch.

## Issue

An unnecessary *Only 0 left* notice is displayed on the configurable product page.

<u>Prerequisites</u>:

Inventory modules is installed.

<u>Steps to reproduce</u>:

1. Create a configurable product with few options.
1. Go to the frontend.
1. Open the configurable product page and select any option.

<u>Expected results</u>:

No *Only 0 left* notice is shown on the product page.

<u>Actual results</u>:

*Only 0 left* notice is shown on the product page.

## Apply the patch

To apply individual patches, use the following links depending on your deployment type:

* Adobe Commerce or Magento Open Source on-premises: [Software Update Guide > Apply Patches](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching/mqp.html) in our developer documentation.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md).
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md).

For info about other patches available in QPT, refer to the [Patches available in QPT](https://support.magento.com/hc/en-us/sections/360010506631-Patches-available-in-MQP-tool-) section.
