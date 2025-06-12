---
title: 'ACSD-59865: [!UICONTROL Cart Price Rule] fails to cancel previous rules due to insufficient product quantity'
description: Apply the ACSD-59865 patch to fix the Adobe Commerce issue where the *Discount quantity step* value in *Fixed amount discount,* *Percent of product price discount,* and *Buy X get Y* [!UICONTROL Cart Price Rules] no longer cancels the action of previous rules.
feature: Price Rules
role: Admin, Developer
exl-id: 5838a740-018d-44c2-8135-54426ea08627
---
# ACSD-59865: [!UICONTROL Cart Price Rule] fails to cancel previous rules due to insufficient product quantity

The ACSD-59865 patch fixes the issue where the *[!UICONTROL Discount quantity step]* value in *[!UICONTROL Fixed amount discount],* *[!UICONTROL Percent of product price discount],* and *[!UICONTROL Buy X get Y]* [!UICONTROL Cart Price Rules] no longer cancels the action of previous rules. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.52 is installed. The patch ID is ACSD-59865. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.6-p7

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The [!UICONTROL Cart Price Rule] fails to cancel previously applied rules due to an insufficient product quantity in the cart.

<u>Steps to reproduce</u>:

1. Log in as an admin.
1. Go to **[!UICONTROL Marketing]** > **[!UICONTROL Cart Price Rules]** and click on **[!UICONTROL Add New rule]**.
    * Set **[!UICONTROL Rule Name]** = *Test - 1*
    * Select all *Websites* and *Customer groups*
    * Set **[!UICONTROL Priority]** = *0*
    * Go to the **[!UICONTROL Actions]** section:
        * Set **[!UICONTROL Apply]** = *Percent of product price discount*
        * Set **[!UICONTROL Discount amount]** = *10*
        * Set **[!UICONTROL Maximum Qty Discount is Applied To]** = *100*
        * Set **[!UICONTROL Discount Qty Step (Buy X)]** = *0*
        * Set **[!UICONTROL Discard subsequent rules]** to *No*
1. Clear the cache.
1. Go to the Storefront, add one item to the cart, and proceed to *checkout/cart*.
1. Verify that the *10%* discount is applied to your cart.
1. Return to the **[!UICONTROL Cart Price Rules]** and create a new rule.
    * Set **[!UICONTROL Rule Name]** = *Test - 2*
    * Select all **[!UICONTROL Websites]** and **[!UICONTROL Customer Groups]**
    * Set **[!UICONTROL Priority]** = *2*
    * Navigate to the **[!UICONTROL Actions]** section:
        * Set **[!UICONTROL Apply]** = *Percent of product price discount*
        * Set **[!UICONTROL Discount amount]** = *20*
        * Set **[!UICONTROL Maximum Qty Discount is Applied To]** = *100*
        * Set **[!UICONTROL Discount Qty Step (Buy X)]** = *3*
1. Clear the cache.
1. Go back to the Storefront again.
1. Update the cart to refresh the rules. Verify that the *10%* discount is no longer applied.
1. Add items to your cart until the quantity meets the *Step* value required for the second rule.

<u>Expected results</u>:

The first [!UICONTROL Cart Price Rule] is applied when the conditions of second rule are met.

<u>Actual results</u>:

Price rules are applied as configured in the admin dashboard.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
