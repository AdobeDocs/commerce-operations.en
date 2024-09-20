---
title: 'ACSD-54626: Cannot create new purchase order rule with NUMBER_OF_SKUS via GraphQL'
description: Apply the ACSD-54626 patch to fix the Adobe Commerce issue where a customer can't create a new purchase order rule (`createPurchaseOrderApprovalRule`) with the `NUMBER_OF_SKUS` attribute via GraphQL.
feature: Attributes, B2B, GraphQL, Purchase Orders
role: Admin, Developer
exl-id: 807f06e3-6708-4860-bf46-df4404124f27
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

    ```
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

```
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

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
