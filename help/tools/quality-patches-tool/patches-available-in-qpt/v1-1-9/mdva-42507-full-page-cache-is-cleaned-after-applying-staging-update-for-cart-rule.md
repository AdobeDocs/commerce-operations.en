---
title: 'MDVA-42507: Full-page cache is cleaned after applying staging update for cart rule'
description: The MDVA-42507 patch solves the issue where the full-page cache is cleaned after applying staging update for cart rule. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.9 is installed. The patch ID is MDVA-42507. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.
exl-id: 9303d488-428b-4565-b9ea-469c34856dce
feature: Cache, Categories, Orders, Shopping Cart, Staging
role: Admin
---
# MDVA-42507: Full-page cache is cleaned after applying staging update for cart rule

The MDVA-42507 patch solves the issue where the full-page cache is cleaned after applying staging update for cart rule. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.9 is installed. The patch ID is MDVA-42507. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.3-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.3 - 2.4.3-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://devdocs.magento.com/quality-patches/tool.html#patch-grid). Use the patch ID as a search keyword to locate the patch.

## Issue

Full-page cache is cleaned after applying staging update for cart rule.

<u>Steps to reproduce</u>:

1. Enable developer mode.
1. Open several products and category pages and check (via headers) that they are loaded from cache.
1. Apply any staging update for the cart rule.
1. Check if the category and product pages are still loaded from the cache.

<u>Expected results</u>:

Full-page cache is NOT cleaned after applying staging update for the cart rule.

<u>Actual results</u>:

Full-page cache is cleaned after applying staging update for the cart rule.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [Software Update Guide > Apply Patches](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching/mqp.html) in our developer documentation.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [Patches available in QPT](https://devdocs.magento.com/quality-patches/tool.html#patch-grid) in our developer documentation.
