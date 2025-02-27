---
title: 'ACSD-63469: fixed-amount cart discounts not applied correctly with multiple rules'
description: Apply the ACSD-63469 patch to fix the Adobe Commerce issue where fixed-amount discounts for the whole cart do not apply properly when more than one rule is applied.
feature: 
role: Admin, Developer
---

# ACSD-63469: fixed-amount cart discounts not applied correctly with multiple rules

The ACSD-63469 patch fixes the issue where fixed-amount discounts for the whole cart do not apply properly when more than one rule is applied. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.59 is installed. The patch ID is ACSD-63469. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.7 - 2.4.7-p4

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

When multiple **[!UICONTROL Fixed amount discount for whole cart]** rules are applied simultaneously, and the products have discounted or special prices, the discount value is calculated incorrectly. 

<u>Steps to reproduce</u>:

1. Create two products with prices of $850 and $85, and set their special prices to $765 and $68, respectively.
1. Create two **[!UICONTROL Cart Price Rules]** as follows:
    * Rule 1
        * **[!UICONTROL Conditions]** -> *Qty >= 2, $850 product*
        * **[!UICONTROL Actions]** -> **[!UICONTROL Fixed amount discount for whole cart]** = $153
    * Rule 2
        * **[!UICONTROL Conditions]** -> *Qty >= 2, $85 product*
        * **[!UICONTROL Actions]** -> **[!UICONTROL Fixed amount discount for whole cart]** = $14
1. Add two products to the cart, each with a quantity of 2.

<u>Expected results</u>:

The discount applied in the cart is $167.

<u>Actual results</u>:

The discount applied in the cart is $41.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Additional steps required after the patch installation

(This section is optional; there might be some steps required after applying the patch to fix the issue.) 

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.

