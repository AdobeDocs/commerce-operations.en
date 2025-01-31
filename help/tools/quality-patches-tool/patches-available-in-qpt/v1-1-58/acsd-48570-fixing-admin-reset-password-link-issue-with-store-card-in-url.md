---
title: 'ACSD-48570: Fixing admin reset password link issue with store code in URL'
description: Apply the ACSD-48570 patch to fix the Adobe Commerce issue where the reset password page could not be accessed via the Admin reset password link when the [!UICONTROL Add Store Code to URLs] configuration was enabled.
feature: Security, User Account
role: Admin, Developer
---
# ACSD-48570: Fixing admin reset password link issue with store code in URL

The ACSD-48570 patch to fix the Adobe Commerce issue where the reset password page could not be accessed via the Admin reset password link when the *[!UICONTROL Add Store Code to URLs]* configuration was enabled. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.58 is installed. The patch ID is ACSD-48570. Please note that the issue was fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.6-p8

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

When the **[!UICONTROL Add Store Code to URLs]** setting is enabled, the Admin reset password functionality does not work correctly. 
After an admin user requests a password reset and clicks on the recovery link in the email, they are redirected to the login page or receive a 404 error instead of being taken to the reset password form. This prevents administrators from recovering their accounts without manual intervention.

<u>Steps to reproduce</u>:

1. Enable the **[!UICONTROL Add Store Code to URLs]** configuration at **[!UICONTROL Store]** > **[!UICONTROL Configuration]** > **[!UICONTROL General]** > **[!UICONTROL Web]** > **[!UICONTROL URL Options]**.
1. Log out from the Admin panel and click the **[!UICONTROL Forgot your password?]** link on the Admin login page.
1. Enter the Admin user's email, pass the captcha, and click **[!UICONTROL Retrieve Password]**.
1. Open the password reset email and click on the password recovery link.

<u>Expected results</u>:

The reset password form should be displayed.

<u>Actual results</u>:

The login page or a 404 error page is displayed instead of the reset password form.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
