---
title: 'ACSD-66149: IPN handler returns *500* for unsupported types'
description: Apply the ACSD-66149 patch to fix the Adobe Commerce issue where the IPN handler does not ignore unsupported or unknown IPN types, causing the issue not to be logged, interrupting the process, and also returning a 500 error.
feature: Payments
role: Admin, Developer
---

# ACSD-66149: IPN handler returns *500* for unsupported types

The ACSD-66149 patch fixes the issue where the IPN (Instant Payment Notification) handler returns a *500* error for unsupported or unknown IPN types. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.69 is installed. The patch ID is ACSD-66149. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The issue is the IPN handler returns a *500* error for unsupported or unknown IPN types. It occurs when Paypal sends IPN with some fields missing.

<u>Steps to reproduce</u>:

1. Create a custom module that will emulate all kinds of unknown IPN types from PayPal.
1. Create at least one product.
1. Configure PayPal Express with your own credentials.
1. Place an order with Paypal Express.
1. Run the PayPal emulator.

<u>Expected results</u>:

The application IPN handler ignores incorrect IPN types and doesn't generate *500* errors:
```Order 000000001: Status processing — HTTP 500```

<u>Actual results</u>:

The application generates many *500* errors during processing incorrect IPNs and sporadically doesn't process some orders if the expected fields are absent.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide
