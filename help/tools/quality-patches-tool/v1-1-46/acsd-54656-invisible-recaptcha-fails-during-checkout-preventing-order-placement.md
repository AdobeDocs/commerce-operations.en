---
title: Invisible [!DNL reCAPTCHA] fails during checkout, preventing the placement of order
description: Apply the ACSD-54656 patch to fix the Adobe Commerce issue where the invisible [!DNL reCAPTCHA] is not working properly during checkout, which is preventing the placement of an order.
feature: Checkout, Gift
role: Admin, Developer
exl-id: dc26659e-ca34-461e-af91-b230c5afa919
---
# ACSD-54656: Invisible [!DNL reCAPTCHA] is not working properly during checkout, which is preventing the placement of an order.

The ACSD-54656 patch fixes the issue where the invisible [!DNL reCAPTCHA] is not working properly during checkout, which is preventing the placement of an order. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.46 is installed. The patch ID is ACSD-54656. Please note that the issue was fixed in Adobe Commerce 2.4.6.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.5 - 2.4.5-p5

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Invisible [!DNL reCAPTCHA] is not working properly during checkout, which is preventing the placement of an order. 

<u>Steps to reproduce</u>:

1. Enable any type of [!DNL reCAPTCHA] for gift card on the [!UICONTROL Checkout] page.
1. Add product to cart and go to the **[!UICONTROL Checkout]** page.
1. Expand the gift card form and fill in a valid gift card coupon.
1. Click on **[!UICONTROL See balance and apply]** button.
   
<u>Expected Results</u>:

Gift card is applied successfully.

<u>Actual Results</u>:

Error message shows up: *[!DNL reCAPTCHA] validation failed, please try again*.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
