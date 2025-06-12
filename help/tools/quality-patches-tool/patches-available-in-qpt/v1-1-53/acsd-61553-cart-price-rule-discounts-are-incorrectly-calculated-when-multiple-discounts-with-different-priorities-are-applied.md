---
title: 'ACSD-61553: [!UICONTROL Cart Price Rule] is incorrectly calculated when multiple discounts with different priorities are applied'
description: Apply the ACSD-61553 patch to resolve the Adobe Commerce issue where the [!UICONTROL Cart Price Rule] is incorrectly calculated when multiple discounts with different priorities are applied.
feature: Shopping Cart, Price Rules
role: Admin, Developer
exl-id: 0fb7a988-d391-49e5-a59d-62315a16132c
---
# ACSD-61553: [!UICONTROL Cart Price Rule] is incorrectly calculated when multiple discounts with different priorities are applied

The ACSD-61553 patch fixes the issue where the [!UICONTROL Cart Price Rule] is incorrectly calculated when multiple discounts with different priorities are applied. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.53 is installed. The patch ID is ACSD-61553. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods) 2.4.5-p8

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.4.5 - 2.4.6-p8

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

[!UICONTROL Cart Price Rule] is incorrectly calculated when multiple discounts with different priorities are applied.

<u>Steps to reproduce</u>:

1. Create a simple product with a price of $9,000.
1. Create a [!UICONTROL Cart Price Rule]: Rule A with a fixed discount of $700 without any conditions and without discarding subsequent rules.
1. Create another [!UICONTROL Cart Price Rule]: Rule B with a fixed discount of $1000 without any conditions and without discarding subsequent rules.
1. Add the product with the quantity 13 to the cart.
1. Update the rules with any of the below scenarios:

    Scenario 01
    
        Rule A
            Priority: 1
            Maximum Qty Discount is Applied To: 1

        Rule B
            Priority: 0
            Maximum Qty Discount is Applied To: 0

    Scenario 02
    
        Rule A
            Priority: 0
            Maximum Qty Discount is Applied To: 0

        Rule B
            Priority: 1
            Maximum Qty Discount is Applied To: 1

    Scenario 03
    
        Rule A
            Priority: 0
            Maximum Qty Discount is Applied To: 0

       Rule B
            Priority: 0
            Maximum Qty Discount is Applied To: 1

1. Click the **[!UICONTROL Update Shopping Cart]** button to recalculate the discounts.

<u>Expected results</u>:

You see the following total discount for different scenarios:

    Scenario 01: $13,700
    Scenario 02: $10,100
    Scenario 03: $10,100

<u>Actual results</u>:

In all the three scenarios, the total discount is $9,000.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
