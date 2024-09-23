---
title: "MDVA-43862: customer can't update cart items because of a GraphQL UpdateCartItems mutation error"
description: The MDVA-43862 patch solves the issue where the customer can't update cart items because of a GraphQL UpdateCartItems mutation error. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.13 is installed. The patch ID is MDVA-43862. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.
exl-id: 5f0a2970-34a8-4a25-baf8-15c007f97084
feature: GraphQL, Orders, Shopping Cart
role: Admin
---
# MDVA-43862: customer can't update cart items because of a GraphQL UpdateCartItems mutation error

The MDVA-43862 patch solves the issue where the customer can't update cart items because of a GraphQL UpdateCartItems mutation error. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.13 is installed. The patch ID is MDVA-43862. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.3-p1, 2.4.2-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.3 - 2.4.4

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

The customer can't update cart items because of a GraphQL UpdateCartItems mutation error.

<u>Steps to reproduce</u>:

1. Create a configurable product (MH01) by assigning one simple (MH01-XL-Gray).
1. Go to the Commerce Admin > **Catalog** > **Products** > **SKU** > **MH01** > **Customizable Options**.
1. Add a custom option to the product.
    * Option Title: Option1
    * Option Type: Field
    * Required: Yes
    * Price: 10.00
    * Price Type: Fixed
    * SKU: MHC1
    * Max Characters: 25
1. Run the below GraphQL query to generate cart ID.

    ```GraphQL
    mutation {
      createEmptyCart
    }
    ```

1. Make a note of the cart ID code.
1. Run the below query to add configurable product to the cart:

    ```GraphQL
    mutation {
    addConfigurableProductsToCart(
    input: {
        cart_id: "<cart ID from above step>",
        cart_items: [{
        parent_sku: "MH01",
        data: {
            quantity: 1,
            sku: "MH01-XL-Gray"
            },
            customizable_options: {
                id: 1,
                value_string: "2"
                }
            }
        ]
    }
    )
    {
    cart {
      items {
        uid
        quantity
        product {
          name
          sku
        }
        ... on ConfigurableCartItem {
          configurable_options {
            option_label
          }
        }
      }
    }
    }
    }
    ```

1. You will notice that the cart is populated with the configurable item.
1. Make a note of the uid returned.
1. Again, run the below query to update the cart item.

    ```GraphQL
    mutation {
      updateCartItems(
        input: {
          cart_id: "<cart ID from previous step>",
          cart_items: [
            {
              cart_item_uid: "<uid from previous step>"
              quantity: 3,
              customizable_options:[{
                  id: 1,
                  value_string: "67"
              }]
            }
          ]
        }
      ){
        cart {
          items {
            uid
            product {
              name
            }
            quantity
          }
          prices {
            grand_total{
              value
              currency
            }
          }
        }
      }
    }
    ```

1. Observe the response.

<u>Expected results</u>:

The cart is updated without any issue.

<u>Actual results</u>:

You get the following error:

```GraphQL
{
  "errors": [
    {
      "message": "Could not update cart item: You need to choose options for your item.",
      "extensions": {
        "category": "graphql-input"
      },
      "locations": [
        {
          "line": 2,
          "column": 3
        }
      ],
      "path": [
        "updateCartItems"
      ]
    }
  ],
  "data": {
    "updateCartItems": null
  }
}
```

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [Software Update Guide > Apply Patches](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching/mqp.html) in our developer documentation.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [Patches available in QPT](https://devdocs.magento.com/quality-patches/tool.html#patch-grid) in our developer documentation.
