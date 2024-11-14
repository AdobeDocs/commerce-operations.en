---
title: 'MDVA-40134: GraphQL not returning related products when shared catalog is enabled'
description: The MDVA-40134 patch fixes the issue where GraphQL does not return related products when the shared catalog is enabled. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.2 is installed. The patch ID is MDVA-40134. Please note that the issue was fixed in Adobe Commerce 2.4.3.
feature: B2B, Catalog Management, GraphQL, Products
role: Admin
exl-id: 5d31e042-4396-40ce-8bf1-63ad9a55214d
---
# MDVA-40134: GraphQL not returning related products when shared catalog is enabled

The MDVA-40134 patch fixes the issue where GraphQL does not return related products when the shared catalog is enabled. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.2 is installed. The patch ID is MDVA-40134. Please note that the issue was fixed in Adobe Commerce 2.4.3.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods) 2.4.2-p1

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.4.2-p1 &ndash;  2.4.2-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

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
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
