---
title: 'MDVA-42768: GraphQL shows wrong price when child products are out of stock'
description: The MDVA-42768 patch fixes the issue where GraphQL shows the wrong price when the child products a configurable product are out of stock. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.10 is installed. The patch ID is MDVA-42768. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.
exl-id: 012e7e21-e508-4449-98a6-4bdb41284c3a
feature: GraphQL, Orders, Products
role: Admin
---
# MDVA-42768: GraphQL shows wrong price when child products are out of stock

The MDVA-42768 patch fixes the issue where GraphQL shows the wrong price when the child products a configurable product are out of stock. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.10 is installed. The patch ID is MDVA-42768. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.4 - 2.4.3-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://devdocs.magento.com/quality-patches/tool.html#patch-grid). Use the patch ID as a search keyword to locate the patch.

## Issue

When the child products of a configurable product are out of stock and the Display Out of Stock Products setting is enabled, GraphQL query shows the regular price of the product as **0**.

<u>Prerequisites</u>:

Sample data is installed.

<u>Steps to reproduce</u>:

1. Enable the Display Out of Stock product setting in the Commerce Admin by going to **Stores** > **Configuration** > **Catalog** > **Inventory**.
1. Create a configurable product and assign a simple child product to it.
1. Set the inventory of the variant (simple) product to **Out of Stock**.
1. Reindex.
1. Execute the below GraphQL query:

    ```GraphQL
    query {
      products(filter: { sku: { eq: "MH01" } }) {
        items {
          sku
          price_range {
            minimum_price {
              regular_price {
                value
                currency
              }
              final_price {
                value
                currency
              }
              discount {
                amount_off
                percent_off
              }
            }
            maximum_price {
              regular_price {
                value
                currency
              }
              final_price {
                value
                currency
              }
              discount {
                amount_off
                percent_off
              }
            }
          }
        }
      }
    }
    ```
    
1. Check the response section `minimum_price` > `regular price`.

<u>Expected results</u>:

The minimum regular price is not displayed as 0 in response.

<u>Actual results</u>:

The minimum regular price = 0 in response.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [Software Update Guide > Apply Patches](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching/mqp.html) in our developer documentation.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [Patches available in QPT](https://devdocs.magento.com/quality-patches/tool.html#patch-grid) in our developer documentation.
