---
title: 'MDVA-39305: Login issue with enabled Google reCAPTCHA'
description: Apply the MDVA-39305 patch to fix the Adobe Commerce issue where registered customers are not able to log in when Google reCAPTCHA is enabled. 
feature: Console
role: Admin
exl-id: c40fd84a-73dc-42bd-8cda-58738615fbba
type: Troubleshooting
---
# MDVA-39305: Login issue with enabled Google reCAPTCHA

>[!NOTE]
>
>This patch was updated, and the latest patch ID is MDVA-39305-V3. The new patch is created for Adobe Commerce versions 2.4.4, 2.4.5-p2 and 2.4.7. For more information, refer to the [MDVA-39305-V3](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/patches-available-in-qpt/v1-1-58/mdva-39305-v3-login-issue-with-enabled-google-recaptcha) patch article.

The MDVA-39305 patch fixes the issue where registered customers are not able to log in when Google reCAPTCHA is enabled. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.1 is installed. The patch ID is MDVA-39305. Please note that the issue was fixed in Adobe Commerce versions 2.4.4 and 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce on cloud infrastructure 2.4.2-p1, 2.4.3-p3, 2.4.5-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.1-p1 - 2.4.3-p3, 2.4.4-p1 - 2.4.4-p5, 2.4.5 - 2.4.6-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

Registered customers are not able to log in using the enabled Google reCAPTCHA.

<u>Steps to reproduce</u>:

1. Go to **Store** > **Configuration** > **Security** > **Google reCAPTCHA Storefront** and enable **Google reCAPTCHA**.
1. Go to **Frontend**.
1. Open **Developer Tool Console** in the browser.

<u>Expected results</u>:

No CSP warnings in the console.

<u>Actual results</u>:

CSP warnings in the console.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
