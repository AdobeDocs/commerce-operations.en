---
title: 'ACSD-66139: GraphQL order fails with UNDEFINED error for inactive cart'
description: Apply the ACSD-66139 patch to fix the Adobe Commerce issue where, when placing an order for a non-existent or inactive cart, GraphQL returns an UNDEFINED error code instead of a specific one when error messages are translated.
feature: GraphQL
role: Admin, Developer
type: Troubleshooting
---

# ACSD-66139: GraphQL order fails with 'UNDEFINED' error for inactive cart

The ACSD-66139 patch fixes the issue where, when placing an order for a non-existent or inactive cart, GraphQL returns an *UNDEFINED* error code instead of a specific one when error messages are translated. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.67 is installed. The patch ID is ACSD-66139. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p5

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.7 - 2.4.7-p6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latestvers ion and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

GraphQL returns an *UNDEFINED* error code instead of a specific one when placing an order for a non-existent or inactive cart, if the error message is translated.

<u>Steps to reproduce</u>:

1. Add `app/i18n/Magento/de_DE/de_DE.csv` and include the following error string translation:

```
"Could not find a cart with ID ""%masked_cart_id""","Oh noo, we have an UNDEFINED issue, see!",module,Magento_QuoteGraphQl
```

1. Create a store view in the Admin panel. Go to **[!UICONTROL Stores]** > **[!UICONTROL Settings]** > **[!UICONTROL All Stores]**. Click **[!UICONTROL Create Store View]** and for **[!UICONTROL Code]**, enter the code `test`.
1. Assign `german` language to the newly created store view.
1. Run `setup:upgrade` and `setup:static-content:deploy -f`.
1. Run the following GraphQL query with header `Store:test`:

```
mutation {
    placeOrder(input: { cart_id: "test" }) {
        orderV2 {
            id
            number
        }
    }
}
```

<u>Expected results</u>:

Correct error response:

```
{
    "errors": [
        {
            "message": "Oh noo, we have an UNDEFINED issue, see!",
            "locations": [
                {
                    "line": 2,
                    "column": 2
                }
            ],
            "path": [
                "placeOrder"
            ],
            "extensions": {
                "category": "graphql-input",
                "error_code": "CART_NOT_FOUND"
            }
        }
    ],
    "data": {
        "placeOrder": null
    }
}
```

<u>Actual results</u>:

The `error_code` returned is *UNDEFINED*:

```
{
    "errors": [
        {
            "message": "Oh noo, we have an UNDEFINED issue, see!",
            "locations": [
                {
                    "line": 2,
                    "column": 2
                }
            ],
            "path": [
                "placeOrder"
            ],
            "extensions": {
                "category": "graphql-input",
                "error_code": "UNDEFINED"
            }
        }
    ],
    "data": {
        "placeOrder": null
    }
}
```

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
