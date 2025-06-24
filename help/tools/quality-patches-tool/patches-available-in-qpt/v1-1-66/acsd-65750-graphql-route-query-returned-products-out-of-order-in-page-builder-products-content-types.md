---
title: 'ACSD-65750: GraphQL "route" query returned products out of order in Page Builder Products content types'
description: Apply the ACSD-65750 patch to fix the Adobe Commerce issue where the GraphQL "route" query response did not return products in the correct sort order within a Page Builder Products content type.
feature: GraphQL, Page Builder, Products
role: Admin, Developer
---

# ACSD-65750: GraphQL "route" query returned products out of order in Page Builder Products content types

The ACSD-65750 patch fixes the issue where the GraphQL "route" query returned products out of order in Page Builder Products content types. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.66 is installed. The patch ID is ACSD-65750. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.7-p1 - 2.4.8

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Issue where the GraphQL "route" query returned products out of order in Page Builder Products content types.

<u>Steps to reproduce</u>:

1. Create a new category and some products, and link the products to this category.
1. In Catalog > Category, edit the category and set positions in the "Products in Category" tab.
1. Save the category and reindex.
1. In Content > Elements > Pages, click "Add New Page".
1. Expand the Content tab and click "Edit with Page Builder".
1. Drag a row element to the content area and then a Products element inside it.
1. Configure the Products element:
    1. Select Products By: Category
    1. Category: the recently created category
    1. Sort By: Position
1. In the Search Engine Optimization tab, set the URL Key as "test-widget".
1. Save the page.
1. Make a GraphQL request using the following curl command:

```
query {
  route(url: "/test-widget") {
    relative_url
    redirect_code
    type
    ... on CmsPage {
      identifier
      content
      __typename
    }
    ... on ProductInterface {
      uid
      __typename
    }
    ... on CategoryInterface {
      uid
      __typename
    }
    __typename
  }
}
```

<u>Expected results</u>:

1. Products should be returned in the order defined by their category position.

<u>Actual results</u>:

1. Products are not ordered by category position in the GraphQL response.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.