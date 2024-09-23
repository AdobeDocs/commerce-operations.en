---
title: 'ACSD-48771: WYSIWYG editor renders content differently'
description: Apply the ACSD-48771 patch to fix the Adobe Commerce issue where WYSIWYG editor renders content differently.
exl-id: 6a856fa3-6099-4237-8d1c-e3735b8ca012
feature: Cache, Page Content
role: Admin
---
# ACSD-48771: WYSIWYG editor renders content differently

The ACSD-48771 patch fixes the issue where WYSIWYG editor renders content differently. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.29 is installed. The patch ID is ACSD-48771. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.5 - 2.4.6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

WYSIWYG editor renders content differently.

<u>Steps to reproduce</u>:

1. Go to the Adobe Commerce Admin, create a new page with a row with three columns, and save the page.
1. Update Adobe Commerce to one of the latest versions.
1. Set [!DNL Chrome] browser to disable cache and speed to *Fast 3G*.
1. Go to the edit page again and refresh it until the columns become rows.
1. Save the page while the columns are in rows.

<u>Expected results</u>:

The Admin page builder should not display columns in rows.

<u>Actual results</u>:

Columns appear in different rows.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
