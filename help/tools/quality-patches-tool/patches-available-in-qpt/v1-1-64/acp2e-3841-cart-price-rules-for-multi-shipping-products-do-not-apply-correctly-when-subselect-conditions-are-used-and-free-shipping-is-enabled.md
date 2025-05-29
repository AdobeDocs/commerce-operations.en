---
title: 'ACP2E-3841: Cart price rules for multi-shipping products do not apply correctly when subselect conditions are used and free shipping is enabled'
description: Apply the ACP2E-3841 patch to fix the Adobe Commerce issue where cart price rules for multi-shipping products do not apply correctly when subselect conditions are used and free shipping is enabled.
feature: Shopping Cart, Price Rules
role: Admin, Developer
---

# ACP2E-3841: Cart price rules for multi-shipping products do not apply correctly when subselect conditions are used and free shipping is enabled

The ACP2E-3841 patch fixes the issue where cart price rules for multi-shipping products do not apply correctly when subselect conditions are used and free shipping is enabled. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.64 is installed. The patch ID is ACP2E-3841. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p9

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.5 - 2.4.7-p5

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Cart price rules for multi-shipping products do not apply correctly when subselect conditions are used and free shipping is enabled.

<u>Prerequisites</u>:

**Settings:**
1. **[!UICONTROL Free Shipping]** = *Enabled*
1. **[!UICONTROL Minimum Order Amount]** = *99999999*

**Needed categories:**
1. Category Test 1
1. Category Test 2

**Needed products:**
1. Product Test 1:
    1. Categories: Category Test 1
    1. Price: $ 45
1. Product Test 2:
    1. Categories: Category Test 2
    1. Price: $ 56.25 
    **(Prices must be the same as shown here to ensure the test works correctly.)**

**Cart Price Rule:**

Log in as an admin and go to **[!UICONTROL Marketing]** >  **[!UICONTROL Promotions]** > **[!UICONTROL Cart Price Rules]** > **[!UICONTROL Add new rule]**. Use these values:

**[!UICONTROL Rule Information]:**
1. **[!UICONTROL Rule Name]**: Test Free Shipping
1. **[!UICONTROL Active]**: *Yes*
1. **[!UICONTROL Websites]**: *Main Website*
1. **[!UICONTROL Customer Groups]**: *NOT LOGGED IN, General, Wholesale, Retailer*
1. **[!UICONTROL Coupon]**: *No Coupon*
1. **[!UICONTROL Uses per Customer]**: *0*
1. **[!UICONTROL Priority]**: *1*

**[!UICONTROL Conditions]:**

**[!UICONTROL If ALL of these conditions are TRUE:]**


**[!UICONTROL If total amount (incl. tax) equals or greater than 100 for a subselection of items in cart matching ALL of these conditions:]**


**[!UICONTROL Category is]** *5,12,13*

Actions:

**[!UICONTROL Percent of product price discount]** = *10*

<u>Steps to reproduce</u>:

1. Log in to the store front.
2. Add Product Test 1.
3. Add two quantities of Product Test 2.
4. Visit cart.
5. Select **[!UICONTROL Check Out with Multiple Addresses]**.

<u>Expected results</u>:

No errors.

<u>Actual results</u>:

*500 error*

*Message: Deprecated Functionality: Implicit conversion from float 112.5 to int loses precision in /app/code/Magento/SalesRule/Model/Rule/Condition/Product/Subselect.php on line 214*

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
