---
title: 'ACSD-53998: Dynamic block based on customer segment works incorrectly after logging out'
description: Apply the ACSD-53998 patch to fix the Adobe Commerce issue where a dynamic block based on a customer segment doesn't work correctly after logging out from a customer account.
feature: Customers, Page Builder, Personalization
role: Admin, Developer
exl-id: 5a82a6b8-e8f7-47ff-89f6-93a39b72fe38
---
# ACSD-53998: Dynamic block based on customer segment works incorrectly after logging out

The ACSD-53998 patch fixes the issue where a dynamic block based on a customer segment doesn't work correctly after logging out from a customer account. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.39 is installed. The patch ID is ACSD-53998. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4-p2 - 2.4.4-p6, 2.4.5-p1 - 2.4.6-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

A dynamic block based on a customer segment doesn't work correctly after logging out from a customer account.

<u>Prerequisites</u>:

Install and enable [!DNL Page Builder] modules.

<u>Steps to reproduce</u>:

1. Create two customer segments without any conditions.
1. Create two dynamic blocks for each segment.
1. Create a block including the two dynamic blocks as [!DNL Page Builder] dynamic blocks.
1. Create a widget including the above block, and make the block visible under the footer section of all the pages.
1. Clear the caches.
1. Open the home page.
1. Log in as a customer.
1. Log out.

<u>Expected results</u>:

The banner created for logged-in customers is not displayed for guest users.

<u>Actual results</u>:

The banner created for the logged-in customer segment is displayed even after logging out from the customer account. 

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
