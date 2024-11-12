---
title: 'ACSD-60234: [!DNL PayPal] shows an incorrect amount when discount is applied'
description: Apply the ACSD-60234 patch to fix the Adobe Commerce issue where [!DNL PayPal] shows an incorrect amount when the discount is applied through the payment method.
feature: Products, Configuration
role: Admin, Developer
exl-id: 2ce7bde5-02a4-4989-80d6-ab1be0ca5fe9
---
# ACSD-60234: [!DNL PayPal] shows an incorrect amount when the discount is applied

The ACSD-60234 patch fixes the issue where [!DNL PayPal] shows an incorrect amount when the discount is applied through the payment method. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.51 is installed. The patch ID is ACSD-60234. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.5.0.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods) 2.4.5-p1

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

[!DNL PayPal] shows an incorrect amount when the discount is applied through the payment method.

<u>Steps to reproduce</u>:

1. Configure *[!DNL PayPal Express]* in **[!UICONTROL Stores]** > **[!UICONTROL Config]** > **[!UICONTROL Sales]** > **[!UICONTROL Payment methods]** > **[!DNL PayPal]** > **[!UICONTROL Express checkout]**.
   * [!UICONTROL Enable In-Context Checkout] can be [!UICONTROL Yes] or [!UICONTROL NO], the issue reproduces in both scenarios. 
1. Create a *[!UICONTROL Cart Rule]* in **[!UICONTROL Marketing]** > **[!UICONTROL Promotions]** > **[!UICONTROL Cart Price Rules]** > **[!UICONTROL Add New Rule]**.
   * Condition: If all of these conditions are true: *[!UICONTROL Payment Method]* is *[!DNL PayPal Express Checkout]*.
   * Actions: Any actions.
1. Create a product.
1. Go to the storefront, add the product to the cart, and then go to the **[!UICONTROL Payment Method]** step in the checkout.
1. Make sure to select *[!DNL PayPal Express]* and validate that the discount is correctly applied.
1. Click the **[!DNL PayPal]** button.
1. Log in and observe the content of the popup.
   
<u>Expected results</u>:

The amount to be paid passed to [!DNL PayPal] includes the discount as it is in the cart.

<u>Actual results</u>:

The total amount to be paid doesn't include the discount.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
