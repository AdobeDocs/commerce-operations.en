---
title: 'ACSD-54418: Fixed discount amount incorrectly added to child product of dynamically priced bundle'
description: Apply the ACSD-54418 patch to fix the Adobe Commerce issue where the fixed discount amount is incorrectly applied to each child product of the dynamically priced bundle.
feature: Shopping Cart
role: Admin, Developer
exl-id: f9a00a4b-0a57-4a61-8b7c-6385e0751991
---
# ACSD-54418: Fixed discount amount incorrectly added to child product of dynamically priced bundle.

The ACSD-54418 patch fixes the issue where the fixed discount amount is incorrectly applied to each child product of the dynamically priced bundle. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.42 is installed. The patch ID is ACSD-54418. Please note that the issue is fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods)  2.4.6-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.0 - 2.4.6-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The fixed discount amount is incorrectly applied to each child product of the dynamically priced bundle.

<u>Steps to reproduce</u>:

1. Create a **[!UICONTROL bundle product]** with dynamic pricing and *2* bundle options.
1. Create a **[!UICONTROL cart price rule]** with a specific coupon code that only applies to the bundled product **[!UICONTROL SKU]** and has a fixed discount.
1. Add the bundled product to the cart.
1. Apply the **[!UICONTROL coupon code]**.
1. Check the discount applied to the shopping cart.

<u>Expected results</u>:

The discount is applied only once to the whole bundled product.

<u>Actual results</u>:

The discount is applied to each bundle child product.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
