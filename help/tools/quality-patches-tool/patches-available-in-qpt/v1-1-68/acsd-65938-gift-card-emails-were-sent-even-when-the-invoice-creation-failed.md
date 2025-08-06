---
title: 'ACSD-65938: Gift card emails were sent even when the invoice creation failed'
description: Apply the ACSD-65938 patch to fix the Adobe Commerce issue where gift card emails were sent before the invoice was successfully saved and committed; emails are now triggered only after the invoice is properly saved.
feature: Orders, Checkout
role: Admin, Developer
---

# ACSD-65938: Gift card emails were sent even when the invoice creation failed

The ACSD-65938 patch fixes the issue where gift card emails were sent even when the invoice creation failed. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.68 is installed. The patch ID is ACSD-65938. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.8-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Issue where gift card emails were sent even when the invoice creation failed.

<u>Steps to reproduce</u>:

1. Make sure that Admin > Stores > Configuration> Sales > Gift Cards > General Gift Card Settings > Generate Gift Card Account when Orders Item is set to "Invoiced"
2. Create a new gift card product
3. Add gift cart product to cart and checkout (you can use check/money order)
4. place the order.
5. Edit OrderRepository to simulate an exception during order placement
6. Send a POST request to "rest/default/V1/order/<ORDER_ID>/invoice" with the following payload: {
"capture": true,  "notify": true

<u>Expected results</u>:

No gift card email should be sent if order fails

<u>Actual results</u>:

sending the gift card email after the order has been failed.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.