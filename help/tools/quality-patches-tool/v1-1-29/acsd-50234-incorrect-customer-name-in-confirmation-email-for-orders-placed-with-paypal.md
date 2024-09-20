---
title: 'ACSD-50234: Incorrect customer name in confirmation email for orders placed using [!DNL PayPal]'
description: Apply the ACSD-50234 patch to fix the Adobe Commerce issue where the customer name is displayed incorrectly in the confirmation email for orders placed using [!DNL PayPal].
exl-id: b2e9c25a-5dd5-4b37-81e3-ca960078da77
feature: Admin Workspace, Communications, Orders, Payments
role: Admin
---
# ACSD-50234: Incorrect customer name in confirmation email for orders placed using [!DNL PayPal]

The ACSD-50234 patch fixes the issue where the customer name is displayed incorrectly in the confirmation email for orders placed using [!DNL PayPal]. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.29 is installed. The patch ID is ACSD-50234. Please note that the issue was fixed in Adobe Commerce 2.4.5.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.7 - 2.4.4-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Confirmation email for orders placed using [!DNL PayPal] shows the wrong customer name.

<u>Steps to reproduce</u>

1. Enable **[!UICONTROL PayPal Express Checkout]**.
1. Navigate to the frontend as a guest.
1. Add products to the cart.
1. Checkout using **[!UICONTROL PayPal Express Checkout]** as the payment method.
1. Check the order confirmation email.

<u>Expected results</u>

The order confirmation email, invoice email, and all shipment-related emails are addressed to the customer's name.

<u>Actual results</u>

The order confirmation email, invoice email, and all shipment-related emails are addressed to *Guest*.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
