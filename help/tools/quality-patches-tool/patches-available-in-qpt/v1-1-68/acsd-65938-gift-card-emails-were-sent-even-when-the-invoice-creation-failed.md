---
title: 'ACSD-65938: Gift card emails sent even when the invoice creation failed'
description: Apply the ACSD-65938 patch to fix the Adobe Commerce issue where gift card emails were sent before the invoice was successfully saved and committed, ensuring emails are triggered after the invoice is properly saved.
feature: Orders, Checkout
role: Admin, Developer
type: Troubleshooting
---

# ACSD-65938: Gift card emails sent even when the invoice creation failed

The ACSD-65938 patch resolves an issue where gift card emails were sent before the invoice was successfully saved and committed. With this fix, emails are now triggered only after the invoice has been successfully saved. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.68 is installed. The patch ID is ACSD-65938. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.8-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Gift card emails were sent before confirming that the invoice was successfully created and saved, resulting in emails being sent even when invoice creation failed.

<u>Steps to reproduce</u>:

1. Log in to the **[!UICONTROL Admin]** panel.
2. Navigate to **[!UICONTROL Stores]** > *[!UICONTROL Settings]* > **[!UICONTROL Configuration]** > **[!UICONTROL Sales]** > **[!UICONTROL Gift Cards]** > **[!UICONTROL Gift Card General Settings]**, and set **[!UICONTROL Generate Gift Card Account when Order Item is]** to *Invoiced*.
3. Create a new gift card product.
4. Add gift cart product to cart and proceed to **[!UICONTROL checkout]**. You can use **[!UICONTROL Check/Money Order]** as the payment method.
5. Place the order.
6. Modify the `OrderRepository` to simulate an exception during order placement.
7. Send a POST request to `rest/default/V1/order/<ORDER_ID>/invoice` with the following payload:

   ```
   {
     "capture": true,
     "notify": true
   }
   ```


<u>Expected results</u>:

No gift card email should be sent if the invoice creation fails.

<u>Actual results</u>:

Gift card email is sent even though the invoice creation has failed.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
