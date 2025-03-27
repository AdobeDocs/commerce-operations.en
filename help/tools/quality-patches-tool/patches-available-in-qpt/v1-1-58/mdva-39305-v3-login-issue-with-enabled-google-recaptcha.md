---
title: 'MDVA-39305-V3: Login issue with enabled [!DNL Google reCAPTCHA]'
description: Apply the MDVA-39305-V3 patch to fix the Adobe Commerce issue where registered customers are not able to log in when [!DNL Google reCAPTCHA] is enabled. This patch also fixes the issue where a form can be submitted before [!DNL Google reCAPTCHA] fully loads. Additionally, it fixes the error *Call to a member function isDisabled() on null* when blocks are used in non-default locations on a CMS page.
feature: Console
role: Admin
exl-id: 63e880aa-9a2e-4c34-9ead-20bfc5204f2c
---
# MDVA-39305-V3: Login issue with enabled [!DNL Google reCAPTCHA]

>[!NOTE]
>
>This patch is an update of the [MDVA-39305](/help/tools/quality-patches-tool/patches-available-in-qpt/v1-1-1/mdva-39305-login-issues-with-enabled-google-recaptcha.md) patch.

The MDVA-39305-V3 patch fixes the issue where registered customers are not able to log in when [!DNL Google reCAPTCHA] is enabled. This patch also fixes the issue where a form can be submitted before [!DNL Google reCAPTCHA] fully loads. Additionally, it fixes the error *Call to a member function isDisabled() on null* when blocks are used in non-default locations on a CMS page.

This patch was added in the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.48 release. It was updated in the QPT 1.1.58 release to include new Adobe Commerce versions 2.4.7 - 2.4.7-p4. The patch ID is MDVA-39305-V3. Please note that the issue was fixed in Adobe Commerce versions 2.4.4, 2.4.5-p2, and 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4, 2.4.5-p2, 2.4.7

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4-p1 - 2.4.7-p4

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issues

### Case I

1. Registered customers are not able to log in using the enabled [!DNL Google reCAPTCHA]. 
1. A form can be submitted before [!DNL Google reCAPTCHA] fully loads. 

<u>Steps to reproduce</u>:

1. Go to **[!UICONTROL Store]** > **[!UICONTROL Configuration]** > **[!UICONTROL Security]** > **[!DNL Google reCAPTCHA Storefront]** and enable ***[!DNL Google reCAPTCHA]***.
1. Go to the frontend.
1. Open **[!UICONTROL Developer Tool Console]** in the browser.

<u>Expected results</u>:

No CSP warnings in the console.

<u>Actual results</u>:

CSP warnings in the console.

### Case II

An error stating *Call to a member function isDisabled() on null* is thrown when blocks are used in non-default locations on a CMS page.

<u>Steps to reproduce</u>:

1. Create a static block with the below content:
    
    ```
    {{block class="Magento\Newsletter\Block\Subscribe" name="home.form.subscribe"
    template="Magento_Newsletter::subscribe.phtml"}}
    ```

1. Add a static block into a CMS page from **[!UICONTROL Admin]** > **[!UICONTROL Content]** > **[!UICONTROL Pages]** > **[!UICONTROL Add/Edit CMS page]** > **[!UICONTROL Content]**.
1. Save the page.

<u>Expected results</u>:

The page loads without any errors.

<u>Actual results</u>:

A 500 error occurs on the page on the storefront.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
