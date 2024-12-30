---
title: 'ACSD-61622: FedEx account specific rates are missing in REST API response'
description: Apply the ACSD-61622 patch to fix the Adobe Commerce issue where FedEx account specific rates are missing from the REST API response.
feature: Shipping/Delivery
role: Admin, Developer
---
# ACSD-61622: FedEx account specific rates are missing in REST API response

The ACSD-61622 patch adds `ACCOUNT` to the rate request type on the request sent from Adobe Commerce, by which FedEx returns a response similar to a SOAP response. This resolves the issue where FedEx account specific rates were missing from the REST API response. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.57 is installed. The patch ID is ACSD-61622. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p5

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.6-p1 - 2.4.6-p8

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

FedEx account specific rates are missing from the REST API response to a request sent from Adobe Commerce.

<u>Steps to reproduce</u>:

1. Create four products with a price of $1000.
1. Create three cart price rules without any conditions that give a $100 discount for the whole cart.
1. Create another cart price rule that gives a $100 discount for the whole cart, with a condition that prevents the rule from being applied.
1. Disable the rule.
1. Add three products to the shopping cart and observe the discount in the cart.
1. Add additional products to the cart and observe the discount in the cart.
1. Enable the disabled cart price rule.
1. Update the shopping cart page and observe the discount in the cart.

<u>Expected results</u>:

1. Adding additional products to the cart does not change the amount of discount.
1. Enabling the cart price rule with a condition that doesn't apply does not change the amount of discount.

<u>Actual results</u>:

1. Adding additional products to the cart changes the amount of discount.
1. Enabling the cart price rule with a condition that doesn't apply changes the amount of discount.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
