---
title: 'ACSD-60788: Custom scripts for [!DNL Google Tag Manager] not executed due to CSP errors'
description: Apply the ACSD-60788 patch to fix the Adobe Commerce issue where custom scripts for [!DNL Google Tag Manager] are not executed due to Content Security Policy (CSP) errors.
feature: Security
role: Admin, Developer
exl-id: 3392da76-86cb-4357-8658-c95d914a5829
---
# ACSD-60788: Custom scripts for [!DNL Google Tag Manager] are not executed due to Content Security Policy errors

The ACSD-60788 patch fixes the issue where custom scripts for [!DNL Google Tag Manager] are not executed due to Content Security Policy errors. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.52 is installed. The patch ID is ACSD-60788. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods) 2.4.7-p1

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.4.7 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Custom scripts for [!DNL Google Tag Manager] are not executed due to Content Security Policy (CSP) errors.

<u>Steps to reproduce</u>:

1. Set up the *[!DNL Google Tag Manager]* variable.
1. Set up the *[!DNL Google Tag Manager]* Custom HTML Tag.
1. Place the following JavaScript code in the first Tag:

    ```
    <script nonce="{{gtmNonce}}">
    console.log("Nonce from simple JS {{gtmNonce}}");
    </script>
    
    ```

1. Flush caches after setting up the *GTM*.
1. Open the developer console in your browser.
1. Open the Home Page.

<u>Expected results</u>:

The browser dev console displays *Nonce from simple JS (random characters)*.

<u>Actual results</u>:

The browser dev console displays *Nonce from simple JS undefined*.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
