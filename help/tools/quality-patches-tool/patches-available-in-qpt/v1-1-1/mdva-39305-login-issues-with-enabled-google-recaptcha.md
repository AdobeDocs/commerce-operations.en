---
title: 'MDVA-39305: Login issue with enabled Google reCAPTCHA'
description: The MDVA-39305 patch fixes the issue where registered customers are not able to log in with enabled Google reCAPTCHA. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.1 is installed. The patch ID is MDVA-39305. Please note that the issue is scheduled to be fixed in Adobe Commerce versions 2.4.4 and 2.4.7.
exl-id: 1e8e7dc7-f8f1-4432-90f4-dc73d85f353a
feature: Console
role: Admin
---
# MDVA-39305: Login issue with enabled Google reCAPTCHA

The MDVA-39305 patch fixes the issue where registered customers are not able to log in with enabled Google reCAPTCHA. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.1 is installed. The patch ID is MDVA-39305. Please note that the issue is scheduled to be fixed in Adobe Commerce versions 2.4.4 and 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce on cloud infrastructure 2.4.2-p1, 2.4.3-p3, 2.4.5-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.1-p1 - 2.4.3-p3, 2.4.4-p1 - 2.4.4-p5, 2.4.5 - 2.4.6-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://devdocs.magento.com/quality-patches/tool.html#patch-grid). Use the patch ID as a search keyword to locate the patch.

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

* Adobe Commerce or Magento Open Source on-premises: [Software Update Guide > Apply Patches](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching/mqp.html) in our developer documentation.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [Patches available in QPT](https://devdocs.magento.com/quality-patches/tool.html#patch-grid) in our developer documentation.
