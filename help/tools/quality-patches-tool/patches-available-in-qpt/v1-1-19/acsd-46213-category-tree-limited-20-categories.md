---
title: 'ACSD-46213: Category tree request limited to 20 categories'
description: 'The ACSD-46213 patch fixes the issue where the category tree request is limited to 20 categories. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.19 is installed. The patch ID is ACSD-46213. '
exl-id: 27a18871-8552-4ecd-9e03-0dc38d037ea0
feature: Categories
role: Admin
---
# ACSD-46213: Category tree request limited to 20 categories

The ACSD-46213 patch fixes the issue where the category tree request is limited to 20 categories. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.19 is installed. The patch ID is ACSD-46213.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.2-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.2 - 2.4.2-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.


## Issue

The category tree request is limited to 20 categories.

<u>Steps to reproduce</u>:

1. Create a category under the root category.
1. Create 24 subcategories under the root category created in step one.
1. Execute the following GraphQL request:

    <pre>
    <code class="language-graphql">
    {
      categoryList(filters: { parent_id: { in: ["3"] } }) {
        name
        level
        path
        url_path
        children {
          id
          level
          name
          path
          url_path
          url_key
          children {
            uid
            level
            name
            path
            url_path
            url_key
          }
        }
      }
    }
    </code>
    </pre>

1. Check the results.

<u>Expected results</u>:

It shows 24 categories.

<u>Actual results</u>:

It shows only 20 categories.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [Software Update Guide > Apply Patches](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching/mqp.html) in our developer documentation.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [Patches available in QPT](https://devdocs.magento.com/quality-patches/tool.html#patch-grid) in our developer documentation.
