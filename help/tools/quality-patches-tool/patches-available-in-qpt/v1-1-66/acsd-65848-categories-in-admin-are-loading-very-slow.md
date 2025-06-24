---
title: 'ACSD-65848: Categories in admin are loading very slow'
description: Apply the ACSD-65848 patch to fix the Adobe Commerce issue where the total product count in a category was calculated using a sub-select, by refactoring the method to use a join instead.
feature: Admin
role: Admin, Developer
---

# ACSD-65848: Categories in admin are loading very slow

The ACSD-65848 patch fixes the issue where the total product count in a category was calculated using a sub-select, by refactoring the method to use a join instead. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.66 is installed. The patch ID is ACSD-65848. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.8

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.8

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Issue where the total product count in a category was calculated using a sub-select, by refactoring the method to use a join instead.

<u>Steps to reproduce</u>:

1. Create a new instance
1. Create a 2500 categories and at least 10000 products:
    1. Create a copy of  setup/performance-toolkit and put it to ./var to be able to edit profiles
    1. Edit small.xml profile and set categories to 2500 and products to 250000 (same as merchant's)
    1. Run bin/magento  setup:performance:generate-fixtures var/setup/performance-toolkit/profiles/ce/small.xml
1. After creating products and categories, ensure all of them are anchors, run query:
UPDATE catalog_category_entity_int set value = 1 where attribute_id = (select attribute_id from eav_attribute where attribute_code = 'is_anchor'); 
1. Go to admin menu, ensure we have a deeper structure of the categories, therefore move Category 2 deeper into Category 1 tree
1. Try to open category page in admin /admin/catalog/category/edit/id/xx/

<u>Expected results</u>:

Every category opens from the first try just in few seconds

<u>Actual results</u>:

Category opens in more than a minute

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.