---
title: 'ACSD-44591: Errors when order without CAPTCHA confirmation'
description: The ACSD-44591 patch solves the issue where the user gets errors when trying to place an order without CAPTCHA confirmation.
exl-id: 5459aa14-dcba-474d-aafa-e4cc73daafbc
feature: Orders
role: Admin
---
# ACSD-44591: Errors when order without CAPTCHA confirmation

The ACSD-44591 patch solves the issue where the user gets errors when trying to place an order without CAPTCHA confirmation.
This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.17 is installed. The patch ID is ACSD-44591. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.3-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.3 - 2.4.4

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://devdocs.magento.com/quality-patches/tool.html#patch-grid). Use the patch ID as a search keyword to locate the patch.

## Issue

The user gets errors when trying to place an order without CAPTCHA confirmation.

<u>Steps to reproduce</u>:

1. Configure the Google ReCaptcha v2 (I'm not a robot).
1. Enable ReCaptcha for checkout.
1. Try to place an order without clicking on the ReCaptcha.
1. Once you receive the error message for missing ReCaptcha (*ReCaptcha validation failed, please try again*), click on **ReCaptcha** and then try placing an order.

<u>Expected results</u>:

Order will not be placed with incorrect ReCaptcha.

<u>Actual results</u>:

You get the following errors:

* *ReCaptcha validation failed, please try again*
* *No such cart with id = 1*

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [Software Update Guide > Apply Patches](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching/mqp.html) in our developer documentation.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [Patches available in QPT](https://devdocs.magento.com/quality-patches/tool.html#patch-grid) in our developer documentation.
