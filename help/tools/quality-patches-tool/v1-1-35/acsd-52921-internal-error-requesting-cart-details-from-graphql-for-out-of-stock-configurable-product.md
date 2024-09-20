---
title: 'ACSD-52921: Error requesting cart details from GraphQL for out-of-stock configurable product'
description: Apply the ACSD-52921 patch to fix the Adobe Commerce issue where an internal error occurs on requesting cart details from GraphQL for an out-of-stock configurable product.
feature: GraphQL, Configuration, Products, Shopping Cart
role: Admin
exl-id: 687460c4-f0d5-45d2-82b1-dda2947fe1e7
---
# ACSD-52921: Error requesting cart details from GraphQL for out-of-stock configurable product

The ACSD-52921 patch fixes the issue where an internal error occurs on requesting cart details from GraphQL for an out-of-stock configurable product. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.35 is installed. The patch ID is ACSD-52921. Please note that the issue was fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.5 - 2.4.6-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

An internal error occurs on requesting cart details from GraphQL for an out-of-stock configurable product.

<u>Steps to reproduce</u>:

1. Create a configurable product with a few options.
1. Add an option for the above configurable product to the cart from the frontend (guest checkout).
1. Get the `[ masked_id ]` from the `[ quote_id_mask ]` db table for the above created quote.
1. Execute the following GraphQL query to get the above guest cart details. 
    
    Add the `[ masked_id ]` received from step 3 in the query.

    ```GraphQL 
    {
        cart(cart_id: "masked_id") {
            items {
                product {
                    name
                    sku
                }
                ... on ConfigurableCartItem {
                    configurable_options {
                        configurable_product_option_uid
                        option_label
                        configurable_product_option_value_uid
                        value_label
                    }
                }
                quantity
                errors {
                    code
                    message
                }
            }
        }
    }   
    ```

1. This will return the quote details without any issues.
1. Go to the backend and update the configurable product's *[!UICONTROL Stock Status]* to *[!UICONTROL Out of Stock]*.
1. Execute the same GraphQL query, as done in step 4.

<u>Expected results</u>:

The error message is sent/treated correctly in the response.

<u>Actual results</u>:

*500 Internal Server* error is thrown in response to the GraphQL query.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
