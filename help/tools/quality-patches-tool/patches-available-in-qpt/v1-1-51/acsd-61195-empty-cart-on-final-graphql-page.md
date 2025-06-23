---
title: 'ACSD-61195: Cart GraphQL request fails to return items on final page'
description: Apply the ACSD-61195 patch to fix the Adobe Commerce issue where no cart items are returned on the last page for the cart GraphQL request.
feature: GraphQL
role: Admin, Developer
exl-id: 15f0f29c-8517-4f1e-9370-772572e75c9a
type: Troubleshooting
---
# ACSD-61195: Cart GraphQL request fails to return items on final page

The ACSD-61195 patch fixes the issue where no cart items are returned on the last page for the cart GraphQL request. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) 1.1.51 is installed. The patch ID is ACSD-61195. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.7-p1 - 2.4.7-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Cart GraphQL request fails to return items on final page.

<u>Steps to reproduce</u>:

1. Create a new cart:

    ```
    mutation createEmptyCart($input: createEmptyCartInput) {
        createEmptyCart(input: $input)
    } 
    ```

1. Add more than five products to the cart:

    ```
    addProductsToCart(
        cartId: "{{cartId}}"
        cartItems: [
          {
            quantity: 1
            sku: "test"
          }
        ]
      ) {
        cart {
           itemsV2 {
           items {
            product {
             name
             sku
            }
            quantity
        }
        total_count
        page_info {
          page_size
          current_page
          total_pages
        }
      }
    }
    user_errors {
      code
      message
    }
    }
    }
    ```

1. Run the following query:

    ```
    cart(cart_id: $cartId) {
    email
    itemsV2(pageSize: 2, currentPage: 3) {
        total_count
        page_info {
           page_size
           current_page
           total_pages
        }
      items {
        id
        product {
          name
          sku
        }
        quantity
        }
    }
    }  
    ```

<u>Expected results</u>:

The query returns the items on the last page.

<u>Actual results</u>:

```
  {
    "data": {
        "cart": {
            "email": "roni_cost@example.com",
            "itemsV2": {
                "total_count": 5,
                "page_info": {
                    "page_size": 2,
                    "current_page": 3,
                    "total_pages": 3
                },
                "items": []
            }
        }
    } 
    }  
```

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
