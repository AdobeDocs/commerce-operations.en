---
title: 'ACSD-58163: [!UICONTROL Cart Price Rule] does not apply discount from matching [!UICONTROL Customer Segment] cart without coupon code'
description: Apply the ACSD-58163 patch to fix the Adobe Commerce issue where the [!UICONTROL Cart Price Rule] doesn't apply a discount for a guest from the matching [!UICONTROL Customer Segment] cart without a coupon code.
feature: Products
role: Admin, Developer
---

# ACSD-58163: [!UICONTROL Cart Price Rule] does not apply discount from matching [!UICONTROL Customer Segment] cart without coupon code

The ACSD-58163 patch fixes the issue where the [!UICONTROL Cart Price Rule] does not apply a discount from the matching [!UICONTROL Customer Segment] cart without a coupon code. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.49 is installed. The patch ID is ACSD-58163. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.5.0.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.3 - 2.4.6-p7

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

[!UICONTROL Cart Price Rule] doesn't apply a discount for a guest from the matching [!UICONTROL Customer Segment] cart without a coupon code.

<u>Steps to reproduce</u>:

1. Create customer segment:
   * For visitors.
   * With the condition to have one product in the shopping cart.

1. Create a *[!UICONTROL Cart Price Rule]*: 
   * Without coupon code.
   * With the condition to match with the visitor customer segment.
  
1. Create a simple product.
1. Open storefront as a guest.
1. Add one simple product to the cart.
1. Go to the shopping cart.

<u>Expected results</u>:

*[!UICONTROL Cart Price Rule]* discount is applied.

<u>Actual results</u>:

*[!UICONTROL Cart Price Rule]* discount is not applied.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
