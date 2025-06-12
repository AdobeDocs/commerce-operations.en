---
title: "MDVA-40262: GraphQL queries don't show in popular search terms in admin"
description: The MDVA-40262 Adobe Commerce quality patch fixes the issue where GraphQL search queries are not shown in popular search terms in the admin. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.3 is installed. The patch ID is MDVA-40262. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.
feature: Admin Workspace, GraphQL, Search
role: Admin
exl-id: 9442ac86-e632-4ab3-8cb3-d29487a1ecbe
---
# MDVA-40262: GraphQL queries don't show in popular search terms in admin

The MDVA-40262 Adobe Commerce quality patch fixes the issue where GraphQL search queries are not shown in popular search terms in the admin. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.3 is installed. The patch ID is MDVA-40262. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods) 2.4.2-p1

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.4.2 &ndash;  2.4.3

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

GraphQL queries are not shown in popular search terms in the admin.

<u>Prerequisites</u>:

Sample data must be installed.

<u>Steps to reproduce</u>:

1. Go to **Stores** > **Configuration** > **Catalog** > **SEO** > **Popular Search Terms** and set to enable.
1. Run the following GraphQL query:

<pre>
<code class="language-graphql">
{
  products(
    search: "jackets"
    filter: { price: { to: "50" } }
    pageSize: 20
   ) {
    total_count
    items {
      name
      sku
    }
    page_info {
      page_size
      current_page
    }
  }
}
</code>
</pre>

<u>Expected results</u>:

After running the GraphQL query to search for a product, the search query should be added to popular search terms.

<u>Actual results</u>:

The search query is not added to popular search terms.

## Apply the patch

To apply individual patches, use the following links depending on your deployment type:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about quality patches for Adobe Commerce, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to the [Patches available in QPT](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) section.
