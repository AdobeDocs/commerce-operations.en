---
title: 'ACSD-52399: Product with salable qty 0 shows in stock'
description: Apply the ACSD-52399 patch to fix the Adobe Commerce issue where the configurable product option with salable qty of 0 shows *In Stock* on product page.
feature: Products, Configuration
role: Admin, Developer
exl-id: 3c9e6edd-f7ce-492e-b74f-68354d8e2633
---
# ACSD-52399: Product with salable qty 0 shows in stock

The ACSD-52399 patch fixes the issue where the configurable product option with a salable qty of zero (0) shows *In Stock* on the product page. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.35 is installed. The patch ID is ACSD-52399. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.7 - 2.4.5-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Configurable product option with a salable qty of zero (0) shows *In Stock* on the product page.

<u>Steps to reproduce</u>:

1. Create a configurable product with zero (0) salable quantity product option.
1. Go to the product page on the storefront and select the configurable product to check a variation/configuration.
1. Select **[!UICONTROL Add to Cart]**.

<u>Expected results</u>:

*[!UICONTROL Add to Cart]* button is not available when selecting *Out of stock* product configuration.

<u>Actual results</u>:

Configurable variations are available on the storefront, and you can select and add them to the cart.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
