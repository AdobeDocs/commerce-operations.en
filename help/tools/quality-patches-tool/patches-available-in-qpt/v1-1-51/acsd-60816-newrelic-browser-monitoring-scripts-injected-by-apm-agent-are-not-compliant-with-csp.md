---
title: 'ACSD-60816: [!DNL New Relic] browser monitoring scripts injected by APM agent are not compliant with CSP'
description: Apply the ACSD-60816 patch to fix the Adobe Commerce issue where the [!DNL New Relic] browser monitoring scripts injected by the APM agent are not compliant with Content Security Policy (CSP), preventing their execution.
feature: Tools and External Services, Checkout
role: Admin, Developer
exl-id: d03c25e0-ed25-4877-8470-737d3499473f
---
# ACSD-60816: [!DNL New Relic] browser monitoring scripts injected by APM agent are not compliant with CSP

The ACSD-60816 patch fixes the issue where the [!DNL New Relic] browser monitoring scripts injected by the APM agent are not compliant with the Content Security Policy (CSP). This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.51 is installed. The patch ID is ACSD-60816. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods) 2.4.6-p6

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.4.4 - 2.4.6-p8

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

[!DNL New Relic] browser monitoring scripts injected by the APM agent are not compliant with CSP.

<u>Steps to reproduce</u>:

1. Add product to the cart.
1. Go to checkout. 

<u>Expected results</u>:

There is no CSP error in the developer console.

<u>Actual results</u>:

You get the following error:

```
Content-Security-Policy: The page's settings blocked an inline script (script-src-elem) from being executed because it violates the following directive: "script-src 
...
```

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
