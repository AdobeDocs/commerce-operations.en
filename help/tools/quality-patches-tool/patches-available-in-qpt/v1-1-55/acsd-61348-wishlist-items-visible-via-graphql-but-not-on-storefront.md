---
title: 'ACSD-61348: Wishlist items visible via GraphQL but not on storefront'
description: Apply the ACSD-61348 patch to fix the Adobe Commerce issue where the wishlist items are visible via GraphQL but not on the storefront in a multi-website environment.
feature: Customers
role: Admin, Developer
---
# ACSD-61348: Wishlist items visible via GraphQL but not on storefront 

The ACSD-61348 patch fixes the issue where the wishlist items are visible via GraphQL but not on the storefront in a multi-website environment. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.55 is installed. The patch ID is ACSD-61348. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8. 

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods) 2.4.6-p5

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Wishlist items are visible via GraphQL but not on the storefront in a multi-website environment.

<u>Steps to reproduce</u>:

1. Configure two websites.
1. Go to **[!UICONTROL Config Customers]** > **[!UICONTROL Customer Configuration]** > **[!UICONTROL Account Sharing Options]** and set **[!UICONTROL Share Customer Accounts]** to *[!UICONTROL Global]*.
1. Go to **[!UICONTROL Config Customers]** > **[!UICONTROL Wishlist]** > **[!UICONTROL General Options]** and set **[!UICONTROL Enable Multiple Wish Lists]** to *Yes*.
1. Go to **[!UICONTROL Config General]** > **[!UICONTROL Web]** and set **[!UICONTROL Add Store Code to URLs]** to *Yes*.
1. Create a simple product and assign it to the second website.
1. Create a customer and log in.
1. Add a product to the wishlist.
1. Assign the product to the default website.
1. Go to the *[!UICONTROL Wishlist]* page on the default website.

<u>Expected results</u>:

The product is on the wishlist.

<u>Actual results</u>:

There are no products on the wishlist.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
