---
title: 'ACSD-64467: WYSIWYG editor empty after saving category description at store view level'
description: Apply the ACSD-64467 patch to fix the Adobe Commerce issue where the WYSIWYG editor appears empty after saving a category description at the store view level.
feature: Page Content
role: Admin, Developer
---
# ACSD-64467: WYSIWYG editor empty after saving category description at store view level

The ACSD-64467 patch fixes the issue where the WYSIWYG editor appears empty after saving a category description at the store view level. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.61 is installed. The patch ID is ACSD-64467. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.7 - 2.4.7-p4

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The WYSIWYG editor appears empty after saving a category description at the store view level.

<u>Steps to reproduce</u>:

1. Edit a category in the Admin at the store view level.
1. Deselect the *[!UICONTROL Use default value]* checkbox next to the category description.
1. Enter a description in the WYSIWYG editor.
1. Click **[!UICONTROL Save]**.

<u>Expected results</u>: 

The description is saved and properly displayed.

<u>Actual results</u>:

The description is empty after the page reloads.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
