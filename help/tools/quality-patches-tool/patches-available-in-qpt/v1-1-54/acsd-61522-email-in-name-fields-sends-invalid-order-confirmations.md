---
title: 'ACSD-61522: Email addresses in *First and Last Name* fields send invalid order confirmations'
description: Apply the ACSD-61522 patch to fix the Adobe Commerce issue where it is possible to enter email addresses into a guest customer's *[!UICONTROL First Name]* and *[!UICONTROL Last Name]* fields, leading to invalid order confirmation emails being sent.
feature: Checkout, Customers
role: Admin, Developer
exl-id: e1ed7a57-4054-44db-bc17-9b9056096fce
type: Troubleshooting
---
# ACSD-61522: Email addresses in *First and Last Name* fields send invalid order confirmations

The ACSD-61522 patch fixes the issue where it is possible to enter email addresses into a guest customer's *[!UICONTROL First Name]* and *[!UICONTROL Last Name]* fields, leading to invalid order confirmation emails being sent. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.54 is installed. The patch ID is ACSD-61522. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p9

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The system allows email addresses to be entered into a guest customer's *[!UICONTROL First Name]* and *[!UICONTROL Last Name]* fields, resulting in the sending of invalid order confirmation emails.

<u>Steps to reproduce</u>:

1. Add any product to the cart as a guest customer.
1. Go to **[!UICONTROL Checkout]**.
1. Fill the *[!UICONTROL Email Address]* field with *test1@example.com*.
1. Fill the *[!UICONTROL First Name]* field with *<test2@example.com>*.
1. Fill *[!UICONTROL Last Name]* with *<test3@example.com>*.
1. Fill in other required fields.
1. Place the order.

<u>Expected results</u>:

It is not possible to use email addresses in the *[!UICONTROL First Name]* and *[!UICONTROL Last Name]* fields.

<u>Actual results</u>:

1. The order is placed.
1. *[!UICONTROL First Name]* and *[!UICONTROL Last Name]* fields are saved as entered.
1. Order confirmation emails are sent to all three emails.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
