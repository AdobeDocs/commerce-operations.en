---
title: 'ACSD-62475: Fixes gift card merging issues in the cart'
description: Apply the ACSD-62475 patch to fix the Adobe Commerce issue where gift card products with different details are incorrectly merged into a single line item in the cart. 
feature: Shopping Cart, Quotes
role: Admin, Developer
---
# ACSD-62475: Fixes gift card merging issues in the cart

The ACSD-62475 patch fixes the issue where gift card products with different details are incorrectly merged into a single line item in the cart. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.56 is installed. The patch ID is ACSD-62475. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.7 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Gift Card products added to the cart with unique sender or recipient details are incorrectly merged into a single line item, resulting data inconsistencies.

<u>Steps to reproduce</u>:

1. Create a [!UICONTROL Gift Card] product with the following settings:
    * **[!UICONTROL Cart Type]**: [!UICONTROL Virtual]
    * **[!UICONTROL Amount]**: 10

1. On the storefront, create a new user and log in.

1. Add the Gift Card product to the cart with the following details:
   * **[!UICONTROL Sender Name]**: Sender 1
   * **[!UICONTROL Sender Email**]: sender1@test.com
   * **[!UICONTROL Recipient Name**]: Recipient 1
   * **[!UICONTROL Recipient Email**]: recipient1@test.com


1. Log out

1. Add the same Gift Card product to the cart with the following details:
   * **[!UICONTROL Sender Name]**: Sender 2
   * **[!UICONTROL Sender Email**]: sender2@test.com
   * **[!UICONTROL Recipient Name**]: Recipient 2
   * **[!UICONTROL Recipient Email**]: recipient2@test.com

1. Log back in and check the cart.

<u>Expected results</u>:

Both Gift Cards should appear as two separate line items with their respective details.

<u>Actual results</u>:

The Gift Cards are merged into one line item with a quantity of 2, retaining the details of the first Gift Card.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
