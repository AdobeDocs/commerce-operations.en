---
title: 'ACSD-63062: Incorrect cart discount calculations with multiple overlapping rules'
description: Apply the ACSD-63062 patch to fix the Adobe Commerce issue where where incorrect cart discount calculations occur when multiple overlapping rules are applied.
feature: Price Rules
role: Admin, Developer
---
# ACSD-63062: Incorrect cart discount calculations with multiple overlapping rules 

The ACSD-63062 patch fixes the issue where incorrect cart discount calculations occur when multiple overlapping rules are applied. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.56 is installed. The patch ID is ACSD-63062. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8. 

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods) 2.4.7-p2

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.4.7 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Incorrect cart discount calculations occur when multiple overlapping rules are applied. 

<u>Steps to reproduce</u>:

1. Install fresh instance with sample data.
1. Create three simple products:
  
    * simple1: $1080
    * simple2: $260
    * simple3: $280

1. Create four *[!UICONTROL Cart Price Rules]* as follows:

    * Rule 1:

        * *[!UICONTROL Priority]*: 100
        * *[!UICONTROL Conditions]* tab: Use simple2 ($280) product if total qty equals or is greater than 3
        * *[!UICONTROL Actions]* tab: SKU is simple2
        * *[!UICONTROL Fixed Amount Discount]*: $80

    * Rule 2:

        * *[!UICONTROL Priority]*: 200
        * *[!UICONTROL Actions]* tab: SKU is simple2
        * *[!UICONTROL Percentage of Product Price Discount]*: 20%

    * Rule 3:

        * *[!UICONTROL Priority]*: 300
        * *[!UICONTROL Conditions]* tab: Subtotal equals or is greater than $1000
        * *[!UICONTROL Fixed Amount Discount]* for the whole cart: $100

    * Rule 4:

        * *[!UICONTROL Priority]*: 400
        * *[!UICONTROL Conditions]* tab: Use simple1 ($1080) product if total qty equals or is greater than 2
        * *[!UICONTROL Actions]* tab: SKU is simple1
        * *[!UICONTROL Fixed Amount Discount]* for the whole cart: $960

1. Go to the storefront and add the following products with given quantity to the cart:

    * simple1 = 2
    * simple2 = 1
    * simple3 = 3

1. Check the shopping cart. 

<u>Expected results</u>:

The discount applied is $1352.

<u>Actual results</u>:

The discount applied is $1525.33.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.


## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
