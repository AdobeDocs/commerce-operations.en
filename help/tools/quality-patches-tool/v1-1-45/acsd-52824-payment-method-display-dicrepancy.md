---
title: 'ACSD-52824: Disabled payment methods displayed for company customers'
description: Apply the ACSD-52824 patch to fix the Adobe Commerce issue where [!DNL PayPal Express], [!DNL Google Pay], and [!DNL Apple Pay] payment methods appear for company customers despite being disabled in the company settings.
feature: Payments, B2B, Shopping Cart
role: Admin, Developer
exl-id: 03496fb1-d492-4f02-9cdc-466cb571a2eb
---
# ACSD-52824: Disabled payment methods displayed for company customers

The ACSD-52824 patch fixes the issue where [!DNL PayPal Express], [!DNL Google Pay], and [!DNL Apple Pay] payment methods appear for company customers despite being disabled in the company settings. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.45 is installed. The patch ID is ACSD-52824. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.5 - 2.4.6-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Disabled payment methods are displayed for company customers.

<u>Steps to reproduce</u>:

1. Configure and enable [!DNL PayPal Express Checkout]. Navigate to **[!UICONTROL Basic Settings]** > select **[!DNL PayPal Express Checkout]** and set the option for **[!UICONTROL Display on Shopping Cart]** to *Yes*.
1. Configure [!DNL Braintree] and enable [!DNL Apple Pay] and [!DNL Google Pay] through [!DNL Braintree].
1. Navigate to **[!UICONTROL Customers]** > **[!UICONTROL Companies]** and create a new company.
1. Click on **[!UICONTROL Advanced Settings]**, locate the **[!UICONTROL Applicable Payment Methods]** and choose **[!UICONTROL Selected Payment Methods]**.
1. Under **[!UICONTROL Selected Payment Methods]**, choose payment methods that are enabled and are not associated with *[!DNL PayPal Express Checkout]*, *[!DNL Apple Pay]*, or *[!DNL Google Pay]*. For example, select **[!UICONTROL Check/Money Order]**.
1. After selecting the appropriate payment methods, create a new customer and associate them with the previously created company.
1. Log in with the customer account associated with the company and proceed to add items to the cart.
1. Pay attention to the mini cart, shopping cart, and the payment step during the checkout process.

<u>Expected results</u>:

Payment options from [!DNL PayPal] and [!DNL Braintree] are not visible in the mini cart and shopping cart.

<u>Actual results</u>:

Payment options from [!DNL PayPal] and [!DNL Braintree] remain visible in the mini cart and shopping cart.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
