---
title: 'MDVA-37234: Adding item to cart multiple times creates duplicate line item'
description: The MDVA-37234 patch fixes the issue where adding an item to the cart multiple times (parallel request) for the same SKU creates a duplicate line item for the same cart ID. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.3 is installed. The patch ID is MDVA-37234. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.
feature: Orders, Shopping Cart
role: Admin
exl-id: d4e9fca1-7fba-4a33-9c5e-c9695cbfc61c
---
# MDVA-37234: Adding item to cart multiple times creates duplicate line item

The MDVA-37234 patch fixes the issue where adding an item to the cart multiple times (parallel request) for the same SKU creates a duplicate line item for the same cart ID. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.3 is installed. The patch ID is MDVA-37234. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods) 2.3.6, 2.4.1, and 2.4.2

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.3.5 - 2.3.7-p1 and 2.4.1 - 2.4.2-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

Adding an item to the cart multiple times (parallel request) for the same SKU creates a duplicate line item for the same cart ID.

<u>Steps to reproduce</u>:

1. Create a simple product with SKU = simple1.
1. Create a customer.
1. Generate a customer token for making GraphQL request.

    <pre>
    <code class="language-graphql">
    mutation {
        generateCustomerToken(
            email: "customer email"
            password: "customer password"
        )
        {
            token
        }
    }
    </code>
    </pre>

1. Use the token mentioned in step 3 to create an empty cart for the customer.

    <pre>
    <code class="language-graphql">
    mutation{
     createEmptyCart
    }
    </code>
    </pre>

1. Create a script to make two `addSimpleProductsToCart` requests running in parallel. For example:

    <pre>
    <code class="language-#!/bin/bash">
    curl -X POST -H "Content-Type: application/json" -H "Authorization: Bearer eyJraWQiOiIxIiwiYWxnIjoiSFMyNTYifQ.eyJ1aWQiOjEsInV0eXBpZCI6MywiaWF0IjoxNjIzOTUyNjcwLCJleHAiOjE2MjM5NTYyNzB9.-fh7ysqiQTAacdB3MVvaXzFE9AmKyfF8TsVmICLJoWI" -d '{"query" : "mutation { addSimpleProductsToCart( input: { cart_id: \"S8dCF7uan1POMy0qY0Hup7tEv1AhFGdY\" cart_items: [ { data: { quantity: 2 sku: \"simple1\" } } ] } ) { cart { items { id product { name sku } quantity } } } }"}' http://magento2.3.local/graphql &
    curl -X POST -H "Content-Type: application/json" -H "Authorization: Bearer eyJraWQiOiIxIiwiYWxnIjoiSFMyNTYifQ.eyJ1aWQiOjEsInV0eXBpZCI6MywiaWF0IjoxNjIzOTUyNjcwLCJleHAiOjE2MjM5NTYyNzB9.-fh7ysqiQTAacdB3MVvaXzFE9AmKyfF8TsVmICLJoWI" -d '{"query" : "mutation { addSimpleProductsToCart( input: { cart_id: \"S8dCF7uan1POMy0qY0Hup7tEv1AhFGdY\" cart_items: [ { data: { quantity: 1 sku: \"simple1\" } } ] } ) { cart { items { id product { name sku } quantity } } } }"}' http://magento2.3.local/graphql
    </code>
    </pre>

1. Run the script.

<u>Expected results</u>:

Only one product line with a total quantity (three in this case) is created in the Shopping Cart.

<u>Actual results</u>:

Two separate lines for the same product are created in the Shopping Cart.

## Apply the patch

To apply individual patches, use the following links depending on your deployment type:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about quality patches for Adobe Commerce, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to the [Patches available in QPT](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) section.
