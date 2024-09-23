---
title: 'ACSD-46617: **[!UICONTROL Continue to Checkout]** button greyed out when subtotal greater than configured minimum order amount'
description: Apply the ACSD-46617 patch to solve the Adobe Commerce issue where the **[!UICONTROL Continue to Checkout]** button is greyed out even if the subtotal is greater than the configured minimum order amount.
exl-id: 42fe02bd-f48b-4c6d-8643-ea2c1aa98c94
feature: Checkout, Orders
role: Admin
---
# ACSD-46617: "[!UICONTROL Continue to Checkout]" button greyed out when subtotal greater than "[!UICONTROL Minimum Order Amount]"

This ACSD-46617 patch solves the issue where the **[!UICONTROL Continue to Checkout]** button is greyed out even if the subtotal is greater than the configured minimum order amount. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.24 is installed. The patch ID is ACSD-46617. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.3-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.0 - 2.4.5-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The **[!UICONTROL Continue to Checkout]** button is greyed out even if the subtotal is greater than the configured minimum order amount.

<u>Steps to reproduce</u>:

1. Go to the Adobe Commerce Admin > **[!UICONTROL Store]** > **[!UICONTROL Configuration]** > **[!UICONTROL Sales]** > **[!UICONTROL Minimum Order Amount]** and set the following: 
    * [!UICONTROL Enable]: *[!UICONTROL Yes]*
    * [!UICONTROL Minimum Amount]: *2*

1. Create a [!UICONTROL Cart Price Rule].
    * [!UICONTROL Coupon Code]: *[!UICONTROL TEST (optional)]*
    * [!UICONTROL Conditions]: *[!UICONTROL Keep empty]*
    * [!UICONTROL Actions]:
        * [!UICONTROL Apply]: *[!UICONTROL Percent of product price discount]*
        * [!UICONTROL Discount Amount]: *92*
        * [!UICONTROL Apply to Shipping Amount]: *[!UICONTROL Yes]*
1. Create a product with the price of $25.
1. Add the product to the cart.
1. Go to the shopping cart, select the $5 **[!UICONTROL Flat Rate shipping]** method and apply the coupon code.
1. Go to the checkout, complete the shipping, and navigate to the **[!UICONTROL Paytment]** section.
1. Go back to the shopping cart.

<u>Expected results</u>:

There is no error related to the minimum order amount as the grand total of $2.4 is greater than the required amount of $2.

<u>Actual results</u>:

* There is an error related to the minimum order amount even when the grand total of $2.4 is greater than the minimum order amount of $2.
* The **[!UICONTROL Continue to Checkout]** button is greyed out.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
