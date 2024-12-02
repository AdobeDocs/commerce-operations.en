---
title: 'MDVA-38346: Date filters not working when Adobe Commerce timezone is different from local'
description: The MDVA-38346 patch solves the issue where date filters are not working properly when the Adobe Commerce timezone is different from the local environment timezone. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.9 is installed. The patch ID is MDVA-38346. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.
feature: Configuration
role: Admin
exl-id: 6ed909be-81da-4e06-97c7-4eab8be2ddd2
---
# MDVA-38346: Date filters not working when Adobe Commerce timezone is different from local

The MDVA-38346 patch solves the issue where date filters are not working properly when the Adobe Commerce timezone is different from the local environment timezone. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.9 is installed. The patch ID is MDVA-38346. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.1, 2.4.2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.0 - 2.4.3-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

Date filters are not working properly when the Adobe Commerce timezone is different from the local environment timezone.

<u>Steps to reproduce</u>:

1. Change the timezone to Australia/Sydney.
1. Place few orders.
1. Create invoices for them.
1. Go to **Sales** > **Invoices** and filter by Invoice Date (current date - current date).
1. Check dates.

<u>Expected results</u>:

The displayed invoice date and the actual filter match.

<u>Actual results</u>:

The displayed invoice date is ahead of the actual filter by one day (current date + 1 day).

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
