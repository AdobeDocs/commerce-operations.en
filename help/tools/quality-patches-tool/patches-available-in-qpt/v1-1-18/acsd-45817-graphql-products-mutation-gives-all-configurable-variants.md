---
title: 'ACSD-45817: GraphQL products mutation gives all configurable variants'
description: The ACSD-45817 patch fixes the issue where a GraphQL `products` mutation for a specific store returns all configurable variants, including those not assigned to the requested store. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.18 is installed. The patch ID is ACSD-45817. Please note that the issue was fixed in Adobe Commerce 2.4.4.
feature: GraphQL, Configuration, Products
role: Admin
exl-id: f00e9a8e-c18b-4fa8-b7c6-c228b6a22a2c
---
# ACSD-45817: GraphQL products mutation gives all configurable variants

The ACSD-45817 patch fixes the issue where a GraphQL `products` mutation for a specific store returns all configurable variants, including those not assigned to the requested store. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.18 is installed. The patch ID is ACSD-45817. Please note that the issue was fixed in Adobe Commerce 2.4.4.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.3-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.2 - 2.4.3-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

A GraphQL `products` mutation for a specific store returns all configurable variants, including those not assigned to the requested store.

<u>Prerequisites</u>:

Create a 2nd website, 2nd store, and a 2nd store view.

<u>Steps to reproduce</u>:

1. Create a configurable product with two subproducts: "configurable-a" and "configurable-b".
1. Assign the configurable product to both websites.
1. Assign only one "configurable-a" variation to the 2nd website.
1. Go to the **Storefront**, switch to the 2nd website, and open the configurable product.
1. Make sure you see only one child option: "configurable-a".
1. Run a GraphQL query using `POST: /graphql` endpoint, and `Headers: "store" = "new"`

    ```GraphQL
    {
      products(filter: { sku: { eq: "configurable" } }) {
        items {
          id
          attribute_set_id
          name
          sku
          __typename
          price_range{
            minimum_price{
              regular_price{
                value
                currency
              }
            }
          }
          categories {
            id
          }
          ... on ConfigurableProduct {
            configurable_options {
              id
              attribute_id_v2
              label
              position
              use_default
              attribute_code
              values {
                value_index
                label
              }
              product_id
            }
            variants {
              product {
                id
                name
                sku
                attribute_set_id
                ... on PhysicalProductInterface {
                  weight
                }
                price_range{
                  minimum_price{
                    regular_price{
                      value
                      currency
                    }
                  }
                }
              }
              attributes {
                uid
                label
                code
                value_index
              }
            }
          }
        }
      }
    }
    ```

<u>Expected results</u>:

The "configurable-b" variation is not assigned to the 2nd website and should not be displayed in the response.

<u>Actual results</u>:

The "configurable-b" variation is displayed in the response.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
