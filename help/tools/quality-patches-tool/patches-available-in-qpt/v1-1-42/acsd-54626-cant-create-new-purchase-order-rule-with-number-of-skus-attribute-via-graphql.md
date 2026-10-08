---
title: 'ACSD-54626: Cannot create new purchase order rule with NUMBER_OF_SKUS via GraphQL'
description: Apply the ACSD-54626 patch to fix the Adobe Commerce issue where a customer can't create a new purchase order rule (`createPurchaseOrderApprovalRule`) with the `NUMBER_OF_SKUS` attribute via GraphQL.
feature: Attributes, B2B, GraphQL, Purchase Orders
role: Admin, Developer
exl-id: 626bd403-6334-4475-b702-09606a590c7e
type: Troubleshooting
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: 76cfaac4-e563-56dd-8938-708bf8b84956
    internal-label: Attributes
  - id: bd989d82-1e15-4534-88db-f1f51dd77ffa
    internal-label: Accounts
  - id: c32adafa-ed01-4b31-997e-2413013911b0
    internal-label: Integrations
  - id: 4820f335-ec9f-5611-8fe3-f5b7e3e56967
    internal-label: Orders
subfeature_v2:
  - id: f56d26ed-050b-4fb7-b29b-8e6e994e80a2
    internal-label: B2B
  - id: e396cff5-f586-484c-89f0-7f1da3308f92
    internal-label: GraphQL
  - id: 2d6d41d4-a5c1-5baf-8dbe-bf7300b68bb3
    internal-label: Purchase Orders
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
---
# ACSD-54626: Can't create new purchase order rule with NUMBER_OF_SKUS via GraphQL

The ACSD-54626 patch fixes the issue where a customer can't create a new purchase order rule (`createPurchaseOrderApprovalRule`) with the `NUMBER_OF_SKUS` attribute via GraphQL. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.42 is installed. The patch ID is ACSD-54626. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.6 - 2.4.6-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Customer cannot create a new purchase order rule (`createPurchaseOrderApprovalRule`) with the `NUMBER_OF_SKUS` attribute via GraphQL.

<u>Prerequisites</u>:

Install and enable Adobe Commerce B2B modules.

<u>Steps to reproduce</u>:

1. Enable B2B company and purchase rules.
1. Create a company with enabled purchase rules.
1. Run the following GraphQL query:

    ```graphql
    mutation CreatePurchaseRule {
        createPurchaseOrderApprovalRule(
            input: {
                name: "Test Rule"
                description: "description"
                applies_to: "MQ=="
                status: ENABLED
                approvers: "MQ=="
                condition: {
                    attribute: NUMBER_OF_SKUS
                    operator: MORE_THAN
                    quantity: 10
                }
            }
        ) {
            uid
            name
            __typename
        }
    }
    ```

<u>Expected results</u>:

A purchase rule is created.

<u>Actual results</u>:

The following error is thrown:

```json
{
    "errors": [
        {
            "message": "Required data is missing from a rule condition.",
            "locations": [
                {
                    "line": 2,
                    "column": 3
                }
            ],
            "path": [
                "createPurchaseOrderApprovalRule"
            ],
            "extensions": {
                "category": "graphql-input"
            }
        }
    ],
    "data": {
        "createPurchaseOrderApprovalRule": null
    }
}
```

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/develop/upgrade/apply-patches) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
