---
title: 'ACSD-52160: Product validation result against the cart price rule'
description: Apply the ACSD-52160 patch to fix the Adobe Commerce issue where the product validation result against the cart price rule is not properly evaluated based on the rule condition *[!UICONTROL If an item is FOUND/NOT FOUND in the cart with All/Any of these conditions true]*.
---
# ACSD-52160: Product validation result against the cart price rule is not properly evaluated

The ACSD-52160 patch fixes the issue where the product validation result against the cart price rule is not properly evaluated based on the rule condition *[!UICONTROL If an item is FOUND/NOT FOUND in the cart with All/Any of these conditions true]*. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.34 is installed. The patch ID is ACSD-52160. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.6-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The product validation result against the cart price rule is not properly evaluated based on the rule condition *[!UICONTROL If an item is FOUND/NOT FOUND in the cart with All/Any of these conditions true]*.

<u>Steps to reproduce</u>:

1. Create two products assigned to two different categories.
1. Create a **[!UICONTROL Cart Price Rule]** with conditions like:
  
    * **SKU 1** in the *[!UICONTROL FOUND]* parameter
    * **SKU 2** in the *[!UICONTROL NOT FOUND]* parameter
    
1. Add both products to the cart.
1. Apply the coupon code.

<u>Expected results</u>

The coupon code is not applied as the cart contains products from the restricted category.

<u>Actual results</u>

The coupon code gets applied.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](<https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html>) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](<https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html>) in the [!DNL Quality Patches Tool] guide.
