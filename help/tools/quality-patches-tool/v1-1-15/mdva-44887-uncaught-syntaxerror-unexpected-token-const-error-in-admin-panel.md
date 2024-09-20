---
title: "MDVA-44887: 'Uncaught SyntaxError: Unexpected token const' error in Admin panel"
description: "The MDVA-44887 patch fixes the issue where the admin user can't click on any menu option. The *Uncaught SyntaxError: Unexpected token const* error is displayed in the Admin panel. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.15 is installed. The patch ID is MDVA-44887. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5."
exl-id: 66555e66-49d0-4f80-8f77-84ee107ab12e
feature: Admin Workspace, Orders
role: Admin
---
# MDVA-44887: 'Uncaught SyntaxError: Unexpected token const' error in Admin panel

The MDVA-44887 patch fixes the issue where the admin user can't click on any menu option. The *Uncaught SyntaxError: Unexpected token const* error is displayed in the Admin panel. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.15 is installed. The patch ID is MDVA-44887. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://devdocs.magento.com/quality-patches/tool.html#patch-grid). Use the patch ID as a search keyword to locate the patch.

## Issue

The admin user can't click on any menu option. The *Uncaught SyntaxError: Unexpected token const* error is displayed in the Admin panel.

<u>Steps to reproduce</u>:

1. Enable JS bundling.
1. Minify the JS files.
1. Log in to the Commerce Admin panel.

<u>Expected results</u>:

The admin user can't click on any menu option. There is an error in the browser console: *Uncaught SyntaxError: Unexpected token const*.

<u>Actual results</u>:

The Admin panel is accessible to an admin user.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [Software Update Guide > Apply Patches](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching/mqp.html) in our developer documentation.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [Patches available in QPT](https://devdocs.magento.com/quality-patches/tool.html#patch-grid) in our developer documentation.
