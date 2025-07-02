---
title: 'ACSD-65750: GraphQL "route" query returns products out of order in [!DNL Page Builder] Products content type'
description: Apply the ACSD-65750 patch to fix the Adobe Commerce issue where the GraphQL "route" query returns products out of order in [!DNL Page Builder] Products content type.
feature: GraphQL, Page Builder, Products
role: Admin, Developer
---

# ACSD-65750: GraphQL "route" query returns products out of order in [!DNL Page Builder] Products content type

The ACSD-65750 patch fixes the issue where the GraphQL "route" query returns products out of order in [!DNL Page Builder] Products content type. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.66 is installed. The patch ID is ACSD-65750. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.7-p1 - 2.4.8

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The GraphQL "route" query doesn't return products in the correct sort order when using the [!DNL Page Builder] Products content type.

<u>Steps to reproduce</u>:

1. Create a new category and some products in Catalog, and link the products to this category.
1. Navigate to **[!UICONTROL Catalog]** > **[!UICONTROL Categories]**, edit the created category, and open the **[!UICONTROL Products in Category]** tab.
1. Set custom **[!UICONTROL Position]** for each product in this category.
1. Save the category and run reindex.
1. Navigate to **[!UICONTROL Content]** > *[!UICONTROL Elements]* > **[!UICONTROL Pages]** and click **[!UICONTROL Add New Page]**.
1. Expand the **[!UICONTROL Content]** tab, then click **[!UICONTROL Edit with Page Builder]**.
1. Drag a **[!UICONTROL Row]** element into the content area, then drag a **[!UICONTROL Products]** element inside the row.
1. Configure the Products element as follows:
    * **[!UICONTROL Select Products By]**: *Category*
    * **[!UICONTROL Category]**: *Select the newly created category*
    * **[!UICONTROL Sort By]**: *Position*
1. Switch to the **[!UICONTROL Search Engine Optimization]** tab, and set the **[!UICONTROL URL Key]** to *test-widget*.
1. Save the page.
1. Make the following GraphQL request:

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

The products should be returned in the order defined by their category position.

<u>Actual results</u>:

The products are not ordered by category position in the GraphQL response.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
