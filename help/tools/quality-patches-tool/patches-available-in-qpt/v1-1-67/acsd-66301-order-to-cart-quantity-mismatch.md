---
title: 'ACSD-66301: Moving products from an order to the cart in Commerce Admin results in a quantity mismatch'
description: Apply the ACSD-66301 patch to fix the Adobe Commerce issue where, when creating an order from the Admin panel, products in the customer’s cart are not removed after being added to the order.
feature: Orders, Products
role: Admin, Developer
type: Troubleshooting
exl-id: 61e0e491-b2dc-4ae0-807e-2ae80d17f9c2
---
# ACSD-66301: Moving products from an order back to the cart in the Commerce Admin results in quantity mismatch

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

Moving products from an order back to the cart in the Commerce Admin results in quantity mismatch.

<u>Steps to reproduce</u>:

1. Create a user through the storefront.
2. Add a product to the shopping cart with quantity = *5*.
3. Go to the Admin panel and open the user account where the product was added.
4. Click **[!UICONTROL Create Order]**.
5. In the left panel, you can view customer's activities, including the product and quantity added. 
6. Add the product to the order.
7. Update the quantity = *4* in the main order section.
8. Click **[!UICONTROL Update Items and Quantities]** button.
9. Transfer the selected items from the order back to the customer's shopping cart.

<u>Expected results</u>:

Product added to the shopping cart with the new quantity = *4*.

<u>Actual results</u>:

Product added to the shopping cart with the old quantity = *5*.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
