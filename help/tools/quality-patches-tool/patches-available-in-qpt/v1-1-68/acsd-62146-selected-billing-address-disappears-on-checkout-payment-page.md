---
title: 'ACSD-62146: Selected billing address disappears on checkout payment page'
description: Apply the ACSD-62146 patch to fix the Adobe Commerce issue where the selected billing address disappears on the checkout payment page when address search is enabled and the Number of Customer Addresses Limit is set to 1.
feature: Customers, Checkout
role: Admin, Developer
type: Troubleshooting
exl-id: 2a2f1afe-8a48-4beb-b78d-a894b685717d
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: 22bad240-8308-569b-a9d5-578f1ff890ca
    internal-label: Customers
  - id: 8cd50456-5eb0-5364-922a-f14161feb828
    internal-label: Checkout
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
---
# ACSD-62146: Selected billing address disappears on checkout payment page

The ACSD-62146 patch fixes the issue where the selected billing address disappears on the checkout payment page when address search is enabled and the [!UICONTROL Number of Customer Addresses Limit] is set to 1. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.68 is installed. The patch ID is ACSD-62146. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.7 - 2.4.7-p6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The selected billing address disappears on the checkout payment page when address search is enabled and the **[!UICONTROL Number of Customer Addresses Limit]** is set to 1.

<u>Steps to reproduce</u>:

1. To enable Address Search, go to **[!UICONTROL Stores]** > **[!UICONTROL Configuration]** > **[!UICONTROL Sales]** > **[!UICONTROL Checkout]** > **[!UICONTROL Checkout Options]**.
1. Set **[!UICONTROL Number of Customer Addresses Limit]** to 1.
1. Create a customer and add two different addresses.
1. Add a product to the cart and proceed to checkout.
1. Click **[!UICONTROL Change Address]** and use the popup to change the address.
1. Select Address 2 as the shipping address.
1. Click **[!UICONTROL Next]** to proceed to the payment step.
1. Verify the billing and shipping address are the same.
1. Refresh the page without making the payment.

<u>Expected results</u>:

Shipping address is visible when billing and shipping addresses are the same.

<u>Actual results</u>:

Default billing address and selected shipping address are not visible.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/develop/upgrade/apply-patches) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
