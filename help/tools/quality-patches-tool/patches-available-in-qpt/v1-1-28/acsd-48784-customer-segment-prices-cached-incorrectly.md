---
title: 'ACSD-48784: Customer segment prices cached incorrectly between customer groups'
description: Apply the ACSD-48784 patch to fix the Adobe Commerce issue where customer segment prices are cached incorrectly between customer groups.
exl-id: 6be11fd0-5c93-4ac7-8664-7e2a289c9e38
feature: Admin Workspace, Cache, Customer Service, Orders
role: Admin
---
# ACSD-48784: Customer segment prices cached incorrectly between customer groups

The ACSD-48784 patch fixes the issue where customer segment prices are cached incorrectly between customer groups. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.28 is installed. The patch ID is ACSD-48784. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.3-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.7 - 2.4.6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Customer segment prices are cached incorrectly between customer groups. 

<u>Prerequisites</u>:

Configure [!DNL Varnish] or [!DNL Fastly]. 

<u>Steps to reproduce</u>:

1. Enable full page caching in your store.
1. Log in to the site as a user with special customer group pricing.
1. Go to a product page for a product with special customer group pricing. Observe the *special price*.
1. In a separate browser, open the same product page as a guest user without logging in. Observe the regular price.
1. Access the Adobe Commerce administrative interface and clear the Adobe Commerce and [!DNL Fastly] cache for this store.
1. In the logged-in browser, remove the `X-Magento-Vary` cookie.
1. In the logged-in browser, reload the same product page several times until caching is fully flushed.
1. In the non-logged-in browser, reload the product page to now see the customer group pricing.

<u>Expected results</u>:

Product page shows the correct price for specific customer groups.

<u>Actual results</u>:

* Guest users see the special logged-in user price.
* The mini cart shows the correct price once the product is added to it.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
