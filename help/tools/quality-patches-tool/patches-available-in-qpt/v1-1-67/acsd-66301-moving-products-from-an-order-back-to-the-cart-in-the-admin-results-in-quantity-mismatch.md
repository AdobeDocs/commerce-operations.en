---
title: 'ACSD-66301: Moving products from an order back to the cart in the Commerce Admin results in quantity mismatch'
description: Apply the ACSD-66301 patch to fix the Adobe Commerce issue where when creating an order from the Admin panel, products in the customer’s cart are not removed after being added to the order.
feature: Order, Admin Panel
role: Admin, Developer
---

# ACSD-66301: Moving products from an order back to the cart in the  Commerce Admin results in quantity mismatch

The ACSD-66301 patch fixes the issue where moving products from an order back to the cart in the Admin results in quantity mismatch. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.67 is installed. The patch ID is ACSD-66301. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p10, 2.4.7-p4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.6-p9 - 2.4.6-p11, 2.4.7-p4 - 2.4.7-p6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Issue where moving products from an order back to the cart in the Admin results in quantity mismatch.

<u>Steps to reproduce</u>:

1. Create a user through the storefront.
2. Add the product to the shopping cart with quantity = *5*.
3. Go back to the admin and go to the user account where you added the quantity.
4. Click on a new order.
5. On the left panel you can see the customer activities adding the product and the quantity. 
6. Add the product to the order.
7. Update quantity = *4* in the main order section.
8. Click **[!UCONTROL Update Items and Quantities]** button.
9. Click Action > **[!Move to Shopping Cart]** dropdown.

<u>Expected results</u>:

Product added to the shopping cart with new QTY = *4*.

<u>Actual results</u>:

Product added to the shopping cart with old QTY = *5*.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
