---
title: 'ACSD-52831: Cannot place negotiable quote orders when [!DNL Google reCAPTCHA v3 Invisible] enabled'
description: Apply the ACSD-52831 patch to fix the Adobe Commerce issue where you are not able to place negotiable quote orders when [!DNL Google reCAPTCHA v3 Invisible] is enabled.
feature: Quotes, B2B, Checkout
role: Admin
exl-id: fa09e41f-f6c3-4cc7-a814-0e1ac5e9ea2e
type: Troubleshooting
---
# ACSD-52831: Cannot place negotiable quote orders when [!DNL Google reCAPTCHA v3 Invisible] enabled

The ACSD-52831 patch fixes the issue where you are not able to place negotiable quote orders when [!DNL Google reCAPTCHA v3 Invisible] is enabled. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.35 is installed. The patch ID is ACSD-52831. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.7 - 2.4.6-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Not able to place negotiable quote orders when [!DNL Google reCAPTCHA v3 Invisible] is enabled.

<u>Steps to reproduce</u>:

1. Enable the B2B quote feature.
1. Enable [!DNL Google reCAPTCHA v3 Invisible] on the storefront to enable checkout/placing orders.
1. Raise a quote and proceed to checkout with that quote.
1. You will not be able to place an order because of the CAPTCHA error.

<u>Expected results</u>:

The quote proceeds to checkout.

<u>Actual results</u>:

You get the error *reCAPTCHA validation failed, please try again*.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
