---
title: 'MDVA-37748: GraphQL query returns products not assigned to shared catalog'
description: The MDVA-37748 patch fixes the issue where a GraphQL query returns products not assigned to a shared catalog. This patch is available when the [Quality Patches Tool (QPT)](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching.html#mqp) 1.1.5 is installed. The patch ID is MDVA-37748. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.
exl-id: 1f441882-dc14-433c-aa03-ff22483ce5a7
feature: B2B, GraphQL, Catalog Management, Categories, Products
role: Admin
---
# MDVA-37748: GraphQL query returns products not assigned to shared catalog

The MDVA-37748 patch fixes the issue where a GraphQL query returns products not assigned to a shared catalog. This patch is available when the [Quality Patches Tool (QPT)](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching.html#mqp) 1.1.5 is installed. The patch ID is MDVA-37748. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods) 2.4.2

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.4.2 - 2.4.2-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

GraphQL query returns products not assigned to a shared catalog.

<u>Prerequisites</u>:

B2B modules are installed.

<u>Steps to reproduce</u>:

1. Create two products and assign them to a category:
    * Product 1 - Public
    * Product 2

1. Assign "Product 1 - Public" to the "Default (General)" shared catalog.
1. Create an additional custom shared catalog and assign it to "Product 2."
1. Create a new company and assign it to the additional shared catalog created in step three.
1. After cron execution/reindex, on the frontend, validate that you can see "Product 1 - Public" if you are not logged in.
1. Log in as the admin of the company created in step four, and validate that you only see "Product 2."
1. Request an Authorization Token using the following GraphQL query:

    <pre>
    <code class="language-graphql">
    mutation {
      generateCustomerToken(
        email: "company.admin@exapmle.test"
        password: "password"
      ) {
        token
      }
    }
    </code>
    </pre>

1. Add header **Authorization Bearer value-of-the-token** and execute the following GraphQL query:

    <pre>
    <code class="language-graphql">
    {
      products(
          filter: {},
          pageSize: 100,
          currentPage: 1
          sort: {}
        ) {
          total_count
          page_info {
            page_size
            current_page
          }
          aggregations {
            attribute_code
            count
            label
            options {
              label
              value
              count
            }
          }
          items {
            name
            sku
            created_at
            updated_at
            stock_status
            description {html}
            short_description {html}
            url_key
            url_path
            price_tiers{
              final_price{
                  value
                  currency
                }
              discount{
                  amount_off
                  percent_off
                }
              quantity
            }
            price_range {
             maximum_price {
              regular_price {
                value
              }
              final_price {
                value
              }
            }
            minimum_price {
              regular_price {
                value
              }
              final_price {
               value
              }
            }
          }
          image {
           url
          }
          thumbnail {
           url
          }
          small_image {
           url
          }
          media_gallery {
           url
          }
          ... on ConfigurableProduct {
            configurable_options {
             id

             label
             position
             use_default
             attribute_code
             values {
               value_index
               label
               swatch_data {
                 value
               }
            }
            product_id
          }
          variants {
            product {
              id
              name
              sku
              #margin
              #margin_percentage
              image {
                url
              }
              small_image {
                url
              }
              thumbnail {
                url
              }
              media_gallery{
                url
              }
              attribute_set_id
              ... on PhysicalProductInterface {
                weight
              }
              price_range {
                minimum_price {
                  regular_price {
                    value
                    currency
                  }
                }
              }
            }
            attributes {
              label
              code
              value_index
            }
          }
        }
      }

    }
  }
  </code>
  </pre>

<u>Expected results</u>:

The count and the product returned by GraphQL only consider the product assigned to the shared catalog associated with the logged-in user.

<u>Actual results</u>:

Only "Product 2" is returned, but the `total_count` shows two.

<pre>
<code class="language-graphql">
{
  "data": {
    "products": {
      "total_count": 2,
      "page_info": {
        "page_size": 100,
        "current_page": 1
      },
      "aggregations": [
        {
          "attribute_code": "price",
          "count": 2,
          "label": "Price",
          "options": [
            {
              "label": "0-100",
              "value": "0_100",
              "count": 1
            },
            {
              "label": "100-200",
              "value": "100_200",
              "count": 1
            }
          ]
        },
        {
          "attribute_code": "category_id",
          "count": 1,
          "label": "Category",
          "options": [
            {
              "label": "Cat 1",
              "value": "3",
              "count": 2
            }
          ]
        }
      ],
      "items": [
        {
          "name": "Product 2",
          "sku": "Product 2",
          "created_at": "2021-05-12 10:51:44",
          "updated_at": "2021-05-12 11:03:24",
          "stock_status": "IN_STOCK",
          "description": {
            "html": ""
          },
          "short_description": {
            "html": ""
          },
          "url_key": "product-2",
          "url_path": null,
          "price_tiers": [
            {
              "final_price": {
                "value": 90,
                "currency": "USD"
              },
              "discount": {
                "amount_off": 10,
                "percent_off": 10
              },
              "quantity": 1
            }
          ],
          "price_range": {
            "maximum_price": {
              "regular_price": {
                "value": 100
              },
              "final_price": {
                "value": 90
              }
            },
            "minimum_price": {
              "regular_price": {
                "value": 100
              },
              "final_price": {
                "value": 90
              }
            }
          },
          "image": {
            "url": "../pub/static/version1620816308/frontend/Magento/luma/en_US/Magento_Catalog/images/product/placeholder/image.jpg"
          },
          "thumbnail": {
            "url": "../pub/static/version1620816308/frontend/Magento/luma/en_US/Magento_Catalog/images/product/placeholder/thumbnail.jpg"
          },
          "small_image": {
            "url": "../pub/static/version1620816308/frontend/Magento/luma/en_US/Magento_Catalog/images/product/placeholder/small_image.jpg"
          },
          "media_gallery": []
        }
      ]
    }
  }
}
</code>
</pre>

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [Software Update Guide > Apply Patches](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching/mqp.html) in our developer documentation.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to the [Patches available in QPT](https://support.magento.com/hc/en-us/sections/360010506631-Patches-available-in-QPT-tool-) section.
