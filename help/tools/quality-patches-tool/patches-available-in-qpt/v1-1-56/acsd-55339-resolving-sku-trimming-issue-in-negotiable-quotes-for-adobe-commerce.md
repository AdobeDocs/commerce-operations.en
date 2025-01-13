---
title: 'ACSD-55339: Resolving SKU trimming issue in negotiable quotes for Adobe Commerce'
description: Apply the ACSD-55339 patch to fix the Adobe Commerce issue where product SKUs with leading zeros are trimmed, causing negotiation errors.
feature:  B2B, Quotes
role: Admin, Developer
---
# ACSD-55339: Resolving SKU trimming issue in negotiable quotes for Adobe Commerce

The ACSD-55339 patch fixes the issue where product SKUs with leading zeros are trimmed, resulting in errors during the negotiation process. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.56 is installed. The patch ID is ACSD-55339. Please note that the issue is scheduled to be fixed in Adobe Commerce B2B 1.5.0.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods) 2.4.5-p1

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Numeric product SKUs with leading zeros are trimmed when used in negotiable quotes, resulting in errors that prevent updating quantities or setting prices.

<u>Steps to reproduce</u>:

1. Navigate to the product creation section in the admin panel.
1. Set the [!UICONTROL SKU] for the product as 01910.
1. Log in to the storefront and perform the following operations:
    1. Add product to the cart.
    1. View and edit the cart.
    1. Request a quote.
1. Go to [!UICONTROL admin] > [!UICONTROL Quote] > [!UICONTROL View] and [!UICONTROL Add Products by SKU] - 01910.

**Note:** The SKU is displayed as *1910* instead of *01910*. This discrepancy prevents the user from updating the quantity or setting prices, as no product with the SKU 1910 exists in the catalog.

<u>Expected results</u>:

The negotiable quote should be updated successfully without any errors.

<u>Actual results</u>:

A warning message is displayed indicating that the product does not exist.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.


## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
