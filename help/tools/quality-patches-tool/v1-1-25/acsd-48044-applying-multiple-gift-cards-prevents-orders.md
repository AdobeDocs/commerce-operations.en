---
title: 'ACSD-48044: applying multiple gift cards prevents orders from being placed'
description: Apply the ACSD-48044 patch to fix the Adobe Commerce issue where applying multiple gift cards to a single order with multi-shipping prevents orders from being placed.
exl-id: fe57063c-d69c-4b80-a59c-912c2603f6af
feature: Admin Workspace, Gift, Orders
role: Admin
---
# ACSD-48044: applying multiple gift cards prevents orders from being placed

The ACSD-48044 patch fixes the issue where applying multiple gift cards to a single order with multi-shipping prevents orders from being placed. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.25 is installed. The patch ID is ACSD-48044. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.4 - 2.4.5-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Applying multiple gift cards to a single order with multi-shipping prevents orders from being placed.

<u>Steps to reproduce</u>:

1. Install a clean version of Adobe Commerce.
1. Create a simple product with a price of $100 and another simple product with a price of $10.
1. Log in to the [!UICONTROL Admin panel] and create two gift cards.

    * 02KB8M0H0GRD = $50
    * 00GXM6SUGBLW = $25

1. Create a customer with two addresses.
1. Add two products to the cart.

    * Add the $10 product first, and then add the $100 product. The issue cannot be reproduced if the $100 product is added first.

1. Go to the shopping cart and add the two gift cards you created.
1. Click on **[!UICONTROL Ship to Multiple Addresses]** on the cart page.
1. Assign each product to a different address.
1. Go to the **[!UICONTROL Shipping information]** page.
1. Go to the **[!UICONTROL Billing information]** page.
1. Go to the **[!UICONTROL Review Your Order]** page, where you can see the issue.
1. Try to place the order.

<u>Expected results</u>:

* Gift cards are applied to the total amount correctly.
* Orders are placed.

<u>Actual results</u>:

Gift card amounts are mixed with an error *"Please correct the gift card code."* when placing the order.

* First product:

    * Remove Gift Card (00GXM6SUGBLW) - $15.00
    * Remove Gift Card (02KB8M0H0GRD) - $0.00

* Second Product:

    * Remove Gift Card (00GXM6SUGBLW) - $25.00
    * Remove Gift Card (02KB8M0H0GRD) - $35.00

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
