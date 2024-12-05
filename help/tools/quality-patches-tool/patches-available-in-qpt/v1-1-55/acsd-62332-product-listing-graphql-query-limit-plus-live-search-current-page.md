---
title: 'ACSD-62332: Product listing GraphQL query limited to 10,000 products and [!DNL Live Search] sets current page to 1'
description: Apply the ACSD-62332 patch to fix the Adobe Commerce issues where the product listing GraphQL query is limited to a total_count of 10,000 products and where [!DNL Live Search] sets the current page to *1* instead of page *2* in the search criteria when queried via GraphQL.
feature: GraphQL, Products, Search
role: Admin, Developer
---
# ACSD-62332: Product listing GraphQL query limited to 10,000 products, and [!DNL Live Search] sets current page to 1 

>[!NOTE]
>
>This patch is an updated version of [ACSD-55100](/help/tools/quality-patches-tool/patches-available-in-qpt/v1-1-46/acsd-55100-graphql-does-not-return-products-beyond-10k-in-the-search-results.md) and replaces [ACSD-52801](/help/tools/quality-patches-tool/patches-available-in-qpt/v1-1-40/acsd-52801-graphql-product-filter-query-not-showing-partial-match-results.md) on 2.4.6 - 2.4.6-p8 versions. Please see the corresponding articles for more details. 

The ACSD-62332 patch fixes the issues where the product listing GraphQL query is limited to a `total_count` of 10,000 products and where [!DNL Live Search] sets the current page to *1* instead of page *2* in the search criteria when queried via GraphQL. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.55 is installed. The patch ID is ACSD-62332. Please note that the issues were fixed in Adobe Commerce 2.4.7. 

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.6 - 2.4.6-p3


>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The product listing GraphQL query is limited to a total_count of 10,000 products and where [!DNL Live Search] sets the current page to *1* instead of page *2* in the search criteria when queried via GraphQL.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.


## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
