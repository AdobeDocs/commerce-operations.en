---
title: 'ACSD-57846: GraphQL products search with filter for zero prices not returning results'
description: Apply the ACSD-57846 patch to fix the Adobe Commerce issue where filtering products for price from zero leads to a malformed request to [!DNL OpenSearch] and does not return any results.
feature: GraphQL, Products
role: Admin, Developer
exl-id: 6676cfec-b833-4895-a7c4-c81fcd042e54
---
# ACSD-57846: GraphQL products search with filter for zero prices not returning results

The ACSD-57846 patch fixes the issue where filtering products for price from zero leads to a malformed request to [!DNL OpenSearch] and does not return any results. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.49 is installed. The patch ID is ACSD-57846. Please note that the issue was fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.2 - 2.4.6-p7

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Filtering products for price from zero in a GraphQL products search leads to a malformed request to [!DNL OpenSearch] and does not return any results.

<u>Steps to reproduce</u>:

1. Create a category with two simple products:
    * simple1 - price $0
    * simple2 - price $10
1. Make sure that both the products are visible on the frontend. 
1. Send a request with `price:{from:"1"}`.

    ```graphql
    query {
      products(
        pageSize: 50
        currentPage: 1,
        filter: {price:{from:"1"}}
      ) {
        totalResult: total_count
        productItems: items {
          sku
          urlKey: url_key
          price: price_range {
            fullPrice: minimum_price {
              finalPrice: final_price {
                currency
                value
              }
            }
          }
        }
      }
    }
    ```

1. This returns the product, *simple2*.
1. Now send a request with `price:{from:"0"}`.

    ```graphql
    query {
      products(
        pageSize: 50
        currentPage: 1,
        filter: {price:{from:"0"}}
      ) {
        totalResult: total_count
        productItems: items {
          sku
          urlKey: url_key
          price: price_range {
            fullPrice: minimum_price {
              finalPrice: final_price {
                currency
                value
              }
            }
          }
        }
      }
    }
    ```

<u>Expected results</u>: 

Both the products, *simple1* and *simple2*, are returned.

<u>Actual results</u>:

No products are returned.

```json
{
    "data": {
        "products": {
            "totalResult": 0,
            "productItems": []
        }
    }
}
```

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
