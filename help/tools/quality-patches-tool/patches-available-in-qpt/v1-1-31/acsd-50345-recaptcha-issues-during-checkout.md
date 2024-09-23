---
title: 'ACSD-50345: reCAPTCHA issues during the checkout'
description: Apply the ACSD-50345 patch to fix the Adobe Commerce issue where the reCAPTCHA v2 and v3 validations are failed while placing orders and during the checkout.
exl-id: ac8c8130-0e4d-4610-9a55-afa779cce7a0
feature: Checkout, Orders
role: Admin
---
# ACSD-50345: reCAPTCHA issues during the checkout

The ACSD-50345 patch fixes the issue where the reCAPTCHA v2 and v3 validations fail while placing orders and during the checkout. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.31 is installed. The patch ID is ACSD-50345. Please note that the issue was partially fixed in Adobe Commerce 2.4.6 and is scheduled to be completely fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.3 - 2.4.5-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

**Case #1**

Google reCAPTCHA v2 does not reload after submitting a failed payment.

<u>Steps to reproduce</u>

1. Configure **[!UICONTROL Google reCAPTCHA v2]** (*I'm not a robot*).
1. Enable the **[!UICONTROL reCAPTCHA]** for checkout.
1. Try to place an order without clicking on **[!UICONTROL reCAPTCHA]**.
1. Once the user receives the error message for the missing reCAPTCHA (*reCAPTCHA validation failed, please try again*), click on the **[!UICONTROL reCAPTCHA]** and then try placing an order.

<u>Expected results</u>

The order will not be placed with an incorrect reCAPTCHA.

<u>Actual results</u>

An error is thrown - *reCAPTCHA validation failed, please try again* and *No such cart with id = 4*

**Case #2**

Google reCAPTCHA v3 Invisible is not working on checkout, and the order cannot be placed. `PlaceOrder` event is not triggered.

<u>Steps to reproduce</u>

1. Configure the **[!UICONTROL reCAPTCHA v3 Invisible]** from the **[!UICONTROL Store]** > **[!UICONTROL Configuration]** > **[!UICONTROL Security]**.
1. Enable **[!UICONTROL reCAPTCHA v3 Invisible]** for checkout/placing an order under the **[!UICONTROL Storefront]** tab.
1. Try to place an order with the [!UICONTROL Check/Money order] payment method.

<u>Expected results</u>

The order should be placed with the **[!UICONTROL reCAPTCHA]** turned on.

<u>Actual results</u>

After clicking the **[!UICONTROL Place Order]** button, it gets disabled, and nothing happens further.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
