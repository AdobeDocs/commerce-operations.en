---
title: 'ACSD-63883: Fixing incorrect `items_count` in [!DNL GraphQL] response for [!UICONTROL Requisition List]'
description: Apply the ACSD-63883 patch to fix the issue where the [!UICONTROL Requisition List] returns an incorrect `items_count` in the [!DNL GraphQL] response.
feature: B2B, GraphQL
role: Admin, Developer
exl-id: 8946d7fb-558a-4867-a843-a61715416f25
type: Troubleshooting
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: bd989d82-1e15-4534-88db-f1f51dd77ffa
    internal-label: Accounts
  - id: c32adafa-ed01-4b31-997e-2413013911b0
    internal-label: Integrations
subfeature_v2:
  - id: f56d26ed-050b-4fb7-b29b-8e6e994e80a2
    internal-label: B2B
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
# ACSD-63883: Fixing incorrect `items_count` in [!DNL GraphQL] response for [!UICONTROL Requisition List]

The ACSD-63883 patch fixes the issue where the **[!UICONTROL Requisition List]** returns an incorrect `items_count` in the [!DNL GraphQL] response. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.61 is installed. The patch ID is ACSD-63883. Please note that the issue is scheduled to be fixed in Adobe Commerce B2B 1.5.3.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The **[!UICONTROL Requisition List]** returns an incorrect `items_count` in the [!DNL GraphQL] response.


<u>Steps to reproduce</u>:

1. Enable the B2B **[!UICONTROL Requisition List]** feature.
1. Create a few products.
1. Create a customer account.
1. Click **[!UICONTROL Create new Requisition List]**.
1. Send the `addProductsToRequisitionList` [!DNL GraphQL] mutation request with a product to add it to the [!UICONTROL Requisition List].

    ```graphql
    mutation addProductsToRequisitionList(
    $requisitionListUid: ID!
    $requisitionListItems: [RequisitionListItemsInput!]!
    ) {
    addProductsToRequisitionList(
    requisitionListUid: $requisitionListUid
    requisitionListItems: $requisitionListItems
    ) {
    requisition_list
    { uid name description items_count }
    }
    }
    ```

1. Send the `addProductsToRequisitionList` [!DNL GraphQL] mutation request with three other products to add them to the [!UICONTROL Requisition List].
1. Check the `items_count` in the response.

**Expected results**: 

* `items_count`: 4 should be returned in the response.

**Actual results**:

* `items_count`: 2 is returned in the response.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/develop/upgrade/apply-patches) in the Commerce on Cloud Infrastructure guide.


## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
