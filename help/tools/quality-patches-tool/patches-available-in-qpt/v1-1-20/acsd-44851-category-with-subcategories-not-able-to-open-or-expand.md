---
title: 'ACSD-44851: Category with subcategories not able to open or expand'
description: This article provides a solution for the issue where the user is unable to open or expand a category with subcategories.
feature: Categories
role: Admin
exl-id: c1ad13d8-94e1-47cf-ad65-9bc5ce1c26ad
type: Troubleshooting
---
# ACSD-44851: Category with subcategories not able to open or expand

The ACSD-44851 patch solves the issue where the user is unable to open or expand a category with subcategories. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.20 is installed. The patch ID is ACSD-44851. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.0 - 2.4.5

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The user is not able to open or expand a category with subcategories.

<u>Steps to reproduce</u>:

1. In the Adobe Commerce Admin, create a category tree with two root categories and a few subcategories for each of them.
1. Open the mobile view/emulator or shrink the window width until the layout turns mobile.
1. Open the catalog's main menu.
1. Try to expand the root categories.
1. Try to open the category.

<u>Expected results</u>:

The menu is accessible.

<u>Actual results</u>:

The mobile menu's second level does not open.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [Quality Patches Tools > Usage](/help/tools/quality-patches-tool/usage.md) in the Quality Patches Tool guide.

* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
