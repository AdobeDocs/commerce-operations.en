---
title: 'ACSD-51892: Performance issue where config files load multiple times'
description: Apply the ACSD-51892 patch to fix the Adobe Commerce performance issue where config files load multiple times during deployment.
feature: Observability
role: Admin
exl-id: 397343df-360f-43c4-bcef-be5f0da5aeef
---
# ACSD-51892: Performance issue where config files load multiple times

The ACSD-51892 patch fixes the performance issue that arises from loading the `app/etc/env.php` and `app/etc/config.php` files each time deployment configuration values are accessed within a single request. The excessive file reading puts strain on the system, leading to a deterioration in overall performance. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.33 is installed. The patch ID is ACSD-51892. Please note that the issue was fixed in Adobe Commerce 2.4.6-p2.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.6 - 2.4.6-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

There is a performance issue where the config files load multiple times.

<u>Steps to reproduce</u>:

1. Perform deployment or upgrade to Adobe Commerce 2.4.6 or later.
1. Check filesystem logs for access to `app/etc/env.php` and `app/etc/config.php` files while deployment is running.

<u>Expected results</u>:

Deployment is successful within the regular timeframe.

<u>Actual results</u>:

* The servers are struggling to respond to any commands you enter. This results in *Error 503 first byte timeout* when accessing the website.
* There are multiple entries in log files with access to `app/etc/env.php` and `app/etc/config.php` files.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
