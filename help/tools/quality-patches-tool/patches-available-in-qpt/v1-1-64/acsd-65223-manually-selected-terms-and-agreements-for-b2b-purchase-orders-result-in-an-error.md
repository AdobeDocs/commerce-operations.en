---
title: 'ACSD-65223: Manually selected terms and agreements for B2B purchase orders result in an error'
description: Apply the ACSD-65223 patch to fix the Adobe Commerce issue where orders created using [!UICONTROL Purchase Orders] can't be completed with online payment methods like credit cards when terms and conditions are required for checkout.
feature: B2B, Purchase Orders
role: Admin, Developer
---

# ACSD-65223: Manually selected terms and agreements for B2B purchase orders result in an error

The ACSD-65223 patch fixes the issue where orders created using **[!UICONTROL Purchase Orders]** can't be completed with online payment methods like credit cards when terms and conditions are required for checkout. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.64 is installed. The patch ID is ACSD-65223.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) B2B 1.5.1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) B2B 1.5.1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

If terms and conditions are required to place an order, and you are trying to finalize an order created using [!UICONTROL Purchase Orders], the order can't be placed using online payment methods like credit cards.

<u>Steps to reproduce</u>:

1. Create a simple product.
1. Go to **[!UICONTROL Stores]** > **[!UICONTROL Settings]** > **[!UICONTROL Configuration]** > **[!UICONTROL General]** and choose **[!UICONTROL B2B Features]**.
1. Set **[!UICONTROL Enable Company]** and **[!UICONTROL Enable Purchase Orders]** to *Yes*.
1. Go to **[!UICONTROL Stores]** > **[!UICONTROL Settings]** > **[!UICONTROL Terms and Conditions]** and create a new condition. Set **[!UICONTROL Applied]** to *[!UICONTROL Manually]*.
1. Go to **[!UICONTROL Stores]** > **[!UICONTROL Settings]** > **[!UICONTROL Configuration]** > **[!UICONTROL Sales]** > **[!UICONTROL Checkout]** and set **[!UICONTROL Enable Terms and Conditions]** to *Yes*.
1. Go to **[!UICONTROL Stores]** > **[!UICONTROL Settings]** > **[!UICONTROL Configuration]** > **[!UICONTROL Sales]** > **[!UICONTROL Payment Methods]** and configure [!DNL Braintree].
1. On the storefront, create a company.
1. In the admin, go to **[!UICONTROL Customers]** > **[!UICONTROL Companies]**.
1. Approve the company and allow **[!UICONTROL Purchase Orders]**.
1. On the frontend, log in to the account.
1. Add an item to the cart.
1. Place an order using [!UICONTROL Purchase Order].
1. In the customer dashboard, click the **[!UICONTROL Purchase Orders]** tab.
1. Create an order from the new purchase order. Then select credit card as the payment method.
1. Agree to the terms and conditions.
1. Place the order.

<u>Expected results</u>:

User is able to place an order using an online payment method on approved purchase orders when terms and conditions are required for checkout.

<u>Actual results</u>:

User can't place an order using an online payment method on approved purchase orders when terms and conditions are required for checkout.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
