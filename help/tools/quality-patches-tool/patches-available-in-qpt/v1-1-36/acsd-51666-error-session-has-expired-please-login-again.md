---
title: 'ACSD-51666: Error "The session has expired, please login again." after you log in'
description: Apply the ACSD-51666 patch to fix the Adobe Commerce issue where the error *The session has expired, please login again.* occurs after you try to log in.
feature: Customers
role: Admin, Developer
exl-id: c3913f1c-f401-440b-b6b3-10702f13fff5
---
# ACSD-51666: Error *The session has expired, please login again.* after you log in

The ACSD-51666 patch fixes the issue where the error *The session has expired, please login again.* occurs after you try to log in. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.36 is installed. The patch ID is ACSD-51666. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.7 - 2.4.6-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

You get the error *The session has expired, please login again.* when trying to log in with the new password from one device after resetting the password on a different device. It only happens if there's an additional Ajax request on the page added by a custom module.

<u>Steps to reproduce</u>:

1. Install a custom module that adds an Ajax request on every page on the storefront.
1. Create a new account.
1. Log out and go back to the login page.
1. Open the *Forgot Password* link in a different browser and send the *Reset Password* email.
1. Open the reset password email in the first browser and set the new password.
1. Try to log in in the second browser.

<u>Expected results</u>:

You are able to log in successfully on the first attempt.

<u>Actual results</u>:

* You see the *The session has expired, please login again.* error.
* You are not logged in and redirected to the homepage.
* Your second attempt to log in is successful.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
