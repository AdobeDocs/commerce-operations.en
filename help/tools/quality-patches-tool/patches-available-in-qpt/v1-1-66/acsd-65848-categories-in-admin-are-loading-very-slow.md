---
title: 'ACSD-65848: Categories in admin are loading very slow'
description: Apply the ACSD-65848 patch to fix the Adobe Commerce issue where the total product count in a category was calculated using a sub-select, by refactoring the method to use a join instead.
feature: Admin Workspace
role: Admin, Developer
type: Troubleshooting
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

The Admin category view/edit page experiences significant delays when loading. The delay is caused by the method used to calculate the total product count in a category, which relies on a sub-select query. Refactoring this logic to use a join instead improves performance and reduces load time.

<u>Steps to reproduce</u>:

1. Create a new Adobe Commerce Cloud instance using version 2.4.8.
1. Create 2,500 categories and at least 10,000 products:
    1. Copy the `setup/performance-toolkit` directory to `./var` so you can edit the profiles.
    1. Open the `small.xml` profile and update it to include 2,500 categories and 250,000 products (to match the merchant's setup).
    1. Run the following command to generate the fixtures:
        
        ```bash
        bin/magento 
        setup:performance:generate-fixtures var/setup/performance-toolkit/profiles/ce/small.xml
        ```

1. After the products and categories are created, make sure all categories are set as anchors. Run this SQL query:

    ```sql
    UPDATE catalog_category_entity_int 
    SET value = 1 
    WHERE attribute_id = (
    SELECT attribute_id 
    FROM eav_attribute 
    WHERE attribute_code = 'is_anchor'
    );
    ```

1. In the Admin panel, create a deeper category structure:
    * Move Category 2 under Category 1 to nest it deeper in the tree.
1. Try to open a category page in the Admin panel using a URL like:
    ```/admin/catalog/category/edit/id/xx/```

<u>Expected results</u>:

Each category page opens on the first try within a few seconds.

<u>Actual results</u>:

Category pages take more than a minute to open.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
