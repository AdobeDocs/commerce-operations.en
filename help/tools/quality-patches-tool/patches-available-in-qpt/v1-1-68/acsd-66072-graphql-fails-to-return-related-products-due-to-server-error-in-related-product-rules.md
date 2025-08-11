---
title: 'ACSD-66072: GraphQL fails to return related products on the Product Detail Page'
description: Apply the ACSD-66072 patch to fix the Adobe Commerce issue where related products are not returned via GraphQL on the Product Detail Page due to an internal server error when Related Product Rules are configured.
feature: GraphQL, Products 
role: Admin, Developer
type: Troubleshooting
---

# ACSD-66072: GraphQL fails to return related products on the Product Detail Page

The ACSD-66072 patch fixes the issue where related products are not returned via GraphQL on the Product Detail Page due to an internal server error when **[!UICONTROL Related Products Rule]** is configured. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.68 is installed. The patch ID is ACSD-66072. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p8

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods)  2.4.6 - 2.4.8-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Related products are not returned via GraphQL on the Product Detail Page due to an internal server error when **[!UICONTROL Related Products Rule]** is configured.

<u>Steps to reproduce</u>:

1. Create configurable products:
    * **Product 1**: `config1` with `option1`
    * **Product 2**: `config2` with `option2`

1. Create and assign products to a category
    * Create a **new category**.
    * Assign both products (`config1` and `config2`) to this category.

1. Navigate to **[!UICONTROL Marketing]** > **[!UICONTROL Promotions]** > **[!UICONTROL Related Products Rule]**, then create a new rule with the following settings:
    
    * **[!UICONTROL Priority]**: 1
    * **[!UICONTROL Applies To]**: **[!UICONTROL Related Products]**
    * **[!UICONTROL Result Limit]**: 10 
    * **[!UICONTROL Products to Match]**: **[!UICONTROL Attribute Set is Default]**  
    * **[!UICONTROL Products to Display]**: `Product Category is the Same as Matched Product Categories`

1. Run the following Magento CLI commands:

    ```bash
    bin/magento indexer:reindex
    bin/magento cache:clean
    ```

1. Send a POST request to `../graphql` with the following payload:

    ```
    query getRelatedProductsForProductPage($urlKey: String!) 
    {
        products(filter: { url_key: { eq: $urlKey } }) 
        {
            items {
                id
                __typename
                uid
                url_key
                name
                sku
                related_products {
                    id
                    uid
                    name
                    sku
                    stock_status
                    url_key
                    small_image {
                        url
                        __typename
                        }
                        thumbnail {
                            url
                            __typename
                            }
                            image {
                                url
                                __typename
                                }
                                price_range {
                                    maximum_price {
                                        regular_price {
                                            currency
                                            value
                                            __typename
                                            }
                                            __typename
                                            }
                                            minimum_price {
                                                discount {
                                                    amount_off
                                                    percent_off
                                                    __typename
                                                    }
                                                    final_price {
                                                        currency
                                                        value
                                                        __typename
                                                        }
                                                        regular_price {
                                                            currency
                                                            value
                                                            __typename}
                                                            __typename}
                                                            __typename}
                                                            __typename
                                                            }
                                                            }
                                                            __typename
                                                            }
                                                            }

    ```

<u>Expected results</u>:

The query returns the related product (`config1`).

<u>Actual results</u>:

```graphql
{
    "errors": [
        {
            "message": "Internal server error",
            "locations": [
                {
                    "line": 10,
                    "column": 7
                }
            ],
            "path": [
                "products",
                "items",
                0,
                "related_products"
            ]
        }
    ],
    "data": {
        "products": {
            "items": [
                {
                    "id": 4,
                    "__typename": "ConfigurableProduct",
                    "uid": "NA==",
                    "url_key": "config2",
                    "name": "config2",
                    "sku": "config2",
                    "related_products": null
                }
            ],
            "__typename": "Products"
        }
    }
}
```

The `var/log/exception.log` file contains:

```
report.ERROR: Deprecated Functionality: explode(): Passing null to parameter #2 ($string) of type string is deprecated in /home/magento2ee/app/code/Magento/TargetRule/Model/ResourceModel/Index.php on line 557
```

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
