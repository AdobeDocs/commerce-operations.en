---
title: 'ACSD-66179: Canceling an invoice with the [!UICONTROL Not Capture] payment type results in a 404 error page'
description: Apply the ACSD-66179 patch to fix the Adobe Commerce issue where canceling an invoice with the [!UICONTROL Not Capture] payment type led to a 404 error page.
feature: Orders, Payments
role: Admin, Developer
type: Troubleshooting
---

# ACSD-66179: Canceling an invoice with the [!UICONTROL Not Capture] payment type results in a 404 error page

The ACSD-66179 patch fixes the issue where canceling an invoice created with the *[!UICONTROL Not Capture]* payment type resulted in a 404 error page. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.68 is installed. The patch ID is ACSD-66179. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p5

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4-p11 - 2.4.4-p14, 2.4.5-p10 - 2.4.5-p13, 2.4.6-p8 - 2.4.6-p11, 2.4.7-p3 - 2.4.8-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Canceling an invoice created with the *[!UICONTROL Not Capture]* payment type results in a 404 error page.

<u>Steps to reproduce</u>:

1. Create an order using a payment method such as PayPal Express Checkout.
1. Create an invoice. Set **[!UICONTROL Amount]** to *[!UICONTROL Not Capture]*, and submit the invoice.
1. Open the created invoice and select **[!UICONTROL Cancel]**.

<u>Expected results</u>:

1. The invoice is canceled successfully.
1. A success message is displayed: *You canceled the invoice.*

<u>Actual results</u>:

A 404 error page is displayed: *Page Not Found.*

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
