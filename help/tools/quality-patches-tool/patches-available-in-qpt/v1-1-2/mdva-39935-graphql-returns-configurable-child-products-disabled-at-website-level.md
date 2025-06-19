---
title: "MDVA-39935: GraphQL returns configurable child products disabled at the website level'"
description: The MDVA-39935 Adobe Commerce patch fixes the issue where GraphQL returns configurable child products disabled at the website level. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.2 is installed. The patch ID is MDVA-39935. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.
feature: GraphQL, Configuration, Products
role: Admin
exl-id: b86b1595-ddd5-41ce-b126-287046462561
type: Troubleshooting
---
# MDVA-39935: GraphQL returns configurable child products disabled at the website level

The MDVA-39935 Adobe Commerce patch fixes the issue where GraphQL returns configurable child products disabled at the website level. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.2 is installed. The patch ID is MDVA-39935. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods) 2.4.2-p1

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.4.1 &ndash;  2.4.3

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

GraphQL returns configurable child products even after they are disabled at the website level.

<u>Steps to reproduce</u>:

1. Enable display out of stock products option under **Store** > **Configuration** > **Catalog** > **Inventory** > **Stock Options** > **Display Out of Stock Products** > **Yes**.
1. Select any **Configurable Product** which has more than two **Simple Products**.
1. Disable **Simple Product** and save the **Configurable Product**.
1. Fetch the **Configurable Product** data using GraphQL.

<pre>
  <code class="language-graphql">
{
  products(filter: { sku: { eq: "cp1" } }) {
    items {
      __typename
      name
      sku
      ... on ConfigurableProduct {
        variants {
          product {
            __typename
            name
            sku
            color
            stock_status
          }
        }
      }
    }
  }
}
</code>
</pre>

<u>Expected results</u>:

Disabled products are NOT shown in the variant results.

<u>Actual results</u>:

Disabled products data is fetched in the variant results.

## Apply the patch

To apply individual patches, use the following links depending on your deployment type:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about quality patches for Adobe Commerce, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to the [Patches available in QPT](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) section.
