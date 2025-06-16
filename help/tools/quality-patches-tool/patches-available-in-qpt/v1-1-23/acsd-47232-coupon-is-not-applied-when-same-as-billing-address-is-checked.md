---
title: 'ACSD-47232: coupon is not applied when [!UICONTROL Same as Billing Address] is checked'
description: Apply the ACSD-47232 patch to fix the Adobe Commerce issue where coupon is not applied when [!UICONTROL Same as Billing Address] is checked.
feature: Orders, Shipping/Delivery
role: Admin
exl-id: d8050f6e-00a9-4aa3-bb8b-1631e0e7a714
---
# ACSD-47232: coupon is not applied when [!UICONTROL Same as Billing Address] is checked

The ACSD-47232 patch fixes the issue where the coupon is not applied when **[!UICONTROL Same as Billing Address]** is checked. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.23 is installed. The patch ID is ACSD-47232. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.0 - 2.4.5-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Coupon is not applied when **[!UICONTROL Same as Billing Address]** is checked.

<u>Steps to reproduce</u>:

1. Install Adobe Commerce.
1. Create a simple product with weight = *8*.
1. Create a new customer with default billing and shipping address.
1. Create a cart price rule with a coupon.
    * In **[!UICONTROL Conditions]** sections, add *Total Weight equals or greater than 5*
1. Try to create a new order in the [!UICONTROL Commerce] Admin.
    * Use the customer created just now 
    * Add a product
    * Try to apply the coupon

<u>Expected results</u>:

Coupon is applied.

<u>Actual results</u>:

You get an error similar to the following: *The 123 coupon code isn't valid. Verify the code and try again.*

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
