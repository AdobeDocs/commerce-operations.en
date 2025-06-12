---
title: 'MDVA-43348: Gift Card GraphQL request shows error'
description: The MDVA-43348 patch fixes the issue where Gift Card GraphQL request shows an error if `gift_card_options` contain "uid". This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.12 is installed. The patch ID is MDVA-43348. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.
feature: Gift, GraphQL
role: Admin
exl-id: 94cb939a-fad2-4f01-a641-d8d5b656d931
---
# MDVA-43348: Gift Card GraphQL request shows error

The MDVA-43348 patch fixes the issue where Gift Card GraphQL request shows an error if `gift_card_options` contain "uid". This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.12 is installed. The patch ID is MDVA-43348. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.2 - 2.4.4

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

Gift Card GraphQL request shows an error if gift_card_options contain "uid".

<u>Steps to reproduce</u>:

1. Create a Gift Card product.
1. Perform reindex.
1. Make a GraphQL call where the URL key is "gift-card":

<pre>
<code class="language-graphql">
query getProductOptionsForProductPage_bypassFastly($urlKey: String!) {
  products(filter: { url_key: { eq: $urlKey } }) {
    items {
      id
      url_key
      ... on GiftCardProduct {
        allow_open_amount
        open_amount_min
        open_amount_max
        giftcard_type
        is_redeemable
        lifetime
        allow_message
        message_max_length
        gift_card_options {
          uid
          title
          required
        }
      }
    }
  }
}
</code>
</pre>

<u>Expected results</u>:

Gift Card data is returned upon request.

<u>Actual results</u>:

The following error occurs upon request for Gift Card data:

<pre>
<code class="language-graphql">
{
  "errors": [
    {
      "debugMessage": "Cannot return null for non-nullable field \"CustomizableFieldOption.uid\".",
      "message": "Internal server error",
      "extensions": {
        "category": "internal"
      },
      "locations": [
        {
          "line": 16,
          "column": 1
        }
      ],
      "path": [
        "products",
        "items",
        0,
        "gift_card_options",
        0,
        "uid"
      ]
    },
    {
      "debugMessage": "Cannot return null for non-nullable field \"CustomizableFieldOption.uid\".",
      "message": "Internal server error",
      "extensions": {
        "category": "internal"
      },
      "locations": [
        {
          "line": 16,
          "column": 1
        }
      ],
      "path": [
        "products",
        "items",
        0,
        "gift_card_options",
        1,
        "uid"
      ]
    },
    {
      "debugMessage": "Cannot return null for non-nullable field \"CustomizableFieldOption.uid\".",
      "message": "Internal server error",
      "extensions": {
        "category": "internal"
      },
      "locations": [
        {
          "line": 16,
          "column": 1
        }
      ],
      "path": [
        "products",
        "items",
        0,
        "gift_card_options",
        2,
        "uid"
      ]
    },
    {
      "debugMessage": "Cannot return null for non-nullable field \"CustomizableFieldOption.uid\".",
      "message": "Internal server error",
      "extensions": {
        "category": "internal"
      },
      "locations": [
        {
          "line": 16,
          "column": 1
        }
      ],
      "path": [
        "products",
        "items",
        0,
        "gift_card_options",
        3,
        "uid"
      ]
    },
    {
      "debugMessage": "Cannot return null for non-nullable field \"CustomizableFieldOption.uid\".",
      "message": "Internal server error",
      "extensions": {
        "category": "internal"
      },
      "locations": [
        {
          "line": 16,
          "column": 1
        }
      ],
      "path": [
        "products",
        "items",
        0,
        "gift_card_options",
        4,
        "uid"
      ]
    }
  ],
  "data": {
    "products": {
      "items": [
        {
          "id": 2,
          "url_key": "gitf-card",
          "allow_open_amount": false,
          "open_amount_min": null,
          "open_amount_max": null,
          "giftcard_type": "VIRTUAL",
          "is_redeemable": true,
          "lifetime": 0,
          "allow_message": true,
          "message_max_length": 255,
          "gift_card_options": [
            null,
            null,
            null,
            null,
            null
          ]
        }
      ]
    }
  }
}
</code>
</pre>

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
