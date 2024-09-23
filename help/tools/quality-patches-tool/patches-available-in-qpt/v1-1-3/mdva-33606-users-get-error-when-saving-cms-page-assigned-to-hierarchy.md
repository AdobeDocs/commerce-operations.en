---
title: 'MDVA-33606: Users get error when saving CMS page assigned to hierarchy'
description: The MDVA-33606 patch solves the issue where the users get *Unique constraint violation found* error when saving a CMS page assigned to hierarchy tree. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.3 is installed. The patch ID is MDVA-33606. Please note that the issue was fixed in Adobe Commerce 2.4.3.
exl-id: cdefece5-6d13-4003-87e9-810c665e940c
feature: CMS
role: Admin
---
# MDVA-33606: Users get error when saving CMS page assigned to hierarchy

The MDVA-33606 patch solves the issue where the users get *Unique constraint violation found* error when saving a CMS page assigned to hierarchy tree. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.3 is installed. The patch ID is MDVA-33606. Please note that the issue was fixed in Adobe Commerce 2.4.3.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.1-2.4.2-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://devdocs.magento.com/quality-patches/tool.html#patch-grid). Use the patch ID as a search keyword to locate the patch.

## Issue

When trying to save a CMS page assigned to hierarchy tree, users get the following error message: *Unique constraint violation found*.

<u>Steps to reproduce</u>:

1. Create a new CMS page. Set the scope to All Store Views. This is your CMS Page 1.
1. Create a new store view. This is your Store View 2.
1. Go to **Content** > **Hierarchy** > Add the CMS Page 1 to hierarchy tree.
1. Change the scope to Store View 2.
    * Uncheck "Use the parent node hierarchy".
    * Add CMS Page 1 to this scope and save it.
1. Now change the scope to Default Store View.
    * Uncheck "Use the parent node hierarchy".
    * Add CMS Page 1 to this scope and save it.
1. Go to **Content** > **Pages** > **Add New Page**.
    * Title the page as Page 2.
    * In the Page in Websites section, assign to All Store Views and both store views (Default Store View and Store View 2) and click **Save Page**.
1. In the CMS edit page, open the Hierarchy tab.
    * Assign Page 2 to Store View 2 node, Default node, and All Websites node.

<u>Expected results</u>:

You are able to assign the CMS page to all three nodes without any error.

<u>Actual results</u>:

You get the following error: *Unique constraint violation found*.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [Software Update Guide > Apply Patches](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching/mqp.html) in our developer documentation.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md).
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md).

For info about other patches available in QPT, refer to the [Patches available in QPT](https://support.magento.com/hc/en-us/sections/360010506631-Patches-available-in-MQP-tool-) section.
