---
title: 'ACSD-63883: Fixing incorrect `items_count` in [!DNL GraphQL] response for [!UICONTROL Requisition List]'
description: Apply the ACSD-63883 patch to fix the issue where the [!UICONTROL Requisition List] returns an incorrect `items_count` in the [!DNL GraphQL] response.
feature: B2B, GraphQL
role: Admin, Developer
---
# ACSD-63883: Fixing incorrect `items_count` in [!DNL GraphQL] response for [!UICONTROL Requisition List]

The ACSD-63883 patch fixes the issue where the **[!UICONTROL Requisition List]** returns an incorrect `items_count` in the [!DNL GraphQL] response. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.61 is installed. The patch ID is ACSD-63883. Please note that this issue was fixed in Adobe Commerce B2B 1.5.3.

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

1. Enable B2B **[!UICONTROL Requisition List]** feature.
1. Create few products.
1. Create customer account.
1. Click **[!UICONTROL Create new Requisition List]**.
1. Send `addProductsToRequisitionList` [!DNL GraphQL] mutation request with a product to add the product to the [!UICONTROL Requisition List].

    ```
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

1. Send `addProductsToRequisitionList` [!DNL GraphQL] mutation request with 3 other products to add them to [!UICONTROL Requisition List].
1. Check `items_count` in the response.

**Expected results**: 

* `items_count`: 4 should be returned in the response.

**Actual results**:

* `items_count`: 2 is returned in the response.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.


## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
