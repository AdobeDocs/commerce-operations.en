---
title: "MDVA-44887: 'Uncaught SyntaxError: Unexpected token const' error in Admin panel"
description: "The MDVA-44887 patch fixes the issue where the admin user can't click on any menu option. The *Uncaught SyntaxError: Unexpected token const* error is displayed in the Admin panel. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.15 is installed. The patch ID is MDVA-44887. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5."
feature: Admin Workspace, Orders
role: Admin
exl-id: d8cc03c3-35a0-4f00-8ec3-1ba3e100f7ca
type: Troubleshooting
---
# MDVA-44887: 'Uncaught SyntaxError: Unexpected token const' error in Admin panel

The MDVA-44887 patch fixes the issue where the admin user can't click on any menu option. The *Uncaught SyntaxError: Unexpected token const* error is displayed in the Admin panel. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.15 is installed. The patch ID is MDVA-44887. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

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

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
