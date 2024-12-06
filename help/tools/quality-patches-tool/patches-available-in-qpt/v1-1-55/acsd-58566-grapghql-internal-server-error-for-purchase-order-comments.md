---
title: 'ACSD-58566: GraphQL internal server error for purchase order comments'
description: Apply the ACSD-58566 patch to fix the Adobe Commerce issue where GraphQL returns an internal server error when querying the `created_at` field in the `addPurchaseOrderComment` mutation. 
feature: B2B, Purchase Orders, GraphQL
role: Admin, Developer
---
# ACSD-58566: GraphQL internal server error for purchase order comments

The ACSD-58566 patch fixes the issue where querying the `created_at` field in the `addPurchaseOrderComment` mutation returns a null value instead of the expected datetime. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.55 is installed. The patch ID is ACSD-58566. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected Products and Versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.6 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

GraphQL returns an internal server error when querying the `created_at` field in the `addPurchaseOrderComment` mutation.

<u>Prerequisites</u>:

B2B module installed and Company and Purchase Orders are enabled.

<u>Steps to reproduce</u>:

1. Generate a customer token for a company user.
1. Perform the following sequence of GraphQL requests:
    1. Create a *cart* using `customerCart`.
    1. Add a product to the *cart* using `addProductsToCart`.
    1. Place the order using `placePurchaseOrder`.
    1. Add a comment to the purchase order using `addPurchaseOrderComment`.
    
    ```
    mutation {
        addPurchaseOrderComment(
            input: { purchase_order_uid: "MQ==", comment: "Looks good to me" }
    ) {
            comment {
                uid
                created_at
                author {
                    firstname
                    lastname
                    email
                }
                text
            }
        }
    }
    ```

<u>Expected results</u>:

The `created_at` field returns the datetime of the purchase order comment.

<u>Actual results</u>:

Displays null instead of the `created_at` date.
```
{
  "errors": [
    {
      "message": "Internal server error",
      "locations": [
        {
          "line": 10,
          "column": 1
        }
      ],
      "path": [
        "addPurchaseOrderComment",
        "comment",
        "created_at"
      ]
    }
  ],
  "data": {
    "addPurchaseOrderComment": null
  }
}
```

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

[[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
