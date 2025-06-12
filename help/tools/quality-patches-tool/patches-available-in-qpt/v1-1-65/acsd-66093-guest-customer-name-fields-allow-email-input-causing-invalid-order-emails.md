---
title: 'ACSD-66093: Guest customer name fields allow email input causing invalid order emails'
description: Apply the ACSD-66093 patch to fix the Adobe Commerce issue where it is possible to enter email addresses into the Guest customer First Name and Last Name fields and send invalid order confirmation emails.
feature: Checkout
role: Admin, Developer
---

# ACSD-66093: Guest customer name fields allow email input causing invalid order emails

The ACSD-66093 patch fixes the issue where email addresses could be entered into the guest customer's First and Last Name fields, resulting in invalid order confirmation emails. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.65 is installed. The patch ID is ACSD-66093. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p11

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p5

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Issue where email addresses could be entered into the guest customer's First and Last Name fields, resulting in invalid order confirmation emails.

<u>Steps to reproduce</u>:

1. Add any product to the cart by Guest customer.
2. Go to Checkout.
3. Fill in the Email Address with "test1@gmail.co".
4. Fill First Name with "<test2@gmail.co>".
5. Fill Last Name with "<test3@gmail.co>".
6. Fill in other required fields.
7. Place order.

<u>Expected results</u>:

"First Name is not valid!" and "First Name is not valid!" validation messages are displayed when "Place Order" button is clicked.
Order is not placed.

<u>Actual results</u>:

Order is placed.
First Name and Last Name fields are saved as entered.
Order confirmation email is sent to all three emails: test1@gmail.co, test2@gmail.co and test3@gmail.co.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.