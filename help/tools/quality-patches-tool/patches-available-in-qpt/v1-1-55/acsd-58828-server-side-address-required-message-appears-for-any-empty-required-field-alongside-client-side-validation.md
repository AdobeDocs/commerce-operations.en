---
title: 'ACSD-58828: Server-side *address is required* message appears for any empty required field, alongside client-side validation'
description: Apply the ACSD-58828 patch to fix the Adobe Commerce issue where the server-side validation message *address is required* appears if any required field is left empty, alongside the client-side validation message.
feature: Shipping/Delivery, Checkout
role: Admin, Developer
---

# ACSD-58828: Server-side *address is required* message appears for any empty required field, alongside client-side validation

The ACSD-58828 patch fixes the issue where the server-side validation message *address is required* appears if any required field is left empty, alongside the client-side validation message. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.55 is installed. The patch ID is ACSD-58828. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**
* Adobe Commerce (all deployment methods) 2.4.6-p2

**Compatible with Adobe Commerce versions:**
* Adobe Commerce (all deployment methods) 2.4.6 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The server-side validation message *address is required* appears if any required field is left empty, alongside the client-side validation message.

Steps to reproduce:

1. Log in as a customer.
1. Add a product to the cart.
1. Proceed to checkout.
1. Leave the shipping address as is.
1. Select the **[!UICONTROL Flat rate]** and select **[!UICONTROL Next]**.
1. Uncheck **[!UICONTROL My billing and shipping address are the same]**.
1. Add a new address from the dropdown.
1. Leave any required field empty and select **[!UICONTROL Update]**.

Expected results:

The error message describes missing or incorrect information required to checkout.

Actual results:

The error *address is required. Enter and try again.* displays.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
