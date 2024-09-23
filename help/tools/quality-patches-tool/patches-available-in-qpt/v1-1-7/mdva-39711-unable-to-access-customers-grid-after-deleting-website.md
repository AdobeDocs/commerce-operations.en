---
title: 'MDVA-39711: Unable to access customers grid after deleting website'
description: The MDVA-39711 patch fixes the issue where the Admin user cannot access the customers' grid after deleting the website. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.7 is installed. The patch ID is MDVA-39711. Please note that the issue was fixed in Adobe Commerce 2.4.3.
exl-id: 46bef304-9360-4b69-b064-631725de381c
feature: Configuration
role: Admin
---
# MDVA-39711: Unable to access customers grid after deleting website

The MDVA-39711 patch fixes the issue where the Admin user cannot access the customers' grid after deleting the website. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.7 is installed. The patch ID is MDVA-39711. Please note that the issue was fixed in Adobe Commerce 2.4.3.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.3.7-p2, 2.3.4-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.0 - 2.4.2-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://devdocs.magento.com/quality-patches/tool.html#patch-grid). Use the patch ID as a search keyword to locate the patch.

## Issue

Admin user cannot access the customers' grid after deleting the website.

<u>Steps to reproduce</u>:

1. Create a new website, store, and store view.
1. Create a new customer on the Admin and associate it to the created website.
1. Go to **Stores** > **All stores** and delete the created website.
1. Go to **Customers** > **All customers**.

<u>Expected results</u>:

* There is no error message.
* All customers are visible in the grid.

<u>Actual results</u>:

* The user gets an error message: *The website with id 2 that was requested wasn't found. Verify the website and try again*
* All customers are not displayed.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [Software Update Guide > Apply Patches](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching/mqp.html) in our developer documentation.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [Patches available in QPT](https://devdocs.magento.com/quality-patches/tool.html#patch-grid) in our developer documentation.
