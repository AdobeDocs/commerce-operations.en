---
title: 'ACSD-63067: Resolving quantity validation issues in grouped products on storefront'
description: Apply the ACSD-63067 patch to fix the Adobe Commerce issue where all product quantities in grouped products are incorrectly highlighted as invalid when only one product has an incorrect quantity.
feature: Storefront
role: Admin, Developer
---
# ACSD-63067: Resolving quantity validation issues in grouped products on storefront

The ACSD-63067 patch fixes the issue where all product quantities in grouped products are incorrectly highlighted as invalid when only one product has an incorrect quantity. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.58 is installed. The patch ID is ACSD-63067. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods)  2.4.7-p2

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

In grouped products, an invalid quantity in one of the sub-products causes all quantities to be incorrectly highlighted as invalid. Additionally, a validation message appears for all products instead of only for the one with the invalid quantity.

<u>Steps to reproduce</u>:

1. Create a new grouped product with at least two simple products as options.
1. Open the product on the storefront.
1. Enter an invalid quantity (For Example: -1) for one of the options and a valid quantity (For Example: 1) for the remaining options.
1. Click  **[!UICONTROL Add to Cart]**.

<u>Expected results</u>:

Only the product with the invalid quantity is highlighted as invalid.

<u>Actual results</u>:

All product quantities are highlighted as invalid, and the message Please specify the quantity of product(s). is displayed for all products.


## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.


## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
