---
title: 'MDVA-42326: Customers get error on checkout after session timeout'
description: The MDVA-42326 patch solves the issue where the customers get an error on checkout after the session timeout, even if the Persistent Shopping Cart is enabled. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.8 is installed. The patch ID is MDVA-42326. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.
feature: Checkout, Orders
role: Admin
exl-id: f9ef6778-298b-4ff9-9c4b-b3f47bb04b67
---
# MDVA-42326: Customers get error on checkout after session timeout

The MDVA-42326 patch solves the issue where the customers get an error on checkout after the session timeout, even if the Persistent Shopping Cart is enabled. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.8 is installed. The patch ID is MDVA-42326. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.3-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.6 - 2.3.7-p2, 2.4.1 - 2.4.3-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

Customers get an error on checkout after the session timeout, even if the Persistent Shopping Cart is enabled.

<u>Prerequisites</u>:

1. Go to **Config** > **General** > **Web** > **Default Cookie Settings** > **Cookie Lifetime** and set to **120**.
1. Go to **Config** > **Customers** > **Customer Configuration** > **Online Customers Options** and set both values to **2**.
1. Go to **Config** > **Customers** > **Persistent Shopping Cart** and set to **Enable**.
1. Go to **Config** > **Sales** > **Payment Methods** and turn off all payment methods except **Check/Money Order** (it should be enabled).

<u>Steps to reproduce</u>:

1. Log in as a customer and add some products to the cart.
1. Check the shopping cart.
1. Wait for two minutes (set in precondition); the session should timeout.
1. Click **Go to checkout** and do not refresh the page.
1. Checkout as a guest, fill shipping address and choose a shipping method.
1. Click **Next**.
1. On the **Review & Payments** page, click **Place Order**. Since only one payment method is allowed, the customer should be able to place the order without selecting the payment method.

<u>Expected results</u>:

The customer should be able to place the order.

<u>Actual results</u>:

The customer gets the following error: *Failed address validation: Email has a wrong format*.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
