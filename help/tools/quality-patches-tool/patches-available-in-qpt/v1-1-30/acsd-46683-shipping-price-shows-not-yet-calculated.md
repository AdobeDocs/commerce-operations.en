---
title: 'ACSD-46683: Shipping price shows *Not yet calculated*'
description: Apply the ACSD-46683 patch to fix the Adobe Commerce issue where the shipping price shows *Not yet calculated*.
exl-id: 77986612-87b7-4f50-afaf-1cfe9a4feb6f
feature: Marketing Tools, Orders, Shipping/Delivery
role: Admin
---
# ACSD-46683: Shipping price shows *Not yet calculated*

The ACSD-46683 patch fixes the issue where the shipping price shows *Not yet calculated*. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.30 is installed. The patch ID is ACSD-46683. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.3-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.2 - 2.4.6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The shipping price shows *Not yet calculated*.

<u>Prerequisites</u>:

Adobe Commerce Inventory Management (MSI) modules are installed.

<u>Steps to reproduce</u>:

1. Create a simple product and set its price to *$34*.
1. Configure the free shipping delivery method.
1. Configure at least one more delivery method.
1. Go to **[!UICONTROL Marketing]** > **[!UICONTROL Cart Price Rules]** and create a new rule:
    * Name = *75more* 
    * Coupon = None
    * Priority = 1
    * Conditions: Subtotal is equal to or greater than *$75*
    * Actions:
        * Apply to Shipping Amount = Yes
        * Discard subsequent rules = No
        * Free Shipping = For shipments with matching items
1. Create another cart price rule:
    * Name = *35off* 
    * Priority = 0
    * Coupon = Specific Coupon
    * Coupon code = 35off
    * Actions:
        * Apply = Percent of product price discount
        * Discount Amount = 35
        * Apply to Shipping Amount = No
        * Discard subsequent rules = Yes
        * Free Shipping = No
1. Open the storefront, and add three products to the cart so the subtotal exceeds $75.
1. Proceed to checkout as a guest.
1. On the shipping step, select **$0 - free shipping** and proceed to the payment step.
1. Check the [!UICONTROL Order Summary] on the payment step. It shows *[!UICONTROL $0 - Free Shipping - Free]*.
1. Apply the coupon code *35off*, it will update the subtotal and make it less than $75.
1. Check [!UICONTROL Order Summary] on the payment step.

<u>Expected results</u>:

The following message is displayed: *Selected shipping method is not available. Please select another shipping method for this order.*

<u>Actual results</u>:

The shipping price displays *Not yet calculated*.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
