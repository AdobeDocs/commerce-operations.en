---
title: 'ACSD-61799: Incorrect total discount calculation with multiple fixed discount cart rules applied to quote'
description: Apply the ACSD-61799 patch to fix the Adobe Commerce issue where the total discount is incorrectly calculated when multiple cart rules with fixed discounts are applied to the quote.
feature: Price Rules 
role: Admin, Developer
---

# ACSD-61799: Incorrect total discount calculation with multiple fixed discount cart rules applied to quote

The ACSD-61799 patch solves/fixes the issue where the total discount is incorrectly calculated when multiple cart rules with fixed discounts are applied to the quote. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.54 is installed. The patch ID is ACSD-61799. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4-p6

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.4-p11

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The total discount is incorrectly calculated when multiple cart rules with *[!UICONTROL Fixed amount discount for the whole cart]* are applied to a shopping cart.

<u>Steps to reproduce</u>:

1. Create four products with a price of $1000.
1. Create three cart price rules without any conditions that give a $100 discount for the whole cart.
1. Create another cart price rule that gives a $100 discount for the whole cart with the condition that will not apply the rule.
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

