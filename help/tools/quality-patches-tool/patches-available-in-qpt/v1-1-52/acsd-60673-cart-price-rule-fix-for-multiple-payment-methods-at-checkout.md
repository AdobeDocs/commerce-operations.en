---
title: 'ACSD-60673: [!UICONTROL Cart Price Rule] issue fixed for multiple payment methods at checkout'
description: Apply the ACSD-60673 patch to fix the Adobe Commerce issue where the discounts from a [!UICONTROL Cart Price Rule] that use a payment method condition are not always listed in the totals.
feature: Price Rules
role: Admin, Developer
exl-id: 2fe27959-5e5f-4d25-9f56-b0f8319fd562
---
# ACSD-60673: [!UICONTROL Cart Price Rule] issue fixed for multiple payment methods at checkout

The ACSD-60673 patch fixes the issue where the discounts from a [!UICONTROL Cart Price Rule] that use a payment method condition are not always listed in the totals. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.52 is installed. The patch ID is ACSD-60673. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p6

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The [!UICONTROL Cart Price Rule] for multiple payment methods at checkout does not apply correctly to the specific payment method.

<u>Prerequisites</u>

Ensure that in the **[!UICONTROL Multiple Payment Methods]** > **[!UICONTROL Money Order]** and **[!UICONTROL Bank Transfer]** is enabled.

<u>Steps to reproduce</u>:

1. Enable **[!UICONTROL Multiple Payment Methods]**.
1. Create a *[!UICONTROL Cart Price Rule]*.
    * Set **[!UICONTROL Conditions]** : Payment Method to **[!UICONTROL Money Order]** (or Bank Transfer)
    * Select **[!UICONTROL Actions]** = *25%* discount on all products
1. Create a virtual product.
1. To copy a fresh quote and guest customer *[!UICONTROL Status]*, go to the storefront and clear cookies.
1. Add the virtual product to the cart.
1. Proceed to *checkout*.
1. Click on the payment method that was defined in the *[!UICONTROL Cart Price Rule]*.
1. Update your *[!UICONTROL Billing Address]*.
1. Ensure that the discount is visible in the total amount.
1. Click on the checkbox to change the payment method.
1. Verify that the discount is visible.

<u>Expected results</u>:

The discount is visible in *Totals* after clicking on the checkbox to switch to an applicable payment method.

<u>Actual results</u>:

The discount is not visible in the *Totals*.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
