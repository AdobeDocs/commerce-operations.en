---
title: 'MDVA-39713: User is able to edit start time of active scheduled update'
description: The MDVA-39713 patch fixes the issue where a user is able to edit the start time of an active scheduled update. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.12 is installed. The patch ID is MDVA-39713. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.
exl-id: c7221fdb-5fc0-4179-8d4c-c9e1f0d00692
feature: CMS
role: Admin
---
# MDVA-39713: User is able to edit start time of active scheduled update

The MDVA-39713 patch fixes the issue where a user is able to edit the start time of an active scheduled update. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.12 is installed. The patch ID is MDVA-39713. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.3.3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.0 - 2.3.6

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://devdocs.magento.com/quality-patches/tool.html#patch-grid). Use the patch ID as a search keyword to locate the patch.

## Issue

The user is able to edit the start time for an active scheduled update.

<u>Steps to reproduce</u>:

1. Create new CMS pages.
1. Select **Schedule New Update** and set the **Start Date** to current +1 minute.
1. Activate the Scheduled Update by running the command `bin/magento cron:run --group=staging` in local environment. Wait for a few minutes and check if the schedule is active.
1. Once the schedule is active, refresh the page.
1. Click **View/Edit** in the Scheduled Changes section.
1. Edit the time by adding +2 minutes and save the change.
1. Save the CMS page.
1. Again, run the following command: `bin/magento cron:run --group=staging`.
1. Click **View/Edit** of the Scheduled Update.

<u>Expected results</u>:

The user is not able to edit the start time for an active scheduled update.

<u>Actual results</u>:

The user gets an error like *Item (Magento\Cms\Model\Page) with the same ID "11" already exists.*

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [Software Update Guide > Apply Patches](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching/mqp.html) in our developer documentation.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [Patches available in QPT](https://devdocs.magento.com/quality-patches/tool.html#patch-grid) in our developer documentation.
