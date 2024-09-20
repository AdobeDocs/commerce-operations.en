---
title: 'ACSD-54887: Customer shopping cart gets cleared after customer session has expired'
description: Apply the ACSD-54887 patch to fix the Adobe Commerce issue where the customer shopping cart gets cleared after the customer session has expired with [!UICONTROL Persistent Shopping Cart] enabled.
feature: Shopping Cart
role: Admin, Developer
---

# ACSD-54887: Customer shopping cart gets cleared after customer session has expired

The ACSD-54887 patch fixes the issue where the customer's shopping cart gets cleared after the customer session has expired with [!UICONTROL Persistent Shopping Cart] enabled. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.50 is installed. The patch ID is ACSD-54887. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.4-p8, 2.4.5-p3 - 2.4.5-p7, and 2.4.6-p1 - 2.4.6-p5

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Customer shopping cart gets cleared after the customer session has expired with [!UICONTROL Persistent Shopping Cart] enabled.

<u>Steps to reproduce</u>:

1. Enable [!UICONTROL Persistent Shopping Cart]. Go to **[!UICONTROL Stores]** > **[!UICONTROL Configuration]** > **[!UICONTROL Customers]** > **[!UICONTROL Persistent Shopping Cart]** = *Yes*.

    Log in with Persistence enabled (Note: It is not available on the popup authorization, but only on the direct [!UICONTROL Sign in] page).

1. Add a product to the cart.
1. Proceed to checkout and select a payment method.
1. Expire the session (delete `PHPSESSID`).
1. Refresh the page. Observe that the quote is immediately converted to a guest quote because a payment method is already selected, and the [!UICONTROL Persistent Cart] cookie is removed.
1. Expire the session (delete `PHPSESSID`).
1. Refresh the page. See that the cart is empty.
1. Sign in again.

<u>Expected results</u>:

The cart has the product when you sign in again.

<u>Actual results</u>:

The cart is empty when signing in again.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.

