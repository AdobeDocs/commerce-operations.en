---
title: 'ACSD-58566: GraphQL internal server error for purchase order comments'
description: Apply the ACSD-58566 patch to fix the Adobe Commerce issue where GraphQL returns an internal server error when querying the `created_at` field in the `addPurchaseOrderComment` mutation.
feature: B2B, Purchase Orders, GraphQL
role: Admin, Developer
exl-id: 6d051f57-7a2f-44a5-a1c9-834917ed986c
type: Troubleshooting
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: bd989d82-1e15-4534-88db-f1f51dd77ffa
    internal-label: Accounts
  - id: 4820f335-ec9f-5611-8fe3-f5b7e3e56967
    internal-label: Orders
  - id: c32adafa-ed01-4b31-997e-2413013911b0
    internal-label: Integrations
subfeature_v2:
  - id: f56d26ed-050b-4fb7-b29b-8e6e994e80a2
    internal-label: B2B
  - id: 2d6d41d4-a5c1-5baf-8dbe-bf7300b68bb3
    internal-label: Purchase Orders
  - id: e396cff5-f586-484c-89f0-7f1da3308f92
    internal-label: GraphQL
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
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

B2B modules are installed and Company and Purchase Orders are enabled.

<u>Steps to reproduce</u>:

1. Generate a customer token for a company user.
1. Perform the following sequence of GraphQL requests:
    1. Create a *cart* using `customerCart`.
    1. Add a product to the *cart* using `addProductsToCart`.
    1. Place the order using `placePurchaseOrder`.
    1. Add a comment to the purchase order using `addPurchaseOrderComment`.
    
    ```graphql
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

```json
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
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/develop/upgrade/apply-patches) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

[[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
