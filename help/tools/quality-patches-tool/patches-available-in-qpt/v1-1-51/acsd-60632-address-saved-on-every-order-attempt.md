---
title: 'ACSD-60632: Address saved with every order attempt'
description: Apply the ACSD-60632 patch to fix the Adobe Commerce issue where a new address is saved with each order placement attempt, regardless of whether the order is successfully created or not.
feature: Orders, Products
role: Admin, Developer
exl-id: 9b623a1c-594f-47ed-82b4-d11ba20f3a58
type: Troubleshooting
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: 4820f335-ec9f-5611-8fe3-f5b7e3e56967
    internal-label: Orders
  - id: 4067ab89-2e97-5de1-8d98-de8318461a8d
    internal-label: Products
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
---
# ACSD-60632: Address saved with every order attempt

The ACSD-60632 patch fixes the issue where a new address is saved with each order placement attempt, regardless of whether the order is successfully created or not. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.51 is installed. The patch ID is ACSD-60632. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p8

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.5-p8 - 2.4.7-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Each time an order placement is attempted, a new address entry is saved in the system, regardless of whether the order is successfully created.

<u>Steps to reproduce</u>:

1. Enable **[!DNL PayPal Payflow Link]** payment method:
    * On a local machine, the system cannot receive API calls from [!DNL PayPal Payflow Link] without a real IP.
1. Create a simple product.
1. Create a registered customer without address.
1. Add the product to cart.
1. Proceed to Checkout.
1. Fill in the address. Ensure that the first address is created at this step.
1. On the *[!UICONTROL Review and Payments]* page, select the **[!UICONTROL Credit Card (Payflow Link)]** radio button.
1. Click **[!UICONTROL Continue]**:
    * The checkout page returns to the *[!UICONTROL Review and Payments]* step with the pre-populated address and the expected error message.
1. Select *[!UICONTROL Credit Card (Payflow Link)]* radio button again.
1. Click on **[!UICONTROL Continue]**.

<u>Expected results</u>:

A new address is not created on the second order placement attempt.

<u>Actual results</u>:

A new address is created after every order placement attempt.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/develop/upgrade/apply-patches) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
