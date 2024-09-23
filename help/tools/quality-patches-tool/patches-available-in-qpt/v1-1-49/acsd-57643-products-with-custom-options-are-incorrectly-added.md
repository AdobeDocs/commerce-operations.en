---
title: 'ACSD-57643: Products with custom options incorrectly added to shopping cart via GraphQL'
description: Apply the ACSD-57643 patch to fix the Adobe Commerce issue where products with custom options are incorrectly added to the shopping cart via GraphQL.
feature: Shopping Cart, GraphQL, Products
role: Admin, Developer
exl-id: c17b97f0-98b8-408a-bd10-ceb13d383a65
---
# ACSD-57643: Products with custom options incorrectly added to shopping cart via GraphQL

The ACSD-57643 patch fixes the issue where products with custom options are incorrectly added to the shopping cart via GraphQL. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.49 is installed. The patch ID is ACSD-57643. Please note that the issue was fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p3

**Compatible with Adobe Commerce and Magento Open Source versions:**

* Adobe Commerce (all deployment methods) 2.4.6 - 2.4.6-p7

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Products with custom options are incorrectly added to the shopping cart via GraphQL.

<u>Steps to reproduce</u>:

1. Create a custom option type field for the product.
1. Generate a customer token using GraphQL.
1. Create an empty cart.
1. Add the product to the cart using the below payload:

    ```graphql
    mutation {
      addProductsToCart(
        cartId: "wNVOTaE6sDCJoObZCCqikHQI3GyFaVif"
        cartItems: [
          {
            quantity: 1
            sku: "24-MB01"
            entered_options: [{
              uid:"Y3VzdG9tLW9wdGlvbi8x",
              value:"product1 option1 "
            }]
          },
          {
            quantity: 1
            sku: "24-MB01"
            entered_options: [{
              uid:"Y3VzdG9tLW9wdGlvbi8x",
              value:"product2 option1"
            }]
          }
          {
            quantity: 3
            sku: "24-MB01",
            entered_options: [{
              uid:"Y3VzdG9tLW9wdGlvbi8x"
              value:"product3 option1"
            }]        
          }
        ]
      ) {
        cart {
          items {
            product {
              name
              sku
            }
            ... on SimpleCartItem {
              customizable_options {
                customizable_option_uid
                label
                values {
                  customizable_option_value_uid
                  value
                }
              }
            }
            quantity
          }
        }
        user_errors {
          code
          message
        }
      }
    }
    ```

1. You will see that the product is added only once:

    ```json
    {
      "data": {
        "addProductsToCart": {
          "cart": {
            "items": [
              {
                "product": {
                  "name": "Joust Duffle Bag",
                  "sku": "24-MB01"
                },
                "customizable_options": [
                  {
                    "customizable_option_uid": "Y3VzdG9tLW9wdGlvbi8x",
                    "label": "Option1",
                    "values": [
                      {
                        "customizable_option_value_uid": "Y3VzdG9tLW9wdGlvbi8x",
                        "value": "product1 option1"
                      }
                    ]
                  }
                ],
                "quantity": 5
              }
            ]
          },
          "user_errors": []
        }
      }
    }
    ```

<u>Expected results</u>:

A product can be added to the shopping cart using different custom options for the same SKU simultaneously.

<u>Actual results</u>:

Unable to add a product to the shopping cart using different custom options for the same SKU simultaneously.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
