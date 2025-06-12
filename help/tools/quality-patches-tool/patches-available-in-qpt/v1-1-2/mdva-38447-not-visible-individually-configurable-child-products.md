---
title: 'MDVA-38447: "Not visible individually" configurable child products are returned in GraphQL response and slow MySQL query'
description: The MDVA-38447 Adobe Commerce patch fixes the issue where "Not visible individually" configurable child products are returned in GraphQL response and slow MySQL query for GraphQL products query with category filter. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.2 is installed. The patch ID is MDVA-38447. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.
feature: B2B, GraphQL, Categories, Configuration, Products, Services
role: Admin
exl-id: d97297c5-e8e8-407b-b43b-033937426fe2
---
# MDVA-38447: "Not visible individually" configurable child products are returned in GraphQL response and slow MySQL query

The MDVA-38447 Adobe Commerce patch fixes the issue where "Not visible individually" configurable child products are returned in GraphQL response and slow MySQL query for GraphQL products query with category filter. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.2 is installed. The patch ID is MDVA-38447. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.2 - 2.4.3

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

"Not visible individually" configurable child products are returned in GraphQL response and slow MySQL query for GraphQL products query with category filter.

<u>Prerequisites</u>:

B2B modules must be installed.

<u>Steps to reproduce</u>:

1. Create a configurable product with simple products set to **Not visible individually**.
1. Run a **full reindex**.
1. Run a **GraphQL query** like:

<pre>query getFilteredProducts(
  $filter: ProductAttributeFilterInput!
  $sort: ProductAttributeSortInput!
  $search: String
  $pageSize: Int!
  $currentPage: Int!
) {
  products(
    filter: $filter
    sort: $sort
    search: $search
    pageSize: $pageSize
    currentPage: $currentPage
  ) {
    total_count
    page_info {
      total_pages
      current_page
      page_size
    }
    items {
      name
      sku
    }
  }
}</pre>

Variables:

<pre>{"filter":{"user_group":{"eq":""}},"search":"config-100","sort":{},"pageSize":200,"currentPage":1}
</pre>

<u>Expected results</u>:

Products with visibility set to "Not visible individually" won't be returned in response.

<u>Actual results</u>:

Products with visiblility set to "Not visible individually" are returned in response.

## Apply the patch

To apply individual patches, use the following links depending on your deployment type:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about quality patches for Adobe Commerce, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to the [Patches available in QPT](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) section.
