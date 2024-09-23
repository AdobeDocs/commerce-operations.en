---
title: 'MDVA-42269: Admin user cannot log into Admin due to the "TypeError" error'
description: The MDVA-42269 patch fixes the issue where Admin users cannot log into the Admin due to TypeError. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.11 is installed.  The patch ID is MDVA-42269.  The latest patch update is in QPT 1.1.15. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.
exl-id: 66d744a2-054e-493c-a060-9ed78447e35b
feature: Admin Workspace
role: Admin
---
# MDVA-42269: Admin user cannot log into Admin due to the "TypeError" error

The MDVA-42269 patch fixes the issue where Admin users cannot log into the Admin due to TypeError. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.11 is installed.  The patch ID is MDVA-42269.  The latest patch update is in QPT 1.1.15. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.3-p1, 2.3.7-p3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.3-p1 - 2.4.3-p2, 2.3.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

Admin users cannot log into the Admin due to the following error: *TypeError: strtotime() expects parameter 1 to be string, null given.*

<u>Steps to reproduce</u>:

Log into the Commerce Admin.

<u>Expected results</u>:

The admin user can log in with the correct user name and password.

<u>Actual results</u>:

The admin user cannot log in. The following error is logged: *TypeError: strtotime() expects parameter 1 to be string, null given.*

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [Software Update Guide > Apply Patches](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching/mqp.html) in our developer documentation.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [Patches available in QPT](https://devdocs.magento.com/quality-patches/tool.html#patch-grid) in our developer documentation.
