---
title: 'ACSD-62481: Customer's shopping cart gets empty even if Persistence is enabled'
description: Apply the ACSD-62481 patch to fix the Adobe Commerce issue where the persistent cart feature fails to work when using the login popup dialog in checkout, as it lacks a 'Remember Me' checkbox, unlike the main login form. Consequently, products in the cart are removed upon sign-out after logging in through this method.
feature: Shopping Cart, Checkout
role: Admin, Developer
---

# ACSD-62481: Customer's shopping cart gets empty even if Persistence is enabled

The ACSD-62481 patch fixes the issue where the persistent cart feature fails to work when using the login popup dialog in checkout, as it lacks a 'Remember Me' checkbox, unlike the main login form. Consequently, products in the cart are removed upon sign-out after logging in through this method. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.57 is installed. The patch ID is ACSD-62481. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Apply the ACSD-62481 patch to fix the Adobe Commerce issue where the persistent cart feature fails to work when using the login popup dialog in checkout, as it lacks a 'Remember Me' checkbox, unlike the main login form. Consequently, products in the cart are removed upon sign-out after logging in through this method.

<u>Steps to reproduce</u>:

1. In the admin, configure the guest and persistent cart settings
    - **[!UICONTROL Stores]** -> **[!UICONTROL Settings]** -> **[!UICONTROL Configuration]** -> **[!UICONTROL Sales]** -> **[!UICONTROL Checkout]** -> **[!UICONTROL Checkout Options]** -> **[!UICONTROL Allow Guest Checkout]** -> **[!UICONTROL No]**
    - Click **[!UICONTROL Save Config]**
1. **[!UICONTROL Stores]** -> **[!UICONTROL Settings]** -> **[!UICONTROL Configuration]** -> **[!UICONTROL Customers]** -> **[!UICONTROL Persistent Shopping Cart]** -> **[!UICONTROL General Options]** -> **[!UICONTROL Enable Persistence]** -> **[!UICONTROL Yes]**
1. Leave all the other settings as default, but change **[!UICONTROL Clear Persistence on Sign Out]** -> **[!UICONTROL NO]**.
    - Click **[!UICONTROL Save Config]**
1. Add a simple product to the catalogue
    - **[!UICONTROL Catalog]** -> **[!UICONTROL Products]** -> **[!UICONTROL Add product]**
    - Fill in required minimum details and ensure it's in stock
1. On the frontend create a customer account using the main form (../customer/account/create/) and sign out
1. Add the product to the cart as a guest
1. Open the mini-cart with the icon at the top right, then click **[!UICONTROL View and Edit Cart]**
1. Proceed to the checkout step
1. Login to the new customer account in the popup dialog that appears and sign out

<u>Expected results</u>:

Cart should retain the products of the previously logged-in user

<u>Actual results</u>:

Cart is empty

Popup login dialog has no 'Remember Me' option

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: Upgrades and Patches > Apply Patches in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
