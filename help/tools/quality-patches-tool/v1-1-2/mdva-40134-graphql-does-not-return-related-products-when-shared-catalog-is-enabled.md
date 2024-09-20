---
title: 'MDVA-40134: GraphQL not returning related products when shared catalog is enabled'
description: The MDVA-40134 patch fixes the issue where GraphQL does not return related products when the shared catalog is enabled. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.2 is installed. The patch ID is MDVA-40134. Please note that the issue was fixed in Adobe Commerce 2.4.3.
exl-id: 7b14355a-1c14-4c80-9426-6c40505d638b
feature: B2B, Catalog Management, GraphQL, Products
role: Admin
---
# MDVA-40134: GraphQL not returning related products when shared catalog is enabled

The MDVA-40134 patch fixes the issue where GraphQL does not return related products when the shared catalog is enabled. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.2 is installed. The patch ID is MDVA-40134. Please note that the issue was fixed in Adobe Commerce 2.4.3.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods) 2.4.2-p1

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.4.2-p1 &ndash;  2.4.2-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://devdocs.magento.com/quality-patches/tool.html#patch-grid). Use the patch ID as a search keyword to locate the patch.

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

* Adobe Commerce or Magento Open Source on-premises: [Software Update Guide > Apply Patches](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching/mqp.html) in our developer documentation.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [Patches available in QPT](https://devdocs.magento.com/quality-patches/tool.html#patch-grid) in our developer documentation.
