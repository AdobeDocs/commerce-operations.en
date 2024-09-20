---
title: 'MDVA-40619: Hierarchy changes break CMS page inline edit and throw 500 error'
description: The MDVA-40619 patch solves the issue where the CMS page hierarchy changes break CMS page inline edit and throw "500 error". This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.5 is installed. The patch ID is MDVA-40619. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.
exl-id: c003d845-1ba0-49c0-9f1a-a4b0ec00f30c
feature: CMS
role: Admin
---
# MDVA-40619: Hierarchy changes break CMS page inline edit and throw 500 error

The MDVA-40619 patch solves the issue where the CMS page hierarchy changes break CMS page inline edit and throw "500 error". This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.5 is installed. The patch ID is MDVA-40619. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.0 - 2.4.3-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://devdocs.magento.com/quality-patches/tool.html#patch-grid). Use the patch ID as a search keyword to locate the patch.

## Issue

CMS page hierarchy changes break CMS page inline edit and throw "500 error".

<u>Steps to reproduce</u>:

1. Go to the Admin Panel > **Content** > **Hierarchy**.
1. Select "Default Store View".
1. Uncheck "Use the parent node hierarchy".
1. Select page manually and click **Save**.
1. Then Go to **Content** > **Pages**.
1. Try to edit any CMS page from the grid.
1. Click **Save**.

<u>Expected results</u>:

Page is saved successfully.

<u>Actual results</u>:

You get the following error:

*A technical problem with the server created an error. Try again to continue what you were doing. If the problem persists, try again later.*

`Error: Call to a member function getData() on null in /magento2ee/app/code/Magento/VersionsCms/Controller/Adminhtml/Cms/Page/InlineEdit/Plugin.php:62`

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [Software Update Guide > Apply Patches](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching/mqp.html) in our developer documentation.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to the [Patches available in QPT](https://support.magento.com/hc/en-us/sections/360010506631-Patches-available-in-MQP-tool-) section.
