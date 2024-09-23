---
title: 'ACSD-52148: Google v3 reCAPTCHA admin login fails occasionally'
description: Apply the ACSD-52148 patch to fix the Adobe Commerce issue where the Google v3 reCAPTCHA admin login fails occasionally.
feature: Admin Workspace
role: Admin
exl-id: ebebd8e6-a75a-4d4f-aeb8-ca924ff92c94
---
# ACSD-52148: Google v3 reCAPTCHA admin login fails occasionally 

The ACSD-52148 patch fixes the issue where the Google v3 reCAPTCHA admin login fails occasionally. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.33 is installed. The patch ID is ACSD-52148. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.2-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.0 - 2.4.3-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Google v3 reCAPTCHA admin login fails occasionally.

<u>Steps to reproduce</u>:

1. Turn on Google v3 reCAPTCHA for the admin login.
1. Log in to Admin passing the captcha.

<u>Expected results</u>

Admin is logged in successfully.

<u>Actual results</u>

* *reCAPTCHA verification failed.* error is displayed occasionally.
* An error is logged-
  
    ```
    report.ERROR: Can not resolve reCAPTCHA parameter. {"exception":"[object] (Magento\Framework\Exception\InputException(code: 0): Can not resolve reCAPTCHA parameter. at vendor/magento/module-re-captcha-ui/Model/CaptchaResponseResolver.php:25)"} []
    ```

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
