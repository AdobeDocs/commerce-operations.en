---
title: 'MDVA-42689: Users get Integrity Constraint Violation error while updating product categories during import'
description: The MDVA-42689 patch solves the issue where users get an Integrity Constraint Violation error while updating product categories during import. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.12 is installed. The patch ID is MDVA-42689. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.
exl-id: 7beff3bb-9313-43dc-be96-e33eff52a38e
feature: Categories, Data Import/Export, Products
role: Admin
---
# MDVA-42689: Users get Integrity Constraint Violation error while updating product categories during import

The MDVA-42689 patch solves the issue where users get an Integrity Constraint Violation error while updating product categories during import. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.12 is installed. The patch ID is MDVA-42689. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.0 - 2.4.3-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://devdocs.magento.com/quality-patches/tool.html#patch-grid). Use the patch ID as a search keyword to locate the patch.

## Issue

Adobe Commerce throws an Integrity Constraint Violation error while updating product categories during import.

<u>Steps to reproduce</u>:

1. Set up two websites.
1. Create subcategories under the root category up to two levels on the category page. For example, Root Category > **Gear** > **Watches**.
1. Create two simple products and assign both the products to the same **Gear** > **Watches** category.
1. Assign one simple product to both websites.
1. Save the product.
1. Prepare a CSV file for import. There should be two product records with different store views. One of the products should belong to both these store views.
1. Now import the CSV file by navigating to **System** > **Import** > **Entity Type** (Products).

<u>Expected results</u>:

CSV file is imported without any error.

<u>Actual results</u>:

Adobe Commerce throws the following error:

```SQL
SQLSTATE[23000]: Integrity constraint violation: 1062 Duplicate entry '1302' for key 'PRIMARY', query was: INSERT INTO `catalog_url_rewrite_product_category` (`url_rewrite_id`,`category_id`,`product_id`) VALUES (?, ?, ?), (?, ?, ?), (?, ?, ?)
```

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [Software Update Guide > Apply Patches](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching/mqp.html) in our developer documentation.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [Patches available in QPT](https://devdocs.magento.com/quality-patches/tool.html#patch-grid) in our developer documentation.
