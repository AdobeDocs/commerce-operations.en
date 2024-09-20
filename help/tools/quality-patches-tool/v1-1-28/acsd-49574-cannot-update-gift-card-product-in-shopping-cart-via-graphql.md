---
title: "ACSD-49574: Can't update gift card product in shopping cart via GraphQL"
description: Apply the ACSD-49574 patch to fix the Adobe Commerce issue where a gift card product cannot be updated in the shopping cart via GraphQL.
exl-id: e446128f-c991-4c3c-8d1c-bbff6230e448
feature: Admin Workspace, Gift, GraphQL, Orders, Products, Shopping Cart
role: Admin
---
# ACSD-49574: Can't update gift card product in shopping cart via GraphQL

The ACSD-49574 patch fixes the issue where a gift card product cannot be updated in the shopping cart via GraphQL. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.28 is installed. The patch ID is ACSD-49574. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

A gift card product cannot be updated in the shopping cart via GraphQL.

<u>Steps to reproduce</u>:

1. Create a gift card product.
1. Add the gift card product to the cart via GraphQL. 
1. Try to update gift card product fields in the cart via GraphQL using `updateCartItems` mutation.
    
    Example of GraphQL usage:

    ```GraphQL
    mutation ($cartId: String!, $cartItems: [CartItemUpdateInput!]!){
        updateCartItems(
            input: {
                cart_id: $cartId,
                cart_items: $cartItems
            }
        )   {
            cart {
                id
                items {
                    uid
                    quantity
                    product {
                        sku
                    }
                    ... on GiftCardCartItem {
                        sender_name
                        sender_email
                        recipient_name
                        recipient_email
                        message
                        amount {
                            value
                            currency
                        }
                    }
                }
            }
        }
    }

    variables
    {
        "cartId": "sDrOu06VYlGejhDivQMcnmcNPSxTMUDd",
        "cartItems": [
            {
                "cart_item_id": 113,
                "quantity": 1,
                "customizable_options": [{
                        "uid": "Z2lmdGNhcmQvZ2lmdGNhcmRfc2VuZGVyX25hbWU=",
                        "value_string": "sender_name"
                    },
                    {
                        "uid": "Z2lmdGNhcmQvZ2lmdGNhcmRfc2VuZGVyX2VtYWls",
                        "value_string": "sender_email"
                    },
                    {
                        "uid": "Z2lmdGNhcmQvZ2lmdGNhcmRfcmVjaXBpZW50X25hbWU=",
                        "value_string": "recipient name"
                    },
                    {
                        "uid": "Z2lmdGNhcmQvZ2lmdGNhcmRfcmVjaXBpZW50X2VtYWls",
                        "value_string": "recipient_email"
                    },
                    {
                        "uid": "Z2lmdGNhcmQvZ2lmdGNhcmRfbWVzc2FnZQ==",
                        "value_string": "message"
                    },
                    {
                        "uid": "Z2lmdGNhcmQvY3VzdG9tX2dpZnRjYXJkX2Ftb3VudA==",
                        "value_string": "10"
                    }
                ]
            }]
    }
    ```

<u>Expected results</u>: 

All the gift card product fields (sender_name, sender_email, recipient_name, recipient_email, message, amount) are updated using `updateCartItems` mutation.

<u>Actual results</u>:

Only the amount is updated.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
