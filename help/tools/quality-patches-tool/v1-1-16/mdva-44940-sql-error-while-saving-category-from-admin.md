---
title: 'MDVA-44940: SQL error while saving category from admin'
description: The MDVA-44940 patch fixes the issue where an SQL error occurs while saving a category from the admin. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.16 is installed. The patch ID is MDVA-44940. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6.
exl-id: cae6f231-3b91-441f-af56-824db0fa2d32
feature: Admin Workspace, Categories, Sales Channels
role: Admin
---
# MDVA-44940: SQL error while saving category from admin

The MDVA-44940 patch fixes the issue where an SQL error occurs while saving a category from the admin. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.16 is installed. The patch ID is MDVA-44940. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.3-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.3 - 2.4.4

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://devdocs.magento.com/quality-patches/tool.html#patch-grid). Use the patch ID as a search keyword to locate the patch.

## Issue

An SQL error occurs when saving a category from the admin.

<u>Steps to reproduce</u>:

1. Install sample data.
1. Create a second website with a store group assigned to the default category.

    * Create a store view assigned to the new store group.

1. Create stock and an additional source assigned to this stock and a sales channel assigned to the second website.
1. Create a test product assigned to the second website.
1. Go to **Admin** > **Catalog** > **Categories**, select **Scope** = **Second Website** and go to **Products in Category** > **Automatic Sorting** > Move out-of-stock products to the bottom and click **Save**.

<u>Expected results</u>:

The category is saved.

<u>Actual results</u>:

The following error occurs: *Something went wrong while saving the category*.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [Software Update Guide > Apply Patches](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching/mqp.html) in our developer documentation.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [Patches available in QPT](https://devdocs.magento.com/quality-patches/tool.html#patch-grid) in our developer documentation.
