---
title: 'MDVA-41236: Unable to create new or edit existing scheduled updates for product'
description: The MDVA-41236 patch fixes the issue where users are unable to create new or edit existing scheduled updates for the product if the "End Date" has been previously removed. This patch is available when the [Quality Patches Tool (QPT)](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching.html#mqp) 1.1.5 is installed. The patch ID is MDVA-41236. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.
exl-id: 00d6c0af-f248-49f6-aaa2-3ae3c0294832
feature: Products, Staging
role: Admin
---
# MDVA-41236: Unable to create new or edit existing scheduled updates for product

The MDVA-41236 patch fixes the issue where users are unable to create new or edit existing scheduled updates for the product if the "End Date" has been previously removed. This patch is available when the [Quality Patches Tool (QPT)](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching.html#mqp) 1.1.5 is installed. The patch ID is MDVA-41236. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods) 2.4.2

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.3.0 - 2.4.3-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://devdocs.magento.com/quality-patches/tool.html#patch-grid). Use the patch ID as a search keyword to locate the patch.

## Issue

Users are unable to create new schedules or edit existing ones for products if the "End Date" has been previously removed.

<u>Steps to reproduce</u>:

1. Create a product with the Status set to *disable*.
1. Add a scheduled update to enable this product.
    * Add future start and end dates.
1. Edit the scheduled update by removing the **End Date**.
1. Edit the schedule again and try to add an **End Date**. An error will occur.
1. Refresh the page and again go to **Edit Scheduled Update**.
1. Click **Remove from update** > **Delete the update**.
1. Now you should not see the scheduled update on top of the product edit page.
1. Try to create a new scheduled update overlapping the previous duration.

<u>Expected results</u>:

* There is no error in step 4. The admin is able to update the scheduled update without any error as the schedule is not yet active.
* The admin user is able to delete the previous update and create a new one.

<u>Actual results</u>:

Users get the following error message:

*error: Future Update already exists in this time range. Set a different range and try again.*


## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [Software Update Guide > Apply Patches](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching/mqp.html) in our developer documentation.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to the [Patches available in QPT](https://support.magento.com/hc/en-us/sections/360010506631-Patches-available-in-QPT-tool-) section.
