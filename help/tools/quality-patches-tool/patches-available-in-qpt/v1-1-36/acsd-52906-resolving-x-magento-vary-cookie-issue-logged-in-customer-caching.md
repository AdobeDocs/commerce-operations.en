---
title: 'ACSD-52906: Resolving X-Magento-Vary cookie issue for logged-in customer caching'
description: Apply the ACSD-52906 patch to fix the Adobe Commerce issue where the X-Magento-Vary cookie is set incorrectly for logged-in customers.
feature: Cache
role: Admin, Developer
exl-id: 863e0808-9208-467d-8d56-9dd7a7f4354d
---
# ACSD-52906: Resolving X-Magento-Vary cookie issue for logged-in customers

The ACSD-52906 patch fixes the issue where the X-Magento-Vary cookie is set incorrectly for logged-in customers. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.36 is installed. The patch ID is ACSD-52906. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4-p3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.7 - 2.4.6-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

X-Magento-Vary cookie is set incorrectly for logged-in customers that belong to the same customer segment, causing improper caching for some pages.

<u>Prerequisites</u>:

Adobe Commerce Inventory Management (MSI) modules are installed and enabled.

<u>Steps to reproduce</u>:

1. Configure [!DNL Varnish] or [!DNL Fastly] cache.
1. Create a new customer segment and assign it to the *Registered* customers.
1. Create two customers, e.g., customer1 and customer2.
1. Clear the cache.
1. Sign in as customer1 and go to the home page.
1. Open an incognito page on your browser.
1. Go to any page other than the home page.
1. Log in as customer2.
1. Go to the home page.
1. Check if the page is cached in the browser dev console.

<u>Expected results</u>:

The page is retrieved from the cache.

<u>Actual results</u>:

The page is not cached.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
