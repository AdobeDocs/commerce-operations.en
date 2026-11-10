---
title: 'MDVA-40134: GraphQL not returning related products when shared catalog is enabled'
description: The MDVA-40134 patch fixes the issue where GraphQL does not return related products when the shared catalog is enabled. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.2 is installed. The patch ID is MDVA-40134. Please note that the issue was fixed in Adobe Commerce 2.4.3.
feature: B2B, Catalog Management, GraphQL, Products
role: Admin
exl-id: 5d31e042-4396-40ce-8bf1-63ad9a55214d
type: Troubleshooting
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: c18ed297-2187-4aec-affb-9d9654eca6fc
    internal-label: Catalog management
  - id: 4067ab89-2e97-5de1-8d98-de8318461a8d
    internal-label: Products
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
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
---
# MDVA-40134: GraphQL not returning related products when shared catalog is enabled

The MDVA-40134 patch fixes the issue where GraphQL does not return related products when the shared catalog is enabled. This patch is available when the [Quality Patches Tool (QPT)](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.2 is installed. The patch ID is MDVA-40134. Please note that the issue was fixed in Adobe Commerce 2.4.3.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods) 2.4.2-p1

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.4.2-p1 &ndash;  2.4.2-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md). Use the patch ID as a search keyword to locate the patch.

## Issue

GraphQL does not return related products when the shared catalog is enabled.

<u>Prerequisites</u>:

B2B modules must be installed.
The instance must be clean with only the sample data.

<u>Steps to reproduce</u>:

1. Go to **Stores** > **Configuration** > **General** > **B2B features** and enable **Company and Shared Catalog**.
1. Go to **Catalog** > **Shared Catalog** and add all the products to the **General Catalog**.
1. Use the sample data and modify the Joust Duffle Bag (SKU 24-MB01).
1. Under **Related Products**, add the two Duffle bags (ID 7 and 13).
1. Send a **Post** request:

<pre>{
  products(filter: {sku: {eq: "24-MB01"}}, sort: {name: ASC}) {
    items {
      related_products {
        uid
        name
      }
    }
  }
}</pre>

<u>Expected results</u>:

Related products is shown in the GraphQL response.

<u>Actual results</u>:

Users get the following error:

<pre>Return value of Magento\CatalogPermissionsGraphQl\Model\Store\StoreProcessor::getStoreId() must be of the type int, null returned {"exception":"[object] (GraphQL\\Error\\Error(code: 0): Return value of Magento\\CatalogPermissionsGraphQl\\Model\\Store\\StoreProcessor::getStoreId() must be of the type int, null returned </pre>

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/develop/upgrade/apply-patches) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
