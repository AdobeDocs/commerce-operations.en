---
title: 'ACSD-48694: Invalid state change requested error prevents customer from placing order'
description: Apply the ACSD-48694 patch to fix the Adobe Commerce issue where the error *Invalid state change requested* prevents a customer from placing an order.
exl-id: edf79424-6c4f-4cfd-ab7e-19f95b9bc685
feature: Admin Workspace, Orders
role: Admin
---
# ACSD-48694: *Invalid state change requested* error prevents customer from placing order

The ACSD-48694 patch fixes the issue where the error *Invalid state change requested* prevents a customer from placing an order. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.27 is installed. The patch ID is ACSD-48694. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.7 - 2.37-p4, 2.4.1 - 2.4.6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The error *Invalid state change requested* prevents a customer from placing an order.

<u>Steps to reproduce</u>:

1. Add a slight delay during the `/estimate-shipping-methods` request by including a `sleep()` at `app/code/Magento/Quote/Model/GuestCart/GuestShippingMethodManagement.php::estimateByExtendedAddress()` function, so the `/estimate-shipping-methods` request is completed after the `/shipping-information` when going from shipping step to payment step during checkout.
1. Configure the session to use [!DNL Redis] with the *disable_locking: 1* setting.
1. Open **[!UICONTROL Stores]** > **[!UICONTROL Configuration]** > **[!UICONTROL Customers]** and enable *[!UICONTROL Persistent Shopping Cart]*.
1. Log in as a customer and add a product to the cart.
1. Let the customer session expire. Persistent cookie and the cart still persists.
1. Now go to checkout, add the shipping address and navigate to the payment section.
1. Go back to the home page or any other page and log in with the customer account.
1. Let the session expire again.
1. Now go directly to the checkout page and navigate to the payment step.
1. Try to place the order.

<u>Expected results</u>:

* There is no error.
* Order is placed successfully and a *Thank you* page is shown.

<u>Actual results</u>:

The error *Invalid state change requested* is displayed, but the order is placed.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
