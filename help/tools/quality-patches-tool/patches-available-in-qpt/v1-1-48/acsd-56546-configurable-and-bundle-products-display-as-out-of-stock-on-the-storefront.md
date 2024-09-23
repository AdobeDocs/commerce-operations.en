---
title: 'ACSD-56546: Configurable and bundle products display as out of stock on the storefront'
description: Apply the ACSD-56546 patch to fix the Adobe Commerce issue where the configurable and bundle products display as out of stock on the storefront when the *[!UICONTROL Display Out of Stock Products]* configuration option is disabled.
feature: Storefront, Products
role: Admin, Developer
exl-id: 488e2c69-442f-45e1-aa8f-71d9c0a93950
---
# ACSD-56546: Configurable and bundle products display as out of stock on the storefront

The ACSD-56546 patch fixes the issue where the configurable and bundle products display as out of stock on the storefront. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.48 is installed. The patch ID is ACSD-56546. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.6-p4

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Configurable and bundle products display as out of stock on the storefront when *[!UICONTROL Display Out of Stock Products]* option is disabled. 

<u>Steps to reproduce</u>:

1. Set the **[!UICONTROL Display Out of Stock Products]** option to *No*.
1. Create a website, store, and storeview.
1. Create a source and a stock and then assign it to the second website.
1. Create a *configurable product* with two child products. Assign both the child products to both sources and both websites.
1. Update the first child product to have *qty=0* in both sources.
1. Update the second child product and disable it on the second website.
1. Do a full reindex.
1. Check the category that contains the configurable product on the second website.

<u>Expected results</u>:

The out-of-stock configurable products are not visible on the storefront.

<u>Actual results</u>:

The out-of-stock configurable products are visible on the storefront even when the *[!UICONTROL Display Out of Stock Products]* option is disabled.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
