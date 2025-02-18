---
title: 'MDVA-39305-V3: Login issue with enabled [!DNL Google reCAPTCHA]'
description: The MDVA-39305-V3 patch fixes the issue where registered customers are not able to log in with enabled [!DNL Google reCAPTCHA]. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.1 is installed. The patch ID is MDVA-39305-V3. Please note that the issue is scheduled to be fixed in Adobe Commerce versions 2.4.4 and 2.4.7.
feature: Console
role: Admin
---
# MDVA-39305-V3: Login issue with enabled [!DNL Google reCAPTCHA]

The MDVA-39305-V3 patch fixes the issue where registered customers are not able to log in with enabled [!DNL Google reCAPTCHA]. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.58 is installed. The patch ID is MDVA-39305-V3. Please note that the issue is scheduled to be fixed in Adobe Commerce versions 2.4.4 and 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce on cloud infrastructure 2.4.2-p1, 2.4.3-p3, 2.4.5-p2, 2.4.4, 2.4.7

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.1-p1 - 2.4.3-p3, 2.4.4-p1 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

Registered customers are not able to log in using the enabled [!DNL Google reCAPTCHA].

<u>Steps to reproduce</u>:

1. Go to **[!UICONTROL Store]** > **[!UICONTROL Configuration]** > **[!UICONTROL Security]** > **[!DNL Google reCAPTCHA Storefront]** and enable ***[!DNL Google reCAPTCHA]***.
1. Go to **[!UICONTROL Frontend]**.
1. Open **[!UICONTROL Developer Tool Console]** in the browser.

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

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
