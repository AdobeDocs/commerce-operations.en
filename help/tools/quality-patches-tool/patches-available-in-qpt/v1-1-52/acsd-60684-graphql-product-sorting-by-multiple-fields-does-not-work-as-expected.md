---
title: "ACSD-60684: [!DNL GraphQL] product sorting by multiple fields does not work as expected"
description: Apply the ACSD-60684 patch to fix the Adobe Commerce issue where [!DNL GraphQL] product sorting by multiple fields doesn't work when the sorting is passed in variables.
feature: GraphQL, Products, Search
role: Admin, Developer
---
# ACSD-60684: [!DNL GraphQL] product sorting by multiple fields does not work as expected

The ACSD-60684 patch fixes the issue where [!DNL GraphQL] product sorting by multiple fields doesn't work when the sorting is passed in variables. This patch is available when the [[!DNL Quality Patches Tool (QPT)]] 1.1.52 is installed. The patch ID is ACSD-60684. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p6

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.6 - 2.4.6-p7

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

[!DNL GraphQL] product sorting by multiple fields doesn't work as expected.

<u>Steps to reproduce</u>:

1. Create three products with names A, B, and C.   
1. Fetch the products by using the following [!DNL GraphQL]:

    ```
    query FindProducts($search: String, $filter:ProductAttributeFilterInput!, $pageSize: Int!, $currentPage: Int!, $sort: ProductAttributeSortInput!){
        products(search: $search, filter: $filter, pageSize: $pageSize, currentPage: $currentPage, sort: $sort){
            total_count
            page_info{total_pages}
            items{
                __typename
                url_key
                sku
                name
                stock_status
                price_range{
                    minimum_price{
                        final_price{
                            value
                            currency
                        }
                    }
                }
            }
        }
    } 
    ```

    Variables:

    ```
    {
        "search": null,
        "filter": {
        
        },
        "pageSize": 24,
        "currentPage": 1,
        "sort": {
            "name": "ASC"
        }
    }  
    ```

1. Repeat the query with `sort` : `DESC`

<u>Expected results</u>:

The results are sorted appropriately.

<u>Actual results</u>:

The sorting that has been selected has not been applied.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
