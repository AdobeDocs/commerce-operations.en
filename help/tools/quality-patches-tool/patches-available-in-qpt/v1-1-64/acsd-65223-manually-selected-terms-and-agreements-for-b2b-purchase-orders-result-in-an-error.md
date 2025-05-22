---
title: 'ACSD-65223: Manually selected terms and agreements for B2B purchase orders result in an error'
description: Apply the ACSD-65223 patch to fix the Adobe Commerce issue where if Terms and Conditions are required to place an order, and you are trying to finalize an order created using Purchase Orders, the order cannot be placed using online payment methods (Credit Card).
feature: B2B, Purchase Orders
role: Admin, Developer
---

# ACSD-65223: Manually selected terms and agreements for B2B purchase orders result in an error

The ACSD-65223 patch fixes the issue where if Terms and Conditions are required to place an order, and you are trying to finalize an order created using Purchase Orders, the order cannot be placed using online payment methods (Credit Card). This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.64 is installed. The patch ID is ACSD-65223. Please note that this issue is scheduled to be fixed in Adobe Commerce TBD.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

If Terms and Conditions are required to place an order, and you are trying to finalize an order created using Purchase Orders, the order cannot be placed using online payment methods (Credit Card).

<u>Steps to reproduce</u>:

1. Create any simple product
1. Go to Stores > Configuration > General > B2B Settings
1. Enable Company and Purchase Orders
1. Go to Stores > Terms and Conditions and create a new Condition (Applied: Manually)
1. Go to Stores > Configuration > Sales > Checkout and enable Terms and Conditions
1. Go to Stores > Configuration > Sales > Payment Methods and configure Braintree
1. On the frontend, create a Company
1. In the admin, go to Customers > Companies
1. Approve the Company and allow Purchase orders
1. On the frontend, login to the account
1. Add an item to the cart
1. Place an order using Purchase Order
1. In the customer's dashboard, click on the Purchase Orders tab
1. Create an order from the new Purchase Order - then select the Credit Card method
1. Agree to the Terms and Conditions
1. Try to place the order

<u>Expected results</u>:

User should be able to place an order using an online payment method on approved Purchase Orders when Terms and Conditions are required

<u>Actual results</u>:

User cannot place an order using an online payment method on approved Purchase Orders when Terms and Conditions are required

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.