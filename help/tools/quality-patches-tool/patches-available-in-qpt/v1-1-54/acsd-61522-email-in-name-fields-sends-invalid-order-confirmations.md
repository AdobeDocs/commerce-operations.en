---
title: "ACSD-61522: Email addresses in *First and Last Name* fields send invalid order confirmations"
description: Apply the ACSD-XXXXX patch to fix the Adobe Commerce issue where it is possible to enter email addresses into the guest customer's First Name and Last Name fields and send invalid order confirmation emails.
feature: Checkout, Customers
role: Admin, Developer
---

# ACSD-61522: Enter email addresses in first name and last name fields to send invalid order confirmation emails

The ACSD-61522 patch fixes the issue where it is possible to enter email addresses into the guest customer's First Name and Last Name fields and send invalid order confirmation emails. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.54 is installed. The patch ID is ACSD-61522. Please note that the issue was is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p9

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The system allows email addresses to be entered into the guest customer's First Name and Last Name fields, resulting in the sending of invalid order confirmation emails.

<u>Steps to reproduce</u>:

1. Add any product to the *cart* by a guest customer.
1. Go to **[!UICONTROL checkout]**.
1. Fill in the *Email Address* with "_test1@example.com_".
1. Fill *First Name* with "<test2@example.com>".
1. Fill *Last Name* with "<test3@example.com>".
1. Fill in other required fields.
1. Place the order.

<u>Expected results</u>:

It is not possible to use email addresses in the First Name and Last Name fields.

<u>Actual results</u>:

1. The order is placed.
1. First Name and Last Name fields are saved as entered.
1. Order confirmation emails are sent to all three emails.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
