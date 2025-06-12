---
title: 'ACSD-54885: Exception during multiple address checkout when admin logs in as customer'
description: Apply the ACSD-54885 patch to fix the Adobe Commerce issue where an error occurs during multiple address checkout when the admin is using the *[!UICONTROL Login as Customer]* functionality.
feature: Checkout
role: Admin, Developer
exl-id: c146bc2a-2df1-4825-9cfc-69e04095b3c2
---
# ACSD-54885: Exception during multiple address checkout when admin logs in as customer

The ACSD-54885 patch fixes the issue where an error occurs during multiple address checkout when the admin is using the *[!UICONTROL Login as Customer]* functionality. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.43 is installed. The patch ID is ACSD-54885. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.2 - 2.4.6-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

An error occurs during multiple address checkout when the admin is using the *[!UICONTROL Login as Customer]* functionality.

<u>Steps to reproduce</u>:

1. Ensure that *[!UICONTROL Login as Customer]* is enabled. Go to **[!UICONTROL Admin]** > **[!UICONTROL Stores]** > **[!UICONTROL Configurations]** > **[!UICONTROL Advanced]** > **[!UICONTROL Admin]** > **[!UICONTROL Admin Actions]** > **[!UICONTROL Logging]** > **[!UICONTROL Login as Customer]**.
1. Create a simple product.
1. Create a new customer account with an address.
1. Go to the customer account in the backend:

    * Go to the **[!UICONTROL Account Information]** tab, and set *[!UICONTROL Allow remote shopping assistance]* = *Yes*.
    * Click **[!UICONTROL Login as Customer]**.

1. Add the product to the cart and proceed to *[!UICONTROL Checkout with multiple addresses]*.
1. Update the product quantity.
1. Try to go back to the shopping cart.

<u>Expected results</u>:

You are able to update the cart and use multiple address checkout.

<u>Actual results</u>:

You get the following error when going back to the shopping cart.

```PHP
report.CRITICAL: Error: Call to a member function getCustomer() on null in magento2ee/app/code/Magento/LoginAsCustomerLogging/Observer/LogUpdateQtyObserver.php:88
```

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
