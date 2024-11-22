---
title: 'ACSD-58383: duplicate credit memos from simultaneous refund requests via REST API'
description: Apply the ACSD-58383 patch to fix the Adobe Commerce issue where issuing a refund via the REST API with two identical requests that are executed simultaneously, creates duplicate credit memos.
feature: REST, Payments, Returns
role: Admin, Developer
---

# ACSD-58383 Adobe Commerce patch: duplicate credit memos from simultaneous refund requests via REST API 

The ACSD-58383 patch fixes the issue where issuing a refund via the REST API with two identical requests that are executed simultaneously, results in duplicate credit memos.

 This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.55 is installed. The patch ID is ACSD-58383. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8. 

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods) 2.4.6

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p3


>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Duplicate credit memos result from two refunds created at the same time. 

<u>Steps to reproduce</u>:

1. Configure [!DNL Paypal Express] in the Commerce Admin.
1. Set payment action to *Sale*.
1. Configure the [!DNL PayPal] IPN (Instant Payment Notification) on the [!DNL PayPal] Sandbox website.
1. Issue refund on the [!DNL PayPal] Sandbox website.
1. Emulate an IPN message from [!DNL PayPal]  using developer tools. IPN must create a credit memo.
1. Create a second credit memo using an API call.

<u>Expected results</u>:

Only one credit memo is created for the same item.


<u>Actual results</u>:

Two credit memos are created for the same item.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.


## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
